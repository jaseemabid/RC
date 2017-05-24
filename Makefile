hello.bc: hello.c
	clang -O3 -emit-llvm hello.c -c -o hello.bc

hello.ll: hello.c
	clang -O3 -emit-llvm hello.c -S -o hello.ll

hello.s: hello.ll
	llc hello.bc -o hello.s
