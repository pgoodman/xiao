/*
 * globals.h
 *
 *  Created on: Jun 12, 2012
 *      Author: petergoodman
 *     Version: $Id$
 */

#ifndef xiao_GLOBALS_H_
#define xiao_GLOBALS_H_

#include <stdint.h>

#include "xiao/include/defines.pp"

namespace xiao {

typedef void (*address_t)(void);
typedef uint8_t *code_t;
typedef uint64_t reg_t;

/// represents the context of the machine
struct MachineContext {
public:
    reg_t rip;
    XIAO_FOR_EACH_REG(XIAO_MCONTEXT_REGS, XIAO_MCONTEXT_REG)
};

}


#endif /* xiao_GLOBALS_H_ */
