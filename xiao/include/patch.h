/*
 * patch.h
 *
 *  Created on: Jun 12, 2012
 *      Author: petergoodman
 *     Version: $Id$
 */

#ifndef xiao_PATCH_H_
#define xiao_PATCH_H_

#include "xiao/include/globals.h"

namespace xiao {

/// patch kinds
enum patch_kind {

    // function entry
    PATCH_ENTRY,

    // function exit by a return
    PATCH_EXIT_RETURN,

    // function exit by a tail-call
    PATCH_EXIT_NON_LOCAL,

    // tail-recursion
    PATCH_ENTER_LOCAL
};

struct Function;

/// represents an individual patch point
struct AbstractPatch {
protected:

    friend struct Function;

    patch_kind kind;

    code_t start; // first byte, inclusive

    AbstractPatch *next;

    Function *func;
    AbstractPatch *next_for_func;

public:

    AbstractPatch(void) throw() = default;
    virtual ~AbstractPatch(void) throw() = default;

    virtual void apply(void) throw() = 0;
    virtual void revert(void) throw() = 0;
};

/// represents an entrypoint patch for a function
struct EntryPatch : public AbstractPatch {
public:
    enum : uint8_t {
        PATCH_SIZE = /*mov*/ 10 + /*call*/ 5U,
        NOP_SEQ_SIZE = PATCH_SIZE - /*jmp8*/ 2U,
        KIND = PATCH_ENTRY
    };

    EntryPatch(Function *, code_t) throw();
    virtual ~EntryPatch(void) throw() = default;

    virtual void apply(void) throw();
    virtual void revert(void) throw();
};

struct ReturnPatch : public AbstractPatch {
public:
    enum : uint8_t {
        PATCH_SIZE = 16U,
        NOP_SEQ_SIZE = 16U,
        KIND = PATCH_EXIT_RETURN
    };

    ReturnPatch(Function *, code_t) throw();
    virtual ~ReturnPatch(void) throw() = default;

    virtual void apply(void) throw();
    virtual void revert(void) throw();
};

struct NonLocalJumpPatch : public AbstractPatch {
public:
    enum : uint8_t {
        PATCH_SIZE = 16U,
        NOP_SEQ_SIZE = 16U,
        KIND = PATCH_EXIT_NON_LOCAL
    };

    NonLocalJumpPatch(Function *, code_t) throw();
    virtual ~NonLocalJumpPatch(void) throw() = default;

    virtual void apply(void) throw();
    virtual void revert(void) throw();
};

struct LocalJumpPatch : public AbstractPatch {
public:
    enum : uint8_t {
        PATCH_SIZE = 16U,
        NOP_SEQ_SIZE = 16U,
        KIND = PATCH_ENTER_LOCAL
    };

    LocalJumpPatch(Function *, code_t) throw();
    virtual ~LocalJumpPatch(void) throw() = default;

    virtual void apply(void) throw();
    virtual void revert(void) throw();
};

}

#endif /* xiao_PATCH_H_ */
