
#include <stdio.h>

#define NO_INLINE __attribute__ ((noinline))

volatile int x = 0;

NO_INLINE void d_void(int a0, int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10) {
    printf("%d\n", a0 + a1 + a2 + a3 + a4 + a5 + a6 + a7 + a8 + a9 + a10);
}

NO_INLINE void c_void(int a0, int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10) {
    printf("%d\n", a0 - a1 - a2 - a3 - a4 - a5 - a6 - a7 - a8 - a9 - a10);
}

NO_INLINE void b_void(int a0, int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10) {
    if(x) {
        c_void(a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
    } else {
        d_void(a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
    }
}

NO_INLINE void a_void(int a0, int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10) {
    b_void(a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

NO_INLINE void foo(void) {
    printf("hii\n");
}

int main(void) {
    a_void(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11);
    return 0;
}
