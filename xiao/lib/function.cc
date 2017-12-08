/*
 * function.cc
 *
 *  Created on: Jun 15, 2012
 *      Author: petergoodman
 *     Version: $Id$
 */

#include <cstdio>

#include "xiao/include/function.h"
#include "xiao/include/patch.h"

namespace xiao {

Function::Function(void) throw() { }

Function::~Function(void) throw() { }

void Function::add_patch(AbstractPatch *patch) throw() {
    patch->next_for_func = patches;
    patches = patch;
}

void Function::apply_patches(void) throw() {
    for(AbstractPatch *patch = patches; nullptr != patch; patch = patch->next) {
        patch->apply();
    }
}

void Function::instrument_enter(MachineContext *) throw() {
  printf("XIAO: Entering function\n");
}
void Function::instrument_return(MachineContext *) throw() {
  printf("XIAO: Leaving function\n");
}
void Function::instrument_non_local_jump(MachineContext *) throw() { }
void Function::instrument_local_jump(MachineContext *) throw() { }

}


