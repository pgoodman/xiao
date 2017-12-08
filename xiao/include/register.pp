
#ifndef XIAO_REGISTER_PP_
#define XIAO_REGISTER_PP_

/// unrolling macros for applying something to all general purpose registers
#define XIAO_FOR_EACH_REG(R, R_last) \
    R(rax, \
    R(rbx, \
    R(rcx, \
    R(rsi, \
    R(rdi, \
    R(rbp, \
    R(r8, \
    R(r9, \
    R(r10, \
    R(r11, \
    R(r12, \
    R(r13, \
    R(r14, \
    R_last(r15))))))))))))))

/// used for counting the space needed to store all registers
#define XIAO_PLUS_8_0 8
#define XIAO_PLUS_8_8 16
#define XIAO_PLUS_8_16 24
#define XIAO_PLUS_8_24 32
#define XIAO_PLUS_8_32 40
#define XIAO_PLUS_8_40 48
#define XIAO_PLUS_8_48 56
#define XIAO_PLUS_8_56 64
#define XIAO_PLUS_8_64 72
#define XIAO_PLUS_8_72 80
#define XIAO_PLUS_8_80 88
#define XIAO_PLUS_8_88 96
#define XIAO_PLUS_8_96 104
#define XIAO_PLUS_8_104 112
#define XIAO_PLUS_8_112 120
#define XIAO_PLUS_8_120 128
#define XIAO_PLUS_8_128 136
#define XIAO_PLUS_8_136 144

#define XIAO_ADD_(x, y) x ## y
#define XIAO_ADD__(x, y) XIAO_ADD_(x, y)
#define XIAO_ADD(x, y) XIAO_ADD__(x, y)
#define XIAO_PLUS_EIGHT(_,rest) XIAO_ADD(XIAO_PLUS_8_, rest)
#define XIAO_EIGHT(_) 8

#endif
