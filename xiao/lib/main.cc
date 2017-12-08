/*
 * main.cc
 *
 *  Created on: Jun 16, 2012
 *      Author: petergoodman
 *     Version: $Id$
 */

#include <cassert>
#include <cstring>
#include <cstdlib>
#include <cstdio>
#include <cstddef>
#include <sys/mman.h>
#include <unistd.h>
#include <inttypes.h>

#include <vector>
#include <new>

#include "xiao/include/emit.h"
#include "xiao/include/function.h"
#include "xiao/include/patch.h"

#include "xiao/include/unsafe_cast.h"

namespace xiao {

static std::vector<Function *> FUNCTIONS;

/// patch a binary. this searches for sequences of NOPs of a specific
/// length.
///
/// !!! Assumes that a binary doesn't end with a nop. This is mostly
///     enforced in patch.py by putting an int3 after each exit point.
static void FindFunctionPatchPoints(code_t begin, const code_t end) throw() {

    unsigned num_nops(0U);
    code_t non_nop_candidate(nullptr);
    code_t prev(nullptr);

    Function *curr_func(nullptr);

    for(; begin < end; prev = begin, ++begin) {

        // non-NOP candidate
        if(emit::OP_NOP != *begin) {

            // check if we should patch
            if(NULL != non_nop_candidate) {
                const ptrdiff_t num_nops = prev - non_nop_candidate;

                // entry at the beginning of a function; we are looking for
                //      jmp EntryPatch::NOP_SEQ_SIZE;
                //      nop * EntryPatch::NOP_SEQ_SIZE;
                if(EntryPatch::NOP_SEQ_SIZE == num_nops
                && emit::OP_JMP_REL8 == *(non_nop_candidate - 1)
                && EntryPatch::NOP_SEQ_SIZE == *non_nop_candidate) {

                    curr_func = new (std::nothrow) Function;
                    FUNCTIONS.push_back(curr_func);

                    curr_func->add_patch(
                        new EntryPatch(curr_func, non_nop_candidate - 1)
                    );

                // return; we are looking for
                //      ret
                //      nop * ReturnPatch::NOP_SEQ_SIZE
                } else if(ReturnPatch::NOP_SEQ_SIZE == num_nops
                       && emit::OP_RET == *non_nop_candidate) {

                    assert(nullptr != curr_func);

                    curr_func->add_patch(
                        new ReturnPatch(curr_func, non_nop_candidate)
                    );

                // assume it's a tail call; we are looking for:
                //      nop * NonLocalJumpPatch::NOP_SEQ_SIZE
                //      jmp ..
                //      int3
                } else if(NonLocalJumpPatch::NOP_SEQ_SIZE == num_nops) {

                    assert(nullptr != curr_func);

                    curr_func->add_patch(
                        new NonLocalJumpPatch(curr_func, non_nop_candidate + 1)
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

}

} // xiao

extern "C" {
    extern int instrumented_main(int, char **);
}

// initialize and take over
int main(int argc, char **argv) throw() {

    // build the command string
    char command[1024] = {'\0'};
    sprintf(&(command[0]), "llvm-objdump -section-headers %s", argv[0]);

    // run llvm's objdump and get info about section headers
    FILE *fp(popen(command, "r"));
    if(NULL == fp) {
        fprintf(stderr, "Command failed: %s\n", command);
        return 1;
    }

    // go look for info about the text section
    char line[1024] = {'\0'};
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

    // inclusive range of start and end address of the .text segment
    uint64_t text_size(0ULL);
    uint64_t text_start(0ULL);
    sscanf(size_and_start, "%" PRIX64 " %" PRIX64, &text_size, &text_start);

    // find the patch points
    xiao::FindFunctionPatchPoints(
        xiao::unsafe_cast<xiao::code_t>(text_start),
        xiao::unsafe_cast<xiao::code_t>(text_start + text_size + 1)
    );

    // call the main program
    int ret(instrumented_main(argc, argv));

    return ret;
}

