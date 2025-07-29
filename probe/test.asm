.data
string:
.ascii "foo\n"
string_len = .-string

.text
.global _start
_start:



li  t1, -42     # t1 = (1111 1111 1111 1111 1111 1111 1101 0110)
srli t4, t1, 2  # t4 = (0011 1111 1111 1111 1111 1111 1111 0101)
srai t5, t1, 2  # t5 = (1111 1111 1111 1111 1111 1111 1111 0101)



# li a0, 1
# la a1, string
# li a2, string_len
# li a7, 64
# ecall

# exit()
li a0, 0
li a7, 93
ecall
