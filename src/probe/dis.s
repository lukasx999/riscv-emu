
bin-c:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <_start>:
   100e8:	ff010113          	addi	sp,sp,-16
   100ec:	00113423          	sd	ra,8(sp)
   100f0:	00813023          	sd	s0,0(sp)
   100f4:	01010413          	addi	s0,sp,16
   100f8:	00000013          	addi	zero,zero,0
   100fc:	00813083          	ld	ra,8(sp)
   10100:	00013403          	ld	s0,0(sp)
   10104:	01010113          	addi	sp,sp,16
   10108:	00008067          	jalr	zero,0(ra)
