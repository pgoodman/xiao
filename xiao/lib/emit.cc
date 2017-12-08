/*
 * emit.c
 *
 *  Created on: Jun 12, 2012
 *      Author: petergoodman
 *     Version: $Id$
 */

#include <cstring>
#include <cstdint>
#include <cstddef>

#include "xiao/include/emit.h"
#include "xiao/include/unsafe_cast.h"

#define U8(x) static_cast<uint8_t>(x)

namespace xiao { namespace emit {

/// move a 64 bit value into r10.
code_t mov_imm64(code_t begin, uint64_t val) {
    uint8_t MOV_OP[] = {
        0x49, 0xba,
        U8((val >>  0) & 0xFF),
        U8((val >>  8) & 0xFF),
        U8((val >> 16) & 0xFF),
        U8((val >> 24) & 0xFF),
        U8((val >> 32) & 0xFF),
        U8((val >> 40) & 0xFF),
        U8((val >> 48) & 0xFF),
        U8((val >> 56) & 0xFF)
    };
    memcpy(begin, MOV_OP, sizeof MOV_OP);
    return begin + sizeof MOV_OP;
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
