
bin-c:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	addi	a1,zero,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	addi	s0,a0,0
   10134:	401000ef          	jal	ra,10d34 <__call_exitprocs>
   10138:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   1013c:	00078463          	beq	a5,zero,10144 <exit+0x24>
   10140:	000780e7          	jalr	ra,0(a5)
   10144:	00040513          	addi	a0,s0,0
   10148:	044020ef          	jal	ra,1218c <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	addi	a5,zero,0
   10150:	00078863          	beq	a5,zero,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	05450513          	addi	a0,a0,84 # 12054 <__libc_fini_array>
   1015c:	5110006f          	jal	zero,10e6c <atexit>
   10160:	00008067          	jalr	zero,0(ra)

0000000000010164 <_start>:
   10164:	00003197          	auipc	gp,0x3
   10168:	6b418193          	addi	gp,gp,1716 # 13818 <__global_pointer$>
   1016c:	00004517          	auipc	a0,0x4
   10170:	84c50513          	addi	a0,a0,-1972 # 139b8 <__stdio_exit_handler>
   10174:	00004617          	auipc	a2,0x4
   10178:	e0460613          	addi	a2,a2,-508 # 13f78 <__BSS_END__>
   1017c:	40a60633          	sub	a2,a2,a0
   10180:	00000593          	addi	a1,zero,0
   10184:	201000ef          	jal	ra,10b84 <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	ce450513          	addi	a0,a0,-796 # 10e6c <atexit>
   10190:	00050863          	beq	a0,zero,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	ec050513          	addi	a0,a0,-320 # 12054 <__libc_fini_array>
   1019c:	4d1000ef          	jal	ra,10e6c <atexit>
   101a0:	139000ef          	jal	ra,10ad8 <__libc_init_array>
   101a4:	00012503          	lw	a0,0(sp)
   101a8:	00810593          	addi	a1,sp,8
   101ac:	00000613          	addi	a2,zero,0
   101b0:	0cc000ef          	jal	ra,1027c <main>
   101b4:	f6dff06f          	jal	zero,10120 <exit>

00000000000101b8 <__do_global_dtors_aux>:
   101b8:	ff010113          	addi	sp,sp,-16
   101bc:	00813023          	sd	s0,0(sp)
   101c0:	1d81c783          	lbu	a5,472(gp) # 139f0 <completed.1>
   101c4:	00113423          	sd	ra,8(sp)
   101c8:	02079263          	bne	a5,zero,101ec <__do_global_dtors_aux+0x34>
   101cc:	00000793          	addi	a5,zero,0
   101d0:	00078a63          	beq	a5,zero,101e4 <__do_global_dtors_aux+0x2c>
   101d4:	00012537          	lui	a0,0x12
   101d8:	31050513          	addi	a0,a0,784 # 12310 <__EH_FRAME_BEGIN__>
   101dc:	00000097          	auipc	ra,0x0
   101e0:	000000e7          	jalr	ra,0(zero) # 0 <exit-0x10120>
   101e4:	00100793          	addi	a5,zero,1
   101e8:	1cf18c23          	sb	a5,472(gp) # 139f0 <completed.1>
   101ec:	00813083          	ld	ra,8(sp)
   101f0:	00013403          	ld	s0,0(sp)
   101f4:	01010113          	addi	sp,sp,16
   101f8:	00008067          	jalr	zero,0(ra) # 101dc <__do_global_dtors_aux+0x24>

00000000000101fc <frame_dummy>:
   101fc:	00000793          	addi	a5,zero,0
   10200:	00078c63          	beq	a5,zero,10218 <frame_dummy+0x1c>
   10204:	00012537          	lui	a0,0x12
   10208:	1e018593          	addi	a1,gp,480 # 139f8 <object.0>
   1020c:	31050513          	addi	a0,a0,784 # 12310 <__EH_FRAME_BEGIN__>
   10210:	00000317          	auipc	t1,0x0
   10214:	00000067          	jalr	zero,0(zero) # 0 <exit-0x10120>
   10218:	00008067          	jalr	zero,0(ra)

000000000001021c <my_strlen>:
   1021c:	fd010113          	addi	sp,sp,-48
   10220:	02113423          	sd	ra,40(sp)
   10224:	02813023          	sd	s0,32(sp)
   10228:	03010413          	addi	s0,sp,48
   1022c:	fca43c23          	sd	a0,-40(s0)
   10230:	fe043423          	sd	zero,-24(s0)
   10234:	fd843783          	ld	a5,-40(s0)
   10238:	fef43023          	sd	a5,-32(s0)
   1023c:	01c0006f          	jal	zero,10258 <my_strlen+0x3c>
   10240:	fe843783          	ld	a5,-24(s0)
   10244:	00178793          	addi	a5,a5,1
   10248:	fef43423          	sd	a5,-24(s0)
   1024c:	fe043783          	ld	a5,-32(s0)
   10250:	00178793          	addi	a5,a5,1
   10254:	fef43023          	sd	a5,-32(s0)
   10258:	fe043783          	ld	a5,-32(s0)
   1025c:	0007c783          	lbu	a5,0(a5)
   10260:	fe0790e3          	bne	a5,zero,10240 <my_strlen+0x24>
   10264:	fe843783          	ld	a5,-24(s0)
   10268:	00078513          	addi	a0,a5,0
   1026c:	02813083          	ld	ra,40(sp)
   10270:	02013403          	ld	s0,32(sp)
   10274:	03010113          	addi	sp,sp,48
   10278:	00008067          	jalr	zero,0(ra)

000000000001027c <main>:
   1027c:	fe010113          	addi	sp,sp,-32
   10280:	00113c23          	sd	ra,24(sp)
   10284:	00813823          	sd	s0,16(sp)
   10288:	02010413          	addi	s0,sp,32
   1028c:	000127b7          	lui	a5,0x12
   10290:	30078793          	addi	a5,a5,768 # 12300 <__errno+0xc>
   10294:	fef43423          	sd	a5,-24(s0)
   10298:	fe843503          	ld	a0,-24(s0)
   1029c:	1c5000ef          	jal	ra,10c60 <strlen>
   102a0:	00050793          	addi	a5,a0,0
   102a4:	00078613          	addi	a2,a5,0
   102a8:	fe843583          	ld	a1,-24(s0)
   102ac:	00100513          	addi	a0,zero,1
   102b0:	0bd000ef          	jal	ra,10b6c <write>
   102b4:	00000793          	addi	a5,zero,0
   102b8:	00078513          	addi	a0,a5,0
   102bc:	01813083          	ld	ra,24(sp)
   102c0:	01013403          	ld	s0,16(sp)
   102c4:	02010113          	addi	sp,sp,32
   102c8:	00008067          	jalr	zero,0(ra)

00000000000102cc <__fp_lock>:
   102cc:	00000513          	addi	a0,zero,0
   102d0:	00008067          	jalr	zero,0(ra)

00000000000102d4 <stdio_exit_handler>:
   102d4:	00013637          	lui	a2,0x13
   102d8:	000125b7          	lui	a1,0x12
   102dc:	00013537          	lui	a0,0x13
   102e0:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   102e4:	b9458593          	addi	a1,a1,-1132 # 11b94 <_fclose_r>
   102e8:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   102ec:	34c0006f          	jal	zero,10638 <_fwalk_sglue>

00000000000102f0 <cleanup_stdio>:
   102f0:	00853583          	ld	a1,8(a0)
   102f4:	ff010113          	addi	sp,sp,-16
   102f8:	00813023          	sd	s0,0(sp)
   102fc:	00113423          	sd	ra,8(sp)
   10300:	21018793          	addi	a5,gp,528 # 13a28 <__sf>
   10304:	00050413          	addi	s0,a0,0
   10308:	00f58463          	beq	a1,a5,10310 <cleanup_stdio+0x20>
   1030c:	089010ef          	jal	ra,11b94 <_fclose_r>
   10310:	01043583          	ld	a1,16(s0)
   10314:	2c018793          	addi	a5,gp,704 # 13ad8 <__sf+0xb0>
   10318:	00f58663          	beq	a1,a5,10324 <cleanup_stdio+0x34>
   1031c:	00040513          	addi	a0,s0,0
   10320:	075010ef          	jal	ra,11b94 <_fclose_r>
   10324:	01843583          	ld	a1,24(s0)
   10328:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   1032c:	00f58c63          	beq	a1,a5,10344 <cleanup_stdio+0x54>
   10330:	00040513          	addi	a0,s0,0
   10334:	00013403          	ld	s0,0(sp)
   10338:	00813083          	ld	ra,8(sp)
   1033c:	01010113          	addi	sp,sp,16
   10340:	0550106f          	jal	zero,11b94 <_fclose_r>
   10344:	00813083          	ld	ra,8(sp)
   10348:	00013403          	ld	s0,0(sp)
   1034c:	01010113          	addi	sp,sp,16
   10350:	00008067          	jalr	zero,0(ra)

0000000000010354 <__fp_unlock>:
   10354:	00000513          	addi	a0,zero,0
   10358:	00008067          	jalr	zero,0(ra)

000000000001035c <global_stdio_init.part.0>:
   1035c:	fd010113          	addi	sp,sp,-48
   10360:	000107b7          	lui	a5,0x10
   10364:	02813023          	sd	s0,32(sp)
   10368:	2d478793          	addi	a5,a5,724 # 102d4 <stdio_exit_handler>
   1036c:	21018413          	addi	s0,gp,528 # 13a28 <__sf>
   10370:	02113423          	sd	ra,40(sp)
   10374:	00913c23          	sd	s1,24(sp)
   10378:	01213823          	sd	s2,16(sp)
   1037c:	01313423          	sd	s3,8(sp)
   10380:	01413023          	sd	s4,0(sp)
   10384:	1af1b023          	sd	a5,416(gp) # 139b8 <__stdio_exit_handler>
   10388:	00800613          	addi	a2,zero,8
   1038c:	00400793          	addi	a5,zero,4
   10390:	00000593          	addi	a1,zero,0
   10394:	2b418513          	addi	a0,gp,692 # 13acc <__sf+0xa4>
   10398:	00f42823          	sw	a5,16(s0)
   1039c:	00043023          	sd	zero,0(s0)
   103a0:	00043423          	sd	zero,8(s0)
   103a4:	0a042623          	sw	zero,172(s0)
   103a8:	00043c23          	sd	zero,24(s0)
   103ac:	02042023          	sw	zero,32(s0)
   103b0:	02042423          	sw	zero,40(s0)
   103b4:	7d0000ef          	jal	ra,10b84 <memset>
   103b8:	00010a37          	lui	s4,0x10
   103bc:	000109b7          	lui	s3,0x10
   103c0:	00010937          	lui	s2,0x10
   103c4:	000114b7          	lui	s1,0x11
   103c8:	000107b7          	lui	a5,0x10
   103cc:	708a0a13          	addi	s4,s4,1800 # 10708 <__sread>
   103d0:	76c98993          	addi	s3,s3,1900 # 1076c <__swrite>
   103d4:	7f490913          	addi	s2,s2,2036 # 107f4 <__sseek>
   103d8:	85848493          	addi	s1,s1,-1960 # 10858 <__sclose>
   103dc:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   103e0:	00800613          	addi	a2,zero,8
   103e4:	00000593          	addi	a1,zero,0
   103e8:	36418513          	addi	a0,gp,868 # 13b7c <__sf+0x154>
   103ec:	0cf42023          	sw	a5,192(s0)
   103f0:	03443c23          	sd	s4,56(s0)
   103f4:	05343023          	sd	s3,64(s0)
   103f8:	05243423          	sd	s2,72(s0)
   103fc:	04943823          	sd	s1,80(s0)
   10400:	02843823          	sd	s0,48(s0)
   10404:	0a043823          	sd	zero,176(s0)
   10408:	0a043c23          	sd	zero,184(s0)
   1040c:	14042e23          	sw	zero,348(s0)
   10410:	0c043423          	sd	zero,200(s0)
   10414:	0c042823          	sw	zero,208(s0)
   10418:	0c042c23          	sw	zero,216(s0)
   1041c:	768000ef          	jal	ra,10b84 <memset>
   10420:	000207b7          	lui	a5,0x20
   10424:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xc09a>
   10428:	2c018713          	addi	a4,gp,704 # 13ad8 <__sf+0xb0>
   1042c:	41418513          	addi	a0,gp,1044 # 13c2c <__sf+0x204>
   10430:	00800613          	addi	a2,zero,8
   10434:	00000593          	addi	a1,zero,0
   10438:	0f443423          	sd	s4,232(s0)
   1043c:	0f343823          	sd	s3,240(s0)
   10440:	0f243c23          	sd	s2,248(s0)
   10444:	10943023          	sd	s1,256(s0)
   10448:	16f42823          	sw	a5,368(s0)
   1044c:	16043023          	sd	zero,352(s0)
   10450:	16043423          	sd	zero,360(s0)
   10454:	20042623          	sw	zero,524(s0)
   10458:	16043c23          	sd	zero,376(s0)
   1045c:	18042023          	sw	zero,384(s0)
   10460:	18042423          	sw	zero,392(s0)
   10464:	0ee43023          	sd	a4,224(s0)
   10468:	71c000ef          	jal	ra,10b84 <memset>
   1046c:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   10470:	19443c23          	sd	s4,408(s0)
   10474:	1b343023          	sd	s3,416(s0)
   10478:	1b243423          	sd	s2,424(s0)
   1047c:	1a943823          	sd	s1,432(s0)
   10480:	02813083          	ld	ra,40(sp)
   10484:	18f43823          	sd	a5,400(s0)
   10488:	02013403          	ld	s0,32(sp)
   1048c:	01813483          	ld	s1,24(sp)
   10490:	01013903          	ld	s2,16(sp)
   10494:	00813983          	ld	s3,8(sp)
   10498:	00013a03          	ld	s4,0(sp)
   1049c:	03010113          	addi	sp,sp,48
   104a0:	00008067          	jalr	zero,0(ra)

00000000000104a4 <__sfp>:
   104a4:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   104a8:	fd010113          	addi	sp,sp,-48
   104ac:	00913c23          	sd	s1,24(sp)
   104b0:	02113423          	sd	ra,40(sp)
   104b4:	02813023          	sd	s0,32(sp)
   104b8:	00050493          	addi	s1,a0,0
   104bc:	10078463          	beq	a5,zero,105c4 <__sfp+0x120>
   104c0:	000136b7          	lui	a3,0x13
   104c4:	01868693          	addi	a3,a3,24 # 13018 <__sglue>
   104c8:	0086a703          	lw	a4,8(a3)
   104cc:	08e05c63          	bge	zero,a4,10564 <__sfp+0xc0>
   104d0:	02071713          	slli	a4,a4,0x20
   104d4:	02075713          	srli	a4,a4,0x20
   104d8:	00171793          	slli	a5,a4,0x1
   104dc:	00e787b3          	add	a5,a5,a4
   104e0:	0106b403          	ld	s0,16(a3)
   104e4:	00279793          	slli	a5,a5,0x2
   104e8:	40e787b3          	sub	a5,a5,a4
   104ec:	00479793          	slli	a5,a5,0x4
   104f0:	00f407b3          	add	a5,s0,a5
   104f4:	00c0006f          	jal	zero,10500 <__sfp+0x5c>
   104f8:	0b040413          	addi	s0,s0,176
   104fc:	06f40463          	beq	s0,a5,10564 <__sfp+0xc0>
   10500:	01041703          	lh	a4,16(s0)
   10504:	fe071ae3          	bne	a4,zero,104f8 <__sfp+0x54>
   10508:	ffff07b7          	lui	a5,0xffff0
   1050c:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdc089>
   10510:	00f42823          	sw	a5,16(s0)
   10514:	0a042623          	sw	zero,172(s0)
   10518:	00043023          	sd	zero,0(s0)
   1051c:	00043423          	sd	zero,8(s0)
   10520:	00043c23          	sd	zero,24(s0)
   10524:	02042023          	sw	zero,32(s0)
   10528:	02042423          	sw	zero,40(s0)
   1052c:	00800613          	addi	a2,zero,8
   10530:	00000593          	addi	a1,zero,0
   10534:	0a440513          	addi	a0,s0,164
   10538:	64c000ef          	jal	ra,10b84 <memset>
   1053c:	04043c23          	sd	zero,88(s0)
   10540:	06042023          	sw	zero,96(s0)
   10544:	06043c23          	sd	zero,120(s0)
   10548:	08042023          	sw	zero,128(s0)
   1054c:	02813083          	ld	ra,40(sp)
   10550:	00040513          	addi	a0,s0,0
   10554:	02013403          	ld	s0,32(sp)
   10558:	01813483          	ld	s1,24(sp)
   1055c:	03010113          	addi	sp,sp,48
   10560:	00008067          	jalr	zero,0(ra)
   10564:	0006b403          	ld	s0,0(a3)
   10568:	00040663          	beq	s0,zero,10574 <__sfp+0xd0>
   1056c:	00040693          	addi	a3,s0,0
   10570:	f59ff06f          	jal	zero,104c8 <__sfp+0x24>
   10574:	2d800593          	addi	a1,zero,728
   10578:	00048513          	addi	a0,s1,0
   1057c:	00d13423          	sd	a3,8(sp)
   10580:	529000ef          	jal	ra,112a8 <_malloc_r>
   10584:	00813683          	ld	a3,8(sp)
   10588:	00050413          	addi	s0,a0,0
   1058c:	04050063          	beq	a0,zero,105cc <__sfp+0x128>
   10590:	00400793          	addi	a5,zero,4
   10594:	00f52423          	sw	a5,8(a0)
   10598:	01850513          	addi	a0,a0,24
   1059c:	00043023          	sd	zero,0(s0)
   105a0:	00a43823          	sd	a0,16(s0)
   105a4:	2c000613          	addi	a2,zero,704
   105a8:	00000593          	addi	a1,zero,0
   105ac:	00d13423          	sd	a3,8(sp)
   105b0:	5d4000ef          	jal	ra,10b84 <memset>
   105b4:	00813683          	ld	a3,8(sp)
   105b8:	0086b023          	sd	s0,0(a3)
   105bc:	00040693          	addi	a3,s0,0
   105c0:	f09ff06f          	jal	zero,104c8 <__sfp+0x24>
   105c4:	d99ff0ef          	jal	ra,1035c <global_stdio_init.part.0>
   105c8:	ef9ff06f          	jal	zero,104c0 <__sfp+0x1c>
   105cc:	0006b023          	sd	zero,0(a3)
   105d0:	00c00793          	addi	a5,zero,12
   105d4:	00f4a023          	sw	a5,0(s1)
   105d8:	f75ff06f          	jal	zero,1054c <__sfp+0xa8>

00000000000105dc <__sinit>:
   105dc:	04853783          	ld	a5,72(a0)
   105e0:	00078463          	beq	a5,zero,105e8 <__sinit+0xc>
   105e4:	00008067          	jalr	zero,0(ra)
   105e8:	000107b7          	lui	a5,0x10
   105ec:	1a01b703          	ld	a4,416(gp) # 139b8 <__stdio_exit_handler>
   105f0:	2f078793          	addi	a5,a5,752 # 102f0 <cleanup_stdio>
   105f4:	04f53423          	sd	a5,72(a0)
   105f8:	fe0716e3          	bne	a4,zero,105e4 <__sinit+0x8>
   105fc:	d61ff06f          	jal	zero,1035c <global_stdio_init.part.0>

0000000000010600 <__sfp_lock_acquire>:
   10600:	00008067          	jalr	zero,0(ra)

0000000000010604 <__sfp_lock_release>:
   10604:	00008067          	jalr	zero,0(ra)

0000000000010608 <__fp_lock_all>:
   10608:	00013637          	lui	a2,0x13
   1060c:	000105b7          	lui	a1,0x10
   10610:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10614:	2cc58593          	addi	a1,a1,716 # 102cc <__fp_lock>
   10618:	00000513          	addi	a0,zero,0
   1061c:	01c0006f          	jal	zero,10638 <_fwalk_sglue>

0000000000010620 <__fp_unlock_all>:
   10620:	00013637          	lui	a2,0x13
   10624:	000105b7          	lui	a1,0x10
   10628:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   1062c:	35458593          	addi	a1,a1,852 # 10354 <__fp_unlock>
   10630:	00000513          	addi	a0,zero,0
   10634:	0040006f          	jal	zero,10638 <_fwalk_sglue>

0000000000010638 <_fwalk_sglue>:
   10638:	fb010113          	addi	sp,sp,-80
   1063c:	03213823          	sd	s2,48(sp)
   10640:	03313423          	sd	s3,40(sp)
   10644:	03413023          	sd	s4,32(sp)
   10648:	01513c23          	sd	s5,24(sp)
   1064c:	01613823          	sd	s6,16(sp)
   10650:	01713423          	sd	s7,8(sp)
   10654:	04113423          	sd	ra,72(sp)
   10658:	04813023          	sd	s0,64(sp)
   1065c:	02913c23          	sd	s1,56(sp)
   10660:	00060913          	addi	s2,a2,0
   10664:	00050a13          	addi	s4,a0,0
   10668:	00058a93          	addi	s5,a1,0
   1066c:	00000b13          	addi	s6,zero,0
   10670:	00100b93          	addi	s7,zero,1
   10674:	fff00993          	addi	s3,zero,-1
   10678:	00892783          	lw	a5,8(s2)
   1067c:	04f05a63          	bge	zero,a5,106d0 <_fwalk_sglue+0x98>
   10680:	02079793          	slli	a5,a5,0x20
   10684:	0207d793          	srli	a5,a5,0x20
   10688:	00179493          	slli	s1,a5,0x1
   1068c:	00f484b3          	add	s1,s1,a5
   10690:	01093403          	ld	s0,16(s2)
   10694:	00249493          	slli	s1,s1,0x2
   10698:	40f484b3          	sub	s1,s1,a5
   1069c:	00449493          	slli	s1,s1,0x4
   106a0:	009404b3          	add	s1,s0,s1
   106a4:	01045783          	lhu	a5,16(s0)
   106a8:	02fbf063          	bgeu	s7,a5,106c8 <_fwalk_sglue+0x90>
   106ac:	01241783          	lh	a5,18(s0)
   106b0:	00040593          	addi	a1,s0,0
   106b4:	000a0513          	addi	a0,s4,0
   106b8:	01378863          	beq	a5,s3,106c8 <_fwalk_sglue+0x90>
   106bc:	000a80e7          	jalr	ra,0(s5)
   106c0:	01656b33          	or	s6,a0,s6
   106c4:	000b0b1b          	addiw	s6,s6,0
   106c8:	0b040413          	addi	s0,s0,176
   106cc:	fc941ce3          	bne	s0,s1,106a4 <_fwalk_sglue+0x6c>
   106d0:	00093903          	ld	s2,0(s2)
   106d4:	fa0912e3          	bne	s2,zero,10678 <_fwalk_sglue+0x40>
   106d8:	04813083          	ld	ra,72(sp)
   106dc:	04013403          	ld	s0,64(sp)
   106e0:	03813483          	ld	s1,56(sp)
   106e4:	03013903          	ld	s2,48(sp)
   106e8:	02813983          	ld	s3,40(sp)
   106ec:	02013a03          	ld	s4,32(sp)
   106f0:	01813a83          	ld	s5,24(sp)
   106f4:	00813b83          	ld	s7,8(sp)
   106f8:	000b0513          	addi	a0,s6,0
   106fc:	01013b03          	ld	s6,16(sp)
   10700:	05010113          	addi	sp,sp,80
   10704:	00008067          	jalr	zero,0(ra)

0000000000010708 <__sread>:
   10708:	ff010113          	addi	sp,sp,-16
   1070c:	00813023          	sd	s0,0(sp)
   10710:	00058413          	addi	s0,a1,0
   10714:	01259583          	lh	a1,18(a1)
   10718:	00113423          	sd	ra,8(sp)
   1071c:	2ec000ef          	jal	ra,10a08 <_read_r>
   10720:	02054063          	blt	a0,zero,10740 <__sread+0x38>
   10724:	09043783          	ld	a5,144(s0)
   10728:	00813083          	ld	ra,8(sp)
   1072c:	00a787b3          	add	a5,a5,a0
   10730:	08f43823          	sd	a5,144(s0)
   10734:	00013403          	ld	s0,0(sp)
   10738:	01010113          	addi	sp,sp,16
   1073c:	00008067          	jalr	zero,0(ra)
   10740:	01045783          	lhu	a5,16(s0)
   10744:	fffff737          	lui	a4,0xfffff
   10748:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   1074c:	00e7f7b3          	and	a5,a5,a4
   10750:	00813083          	ld	ra,8(sp)
   10754:	00f41823          	sh	a5,16(s0)
   10758:	00013403          	ld	s0,0(sp)
   1075c:	01010113          	addi	sp,sp,16
   10760:	00008067          	jalr	zero,0(ra)

0000000000010764 <__seofread>:
   10764:	00000513          	addi	a0,zero,0
   10768:	00008067          	jalr	zero,0(ra)

000000000001076c <__swrite>:
   1076c:	01059783          	lh	a5,16(a1)
   10770:	fd010113          	addi	sp,sp,-48
   10774:	00068313          	addi	t1,a3,0
   10778:	02113423          	sd	ra,40(sp)
   1077c:	1007f693          	andi	a3,a5,256
   10780:	00058713          	addi	a4,a1,0
   10784:	00060893          	addi	a7,a2,0
   10788:	00050813          	addi	a6,a0,0
   1078c:	02069863          	bne	a3,zero,107bc <__swrite+0x50>
   10790:	fffff6b7          	lui	a3,0xfffff
   10794:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10798:	02813083          	ld	ra,40(sp)
   1079c:	00d7f7b3          	and	a5,a5,a3
   107a0:	01271583          	lh	a1,18(a4)
   107a4:	00f71823          	sh	a5,16(a4)
   107a8:	00030693          	addi	a3,t1,0 # 10210 <frame_dummy+0x14>
   107ac:	00088613          	addi	a2,a7,0
   107b0:	00080513          	addi	a0,a6,0
   107b4:	03010113          	addi	sp,sp,48
   107b8:	2b80006f          	jal	zero,10a70 <_write_r>
   107bc:	01259583          	lh	a1,18(a1)
   107c0:	00c13823          	sd	a2,16(sp)
   107c4:	00200693          	addi	a3,zero,2
   107c8:	00000613          	addi	a2,zero,0
   107cc:	00613c23          	sd	t1,24(sp)
   107d0:	00e13023          	sd	a4,0(sp)
   107d4:	00a13423          	sd	a0,8(sp)
   107d8:	1c8000ef          	jal	ra,109a0 <_lseek_r>
   107dc:	00013703          	ld	a4,0(sp)
   107e0:	01813303          	ld	t1,24(sp)
   107e4:	01013883          	ld	a7,16(sp)
   107e8:	01071783          	lh	a5,16(a4)
   107ec:	00813803          	ld	a6,8(sp)
   107f0:	fa1ff06f          	jal	zero,10790 <__swrite+0x24>

00000000000107f4 <__sseek>:
   107f4:	ff010113          	addi	sp,sp,-16
   107f8:	00813023          	sd	s0,0(sp)
   107fc:	00058413          	addi	s0,a1,0
   10800:	01259583          	lh	a1,18(a1)
   10804:	00113423          	sd	ra,8(sp)
   10808:	198000ef          	jal	ra,109a0 <_lseek_r>
   1080c:	fff00713          	addi	a4,zero,-1
   10810:	01041783          	lh	a5,16(s0)
   10814:	02e50263          	beq	a0,a4,10838 <__sseek+0x44>
   10818:	00001737          	lui	a4,0x1
   1081c:	00e7e7b3          	or	a5,a5,a4
   10820:	00813083          	ld	ra,8(sp)
   10824:	08a43823          	sd	a0,144(s0)
   10828:	00f41823          	sh	a5,16(s0)
   1082c:	00013403          	ld	s0,0(sp)
   10830:	01010113          	addi	sp,sp,16
   10834:	00008067          	jalr	zero,0(ra)
   10838:	80050713          	addi	a4,a0,-2048
   1083c:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   10840:	00e7f7b3          	and	a5,a5,a4
   10844:	00813083          	ld	ra,8(sp)
   10848:	00f41823          	sh	a5,16(s0)
   1084c:	00013403          	ld	s0,0(sp)
   10850:	01010113          	addi	sp,sp,16
   10854:	00008067          	jalr	zero,0(ra)

0000000000010858 <__sclose>:
   10858:	01259583          	lh	a1,18(a1)
   1085c:	0040006f          	jal	zero,10860 <_close_r>

0000000000010860 <_close_r>:
   10860:	fe010113          	addi	sp,sp,-32
   10864:	00813823          	sd	s0,16(sp)
   10868:	00913423          	sd	s1,8(sp)
   1086c:	00050493          	addi	s1,a0,0
   10870:	00058513          	addi	a0,a1,0
   10874:	00113c23          	sd	ra,24(sp)
   10878:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   1087c:	0d1010ef          	jal	ra,1214c <_close>
   10880:	fff00793          	addi	a5,zero,-1
   10884:	00f50c63          	beq	a0,a5,1089c <_close_r+0x3c>
   10888:	01813083          	ld	ra,24(sp)
   1088c:	01013403          	ld	s0,16(sp)
   10890:	00813483          	ld	s1,8(sp)
   10894:	02010113          	addi	sp,sp,32
   10898:	00008067          	jalr	zero,0(ra)
   1089c:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   108a0:	fe0784e3          	beq	a5,zero,10888 <_close_r+0x28>
   108a4:	01813083          	ld	ra,24(sp)
   108a8:	01013403          	ld	s0,16(sp)
   108ac:	00f4a023          	sw	a5,0(s1)
   108b0:	00813483          	ld	s1,8(sp)
   108b4:	02010113          	addi	sp,sp,32
   108b8:	00008067          	jalr	zero,0(ra)

00000000000108bc <_reclaim_reent>:
   108bc:	1881b783          	ld	a5,392(gp) # 139a0 <_impure_ptr>
   108c0:	0ca78e63          	beq	a5,a0,1099c <_reclaim_reent+0xe0>
   108c4:	06853583          	ld	a1,104(a0)
   108c8:	fd010113          	addi	sp,sp,-48
   108cc:	00913c23          	sd	s1,24(sp)
   108d0:	02113423          	sd	ra,40(sp)
   108d4:	02813023          	sd	s0,32(sp)
   108d8:	00050493          	addi	s1,a0,0
   108dc:	04058863          	beq	a1,zero,1092c <_reclaim_reent+0x70>
   108e0:	01213823          	sd	s2,16(sp)
   108e4:	01313423          	sd	s3,8(sp)
   108e8:	00000913          	addi	s2,zero,0
   108ec:	20000993          	addi	s3,zero,512
   108f0:	012587b3          	add	a5,a1,s2
   108f4:	0007b403          	ld	s0,0(a5)
   108f8:	00040e63          	beq	s0,zero,10914 <_reclaim_reent+0x58>
   108fc:	00040593          	addi	a1,s0,0
   10900:	00043403          	ld	s0,0(s0)
   10904:	00048513          	addi	a0,s1,0
   10908:	69c000ef          	jal	ra,10fa4 <_free_r>
   1090c:	fe0418e3          	bne	s0,zero,108fc <_reclaim_reent+0x40>
   10910:	0684b583          	ld	a1,104(s1)
   10914:	00890913          	addi	s2,s2,8
   10918:	fd391ce3          	bne	s2,s3,108f0 <_reclaim_reent+0x34>
   1091c:	00048513          	addi	a0,s1,0
   10920:	684000ef          	jal	ra,10fa4 <_free_r>
   10924:	01013903          	ld	s2,16(sp)
   10928:	00813983          	ld	s3,8(sp)
   1092c:	0504b583          	ld	a1,80(s1)
   10930:	00058663          	beq	a1,zero,1093c <_reclaim_reent+0x80>
   10934:	00048513          	addi	a0,s1,0
   10938:	66c000ef          	jal	ra,10fa4 <_free_r>
   1093c:	0604b403          	ld	s0,96(s1)
   10940:	00040c63          	beq	s0,zero,10958 <_reclaim_reent+0x9c>
   10944:	00040593          	addi	a1,s0,0
   10948:	00043403          	ld	s0,0(s0)
   1094c:	00048513          	addi	a0,s1,0
   10950:	654000ef          	jal	ra,10fa4 <_free_r>
   10954:	fe0418e3          	bne	s0,zero,10944 <_reclaim_reent+0x88>
   10958:	0784b583          	ld	a1,120(s1)
   1095c:	00058663          	beq	a1,zero,10968 <_reclaim_reent+0xac>
   10960:	00048513          	addi	a0,s1,0
   10964:	640000ef          	jal	ra,10fa4 <_free_r>
   10968:	0484b783          	ld	a5,72(s1)
   1096c:	00078e63          	beq	a5,zero,10988 <_reclaim_reent+0xcc>
   10970:	02013403          	ld	s0,32(sp)
   10974:	02813083          	ld	ra,40(sp)
   10978:	00048513          	addi	a0,s1,0
   1097c:	01813483          	ld	s1,24(sp)
   10980:	03010113          	addi	sp,sp,48
   10984:	00078067          	jalr	zero,0(a5)
   10988:	02813083          	ld	ra,40(sp)
   1098c:	02013403          	ld	s0,32(sp)
   10990:	01813483          	ld	s1,24(sp)
   10994:	03010113          	addi	sp,sp,48
   10998:	00008067          	jalr	zero,0(ra)
   1099c:	00008067          	jalr	zero,0(ra)

00000000000109a0 <_lseek_r>:
   109a0:	fe010113          	addi	sp,sp,-32
   109a4:	00058793          	addi	a5,a1,0
   109a8:	00813823          	sd	s0,16(sp)
   109ac:	00913423          	sd	s1,8(sp)
   109b0:	00060593          	addi	a1,a2,0
   109b4:	00050493          	addi	s1,a0,0
   109b8:	00068613          	addi	a2,a3,0
   109bc:	00078513          	addi	a0,a5,0
   109c0:	00113c23          	sd	ra,24(sp)
   109c4:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   109c8:	7f4010ef          	jal	ra,121bc <_lseek>
   109cc:	fff00793          	addi	a5,zero,-1
   109d0:	00f50c63          	beq	a0,a5,109e8 <_lseek_r+0x48>
   109d4:	01813083          	ld	ra,24(sp)
   109d8:	01013403          	ld	s0,16(sp)
   109dc:	00813483          	ld	s1,8(sp)
   109e0:	02010113          	addi	sp,sp,32
   109e4:	00008067          	jalr	zero,0(ra)
   109e8:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   109ec:	fe0784e3          	beq	a5,zero,109d4 <_lseek_r+0x34>
   109f0:	01813083          	ld	ra,24(sp)
   109f4:	01013403          	ld	s0,16(sp)
   109f8:	00f4a023          	sw	a5,0(s1)
   109fc:	00813483          	ld	s1,8(sp)
   10a00:	02010113          	addi	sp,sp,32
   10a04:	00008067          	jalr	zero,0(ra)

0000000000010a08 <_read_r>:
   10a08:	fe010113          	addi	sp,sp,-32
   10a0c:	00058793          	addi	a5,a1,0
   10a10:	00813823          	sd	s0,16(sp)
   10a14:	00913423          	sd	s1,8(sp)
   10a18:	00060593          	addi	a1,a2,0
   10a1c:	00050493          	addi	s1,a0,0
   10a20:	00068613          	addi	a2,a3,0
   10a24:	00078513          	addi	a0,a5,0
   10a28:	00113c23          	sd	ra,24(sp)
   10a2c:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10a30:	7cc010ef          	jal	ra,121fc <_read>
   10a34:	fff00793          	addi	a5,zero,-1
   10a38:	00f50c63          	beq	a0,a5,10a50 <_read_r+0x48>
   10a3c:	01813083          	ld	ra,24(sp)
   10a40:	01013403          	ld	s0,16(sp)
   10a44:	00813483          	ld	s1,8(sp)
   10a48:	02010113          	addi	sp,sp,32
   10a4c:	00008067          	jalr	zero,0(ra)
   10a50:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10a54:	fe0784e3          	beq	a5,zero,10a3c <_read_r+0x34>
   10a58:	01813083          	ld	ra,24(sp)
   10a5c:	01013403          	ld	s0,16(sp)
   10a60:	00f4a023          	sw	a5,0(s1)
   10a64:	00813483          	ld	s1,8(sp)
   10a68:	02010113          	addi	sp,sp,32
   10a6c:	00008067          	jalr	zero,0(ra)

0000000000010a70 <_write_r>:
   10a70:	fe010113          	addi	sp,sp,-32
   10a74:	00058793          	addi	a5,a1,0
   10a78:	00813823          	sd	s0,16(sp)
   10a7c:	00913423          	sd	s1,8(sp)
   10a80:	00060593          	addi	a1,a2,0
   10a84:	00050493          	addi	s1,a0,0
   10a88:	00068613          	addi	a2,a3,0
   10a8c:	00078513          	addi	a0,a5,0
   10a90:	00113c23          	sd	ra,24(sp)
   10a94:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10a98:	01d010ef          	jal	ra,122b4 <_write>
   10a9c:	fff00793          	addi	a5,zero,-1
   10aa0:	00f50c63          	beq	a0,a5,10ab8 <_write_r+0x48>
   10aa4:	01813083          	ld	ra,24(sp)
   10aa8:	01013403          	ld	s0,16(sp)
   10aac:	00813483          	ld	s1,8(sp)
   10ab0:	02010113          	addi	sp,sp,32
   10ab4:	00008067          	jalr	zero,0(ra)
   10ab8:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10abc:	fe0784e3          	beq	a5,zero,10aa4 <_write_r+0x34>
   10ac0:	01813083          	ld	ra,24(sp)
   10ac4:	01013403          	ld	s0,16(sp)
   10ac8:	00f4a023          	sw	a5,0(s1)
   10acc:	00813483          	ld	s1,8(sp)
   10ad0:	02010113          	addi	sp,sp,32
   10ad4:	00008067          	jalr	zero,0(ra)

0000000000010ad8 <__libc_init_array>:
   10ad8:	fe010113          	addi	sp,sp,-32
   10adc:	00813823          	sd	s0,16(sp)
   10ae0:	01213023          	sd	s2,0(sp)
   10ae4:	00013437          	lui	s0,0x13
   10ae8:	00013937          	lui	s2,0x13
   10aec:	00113c23          	sd	ra,24(sp)
   10af0:	00913423          	sd	s1,8(sp)
   10af4:	00090913          	addi	s2,s2,0 # 13000 <__init_array_start>
   10af8:	00040413          	addi	s0,s0,0 # 13000 <__init_array_start>
   10afc:	02890263          	beq	s2,s0,10b20 <__libc_init_array+0x48>
   10b00:	40890933          	sub	s2,s2,s0
   10b04:	40395913          	srai	s2,s2,0x3
   10b08:	00000493          	addi	s1,zero,0
   10b0c:	00043783          	ld	a5,0(s0)
   10b10:	00148493          	addi	s1,s1,1
   10b14:	00840413          	addi	s0,s0,8
   10b18:	000780e7          	jalr	ra,0(a5)
   10b1c:	ff24e8e3          	bltu	s1,s2,10b0c <__libc_init_array+0x34>
   10b20:	00013937          	lui	s2,0x13
   10b24:	00013437          	lui	s0,0x13
   10b28:	01090913          	addi	s2,s2,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   10b2c:	00040413          	addi	s0,s0,0 # 13000 <__init_array_start>
   10b30:	02890263          	beq	s2,s0,10b54 <__libc_init_array+0x7c>
   10b34:	40890933          	sub	s2,s2,s0
   10b38:	40395913          	srai	s2,s2,0x3
   10b3c:	00000493          	addi	s1,zero,0
   10b40:	00043783          	ld	a5,0(s0)
   10b44:	00148493          	addi	s1,s1,1
   10b48:	00840413          	addi	s0,s0,8
   10b4c:	000780e7          	jalr	ra,0(a5)
   10b50:	ff24e8e3          	bltu	s1,s2,10b40 <__libc_init_array+0x68>
   10b54:	01813083          	ld	ra,24(sp)
   10b58:	01013403          	ld	s0,16(sp)
   10b5c:	00813483          	ld	s1,8(sp)
   10b60:	00013903          	ld	s2,0(sp)
   10b64:	02010113          	addi	sp,sp,32
   10b68:	00008067          	jalr	zero,0(ra)

0000000000010b6c <write>:
   10b6c:	00050713          	addi	a4,a0,0
   10b70:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   10b74:	00060693          	addi	a3,a2,0
   10b78:	00058613          	addi	a2,a1,0
   10b7c:	00070593          	addi	a1,a4,0
   10b80:	ef1ff06f          	jal	zero,10a70 <_write_r>

0000000000010b84 <memset>:
   10b84:	00f00313          	addi	t1,zero,15
   10b88:	00050713          	addi	a4,a0,0
   10b8c:	02c37a63          	bgeu	t1,a2,10bc0 <memset+0x3c>
   10b90:	00f77793          	andi	a5,a4,15
   10b94:	0a079063          	bne	a5,zero,10c34 <memset+0xb0>
   10b98:	06059e63          	bne	a1,zero,10c14 <memset+0x90>
   10b9c:	ff067693          	andi	a3,a2,-16
   10ba0:	00f67613          	andi	a2,a2,15
   10ba4:	00e686b3          	add	a3,a3,a4
   10ba8:	00b73023          	sd	a1,0(a4)
   10bac:	00b73423          	sd	a1,8(a4)
   10bb0:	01070713          	addi	a4,a4,16
   10bb4:	fed76ae3          	bltu	a4,a3,10ba8 <memset+0x24>
   10bb8:	00061463          	bne	a2,zero,10bc0 <memset+0x3c>
   10bbc:	00008067          	jalr	zero,0(ra)
   10bc0:	40c306b3          	sub	a3,t1,a2
   10bc4:	00269693          	slli	a3,a3,0x2
   10bc8:	00000297          	auipc	t0,0x0
   10bcc:	005686b3          	add	a3,a3,t0
   10bd0:	00c68067          	jalr	zero,12(a3)
   10bd4:	00b70723          	sb	a1,14(a4)
   10bd8:	00b706a3          	sb	a1,13(a4)
   10bdc:	00b70623          	sb	a1,12(a4)
   10be0:	00b705a3          	sb	a1,11(a4)
   10be4:	00b70523          	sb	a1,10(a4)
   10be8:	00b704a3          	sb	a1,9(a4)
   10bec:	00b70423          	sb	a1,8(a4)
   10bf0:	00b703a3          	sb	a1,7(a4)
   10bf4:	00b70323          	sb	a1,6(a4)
   10bf8:	00b702a3          	sb	a1,5(a4)
   10bfc:	00b70223          	sb	a1,4(a4)
   10c00:	00b701a3          	sb	a1,3(a4)
   10c04:	00b70123          	sb	a1,2(a4)
   10c08:	00b700a3          	sb	a1,1(a4)
   10c0c:	00b70023          	sb	a1,0(a4)
   10c10:	00008067          	jalr	zero,0(ra)
   10c14:	0ff5f593          	andi	a1,a1,255
   10c18:	00859693          	slli	a3,a1,0x8
   10c1c:	00d5e5b3          	or	a1,a1,a3
   10c20:	01059693          	slli	a3,a1,0x10
   10c24:	00d5e5b3          	or	a1,a1,a3
   10c28:	02059693          	slli	a3,a1,0x20
   10c2c:	00d5e5b3          	or	a1,a1,a3
   10c30:	f6dff06f          	jal	zero,10b9c <memset+0x18>
   10c34:	00279693          	slli	a3,a5,0x2
   10c38:	00000297          	auipc	t0,0x0
   10c3c:	005686b3          	add	a3,a3,t0
   10c40:	00008293          	addi	t0,ra,0
   10c44:	f98680e7          	jalr	ra,-104(a3)
   10c48:	00028093          	addi	ra,t0,0 # 10c38 <memset+0xb4>
   10c4c:	ff078793          	addi	a5,a5,-16
   10c50:	40f70733          	sub	a4,a4,a5
   10c54:	00f60633          	add	a2,a2,a5
   10c58:	f6c374e3          	bgeu	t1,a2,10bc0 <memset+0x3c>
   10c5c:	f3dff06f          	jal	zero,10b98 <memset+0x14>

0000000000010c60 <strlen>:
   10c60:	00757793          	andi	a5,a0,7
   10c64:	00050713          	addi	a4,a0,0
   10c68:	08079063          	bne	a5,zero,10ce8 <strlen+0x88>
   10c6c:	7f7f87b7          	lui	a5,0x7f7f8
   10c70:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <__BSS_END__+0x7f7e4007>
   10c74:	02079693          	slli	a3,a5,0x20
   10c78:	00f686b3          	add	a3,a3,a5
   10c7c:	fff00593          	addi	a1,zero,-1
   10c80:	00073603          	ld	a2,0(a4)
   10c84:	00870713          	addi	a4,a4,8
   10c88:	00d677b3          	and	a5,a2,a3
   10c8c:	00d787b3          	add	a5,a5,a3
   10c90:	00c7e7b3          	or	a5,a5,a2
   10c94:	00d7e7b3          	or	a5,a5,a3
   10c98:	feb784e3          	beq	a5,a1,10c80 <strlen+0x20>
   10c9c:	ff874783          	lbu	a5,-8(a4)
   10ca0:	40a706b3          	sub	a3,a4,a0
   10ca4:	06078463          	beq	a5,zero,10d0c <strlen+0xac>
   10ca8:	ff974783          	lbu	a5,-7(a4)
   10cac:	04078c63          	beq	a5,zero,10d04 <strlen+0xa4>
   10cb0:	ffa74783          	lbu	a5,-6(a4)
   10cb4:	06078463          	beq	a5,zero,10d1c <strlen+0xbc>
   10cb8:	ffb74783          	lbu	a5,-5(a4)
   10cbc:	04078c63          	beq	a5,zero,10d14 <strlen+0xb4>
   10cc0:	ffc74783          	lbu	a5,-4(a4)
   10cc4:	06078063          	beq	a5,zero,10d24 <strlen+0xc4>
   10cc8:	ffd74783          	lbu	a5,-3(a4)
   10ccc:	06078063          	beq	a5,zero,10d2c <strlen+0xcc>
   10cd0:	ffe74783          	lbu	a5,-2(a4)
   10cd4:	00f03533          	sltu	a0,zero,a5
   10cd8:	00d50533          	add	a0,a0,a3
   10cdc:	ffe50513          	addi	a0,a0,-2
   10ce0:	00008067          	jalr	zero,0(ra)
   10ce4:	f80684e3          	beq	a3,zero,10c6c <strlen+0xc>
   10ce8:	00074783          	lbu	a5,0(a4)
   10cec:	00170713          	addi	a4,a4,1
   10cf0:	00777693          	andi	a3,a4,7
   10cf4:	fe0798e3          	bne	a5,zero,10ce4 <strlen+0x84>
   10cf8:	40a70733          	sub	a4,a4,a0
   10cfc:	fff70513          	addi	a0,a4,-1
   10d00:	00008067          	jalr	zero,0(ra)
   10d04:	ff968513          	addi	a0,a3,-7
   10d08:	00008067          	jalr	zero,0(ra)
   10d0c:	ff868513          	addi	a0,a3,-8
   10d10:	00008067          	jalr	zero,0(ra)
   10d14:	ffb68513          	addi	a0,a3,-5
   10d18:	00008067          	jalr	zero,0(ra)
   10d1c:	ffa68513          	addi	a0,a3,-6
   10d20:	00008067          	jalr	zero,0(ra)
   10d24:	ffc68513          	addi	a0,a3,-4
   10d28:	00008067          	jalr	zero,0(ra)
   10d2c:	ffd68513          	addi	a0,a3,-3
   10d30:	00008067          	jalr	zero,0(ra)

0000000000010d34 <__call_exitprocs>:
   10d34:	fb010113          	addi	sp,sp,-80
   10d38:	03413023          	sd	s4,32(sp)
   10d3c:	03213823          	sd	s2,48(sp)
   10d40:	1b01b903          	ld	s2,432(gp) # 139c8 <__atexit>
   10d44:	04113423          	sd	ra,72(sp)
   10d48:	06090e63          	beq	s2,zero,10dc4 <__call_exitprocs+0x90>
   10d4c:	03313423          	sd	s3,40(sp)
   10d50:	01513c23          	sd	s5,24(sp)
   10d54:	01613823          	sd	s6,16(sp)
   10d58:	01713423          	sd	s7,8(sp)
   10d5c:	04813023          	sd	s0,64(sp)
   10d60:	02913c23          	sd	s1,56(sp)
   10d64:	01813023          	sd	s8,0(sp)
   10d68:	00050b13          	addi	s6,a0,0
   10d6c:	00058b93          	addi	s7,a1,0
   10d70:	fff00993          	addi	s3,zero,-1
   10d74:	00100a93          	addi	s5,zero,1
   10d78:	00892403          	lw	s0,8(s2)
   10d7c:	fff4041b          	addiw	s0,s0,-1
   10d80:	02044463          	blt	s0,zero,10da8 <__call_exitprocs+0x74>
   10d84:	01090493          	addi	s1,s2,16
   10d88:	00341793          	slli	a5,s0,0x3
   10d8c:	00f484b3          	add	s1,s1,a5
   10d90:	040b8463          	beq	s7,zero,10dd8 <__call_exitprocs+0xa4>
   10d94:	2004b783          	ld	a5,512(s1)
   10d98:	05778063          	beq	a5,s7,10dd8 <__call_exitprocs+0xa4>
   10d9c:	fff4041b          	addiw	s0,s0,-1
   10da0:	ff848493          	addi	s1,s1,-8
   10da4:	ff3418e3          	bne	s0,s3,10d94 <__call_exitprocs+0x60>
   10da8:	04013403          	ld	s0,64(sp)
   10dac:	03813483          	ld	s1,56(sp)
   10db0:	02813983          	ld	s3,40(sp)
   10db4:	01813a83          	ld	s5,24(sp)
   10db8:	01013b03          	ld	s6,16(sp)
   10dbc:	00813b83          	ld	s7,8(sp)
   10dc0:	00013c03          	ld	s8,0(sp)
   10dc4:	04813083          	ld	ra,72(sp)
   10dc8:	03013903          	ld	s2,48(sp)
   10dcc:	02013a03          	ld	s4,32(sp)
   10dd0:	05010113          	addi	sp,sp,80
   10dd4:	00008067          	jalr	zero,0(ra)
   10dd8:	00892783          	lw	a5,8(s2)
   10ddc:	0004b683          	ld	a3,0(s1)
   10de0:	fff7879b          	addiw	a5,a5,-1
   10de4:	06878a63          	beq	a5,s0,10e58 <__call_exitprocs+0x124>
   10de8:	0004b023          	sd	zero,0(s1)
   10dec:	02068663          	beq	a3,zero,10e18 <__call_exitprocs+0xe4>
   10df0:	31092783          	lw	a5,784(s2)
   10df4:	008a973b          	sllw	a4,s5,s0
   10df8:	00892c03          	lw	s8,8(s2)
   10dfc:	00e7f7b3          	and	a5,a5,a4
   10e00:	02079463          	bne	a5,zero,10e28 <__call_exitprocs+0xf4>
   10e04:	000680e7          	jalr	ra,0(a3)
   10e08:	00892703          	lw	a4,8(s2)
   10e0c:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10e10:	03871e63          	bne	a4,s8,10e4c <__call_exitprocs+0x118>
   10e14:	03279c63          	bne	a5,s2,10e4c <__call_exitprocs+0x118>
   10e18:	fff4041b          	addiw	s0,s0,-1
   10e1c:	ff848493          	addi	s1,s1,-8
   10e20:	f73418e3          	bne	s0,s3,10d90 <__call_exitprocs+0x5c>
   10e24:	f85ff06f          	jal	zero,10da8 <__call_exitprocs+0x74>
   10e28:	31492783          	lw	a5,788(s2)
   10e2c:	1004b583          	ld	a1,256(s1)
   10e30:	00f77733          	and	a4,a4,a5
   10e34:	02071663          	bne	a4,zero,10e60 <__call_exitprocs+0x12c>
   10e38:	000b0513          	addi	a0,s6,0
   10e3c:	000680e7          	jalr	ra,0(a3)
   10e40:	00892703          	lw	a4,8(s2)
   10e44:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10e48:	fd8706e3          	beq	a4,s8,10e14 <__call_exitprocs+0xe0>
   10e4c:	f4078ee3          	beq	a5,zero,10da8 <__call_exitprocs+0x74>
   10e50:	00078913          	addi	s2,a5,0
   10e54:	f25ff06f          	jal	zero,10d78 <__call_exitprocs+0x44>
   10e58:	00892423          	sw	s0,8(s2)
   10e5c:	f91ff06f          	jal	zero,10dec <__call_exitprocs+0xb8>
   10e60:	00058513          	addi	a0,a1,0
   10e64:	000680e7          	jalr	ra,0(a3)
   10e68:	fa1ff06f          	jal	zero,10e08 <__call_exitprocs+0xd4>

0000000000010e6c <atexit>:
   10e6c:	00050593          	addi	a1,a0,0
   10e70:	00000693          	addi	a3,zero,0
   10e74:	00000613          	addi	a2,zero,0
   10e78:	00000513          	addi	a0,zero,0
   10e7c:	2340106f          	jal	zero,120b0 <__register_exitproc>

0000000000010e80 <_malloc_trim_r>:
   10e80:	fd010113          	addi	sp,sp,-48
   10e84:	01213823          	sd	s2,16(sp)
   10e88:	00013937          	lui	s2,0x13
   10e8c:	02813023          	sd	s0,32(sp)
   10e90:	00913c23          	sd	s1,24(sp)
   10e94:	01313423          	sd	s3,8(sp)
   10e98:	00058413          	addi	s0,a1,0
   10e9c:	02113423          	sd	ra,40(sp)
   10ea0:	00050993          	addi	s3,a0,0
   10ea4:	18890913          	addi	s2,s2,392 # 13188 <__malloc_av_>
   10ea8:	4e5000ef          	jal	ra,11b8c <__malloc_lock>
   10eac:	01093783          	ld	a5,16(s2)
   10eb0:	00001737          	lui	a4,0x1
   10eb4:	0087b483          	ld	s1,8(a5)
   10eb8:	ffc4f493          	andi	s1,s1,-4
   10ebc:	7ff48793          	addi	a5,s1,2047
   10ec0:	7e078793          	addi	a5,a5,2016
   10ec4:	40878433          	sub	s0,a5,s0
   10ec8:	00c45413          	srli	s0,s0,0xc
   10ecc:	fff40413          	addi	s0,s0,-1
   10ed0:	00c41413          	slli	s0,s0,0xc
   10ed4:	00e44e63          	blt	s0,a4,10ef0 <_malloc_trim_r+0x70>
   10ed8:	00000593          	addi	a1,zero,0
   10edc:	00098513          	addi	a0,s3,0
   10ee0:	118010ef          	jal	ra,11ff8 <_sbrk_r>
   10ee4:	01093783          	ld	a5,16(s2)
   10ee8:	009787b3          	add	a5,a5,s1
   10eec:	02f50663          	beq	a0,a5,10f18 <_malloc_trim_r+0x98>
   10ef0:	00098513          	addi	a0,s3,0
   10ef4:	49d000ef          	jal	ra,11b90 <__malloc_unlock>
   10ef8:	02813083          	ld	ra,40(sp)
   10efc:	02013403          	ld	s0,32(sp)
   10f00:	01813483          	ld	s1,24(sp)
   10f04:	01013903          	ld	s2,16(sp)
   10f08:	00813983          	ld	s3,8(sp)
   10f0c:	00000513          	addi	a0,zero,0
   10f10:	03010113          	addi	sp,sp,48
   10f14:	00008067          	jalr	zero,0(ra)
   10f18:	408005b3          	sub	a1,zero,s0
   10f1c:	00098513          	addi	a0,s3,0
   10f20:	0d8010ef          	jal	ra,11ff8 <_sbrk_r>
   10f24:	fff00793          	addi	a5,zero,-1
   10f28:	04f50463          	beq	a0,a5,10f70 <_malloc_trim_r+0xf0>
   10f2c:	01093683          	ld	a3,16(s2)
   10f30:	4201a783          	lw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   10f34:	408484b3          	sub	s1,s1,s0
   10f38:	0014e493          	ori	s1,s1,1
   10f3c:	00098513          	addi	a0,s3,0
   10f40:	408787bb          	subw	a5,a5,s0
   10f44:	0096b423          	sd	s1,8(a3)
   10f48:	42f1a023          	sw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   10f4c:	445000ef          	jal	ra,11b90 <__malloc_unlock>
   10f50:	02813083          	ld	ra,40(sp)
   10f54:	02013403          	ld	s0,32(sp)
   10f58:	01813483          	ld	s1,24(sp)
   10f5c:	01013903          	ld	s2,16(sp)
   10f60:	00813983          	ld	s3,8(sp)
   10f64:	00100513          	addi	a0,zero,1
   10f68:	03010113          	addi	sp,sp,48
   10f6c:	00008067          	jalr	zero,0(ra)
   10f70:	00000593          	addi	a1,zero,0
   10f74:	00098513          	addi	a0,s3,0
   10f78:	080010ef          	jal	ra,11ff8 <_sbrk_r>
   10f7c:	01093703          	ld	a4,16(s2)
   10f80:	01f00693          	addi	a3,zero,31
   10f84:	40e507b3          	sub	a5,a0,a4
   10f88:	f6f6d4e3          	bge	a3,a5,10ef0 <_malloc_trim_r+0x70>
   10f8c:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   10f90:	0017e793          	ori	a5,a5,1
   10f94:	40c50533          	sub	a0,a0,a2
   10f98:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   10f9c:	42a1a023          	sw	a0,1056(gp) # 13c38 <__malloc_current_mallinfo>
   10fa0:	f51ff06f          	jal	zero,10ef0 <_malloc_trim_r+0x70>

0000000000010fa4 <_free_r>:
   10fa4:	12058863          	beq	a1,zero,110d4 <_free_r+0x130>
   10fa8:	fe010113          	addi	sp,sp,-32
   10fac:	00813823          	sd	s0,16(sp)
   10fb0:	00b13423          	sd	a1,8(sp)
   10fb4:	00050413          	addi	s0,a0,0
   10fb8:	00113c23          	sd	ra,24(sp)
   10fbc:	3d1000ef          	jal	ra,11b8c <__malloc_lock>
   10fc0:	00813583          	ld	a1,8(sp)
   10fc4:	00013837          	lui	a6,0x13
   10fc8:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   10fcc:	ff85b503          	ld	a0,-8(a1)
   10fd0:	ff058713          	addi	a4,a1,-16
   10fd4:	01083883          	ld	a7,16(a6)
   10fd8:	ffe57793          	andi	a5,a0,-2
   10fdc:	00f70633          	add	a2,a4,a5
   10fe0:	00863683          	ld	a3,8(a2)
   10fe4:	00157313          	andi	t1,a0,1
   10fe8:	ffc6f693          	andi	a3,a3,-4
   10fec:	18c88e63          	beq	a7,a2,11188 <_free_r+0x1e4>
   10ff0:	00d63423          	sd	a3,8(a2)
   10ff4:	00d608b3          	add	a7,a2,a3
   10ff8:	0088b883          	ld	a7,8(a7)
   10ffc:	0018f893          	andi	a7,a7,1
   11000:	08031e63          	bne	t1,zero,1109c <_free_r+0xf8>
   11004:	ff05b303          	ld	t1,-16(a1)
   11008:	000135b7          	lui	a1,0x13
   1100c:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   11010:	40670733          	sub	a4,a4,t1
   11014:	01073503          	ld	a0,16(a4)
   11018:	006787b3          	add	a5,a5,t1
   1101c:	14b50063          	beq	a0,a1,1115c <_free_r+0x1b8>
   11020:	01873303          	ld	t1,24(a4)
   11024:	00653c23          	sd	t1,24(a0)
   11028:	00a33823          	sd	a0,16(t1)
   1102c:	1a088263          	beq	a7,zero,111d0 <_free_r+0x22c>
   11030:	0017e693          	ori	a3,a5,1
   11034:	00d73423          	sd	a3,8(a4)
   11038:	00f63023          	sd	a5,0(a2)
   1103c:	1ff00693          	addi	a3,zero,511
   11040:	0af6e663          	bltu	a3,a5,110ec <_free_r+0x148>
   11044:	0037d793          	srli	a5,a5,0x3
   11048:	00179693          	slli	a3,a5,0x1
   1104c:	0026869b          	addiw	a3,a3,2
   11050:	00369693          	slli	a3,a3,0x3
   11054:	00883503          	ld	a0,8(a6)
   11058:	00d806b3          	add	a3,a6,a3
   1105c:	0006b583          	ld	a1,0(a3)
   11060:	4027d61b          	sraiw	a2,a5,0x2
   11064:	00100793          	addi	a5,zero,1
   11068:	00c797b3          	sll	a5,a5,a2
   1106c:	00a7e7b3          	or	a5,a5,a0
   11070:	ff068613          	addi	a2,a3,-16
   11074:	00b73823          	sd	a1,16(a4)
   11078:	00c73c23          	sd	a2,24(a4)
   1107c:	00f83423          	sd	a5,8(a6)
   11080:	00e6b023          	sd	a4,0(a3)
   11084:	00e5bc23          	sd	a4,24(a1)
   11088:	00040513          	addi	a0,s0,0
   1108c:	01013403          	ld	s0,16(sp)
   11090:	01813083          	ld	ra,24(sp)
   11094:	02010113          	addi	sp,sp,32
   11098:	2f90006f          	jal	zero,11b90 <__malloc_unlock>
   1109c:	02089e63          	bne	a7,zero,110d8 <_free_r+0x134>
   110a0:	000135b7          	lui	a1,0x13
   110a4:	00d787b3          	add	a5,a5,a3
   110a8:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   110ac:	01063683          	ld	a3,16(a2)
   110b0:	0017e893          	ori	a7,a5,1
   110b4:	00f70533          	add	a0,a4,a5
   110b8:	16b68663          	beq	a3,a1,11224 <_free_r+0x280>
   110bc:	01863603          	ld	a2,24(a2)
   110c0:	00c6bc23          	sd	a2,24(a3)
   110c4:	00d63823          	sd	a3,16(a2)
   110c8:	01173423          	sd	a7,8(a4)
   110cc:	00f53023          	sd	a5,0(a0)
   110d0:	f6dff06f          	jal	zero,1103c <_free_r+0x98>
   110d4:	00008067          	jalr	zero,0(ra)
   110d8:	00156513          	ori	a0,a0,1
   110dc:	fea5bc23          	sd	a0,-8(a1)
   110e0:	00f63023          	sd	a5,0(a2)
   110e4:	1ff00693          	addi	a3,zero,511
   110e8:	f4f6fee3          	bgeu	a3,a5,11044 <_free_r+0xa0>
   110ec:	0097d693          	srli	a3,a5,0x9
   110f0:	00400613          	addi	a2,zero,4
   110f4:	0ed66263          	bltu	a2,a3,111d8 <_free_r+0x234>
   110f8:	0067d693          	srli	a3,a5,0x6
   110fc:	00169593          	slli	a1,a3,0x1
   11100:	0725859b          	addiw	a1,a1,114
   11104:	00359593          	slli	a1,a1,0x3
   11108:	0386861b          	addiw	a2,a3,56
   1110c:	00b805b3          	add	a1,a6,a1
   11110:	0005b683          	ld	a3,0(a1)
   11114:	ff058593          	addi	a1,a1,-16
   11118:	00d59863          	bne	a1,a3,11128 <_free_r+0x184>
   1111c:	1240006f          	jal	zero,11240 <_free_r+0x29c>
   11120:	0106b683          	ld	a3,16(a3)
   11124:	00d58863          	beq	a1,a3,11134 <_free_r+0x190>
   11128:	0086b603          	ld	a2,8(a3)
   1112c:	ffc67613          	andi	a2,a2,-4
   11130:	fec7e8e3          	bltu	a5,a2,11120 <_free_r+0x17c>
   11134:	0186b583          	ld	a1,24(a3)
   11138:	00b73c23          	sd	a1,24(a4)
   1113c:	00d73823          	sd	a3,16(a4)
   11140:	00040513          	addi	a0,s0,0
   11144:	01013403          	ld	s0,16(sp)
   11148:	01813083          	ld	ra,24(sp)
   1114c:	00e5b823          	sd	a4,16(a1)
   11150:	00e6bc23          	sd	a4,24(a3)
   11154:	02010113          	addi	sp,sp,32
   11158:	2390006f          	jal	zero,11b90 <__malloc_unlock>
   1115c:	0a089263          	bne	a7,zero,11200 <_free_r+0x25c>
   11160:	01863583          	ld	a1,24(a2)
   11164:	01063603          	ld	a2,16(a2)
   11168:	00f686b3          	add	a3,a3,a5
   1116c:	0016e793          	ori	a5,a3,1
   11170:	00b63c23          	sd	a1,24(a2)
   11174:	00c5b823          	sd	a2,16(a1)
   11178:	00f73423          	sd	a5,8(a4)
   1117c:	00d70733          	add	a4,a4,a3
   11180:	00d73023          	sd	a3,0(a4)
   11184:	f05ff06f          	jal	zero,11088 <_free_r+0xe4>
   11188:	00d786b3          	add	a3,a5,a3
   1118c:	02031063          	bne	t1,zero,111ac <_free_r+0x208>
   11190:	ff05b783          	ld	a5,-16(a1)
   11194:	40f70733          	sub	a4,a4,a5
   11198:	01073603          	ld	a2,16(a4)
   1119c:	00f686b3          	add	a3,a3,a5
   111a0:	01873783          	ld	a5,24(a4)
   111a4:	00f63c23          	sd	a5,24(a2)
   111a8:	00c7b823          	sd	a2,16(a5)
   111ac:	0016e613          	ori	a2,a3,1
   111b0:	1981b783          	ld	a5,408(gp) # 139b0 <__malloc_trim_threshold>
   111b4:	00c73423          	sd	a2,8(a4)
   111b8:	00e83823          	sd	a4,16(a6)
   111bc:	ecf6e6e3          	bltu	a3,a5,11088 <_free_r+0xe4>
   111c0:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   111c4:	00040513          	addi	a0,s0,0
   111c8:	cb9ff0ef          	jal	ra,10e80 <_malloc_trim_r>
   111cc:	ebdff06f          	jal	zero,11088 <_free_r+0xe4>
   111d0:	00d787b3          	add	a5,a5,a3
   111d4:	ed9ff06f          	jal	zero,110ac <_free_r+0x108>
   111d8:	01400613          	addi	a2,zero,20
   111dc:	02d67a63          	bgeu	a2,a3,11210 <_free_r+0x26c>
   111e0:	05400613          	addi	a2,zero,84
   111e4:	06d66c63          	bltu	a2,a3,1125c <_free_r+0x2b8>
   111e8:	00c7d693          	srli	a3,a5,0xc
   111ec:	00169593          	slli	a1,a3,0x1
   111f0:	0de5859b          	addiw	a1,a1,222
   111f4:	00359593          	slli	a1,a1,0x3
   111f8:	06e6861b          	addiw	a2,a3,110
   111fc:	f11ff06f          	jal	zero,1110c <_free_r+0x168>
   11200:	0017e693          	ori	a3,a5,1
   11204:	00d73423          	sd	a3,8(a4)
   11208:	00f63023          	sd	a5,0(a2)
   1120c:	e7dff06f          	jal	zero,11088 <_free_r+0xe4>
   11210:	00169593          	slli	a1,a3,0x1
   11214:	0b85859b          	addiw	a1,a1,184
   11218:	00359593          	slli	a1,a1,0x3
   1121c:	05b6861b          	addiw	a2,a3,91
   11220:	eedff06f          	jal	zero,1110c <_free_r+0x168>
   11224:	02e83423          	sd	a4,40(a6)
   11228:	02e83023          	sd	a4,32(a6)
   1122c:	00b73c23          	sd	a1,24(a4)
   11230:	00b73823          	sd	a1,16(a4)
   11234:	01173423          	sd	a7,8(a4)
   11238:	00f53023          	sd	a5,0(a0)
   1123c:	e4dff06f          	jal	zero,11088 <_free_r+0xe4>
   11240:	00883503          	ld	a0,8(a6)
   11244:	4026561b          	sraiw	a2,a2,0x2
   11248:	00100793          	addi	a5,zero,1
   1124c:	00c797b3          	sll	a5,a5,a2
   11250:	00a7e7b3          	or	a5,a5,a0
   11254:	00f83423          	sd	a5,8(a6)
   11258:	ee1ff06f          	jal	zero,11138 <_free_r+0x194>
   1125c:	15400613          	addi	a2,zero,340
   11260:	00d66e63          	bltu	a2,a3,1127c <_free_r+0x2d8>
   11264:	00f7d693          	srli	a3,a5,0xf
   11268:	00169593          	slli	a1,a3,0x1
   1126c:	0f05859b          	addiw	a1,a1,240
   11270:	00359593          	slli	a1,a1,0x3
   11274:	0776861b          	addiw	a2,a3,119
   11278:	e95ff06f          	jal	zero,1110c <_free_r+0x168>
   1127c:	55400613          	addi	a2,zero,1364
   11280:	00d66e63          	bltu	a2,a3,1129c <_free_r+0x2f8>
   11284:	0127d693          	srli	a3,a5,0x12
   11288:	00169593          	slli	a1,a3,0x1
   1128c:	0fa5859b          	addiw	a1,a1,250
   11290:	00359593          	slli	a1,a1,0x3
   11294:	07c6861b          	addiw	a2,a3,124
   11298:	e75ff06f          	jal	zero,1110c <_free_r+0x168>
   1129c:	7f000593          	addi	a1,zero,2032
   112a0:	07e00613          	addi	a2,zero,126
   112a4:	e69ff06f          	jal	zero,1110c <_free_r+0x168>

00000000000112a8 <_malloc_r>:
   112a8:	fa010113          	addi	sp,sp,-96
   112ac:	04813823          	sd	s0,80(sp)
   112b0:	04113c23          	sd	ra,88(sp)
   112b4:	01758713          	addi	a4,a1,23
   112b8:	02e00793          	addi	a5,zero,46
   112bc:	00050413          	addi	s0,a0,0
   112c0:	08e7ee63          	bltu	a5,a4,1135c <_malloc_r+0xb4>
   112c4:	02000713          	addi	a4,zero,32
   112c8:	06b76c63          	bltu	a4,a1,11340 <_malloc_r+0x98>
   112cc:	0c1000ef          	jal	ra,11b8c <__malloc_lock>
   112d0:	02000713          	addi	a4,zero,32
   112d4:	05000693          	addi	a3,zero,80
   112d8:	00400893          	addi	a7,zero,4
   112dc:	00013837          	lui	a6,0x13
   112e0:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   112e4:	00d806b3          	add	a3,a6,a3
   112e8:	0086b783          	ld	a5,8(a3)
   112ec:	ff068613          	addi	a2,a3,-16
   112f0:	48c78063          	beq	a5,a2,11770 <_malloc_r+0x4c8>
   112f4:	0087b703          	ld	a4,8(a5)
   112f8:	0187b603          	ld	a2,24(a5)
   112fc:	0107b583          	ld	a1,16(a5)
   11300:	ffc77713          	andi	a4,a4,-4
   11304:	00e78733          	add	a4,a5,a4
   11308:	00873683          	ld	a3,8(a4)
   1130c:	00c5bc23          	sd	a2,24(a1)
   11310:	00b63823          	sd	a1,16(a2)
   11314:	0016e693          	ori	a3,a3,1
   11318:	00040513          	addi	a0,s0,0
   1131c:	00d73423          	sd	a3,8(a4)
   11320:	00f13423          	sd	a5,8(sp)
   11324:	06d000ef          	jal	ra,11b90 <__malloc_unlock>
   11328:	00813783          	ld	a5,8(sp)
   1132c:	05813083          	ld	ra,88(sp)
   11330:	05013403          	ld	s0,80(sp)
   11334:	01078513          	addi	a0,a5,16
   11338:	06010113          	addi	sp,sp,96
   1133c:	00008067          	jalr	zero,0(ra)
   11340:	00c00793          	addi	a5,zero,12
   11344:	00f42023          	sw	a5,0(s0)
   11348:	00000513          	addi	a0,zero,0
   1134c:	05813083          	ld	ra,88(sp)
   11350:	05013403          	ld	s0,80(sp)
   11354:	06010113          	addi	sp,sp,96
   11358:	00008067          	jalr	zero,0(ra)
   1135c:	00100793          	addi	a5,zero,1
   11360:	ff077713          	andi	a4,a4,-16
   11364:	01f79793          	slli	a5,a5,0x1f
   11368:	fcf77ce3          	bgeu	a4,a5,11340 <_malloc_r+0x98>
   1136c:	fcb76ae3          	bltu	a4,a1,11340 <_malloc_r+0x98>
   11370:	00e13423          	sd	a4,8(sp)
   11374:	019000ef          	jal	ra,11b8c <__malloc_lock>
   11378:	00813703          	ld	a4,8(sp)
   1137c:	1f700793          	addi	a5,zero,503
   11380:	4ee7fa63          	bgeu	a5,a4,11874 <_malloc_r+0x5cc>
   11384:	00975793          	srli	a5,a4,0x9
   11388:	18078a63          	beq	a5,zero,1151c <_malloc_r+0x274>
   1138c:	00400693          	addi	a3,zero,4
   11390:	44f6ea63          	bltu	a3,a5,117e4 <_malloc_r+0x53c>
   11394:	00675793          	srli	a5,a4,0x6
   11398:	0397889b          	addiw	a7,a5,57
   1139c:	0018951b          	slliw	a0,a7,0x1
   113a0:	03878e1b          	addiw	t3,a5,56
   113a4:	00351513          	slli	a0,a0,0x3
   113a8:	00013837          	lui	a6,0x13
   113ac:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   113b0:	00a80533          	add	a0,a6,a0
   113b4:	00853783          	ld	a5,8(a0)
   113b8:	ff050513          	addi	a0,a0,-16
   113bc:	02f50863          	beq	a0,a5,113ec <_malloc_r+0x144>
   113c0:	01f00313          	addi	t1,zero,31
   113c4:	0140006f          	jal	zero,113d8 <_malloc_r+0x130>
   113c8:	0187b583          	ld	a1,24(a5)
   113cc:	36065263          	bge	a2,zero,11730 <_malloc_r+0x488>
   113d0:	00b50e63          	beq	a0,a1,113ec <_malloc_r+0x144>
   113d4:	00058793          	addi	a5,a1,0
   113d8:	0087b683          	ld	a3,8(a5)
   113dc:	ffc6f693          	andi	a3,a3,-4
   113e0:	40e68633          	sub	a2,a3,a4
   113e4:	fec352e3          	bge	t1,a2,113c8 <_malloc_r+0x120>
   113e8:	000e0893          	addi	a7,t3,0
   113ec:	02083783          	ld	a5,32(a6)
   113f0:	00013e37          	lui	t3,0x13
   113f4:	198e0e13          	addi	t3,t3,408 # 13198 <__malloc_av_+0x10>
   113f8:	2fc78a63          	beq	a5,t3,116ec <_malloc_r+0x444>
   113fc:	0087b303          	ld	t1,8(a5)
   11400:	01f00613          	addi	a2,zero,31
   11404:	ffc37313          	andi	t1,t1,-4
   11408:	40e306b3          	sub	a3,t1,a4
   1140c:	4ad64463          	blt	a2,a3,118b4 <_malloc_r+0x60c>
   11410:	03c83423          	sd	t3,40(a6)
   11414:	03c83023          	sd	t3,32(a6)
   11418:	4606da63          	bge	a3,zero,1188c <_malloc_r+0x5e4>
   1141c:	1ff00693          	addi	a3,zero,511
   11420:	00883583          	ld	a1,8(a6)
   11424:	3466ee63          	bltu	a3,t1,11780 <_malloc_r+0x4d8>
   11428:	00335313          	srli	t1,t1,0x3
   1142c:	00131693          	slli	a3,t1,0x1
   11430:	0026869b          	addiw	a3,a3,2
   11434:	00369693          	slli	a3,a3,0x3
   11438:	00d806b3          	add	a3,a6,a3
   1143c:	0006b503          	ld	a0,0(a3)
   11440:	4023531b          	sraiw	t1,t1,0x2
   11444:	00100613          	addi	a2,zero,1
   11448:	00661633          	sll	a2,a2,t1
   1144c:	00c5e5b3          	or	a1,a1,a2
   11450:	ff068613          	addi	a2,a3,-16
   11454:	00a7b823          	sd	a0,16(a5)
   11458:	00c7bc23          	sd	a2,24(a5)
   1145c:	00b83423          	sd	a1,8(a6)
   11460:	00f6b023          	sd	a5,0(a3)
   11464:	00f53c23          	sd	a5,24(a0)
   11468:	4028d79b          	sraiw	a5,a7,0x2
   1146c:	00100513          	addi	a0,zero,1
   11470:	00f51533          	sll	a0,a0,a5
   11474:	0aa5ec63          	bltu	a1,a0,1152c <_malloc_r+0x284>
   11478:	00b577b3          	and	a5,a0,a1
   1147c:	02079463          	bne	a5,zero,114a4 <_malloc_r+0x1fc>
   11480:	00151513          	slli	a0,a0,0x1
   11484:	ffc8f893          	andi	a7,a7,-4
   11488:	00b577b3          	and	a5,a0,a1
   1148c:	0048889b          	addiw	a7,a7,4
   11490:	00079a63          	bne	a5,zero,114a4 <_malloc_r+0x1fc>
   11494:	00151513          	slli	a0,a0,0x1
   11498:	00b577b3          	and	a5,a0,a1
   1149c:	0048889b          	addiw	a7,a7,4
   114a0:	fe078ae3          	beq	a5,zero,11494 <_malloc_r+0x1ec>
   114a4:	01f00e93          	addi	t4,zero,31
   114a8:	00189f13          	slli	t5,a7,0x1
   114ac:	002f0f1b          	addiw	t5,t5,2
   114b0:	003f1f13          	slli	t5,t5,0x3
   114b4:	ff0f0f13          	addi	t5,t5,-16
   114b8:	01e80f33          	add	t5,a6,t5
   114bc:	000f0313          	addi	t1,t5,0
   114c0:	01833683          	ld	a3,24(t1)
   114c4:	00088f93          	addi	t6,a7,0
   114c8:	34d30263          	beq	t1,a3,1180c <_malloc_r+0x564>
   114cc:	0086b603          	ld	a2,8(a3)
   114d0:	00068793          	addi	a5,a3,0
   114d4:	0186b683          	ld	a3,24(a3)
   114d8:	ffc67613          	andi	a2,a2,-4
   114dc:	40e605b3          	sub	a1,a2,a4
   114e0:	34bec263          	blt	t4,a1,11824 <_malloc_r+0x57c>
   114e4:	fe05c2e3          	blt	a1,zero,114c8 <_malloc_r+0x220>
   114e8:	00c78633          	add	a2,a5,a2
   114ec:	00863703          	ld	a4,8(a2)
   114f0:	0107b583          	ld	a1,16(a5)
   114f4:	00040513          	addi	a0,s0,0
   114f8:	00176713          	ori	a4,a4,1
   114fc:	00e63423          	sd	a4,8(a2)
   11500:	00d5bc23          	sd	a3,24(a1)
   11504:	00b6b823          	sd	a1,16(a3)
   11508:	00f13423          	sd	a5,8(sp)
   1150c:	684000ef          	jal	ra,11b90 <__malloc_unlock>
   11510:	00813783          	ld	a5,8(sp)
   11514:	01078513          	addi	a0,a5,16
   11518:	e35ff06f          	jal	zero,1134c <_malloc_r+0xa4>
   1151c:	40000513          	addi	a0,zero,1024
   11520:	04000893          	addi	a7,zero,64
   11524:	03f00e13          	addi	t3,zero,63
   11528:	e81ff06f          	jal	zero,113a8 <_malloc_r+0x100>
   1152c:	01083783          	ld	a5,16(a6)
   11530:	0087b683          	ld	a3,8(a5)
   11534:	ffc6f893          	andi	a7,a3,-4
   11538:	40e88633          	sub	a2,a7,a4
   1153c:	00e8e663          	bltu	a7,a4,11548 <_malloc_r+0x2a0>
   11540:	02062693          	slti	a3,a2,32
   11544:	1a068863          	beq	a3,zero,116f4 <_malloc_r+0x44c>
   11548:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   1154c:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   11550:	fff00693          	addi	a3,zero,-1
   11554:	00b705b3          	add	a1,a4,a1
   11558:	44d60663          	beq	a2,a3,119a4 <_malloc_r+0x6fc>
   1155c:	000016b7          	lui	a3,0x1
   11560:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   11564:	00d585b3          	add	a1,a1,a3
   11568:	fffff6b7          	lui	a3,0xfffff
   1156c:	00d5f5b3          	and	a1,a1,a3
   11570:	00040513          	addi	a0,s0,0
   11574:	03013423          	sd	a6,40(sp)
   11578:	02f13023          	sd	a5,32(sp)
   1157c:	00e13c23          	sd	a4,24(sp)
   11580:	01113823          	sd	a7,16(sp)
   11584:	00b13423          	sd	a1,8(sp)
   11588:	271000ef          	jal	ra,11ff8 <_sbrk_r>
   1158c:	fff00693          	addi	a3,zero,-1
   11590:	00813583          	ld	a1,8(sp)
   11594:	01013883          	ld	a7,16(sp)
   11598:	01813703          	ld	a4,24(sp)
   1159c:	02013783          	ld	a5,32(sp)
   115a0:	02813803          	ld	a6,40(sp)
   115a4:	00050313          	addi	t1,a0,0
   115a8:	36d50663          	beq	a0,a3,11914 <_malloc_r+0x66c>
   115ac:	011786b3          	add	a3,a5,a7
   115b0:	36d56063          	bltu	a0,a3,11910 <_malloc_r+0x668>
   115b4:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   115b8:	000e2603          	lw	a2,0(t3)
   115bc:	00b6063b          	addw	a2,a2,a1
   115c0:	00ce2023          	sw	a2,0(t3)
   115c4:	00060513          	addi	a0,a2,0
   115c8:	4a668c63          	beq	a3,t1,11a80 <_malloc_r+0x7d8>
   115cc:	1901bf03          	ld	t5,400(gp) # 139a8 <__malloc_sbrk_base>
   115d0:	fff00613          	addi	a2,zero,-1
   115d4:	4ccf0463          	beq	t5,a2,11a9c <_malloc_r+0x7f4>
   115d8:	40d306b3          	sub	a3,t1,a3
   115dc:	00a686bb          	addw	a3,a3,a0
   115e0:	00de2023          	sw	a3,0(t3)
   115e4:	00f37e93          	andi	t4,t1,15
   115e8:	3c0e8e63          	beq	t4,zero,119c4 <_malloc_r+0x71c>
   115ec:	ff037313          	andi	t1,t1,-16
   115f0:	000016b7          	lui	a3,0x1
   115f4:	01030313          	addi	t1,t1,16
   115f8:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   115fc:	00b30633          	add	a2,t1,a1
   11600:	41d685b3          	sub	a1,a3,t4
   11604:	40c585b3          	sub	a1,a1,a2
   11608:	03459593          	slli	a1,a1,0x34
   1160c:	0345d593          	srli	a1,a1,0x34
   11610:	00040513          	addi	a0,s0,0
   11614:	05c13023          	sd	t3,64(sp)
   11618:	03013c23          	sd	a6,56(sp)
   1161c:	02f13823          	sd	a5,48(sp)
   11620:	02e13423          	sd	a4,40(sp)
   11624:	03113023          	sd	a7,32(sp)
   11628:	00613c23          	sd	t1,24(sp)
   1162c:	01d13823          	sd	t4,16(sp)
   11630:	00c13423          	sd	a2,8(sp)
   11634:	04b13423          	sd	a1,72(sp)
   11638:	1c1000ef          	jal	ra,11ff8 <_sbrk_r>
   1163c:	00050693          	addi	a3,a0,0
   11640:	fff00513          	addi	a0,zero,-1
   11644:	00813603          	ld	a2,8(sp)
   11648:	01013e83          	ld	t4,16(sp)
   1164c:	01813303          	ld	t1,24(sp)
   11650:	02013883          	ld	a7,32(sp)
   11654:	02813703          	ld	a4,40(sp)
   11658:	03013783          	ld	a5,48(sp)
   1165c:	03813803          	ld	a6,56(sp)
   11660:	04013e03          	ld	t3,64(sp)
   11664:	48a68663          	beq	a3,a0,11af0 <_malloc_r+0x848>
   11668:	04813583          	ld	a1,72(sp)
   1166c:	0005851b          	addiw	a0,a1,0
   11670:	000e2603          	lw	a2,0(t3)
   11674:	406686b3          	sub	a3,a3,t1
   11678:	00b686b3          	add	a3,a3,a1
   1167c:	0016e693          	ori	a3,a3,1
   11680:	00683823          	sd	t1,16(a6)
   11684:	00a6063b          	addw	a2,a2,a0
   11688:	00d33423          	sd	a3,8(t1)
   1168c:	00ce2023          	sw	a2,0(t3)
   11690:	03078e63          	beq	a5,a6,116cc <_malloc_r+0x424>
   11694:	01f00513          	addi	a0,zero,31
   11698:	41157663          	bgeu	a0,a7,11aa4 <_malloc_r+0x7fc>
   1169c:	0087b583          	ld	a1,8(a5)
   116a0:	fe888693          	addi	a3,a7,-24
   116a4:	ff06f693          	andi	a3,a3,-16
   116a8:	0015f593          	andi	a1,a1,1
   116ac:	00d5e5b3          	or	a1,a1,a3
   116b0:	00b7b423          	sd	a1,8(a5)
   116b4:	00900893          	addi	a7,zero,9
   116b8:	00d785b3          	add	a1,a5,a3
   116bc:	0115b423          	sd	a7,8(a1)
   116c0:	0115b823          	sd	a7,16(a1)
   116c4:	44d56863          	bltu	a0,a3,11b14 <_malloc_r+0x86c>
   116c8:	00833683          	ld	a3,8(t1)
   116cc:	1c01b583          	ld	a1,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   116d0:	00c5f463          	bgeu	a1,a2,116d8 <_malloc_r+0x430>
   116d4:	1cc1b023          	sd	a2,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   116d8:	1b81b583          	ld	a1,440(gp) # 139d0 <__malloc_max_total_mem>
   116dc:	00c5f463          	bgeu	a1,a2,116e4 <_malloc_r+0x43c>
   116e0:	1ac1bc23          	sd	a2,440(gp) # 139d0 <__malloc_max_total_mem>
   116e4:	00030793          	addi	a5,t1,0
   116e8:	2340006f          	jal	zero,1191c <_malloc_r+0x674>
   116ec:	00883583          	ld	a1,8(a6)
   116f0:	d79ff06f          	jal	zero,11468 <_malloc_r+0x1c0>
   116f4:	00176693          	ori	a3,a4,1
   116f8:	00d7b423          	sd	a3,8(a5)
   116fc:	00e78733          	add	a4,a5,a4
   11700:	00166613          	ori	a2,a2,1
   11704:	00e83823          	sd	a4,16(a6)
   11708:	00040513          	addi	a0,s0,0
   1170c:	00c73423          	sd	a2,8(a4)
   11710:	00f13423          	sd	a5,8(sp)
   11714:	47c000ef          	jal	ra,11b90 <__malloc_unlock>
   11718:	00813783          	ld	a5,8(sp)
   1171c:	05813083          	ld	ra,88(sp)
   11720:	05013403          	ld	s0,80(sp)
   11724:	01078513          	addi	a0,a5,16
   11728:	06010113          	addi	sp,sp,96
   1172c:	00008067          	jalr	zero,0(ra)
   11730:	0107b603          	ld	a2,16(a5)
   11734:	00d786b3          	add	a3,a5,a3
   11738:	0086b703          	ld	a4,8(a3)
   1173c:	00b63c23          	sd	a1,24(a2)
   11740:	00c5b823          	sd	a2,16(a1)
   11744:	00176713          	ori	a4,a4,1
   11748:	00040513          	addi	a0,s0,0
   1174c:	00e6b423          	sd	a4,8(a3)
   11750:	00f13423          	sd	a5,8(sp)
   11754:	43c000ef          	jal	ra,11b90 <__malloc_unlock>
   11758:	00813783          	ld	a5,8(sp)
   1175c:	05813083          	ld	ra,88(sp)
   11760:	05013403          	ld	s0,80(sp)
   11764:	01078513          	addi	a0,a5,16
   11768:	06010113          	addi	sp,sp,96
   1176c:	00008067          	jalr	zero,0(ra)
   11770:	0186b783          	ld	a5,24(a3)
   11774:	0028889b          	addiw	a7,a7,2
   11778:	c6f68ae3          	beq	a3,a5,113ec <_malloc_r+0x144>
   1177c:	b79ff06f          	jal	zero,112f4 <_malloc_r+0x4c>
   11780:	00935693          	srli	a3,t1,0x9
   11784:	00400613          	addi	a2,zero,4
   11788:	16d67863          	bgeu	a2,a3,118f8 <_malloc_r+0x650>
   1178c:	01400613          	addi	a2,zero,20
   11790:	28d66e63          	bltu	a2,a3,11a2c <_malloc_r+0x784>
   11794:	00169513          	slli	a0,a3,0x1
   11798:	0b85051b          	addiw	a0,a0,184
   1179c:	00351513          	slli	a0,a0,0x3
   117a0:	05b6861b          	addiw	a2,a3,91
   117a4:	00a80533          	add	a0,a6,a0
   117a8:	00053683          	ld	a3,0(a0)
   117ac:	ff050513          	addi	a0,a0,-16
   117b0:	00d51863          	bne	a0,a3,117c0 <_malloc_r+0x518>
   117b4:	1f80006f          	jal	zero,119ac <_malloc_r+0x704>
   117b8:	0106b683          	ld	a3,16(a3)
   117bc:	00d50863          	beq	a0,a3,117cc <_malloc_r+0x524>
   117c0:	0086b603          	ld	a2,8(a3)
   117c4:	ffc67613          	andi	a2,a2,-4
   117c8:	fec368e3          	bltu	t1,a2,117b8 <_malloc_r+0x510>
   117cc:	0186b503          	ld	a0,24(a3)
   117d0:	00a7bc23          	sd	a0,24(a5)
   117d4:	00d7b823          	sd	a3,16(a5)
   117d8:	00f53823          	sd	a5,16(a0)
   117dc:	00f6bc23          	sd	a5,24(a3)
   117e0:	c89ff06f          	jal	zero,11468 <_malloc_r+0x1c0>
   117e4:	01400693          	addi	a3,zero,20
   117e8:	14f6fa63          	bgeu	a3,a5,1193c <_malloc_r+0x694>
   117ec:	05400693          	addi	a3,zero,84
   117f0:	24f6ee63          	bltu	a3,a5,11a4c <_malloc_r+0x7a4>
   117f4:	00c75793          	srli	a5,a4,0xc
   117f8:	06f7889b          	addiw	a7,a5,111
   117fc:	0018951b          	slliw	a0,a7,0x1
   11800:	06e78e1b          	addiw	t3,a5,110
   11804:	00351513          	slli	a0,a0,0x3
   11808:	ba1ff06f          	jal	zero,113a8 <_malloc_r+0x100>
   1180c:	001f8f9b          	addiw	t6,t6,1
   11810:	003ff793          	andi	a5,t6,3
   11814:	01030313          	addi	t1,t1,16
   11818:	14078263          	beq	a5,zero,1195c <_malloc_r+0x6b4>
   1181c:	01833683          	ld	a3,24(t1)
   11820:	ca9ff06f          	jal	zero,114c8 <_malloc_r+0x220>
   11824:	0107b503          	ld	a0,16(a5)
   11828:	00176893          	ori	a7,a4,1
   1182c:	0117b423          	sd	a7,8(a5)
   11830:	00d53c23          	sd	a3,24(a0)
   11834:	00a6b823          	sd	a0,16(a3)
   11838:	00e78733          	add	a4,a5,a4
   1183c:	02e83423          	sd	a4,40(a6)
   11840:	02e83023          	sd	a4,32(a6)
   11844:	0015e693          	ori	a3,a1,1
   11848:	00c78633          	add	a2,a5,a2
   1184c:	01c73c23          	sd	t3,24(a4)
   11850:	01c73823          	sd	t3,16(a4)
   11854:	00d73423          	sd	a3,8(a4)
   11858:	00040513          	addi	a0,s0,0
   1185c:	00b63023          	sd	a1,0(a2)
   11860:	00f13423          	sd	a5,8(sp)
   11864:	32c000ef          	jal	ra,11b90 <__malloc_unlock>
   11868:	00813783          	ld	a5,8(sp)
   1186c:	01078513          	addi	a0,a5,16
   11870:	addff06f          	jal	zero,1134c <_malloc_r+0xa4>
   11874:	00375893          	srli	a7,a4,0x3
   11878:	00189693          	slli	a3,a7,0x1
   1187c:	0026869b          	addiw	a3,a3,2
   11880:	00369693          	slli	a3,a3,0x3
   11884:	0008889b          	addiw	a7,a7,0
   11888:	a55ff06f          	jal	zero,112dc <_malloc_r+0x34>
   1188c:	00678333          	add	t1,a5,t1
   11890:	00833703          	ld	a4,8(t1)
   11894:	00040513          	addi	a0,s0,0
   11898:	00f13423          	sd	a5,8(sp)
   1189c:	00176713          	ori	a4,a4,1
   118a0:	00e33423          	sd	a4,8(t1)
   118a4:	2ec000ef          	jal	ra,11b90 <__malloc_unlock>
   118a8:	00813783          	ld	a5,8(sp)
   118ac:	01078513          	addi	a0,a5,16
   118b0:	a9dff06f          	jal	zero,1134c <_malloc_r+0xa4>
   118b4:	00176613          	ori	a2,a4,1
   118b8:	00c7b423          	sd	a2,8(a5)
   118bc:	00e78733          	add	a4,a5,a4
   118c0:	02e83423          	sd	a4,40(a6)
   118c4:	02e83023          	sd	a4,32(a6)
   118c8:	0016e613          	ori	a2,a3,1
   118cc:	00678333          	add	t1,a5,t1
   118d0:	01c73c23          	sd	t3,24(a4)
   118d4:	01c73823          	sd	t3,16(a4)
   118d8:	00c73423          	sd	a2,8(a4)
   118dc:	00040513          	addi	a0,s0,0
   118e0:	00d33023          	sd	a3,0(t1)
   118e4:	00f13423          	sd	a5,8(sp)
   118e8:	2a8000ef          	jal	ra,11b90 <__malloc_unlock>
   118ec:	00813783          	ld	a5,8(sp)
   118f0:	01078513          	addi	a0,a5,16
   118f4:	a59ff06f          	jal	zero,1134c <_malloc_r+0xa4>
   118f8:	00635693          	srli	a3,t1,0x6
   118fc:	00169513          	slli	a0,a3,0x1
   11900:	0725051b          	addiw	a0,a0,114
   11904:	00351513          	slli	a0,a0,0x3
   11908:	0386861b          	addiw	a2,a3,56
   1190c:	e99ff06f          	jal	zero,117a4 <_malloc_r+0x4fc>
   11910:	15078e63          	beq	a5,a6,11a6c <_malloc_r+0x7c4>
   11914:	01083783          	ld	a5,16(a6)
   11918:	0087b683          	ld	a3,8(a5)
   1191c:	ffc6f693          	andi	a3,a3,-4
   11920:	40e68633          	sub	a2,a3,a4
   11924:	00e6e663          	bltu	a3,a4,11930 <_malloc_r+0x688>
   11928:	02062693          	slti	a3,a2,32
   1192c:	dc0684e3          	beq	a3,zero,116f4 <_malloc_r+0x44c>
   11930:	00040513          	addi	a0,s0,0
   11934:	25c000ef          	jal	ra,11b90 <__malloc_unlock>
   11938:	a11ff06f          	jal	zero,11348 <_malloc_r+0xa0>
   1193c:	05c7889b          	addiw	a7,a5,92
   11940:	0018951b          	slliw	a0,a7,0x1
   11944:	05b78e1b          	addiw	t3,a5,91
   11948:	00351513          	slli	a0,a0,0x3
   1194c:	a5dff06f          	jal	zero,113a8 <_malloc_r+0x100>
   11950:	010f3783          	ld	a5,16(t5)
   11954:	fff8889b          	addiw	a7,a7,-1
   11958:	23e79663          	bne	a5,t5,11b84 <_malloc_r+0x8dc>
   1195c:	0038f793          	andi	a5,a7,3
   11960:	ff0f0f13          	addi	t5,t5,-16
   11964:	fe0796e3          	bne	a5,zero,11950 <_malloc_r+0x6a8>
   11968:	00883683          	ld	a3,8(a6)
   1196c:	fff54793          	xori	a5,a0,-1
   11970:	00d7f7b3          	and	a5,a5,a3
   11974:	00f83423          	sd	a5,8(a6)
   11978:	00151513          	slli	a0,a0,0x1
   1197c:	fff50693          	addi	a3,a0,-1
   11980:	baf6f6e3          	bgeu	a3,a5,1152c <_malloc_r+0x284>
   11984:	00f576b3          	and	a3,a0,a5
   11988:	00069a63          	bne	a3,zero,1199c <_malloc_r+0x6f4>
   1198c:	00151513          	slli	a0,a0,0x1
   11990:	00f576b3          	and	a3,a0,a5
   11994:	004f8f9b          	addiw	t6,t6,4
   11998:	fe068ae3          	beq	a3,zero,1198c <_malloc_r+0x6e4>
   1199c:	000f8893          	addi	a7,t6,0
   119a0:	b09ff06f          	jal	zero,114a8 <_malloc_r+0x200>
   119a4:	02058593          	addi	a1,a1,32
   119a8:	bc9ff06f          	jal	zero,11570 <_malloc_r+0x2c8>
   119ac:	4026561b          	sraiw	a2,a2,0x2
   119b0:	00100313          	addi	t1,zero,1
   119b4:	00c31633          	sll	a2,t1,a2
   119b8:	00c5e5b3          	or	a1,a1,a2
   119bc:	00b83423          	sd	a1,8(a6)
   119c0:	e11ff06f          	jal	zero,117d0 <_malloc_r+0x528>
   119c4:	00b30633          	add	a2,t1,a1
   119c8:	40c005b3          	sub	a1,zero,a2
   119cc:	03459593          	slli	a1,a1,0x34
   119d0:	0345d593          	srli	a1,a1,0x34
   119d4:	00040513          	addi	a0,s0,0
   119d8:	03c13c23          	sd	t3,56(sp)
   119dc:	03013823          	sd	a6,48(sp)
   119e0:	02f13423          	sd	a5,40(sp)
   119e4:	02e13023          	sd	a4,32(sp)
   119e8:	01113c23          	sd	a7,24(sp)
   119ec:	00613823          	sd	t1,16(sp)
   119f0:	00c13423          	sd	a2,8(sp)
   119f4:	04b13023          	sd	a1,64(sp)
   119f8:	600000ef          	jal	ra,11ff8 <_sbrk_r>
   119fc:	00050693          	addi	a3,a0,0
   11a00:	fff00513          	addi	a0,zero,-1
   11a04:	01013303          	ld	t1,16(sp)
   11a08:	01813883          	ld	a7,24(sp)
   11a0c:	02013703          	ld	a4,32(sp)
   11a10:	02813783          	ld	a5,40(sp)
   11a14:	03013803          	ld	a6,48(sp)
   11a18:	03813e03          	ld	t3,56(sp)
   11a1c:	0ea68463          	beq	a3,a0,11b04 <_malloc_r+0x85c>
   11a20:	04013583          	ld	a1,64(sp)
   11a24:	0005851b          	addiw	a0,a1,0
   11a28:	c49ff06f          	jal	zero,11670 <_malloc_r+0x3c8>
   11a2c:	05400613          	addi	a2,zero,84
   11a30:	08d66063          	bltu	a2,a3,11ab0 <_malloc_r+0x808>
   11a34:	00c35693          	srli	a3,t1,0xc
   11a38:	00169513          	slli	a0,a3,0x1
   11a3c:	0de5051b          	addiw	a0,a0,222
   11a40:	00351513          	slli	a0,a0,0x3
   11a44:	06e6861b          	addiw	a2,a3,110
   11a48:	d5dff06f          	jal	zero,117a4 <_malloc_r+0x4fc>
   11a4c:	15400693          	addi	a3,zero,340
   11a50:	08f6e063          	bltu	a3,a5,11ad0 <_malloc_r+0x828>
   11a54:	00f75793          	srli	a5,a4,0xf
   11a58:	0787889b          	addiw	a7,a5,120
   11a5c:	0018951b          	slliw	a0,a7,0x1
   11a60:	07778e1b          	addiw	t3,a5,119
   11a64:	00351513          	slli	a0,a0,0x3
   11a68:	941ff06f          	jal	zero,113a8 <_malloc_r+0x100>
   11a6c:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11a70:	000e2503          	lw	a0,0(t3)
   11a74:	00b5053b          	addw	a0,a0,a1
   11a78:	00ae2023          	sw	a0,0(t3)
   11a7c:	b51ff06f          	jal	zero,115cc <_malloc_r+0x324>
   11a80:	03431f13          	slli	t5,t1,0x34
   11a84:	b40f14e3          	bne	t5,zero,115cc <_malloc_r+0x324>
   11a88:	01083303          	ld	t1,16(a6)
   11a8c:	00b885b3          	add	a1,a7,a1
   11a90:	0015e693          	ori	a3,a1,1
   11a94:	00d33423          	sd	a3,8(t1)
   11a98:	c35ff06f          	jal	zero,116cc <_malloc_r+0x424>
   11a9c:	1861b823          	sd	t1,400(gp) # 139a8 <__malloc_sbrk_base>
   11aa0:	b45ff06f          	jal	zero,115e4 <_malloc_r+0x33c>
   11aa4:	00100793          	addi	a5,zero,1
   11aa8:	00f33423          	sd	a5,8(t1)
   11aac:	e85ff06f          	jal	zero,11930 <_malloc_r+0x688>
   11ab0:	15400613          	addi	a2,zero,340
   11ab4:	08d66a63          	bltu	a2,a3,11b48 <_malloc_r+0x8a0>
   11ab8:	00f35693          	srli	a3,t1,0xf
   11abc:	00169513          	slli	a0,a3,0x1
   11ac0:	0f05051b          	addiw	a0,a0,240
   11ac4:	00351513          	slli	a0,a0,0x3
   11ac8:	0776861b          	addiw	a2,a3,119
   11acc:	cd9ff06f          	jal	zero,117a4 <_malloc_r+0x4fc>
   11ad0:	55400693          	addi	a3,zero,1364
   11ad4:	08f6ea63          	bltu	a3,a5,11b68 <_malloc_r+0x8c0>
   11ad8:	01275793          	srli	a5,a4,0x12
   11adc:	07d7889b          	addiw	a7,a5,125
   11ae0:	0018951b          	slliw	a0,a7,0x1
   11ae4:	07c78e1b          	addiw	t3,a5,124
   11ae8:	00351513          	slli	a0,a0,0x3
   11aec:	8bdff06f          	jal	zero,113a8 <_malloc_r+0x100>
   11af0:	ff0e8e93          	addi	t4,t4,-16
   11af4:	01d606b3          	add	a3,a2,t4
   11af8:	00000513          	addi	a0,zero,0
   11afc:	00000593          	addi	a1,zero,0
   11b00:	b71ff06f          	jal	zero,11670 <_malloc_r+0x3c8>
   11b04:	00813683          	ld	a3,8(sp)
   11b08:	00000593          	addi	a1,zero,0
   11b0c:	00000513          	addi	a0,zero,0
   11b10:	b61ff06f          	jal	zero,11670 <_malloc_r+0x3c8>
   11b14:	01078593          	addi	a1,a5,16
   11b18:	00040513          	addi	a0,s0,0
   11b1c:	01c13c23          	sd	t3,24(sp)
   11b20:	01013823          	sd	a6,16(sp)
   11b24:	00e13423          	sd	a4,8(sp)
   11b28:	c7cff0ef          	jal	ra,10fa4 <_free_r>
   11b2c:	01013803          	ld	a6,16(sp)
   11b30:	01813e03          	ld	t3,24(sp)
   11b34:	00813703          	ld	a4,8(sp)
   11b38:	01083303          	ld	t1,16(a6)
   11b3c:	000e2603          	lw	a2,0(t3)
   11b40:	00833683          	ld	a3,8(t1)
   11b44:	b89ff06f          	jal	zero,116cc <_malloc_r+0x424>
   11b48:	55400613          	addi	a2,zero,1364
   11b4c:	02d66663          	bltu	a2,a3,11b78 <_malloc_r+0x8d0>
   11b50:	01235693          	srli	a3,t1,0x12
   11b54:	00169513          	slli	a0,a3,0x1
   11b58:	0fa5051b          	addiw	a0,a0,250
   11b5c:	00351513          	slli	a0,a0,0x3
   11b60:	07c6861b          	addiw	a2,a3,124
   11b64:	c41ff06f          	jal	zero,117a4 <_malloc_r+0x4fc>
   11b68:	7f000513          	addi	a0,zero,2032
   11b6c:	07f00893          	addi	a7,zero,127
   11b70:	07e00e13          	addi	t3,zero,126
   11b74:	835ff06f          	jal	zero,113a8 <_malloc_r+0x100>
   11b78:	7f000513          	addi	a0,zero,2032
   11b7c:	07e00613          	addi	a2,zero,126
   11b80:	c25ff06f          	jal	zero,117a4 <_malloc_r+0x4fc>
   11b84:	00883783          	ld	a5,8(a6)
   11b88:	df1ff06f          	jal	zero,11978 <_malloc_r+0x6d0>

0000000000011b8c <__malloc_lock>:
   11b8c:	00008067          	jalr	zero,0(ra)

0000000000011b90 <__malloc_unlock>:
   11b90:	00008067          	jalr	zero,0(ra)

0000000000011b94 <_fclose_r>:
   11b94:	fe010113          	addi	sp,sp,-32
   11b98:	00113c23          	sd	ra,24(sp)
   11b9c:	01213023          	sd	s2,0(sp)
   11ba0:	02058863          	beq	a1,zero,11bd0 <_fclose_r+0x3c>
   11ba4:	00813823          	sd	s0,16(sp)
   11ba8:	00913423          	sd	s1,8(sp)
   11bac:	00058413          	addi	s0,a1,0
   11bb0:	00050493          	addi	s1,a0,0
   11bb4:	00050663          	beq	a0,zero,11bc0 <_fclose_r+0x2c>
   11bb8:	04853783          	ld	a5,72(a0)
   11bbc:	0c078c63          	beq	a5,zero,11c94 <_fclose_r+0x100>
   11bc0:	01041783          	lh	a5,16(s0)
   11bc4:	02079263          	bne	a5,zero,11be8 <_fclose_r+0x54>
   11bc8:	01013403          	ld	s0,16(sp)
   11bcc:	00813483          	ld	s1,8(sp)
   11bd0:	01813083          	ld	ra,24(sp)
   11bd4:	00000913          	addi	s2,zero,0
   11bd8:	00090513          	addi	a0,s2,0
   11bdc:	00013903          	ld	s2,0(sp)
   11be0:	02010113          	addi	sp,sp,32
   11be4:	00008067          	jalr	zero,0(ra)
   11be8:	00040593          	addi	a1,s0,0
   11bec:	00048513          	addi	a0,s1,0
   11bf0:	0b8000ef          	jal	ra,11ca8 <__sflush_r>
   11bf4:	05043783          	ld	a5,80(s0)
   11bf8:	00050913          	addi	s2,a0,0
   11bfc:	00078a63          	beq	a5,zero,11c10 <_fclose_r+0x7c>
   11c00:	03043583          	ld	a1,48(s0)
   11c04:	00048513          	addi	a0,s1,0
   11c08:	000780e7          	jalr	ra,0(a5)
   11c0c:	06054463          	blt	a0,zero,11c74 <_fclose_r+0xe0>
   11c10:	01045783          	lhu	a5,16(s0)
   11c14:	0807f793          	andi	a5,a5,128
   11c18:	06079663          	bne	a5,zero,11c84 <_fclose_r+0xf0>
   11c1c:	05843583          	ld	a1,88(s0)
   11c20:	00058c63          	beq	a1,zero,11c38 <_fclose_r+0xa4>
   11c24:	07440793          	addi	a5,s0,116
   11c28:	00f58663          	beq	a1,a5,11c34 <_fclose_r+0xa0>
   11c2c:	00048513          	addi	a0,s1,0
   11c30:	b74ff0ef          	jal	ra,10fa4 <_free_r>
   11c34:	04043c23          	sd	zero,88(s0)
   11c38:	07843583          	ld	a1,120(s0)
   11c3c:	00058863          	beq	a1,zero,11c4c <_fclose_r+0xb8>
   11c40:	00048513          	addi	a0,s1,0
   11c44:	b60ff0ef          	jal	ra,10fa4 <_free_r>
   11c48:	06043c23          	sd	zero,120(s0)
   11c4c:	9b5fe0ef          	jal	ra,10600 <__sfp_lock_acquire>
   11c50:	00041823          	sh	zero,16(s0)
   11c54:	9b1fe0ef          	jal	ra,10604 <__sfp_lock_release>
   11c58:	01813083          	ld	ra,24(sp)
   11c5c:	01013403          	ld	s0,16(sp)
   11c60:	00813483          	ld	s1,8(sp)
   11c64:	00090513          	addi	a0,s2,0
   11c68:	00013903          	ld	s2,0(sp)
   11c6c:	02010113          	addi	sp,sp,32
   11c70:	00008067          	jalr	zero,0(ra)
   11c74:	01045783          	lhu	a5,16(s0)
   11c78:	fff00913          	addi	s2,zero,-1
   11c7c:	0807f793          	andi	a5,a5,128
   11c80:	f8078ee3          	beq	a5,zero,11c1c <_fclose_r+0x88>
   11c84:	01843583          	ld	a1,24(s0)
   11c88:	00048513          	addi	a0,s1,0
   11c8c:	b18ff0ef          	jal	ra,10fa4 <_free_r>
   11c90:	f8dff06f          	jal	zero,11c1c <_fclose_r+0x88>
   11c94:	949fe0ef          	jal	ra,105dc <__sinit>
   11c98:	f29ff06f          	jal	zero,11bc0 <_fclose_r+0x2c>

0000000000011c9c <fclose>:
   11c9c:	00050593          	addi	a1,a0,0
   11ca0:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11ca4:	ef1ff06f          	jal	zero,11b94 <_fclose_r>

0000000000011ca8 <__sflush_r>:
   11ca8:	01059703          	lh	a4,16(a1)
   11cac:	fd010113          	addi	sp,sp,-48
   11cb0:	02813023          	sd	s0,32(sp)
   11cb4:	01313423          	sd	s3,8(sp)
   11cb8:	02113423          	sd	ra,40(sp)
   11cbc:	00877793          	andi	a5,a4,8
   11cc0:	00058413          	addi	s0,a1,0
   11cc4:	00050993          	addi	s3,a0,0
   11cc8:	12079263          	bne	a5,zero,11dec <__sflush_r+0x144>
   11ccc:	000017b7          	lui	a5,0x1
   11cd0:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   11cd4:	0085a683          	lw	a3,8(a1)
   11cd8:	00f767b3          	or	a5,a4,a5
   11cdc:	00f59823          	sh	a5,16(a1)
   11ce0:	18d05c63          	bge	zero,a3,11e78 <__sflush_r+0x1d0>
   11ce4:	04843803          	ld	a6,72(s0)
   11ce8:	0e080663          	beq	a6,zero,11dd4 <__sflush_r+0x12c>
   11cec:	00913c23          	sd	s1,24(sp)
   11cf0:	03371693          	slli	a3,a4,0x33
   11cf4:	0009a483          	lw	s1,0(s3)
   11cf8:	0009a023          	sw	zero,0(s3)
   11cfc:	1806ca63          	blt	a3,zero,11e90 <__sflush_r+0x1e8>
   11d00:	03043583          	ld	a1,48(s0)
   11d04:	00000613          	addi	a2,zero,0
   11d08:	00100693          	addi	a3,zero,1
   11d0c:	00098513          	addi	a0,s3,0
   11d10:	000800e7          	jalr	ra,0(a6)
   11d14:	fff00793          	addi	a5,zero,-1
   11d18:	00050613          	addi	a2,a0,0
   11d1c:	1af50c63          	beq	a0,a5,11ed4 <__sflush_r+0x22c>
   11d20:	01041783          	lh	a5,16(s0)
   11d24:	04843803          	ld	a6,72(s0)
   11d28:	0047f793          	andi	a5,a5,4
   11d2c:	00078e63          	beq	a5,zero,11d48 <__sflush_r+0xa0>
   11d30:	00842703          	lw	a4,8(s0)
   11d34:	05843783          	ld	a5,88(s0)
   11d38:	40e60633          	sub	a2,a2,a4
   11d3c:	00078663          	beq	a5,zero,11d48 <__sflush_r+0xa0>
   11d40:	07042783          	lw	a5,112(s0)
   11d44:	40f60633          	sub	a2,a2,a5
   11d48:	03043583          	ld	a1,48(s0)
   11d4c:	00000693          	addi	a3,zero,0
   11d50:	00098513          	addi	a0,s3,0
   11d54:	000800e7          	jalr	ra,0(a6)
   11d58:	fff00713          	addi	a4,zero,-1
   11d5c:	01041783          	lh	a5,16(s0)
   11d60:	12e51c63          	bne	a0,a4,11e98 <__sflush_r+0x1f0>
   11d64:	0009a683          	lw	a3,0(s3)
   11d68:	01d00713          	addi	a4,zero,29
   11d6c:	18d76263          	bltu	a4,a3,11ef0 <__sflush_r+0x248>
   11d70:	20400737          	lui	a4,0x20400
   11d74:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec089>
   11d78:	00d75733          	srl	a4,a4,a3
   11d7c:	00177713          	andi	a4,a4,1
   11d80:	16070863          	beq	a4,zero,11ef0 <__sflush_r+0x248>
   11d84:	01843683          	ld	a3,24(s0)
   11d88:	fffff737          	lui	a4,0xfffff
   11d8c:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11d90:	00e7f733          	and	a4,a5,a4
   11d94:	00e41823          	sh	a4,16(s0)
   11d98:	00042423          	sw	zero,8(s0)
   11d9c:	00d43023          	sd	a3,0(s0)
   11da0:	03379713          	slli	a4,a5,0x33
   11da4:	00075663          	bge	a4,zero,11db0 <__sflush_r+0x108>
   11da8:	0009a783          	lw	a5,0(s3)
   11dac:	10078863          	beq	a5,zero,11ebc <__sflush_r+0x214>
   11db0:	05843583          	ld	a1,88(s0)
   11db4:	0099a023          	sw	s1,0(s3)
   11db8:	10058a63          	beq	a1,zero,11ecc <__sflush_r+0x224>
   11dbc:	07440793          	addi	a5,s0,116
   11dc0:	00f58663          	beq	a1,a5,11dcc <__sflush_r+0x124>
   11dc4:	00098513          	addi	a0,s3,0
   11dc8:	9dcff0ef          	jal	ra,10fa4 <_free_r>
   11dcc:	01813483          	ld	s1,24(sp)
   11dd0:	04043c23          	sd	zero,88(s0)
   11dd4:	02813083          	ld	ra,40(sp)
   11dd8:	02013403          	ld	s0,32(sp)
   11ddc:	00813983          	ld	s3,8(sp)
   11de0:	00000513          	addi	a0,zero,0
   11de4:	03010113          	addi	sp,sp,48
   11de8:	00008067          	jalr	zero,0(ra)
   11dec:	01213823          	sd	s2,16(sp)
   11df0:	0185b903          	ld	s2,24(a1)
   11df4:	08090a63          	beq	s2,zero,11e88 <__sflush_r+0x1e0>
   11df8:	00913c23          	sd	s1,24(sp)
   11dfc:	0005b483          	ld	s1,0(a1)
   11e00:	00377713          	andi	a4,a4,3
   11e04:	0125b023          	sd	s2,0(a1)
   11e08:	412484bb          	subw	s1,s1,s2
   11e0c:	00000793          	addi	a5,zero,0
   11e10:	00071463          	bne	a4,zero,11e18 <__sflush_r+0x170>
   11e14:	0205a783          	lw	a5,32(a1)
   11e18:	00f42623          	sw	a5,12(s0)
   11e1c:	00904863          	blt	zero,s1,11e2c <__sflush_r+0x184>
   11e20:	0640006f          	jal	zero,11e84 <__sflush_r+0x1dc>
   11e24:	00a90933          	add	s2,s2,a0
   11e28:	04905e63          	bge	zero,s1,11e84 <__sflush_r+0x1dc>
   11e2c:	04043783          	ld	a5,64(s0)
   11e30:	03043583          	ld	a1,48(s0)
   11e34:	00048693          	addi	a3,s1,0
   11e38:	00090613          	addi	a2,s2,0
   11e3c:	00098513          	addi	a0,s3,0
   11e40:	000780e7          	jalr	ra,0(a5)
   11e44:	40a484bb          	subw	s1,s1,a0
   11e48:	fca04ee3          	blt	zero,a0,11e24 <__sflush_r+0x17c>
   11e4c:	01045783          	lhu	a5,16(s0)
   11e50:	01013903          	ld	s2,16(sp)
   11e54:	0407e793          	ori	a5,a5,64
   11e58:	02813083          	ld	ra,40(sp)
   11e5c:	00f41823          	sh	a5,16(s0)
   11e60:	02013403          	ld	s0,32(sp)
   11e64:	01813483          	ld	s1,24(sp)
   11e68:	00813983          	ld	s3,8(sp)
   11e6c:	fff00513          	addi	a0,zero,-1
   11e70:	03010113          	addi	sp,sp,48
   11e74:	00008067          	jalr	zero,0(ra)
   11e78:	0705a683          	lw	a3,112(a1)
   11e7c:	e6d044e3          	blt	zero,a3,11ce4 <__sflush_r+0x3c>
   11e80:	f55ff06f          	jal	zero,11dd4 <__sflush_r+0x12c>
   11e84:	01813483          	ld	s1,24(sp)
   11e88:	01013903          	ld	s2,16(sp)
   11e8c:	f49ff06f          	jal	zero,11dd4 <__sflush_r+0x12c>
   11e90:	09043603          	ld	a2,144(s0)
   11e94:	e95ff06f          	jal	zero,11d28 <__sflush_r+0x80>
   11e98:	01843683          	ld	a3,24(s0)
   11e9c:	fffff737          	lui	a4,0xfffff
   11ea0:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11ea4:	00e7f733          	and	a4,a5,a4
   11ea8:	00e41823          	sh	a4,16(s0)
   11eac:	00042423          	sw	zero,8(s0)
   11eb0:	00d43023          	sd	a3,0(s0)
   11eb4:	03379713          	slli	a4,a5,0x33
   11eb8:	ee075ce3          	bge	a4,zero,11db0 <__sflush_r+0x108>
   11ebc:	05843583          	ld	a1,88(s0)
   11ec0:	08a43823          	sd	a0,144(s0)
   11ec4:	0099a023          	sw	s1,0(s3)
   11ec8:	ee059ae3          	bne	a1,zero,11dbc <__sflush_r+0x114>
   11ecc:	01813483          	ld	s1,24(sp)
   11ed0:	f05ff06f          	jal	zero,11dd4 <__sflush_r+0x12c>
   11ed4:	0009a783          	lw	a5,0(s3)
   11ed8:	e40784e3          	beq	a5,zero,11d20 <__sflush_r+0x78>
   11edc:	fe378713          	addi	a4,a5,-29
   11ee0:	00070c63          	beq	a4,zero,11ef8 <__sflush_r+0x250>
   11ee4:	fea78793          	addi	a5,a5,-22
   11ee8:	00078863          	beq	a5,zero,11ef8 <__sflush_r+0x250>
   11eec:	01045783          	lhu	a5,16(s0)
   11ef0:	0407e793          	ori	a5,a5,64
   11ef4:	f65ff06f          	jal	zero,11e58 <__sflush_r+0x1b0>
   11ef8:	0099a023          	sw	s1,0(s3)
   11efc:	01813483          	ld	s1,24(sp)
   11f00:	ed5ff06f          	jal	zero,11dd4 <__sflush_r+0x12c>

0000000000011f04 <_fflush_r>:
   11f04:	00050793          	addi	a5,a0,0
   11f08:	00050663          	beq	a0,zero,11f14 <_fflush_r+0x10>
   11f0c:	04853703          	ld	a4,72(a0)
   11f10:	00070e63          	beq	a4,zero,11f2c <_fflush_r+0x28>
   11f14:	01059703          	lh	a4,16(a1)
   11f18:	00071663          	bne	a4,zero,11f24 <_fflush_r+0x20>
   11f1c:	00000513          	addi	a0,zero,0
   11f20:	00008067          	jalr	zero,0(ra)
   11f24:	00078513          	addi	a0,a5,0
   11f28:	d81ff06f          	jal	zero,11ca8 <__sflush_r>
   11f2c:	fe010113          	addi	sp,sp,-32
   11f30:	00b13423          	sd	a1,8(sp)
   11f34:	00113c23          	sd	ra,24(sp)
   11f38:	00a13023          	sd	a0,0(sp)
   11f3c:	ea0fe0ef          	jal	ra,105dc <__sinit>
   11f40:	00813583          	ld	a1,8(sp)
   11f44:	00013783          	ld	a5,0(sp)
   11f48:	01059703          	lh	a4,16(a1)
   11f4c:	00070a63          	beq	a4,zero,11f60 <_fflush_r+0x5c>
   11f50:	01813083          	ld	ra,24(sp)
   11f54:	00078513          	addi	a0,a5,0
   11f58:	02010113          	addi	sp,sp,32
   11f5c:	d4dff06f          	jal	zero,11ca8 <__sflush_r>
   11f60:	01813083          	ld	ra,24(sp)
   11f64:	00000513          	addi	a0,zero,0
   11f68:	02010113          	addi	sp,sp,32
   11f6c:	00008067          	jalr	zero,0(ra)

0000000000011f70 <fflush>:
   11f70:	06050063          	beq	a0,zero,11fd0 <fflush+0x60>
   11f74:	00050593          	addi	a1,a0,0
   11f78:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11f7c:	00050663          	beq	a0,zero,11f88 <fflush+0x18>
   11f80:	04853783          	ld	a5,72(a0)
   11f84:	00078c63          	beq	a5,zero,11f9c <fflush+0x2c>
   11f88:	01059783          	lh	a5,16(a1)
   11f8c:	00079663          	bne	a5,zero,11f98 <fflush+0x28>
   11f90:	00000513          	addi	a0,zero,0
   11f94:	00008067          	jalr	zero,0(ra)
   11f98:	d11ff06f          	jal	zero,11ca8 <__sflush_r>
   11f9c:	fe010113          	addi	sp,sp,-32
   11fa0:	00b13423          	sd	a1,8(sp)
   11fa4:	00a13023          	sd	a0,0(sp)
   11fa8:	00113c23          	sd	ra,24(sp)
   11fac:	e30fe0ef          	jal	ra,105dc <__sinit>
   11fb0:	00813583          	ld	a1,8(sp)
   11fb4:	00013503          	ld	a0,0(sp)
   11fb8:	01059783          	lh	a5,16(a1)
   11fbc:	02079863          	bne	a5,zero,11fec <fflush+0x7c>
   11fc0:	01813083          	ld	ra,24(sp)
   11fc4:	00000513          	addi	a0,zero,0
   11fc8:	02010113          	addi	sp,sp,32
   11fcc:	00008067          	jalr	zero,0(ra)
   11fd0:	00013637          	lui	a2,0x13
   11fd4:	000125b7          	lui	a1,0x12
   11fd8:	00013537          	lui	a0,0x13
   11fdc:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   11fe0:	f0458593          	addi	a1,a1,-252 # 11f04 <_fflush_r>
   11fe4:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   11fe8:	e50fe06f          	jal	zero,10638 <_fwalk_sglue>
   11fec:	01813083          	ld	ra,24(sp)
   11ff0:	02010113          	addi	sp,sp,32
   11ff4:	cb5ff06f          	jal	zero,11ca8 <__sflush_r>

0000000000011ff8 <_sbrk_r>:
   11ff8:	fe010113          	addi	sp,sp,-32
   11ffc:	00813823          	sd	s0,16(sp)
   12000:	00913423          	sd	s1,8(sp)
   12004:	00050493          	addi	s1,a0,0
   12008:	00058513          	addi	a0,a1,0
   1200c:	00113c23          	sd	ra,24(sp)
   12010:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   12014:	228000ef          	jal	ra,1223c <_sbrk>
   12018:	fff00793          	addi	a5,zero,-1
   1201c:	00f50c63          	beq	a0,a5,12034 <_sbrk_r+0x3c>
   12020:	01813083          	ld	ra,24(sp)
   12024:	01013403          	ld	s0,16(sp)
   12028:	00813483          	ld	s1,8(sp)
   1202c:	02010113          	addi	sp,sp,32
   12030:	00008067          	jalr	zero,0(ra)
   12034:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   12038:	fe0784e3          	beq	a5,zero,12020 <_sbrk_r+0x28>
   1203c:	01813083          	ld	ra,24(sp)
   12040:	01013403          	ld	s0,16(sp)
   12044:	00f4a023          	sw	a5,0(s1)
   12048:	00813483          	ld	s1,8(sp)
   1204c:	02010113          	addi	sp,sp,32
   12050:	00008067          	jalr	zero,0(ra)

0000000000012054 <__libc_fini_array>:
   12054:	fe010113          	addi	sp,sp,-32
   12058:	00813823          	sd	s0,16(sp)
   1205c:	000137b7          	lui	a5,0x13
   12060:	00013437          	lui	s0,0x13
   12064:	01878793          	addi	a5,a5,24 # 13018 <__sglue>
   12068:	01040413          	addi	s0,s0,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   1206c:	408787b3          	sub	a5,a5,s0
   12070:	00913423          	sd	s1,8(sp)
   12074:	00113c23          	sd	ra,24(sp)
   12078:	4037d493          	srai	s1,a5,0x3
   1207c:	02048063          	beq	s1,zero,1209c <__libc_fini_array+0x48>
   12080:	ff840413          	addi	s0,s0,-8
   12084:	00f40433          	add	s0,s0,a5
   12088:	00043783          	ld	a5,0(s0)
   1208c:	fff48493          	addi	s1,s1,-1
   12090:	ff840413          	addi	s0,s0,-8
   12094:	000780e7          	jalr	ra,0(a5)
   12098:	fe0498e3          	bne	s1,zero,12088 <__libc_fini_array+0x34>
   1209c:	01813083          	ld	ra,24(sp)
   120a0:	01013403          	ld	s0,16(sp)
   120a4:	00813483          	ld	s1,8(sp)
   120a8:	02010113          	addi	sp,sp,32
   120ac:	00008067          	jalr	zero,0(ra)

00000000000120b0 <__register_exitproc>:
   120b0:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   120b4:	04078e63          	beq	a5,zero,12110 <__register_exitproc+0x60>
   120b8:	0087a703          	lw	a4,8(a5)
   120bc:	01f00813          	addi	a6,zero,31
   120c0:	08e84263          	blt	a6,a4,12144 <__register_exitproc+0x94>
   120c4:	02050863          	beq	a0,zero,120f4 <__register_exitproc+0x44>
   120c8:	00371813          	slli	a6,a4,0x3
   120cc:	01078833          	add	a6,a5,a6
   120d0:	10c83823          	sd	a2,272(a6)
   120d4:	3107a883          	lw	a7,784(a5)
   120d8:	00100613          	addi	a2,zero,1
   120dc:	00e6163b          	sllw	a2,a2,a4
   120e0:	00c8e8b3          	or	a7,a7,a2
   120e4:	3117a823          	sw	a7,784(a5)
   120e8:	20d83823          	sd	a3,528(a6)
   120ec:	00200693          	addi	a3,zero,2
   120f0:	02d50663          	beq	a0,a3,1211c <__register_exitproc+0x6c>
   120f4:	0017069b          	addiw	a3,a4,1
   120f8:	00371713          	slli	a4,a4,0x3
   120fc:	00d7a423          	sw	a3,8(a5)
   12100:	00e787b3          	add	a5,a5,a4
   12104:	00b7b823          	sd	a1,16(a5)
   12108:	00000513          	addi	a0,zero,0
   1210c:	00008067          	jalr	zero,0(ra)
   12110:	44818793          	addi	a5,gp,1096 # 13c60 <__atexit0>
   12114:	1af1b823          	sd	a5,432(gp) # 139c8 <__atexit>
   12118:	fa1ff06f          	jal	zero,120b8 <__register_exitproc+0x8>
   1211c:	3147a683          	lw	a3,788(a5)
   12120:	00000513          	addi	a0,zero,0
   12124:	00d66633          	or	a2,a2,a3
   12128:	0017069b          	addiw	a3,a4,1
   1212c:	00371713          	slli	a4,a4,0x3
   12130:	30c7aa23          	sw	a2,788(a5)
   12134:	00d7a423          	sw	a3,8(a5)
   12138:	00e787b3          	add	a5,a5,a4
   1213c:	00b7b823          	sd	a1,16(a5)
   12140:	00008067          	jalr	zero,0(ra)
   12144:	fff00513          	addi	a0,zero,-1
   12148:	00008067          	jalr	zero,0(ra)

000000000001214c <_close>:
   1214c:	03900893          	addi	a7,zero,57
   12150:	00000073          	ecall
   12154:	00054663          	blt	a0,zero,12160 <_close+0x14>
   12158:	0005051b          	addiw	a0,a0,0
   1215c:	00008067          	jalr	zero,0(ra)
   12160:	fe010113          	addi	sp,sp,-32
   12164:	00113c23          	sd	ra,24(sp)
   12168:	00a13423          	sd	a0,8(sp)
   1216c:	188000ef          	jal	ra,122f4 <__errno>
   12170:	00813783          	ld	a5,8(sp)
   12174:	01813083          	ld	ra,24(sp)
   12178:	40f007bb          	subw	a5,zero,a5
   1217c:	00f52023          	sw	a5,0(a0)
   12180:	fff00513          	addi	a0,zero,-1
   12184:	02010113          	addi	sp,sp,32
   12188:	00008067          	jalr	zero,0(ra)

000000000001218c <_exit>:
   1218c:	05d00893          	addi	a7,zero,93
   12190:	00000073          	ecall
   12194:	00054463          	blt	a0,zero,1219c <_exit+0x10>
   12198:	0000006f          	jal	zero,12198 <_exit+0xc>
   1219c:	fe010113          	addi	sp,sp,-32
   121a0:	00113c23          	sd	ra,24(sp)
   121a4:	00a13423          	sd	a0,8(sp)
   121a8:	14c000ef          	jal	ra,122f4 <__errno>
   121ac:	00813783          	ld	a5,8(sp)
   121b0:	40f007bb          	subw	a5,zero,a5
   121b4:	00f52023          	sw	a5,0(a0)
   121b8:	0000006f          	jal	zero,121b8 <_exit+0x2c>

00000000000121bc <_lseek>:
   121bc:	03e00893          	addi	a7,zero,62
   121c0:	00000073          	ecall
   121c4:	00054463          	blt	a0,zero,121cc <_lseek+0x10>
   121c8:	00008067          	jalr	zero,0(ra)
   121cc:	fe010113          	addi	sp,sp,-32
   121d0:	00113c23          	sd	ra,24(sp)
   121d4:	00a13423          	sd	a0,8(sp)
   121d8:	11c000ef          	jal	ra,122f4 <__errno>
   121dc:	00813783          	ld	a5,8(sp)
   121e0:	01813083          	ld	ra,24(sp)
   121e4:	40f007bb          	subw	a5,zero,a5
   121e8:	00f52023          	sw	a5,0(a0)
   121ec:	fff00793          	addi	a5,zero,-1
   121f0:	00078513          	addi	a0,a5,0
   121f4:	02010113          	addi	sp,sp,32
   121f8:	00008067          	jalr	zero,0(ra)

00000000000121fc <_read>:
   121fc:	03f00893          	addi	a7,zero,63
   12200:	00000073          	ecall
   12204:	00054463          	blt	a0,zero,1220c <_read+0x10>
   12208:	00008067          	jalr	zero,0(ra)
   1220c:	fe010113          	addi	sp,sp,-32
   12210:	00113c23          	sd	ra,24(sp)
   12214:	00a13423          	sd	a0,8(sp)
   12218:	0dc000ef          	jal	ra,122f4 <__errno>
   1221c:	00813783          	ld	a5,8(sp)
   12220:	01813083          	ld	ra,24(sp)
   12224:	40f007bb          	subw	a5,zero,a5
   12228:	00f52023          	sw	a5,0(a0)
   1222c:	fff00793          	addi	a5,zero,-1
   12230:	00078513          	addi	a0,a5,0
   12234:	02010113          	addi	sp,sp,32
   12238:	00008067          	jalr	zero,0(ra)

000000000001223c <_sbrk>:
   1223c:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   12240:	ff010113          	addi	sp,sp,-16
   12244:	00113423          	sd	ra,8(sp)
   12248:	00050713          	addi	a4,a0,0
   1224c:	02079063          	bne	a5,zero,1226c <_sbrk+0x30>
   12250:	0d600893          	addi	a7,zero,214
   12254:	00000513          	addi	a0,zero,0
   12258:	00000073          	ecall
   1225c:	fff00793          	addi	a5,zero,-1
   12260:	02f50c63          	beq	a0,a5,12298 <_sbrk+0x5c>
   12264:	00050793          	addi	a5,a0,0
   12268:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   1226c:	00f70533          	add	a0,a4,a5
   12270:	0d600893          	addi	a7,zero,214
   12274:	00000073          	ecall
   12278:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   1227c:	00f70733          	add	a4,a4,a5
   12280:	00e51c63          	bne	a0,a4,12298 <_sbrk+0x5c>
   12284:	00813083          	ld	ra,8(sp)
   12288:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   1228c:	00078513          	addi	a0,a5,0
   12290:	01010113          	addi	sp,sp,16
   12294:	00008067          	jalr	zero,0(ra)
   12298:	05c000ef          	jal	ra,122f4 <__errno>
   1229c:	00813083          	ld	ra,8(sp)
   122a0:	00c00793          	addi	a5,zero,12
   122a4:	00f52023          	sw	a5,0(a0)
   122a8:	fff00513          	addi	a0,zero,-1
   122ac:	01010113          	addi	sp,sp,16
   122b0:	00008067          	jalr	zero,0(ra)

00000000000122b4 <_write>:
   122b4:	04000893          	addi	a7,zero,64
   122b8:	00000073          	ecall
   122bc:	00054463          	blt	a0,zero,122c4 <_write+0x10>
   122c0:	00008067          	jalr	zero,0(ra)
   122c4:	fe010113          	addi	sp,sp,-32
   122c8:	00113c23          	sd	ra,24(sp)
   122cc:	00a13423          	sd	a0,8(sp)
   122d0:	024000ef          	jal	ra,122f4 <__errno>
   122d4:	00813783          	ld	a5,8(sp)
   122d8:	01813083          	ld	ra,24(sp)
   122dc:	40f007bb          	subw	a5,zero,a5
   122e0:	00f52023          	sw	a5,0(a0)
   122e4:	fff00793          	addi	a5,zero,-1
   122e8:	00078513          	addi	a0,a5,0
   122ec:	02010113          	addi	sp,sp,32
   122f0:	00008067          	jalr	zero,0(ra)

00000000000122f4 <__errno>:
   122f4:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   122f8:	00008067          	jalr	zero,0(ra)
