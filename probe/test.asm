.data
string:
.ascii "foo\n"
string_len = .-string

.text
.global _start
_start:

li a0, 1
la a1, string
li a2, string_len
li a7, 64
ecall

# exit()
li a0, 45
li a7, 93
ecall
