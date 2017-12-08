/*
 * unsafe_cast.h
 *
 *  Created on: Jun 12, 2012
 *      Author: petergoodman
 *     Version: $Id$
 */

#ifndef xiao_UNSAFE_CAST_H_
#define xiao_UNSAFE_CAST_H_

#include <cstring>

#include "xiao/include/defines.pp"

namespace xiao {

template <typename ToT, typename FromT>
XIAO_ALWAYS_INLINE ToT unsafe_cast(const FromT &v) throw()  {
    ToT dest;
    memcpy(&dest, &v, sizeof(ToT));
    return dest;
}

template <typename ToT, typename FromT>
XIAO_ALWAYS_INLINE ToT unsafe_cast(FromT *v) throw() {
    return unsafe_cast<ToT>(
        reinterpret_cast<uintptr_t>(v)
    );
}

}

#endif /* xiao_UNSAFE_CAST_H_ */
