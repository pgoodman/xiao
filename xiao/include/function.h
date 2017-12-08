/*
 * function.h
 *
 *  Created on: Jun 12, 2012
 *      Author: petergoodman
 *     Version: $Id$
 */

#ifndef xiao_FUNCTION_H_
#define xiao_FUNCTION_H_

#include "xiao/include/globals.h"

namespace xiao {

// forward declarations
struct AbstractPatch;
struct EntryPatch;
struct ReturnPatch;
struct NonLocalJumpPatch;
struct LocalJumpPatch;
struct MachineContext;

/// represents a function present in the binary
struct Function {
protected:

    friend struct EntryPatch;
    friend struct ReturnPatch;
    friend struct NonLocalJumpPatch;
    friend struct LocalJumpPatch;

    /// can this function make any tail calls?
    bool can_tail_call;

    /// inclusive bounds on the code of the function
    code_t start;
    code_t end;

    /// list of patches
    AbstractPatch *patches;

public:

    Function(void) throw();
    ~Function(void) throw();

    void add_patch(AbstractPatch *) throw();

    void instrument_enter(MachineContext *) throw();
    void instrument_return(MachineContext *) throw();
    void instrument_non_local_jump(MachineContext *) throw();
    void instrument_local_jump(MachineContext *) throw();
};

}


#endif /* xiao_FUNCTION_H_ */
