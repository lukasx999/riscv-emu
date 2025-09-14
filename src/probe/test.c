#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int foo(void) {
    return 45;
}

int main(void) {

    // return write(1, "foo", 3);

    putchar(65);
    // printf("foobar");

    // __asm__ volatile ("li a0, 0");
    // __asm__ volatile ("li a7, 93");
    // __asm__ volatile ("ecall");

    return 0;
}
