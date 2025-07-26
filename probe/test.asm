.text
.global _start
_start:

addi t2, zero, 5
addi t3, t2, 5

# exit()
li a0, 45
li a7, 93
ecall
