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
	.type	foo, @function
foo:
	addi	sp,sp,-16	#,,
	sd	ra,8(sp)	#,
	sd	s0,0(sp)	#,
	addi	s0,sp,16	#,,
# test.c:7: }
	nop	
	ld	ra,8(sp)		#,
	ld	s0,0(sp)		#,
	addi	sp,sp,16	#,,
	jr	ra		#
	.size	foo, .-foo
	.section	.rodata
	.align	3
.LC0:
	.string	"Hello Emu!\n"
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32	#,,
	sd	ra,24(sp)	#,
	sd	s0,16(sp)	#,
	addi	s0,sp,32	#,,
# test.c:16:     const char *message = "Hello Emu!\n";
	lui	a5,%hi(.LC0)	# tmp138,
	addi	a5,a5,%lo(.LC0)	# tmp137, tmp138,
	sd	a5,-24(s0)	# tmp137, message
# test.c:17:     write(STDOUT_FILENO, message, strlen(message));
	ld	a0,-24(s0)		#, message
	call	strlen		#
	mv	a5,a0	# _1,
# test.c:17:     write(STDOUT_FILENO, message, strlen(message));
	mv	a2,a5	#, _1
	ld	a1,-24(s0)		#, message
	li	a0,1		#,
	call	write		#
# test.c:23:     return 0;
	li	a5,0		# _5,
# test.c:25: }
	mv	a0,a5	#, <retval>
	ld	ra,24(sp)		#,
	ld	s0,16(sp)		#,
	addi	sp,sp,32	#,,
	jr	ra		#
	.size	main, .-main
	.ident	"GCC: (g1b306039a) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
