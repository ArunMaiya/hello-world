# Usage:
# make        # compile all binary
# make clean  # remove ALL binaries and objects

.PHONY = all clean

CC = gcc                        # compiler to use

LINKERFLAG = -lm

SRCS := helloworld.cpp
BINS := Hello

all: hello

hello: hello.o
        @echo "Checking.."
        gcc -lm hello.o -o Hello

hello.o: Helloworld.cpp
        @echo "Creating object.."
        gcc -c Helloworld.cpp

clean:
        @echo "Cleaning up..."
        rm -rvf hello.o Hello
