# define some aliases

CC=gcc

INCLUDE=cspec/inc

CFLAGS=-g -I$(INCLUDE)

LIB=cspec/src/libcspec.a

SRC = life_spec.c
OBJ = life_spec.o
EXE = sample

all: $(EXE)

$(EXE): $(OBJ) $(INCLUDE)/*.h $(LIB)
	$(CC) -o $(EXE) $(OBJ) $(LIB)

clean:
	rm $(EXE) $(OBJ)
