/*
 * emit.h
 *
 *  Created on: Jun 12, 2012
 *      Author: petergoodman
 *     Version: $Id$
 */

#ifndef xiao_EMIT_H_
#define xiao_EMIT_H_

#include "xiao/include/globals.h"

namespace xiao { namespace emit {

/// x86-64 opcodes
enum {
    OP_NOP = 0x90,
    OP_RET = 0xC3,
    OP_JMP_REL8 = 0xEB,
    OP_INT_3 = 0xCC,
    OP_CALL_NEAR_OFF32 = 0xE8,
    OP_JMP_NEAR_OFF32 = 0xE9,
    OP_INT3 = 0xCC
};

/// move a 64 bit value into r10.
code_t mov_imm64(code_t begin, uint64_t val);

code_t call_addr32(code_t begin, address_t addr);

code_t jmp_addr32(code_t begin, address_t addr);
code_t jmp_offset8(code_t begin, uint8_t offset);

code_t ret(code_t begin);

code_t nop(code_t begin);

}}

#endif /* xiao_EMIT_H_ */
