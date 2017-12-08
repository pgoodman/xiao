
#include "xiao/include/register.pp"

#define PUSH_LAST_REG(reg) \
    push %reg;

#define PUSH_REG(reg, rest) \
    PUSH_LAST_REG(reg) \
    rest

#define POP_LAST_REG(reg) \
    pop %reg;

#define POP_REG(reg, rest) \
    rest \
    POP_LAST_REG(reg)

// push and pop all general purpose registers
#define PUSHA XIAO_FOR_EACH_REG(PUSH_REG, PUSH_LAST_REG)
#define POPA XIAO_FOR_EACH_REG(POP_REG, POP_LAST_REG)

// size of pusha/popa
#define PUSHA_SIZE XIAO_FOR_EACH_REG(XIAO_PLUS_EIGHT, XIAO_EIGHT)

// begin the definition of an externally visible function
#define BEGIN_EXPORTED_FUNCTION(name)   \
    .globl name;                        \
    .balign 16, 0x90;                   \
name:                                   \
    .cfi_startproc;

// end the current function
#define END_FUNCTION                    \
    nopw    %cs:(%rax,%rax);            \
    .cfi_endproc;

// "forward declare" a function that will be used by the code but isn't defined
// in the current compilation unit
#define DECLARE_FUNCTION(name) \
    .extern name;

// argument passing for different systems
#if defined _WIN32 || defined _WIN64
#   define REG_ARG1 %rcx
#   define REG_ARG2 %rdx
#   define REG_ARG3 %r8
#   define REG_ARG4 %r9
#else
#   define REG_ARG1 %rdi
#   define REG_ARG2 %rsi
#   define REG_ARG3 %rdx
#   define REG_ARG4 %r8
#endif
