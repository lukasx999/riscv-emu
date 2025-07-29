
bin-asm:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <_start>:
   100e8:	fd600313          	addi	t1,zero,-42
   100ec:	00235e93          	srli	t4,t1,0x2
   100f0:	40235f13          	srai	t5,t1,0x2
   100f4:	00000513          	addi	a0,zero,0
   100f8:	05d00893          	addi	a7,zero,93
   100fc:	00000073          	ecall
