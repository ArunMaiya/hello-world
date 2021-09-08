# Usage:
# make        # compile all binary
# make clean  # remove ALL binaries and objects

.PHONY = all clean

CC = gcc                       

LINKERFLAG = -lm

SRCS := main.cpp
BINS := Hello

all: hello

hello: hello.o
	@echo "Checking.."
	gcc main.o -o Hello

hello.o: main.cpp
	@echo "Creating object.."
	gcc -c main.cpp

clean:
	@echo "Cleaning up..."
	rm -rvf main.o Hello
