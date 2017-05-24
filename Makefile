hello.bc: hello.c
	clang -O3 -emit-llvm hello.c -c -o hello.bc

hello.ll: hello.c
	clang -O3 -emit-llvm hello.c -S -o hello.ll

.DEFAULT_GOAL := hello.s
hello.s: hello.bc
	llc hello.bc -o hello.s

.PHONY: clean
clean:
	git clean -xfd
