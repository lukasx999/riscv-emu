#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main(void) {

    const char *message = "Foo!\n";
    write(STDOUT_FILENO, message, strlen(message));

    __asm__ volatile ("li a0, 0");
    __asm__ volatile ("li a7, 93");
    __asm__ volatile ("ecall");

}
