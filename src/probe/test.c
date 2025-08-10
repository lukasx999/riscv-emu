#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

static size_t my_strlen(const char *str) {
    size_t count = 0;
    for (const char *c = str; *c; c++) {
        count++;
    }
    return count;
}

int main(void) {

    // printf("Hello, Emu!");

    // const char *str = "foobarbazfjsdklfjsdkl";
    // for (size_t i=0; i < strlen(str); ++i) {
    //     write(STDOUT_FILENO, "yes\n", 4);
    // }

    // TODO: fix broken strlen()
    const char *message = "Hello Emu!\n";
    write(STDOUT_FILENO, message, strlen(message));

    // __asm__ volatile ("li a0, 0");
    // __asm__ volatile ("li a7, 93");
    // __asm__ volatile ("ecall");

    return 0;

}
