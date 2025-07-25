.data
.ascii "foo"

.text
.global _start
_start:

li t0, 1
addi t2, t0, 45

# exit()
li a0, 45
li a7, 93
ecall
