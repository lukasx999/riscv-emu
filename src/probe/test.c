void _start(void) {
    int x = 45;
    asm volatile ("li a0, 0");
    asm volatile ("li a7, 93");
    asm volatile ("ecall");
}
