.text
.global _start
_start:

# auipc t0, 0x0
# jalr zero, 4(t0)

# exit()
li a0, 0
li a7, 93
ecall
