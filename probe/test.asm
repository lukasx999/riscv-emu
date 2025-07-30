.data
string:
.ascii "foo\n"
string_len = .-string

.text
.global _start
_start:

la t0, .after
jalr zero, 0(t0)
ebreak

li a0, 1
la a1, string
li a2, string_len
li a7, 64
ecall
.after:

# exit()
li a0, 0
li a7, 93
ecall
