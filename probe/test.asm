# .data
# string:
# .ascii "foo"
# string_len = .-string

.text
.global _start
_start:

andi x7, x12, 1000
# add t0, t1, t2
# li a0, 1
# la a1, string
# li a2, string_len
# li a7, 64
# ecall

# exit()
li a0, 45
li a7, 93
ecall
