.data
string:
.ascii "foobarbazquxquux12345\n\0"
string_len = .-string

foo:
.ascii "abcdef"
bar:

.text

libc_strlen:
   andi a5,a0,7
   mv a4,a0
   bnez a5, libc_strlen+0x88 # <strlen+0x88>
   lui a5, 0x7f7f8
   addi a5,a5,-129 # 7f7f7f7f <__BSS_END__+0x7f7e4007>
   slli a3,a5,0x20
   add a3,a3,a5
   li a1,-1
   ld a2,0(a4)
   addi a4,a4,8
   and a5,a2,a3
   add a5,a5,a3
   or a5,a5,a2
   or a5,a5,a3
   beq a5,a1,libc_strlen+0x20 # <strlen+0x20>
   lbu a5,-8(a4)
   sub a3,a4,a0
   beqz a5,libc_strlen+0xac # <strlen+0xac>
   lbu a5,-7(a4)
   beqz a5,libc_strlen+0xa4 # <strlen+0xa4>
   lbu a5,-6(a4)
   beqz a5,libc_strlen+0xbc # <strlen+0xbc>
   lbu a5,-5(a4)
   beqz a5,libc_strlen+0xb4 # <strlen+0xb4>
   lbu a5,-4(a4)
   beqz a5,libc_strlen+0xc4 # <strlen+0xc4>
   lbu a5,-3(a4)
   beqz a5,libc_strlen+0xcc # <strlen+0xcc>
   lbu a5,-2(a4)
   snez a0,a5
   add a0,a0,a3
   addi a0,a0,-2
   ret
   beqz a3,libc_strlen+0xc # <strlen+0xc>
   lbu a5,0(a4)
   addi a4,a4,1
   andi a3,a4,7
   bnez a5,libc_strlen+0x84 # <strlen+0x84>
   sub a4,a4,a0
   addi a0,a4,-1
   ret
   addi a0,a3,-7
   ret
   addi a0,a3,-8
   ret
   addi a0,a3,-5
   ret
   addi a0,a3,-6
   ret
   addi a0,a3,-4
   ret
   addi a0,a3,-3
   ret



.global _start
_start:


# # write()
# la a0, string
# jal ra, libc_strlen
# 
# mv a2, a0
# # li a2, string_len
# 
# li a0, 1
# la a1, string
# 
# li a7, 64
# ecall

# exit()
li a0, 0
li a7, 93
ecall
