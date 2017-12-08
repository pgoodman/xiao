/*
 * emit.c
 *
 *  Created on: Jun 12, 2012
 *      Author: petergoodman
 *     Version: $Id$
 */

#include <cstring>

#include "xiao/include/emit.h"
#include "xiao/include/unsafe_cast.h"

#define U8(x) static_cast<uint8_t>(x)

namespace xiao { namespace emit {

/// push a 32 bit value onto the stack
code_t push_imm32(code_t begin, uint32_t val) {
    uint8_t PUSH_OP[] = {
        0xFF, 0x34, 0x25,
        U8((val >> 24) & 0xFF),
        U8((val >> 16) & 0xFF),
        U8((val >> 8) & 0xFF),
        U8((val >> 0) & 0xFF)
    };
    memcpy(begin, PUSH_OP, sizeof PUSH_OP);
    return begin + sizeof PUSH_OP;
}

/// patch a block of code with a call to a specific function. Returns a pointer to the
/// byte following the call instruction.
static code_t call_jmp_func(code_t begin, address_t func, const uint8_t opcode) {
    const code_t func_code(unsafe_cast<code_t>(func));
    const ptrdiff_t offset(func_code - (begin + 5));

    uint8_t CALL_FUNC_OP[] = {
        opcode,
        U8((offset >>  0) & 0xFF),
        U8((offset >>  8) & 0xFF),
        U8((offset >> 16) & 0xFF),
        U8((offset >> 24) & 0xFF)
    };

    memcpy(begin, CALL_FUNC_OP, sizeof CALL_FUNC_OP);
    return begin + sizeof CALL_FUNC_OP;
}

/// patch a block of code with a call to a specific function. Returns a pointer to the
/// byte following the call instruction.
code_t call_addr32(code_t begin, address_t func) {
    return call_jmp_func(begin, func, OP_CALL_NEAR_OFF32);
}

/// patch a block of code with a jmp to a target address. Returns a pointer to the
/// byte following the jmp
code_t jmp_addr32(code_t begin, address_t func) {
    return call_jmp_func(begin, func, OP_JMP_NEAR_OFF32);
}

/// emit a relative jump with a 1 byte offset
code_t jmp_offset8(code_t begin, uint8_t offset) {
    *begin++ = OP_JMP_REL8;
    *begin++ = offset;
    return begin;
}

/// emit a return instruction
code_t ret(code_t begin) {
    *begin++ = OP_RET;
    return begin;
}

/// emit a NOP instruction
code_t nop(code_t begin) {
    *begin++ = OP_NOP;
    return begin;
}

}}
