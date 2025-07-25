.data
.ascii "foo"

.text
.global _start
_start:

# exit()
li a0, 45
li a7, 93
ecall
