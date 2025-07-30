
bin-asm:     file format elf64-littleriscv


Disassembly of section .text:

00000000000100e8 <_start>:
   100e8:	00001317          	auipc	t1,0x1
   100ec:	03030313          	addi	t1,t1,48 # 11118 <__DATA_BEGIN__>
   100f0:	00030283          	lb	t0,0(t1)
   100f4:	00100513          	addi	a0,zero,1
   100f8:	00001597          	auipc	a1,0x1
   100fc:	02058593          	addi	a1,a1,32 # 11118 <__DATA_BEGIN__>
   10100:	00400613          	addi	a2,zero,4
   10104:	04000893          	addi	a7,zero,64
   10108:	00000073          	ecall
   1010c:	00000513          	addi	a0,zero,0
   10110:	05d00893          	addi	a7,zero,93
   10114:	00000073          	ecall
