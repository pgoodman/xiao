/*
 * patch.cc
 *
 *  Created on: Jun 12, 2012
 *      Author: petergoodman
 *     Version: $Id$
 */

#include "xiao/include/patch.h"

#include "xiao/include/function.h"
#include "xiao/include/emit.h"
#include "xiao/include/unsafe_cast.h"

#define PATCH_CONSTRUCTOR(class_name) \
    class_name::class_name(Function *func_, code_t start_) throw()      \
        : AbstractPatch()                                               \
    {                                                                   \
        this->func = func_;                                             \
        this->start = start_;                                           \
        this->kind = static_cast<decltype(this->kind)>(KIND);           \
    }

namespace xiao {

// reference things inside of x86/stub.S
extern void (EntryStub)(void);
extern void (ReturnStub)(void);
//extern void (NonLocalJumpStub)(void);
//extern void (LocalJumpStub)(void);

PATCH_CONSTRUCTOR(EntryPatch)
PATCH_CONSTRUCTOR(ReturnPatch)
PATCH_CONSTRUCTOR(NonLocalJumpPatch)
PATCH_CONSTRUCTOR(LocalJumpPatch)

static uint32_t imm32(Function *func) throw() {
    return static_cast<uint32_t>(unsafe_cast<uint64_t>(func));
}

void EntryPatch::apply(void) throw() {
    emit::call_addr32(emit::push_imm32(this->start, imm32(this->func)),
                      EntryStub);
}

void EntryPatch::revert(void) throw() {
    code_t code(emit::jmp_offset8(this->start, NOP_SEQ_SIZE));
    for(unsigned i(0U); i < NOP_SEQ_SIZE; ++i) {
        code = emit::nop(code);
    }
}

void ReturnPatch::apply(void) throw() {
    emit::jmp_addr32(emit::push_imm32(this->start, imm32(this->func)),
                     ReturnStub);
}

void ReturnPatch::revert(void) throw() {
    code_t code(emit::ret(this->start));
    for(unsigned i(0U); i < NOP_SEQ_SIZE; ++i) {
        code = emit::nop(code);
    }
}

void NonLocalJumpPatch::apply(void) throw() {
    // TODO(peter)
}

void NonLocalJumpPatch::revert(void) throw() {
    // TODO(peter)
}

void LocalJumpPatch::apply(void) throw() {
    // TODO(peter)
}

void LocalJumpPatch::revert(void) throw() {
    // TODO(peter)
}

}
