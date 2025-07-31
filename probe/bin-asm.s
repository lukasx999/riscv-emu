
bin-asm:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <_start>:
   100e8:	00000297          	auipc	t0,0x0
   100ec:	02828293          	addi	t0,t0,40 # 10110 <.after>
   100f0:	00028067          	jalr	zero,0(t0)
   100f4:	00100073          	ebreak
   100f8:	00100513          	addi	a0,zero,1
   100fc:	00001597          	auipc	a1,0x1
   10100:	02058593          	addi	a1,a1,32 # 1111c <__DATA_BEGIN__>
   10104:	00400613          	addi	a2,zero,4
   10108:	04000893          	addi	a7,zero,64
   1010c:	00000073          	ecall

0000000000010110 <.after>:
   10110:	00000513          	addi	a0,zero,0
   10114:	05d00893          	addi	a7,zero,93
   10118:	00000073          	ecall
