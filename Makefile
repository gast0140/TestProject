.PHONY: clean all

TARGETS=bin/testCode

all: bin ${TARGETS}

bin:
	mkdir -p bin
	
bin/testCode: bin/testCode.o
	gcc -g -o bin/testCode bin/testCode.o
		
bin/testCode.o: src/testCode.c
	gcc -g -c -o bin/testCode.o src/testCode.c