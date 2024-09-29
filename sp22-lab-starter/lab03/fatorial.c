#include <stdio.h>

int factorial(int n) {
    // iterative
    int ret = n;
    while(n != 1) {
        n--;
        ret = ret * n;
    }
}

int main(void) {
    int n = 3;
    int ret = factorial(n);
    printf("%d\n", ret);
}

