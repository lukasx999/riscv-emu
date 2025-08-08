.data

str:
.ascii "foo\n"

len = .-str

.text
.global _start
_start:

# memset_n = 10
# li t1, 15
# li a2, memset_n
# andi a2, a2, 15
# sub a3, t1, a2
# slli a3, a3, 0x2
# auipc t0, 0x0
# add a3, a3, t0
# jalr zero, 12(a3)

auipc t0, 0x0
jalr zero, 4(t0)


# exit()
li a0, 0
li a7, 93
ecall
