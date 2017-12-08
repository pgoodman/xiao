
#include "xiao/include/defines.pp"
#include "xiao/x86/asm.pp"

// TODO:
// CPP_FUNC might also not work because of function name lengths
// make xiao into a statically linked library
// make a xc and xcc

    .section    __TEXT,__text,regular,pure_instructions

// entrypoint for when a function is called; this is called on entering
// a function, before any function prologue
BEGIN_EXPORTED_FUNCTION(__ZN4xiao9EntryStubEv)
                            // implied: function ptr on stack
                            // implied: rsi (return address) on stack
    PUSHA                   // save all regs

    // call xiao::Function::Enter
    lea XIAO_PLUS_EIGHT(0,XIAO_MCONTEXT_SIZE) (%rsp), REG_ARG1
    lea XIAO_MCONTEXT_SIZE (%rsp), REG_ARG2
    call __ZN4xiao8Function16instrument_enterEPNS_14MachineContextE

    // restore return address
    mov XIAO_MCONTEXT_SIZE (%rsp), REG_ARG1
    mov REG_ARG1, XIAO_PLUS_EIGHT(0,XIAO_MCONTEXT_SIZE) (%rsp)

    // kill the mcontext
    POPA
    lea -8(%rsp), %rsp      // "pop" the rsi (it is now stored twice on the stack)


    ret
END_FUNCTION

// exit point on a return path; a tail call is made to this function
// instead of returning, thus this function is responsible for doing
// the return for the function being instrumented
BEGIN_EXPORTED_FUNCTION(__ZN4xiao10ReturnStubEv)
                            // implied: return address on stack
                            // implied: function address on stack
    PUSHA

    // get return address into arg1 and function ptr into arg2
    lea XIAO_PLUS_EIGHT(0,XIAO_MCONTEXT_SIZE) (%rsp), REG_ARG1
    lea XIAO_MCONTEXT_SIZE (%rsp), REG_ARG2

    // xor swap; arg1 takes function ptr, arg2 takes ret address
    xor REG_ARG2, REG_ARG1  // REG_ARG1 = REG_ARG1 ^ REG_ARG2
    xor REG_ARG1, REG_ARG2  // REG_ARG2 = REG_ARG2 ^ REG_ARG1
    xor REG_ARG2, REG_ARG1  // REG_ARG1 = REG_ARG1 ^ REG_ARG2

    // store
    mov REG_ARG2, XIAO_PLUS_EIGHT(0,XIAO_MCONTEXT_SIZE) (%rsp)
    mov REG_ARG1, XIAO_MCONTEXT_SIZE (%rsp)

                            // implied: function ptr on stack
                            // implied: rsi (return address) on stack

    call __ZN4xiao8Function17instrument_returnEPNS_14MachineContextE

    // restore return address
    mov XIAO_MCONTEXT_SIZE (%rsp), REG_ARG1
    mov REG_ARG1, XIAO_PLUS_EIGHT(0,XIAO_MCONTEXT_SIZE) (%rsp)

    // kill the mcontext
    POPA
    lea -8(%rsp), %rsp      // "pop" the rsi (it is now stored twice on the stack)

    ret

END_FUNCTION

    .section    __DATA,__data

/*
// exit point on a tail-call path
BEGIN_EXPORTED_FUNCTION(__ZN4xiao16NonLocalJumpStubEv)
    ret
END_FUNCTION

// re-entry point on tail-recursion path
BEGIN_EXPORTED_FUNCTION(__ZN4xiao13LocalJumpStubEv)
    ret
END_FUNCTION
*/

