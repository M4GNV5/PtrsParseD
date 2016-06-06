DSRC += src/ptrs_def.d
DSRC += src/ptrs_handler.d
DSRC += src/ptrs_parse.d
DSRC += test.d

all:
	mkdir -p bin
	gcc --std=gnu99 '-DINTERPRETER_INCLUDE="../../src/ptrs.h"' -c PointerScript/parser/ast.c -o bin/ast.o
	dmd -g $(DSRC) bin/ast.o -ofbin/test
