// int main(void) {
// }

void _start(void) {

    int x = 45;

    if (x) {
        __asm__ volatile ("li a0, 0");
    } else {
    }

    __asm__ volatile ("li a0, 0");
    __asm__ volatile ("li a7, 93");
    __asm__ volatile ("ecall");
}
