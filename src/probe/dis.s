
bin-c:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <_start>:
   100e8:	fe010113          	addi	sp,sp,-32
   100ec:	00113c23          	sd	ra,24(sp)
   100f0:	00813823          	sd	s0,16(sp)
   100f4:	02010413          	addi	s0,sp,32
   100f8:	02d00793          	addi	a5,zero,45
   100fc:	fef42623          	sw	a5,-20(s0)
   10100:	00000513          	addi	a0,zero,0
   10104:	05d00893          	addi	a7,zero,93
   10108:	00000073          	ecall
   1010c:	00000013          	addi	zero,zero,0
   10110:	01813083          	ld	ra,24(sp)
   10114:	01013403          	ld	s0,16(sp)
   10118:	02010113          	addi	sp,sp,32
   1011c:	00008067          	jalr	zero,0(ra)
