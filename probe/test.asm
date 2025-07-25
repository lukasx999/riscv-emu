.data
string:
.ascii "foo\n"
string_len:
len = .-string
.word .-string

.text
.global _start
_start:

# write()
li a0, 1
la a1, string
# lw a2, string_len
li a2, len
li a7, 64
ecall

# exit()
li a0, 45
li a7, 93
ecall
