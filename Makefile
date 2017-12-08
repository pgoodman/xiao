
AR ?= llvm-ar-3.8
CXX ?= clang++-3.8

CXX_INCLUDE = -I./
CXX_VERSION = -std=c++11
CXX_OPTIMIZE = -O0 
CXX_DEBUG = -g

CXX_FLAGS = $(CXX_VERSION) $(CXX_INCLUDE) $(CXX_DEBUG) $(CXX_OPTIMIZE)
CXX_FLAGS += -fPIC -fno-stack-protector 
CXX_FLAGS += -fomit-frame-pointer -fno-rtti -fno-exceptions -fstrict-aliasing
CXX_FLAGS += -Wall -Werror -Wcast-qual -pedantic -pedantic-errors -Wextra 
CXX_FLAGS += -Wcast-align -Wno-long-long -Wsign-promo -Wmissing-declarations
CXX_FLAGS += -Wstrict-overflow -Wno-unknown-pragmas -Wredundant-decls
 
LD_FLAGS = -stdlib=libc++ -lpthread

OBJS =  bin/lib/function.o bin/lib/main.o bin/lib/patch.o bin/lib/emit.o 
OBJS += bin/x86/stub.o
OUT = bin/libxiao.a

bin/x86/%.o: xiao/x86/%.S
	$(CXX) $(CXX_INCLUDE) $(CXX_DEBUG) $(CXX_VERSION) -c $< -o $@

bin/lib/%.o: xiao/lib/%.cc
	$(CXX) $(CXX_FLAGS) -o $@ -c $<

$(OUT): $(OBJS)
	$(AR) -r $(OUT) $(OBJS)

all: $(OUT)
	# libtool -static -s -o $(OUT) - $(OBJS)

clean:
	-rm $(OBJS)
	-rm $(OUT)