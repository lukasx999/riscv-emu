.text
.global _start
_start:

addi t2, zero, 45
xori s2, s11, 2000

# exit()
li a0, 45
li a7, 93
ecall
