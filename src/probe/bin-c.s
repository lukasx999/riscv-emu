	.file	"test.c"
	.option nopic
	.attribute arch, "rv64i2p1"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
# GNU C23 (g1b306039a) version 15.1.0 (riscv64-unknown-elf)
#	compiled by GNU C version 15.1.1 20250425, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mabi=lp64 -misa-spec=20191213 -march=rv64i -O0
	.text
	.align	2
	.globl	_start
	.type	_start, @function
_start:
	addi	sp,sp,-32	#,,
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	addi	s0,sp,32	#,,
# test.c:2:     int x = 45;
	li	a5,45		# tmp134,
	sw	a5,-20(s0)	# tmp134, x
# test.c:3:     asm volatile ("li a0, 0");
 #APP
# 3 "test.c" 1
	li a0, 0
# 0 "" 2
# test.c:4:     asm volatile ("li a7, 93");
# 4 "test.c" 1
	li a7, 93
# 0 "" 2
# test.c:5:     asm volatile ("ecall");
# 5 "test.c" 1
	ecall
# 0 "" 2
# test.c:6: }
 #NO_APP
	nop	
	ld	ra,24(sp)		#,
	ld	s0,16(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	_start, .-_start
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
