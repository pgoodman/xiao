
CC = ~/Code/xiao/scripts/cxx.py
OBJS = tc.o

all: $(OBJS)

clean:
	-rm *.o

%.o: %.c
	$(CC) -c $< -o $@
	$(CC) $@ -o $*