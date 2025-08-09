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
	.section	.rodata
	.align	3
.LC0:
	.string	"Foo!\n"
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32	#,,
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	addi	s0,sp,32	#,,
# test.c:8:     const char *message = "Foo!\n";
	lui	a5,%hi(.LC0)	# tmp138,
	addi	a5,a5,%lo(.LC0)	# tmp137, tmp138,
	sd	a5,-24(s0)	# tmp137, message
# test.c:9:     write(STDOUT_FILENO, message, strlen(message));
	ld	a0,-24(s0)		#, message
	call	strlen		#
	mv	a5,a0	# _1,
# test.c:9:     write(STDOUT_FILENO, message, strlen(message));
	mv	a2,a5	#, _1
	ld	a1,-24(s0)		#, message
	li	a0,1		#,
	call	write		#
# test.c:11:     __asm__ volatile ("li a0, 0");
 #APP
# 11 "test.c" 1
	li a0, 0
# 0 "" 2
# test.c:12:     __asm__ volatile ("li a7, 93");
# 12 "test.c" 1
	li a7, 93
# 0 "" 2
# test.c:13:     __asm__ volatile ("ecall");
# 13 "test.c" 1
	ecall
# 0 "" 2
 #NO_APP
	li	a5,0		# _8,
# test.c:15: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	ld	s0,16(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	main, .-main
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
