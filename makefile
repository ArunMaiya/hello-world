# Usage:
# make        # compile all binary
# make clean  # remove ALL binaries and objects

.PHONY = all clean

CC = g++                       
FLAGS = -Wall -Wextra -Werror
LINKERFLAG = -lm

SRCS := main.cpp
BINS := Hello

all: hello

hello: hello.o
	@echo "Checking.."
	$(CC) -lm main.o -o Hello

hello.o: main.cpp
	@echo "Creating object.."
	$(CC) $(FLAGS) -c main.cpp

clean:
	@echo "Cleaning up..."
	rm -rvf main.o Hello
