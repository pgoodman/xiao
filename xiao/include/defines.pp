/*
 * defines.h
 *
 *  Created on: Jun 12, 2012
 *      Author: petergoodman
 *     Version: $Id$
 */

#ifndef xiao_DEFINES_H_
#define xiao_DEFINES_H_

#include "xiao/include/register.pp"

#if defined(__INTEL_COMPILER)
#   define XIAO_ALWAYS_INLINE __inline
#elif defined(_MSC_VER) && (_MSC_VER >= 1200)
#   define XIAO_ALWAYS_INLINE __forceinline
#elif defined(__GNUC__) && ((__GNUC__ > 3) || ((__GNUC__ == 3) && (__GNUC_MINOR__ >= 2)))
#   define XIAO_ALWAYS_INLINE __attribute__((always_inline))
#elif defined(__clang__)
#   define XIAO_ALWAYS_INLINE __attribute__((always_inline))
#else
#   define XIAO_ALWAYS_INLINE inline
#endif

#define XIAO_NEVER_INLINE __attribute__ ((noinline))

#define XIAO_MCONTEXT_REGS(reg, rest) \
    rest \
    XIAO_MCONTEXT_REG(reg)

#define XIAO_MCONTEXT_REG(reg) \
    reg_t reg;

#define XIAO_MCONTEXT_SIZE \
    XIAO_PLUS_EIGHT(0,XIAO_FOR_EACH_REG(XIAO_PLUS_EIGHT, XIAO_EIGHT))

#endif /* xiao_DEFINES_H_ */
