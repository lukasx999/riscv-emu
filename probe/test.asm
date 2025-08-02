.data

str:
.ascii "foo\n"

len = .-str

.text
.global _start
_start:

beq t0, t1, .+4

# # write()
# li a0, 1
# la a1, str
# li a2, len
# li a7, 64
# ecall

# exit()
li a0, 0
li a7, 93
ecall
