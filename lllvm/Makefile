hello.bc: hello.c
	clang -O3 -emit-llvm hello.c -c -o hello.bc

hello.ll: hello.c
	clang -O3 -emit-llvm hello.c -S -o hello.ll

hello.s: hello.bc
	llc hello.bc -o hello.s

.DEFAULT_GOAL := hello
hello: hello.s
	gcc hello.s -o hello

.PHONY: clean
clean:
	git clean -xfd
