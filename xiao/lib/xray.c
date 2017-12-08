
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <assert.h>
#include <inttypes.h>

#include <sys/mman.h>
#include <unistd.h>

#define PROT_ALL (~0)
#define NO_INLINE __attribute__ ((noinline))

/// the instrumented program's main function
extern int instrumented_main(int, char **);

/// stubs
extern void _xray_entry_stub(void);
extern void _xray_exit_ret_stub(void);
extern void _xray_exit_jmp_stub(void);

/// for decoding purposes
extern void _xray_get_start(void);



/// sizes of the initial NOP streams for the various patch kinds
///
static const unsigned NOP_SEQ_SIZE[] = {
    [ENTRY] = 10U,
    [EXIT_RET] = 10U,
    [EXIT_JMP] = 10U
};



/// the first patch point
static struct patch_point *PATCHES = NULL;
static uint32_t LAST_FUNCTION_ID = 0;

static int find_enter_bounds(uint8_t **, uint8_t **);
static int find_exit_ret_bounds(uint8_t **, uint8_t **);
static int find_exit_jmp_bounds(uint8_t **, uint8_t **);

static struct patch_point *add_patch(enum patch_kind kind, uint8_t *non_nop);
static void find_patch_points(uint8_t *begin, const uint8_t * const end);

static void apply_patch(
    struct patch_point *patch,
    const uint8_t *begin,
    const uint8_t *end
);

static uint8_t *emit_mov_imm32(uint8_t *begin, uint32_t val);
static uint8_t *emit_call_func(uint8_t *begin, void (*func)(void));
static uint8_t *emit_jmp_func(uint8_t *begin, void (*func)(void));

static int set_page_protection(
    const uint8_t *code_begin,
    const uint8_t *code_end,
    uint8_t *address,
    int prot_mask
);

/// vtable for finding the beginning of a patch point. each function
/// returns 0 iff this appears to be an invalid patch point. Each function
/// takes as input pointers to the address before the first NOP and the
/// address of the last NOP.
static int (*find_patch_bounds[])(uint8_t **, uint8_t **) = {
    [ENTRY]     = &find_enter_bounds,
    [EXIT_RET]  = &find_exit_ret_bounds,
    [EXIT_JMP]  = &find_exit_jmp_bounds
};

/// get the start address of the program
NO_INLINE static uint64_t get_start_address(void) {
    uint8_t *func = (uint8_t *) &_xray_get_start;
    int32_t offset = 0;

    assert(OP_CALL_NEAR_OFF32 == *func);

    offset = (offset << 8) | *++func;
    offset = (offset << 8) | *++func;
    offset = (offset << 8) | *++func;
    offset = (offset << 8) | *++func;
    ++func;

    assert(OP_RET == *func);

    printf("offset = %d\n", offset);

    // offset = start - from
    // offset + from = start :)
    const int32_t start32 = (offset + ((int32_t) func));
    const uint64_t start = 0ULL | start32;

    printf("start32 = %x\n", start32);
    printf("start = %llx\n", start);

    return (uint64_t) start;
}

NO_INLINE void break_here(uint8_t *begin) {
    printf("begin = %p\n", begin);
}

/// attach minixray to the binary, and then run main instrumented. Assuming cc.py and
/// cxx.py were used correctly, then any main function in the assembly files is replaced 
/// with instrumented_main.
///
/// First, LLVM's objdump is used to find the start and length of the text segment of
/// this executable. From here, an ad-hoc calculation is used to convert the position-
/// independent start into the actual program's beginning address.
int main(int argc, char **argv) {
    FILE *fp = NULL;

    char command[1024] = {'\0'};
    char line[1024] = {'\0'};
    
    uint64_t text_start = 0;
    uint64_t text_size = 0;

    //uint8_t *begin = NULL;

    int ret = 0;

    /*
    // run llvm's objdump and get info about section headers
    sprintf(&(command[0]), "llvm-objdump -section-headers %s", argv[0]);
    fp = popen(command, "r");
    if(NULL == fp) {
        fprintf(stderr, "Command failed: %s\n", command);
        return 1;
    }

    sleep(1);

    // go look for info about the text section
    while(fgets(line, sizeof(line) - 1, fp)) {
        if(NULL != strstr(line, "__text")) {
            break;
        }
        line[0] = '\0';
    }

    pclose(fp);

    if('\0' == line[0]) {
        fprintf(stderr, "Command returned unexpected output: %s\n", command);
        return 1;
    }

    // find the beginning address and size of the text segment, then patch
    // the binary
    char *size_and_start = strstr(line, "__text ") + 7;
    *strstr(line, " TEXT") = '\0';

    //printf("size_and_start='%s'\n", size_and_start);

    //sscanf(size_and_start, "%" PRIX64 " %" PRIX64, &text_size, &text_start);
    //begin = (uint8_t *) ((((uint64_t) &main) & ~0xFFF) | text_start);


    //printf("size=%" PRIX64 " start=%" PRIX64 "\n", text_size, text_start);
    //printf("main=%p\n", main);
    //printf("text_start=%llX\n", text_start);

    //return 0;

    //break_here();
    */

    uint8_t *begin = (uint8_t *) get_start_address();
    const uint8_t *end = begin + text_size + 1;

    break_here(begin);

    find_patch_points(begin, end);

    for(struct patch_point *patch = PATCHES; NULL != patch; patch = patch->next) {
        apply_patch(patch, begin, end);
    }

    // run the instrumented program's main
    ret = instrumented_main(argc, argv);

    // free any patches
    for(struct patch_point *patch = PATCHES, *next_patch = NULL; 
        NULL != patch; 
        patch = next_patch) {

        next_patch = patch->next;
        patch->next = NULL;
        free(patch);
    }

    PATCHES = NULL;

    return ret;
}

/// crate a patch structure for a particular patch candidate. If the candidate
/// represents a valid patch point, then a patch_point structure is created
/// and added to the PATCHES list.
static struct patch_point *add_patch(enum patch_kind kind, uint8_t *begin) {

    struct patch_point *patch = NULL;
    uint8_t *end = begin + NOP_SEQ_SIZE[kind] + 1;
    if(!find_patch_bounds[kind](&begin, &end)) {
        return NULL;
    }

    patch = malloc(sizeof(struct patch_point));
    patch->next = PATCHES;
    patch->kind = kind;
    patch->function_id = (ENTRY == kind ? ++LAST_FUNCTION_ID : LAST_FUNCTION_ID);
    patch->begin = begin;
    patch->end = end;
    PATCHES = patch;

    return patch;
}

/// apply a patch given a patch structure
static void apply_patch(
    struct patch_point *patch,
    const uint8_t *begin,
    const uint8_t *end
) {
    if(NULL == patch) {
        return;
    }

    if(!set_page_protection(begin, end, patch->begin, PROT_ALL)) {
        return;
    }

    uint8_t *code = patch->begin;

    switch(patch->kind) {
    case ENTRY:
        emit_call_func(emit_mov_imm32(patch->begin, patch->function_id), _xray_entry_stub);
        break;
    case EXIT_RET:
        emit_jmp_func(emit_mov_imm32(patch->begin, patch->function_id), _xray_exit_ret_stub);
        break;
    case EXIT_JMP:
        break;
    }

    if(!set_page_protection(begin, end, patch->begin, ~PROT_WRITE)) {
        return;
    }
}

/// patch a binary. this searches for sequences of NOPs of a specific
/// length.
///
/// !!! Assumes that a binary doesn't end with a nop. This is mostly
///     enforced in patch.py by putting an int3 after each exit point.
static void find_patch_points(uint8_t *begin, const uint8_t * const end) {
    unsigned num_nops = 0U;
    uint8_t *non_nop_candidate = NULL;
    uint8_t *prev = NULL;

    for(; begin < end; prev = begin, ++begin) {

        // non-NOP candidate
        if(OP_NOP != *begin) {

            // check if we should patch
            if(NULL != non_nop_candidate) {
                struct patch_point *patch = NULL;
                const ptrdiff_t num_nops = prev - non_nop_candidate;



                // entry at the beginning of a function
                if(NOP_SEQ_SIZE[ENTRY] == num_nops
                && OP_JMP_REL8 == *(non_nop_candidate - 1)
                && NOP_SEQ_SIZE[ENTRY] == *non_nop_candidate) {

                    add_patch(
                        ENTRY,
                        non_nop_candidate
                    );

                // return
                } else if(NOP_SEQ_SIZE[EXIT_RET] == num_nops
                       && OP_RET == *non_nop_candidate) {

                    add_patch(
                        EXIT_RET,
                        non_nop_candidate
                    );
                        
                // assume it's a tail call
                } else if(NOP_SEQ_SIZE[EXIT_JMP] == num_nops) {
                    add_patch(
                        EXIT_JMP,
                        non_nop_candidate
                    );
                }
            }

            non_nop_candidate = begin;
            num_nops = 0U;

        // found a NOP candidate
        } else {
            ++num_nops;
        }
    }

    //assert(0 == num_nops);
}

/// find the start of an entrypoint. We expect it to start with jmp 9
static int find_enter_bounds(uint8_t **begin, uint8_t **end) {
    --*begin;

    if(OP_JMP_REL8 == (*begin)[0]
    && NOP_SEQ_SIZE[ENTRY] == (*begin)[1]) {
        return 1;
    }

    return 0;
}

/// find the start of a return exit point. We assume the absence of retn,
/// but if it's there, then returns won't be instrumented.
static int find_exit_ret_bounds(uint8_t **begin, uint8_t **end) {
    if(OP_RET != **begin) {
        return 0;
    }

    return 1;
}

/// we cheated a bit and put a bunch of NOPs before the jmp, and an int3
/// after it to make it easy to pick out
static int find_exit_jmp_bounds(uint8_t **begin, uint8_t **end) {
    ++*begin;
    for(uint8_t *int3 = *end; int3 < (*end + 10); ++int3) {
        if(OP_INT_3 == *int3) {
            *end = --int3;
            return 1;
        }
    }
    return 0;
}



/// (un)protect up to two pages
static int set_page_protection(
    const uint8_t *code_begin,
    const uint8_t *code_end,
    uint8_t *address,
    int prot_mask
) {
    enum {
        PAGE_SIZE = 4096
    };

    uint8_t *start = (uint8_t *) ((((uint64_t) address) / PAGE_SIZE) * PAGE_SIZE);

    if(start < code_begin) {
        return 0;
    } else if(code_end < start) {
        return 0;
    }

    size_t size = 2 * PAGE_SIZE;

    if(code_end < (start + size)) {
        size = PAGE_SIZE;
    }

    const int ret = mprotect(
        (void *) start,
        size,
        prot_mask & (PROT_EXEC | PROT_READ | PROT_WRITE)
    );

    return -1 != ret;
}

/// handle entering into xray
void xray_log_enter(uint32_t func_id) {
    printf("call:%d\n", func_id);
}

void xray_log_exit_ret(uint32_t func_id) {
    printf("ret:%d\n", func_id);
}

void xray_log_exit_jmp(uint32_t func_id) {

}
