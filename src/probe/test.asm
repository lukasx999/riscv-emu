.data

str:
.ascii "foo\n"

len = .-str

.text
.global _start
_start:


addi sp, sp, -16
sd zero, 8(sp)
addi t0, zero, 0


# exit()
li a0, 0
li a7, 93
ecall
