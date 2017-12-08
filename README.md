# Xiao

Also thought of as "minixray", this was a side-project that I worked on over the
course of a few days while interning at Google many years ago. This project was
a proof-of-concept, simplistic re-implementation of the XRay function profiling
framework. Since then, Google has publicly released a new version of XRay, which
uses the LLVM compiler toolchain for its instrumentation.

I dug this code up off of my old mac and am putting it online for posterity. I
have modified it to build with clang-3.8. I tried to get it to work, and then
eventually realized that I had left the code part-way through a re-implementation.

The original prototype is located in `xiao/lib/xray.c`, and it used what a version
of `xiao/lib/stub.S` that is no longer in existence, but is likely not too 
different from what is there now.

I then must have decided to re-implement Xia, making it more "flexible" by letting
the individual function patches be stateful. I made a small attempt to fill in what
was missing.

```
git clone git@github.com:pgoodman/xiao.git
cd xiao
make clean all
cd test
make clean all
./tc
```