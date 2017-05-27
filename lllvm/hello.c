#include <stdio.h>

int fib(int n) {
    if (n == 0) {
        return 1;
    } else {
        return n * fib(n - 1);
    }
}

int main() {
    printf("hello %d\n", fib(5));
    return 0;
}
