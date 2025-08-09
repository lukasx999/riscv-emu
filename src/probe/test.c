#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main(void) {

    // printf("Hello, Emu!");

    // TODO: fix broken strlen()
    const char *message = "Hello Emu!\n";
    write(STDOUT_FILENO, message, strlen(message));

    // __asm__ volatile ("li a0, 0");
    // __asm__ volatile ("li a7, 93");
    // __asm__ volatile ("ecall");

    return 0;

}
