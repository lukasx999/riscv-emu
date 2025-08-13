
bin-c:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	addi	a1,zero,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	addi	s0,a0,0
   10134:	2fd000ef          	jal	ra,10c30 <__call_exitprocs>
   10138:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   1013c:	00078463          	beq	a5,zero,10144 <exit+0x24>
   10140:	000780e7          	jalr	ra,0(a5)
   10144:	00040513          	addi	a0,s0,0
   10148:	6f8020ef          	jal	ra,12840 <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	addi	a5,zero,0
   10150:	00078863          	beq	a5,zero,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	3dc50513          	addi	a0,a0,988 # 123dc <__libc_fini_array>
   1015c:	40d0006f          	jal	zero,10d68 <atexit>
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
   10184:	1d1000ef          	jal	ra,10b54 <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	be050513          	addi	a0,a0,-1056 # 10d68 <atexit>
   10190:	00050863          	beq	a0,zero,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	24850513          	addi	a0,a0,584 # 123dc <__libc_fini_array>
   1019c:	3cd000ef          	jal	ra,10d68 <atexit>
   101a0:	121000ef          	jal	ra,10ac0 <__libc_init_array>
   101a4:	00012503          	lw	a0,0(sp)
   101a8:	00810593          	addi	a1,sp,8
   101ac:	00000613          	addi	a2,zero,0
   101b0:	0b8000ef          	jal	ra,10268 <main>
   101b4:	f6dff06f          	jal	zero,10120 <exit>

00000000000101b8 <__do_global_dtors_aux>:
   101b8:	ff010113          	addi	sp,sp,-16
   101bc:	00813023          	sd	s0,0(sp)
   101c0:	1d81c783          	lbu	a5,472(gp) # 139f0 <completed.1>
   101c4:	00113423          	sd	ra,8(sp)
   101c8:	02079263          	bne	a5,zero,101ec <__do_global_dtors_aux+0x34>
   101cc:	00000793          	addi	a5,zero,0
   101d0:	00078a63          	beq	a5,zero,101e4 <__do_global_dtors_aux+0x2c>
   101d4:	00013537          	lui	a0,0x13
   101d8:	ac850513          	addi	a0,a0,-1336 # 12ac8 <__EH_FRAME_BEGIN__>
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
   10204:	00013537          	lui	a0,0x13
   10208:	1e018593          	addi	a1,gp,480 # 139f8 <object.0>
   1020c:	ac850513          	addi	a0,a0,-1336 # 12ac8 <__EH_FRAME_BEGIN__>
   10210:	00000317          	auipc	t1,0x0
   10214:	00000067          	jalr	zero,0(zero) # 0 <exit-0x10120>
   10218:	00008067          	jalr	zero,0(ra)

000000000001021c <add>:
   1021c:	fe010113          	addi	sp,sp,-32
   10220:	00113c23          	sd	ra,24(sp)
   10224:	00813823          	sd	s0,16(sp)
   10228:	02010413          	addi	s0,sp,32
   1022c:	00050793          	addi	a5,a0,0
   10230:	00058713          	addi	a4,a1,0
   10234:	fef42623          	sw	a5,-20(s0)
   10238:	00070793          	addi	a5,a4,0
   1023c:	fef42423          	sw	a5,-24(s0)
   10240:	fec42783          	lw	a5,-20(s0)
   10244:	00078713          	addi	a4,a5,0
   10248:	fe842783          	lw	a5,-24(s0)
   1024c:	00f707bb          	addw	a5,a4,a5
   10250:	0007879b          	addiw	a5,a5,0
   10254:	00078513          	addi	a0,a5,0
   10258:	01813083          	ld	ra,24(sp)
   1025c:	01013403          	ld	s0,16(sp)
   10260:	02010113          	addi	sp,sp,32
   10264:	00008067          	jalr	zero,0(ra)

0000000000010268 <main>:
   10268:	ff010113          	addi	sp,sp,-16
   1026c:	00113423          	sd	ra,8(sp)
   10270:	00813023          	sd	s0,0(sp)
   10274:	01010413          	addi	s0,sp,16
   10278:	04100513          	addi	a0,zero,65
   1027c:	460000ef          	jal	ra,106dc <putchar>
   10280:	00000793          	addi	a5,zero,0
   10284:	00078513          	addi	a0,a5,0
   10288:	00813083          	ld	ra,8(sp)
   1028c:	00013403          	ld	s0,0(sp)
   10290:	01010113          	addi	sp,sp,16
   10294:	00008067          	jalr	zero,0(ra)

0000000000010298 <__fp_lock>:
   10298:	00000513          	addi	a0,zero,0
   1029c:	00008067          	jalr	zero,0(ra)

00000000000102a0 <stdio_exit_handler>:
   102a0:	00013637          	lui	a2,0x13
   102a4:	000125b7          	lui	a1,0x12
   102a8:	00013537          	lui	a0,0x13
   102ac:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   102b0:	a9058593          	addi	a1,a1,-1392 # 11a90 <_fclose_r>
   102b4:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   102b8:	34c0006f          	jal	zero,10604 <_fwalk_sglue>

00000000000102bc <cleanup_stdio>:
   102bc:	00853583          	ld	a1,8(a0)
   102c0:	ff010113          	addi	sp,sp,-16
   102c4:	00813023          	sd	s0,0(sp)
   102c8:	00113423          	sd	ra,8(sp)
   102cc:	21018793          	addi	a5,gp,528 # 13a28 <__sf>
   102d0:	00050413          	addi	s0,a0,0
   102d4:	00f58463          	beq	a1,a5,102dc <cleanup_stdio+0x20>
   102d8:	7b8010ef          	jal	ra,11a90 <_fclose_r>
   102dc:	01043583          	ld	a1,16(s0)
   102e0:	2c018793          	addi	a5,gp,704 # 13ad8 <__sf+0xb0>
   102e4:	00f58663          	beq	a1,a5,102f0 <cleanup_stdio+0x34>
   102e8:	00040513          	addi	a0,s0,0
   102ec:	7a4010ef          	jal	ra,11a90 <_fclose_r>
   102f0:	01843583          	ld	a1,24(s0)
   102f4:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   102f8:	00f58c63          	beq	a1,a5,10310 <cleanup_stdio+0x54>
   102fc:	00040513          	addi	a0,s0,0
   10300:	00013403          	ld	s0,0(sp)
   10304:	00813083          	ld	ra,8(sp)
   10308:	01010113          	addi	sp,sp,16
   1030c:	7840106f          	jal	zero,11a90 <_fclose_r>
   10310:	00813083          	ld	ra,8(sp)
   10314:	00013403          	ld	s0,0(sp)
   10318:	01010113          	addi	sp,sp,16
   1031c:	00008067          	jalr	zero,0(ra)

0000000000010320 <__fp_unlock>:
   10320:	00000513          	addi	a0,zero,0
   10324:	00008067          	jalr	zero,0(ra)

0000000000010328 <global_stdio_init.part.0>:
   10328:	fd010113          	addi	sp,sp,-48
   1032c:	000107b7          	lui	a5,0x10
   10330:	02813023          	sd	s0,32(sp)
   10334:	2a078793          	addi	a5,a5,672 # 102a0 <stdio_exit_handler>
   10338:	21018413          	addi	s0,gp,528 # 13a28 <__sf>
   1033c:	02113423          	sd	ra,40(sp)
   10340:	00913c23          	sd	s1,24(sp)
   10344:	01213823          	sd	s2,16(sp)
   10348:	01313423          	sd	s3,8(sp)
   1034c:	01413023          	sd	s4,0(sp)
   10350:	1af1b023          	sd	a5,416(gp) # 139b8 <__stdio_exit_handler>
   10354:	00800613          	addi	a2,zero,8
   10358:	00400793          	addi	a5,zero,4
   1035c:	00000593          	addi	a1,zero,0
   10360:	2b418513          	addi	a0,gp,692 # 13acc <__sf+0xa4>
   10364:	00f42823          	sw	a5,16(s0)
   10368:	00043023          	sd	zero,0(s0)
   1036c:	00043423          	sd	zero,8(s0)
   10370:	0a042623          	sw	zero,172(s0)
   10374:	00043c23          	sd	zero,24(s0)
   10378:	02042023          	sw	zero,32(s0)
   1037c:	02042423          	sw	zero,40(s0)
   10380:	7d4000ef          	jal	ra,10b54 <memset>
   10384:	00010a37          	lui	s4,0x10
   10388:	000109b7          	lui	s3,0x10
   1038c:	00010937          	lui	s2,0x10
   10390:	000114b7          	lui	s1,0x11
   10394:	000107b7          	lui	a5,0x10
   10398:	6f0a0a13          	addi	s4,s4,1776 # 106f0 <__sread>
   1039c:	75498993          	addi	s3,s3,1876 # 10754 <__swrite>
   103a0:	7dc90913          	addi	s2,s2,2012 # 107dc <__sseek>
   103a4:	84048493          	addi	s1,s1,-1984 # 10840 <__sclose>
   103a8:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   103ac:	00800613          	addi	a2,zero,8
   103b0:	00000593          	addi	a1,zero,0
   103b4:	36418513          	addi	a0,gp,868 # 13b7c <__sf+0x154>
   103b8:	0cf42023          	sw	a5,192(s0)
   103bc:	03443c23          	sd	s4,56(s0)
   103c0:	05343023          	sd	s3,64(s0)
   103c4:	05243423          	sd	s2,72(s0)
   103c8:	04943823          	sd	s1,80(s0)
   103cc:	02843823          	sd	s0,48(s0)
   103d0:	0a043823          	sd	zero,176(s0)
   103d4:	0a043c23          	sd	zero,184(s0)
   103d8:	14042e23          	sw	zero,348(s0)
   103dc:	0c043423          	sd	zero,200(s0)
   103e0:	0c042823          	sw	zero,208(s0)
   103e4:	0c042c23          	sw	zero,216(s0)
   103e8:	76c000ef          	jal	ra,10b54 <memset>
   103ec:	000207b7          	lui	a5,0x20
   103f0:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xc09a>
   103f4:	2c018713          	addi	a4,gp,704 # 13ad8 <__sf+0xb0>
   103f8:	41418513          	addi	a0,gp,1044 # 13c2c <__sf+0x204>
   103fc:	00800613          	addi	a2,zero,8
   10400:	00000593          	addi	a1,zero,0
   10404:	0f443423          	sd	s4,232(s0)
   10408:	0f343823          	sd	s3,240(s0)
   1040c:	0f243c23          	sd	s2,248(s0)
   10410:	10943023          	sd	s1,256(s0)
   10414:	16f42823          	sw	a5,368(s0)
   10418:	16043023          	sd	zero,352(s0)
   1041c:	16043423          	sd	zero,360(s0)
   10420:	20042623          	sw	zero,524(s0)
   10424:	16043c23          	sd	zero,376(s0)
   10428:	18042023          	sw	zero,384(s0)
   1042c:	18042423          	sw	zero,392(s0)
   10430:	0ee43023          	sd	a4,224(s0)
   10434:	720000ef          	jal	ra,10b54 <memset>
   10438:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   1043c:	19443c23          	sd	s4,408(s0)
   10440:	1b343023          	sd	s3,416(s0)
   10444:	1b243423          	sd	s2,424(s0)
   10448:	1a943823          	sd	s1,432(s0)
   1044c:	02813083          	ld	ra,40(sp)
   10450:	18f43823          	sd	a5,400(s0)
   10454:	02013403          	ld	s0,32(sp)
   10458:	01813483          	ld	s1,24(sp)
   1045c:	01013903          	ld	s2,16(sp)
   10460:	00813983          	ld	s3,8(sp)
   10464:	00013a03          	ld	s4,0(sp)
   10468:	03010113          	addi	sp,sp,48
   1046c:	00008067          	jalr	zero,0(ra)

0000000000010470 <__sfp>:
   10470:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   10474:	fd010113          	addi	sp,sp,-48
   10478:	00913c23          	sd	s1,24(sp)
   1047c:	02113423          	sd	ra,40(sp)
   10480:	02813023          	sd	s0,32(sp)
   10484:	00050493          	addi	s1,a0,0
   10488:	10078463          	beq	a5,zero,10590 <__sfp+0x120>
   1048c:	000136b7          	lui	a3,0x13
   10490:	01868693          	addi	a3,a3,24 # 13018 <__sglue>
   10494:	0086a703          	lw	a4,8(a3)
   10498:	08e05c63          	bge	zero,a4,10530 <__sfp+0xc0>
   1049c:	02071713          	slli	a4,a4,0x20
   104a0:	02075713          	srli	a4,a4,0x20
   104a4:	00171793          	slli	a5,a4,0x1
   104a8:	00e787b3          	add	a5,a5,a4
   104ac:	0106b403          	ld	s0,16(a3)
   104b0:	00279793          	slli	a5,a5,0x2
   104b4:	40e787b3          	sub	a5,a5,a4
   104b8:	00479793          	slli	a5,a5,0x4
   104bc:	00f407b3          	add	a5,s0,a5
   104c0:	00c0006f          	jal	zero,104cc <__sfp+0x5c>
   104c4:	0b040413          	addi	s0,s0,176
   104c8:	06f40463          	beq	s0,a5,10530 <__sfp+0xc0>
   104cc:	01041703          	lh	a4,16(s0)
   104d0:	fe071ae3          	bne	a4,zero,104c4 <__sfp+0x54>
   104d4:	ffff07b7          	lui	a5,0xffff0
   104d8:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdc089>
   104dc:	00f42823          	sw	a5,16(s0)
   104e0:	0a042623          	sw	zero,172(s0)
   104e4:	00043023          	sd	zero,0(s0)
   104e8:	00043423          	sd	zero,8(s0)
   104ec:	00043c23          	sd	zero,24(s0)
   104f0:	02042023          	sw	zero,32(s0)
   104f4:	02042423          	sw	zero,40(s0)
   104f8:	00800613          	addi	a2,zero,8
   104fc:	00000593          	addi	a1,zero,0
   10500:	0a440513          	addi	a0,s0,164
   10504:	650000ef          	jal	ra,10b54 <memset>
   10508:	04043c23          	sd	zero,88(s0)
   1050c:	06042023          	sw	zero,96(s0)
   10510:	06043c23          	sd	zero,120(s0)
   10514:	08042023          	sw	zero,128(s0)
   10518:	02813083          	ld	ra,40(sp)
   1051c:	00040513          	addi	a0,s0,0
   10520:	02013403          	ld	s0,32(sp)
   10524:	01813483          	ld	s1,24(sp)
   10528:	03010113          	addi	sp,sp,48
   1052c:	00008067          	jalr	zero,0(ra)
   10530:	0006b403          	ld	s0,0(a3)
   10534:	00040663          	beq	s0,zero,10540 <__sfp+0xd0>
   10538:	00040693          	addi	a3,s0,0
   1053c:	f59ff06f          	jal	zero,10494 <__sfp+0x24>
   10540:	2d800593          	addi	a1,zero,728
   10544:	00048513          	addi	a0,s1,0
   10548:	00d13423          	sd	a3,8(sp)
   1054c:	459000ef          	jal	ra,111a4 <_malloc_r>
   10550:	00813683          	ld	a3,8(sp)
   10554:	00050413          	addi	s0,a0,0
   10558:	04050063          	beq	a0,zero,10598 <__sfp+0x128>
   1055c:	00400793          	addi	a5,zero,4
   10560:	00f52423          	sw	a5,8(a0)
   10564:	01850513          	addi	a0,a0,24
   10568:	00043023          	sd	zero,0(s0)
   1056c:	00a43823          	sd	a0,16(s0)
   10570:	2c000613          	addi	a2,zero,704
   10574:	00000593          	addi	a1,zero,0
   10578:	00d13423          	sd	a3,8(sp)
   1057c:	5d8000ef          	jal	ra,10b54 <memset>
   10580:	00813683          	ld	a3,8(sp)
   10584:	0086b023          	sd	s0,0(a3)
   10588:	00040693          	addi	a3,s0,0
   1058c:	f09ff06f          	jal	zero,10494 <__sfp+0x24>
   10590:	d99ff0ef          	jal	ra,10328 <global_stdio_init.part.0>
   10594:	ef9ff06f          	jal	zero,1048c <__sfp+0x1c>
   10598:	0006b023          	sd	zero,0(a3)
   1059c:	00c00793          	addi	a5,zero,12
   105a0:	00f4a023          	sw	a5,0(s1)
   105a4:	f75ff06f          	jal	zero,10518 <__sfp+0xa8>

00000000000105a8 <__sinit>:
   105a8:	04853783          	ld	a5,72(a0)
   105ac:	00078463          	beq	a5,zero,105b4 <__sinit+0xc>
   105b0:	00008067          	jalr	zero,0(ra)
   105b4:	000107b7          	lui	a5,0x10
   105b8:	1a01b703          	ld	a4,416(gp) # 139b8 <__stdio_exit_handler>
   105bc:	2bc78793          	addi	a5,a5,700 # 102bc <cleanup_stdio>
   105c0:	04f53423          	sd	a5,72(a0)
   105c4:	fe0716e3          	bne	a4,zero,105b0 <__sinit+0x8>
   105c8:	d61ff06f          	jal	zero,10328 <global_stdio_init.part.0>

00000000000105cc <__sfp_lock_acquire>:
   105cc:	00008067          	jalr	zero,0(ra)

00000000000105d0 <__sfp_lock_release>:
   105d0:	00008067          	jalr	zero,0(ra)

00000000000105d4 <__fp_lock_all>:
   105d4:	00013637          	lui	a2,0x13
   105d8:	000105b7          	lui	a1,0x10
   105dc:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   105e0:	29858593          	addi	a1,a1,664 # 10298 <__fp_lock>
   105e4:	00000513          	addi	a0,zero,0
   105e8:	01c0006f          	jal	zero,10604 <_fwalk_sglue>

00000000000105ec <__fp_unlock_all>:
   105ec:	00013637          	lui	a2,0x13
   105f0:	000105b7          	lui	a1,0x10
   105f4:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   105f8:	32058593          	addi	a1,a1,800 # 10320 <__fp_unlock>
   105fc:	00000513          	addi	a0,zero,0
   10600:	0040006f          	jal	zero,10604 <_fwalk_sglue>

0000000000010604 <_fwalk_sglue>:
   10604:	fb010113          	addi	sp,sp,-80
   10608:	03213823          	sd	s2,48(sp)
   1060c:	03313423          	sd	s3,40(sp)
   10610:	03413023          	sd	s4,32(sp)
   10614:	01513c23          	sd	s5,24(sp)
   10618:	01613823          	sd	s6,16(sp)
   1061c:	01713423          	sd	s7,8(sp)
   10620:	04113423          	sd	ra,72(sp)
   10624:	04813023          	sd	s0,64(sp)
   10628:	02913c23          	sd	s1,56(sp)
   1062c:	00060913          	addi	s2,a2,0
   10630:	00050a13          	addi	s4,a0,0
   10634:	00058a93          	addi	s5,a1,0
   10638:	00000b13          	addi	s6,zero,0
   1063c:	00100b93          	addi	s7,zero,1
   10640:	fff00993          	addi	s3,zero,-1
   10644:	00892783          	lw	a5,8(s2)
   10648:	04f05a63          	bge	zero,a5,1069c <_fwalk_sglue+0x98>
   1064c:	02079793          	slli	a5,a5,0x20
   10650:	0207d793          	srli	a5,a5,0x20
   10654:	00179493          	slli	s1,a5,0x1
   10658:	00f484b3          	add	s1,s1,a5
   1065c:	01093403          	ld	s0,16(s2)
   10660:	00249493          	slli	s1,s1,0x2
   10664:	40f484b3          	sub	s1,s1,a5
   10668:	00449493          	slli	s1,s1,0x4
   1066c:	009404b3          	add	s1,s0,s1
   10670:	01045783          	lhu	a5,16(s0)
   10674:	02fbf063          	bgeu	s7,a5,10694 <_fwalk_sglue+0x90>
   10678:	01241783          	lh	a5,18(s0)
   1067c:	00040593          	addi	a1,s0,0
   10680:	000a0513          	addi	a0,s4,0
   10684:	01378863          	beq	a5,s3,10694 <_fwalk_sglue+0x90>
   10688:	000a80e7          	jalr	ra,0(s5)
   1068c:	01656b33          	or	s6,a0,s6
   10690:	000b0b1b          	addiw	s6,s6,0
   10694:	0b040413          	addi	s0,s0,176
   10698:	fc941ce3          	bne	s0,s1,10670 <_fwalk_sglue+0x6c>
   1069c:	00093903          	ld	s2,0(s2)
   106a0:	fa0912e3          	bne	s2,zero,10644 <_fwalk_sglue+0x40>
   106a4:	04813083          	ld	ra,72(sp)
   106a8:	04013403          	ld	s0,64(sp)
   106ac:	03813483          	ld	s1,56(sp)
   106b0:	03013903          	ld	s2,48(sp)
   106b4:	02813983          	ld	s3,40(sp)
   106b8:	02013a03          	ld	s4,32(sp)
   106bc:	01813a83          	ld	s5,24(sp)
   106c0:	00813b83          	ld	s7,8(sp)
   106c4:	000b0513          	addi	a0,s6,0
   106c8:	01013b03          	ld	s6,16(sp)
   106cc:	05010113          	addi	sp,sp,80
   106d0:	00008067          	jalr	zero,0(ra)

00000000000106d4 <_putchar_r>:
   106d4:	01053603          	ld	a2,16(a0)
   106d8:	01d0106f          	jal	zero,11ef4 <_putc_r>

00000000000106dc <putchar>:
   106dc:	1881b783          	ld	a5,392(gp) # 139a0 <_impure_ptr>
   106e0:	00050593          	addi	a1,a0,0
   106e4:	0107b603          	ld	a2,16(a5)
   106e8:	00078513          	addi	a0,a5,0
   106ec:	0090106f          	jal	zero,11ef4 <_putc_r>

00000000000106f0 <__sread>:
   106f0:	ff010113          	addi	sp,sp,-16
   106f4:	00813023          	sd	s0,0(sp)
   106f8:	00058413          	addi	s0,a1,0
   106fc:	01259583          	lh	a1,18(a1)
   10700:	00113423          	sd	ra,8(sp)
   10704:	2ec000ef          	jal	ra,109f0 <_read_r>
   10708:	02054063          	blt	a0,zero,10728 <__sread+0x38>
   1070c:	09043783          	ld	a5,144(s0)
   10710:	00813083          	ld	ra,8(sp)
   10714:	00a787b3          	add	a5,a5,a0
   10718:	08f43823          	sd	a5,144(s0)
   1071c:	00013403          	ld	s0,0(sp)
   10720:	01010113          	addi	sp,sp,16
   10724:	00008067          	jalr	zero,0(ra)
   10728:	01045783          	lhu	a5,16(s0)
   1072c:	fffff737          	lui	a4,0xfffff
   10730:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10734:	00e7f7b3          	and	a5,a5,a4
   10738:	00813083          	ld	ra,8(sp)
   1073c:	00f41823          	sh	a5,16(s0)
   10740:	00013403          	ld	s0,0(sp)
   10744:	01010113          	addi	sp,sp,16
   10748:	00008067          	jalr	zero,0(ra)

000000000001074c <__seofread>:
   1074c:	00000513          	addi	a0,zero,0
   10750:	00008067          	jalr	zero,0(ra)

0000000000010754 <__swrite>:
   10754:	01059783          	lh	a5,16(a1)
   10758:	fd010113          	addi	sp,sp,-48
   1075c:	00068313          	addi	t1,a3,0
   10760:	02113423          	sd	ra,40(sp)
   10764:	1007f693          	andi	a3,a5,256
   10768:	00058713          	addi	a4,a1,0
   1076c:	00060893          	addi	a7,a2,0
   10770:	00050813          	addi	a6,a0,0
   10774:	02069863          	bne	a3,zero,107a4 <__swrite+0x50>
   10778:	fffff6b7          	lui	a3,0xfffff
   1077c:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10780:	02813083          	ld	ra,40(sp)
   10784:	00d7f7b3          	and	a5,a5,a3
   10788:	01271583          	lh	a1,18(a4)
   1078c:	00f71823          	sh	a5,16(a4)
   10790:	00030693          	addi	a3,t1,0 # 10210 <frame_dummy+0x14>
   10794:	00088613          	addi	a2,a7,0
   10798:	00080513          	addi	a0,a6,0
   1079c:	03010113          	addi	sp,sp,48
   107a0:	2b80006f          	jal	zero,10a58 <_write_r>
   107a4:	01259583          	lh	a1,18(a1)
   107a8:	00c13823          	sd	a2,16(sp)
   107ac:	00200693          	addi	a3,zero,2
   107b0:	00000613          	addi	a2,zero,0
   107b4:	00613c23          	sd	t1,24(sp)
   107b8:	00e13023          	sd	a4,0(sp)
   107bc:	00a13423          	sd	a0,8(sp)
   107c0:	1c8000ef          	jal	ra,10988 <_lseek_r>
   107c4:	00013703          	ld	a4,0(sp)
   107c8:	01813303          	ld	t1,24(sp)
   107cc:	01013883          	ld	a7,16(sp)
   107d0:	01071783          	lh	a5,16(a4)
   107d4:	00813803          	ld	a6,8(sp)
   107d8:	fa1ff06f          	jal	zero,10778 <__swrite+0x24>

00000000000107dc <__sseek>:
   107dc:	ff010113          	addi	sp,sp,-16
   107e0:	00813023          	sd	s0,0(sp)
   107e4:	00058413          	addi	s0,a1,0
   107e8:	01259583          	lh	a1,18(a1)
   107ec:	00113423          	sd	ra,8(sp)
   107f0:	198000ef          	jal	ra,10988 <_lseek_r>
   107f4:	fff00713          	addi	a4,zero,-1
   107f8:	01041783          	lh	a5,16(s0)
   107fc:	02e50263          	beq	a0,a4,10820 <__sseek+0x44>
   10800:	00001737          	lui	a4,0x1
   10804:	00e7e7b3          	or	a5,a5,a4
   10808:	00813083          	ld	ra,8(sp)
   1080c:	08a43823          	sd	a0,144(s0)
   10810:	00f41823          	sh	a5,16(s0)
   10814:	00013403          	ld	s0,0(sp)
   10818:	01010113          	addi	sp,sp,16
   1081c:	00008067          	jalr	zero,0(ra)
   10820:	80050713          	addi	a4,a0,-2048
   10824:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   10828:	00e7f7b3          	and	a5,a5,a4
   1082c:	00813083          	ld	ra,8(sp)
   10830:	00f41823          	sh	a5,16(s0)
   10834:	00013403          	ld	s0,0(sp)
   10838:	01010113          	addi	sp,sp,16
   1083c:	00008067          	jalr	zero,0(ra)

0000000000010840 <__sclose>:
   10840:	01259583          	lh	a1,18(a1)
   10844:	0040006f          	jal	zero,10848 <_close_r>

0000000000010848 <_close_r>:
   10848:	fe010113          	addi	sp,sp,-32
   1084c:	00813823          	sd	s0,16(sp)
   10850:	00913423          	sd	s1,8(sp)
   10854:	00050493          	addi	s1,a0,0
   10858:	00058513          	addi	a0,a1,0
   1085c:	00113c23          	sd	ra,24(sp)
   10860:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10864:	79d010ef          	jal	ra,12800 <_close>
   10868:	fff00793          	addi	a5,zero,-1
   1086c:	00f50c63          	beq	a0,a5,10884 <_close_r+0x3c>
   10870:	01813083          	ld	ra,24(sp)
   10874:	01013403          	ld	s0,16(sp)
   10878:	00813483          	ld	s1,8(sp)
   1087c:	02010113          	addi	sp,sp,32
   10880:	00008067          	jalr	zero,0(ra)
   10884:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10888:	fe0784e3          	beq	a5,zero,10870 <_close_r+0x28>
   1088c:	01813083          	ld	ra,24(sp)
   10890:	01013403          	ld	s0,16(sp)
   10894:	00f4a023          	sw	a5,0(s1)
   10898:	00813483          	ld	s1,8(sp)
   1089c:	02010113          	addi	sp,sp,32
   108a0:	00008067          	jalr	zero,0(ra)

00000000000108a4 <_reclaim_reent>:
   108a4:	1881b783          	ld	a5,392(gp) # 139a0 <_impure_ptr>
   108a8:	0ca78e63          	beq	a5,a0,10984 <_reclaim_reent+0xe0>
   108ac:	06853583          	ld	a1,104(a0)
   108b0:	fd010113          	addi	sp,sp,-48
   108b4:	00913c23          	sd	s1,24(sp)
   108b8:	02113423          	sd	ra,40(sp)
   108bc:	02813023          	sd	s0,32(sp)
   108c0:	00050493          	addi	s1,a0,0
   108c4:	04058863          	beq	a1,zero,10914 <_reclaim_reent+0x70>
   108c8:	01213823          	sd	s2,16(sp)
   108cc:	01313423          	sd	s3,8(sp)
   108d0:	00000913          	addi	s2,zero,0
   108d4:	20000993          	addi	s3,zero,512
   108d8:	012587b3          	add	a5,a1,s2
   108dc:	0007b403          	ld	s0,0(a5)
   108e0:	00040e63          	beq	s0,zero,108fc <_reclaim_reent+0x58>
   108e4:	00040593          	addi	a1,s0,0
   108e8:	00043403          	ld	s0,0(s0)
   108ec:	00048513          	addi	a0,s1,0
   108f0:	5b0000ef          	jal	ra,10ea0 <_free_r>
   108f4:	fe0418e3          	bne	s0,zero,108e4 <_reclaim_reent+0x40>
   108f8:	0684b583          	ld	a1,104(s1)
   108fc:	00890913          	addi	s2,s2,8
   10900:	fd391ce3          	bne	s2,s3,108d8 <_reclaim_reent+0x34>
   10904:	00048513          	addi	a0,s1,0
   10908:	598000ef          	jal	ra,10ea0 <_free_r>
   1090c:	01013903          	ld	s2,16(sp)
   10910:	00813983          	ld	s3,8(sp)
   10914:	0504b583          	ld	a1,80(s1)
   10918:	00058663          	beq	a1,zero,10924 <_reclaim_reent+0x80>
   1091c:	00048513          	addi	a0,s1,0
   10920:	580000ef          	jal	ra,10ea0 <_free_r>
   10924:	0604b403          	ld	s0,96(s1)
   10928:	00040c63          	beq	s0,zero,10940 <_reclaim_reent+0x9c>
   1092c:	00040593          	addi	a1,s0,0
   10930:	00043403          	ld	s0,0(s0)
   10934:	00048513          	addi	a0,s1,0
   10938:	568000ef          	jal	ra,10ea0 <_free_r>
   1093c:	fe0418e3          	bne	s0,zero,1092c <_reclaim_reent+0x88>
   10940:	0784b583          	ld	a1,120(s1)
   10944:	00058663          	beq	a1,zero,10950 <_reclaim_reent+0xac>
   10948:	00048513          	addi	a0,s1,0
   1094c:	554000ef          	jal	ra,10ea0 <_free_r>
   10950:	0484b783          	ld	a5,72(s1)
   10954:	00078e63          	beq	a5,zero,10970 <_reclaim_reent+0xcc>
   10958:	02013403          	ld	s0,32(sp)
   1095c:	02813083          	ld	ra,40(sp)
   10960:	00048513          	addi	a0,s1,0
   10964:	01813483          	ld	s1,24(sp)
   10968:	03010113          	addi	sp,sp,48
   1096c:	00078067          	jalr	zero,0(a5)
   10970:	02813083          	ld	ra,40(sp)
   10974:	02013403          	ld	s0,32(sp)
   10978:	01813483          	ld	s1,24(sp)
   1097c:	03010113          	addi	sp,sp,48
   10980:	00008067          	jalr	zero,0(ra)
   10984:	00008067          	jalr	zero,0(ra)

0000000000010988 <_lseek_r>:
   10988:	fe010113          	addi	sp,sp,-32
   1098c:	00058793          	addi	a5,a1,0
   10990:	00813823          	sd	s0,16(sp)
   10994:	00913423          	sd	s1,8(sp)
   10998:	00060593          	addi	a1,a2,0
   1099c:	00050493          	addi	s1,a0,0
   109a0:	00068613          	addi	a2,a3,0
   109a4:	00078513          	addi	a0,a5,0
   109a8:	00113c23          	sd	ra,24(sp)
   109ac:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   109b0:	769010ef          	jal	ra,12918 <_lseek>
   109b4:	fff00793          	addi	a5,zero,-1
   109b8:	00f50c63          	beq	a0,a5,109d0 <_lseek_r+0x48>
   109bc:	01813083          	ld	ra,24(sp)
   109c0:	01013403          	ld	s0,16(sp)
   109c4:	00813483          	ld	s1,8(sp)
   109c8:	02010113          	addi	sp,sp,32
   109cc:	00008067          	jalr	zero,0(ra)
   109d0:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   109d4:	fe0784e3          	beq	a5,zero,109bc <_lseek_r+0x34>
   109d8:	01813083          	ld	ra,24(sp)
   109dc:	01013403          	ld	s0,16(sp)
   109e0:	00f4a023          	sw	a5,0(s1)
   109e4:	00813483          	ld	s1,8(sp)
   109e8:	02010113          	addi	sp,sp,32
   109ec:	00008067          	jalr	zero,0(ra)

00000000000109f0 <_read_r>:
   109f0:	fe010113          	addi	sp,sp,-32
   109f4:	00058793          	addi	a5,a1,0
   109f8:	00813823          	sd	s0,16(sp)
   109fc:	00913423          	sd	s1,8(sp)
   10a00:	00060593          	addi	a1,a2,0
   10a04:	00050493          	addi	s1,a0,0
   10a08:	00068613          	addi	a2,a3,0
   10a0c:	00078513          	addi	a0,a5,0
   10a10:	00113c23          	sd	ra,24(sp)
   10a14:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10a18:	741010ef          	jal	ra,12958 <_read>
   10a1c:	fff00793          	addi	a5,zero,-1
   10a20:	00f50c63          	beq	a0,a5,10a38 <_read_r+0x48>
   10a24:	01813083          	ld	ra,24(sp)
   10a28:	01013403          	ld	s0,16(sp)
   10a2c:	00813483          	ld	s1,8(sp)
   10a30:	02010113          	addi	sp,sp,32
   10a34:	00008067          	jalr	zero,0(ra)
   10a38:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10a3c:	fe0784e3          	beq	a5,zero,10a24 <_read_r+0x34>
   10a40:	01813083          	ld	ra,24(sp)
   10a44:	01013403          	ld	s0,16(sp)
   10a48:	00f4a023          	sw	a5,0(s1)
   10a4c:	00813483          	ld	s1,8(sp)
   10a50:	02010113          	addi	sp,sp,32
   10a54:	00008067          	jalr	zero,0(ra)

0000000000010a58 <_write_r>:
   10a58:	fe010113          	addi	sp,sp,-32
   10a5c:	00058793          	addi	a5,a1,0
   10a60:	00813823          	sd	s0,16(sp)
   10a64:	00913423          	sd	s1,8(sp)
   10a68:	00060593          	addi	a1,a2,0
   10a6c:	00050493          	addi	s1,a0,0
   10a70:	00068613          	addi	a2,a3,0
   10a74:	00078513          	addi	a0,a5,0
   10a78:	00113c23          	sd	ra,24(sp)
   10a7c:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10a80:	791010ef          	jal	ra,12a10 <_write>
   10a84:	fff00793          	addi	a5,zero,-1
   10a88:	00f50c63          	beq	a0,a5,10aa0 <_write_r+0x48>
   10a8c:	01813083          	ld	ra,24(sp)
   10a90:	01013403          	ld	s0,16(sp)
   10a94:	00813483          	ld	s1,8(sp)
   10a98:	02010113          	addi	sp,sp,32
   10a9c:	00008067          	jalr	zero,0(ra)
   10aa0:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10aa4:	fe0784e3          	beq	a5,zero,10a8c <_write_r+0x34>
   10aa8:	01813083          	ld	ra,24(sp)
   10aac:	01013403          	ld	s0,16(sp)
   10ab0:	00f4a023          	sw	a5,0(s1)
   10ab4:	00813483          	ld	s1,8(sp)
   10ab8:	02010113          	addi	sp,sp,32
   10abc:	00008067          	jalr	zero,0(ra)

0000000000010ac0 <__libc_init_array>:
   10ac0:	fe010113          	addi	sp,sp,-32
   10ac4:	00813823          	sd	s0,16(sp)
   10ac8:	01213023          	sd	s2,0(sp)
   10acc:	00013437          	lui	s0,0x13
   10ad0:	00013937          	lui	s2,0x13
   10ad4:	00113c23          	sd	ra,24(sp)
   10ad8:	00913423          	sd	s1,8(sp)
   10adc:	00090913          	addi	s2,s2,0 # 13000 <__init_array_start>
   10ae0:	00040413          	addi	s0,s0,0 # 13000 <__init_array_start>
   10ae4:	02890263          	beq	s2,s0,10b08 <__libc_init_array+0x48>
   10ae8:	40890933          	sub	s2,s2,s0
   10aec:	40395913          	srai	s2,s2,0x3
   10af0:	00000493          	addi	s1,zero,0
   10af4:	00043783          	ld	a5,0(s0)
   10af8:	00148493          	addi	s1,s1,1
   10afc:	00840413          	addi	s0,s0,8
   10b00:	000780e7          	jalr	ra,0(a5)
   10b04:	ff24e8e3          	bltu	s1,s2,10af4 <__libc_init_array+0x34>
   10b08:	00013937          	lui	s2,0x13
   10b0c:	00013437          	lui	s0,0x13
   10b10:	01090913          	addi	s2,s2,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   10b14:	00040413          	addi	s0,s0,0 # 13000 <__init_array_start>
   10b18:	02890263          	beq	s2,s0,10b3c <__libc_init_array+0x7c>
   10b1c:	40890933          	sub	s2,s2,s0
   10b20:	40395913          	srai	s2,s2,0x3
   10b24:	00000493          	addi	s1,zero,0
   10b28:	00043783          	ld	a5,0(s0)
   10b2c:	00148493          	addi	s1,s1,1
   10b30:	00840413          	addi	s0,s0,8
   10b34:	000780e7          	jalr	ra,0(a5)
   10b38:	ff24e8e3          	bltu	s1,s2,10b28 <__libc_init_array+0x68>
   10b3c:	01813083          	ld	ra,24(sp)
   10b40:	01013403          	ld	s0,16(sp)
   10b44:	00813483          	ld	s1,8(sp)
   10b48:	00013903          	ld	s2,0(sp)
   10b4c:	02010113          	addi	sp,sp,32
   10b50:	00008067          	jalr	zero,0(ra)

0000000000010b54 <memset>:
   10b54:	00f00313          	addi	t1,zero,15
   10b58:	00050713          	addi	a4,a0,0
   10b5c:	02c37a63          	bgeu	t1,a2,10b90 <memset+0x3c>
   10b60:	00f77793          	andi	a5,a4,15
   10b64:	0a079063          	bne	a5,zero,10c04 <memset+0xb0>
   10b68:	06059e63          	bne	a1,zero,10be4 <memset+0x90>
   10b6c:	ff067693          	andi	a3,a2,-16
   10b70:	00f67613          	andi	a2,a2,15
   10b74:	00e686b3          	add	a3,a3,a4
   10b78:	00b73023          	sd	a1,0(a4)
   10b7c:	00b73423          	sd	a1,8(a4)
   10b80:	01070713          	addi	a4,a4,16
   10b84:	fed76ae3          	bltu	a4,a3,10b78 <memset+0x24>
   10b88:	00061463          	bne	a2,zero,10b90 <memset+0x3c>
   10b8c:	00008067          	jalr	zero,0(ra)
   10b90:	40c306b3          	sub	a3,t1,a2
   10b94:	00269693          	slli	a3,a3,0x2
   10b98:	00000297          	auipc	t0,0x0
   10b9c:	005686b3          	add	a3,a3,t0
   10ba0:	00c68067          	jalr	zero,12(a3)
   10ba4:	00b70723          	sb	a1,14(a4)
   10ba8:	00b706a3          	sb	a1,13(a4)
   10bac:	00b70623          	sb	a1,12(a4)
   10bb0:	00b705a3          	sb	a1,11(a4)
   10bb4:	00b70523          	sb	a1,10(a4)
   10bb8:	00b704a3          	sb	a1,9(a4)
   10bbc:	00b70423          	sb	a1,8(a4)
   10bc0:	00b703a3          	sb	a1,7(a4)
   10bc4:	00b70323          	sb	a1,6(a4)
   10bc8:	00b702a3          	sb	a1,5(a4)
   10bcc:	00b70223          	sb	a1,4(a4)
   10bd0:	00b701a3          	sb	a1,3(a4)
   10bd4:	00b70123          	sb	a1,2(a4)
   10bd8:	00b700a3          	sb	a1,1(a4)
   10bdc:	00b70023          	sb	a1,0(a4)
   10be0:	00008067          	jalr	zero,0(ra)
   10be4:	0ff5f593          	andi	a1,a1,255
   10be8:	00859693          	slli	a3,a1,0x8
   10bec:	00d5e5b3          	or	a1,a1,a3
   10bf0:	01059693          	slli	a3,a1,0x10
   10bf4:	00d5e5b3          	or	a1,a1,a3
   10bf8:	02059693          	slli	a3,a1,0x20
   10bfc:	00d5e5b3          	or	a1,a1,a3
   10c00:	f6dff06f          	jal	zero,10b6c <memset+0x18>
   10c04:	00279693          	slli	a3,a5,0x2
   10c08:	00000297          	auipc	t0,0x0
   10c0c:	005686b3          	add	a3,a3,t0
   10c10:	00008293          	addi	t0,ra,0
   10c14:	f98680e7          	jalr	ra,-104(a3)
   10c18:	00028093          	addi	ra,t0,0 # 10c08 <memset+0xb4>
   10c1c:	ff078793          	addi	a5,a5,-16
   10c20:	40f70733          	sub	a4,a4,a5
   10c24:	00f60633          	add	a2,a2,a5
   10c28:	f6c374e3          	bgeu	t1,a2,10b90 <memset+0x3c>
   10c2c:	f3dff06f          	jal	zero,10b68 <memset+0x14>

0000000000010c30 <__call_exitprocs>:
   10c30:	fb010113          	addi	sp,sp,-80
   10c34:	03413023          	sd	s4,32(sp)
   10c38:	03213823          	sd	s2,48(sp)
   10c3c:	1b01b903          	ld	s2,432(gp) # 139c8 <__atexit>
   10c40:	04113423          	sd	ra,72(sp)
   10c44:	06090e63          	beq	s2,zero,10cc0 <__call_exitprocs+0x90>
   10c48:	03313423          	sd	s3,40(sp)
   10c4c:	01513c23          	sd	s5,24(sp)
   10c50:	01613823          	sd	s6,16(sp)
   10c54:	01713423          	sd	s7,8(sp)
   10c58:	04813023          	sd	s0,64(sp)
   10c5c:	02913c23          	sd	s1,56(sp)
   10c60:	01813023          	sd	s8,0(sp)
   10c64:	00050b13          	addi	s6,a0,0
   10c68:	00058b93          	addi	s7,a1,0
   10c6c:	fff00993          	addi	s3,zero,-1
   10c70:	00100a93          	addi	s5,zero,1
   10c74:	00892403          	lw	s0,8(s2)
   10c78:	fff4041b          	addiw	s0,s0,-1
   10c7c:	02044463          	blt	s0,zero,10ca4 <__call_exitprocs+0x74>
   10c80:	01090493          	addi	s1,s2,16
   10c84:	00341793          	slli	a5,s0,0x3
   10c88:	00f484b3          	add	s1,s1,a5
   10c8c:	040b8463          	beq	s7,zero,10cd4 <__call_exitprocs+0xa4>
   10c90:	2004b783          	ld	a5,512(s1)
   10c94:	05778063          	beq	a5,s7,10cd4 <__call_exitprocs+0xa4>
   10c98:	fff4041b          	addiw	s0,s0,-1
   10c9c:	ff848493          	addi	s1,s1,-8
   10ca0:	ff3418e3          	bne	s0,s3,10c90 <__call_exitprocs+0x60>
   10ca4:	04013403          	ld	s0,64(sp)
   10ca8:	03813483          	ld	s1,56(sp)
   10cac:	02813983          	ld	s3,40(sp)
   10cb0:	01813a83          	ld	s5,24(sp)
   10cb4:	01013b03          	ld	s6,16(sp)
   10cb8:	00813b83          	ld	s7,8(sp)
   10cbc:	00013c03          	ld	s8,0(sp)
   10cc0:	04813083          	ld	ra,72(sp)
   10cc4:	03013903          	ld	s2,48(sp)
   10cc8:	02013a03          	ld	s4,32(sp)
   10ccc:	05010113          	addi	sp,sp,80
   10cd0:	00008067          	jalr	zero,0(ra)
   10cd4:	00892783          	lw	a5,8(s2)
   10cd8:	0004b683          	ld	a3,0(s1)
   10cdc:	fff7879b          	addiw	a5,a5,-1
   10ce0:	06878a63          	beq	a5,s0,10d54 <__call_exitprocs+0x124>
   10ce4:	0004b023          	sd	zero,0(s1)
   10ce8:	02068663          	beq	a3,zero,10d14 <__call_exitprocs+0xe4>
   10cec:	31092783          	lw	a5,784(s2)
   10cf0:	008a973b          	sllw	a4,s5,s0
   10cf4:	00892c03          	lw	s8,8(s2)
   10cf8:	00e7f7b3          	and	a5,a5,a4
   10cfc:	02079463          	bne	a5,zero,10d24 <__call_exitprocs+0xf4>
   10d00:	000680e7          	jalr	ra,0(a3)
   10d04:	00892703          	lw	a4,8(s2)
   10d08:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10d0c:	03871e63          	bne	a4,s8,10d48 <__call_exitprocs+0x118>
   10d10:	03279c63          	bne	a5,s2,10d48 <__call_exitprocs+0x118>
   10d14:	fff4041b          	addiw	s0,s0,-1
   10d18:	ff848493          	addi	s1,s1,-8
   10d1c:	f73418e3          	bne	s0,s3,10c8c <__call_exitprocs+0x5c>
   10d20:	f85ff06f          	jal	zero,10ca4 <__call_exitprocs+0x74>
   10d24:	31492783          	lw	a5,788(s2)
   10d28:	1004b583          	ld	a1,256(s1)
   10d2c:	00f77733          	and	a4,a4,a5
   10d30:	02071663          	bne	a4,zero,10d5c <__call_exitprocs+0x12c>
   10d34:	000b0513          	addi	a0,s6,0
   10d38:	000680e7          	jalr	ra,0(a3)
   10d3c:	00892703          	lw	a4,8(s2)
   10d40:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10d44:	fd8706e3          	beq	a4,s8,10d10 <__call_exitprocs+0xe0>
   10d48:	f4078ee3          	beq	a5,zero,10ca4 <__call_exitprocs+0x74>
   10d4c:	00078913          	addi	s2,a5,0
   10d50:	f25ff06f          	jal	zero,10c74 <__call_exitprocs+0x44>
   10d54:	00892423          	sw	s0,8(s2)
   10d58:	f91ff06f          	jal	zero,10ce8 <__call_exitprocs+0xb8>
   10d5c:	00058513          	addi	a0,a1,0
   10d60:	000680e7          	jalr	ra,0(a3)
   10d64:	fa1ff06f          	jal	zero,10d04 <__call_exitprocs+0xd4>

0000000000010d68 <atexit>:
   10d68:	00050593          	addi	a1,a0,0
   10d6c:	00000693          	addi	a3,zero,0
   10d70:	00000613          	addi	a2,zero,0
   10d74:	00000513          	addi	a0,zero,0
   10d78:	6c00106f          	jal	zero,12438 <__register_exitproc>

0000000000010d7c <_malloc_trim_r>:
   10d7c:	fd010113          	addi	sp,sp,-48
   10d80:	01213823          	sd	s2,16(sp)
   10d84:	00013937          	lui	s2,0x13
   10d88:	02813023          	sd	s0,32(sp)
   10d8c:	00913c23          	sd	s1,24(sp)
   10d90:	01313423          	sd	s3,8(sp)
   10d94:	00058413          	addi	s0,a1,0
   10d98:	02113423          	sd	ra,40(sp)
   10d9c:	00050993          	addi	s3,a0,0
   10da0:	18890913          	addi	s2,s2,392 # 13188 <__malloc_av_>
   10da4:	4e5000ef          	jal	ra,11a88 <__malloc_lock>
   10da8:	01093783          	ld	a5,16(s2)
   10dac:	00001737          	lui	a4,0x1
   10db0:	0087b483          	ld	s1,8(a5)
   10db4:	ffc4f493          	andi	s1,s1,-4
   10db8:	7ff48793          	addi	a5,s1,2047
   10dbc:	7e078793          	addi	a5,a5,2016
   10dc0:	40878433          	sub	s0,a5,s0
   10dc4:	00c45413          	srli	s0,s0,0xc
   10dc8:	fff40413          	addi	s0,s0,-1
   10dcc:	00c41413          	slli	s0,s0,0xc
   10dd0:	00e44e63          	blt	s0,a4,10dec <_malloc_trim_r+0x70>
   10dd4:	00000593          	addi	a1,zero,0
   10dd8:	00098513          	addi	a0,s3,0
   10ddc:	5a4010ef          	jal	ra,12380 <_sbrk_r>
   10de0:	01093783          	ld	a5,16(s2)
   10de4:	009787b3          	add	a5,a5,s1
   10de8:	02f50663          	beq	a0,a5,10e14 <_malloc_trim_r+0x98>
   10dec:	00098513          	addi	a0,s3,0
   10df0:	49d000ef          	jal	ra,11a8c <__malloc_unlock>
   10df4:	02813083          	ld	ra,40(sp)
   10df8:	02013403          	ld	s0,32(sp)
   10dfc:	01813483          	ld	s1,24(sp)
   10e00:	01013903          	ld	s2,16(sp)
   10e04:	00813983          	ld	s3,8(sp)
   10e08:	00000513          	addi	a0,zero,0
   10e0c:	03010113          	addi	sp,sp,48
   10e10:	00008067          	jalr	zero,0(ra)
   10e14:	408005b3          	sub	a1,zero,s0
   10e18:	00098513          	addi	a0,s3,0
   10e1c:	564010ef          	jal	ra,12380 <_sbrk_r>
   10e20:	fff00793          	addi	a5,zero,-1
   10e24:	04f50463          	beq	a0,a5,10e6c <_malloc_trim_r+0xf0>
   10e28:	01093683          	ld	a3,16(s2)
   10e2c:	4201a783          	lw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   10e30:	408484b3          	sub	s1,s1,s0
   10e34:	0014e493          	ori	s1,s1,1
   10e38:	00098513          	addi	a0,s3,0
   10e3c:	408787bb          	subw	a5,a5,s0
   10e40:	0096b423          	sd	s1,8(a3)
   10e44:	42f1a023          	sw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   10e48:	445000ef          	jal	ra,11a8c <__malloc_unlock>
   10e4c:	02813083          	ld	ra,40(sp)
   10e50:	02013403          	ld	s0,32(sp)
   10e54:	01813483          	ld	s1,24(sp)
   10e58:	01013903          	ld	s2,16(sp)
   10e5c:	00813983          	ld	s3,8(sp)
   10e60:	00100513          	addi	a0,zero,1
   10e64:	03010113          	addi	sp,sp,48
   10e68:	00008067          	jalr	zero,0(ra)
   10e6c:	00000593          	addi	a1,zero,0
   10e70:	00098513          	addi	a0,s3,0
   10e74:	50c010ef          	jal	ra,12380 <_sbrk_r>
   10e78:	01093703          	ld	a4,16(s2)
   10e7c:	01f00693          	addi	a3,zero,31
   10e80:	40e507b3          	sub	a5,a0,a4
   10e84:	f6f6d4e3          	bge	a3,a5,10dec <_malloc_trim_r+0x70>
   10e88:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   10e8c:	0017e793          	ori	a5,a5,1
   10e90:	40c50533          	sub	a0,a0,a2
   10e94:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   10e98:	42a1a023          	sw	a0,1056(gp) # 13c38 <__malloc_current_mallinfo>
   10e9c:	f51ff06f          	jal	zero,10dec <_malloc_trim_r+0x70>

0000000000010ea0 <_free_r>:
   10ea0:	12058863          	beq	a1,zero,10fd0 <_free_r+0x130>
   10ea4:	fe010113          	addi	sp,sp,-32
   10ea8:	00813823          	sd	s0,16(sp)
   10eac:	00b13423          	sd	a1,8(sp)
   10eb0:	00050413          	addi	s0,a0,0
   10eb4:	00113c23          	sd	ra,24(sp)
   10eb8:	3d1000ef          	jal	ra,11a88 <__malloc_lock>
   10ebc:	00813583          	ld	a1,8(sp)
   10ec0:	00013837          	lui	a6,0x13
   10ec4:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   10ec8:	ff85b503          	ld	a0,-8(a1)
   10ecc:	ff058713          	addi	a4,a1,-16
   10ed0:	01083883          	ld	a7,16(a6)
   10ed4:	ffe57793          	andi	a5,a0,-2
   10ed8:	00f70633          	add	a2,a4,a5
   10edc:	00863683          	ld	a3,8(a2)
   10ee0:	00157313          	andi	t1,a0,1
   10ee4:	ffc6f693          	andi	a3,a3,-4
   10ee8:	18c88e63          	beq	a7,a2,11084 <_free_r+0x1e4>
   10eec:	00d63423          	sd	a3,8(a2)
   10ef0:	00d608b3          	add	a7,a2,a3
   10ef4:	0088b883          	ld	a7,8(a7)
   10ef8:	0018f893          	andi	a7,a7,1
   10efc:	08031e63          	bne	t1,zero,10f98 <_free_r+0xf8>
   10f00:	ff05b303          	ld	t1,-16(a1)
   10f04:	000135b7          	lui	a1,0x13
   10f08:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   10f0c:	40670733          	sub	a4,a4,t1
   10f10:	01073503          	ld	a0,16(a4)
   10f14:	006787b3          	add	a5,a5,t1
   10f18:	14b50063          	beq	a0,a1,11058 <_free_r+0x1b8>
   10f1c:	01873303          	ld	t1,24(a4)
   10f20:	00653c23          	sd	t1,24(a0)
   10f24:	00a33823          	sd	a0,16(t1)
   10f28:	1a088263          	beq	a7,zero,110cc <_free_r+0x22c>
   10f2c:	0017e693          	ori	a3,a5,1
   10f30:	00d73423          	sd	a3,8(a4)
   10f34:	00f63023          	sd	a5,0(a2)
   10f38:	1ff00693          	addi	a3,zero,511
   10f3c:	0af6e663          	bltu	a3,a5,10fe8 <_free_r+0x148>
   10f40:	0037d793          	srli	a5,a5,0x3
   10f44:	00179693          	slli	a3,a5,0x1
   10f48:	0026869b          	addiw	a3,a3,2
   10f4c:	00369693          	slli	a3,a3,0x3
   10f50:	00883503          	ld	a0,8(a6)
   10f54:	00d806b3          	add	a3,a6,a3
   10f58:	0006b583          	ld	a1,0(a3)
   10f5c:	4027d61b          	sraiw	a2,a5,0x2
   10f60:	00100793          	addi	a5,zero,1
   10f64:	00c797b3          	sll	a5,a5,a2
   10f68:	00a7e7b3          	or	a5,a5,a0
   10f6c:	ff068613          	addi	a2,a3,-16
   10f70:	00b73823          	sd	a1,16(a4)
   10f74:	00c73c23          	sd	a2,24(a4)
   10f78:	00f83423          	sd	a5,8(a6)
   10f7c:	00e6b023          	sd	a4,0(a3)
   10f80:	00e5bc23          	sd	a4,24(a1)
   10f84:	00040513          	addi	a0,s0,0
   10f88:	01013403          	ld	s0,16(sp)
   10f8c:	01813083          	ld	ra,24(sp)
   10f90:	02010113          	addi	sp,sp,32
   10f94:	2f90006f          	jal	zero,11a8c <__malloc_unlock>
   10f98:	02089e63          	bne	a7,zero,10fd4 <_free_r+0x134>
   10f9c:	000135b7          	lui	a1,0x13
   10fa0:	00d787b3          	add	a5,a5,a3
   10fa4:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   10fa8:	01063683          	ld	a3,16(a2)
   10fac:	0017e893          	ori	a7,a5,1
   10fb0:	00f70533          	add	a0,a4,a5
   10fb4:	16b68663          	beq	a3,a1,11120 <_free_r+0x280>
   10fb8:	01863603          	ld	a2,24(a2)
   10fbc:	00c6bc23          	sd	a2,24(a3)
   10fc0:	00d63823          	sd	a3,16(a2)
   10fc4:	01173423          	sd	a7,8(a4)
   10fc8:	00f53023          	sd	a5,0(a0)
   10fcc:	f6dff06f          	jal	zero,10f38 <_free_r+0x98>
   10fd0:	00008067          	jalr	zero,0(ra)
   10fd4:	00156513          	ori	a0,a0,1
   10fd8:	fea5bc23          	sd	a0,-8(a1)
   10fdc:	00f63023          	sd	a5,0(a2)
   10fe0:	1ff00693          	addi	a3,zero,511
   10fe4:	f4f6fee3          	bgeu	a3,a5,10f40 <_free_r+0xa0>
   10fe8:	0097d693          	srli	a3,a5,0x9
   10fec:	00400613          	addi	a2,zero,4
   10ff0:	0ed66263          	bltu	a2,a3,110d4 <_free_r+0x234>
   10ff4:	0067d693          	srli	a3,a5,0x6
   10ff8:	00169593          	slli	a1,a3,0x1
   10ffc:	0725859b          	addiw	a1,a1,114
   11000:	00359593          	slli	a1,a1,0x3
   11004:	0386861b          	addiw	a2,a3,56
   11008:	00b805b3          	add	a1,a6,a1
   1100c:	0005b683          	ld	a3,0(a1)
   11010:	ff058593          	addi	a1,a1,-16
   11014:	00d59863          	bne	a1,a3,11024 <_free_r+0x184>
   11018:	1240006f          	jal	zero,1113c <_free_r+0x29c>
   1101c:	0106b683          	ld	a3,16(a3)
   11020:	00d58863          	beq	a1,a3,11030 <_free_r+0x190>
   11024:	0086b603          	ld	a2,8(a3)
   11028:	ffc67613          	andi	a2,a2,-4
   1102c:	fec7e8e3          	bltu	a5,a2,1101c <_free_r+0x17c>
   11030:	0186b583          	ld	a1,24(a3)
   11034:	00b73c23          	sd	a1,24(a4)
   11038:	00d73823          	sd	a3,16(a4)
   1103c:	00040513          	addi	a0,s0,0
   11040:	01013403          	ld	s0,16(sp)
   11044:	01813083          	ld	ra,24(sp)
   11048:	00e5b823          	sd	a4,16(a1)
   1104c:	00e6bc23          	sd	a4,24(a3)
   11050:	02010113          	addi	sp,sp,32
   11054:	2390006f          	jal	zero,11a8c <__malloc_unlock>
   11058:	0a089263          	bne	a7,zero,110fc <_free_r+0x25c>
   1105c:	01863583          	ld	a1,24(a2)
   11060:	01063603          	ld	a2,16(a2)
   11064:	00f686b3          	add	a3,a3,a5
   11068:	0016e793          	ori	a5,a3,1
   1106c:	00b63c23          	sd	a1,24(a2)
   11070:	00c5b823          	sd	a2,16(a1)
   11074:	00f73423          	sd	a5,8(a4)
   11078:	00d70733          	add	a4,a4,a3
   1107c:	00d73023          	sd	a3,0(a4)
   11080:	f05ff06f          	jal	zero,10f84 <_free_r+0xe4>
   11084:	00d786b3          	add	a3,a5,a3
   11088:	02031063          	bne	t1,zero,110a8 <_free_r+0x208>
   1108c:	ff05b783          	ld	a5,-16(a1)
   11090:	40f70733          	sub	a4,a4,a5
   11094:	01073603          	ld	a2,16(a4)
   11098:	00f686b3          	add	a3,a3,a5
   1109c:	01873783          	ld	a5,24(a4)
   110a0:	00f63c23          	sd	a5,24(a2)
   110a4:	00c7b823          	sd	a2,16(a5)
   110a8:	0016e613          	ori	a2,a3,1
   110ac:	1981b783          	ld	a5,408(gp) # 139b0 <__malloc_trim_threshold>
   110b0:	00c73423          	sd	a2,8(a4)
   110b4:	00e83823          	sd	a4,16(a6)
   110b8:	ecf6e6e3          	bltu	a3,a5,10f84 <_free_r+0xe4>
   110bc:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   110c0:	00040513          	addi	a0,s0,0
   110c4:	cb9ff0ef          	jal	ra,10d7c <_malloc_trim_r>
   110c8:	ebdff06f          	jal	zero,10f84 <_free_r+0xe4>
   110cc:	00d787b3          	add	a5,a5,a3
   110d0:	ed9ff06f          	jal	zero,10fa8 <_free_r+0x108>
   110d4:	01400613          	addi	a2,zero,20
   110d8:	02d67a63          	bgeu	a2,a3,1110c <_free_r+0x26c>
   110dc:	05400613          	addi	a2,zero,84
   110e0:	06d66c63          	bltu	a2,a3,11158 <_free_r+0x2b8>
   110e4:	00c7d693          	srli	a3,a5,0xc
   110e8:	00169593          	slli	a1,a3,0x1
   110ec:	0de5859b          	addiw	a1,a1,222
   110f0:	00359593          	slli	a1,a1,0x3
   110f4:	06e6861b          	addiw	a2,a3,110
   110f8:	f11ff06f          	jal	zero,11008 <_free_r+0x168>
   110fc:	0017e693          	ori	a3,a5,1
   11100:	00d73423          	sd	a3,8(a4)
   11104:	00f63023          	sd	a5,0(a2)
   11108:	e7dff06f          	jal	zero,10f84 <_free_r+0xe4>
   1110c:	00169593          	slli	a1,a3,0x1
   11110:	0b85859b          	addiw	a1,a1,184
   11114:	00359593          	slli	a1,a1,0x3
   11118:	05b6861b          	addiw	a2,a3,91
   1111c:	eedff06f          	jal	zero,11008 <_free_r+0x168>
   11120:	02e83423          	sd	a4,40(a6)
   11124:	02e83023          	sd	a4,32(a6)
   11128:	00b73c23          	sd	a1,24(a4)
   1112c:	00b73823          	sd	a1,16(a4)
   11130:	01173423          	sd	a7,8(a4)
   11134:	00f53023          	sd	a5,0(a0)
   11138:	e4dff06f          	jal	zero,10f84 <_free_r+0xe4>
   1113c:	00883503          	ld	a0,8(a6)
   11140:	4026561b          	sraiw	a2,a2,0x2
   11144:	00100793          	addi	a5,zero,1
   11148:	00c797b3          	sll	a5,a5,a2
   1114c:	00a7e7b3          	or	a5,a5,a0
   11150:	00f83423          	sd	a5,8(a6)
   11154:	ee1ff06f          	jal	zero,11034 <_free_r+0x194>
   11158:	15400613          	addi	a2,zero,340
   1115c:	00d66e63          	bltu	a2,a3,11178 <_free_r+0x2d8>
   11160:	00f7d693          	srli	a3,a5,0xf
   11164:	00169593          	slli	a1,a3,0x1
   11168:	0f05859b          	addiw	a1,a1,240
   1116c:	00359593          	slli	a1,a1,0x3
   11170:	0776861b          	addiw	a2,a3,119
   11174:	e95ff06f          	jal	zero,11008 <_free_r+0x168>
   11178:	55400613          	addi	a2,zero,1364
   1117c:	00d66e63          	bltu	a2,a3,11198 <_free_r+0x2f8>
   11180:	0127d693          	srli	a3,a5,0x12
   11184:	00169593          	slli	a1,a3,0x1
   11188:	0fa5859b          	addiw	a1,a1,250
   1118c:	00359593          	slli	a1,a1,0x3
   11190:	07c6861b          	addiw	a2,a3,124
   11194:	e75ff06f          	jal	zero,11008 <_free_r+0x168>
   11198:	7f000593          	addi	a1,zero,2032
   1119c:	07e00613          	addi	a2,zero,126
   111a0:	e69ff06f          	jal	zero,11008 <_free_r+0x168>

00000000000111a4 <_malloc_r>:
   111a4:	fa010113          	addi	sp,sp,-96
   111a8:	04813823          	sd	s0,80(sp)
   111ac:	04113c23          	sd	ra,88(sp)
   111b0:	01758713          	addi	a4,a1,23
   111b4:	02e00793          	addi	a5,zero,46
   111b8:	00050413          	addi	s0,a0,0
   111bc:	08e7ee63          	bltu	a5,a4,11258 <_malloc_r+0xb4>
   111c0:	02000713          	addi	a4,zero,32
   111c4:	06b76c63          	bltu	a4,a1,1123c <_malloc_r+0x98>
   111c8:	0c1000ef          	jal	ra,11a88 <__malloc_lock>
   111cc:	02000713          	addi	a4,zero,32
   111d0:	05000693          	addi	a3,zero,80
   111d4:	00400893          	addi	a7,zero,4
   111d8:	00013837          	lui	a6,0x13
   111dc:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   111e0:	00d806b3          	add	a3,a6,a3
   111e4:	0086b783          	ld	a5,8(a3)
   111e8:	ff068613          	addi	a2,a3,-16
   111ec:	48c78063          	beq	a5,a2,1166c <_malloc_r+0x4c8>
   111f0:	0087b703          	ld	a4,8(a5)
   111f4:	0187b603          	ld	a2,24(a5)
   111f8:	0107b583          	ld	a1,16(a5)
   111fc:	ffc77713          	andi	a4,a4,-4
   11200:	00e78733          	add	a4,a5,a4
   11204:	00873683          	ld	a3,8(a4)
   11208:	00c5bc23          	sd	a2,24(a1)
   1120c:	00b63823          	sd	a1,16(a2)
   11210:	0016e693          	ori	a3,a3,1
   11214:	00040513          	addi	a0,s0,0
   11218:	00d73423          	sd	a3,8(a4)
   1121c:	00f13423          	sd	a5,8(sp)
   11220:	06d000ef          	jal	ra,11a8c <__malloc_unlock>
   11224:	00813783          	ld	a5,8(sp)
   11228:	05813083          	ld	ra,88(sp)
   1122c:	05013403          	ld	s0,80(sp)
   11230:	01078513          	addi	a0,a5,16
   11234:	06010113          	addi	sp,sp,96
   11238:	00008067          	jalr	zero,0(ra)
   1123c:	00c00793          	addi	a5,zero,12
   11240:	00f42023          	sw	a5,0(s0)
   11244:	00000513          	addi	a0,zero,0
   11248:	05813083          	ld	ra,88(sp)
   1124c:	05013403          	ld	s0,80(sp)
   11250:	06010113          	addi	sp,sp,96
   11254:	00008067          	jalr	zero,0(ra)
   11258:	00100793          	addi	a5,zero,1
   1125c:	ff077713          	andi	a4,a4,-16
   11260:	01f79793          	slli	a5,a5,0x1f
   11264:	fcf77ce3          	bgeu	a4,a5,1123c <_malloc_r+0x98>
   11268:	fcb76ae3          	bltu	a4,a1,1123c <_malloc_r+0x98>
   1126c:	00e13423          	sd	a4,8(sp)
   11270:	019000ef          	jal	ra,11a88 <__malloc_lock>
   11274:	00813703          	ld	a4,8(sp)
   11278:	1f700793          	addi	a5,zero,503
   1127c:	4ee7fa63          	bgeu	a5,a4,11770 <_malloc_r+0x5cc>
   11280:	00975793          	srli	a5,a4,0x9
   11284:	18078a63          	beq	a5,zero,11418 <_malloc_r+0x274>
   11288:	00400693          	addi	a3,zero,4
   1128c:	44f6ea63          	bltu	a3,a5,116e0 <_malloc_r+0x53c>
   11290:	00675793          	srli	a5,a4,0x6
   11294:	0397889b          	addiw	a7,a5,57
   11298:	0018951b          	slliw	a0,a7,0x1
   1129c:	03878e1b          	addiw	t3,a5,56
   112a0:	00351513          	slli	a0,a0,0x3
   112a4:	00013837          	lui	a6,0x13
   112a8:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   112ac:	00a80533          	add	a0,a6,a0
   112b0:	00853783          	ld	a5,8(a0)
   112b4:	ff050513          	addi	a0,a0,-16
   112b8:	02f50863          	beq	a0,a5,112e8 <_malloc_r+0x144>
   112bc:	01f00313          	addi	t1,zero,31
   112c0:	0140006f          	jal	zero,112d4 <_malloc_r+0x130>
   112c4:	0187b583          	ld	a1,24(a5)
   112c8:	36065263          	bge	a2,zero,1162c <_malloc_r+0x488>
   112cc:	00b50e63          	beq	a0,a1,112e8 <_malloc_r+0x144>
   112d0:	00058793          	addi	a5,a1,0
   112d4:	0087b683          	ld	a3,8(a5)
   112d8:	ffc6f693          	andi	a3,a3,-4
   112dc:	40e68633          	sub	a2,a3,a4
   112e0:	fec352e3          	bge	t1,a2,112c4 <_malloc_r+0x120>
   112e4:	000e0893          	addi	a7,t3,0
   112e8:	02083783          	ld	a5,32(a6)
   112ec:	00013e37          	lui	t3,0x13
   112f0:	198e0e13          	addi	t3,t3,408 # 13198 <__malloc_av_+0x10>
   112f4:	2fc78a63          	beq	a5,t3,115e8 <_malloc_r+0x444>
   112f8:	0087b303          	ld	t1,8(a5)
   112fc:	01f00613          	addi	a2,zero,31
   11300:	ffc37313          	andi	t1,t1,-4
   11304:	40e306b3          	sub	a3,t1,a4
   11308:	4ad64463          	blt	a2,a3,117b0 <_malloc_r+0x60c>
   1130c:	03c83423          	sd	t3,40(a6)
   11310:	03c83023          	sd	t3,32(a6)
   11314:	4606da63          	bge	a3,zero,11788 <_malloc_r+0x5e4>
   11318:	1ff00693          	addi	a3,zero,511
   1131c:	00883583          	ld	a1,8(a6)
   11320:	3466ee63          	bltu	a3,t1,1167c <_malloc_r+0x4d8>
   11324:	00335313          	srli	t1,t1,0x3
   11328:	00131693          	slli	a3,t1,0x1
   1132c:	0026869b          	addiw	a3,a3,2
   11330:	00369693          	slli	a3,a3,0x3
   11334:	00d806b3          	add	a3,a6,a3
   11338:	0006b503          	ld	a0,0(a3)
   1133c:	4023531b          	sraiw	t1,t1,0x2
   11340:	00100613          	addi	a2,zero,1
   11344:	00661633          	sll	a2,a2,t1
   11348:	00c5e5b3          	or	a1,a1,a2
   1134c:	ff068613          	addi	a2,a3,-16
   11350:	00a7b823          	sd	a0,16(a5)
   11354:	00c7bc23          	sd	a2,24(a5)
   11358:	00b83423          	sd	a1,8(a6)
   1135c:	00f6b023          	sd	a5,0(a3)
   11360:	00f53c23          	sd	a5,24(a0)
   11364:	4028d79b          	sraiw	a5,a7,0x2
   11368:	00100513          	addi	a0,zero,1
   1136c:	00f51533          	sll	a0,a0,a5
   11370:	0aa5ec63          	bltu	a1,a0,11428 <_malloc_r+0x284>
   11374:	00b577b3          	and	a5,a0,a1
   11378:	02079463          	bne	a5,zero,113a0 <_malloc_r+0x1fc>
   1137c:	00151513          	slli	a0,a0,0x1
   11380:	ffc8f893          	andi	a7,a7,-4
   11384:	00b577b3          	and	a5,a0,a1
   11388:	0048889b          	addiw	a7,a7,4
   1138c:	00079a63          	bne	a5,zero,113a0 <_malloc_r+0x1fc>
   11390:	00151513          	slli	a0,a0,0x1
   11394:	00b577b3          	and	a5,a0,a1
   11398:	0048889b          	addiw	a7,a7,4
   1139c:	fe078ae3          	beq	a5,zero,11390 <_malloc_r+0x1ec>
   113a0:	01f00e93          	addi	t4,zero,31
   113a4:	00189f13          	slli	t5,a7,0x1
   113a8:	002f0f1b          	addiw	t5,t5,2
   113ac:	003f1f13          	slli	t5,t5,0x3
   113b0:	ff0f0f13          	addi	t5,t5,-16
   113b4:	01e80f33          	add	t5,a6,t5
   113b8:	000f0313          	addi	t1,t5,0
   113bc:	01833683          	ld	a3,24(t1)
   113c0:	00088f93          	addi	t6,a7,0
   113c4:	34d30263          	beq	t1,a3,11708 <_malloc_r+0x564>
   113c8:	0086b603          	ld	a2,8(a3)
   113cc:	00068793          	addi	a5,a3,0
   113d0:	0186b683          	ld	a3,24(a3)
   113d4:	ffc67613          	andi	a2,a2,-4
   113d8:	40e605b3          	sub	a1,a2,a4
   113dc:	34bec263          	blt	t4,a1,11720 <_malloc_r+0x57c>
   113e0:	fe05c2e3          	blt	a1,zero,113c4 <_malloc_r+0x220>
   113e4:	00c78633          	add	a2,a5,a2
   113e8:	00863703          	ld	a4,8(a2)
   113ec:	0107b583          	ld	a1,16(a5)
   113f0:	00040513          	addi	a0,s0,0
   113f4:	00176713          	ori	a4,a4,1
   113f8:	00e63423          	sd	a4,8(a2)
   113fc:	00d5bc23          	sd	a3,24(a1)
   11400:	00b6b823          	sd	a1,16(a3)
   11404:	00f13423          	sd	a5,8(sp)
   11408:	684000ef          	jal	ra,11a8c <__malloc_unlock>
   1140c:	00813783          	ld	a5,8(sp)
   11410:	01078513          	addi	a0,a5,16
   11414:	e35ff06f          	jal	zero,11248 <_malloc_r+0xa4>
   11418:	40000513          	addi	a0,zero,1024
   1141c:	04000893          	addi	a7,zero,64
   11420:	03f00e13          	addi	t3,zero,63
   11424:	e81ff06f          	jal	zero,112a4 <_malloc_r+0x100>
   11428:	01083783          	ld	a5,16(a6)
   1142c:	0087b683          	ld	a3,8(a5)
   11430:	ffc6f893          	andi	a7,a3,-4
   11434:	40e88633          	sub	a2,a7,a4
   11438:	00e8e663          	bltu	a7,a4,11444 <_malloc_r+0x2a0>
   1143c:	02062693          	slti	a3,a2,32
   11440:	1a068863          	beq	a3,zero,115f0 <_malloc_r+0x44c>
   11444:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   11448:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   1144c:	fff00693          	addi	a3,zero,-1
   11450:	00b705b3          	add	a1,a4,a1
   11454:	44d60663          	beq	a2,a3,118a0 <_malloc_r+0x6fc>
   11458:	000016b7          	lui	a3,0x1
   1145c:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   11460:	00d585b3          	add	a1,a1,a3
   11464:	fffff6b7          	lui	a3,0xfffff
   11468:	00d5f5b3          	and	a1,a1,a3
   1146c:	00040513          	addi	a0,s0,0
   11470:	03013423          	sd	a6,40(sp)
   11474:	02f13023          	sd	a5,32(sp)
   11478:	00e13c23          	sd	a4,24(sp)
   1147c:	01113823          	sd	a7,16(sp)
   11480:	00b13423          	sd	a1,8(sp)
   11484:	6fd000ef          	jal	ra,12380 <_sbrk_r>
   11488:	fff00693          	addi	a3,zero,-1
   1148c:	00813583          	ld	a1,8(sp)
   11490:	01013883          	ld	a7,16(sp)
   11494:	01813703          	ld	a4,24(sp)
   11498:	02013783          	ld	a5,32(sp)
   1149c:	02813803          	ld	a6,40(sp)
   114a0:	00050313          	addi	t1,a0,0
   114a4:	36d50663          	beq	a0,a3,11810 <_malloc_r+0x66c>
   114a8:	011786b3          	add	a3,a5,a7
   114ac:	36d56063          	bltu	a0,a3,1180c <_malloc_r+0x668>
   114b0:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   114b4:	000e2603          	lw	a2,0(t3)
   114b8:	00b6063b          	addw	a2,a2,a1
   114bc:	00ce2023          	sw	a2,0(t3)
   114c0:	00060513          	addi	a0,a2,0
   114c4:	4a668c63          	beq	a3,t1,1197c <_malloc_r+0x7d8>
   114c8:	1901bf03          	ld	t5,400(gp) # 139a8 <__malloc_sbrk_base>
   114cc:	fff00613          	addi	a2,zero,-1
   114d0:	4ccf0463          	beq	t5,a2,11998 <_malloc_r+0x7f4>
   114d4:	40d306b3          	sub	a3,t1,a3
   114d8:	00a686bb          	addw	a3,a3,a0
   114dc:	00de2023          	sw	a3,0(t3)
   114e0:	00f37e93          	andi	t4,t1,15
   114e4:	3c0e8e63          	beq	t4,zero,118c0 <_malloc_r+0x71c>
   114e8:	ff037313          	andi	t1,t1,-16
   114ec:	000016b7          	lui	a3,0x1
   114f0:	01030313          	addi	t1,t1,16
   114f4:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   114f8:	00b30633          	add	a2,t1,a1
   114fc:	41d685b3          	sub	a1,a3,t4
   11500:	40c585b3          	sub	a1,a1,a2
   11504:	03459593          	slli	a1,a1,0x34
   11508:	0345d593          	srli	a1,a1,0x34
   1150c:	00040513          	addi	a0,s0,0
   11510:	05c13023          	sd	t3,64(sp)
   11514:	03013c23          	sd	a6,56(sp)
   11518:	02f13823          	sd	a5,48(sp)
   1151c:	02e13423          	sd	a4,40(sp)
   11520:	03113023          	sd	a7,32(sp)
   11524:	00613c23          	sd	t1,24(sp)
   11528:	01d13823          	sd	t4,16(sp)
   1152c:	00c13423          	sd	a2,8(sp)
   11530:	04b13423          	sd	a1,72(sp)
   11534:	64d000ef          	jal	ra,12380 <_sbrk_r>
   11538:	00050693          	addi	a3,a0,0
   1153c:	fff00513          	addi	a0,zero,-1
   11540:	00813603          	ld	a2,8(sp)
   11544:	01013e83          	ld	t4,16(sp)
   11548:	01813303          	ld	t1,24(sp)
   1154c:	02013883          	ld	a7,32(sp)
   11550:	02813703          	ld	a4,40(sp)
   11554:	03013783          	ld	a5,48(sp)
   11558:	03813803          	ld	a6,56(sp)
   1155c:	04013e03          	ld	t3,64(sp)
   11560:	48a68663          	beq	a3,a0,119ec <_malloc_r+0x848>
   11564:	04813583          	ld	a1,72(sp)
   11568:	0005851b          	addiw	a0,a1,0
   1156c:	000e2603          	lw	a2,0(t3)
   11570:	406686b3          	sub	a3,a3,t1
   11574:	00b686b3          	add	a3,a3,a1
   11578:	0016e693          	ori	a3,a3,1
   1157c:	00683823          	sd	t1,16(a6)
   11580:	00a6063b          	addw	a2,a2,a0
   11584:	00d33423          	sd	a3,8(t1)
   11588:	00ce2023          	sw	a2,0(t3)
   1158c:	03078e63          	beq	a5,a6,115c8 <_malloc_r+0x424>
   11590:	01f00513          	addi	a0,zero,31
   11594:	41157663          	bgeu	a0,a7,119a0 <_malloc_r+0x7fc>
   11598:	0087b583          	ld	a1,8(a5)
   1159c:	fe888693          	addi	a3,a7,-24
   115a0:	ff06f693          	andi	a3,a3,-16
   115a4:	0015f593          	andi	a1,a1,1
   115a8:	00d5e5b3          	or	a1,a1,a3
   115ac:	00b7b423          	sd	a1,8(a5)
   115b0:	00900893          	addi	a7,zero,9
   115b4:	00d785b3          	add	a1,a5,a3
   115b8:	0115b423          	sd	a7,8(a1)
   115bc:	0115b823          	sd	a7,16(a1)
   115c0:	44d56863          	bltu	a0,a3,11a10 <_malloc_r+0x86c>
   115c4:	00833683          	ld	a3,8(t1)
   115c8:	1c01b583          	ld	a1,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   115cc:	00c5f463          	bgeu	a1,a2,115d4 <_malloc_r+0x430>
   115d0:	1cc1b023          	sd	a2,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   115d4:	1b81b583          	ld	a1,440(gp) # 139d0 <__malloc_max_total_mem>
   115d8:	00c5f463          	bgeu	a1,a2,115e0 <_malloc_r+0x43c>
   115dc:	1ac1bc23          	sd	a2,440(gp) # 139d0 <__malloc_max_total_mem>
   115e0:	00030793          	addi	a5,t1,0
   115e4:	2340006f          	jal	zero,11818 <_malloc_r+0x674>
   115e8:	00883583          	ld	a1,8(a6)
   115ec:	d79ff06f          	jal	zero,11364 <_malloc_r+0x1c0>
   115f0:	00176693          	ori	a3,a4,1
   115f4:	00d7b423          	sd	a3,8(a5)
   115f8:	00e78733          	add	a4,a5,a4
   115fc:	00166613          	ori	a2,a2,1
   11600:	00e83823          	sd	a4,16(a6)
   11604:	00040513          	addi	a0,s0,0
   11608:	00c73423          	sd	a2,8(a4)
   1160c:	00f13423          	sd	a5,8(sp)
   11610:	47c000ef          	jal	ra,11a8c <__malloc_unlock>
   11614:	00813783          	ld	a5,8(sp)
   11618:	05813083          	ld	ra,88(sp)
   1161c:	05013403          	ld	s0,80(sp)
   11620:	01078513          	addi	a0,a5,16
   11624:	06010113          	addi	sp,sp,96
   11628:	00008067          	jalr	zero,0(ra)
   1162c:	0107b603          	ld	a2,16(a5)
   11630:	00d786b3          	add	a3,a5,a3
   11634:	0086b703          	ld	a4,8(a3)
   11638:	00b63c23          	sd	a1,24(a2)
   1163c:	00c5b823          	sd	a2,16(a1)
   11640:	00176713          	ori	a4,a4,1
   11644:	00040513          	addi	a0,s0,0
   11648:	00e6b423          	sd	a4,8(a3)
   1164c:	00f13423          	sd	a5,8(sp)
   11650:	43c000ef          	jal	ra,11a8c <__malloc_unlock>
   11654:	00813783          	ld	a5,8(sp)
   11658:	05813083          	ld	ra,88(sp)
   1165c:	05013403          	ld	s0,80(sp)
   11660:	01078513          	addi	a0,a5,16
   11664:	06010113          	addi	sp,sp,96
   11668:	00008067          	jalr	zero,0(ra)
   1166c:	0186b783          	ld	a5,24(a3)
   11670:	0028889b          	addiw	a7,a7,2
   11674:	c6f68ae3          	beq	a3,a5,112e8 <_malloc_r+0x144>
   11678:	b79ff06f          	jal	zero,111f0 <_malloc_r+0x4c>
   1167c:	00935693          	srli	a3,t1,0x9
   11680:	00400613          	addi	a2,zero,4
   11684:	16d67863          	bgeu	a2,a3,117f4 <_malloc_r+0x650>
   11688:	01400613          	addi	a2,zero,20
   1168c:	28d66e63          	bltu	a2,a3,11928 <_malloc_r+0x784>
   11690:	00169513          	slli	a0,a3,0x1
   11694:	0b85051b          	addiw	a0,a0,184
   11698:	00351513          	slli	a0,a0,0x3
   1169c:	05b6861b          	addiw	a2,a3,91
   116a0:	00a80533          	add	a0,a6,a0
   116a4:	00053683          	ld	a3,0(a0)
   116a8:	ff050513          	addi	a0,a0,-16
   116ac:	00d51863          	bne	a0,a3,116bc <_malloc_r+0x518>
   116b0:	1f80006f          	jal	zero,118a8 <_malloc_r+0x704>
   116b4:	0106b683          	ld	a3,16(a3)
   116b8:	00d50863          	beq	a0,a3,116c8 <_malloc_r+0x524>
   116bc:	0086b603          	ld	a2,8(a3)
   116c0:	ffc67613          	andi	a2,a2,-4
   116c4:	fec368e3          	bltu	t1,a2,116b4 <_malloc_r+0x510>
   116c8:	0186b503          	ld	a0,24(a3)
   116cc:	00a7bc23          	sd	a0,24(a5)
   116d0:	00d7b823          	sd	a3,16(a5)
   116d4:	00f53823          	sd	a5,16(a0)
   116d8:	00f6bc23          	sd	a5,24(a3)
   116dc:	c89ff06f          	jal	zero,11364 <_malloc_r+0x1c0>
   116e0:	01400693          	addi	a3,zero,20
   116e4:	14f6fa63          	bgeu	a3,a5,11838 <_malloc_r+0x694>
   116e8:	05400693          	addi	a3,zero,84
   116ec:	24f6ee63          	bltu	a3,a5,11948 <_malloc_r+0x7a4>
   116f0:	00c75793          	srli	a5,a4,0xc
   116f4:	06f7889b          	addiw	a7,a5,111
   116f8:	0018951b          	slliw	a0,a7,0x1
   116fc:	06e78e1b          	addiw	t3,a5,110
   11700:	00351513          	slli	a0,a0,0x3
   11704:	ba1ff06f          	jal	zero,112a4 <_malloc_r+0x100>
   11708:	001f8f9b          	addiw	t6,t6,1
   1170c:	003ff793          	andi	a5,t6,3
   11710:	01030313          	addi	t1,t1,16
   11714:	14078263          	beq	a5,zero,11858 <_malloc_r+0x6b4>
   11718:	01833683          	ld	a3,24(t1)
   1171c:	ca9ff06f          	jal	zero,113c4 <_malloc_r+0x220>
   11720:	0107b503          	ld	a0,16(a5)
   11724:	00176893          	ori	a7,a4,1
   11728:	0117b423          	sd	a7,8(a5)
   1172c:	00d53c23          	sd	a3,24(a0)
   11730:	00a6b823          	sd	a0,16(a3)
   11734:	00e78733          	add	a4,a5,a4
   11738:	02e83423          	sd	a4,40(a6)
   1173c:	02e83023          	sd	a4,32(a6)
   11740:	0015e693          	ori	a3,a1,1
   11744:	00c78633          	add	a2,a5,a2
   11748:	01c73c23          	sd	t3,24(a4)
   1174c:	01c73823          	sd	t3,16(a4)
   11750:	00d73423          	sd	a3,8(a4)
   11754:	00040513          	addi	a0,s0,0
   11758:	00b63023          	sd	a1,0(a2)
   1175c:	00f13423          	sd	a5,8(sp)
   11760:	32c000ef          	jal	ra,11a8c <__malloc_unlock>
   11764:	00813783          	ld	a5,8(sp)
   11768:	01078513          	addi	a0,a5,16
   1176c:	addff06f          	jal	zero,11248 <_malloc_r+0xa4>
   11770:	00375893          	srli	a7,a4,0x3
   11774:	00189693          	slli	a3,a7,0x1
   11778:	0026869b          	addiw	a3,a3,2
   1177c:	00369693          	slli	a3,a3,0x3
   11780:	0008889b          	addiw	a7,a7,0
   11784:	a55ff06f          	jal	zero,111d8 <_malloc_r+0x34>
   11788:	00678333          	add	t1,a5,t1
   1178c:	00833703          	ld	a4,8(t1)
   11790:	00040513          	addi	a0,s0,0
   11794:	00f13423          	sd	a5,8(sp)
   11798:	00176713          	ori	a4,a4,1
   1179c:	00e33423          	sd	a4,8(t1)
   117a0:	2ec000ef          	jal	ra,11a8c <__malloc_unlock>
   117a4:	00813783          	ld	a5,8(sp)
   117a8:	01078513          	addi	a0,a5,16
   117ac:	a9dff06f          	jal	zero,11248 <_malloc_r+0xa4>
   117b0:	00176613          	ori	a2,a4,1
   117b4:	00c7b423          	sd	a2,8(a5)
   117b8:	00e78733          	add	a4,a5,a4
   117bc:	02e83423          	sd	a4,40(a6)
   117c0:	02e83023          	sd	a4,32(a6)
   117c4:	0016e613          	ori	a2,a3,1
   117c8:	00678333          	add	t1,a5,t1
   117cc:	01c73c23          	sd	t3,24(a4)
   117d0:	01c73823          	sd	t3,16(a4)
   117d4:	00c73423          	sd	a2,8(a4)
   117d8:	00040513          	addi	a0,s0,0
   117dc:	00d33023          	sd	a3,0(t1)
   117e0:	00f13423          	sd	a5,8(sp)
   117e4:	2a8000ef          	jal	ra,11a8c <__malloc_unlock>
   117e8:	00813783          	ld	a5,8(sp)
   117ec:	01078513          	addi	a0,a5,16
   117f0:	a59ff06f          	jal	zero,11248 <_malloc_r+0xa4>
   117f4:	00635693          	srli	a3,t1,0x6
   117f8:	00169513          	slli	a0,a3,0x1
   117fc:	0725051b          	addiw	a0,a0,114
   11800:	00351513          	slli	a0,a0,0x3
   11804:	0386861b          	addiw	a2,a3,56
   11808:	e99ff06f          	jal	zero,116a0 <_malloc_r+0x4fc>
   1180c:	15078e63          	beq	a5,a6,11968 <_malloc_r+0x7c4>
   11810:	01083783          	ld	a5,16(a6)
   11814:	0087b683          	ld	a3,8(a5)
   11818:	ffc6f693          	andi	a3,a3,-4
   1181c:	40e68633          	sub	a2,a3,a4
   11820:	00e6e663          	bltu	a3,a4,1182c <_malloc_r+0x688>
   11824:	02062693          	slti	a3,a2,32
   11828:	dc0684e3          	beq	a3,zero,115f0 <_malloc_r+0x44c>
   1182c:	00040513          	addi	a0,s0,0
   11830:	25c000ef          	jal	ra,11a8c <__malloc_unlock>
   11834:	a11ff06f          	jal	zero,11244 <_malloc_r+0xa0>
   11838:	05c7889b          	addiw	a7,a5,92
   1183c:	0018951b          	slliw	a0,a7,0x1
   11840:	05b78e1b          	addiw	t3,a5,91
   11844:	00351513          	slli	a0,a0,0x3
   11848:	a5dff06f          	jal	zero,112a4 <_malloc_r+0x100>
   1184c:	010f3783          	ld	a5,16(t5)
   11850:	fff8889b          	addiw	a7,a7,-1
   11854:	23e79663          	bne	a5,t5,11a80 <_malloc_r+0x8dc>
   11858:	0038f793          	andi	a5,a7,3
   1185c:	ff0f0f13          	addi	t5,t5,-16
   11860:	fe0796e3          	bne	a5,zero,1184c <_malloc_r+0x6a8>
   11864:	00883683          	ld	a3,8(a6)
   11868:	fff54793          	xori	a5,a0,-1
   1186c:	00d7f7b3          	and	a5,a5,a3
   11870:	00f83423          	sd	a5,8(a6)
   11874:	00151513          	slli	a0,a0,0x1
   11878:	fff50693          	addi	a3,a0,-1
   1187c:	baf6f6e3          	bgeu	a3,a5,11428 <_malloc_r+0x284>
   11880:	00f576b3          	and	a3,a0,a5
   11884:	00069a63          	bne	a3,zero,11898 <_malloc_r+0x6f4>
   11888:	00151513          	slli	a0,a0,0x1
   1188c:	00f576b3          	and	a3,a0,a5
   11890:	004f8f9b          	addiw	t6,t6,4
   11894:	fe068ae3          	beq	a3,zero,11888 <_malloc_r+0x6e4>
   11898:	000f8893          	addi	a7,t6,0
   1189c:	b09ff06f          	jal	zero,113a4 <_malloc_r+0x200>
   118a0:	02058593          	addi	a1,a1,32
   118a4:	bc9ff06f          	jal	zero,1146c <_malloc_r+0x2c8>
   118a8:	4026561b          	sraiw	a2,a2,0x2
   118ac:	00100313          	addi	t1,zero,1
   118b0:	00c31633          	sll	a2,t1,a2
   118b4:	00c5e5b3          	or	a1,a1,a2
   118b8:	00b83423          	sd	a1,8(a6)
   118bc:	e11ff06f          	jal	zero,116cc <_malloc_r+0x528>
   118c0:	00b30633          	add	a2,t1,a1
   118c4:	40c005b3          	sub	a1,zero,a2
   118c8:	03459593          	slli	a1,a1,0x34
   118cc:	0345d593          	srli	a1,a1,0x34
   118d0:	00040513          	addi	a0,s0,0
   118d4:	03c13c23          	sd	t3,56(sp)
   118d8:	03013823          	sd	a6,48(sp)
   118dc:	02f13423          	sd	a5,40(sp)
   118e0:	02e13023          	sd	a4,32(sp)
   118e4:	01113c23          	sd	a7,24(sp)
   118e8:	00613823          	sd	t1,16(sp)
   118ec:	00c13423          	sd	a2,8(sp)
   118f0:	04b13023          	sd	a1,64(sp)
   118f4:	28d000ef          	jal	ra,12380 <_sbrk_r>
   118f8:	00050693          	addi	a3,a0,0
   118fc:	fff00513          	addi	a0,zero,-1
   11900:	01013303          	ld	t1,16(sp)
   11904:	01813883          	ld	a7,24(sp)
   11908:	02013703          	ld	a4,32(sp)
   1190c:	02813783          	ld	a5,40(sp)
   11910:	03013803          	ld	a6,48(sp)
   11914:	03813e03          	ld	t3,56(sp)
   11918:	0ea68463          	beq	a3,a0,11a00 <_malloc_r+0x85c>
   1191c:	04013583          	ld	a1,64(sp)
   11920:	0005851b          	addiw	a0,a1,0
   11924:	c49ff06f          	jal	zero,1156c <_malloc_r+0x3c8>
   11928:	05400613          	addi	a2,zero,84
   1192c:	08d66063          	bltu	a2,a3,119ac <_malloc_r+0x808>
   11930:	00c35693          	srli	a3,t1,0xc
   11934:	00169513          	slli	a0,a3,0x1
   11938:	0de5051b          	addiw	a0,a0,222
   1193c:	00351513          	slli	a0,a0,0x3
   11940:	06e6861b          	addiw	a2,a3,110
   11944:	d5dff06f          	jal	zero,116a0 <_malloc_r+0x4fc>
   11948:	15400693          	addi	a3,zero,340
   1194c:	08f6e063          	bltu	a3,a5,119cc <_malloc_r+0x828>
   11950:	00f75793          	srli	a5,a4,0xf
   11954:	0787889b          	addiw	a7,a5,120
   11958:	0018951b          	slliw	a0,a7,0x1
   1195c:	07778e1b          	addiw	t3,a5,119
   11960:	00351513          	slli	a0,a0,0x3
   11964:	941ff06f          	jal	zero,112a4 <_malloc_r+0x100>
   11968:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   1196c:	000e2503          	lw	a0,0(t3)
   11970:	00b5053b          	addw	a0,a0,a1
   11974:	00ae2023          	sw	a0,0(t3)
   11978:	b51ff06f          	jal	zero,114c8 <_malloc_r+0x324>
   1197c:	03431f13          	slli	t5,t1,0x34
   11980:	b40f14e3          	bne	t5,zero,114c8 <_malloc_r+0x324>
   11984:	01083303          	ld	t1,16(a6)
   11988:	00b885b3          	add	a1,a7,a1
   1198c:	0015e693          	ori	a3,a1,1
   11990:	00d33423          	sd	a3,8(t1)
   11994:	c35ff06f          	jal	zero,115c8 <_malloc_r+0x424>
   11998:	1861b823          	sd	t1,400(gp) # 139a8 <__malloc_sbrk_base>
   1199c:	b45ff06f          	jal	zero,114e0 <_malloc_r+0x33c>
   119a0:	00100793          	addi	a5,zero,1
   119a4:	00f33423          	sd	a5,8(t1)
   119a8:	e85ff06f          	jal	zero,1182c <_malloc_r+0x688>
   119ac:	15400613          	addi	a2,zero,340
   119b0:	08d66a63          	bltu	a2,a3,11a44 <_malloc_r+0x8a0>
   119b4:	00f35693          	srli	a3,t1,0xf
   119b8:	00169513          	slli	a0,a3,0x1
   119bc:	0f05051b          	addiw	a0,a0,240
   119c0:	00351513          	slli	a0,a0,0x3
   119c4:	0776861b          	addiw	a2,a3,119
   119c8:	cd9ff06f          	jal	zero,116a0 <_malloc_r+0x4fc>
   119cc:	55400693          	addi	a3,zero,1364
   119d0:	08f6ea63          	bltu	a3,a5,11a64 <_malloc_r+0x8c0>
   119d4:	01275793          	srli	a5,a4,0x12
   119d8:	07d7889b          	addiw	a7,a5,125
   119dc:	0018951b          	slliw	a0,a7,0x1
   119e0:	07c78e1b          	addiw	t3,a5,124
   119e4:	00351513          	slli	a0,a0,0x3
   119e8:	8bdff06f          	jal	zero,112a4 <_malloc_r+0x100>
   119ec:	ff0e8e93          	addi	t4,t4,-16
   119f0:	01d606b3          	add	a3,a2,t4
   119f4:	00000513          	addi	a0,zero,0
   119f8:	00000593          	addi	a1,zero,0
   119fc:	b71ff06f          	jal	zero,1156c <_malloc_r+0x3c8>
   11a00:	00813683          	ld	a3,8(sp)
   11a04:	00000593          	addi	a1,zero,0
   11a08:	00000513          	addi	a0,zero,0
   11a0c:	b61ff06f          	jal	zero,1156c <_malloc_r+0x3c8>
   11a10:	01078593          	addi	a1,a5,16
   11a14:	00040513          	addi	a0,s0,0
   11a18:	01c13c23          	sd	t3,24(sp)
   11a1c:	01013823          	sd	a6,16(sp)
   11a20:	00e13423          	sd	a4,8(sp)
   11a24:	c7cff0ef          	jal	ra,10ea0 <_free_r>
   11a28:	01013803          	ld	a6,16(sp)
   11a2c:	01813e03          	ld	t3,24(sp)
   11a30:	00813703          	ld	a4,8(sp)
   11a34:	01083303          	ld	t1,16(a6)
   11a38:	000e2603          	lw	a2,0(t3)
   11a3c:	00833683          	ld	a3,8(t1)
   11a40:	b89ff06f          	jal	zero,115c8 <_malloc_r+0x424>
   11a44:	55400613          	addi	a2,zero,1364
   11a48:	02d66663          	bltu	a2,a3,11a74 <_malloc_r+0x8d0>
   11a4c:	01235693          	srli	a3,t1,0x12
   11a50:	00169513          	slli	a0,a3,0x1
   11a54:	0fa5051b          	addiw	a0,a0,250
   11a58:	00351513          	slli	a0,a0,0x3
   11a5c:	07c6861b          	addiw	a2,a3,124
   11a60:	c41ff06f          	jal	zero,116a0 <_malloc_r+0x4fc>
   11a64:	7f000513          	addi	a0,zero,2032
   11a68:	07f00893          	addi	a7,zero,127
   11a6c:	07e00e13          	addi	t3,zero,126
   11a70:	835ff06f          	jal	zero,112a4 <_malloc_r+0x100>
   11a74:	7f000513          	addi	a0,zero,2032
   11a78:	07e00613          	addi	a2,zero,126
   11a7c:	c25ff06f          	jal	zero,116a0 <_malloc_r+0x4fc>
   11a80:	00883783          	ld	a5,8(a6)
   11a84:	df1ff06f          	jal	zero,11874 <_malloc_r+0x6d0>

0000000000011a88 <__malloc_lock>:
   11a88:	00008067          	jalr	zero,0(ra)

0000000000011a8c <__malloc_unlock>:
   11a8c:	00008067          	jalr	zero,0(ra)

0000000000011a90 <_fclose_r>:
   11a90:	fe010113          	addi	sp,sp,-32
   11a94:	00113c23          	sd	ra,24(sp)
   11a98:	01213023          	sd	s2,0(sp)
   11a9c:	02058863          	beq	a1,zero,11acc <_fclose_r+0x3c>
   11aa0:	00813823          	sd	s0,16(sp)
   11aa4:	00913423          	sd	s1,8(sp)
   11aa8:	00058413          	addi	s0,a1,0
   11aac:	00050493          	addi	s1,a0,0
   11ab0:	00050663          	beq	a0,zero,11abc <_fclose_r+0x2c>
   11ab4:	04853783          	ld	a5,72(a0)
   11ab8:	0c078c63          	beq	a5,zero,11b90 <_fclose_r+0x100>
   11abc:	01041783          	lh	a5,16(s0)
   11ac0:	02079263          	bne	a5,zero,11ae4 <_fclose_r+0x54>
   11ac4:	01013403          	ld	s0,16(sp)
   11ac8:	00813483          	ld	s1,8(sp)
   11acc:	01813083          	ld	ra,24(sp)
   11ad0:	00000913          	addi	s2,zero,0
   11ad4:	00090513          	addi	a0,s2,0
   11ad8:	00013903          	ld	s2,0(sp)
   11adc:	02010113          	addi	sp,sp,32
   11ae0:	00008067          	jalr	zero,0(ra)
   11ae4:	00040593          	addi	a1,s0,0
   11ae8:	00048513          	addi	a0,s1,0
   11aec:	0b8000ef          	jal	ra,11ba4 <__sflush_r>
   11af0:	05043783          	ld	a5,80(s0)
   11af4:	00050913          	addi	s2,a0,0
   11af8:	00078a63          	beq	a5,zero,11b0c <_fclose_r+0x7c>
   11afc:	03043583          	ld	a1,48(s0)
   11b00:	00048513          	addi	a0,s1,0
   11b04:	000780e7          	jalr	ra,0(a5)
   11b08:	06054463          	blt	a0,zero,11b70 <_fclose_r+0xe0>
   11b0c:	01045783          	lhu	a5,16(s0)
   11b10:	0807f793          	andi	a5,a5,128
   11b14:	06079663          	bne	a5,zero,11b80 <_fclose_r+0xf0>
   11b18:	05843583          	ld	a1,88(s0)
   11b1c:	00058c63          	beq	a1,zero,11b34 <_fclose_r+0xa4>
   11b20:	07440793          	addi	a5,s0,116
   11b24:	00f58663          	beq	a1,a5,11b30 <_fclose_r+0xa0>
   11b28:	00048513          	addi	a0,s1,0
   11b2c:	b74ff0ef          	jal	ra,10ea0 <_free_r>
   11b30:	04043c23          	sd	zero,88(s0)
   11b34:	07843583          	ld	a1,120(s0)
   11b38:	00058863          	beq	a1,zero,11b48 <_fclose_r+0xb8>
   11b3c:	00048513          	addi	a0,s1,0
   11b40:	b60ff0ef          	jal	ra,10ea0 <_free_r>
   11b44:	06043c23          	sd	zero,120(s0)
   11b48:	a85fe0ef          	jal	ra,105cc <__sfp_lock_acquire>
   11b4c:	00041823          	sh	zero,16(s0)
   11b50:	a81fe0ef          	jal	ra,105d0 <__sfp_lock_release>
   11b54:	01813083          	ld	ra,24(sp)
   11b58:	01013403          	ld	s0,16(sp)
   11b5c:	00813483          	ld	s1,8(sp)
   11b60:	00090513          	addi	a0,s2,0
   11b64:	00013903          	ld	s2,0(sp)
   11b68:	02010113          	addi	sp,sp,32
   11b6c:	00008067          	jalr	zero,0(ra)
   11b70:	01045783          	lhu	a5,16(s0)
   11b74:	fff00913          	addi	s2,zero,-1
   11b78:	0807f793          	andi	a5,a5,128
   11b7c:	f8078ee3          	beq	a5,zero,11b18 <_fclose_r+0x88>
   11b80:	01843583          	ld	a1,24(s0)
   11b84:	00048513          	addi	a0,s1,0
   11b88:	b18ff0ef          	jal	ra,10ea0 <_free_r>
   11b8c:	f8dff06f          	jal	zero,11b18 <_fclose_r+0x88>
   11b90:	a19fe0ef          	jal	ra,105a8 <__sinit>
   11b94:	f29ff06f          	jal	zero,11abc <_fclose_r+0x2c>

0000000000011b98 <fclose>:
   11b98:	00050593          	addi	a1,a0,0
   11b9c:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11ba0:	ef1ff06f          	jal	zero,11a90 <_fclose_r>

0000000000011ba4 <__sflush_r>:
   11ba4:	01059703          	lh	a4,16(a1)
   11ba8:	fd010113          	addi	sp,sp,-48
   11bac:	02813023          	sd	s0,32(sp)
   11bb0:	01313423          	sd	s3,8(sp)
   11bb4:	02113423          	sd	ra,40(sp)
   11bb8:	00877793          	andi	a5,a4,8
   11bbc:	00058413          	addi	s0,a1,0
   11bc0:	00050993          	addi	s3,a0,0
   11bc4:	12079263          	bne	a5,zero,11ce8 <__sflush_r+0x144>
   11bc8:	000017b7          	lui	a5,0x1
   11bcc:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   11bd0:	0085a683          	lw	a3,8(a1)
   11bd4:	00f767b3          	or	a5,a4,a5
   11bd8:	00f59823          	sh	a5,16(a1)
   11bdc:	18d05c63          	bge	zero,a3,11d74 <__sflush_r+0x1d0>
   11be0:	04843803          	ld	a6,72(s0)
   11be4:	0e080663          	beq	a6,zero,11cd0 <__sflush_r+0x12c>
   11be8:	00913c23          	sd	s1,24(sp)
   11bec:	03371693          	slli	a3,a4,0x33
   11bf0:	0009a483          	lw	s1,0(s3)
   11bf4:	0009a023          	sw	zero,0(s3)
   11bf8:	1806ca63          	blt	a3,zero,11d8c <__sflush_r+0x1e8>
   11bfc:	03043583          	ld	a1,48(s0)
   11c00:	00000613          	addi	a2,zero,0
   11c04:	00100693          	addi	a3,zero,1
   11c08:	00098513          	addi	a0,s3,0
   11c0c:	000800e7          	jalr	ra,0(a6)
   11c10:	fff00793          	addi	a5,zero,-1
   11c14:	00050613          	addi	a2,a0,0
   11c18:	1af50c63          	beq	a0,a5,11dd0 <__sflush_r+0x22c>
   11c1c:	01041783          	lh	a5,16(s0)
   11c20:	04843803          	ld	a6,72(s0)
   11c24:	0047f793          	andi	a5,a5,4
   11c28:	00078e63          	beq	a5,zero,11c44 <__sflush_r+0xa0>
   11c2c:	00842703          	lw	a4,8(s0)
   11c30:	05843783          	ld	a5,88(s0)
   11c34:	40e60633          	sub	a2,a2,a4
   11c38:	00078663          	beq	a5,zero,11c44 <__sflush_r+0xa0>
   11c3c:	07042783          	lw	a5,112(s0)
   11c40:	40f60633          	sub	a2,a2,a5
   11c44:	03043583          	ld	a1,48(s0)
   11c48:	00000693          	addi	a3,zero,0
   11c4c:	00098513          	addi	a0,s3,0
   11c50:	000800e7          	jalr	ra,0(a6)
   11c54:	fff00713          	addi	a4,zero,-1
   11c58:	01041783          	lh	a5,16(s0)
   11c5c:	12e51c63          	bne	a0,a4,11d94 <__sflush_r+0x1f0>
   11c60:	0009a683          	lw	a3,0(s3)
   11c64:	01d00713          	addi	a4,zero,29
   11c68:	18d76263          	bltu	a4,a3,11dec <__sflush_r+0x248>
   11c6c:	20400737          	lui	a4,0x20400
   11c70:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec089>
   11c74:	00d75733          	srl	a4,a4,a3
   11c78:	00177713          	andi	a4,a4,1
   11c7c:	16070863          	beq	a4,zero,11dec <__sflush_r+0x248>
   11c80:	01843683          	ld	a3,24(s0)
   11c84:	fffff737          	lui	a4,0xfffff
   11c88:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11c8c:	00e7f733          	and	a4,a5,a4
   11c90:	00e41823          	sh	a4,16(s0)
   11c94:	00042423          	sw	zero,8(s0)
   11c98:	00d43023          	sd	a3,0(s0)
   11c9c:	03379713          	slli	a4,a5,0x33
   11ca0:	00075663          	bge	a4,zero,11cac <__sflush_r+0x108>
   11ca4:	0009a783          	lw	a5,0(s3)
   11ca8:	10078863          	beq	a5,zero,11db8 <__sflush_r+0x214>
   11cac:	05843583          	ld	a1,88(s0)
   11cb0:	0099a023          	sw	s1,0(s3)
   11cb4:	10058a63          	beq	a1,zero,11dc8 <__sflush_r+0x224>
   11cb8:	07440793          	addi	a5,s0,116
   11cbc:	00f58663          	beq	a1,a5,11cc8 <__sflush_r+0x124>
   11cc0:	00098513          	addi	a0,s3,0
   11cc4:	9dcff0ef          	jal	ra,10ea0 <_free_r>
   11cc8:	01813483          	ld	s1,24(sp)
   11ccc:	04043c23          	sd	zero,88(s0)
   11cd0:	02813083          	ld	ra,40(sp)
   11cd4:	02013403          	ld	s0,32(sp)
   11cd8:	00813983          	ld	s3,8(sp)
   11cdc:	00000513          	addi	a0,zero,0
   11ce0:	03010113          	addi	sp,sp,48
   11ce4:	00008067          	jalr	zero,0(ra)
   11ce8:	01213823          	sd	s2,16(sp)
   11cec:	0185b903          	ld	s2,24(a1)
   11cf0:	08090a63          	beq	s2,zero,11d84 <__sflush_r+0x1e0>
   11cf4:	00913c23          	sd	s1,24(sp)
   11cf8:	0005b483          	ld	s1,0(a1)
   11cfc:	00377713          	andi	a4,a4,3
   11d00:	0125b023          	sd	s2,0(a1)
   11d04:	412484bb          	subw	s1,s1,s2
   11d08:	00000793          	addi	a5,zero,0
   11d0c:	00071463          	bne	a4,zero,11d14 <__sflush_r+0x170>
   11d10:	0205a783          	lw	a5,32(a1)
   11d14:	00f42623          	sw	a5,12(s0)
   11d18:	00904863          	blt	zero,s1,11d28 <__sflush_r+0x184>
   11d1c:	0640006f          	jal	zero,11d80 <__sflush_r+0x1dc>
   11d20:	00a90933          	add	s2,s2,a0
   11d24:	04905e63          	bge	zero,s1,11d80 <__sflush_r+0x1dc>
   11d28:	04043783          	ld	a5,64(s0)
   11d2c:	03043583          	ld	a1,48(s0)
   11d30:	00048693          	addi	a3,s1,0
   11d34:	00090613          	addi	a2,s2,0
   11d38:	00098513          	addi	a0,s3,0
   11d3c:	000780e7          	jalr	ra,0(a5)
   11d40:	40a484bb          	subw	s1,s1,a0
   11d44:	fca04ee3          	blt	zero,a0,11d20 <__sflush_r+0x17c>
   11d48:	01045783          	lhu	a5,16(s0)
   11d4c:	01013903          	ld	s2,16(sp)
   11d50:	0407e793          	ori	a5,a5,64
   11d54:	02813083          	ld	ra,40(sp)
   11d58:	00f41823          	sh	a5,16(s0)
   11d5c:	02013403          	ld	s0,32(sp)
   11d60:	01813483          	ld	s1,24(sp)
   11d64:	00813983          	ld	s3,8(sp)
   11d68:	fff00513          	addi	a0,zero,-1
   11d6c:	03010113          	addi	sp,sp,48
   11d70:	00008067          	jalr	zero,0(ra)
   11d74:	0705a683          	lw	a3,112(a1)
   11d78:	e6d044e3          	blt	zero,a3,11be0 <__sflush_r+0x3c>
   11d7c:	f55ff06f          	jal	zero,11cd0 <__sflush_r+0x12c>
   11d80:	01813483          	ld	s1,24(sp)
   11d84:	01013903          	ld	s2,16(sp)
   11d88:	f49ff06f          	jal	zero,11cd0 <__sflush_r+0x12c>
   11d8c:	09043603          	ld	a2,144(s0)
   11d90:	e95ff06f          	jal	zero,11c24 <__sflush_r+0x80>
   11d94:	01843683          	ld	a3,24(s0)
   11d98:	fffff737          	lui	a4,0xfffff
   11d9c:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11da0:	00e7f733          	and	a4,a5,a4
   11da4:	00e41823          	sh	a4,16(s0)
   11da8:	00042423          	sw	zero,8(s0)
   11dac:	00d43023          	sd	a3,0(s0)
   11db0:	03379713          	slli	a4,a5,0x33
   11db4:	ee075ce3          	bge	a4,zero,11cac <__sflush_r+0x108>
   11db8:	05843583          	ld	a1,88(s0)
   11dbc:	08a43823          	sd	a0,144(s0)
   11dc0:	0099a023          	sw	s1,0(s3)
   11dc4:	ee059ae3          	bne	a1,zero,11cb8 <__sflush_r+0x114>
   11dc8:	01813483          	ld	s1,24(sp)
   11dcc:	f05ff06f          	jal	zero,11cd0 <__sflush_r+0x12c>
   11dd0:	0009a783          	lw	a5,0(s3)
   11dd4:	e40784e3          	beq	a5,zero,11c1c <__sflush_r+0x78>
   11dd8:	fe378713          	addi	a4,a5,-29
   11ddc:	00070c63          	beq	a4,zero,11df4 <__sflush_r+0x250>
   11de0:	fea78793          	addi	a5,a5,-22
   11de4:	00078863          	beq	a5,zero,11df4 <__sflush_r+0x250>
   11de8:	01045783          	lhu	a5,16(s0)
   11dec:	0407e793          	ori	a5,a5,64
   11df0:	f65ff06f          	jal	zero,11d54 <__sflush_r+0x1b0>
   11df4:	0099a023          	sw	s1,0(s3)
   11df8:	01813483          	ld	s1,24(sp)
   11dfc:	ed5ff06f          	jal	zero,11cd0 <__sflush_r+0x12c>

0000000000011e00 <_fflush_r>:
   11e00:	00050793          	addi	a5,a0,0
   11e04:	00050663          	beq	a0,zero,11e10 <_fflush_r+0x10>
   11e08:	04853703          	ld	a4,72(a0)
   11e0c:	00070e63          	beq	a4,zero,11e28 <_fflush_r+0x28>
   11e10:	01059703          	lh	a4,16(a1)
   11e14:	00071663          	bne	a4,zero,11e20 <_fflush_r+0x20>
   11e18:	00000513          	addi	a0,zero,0
   11e1c:	00008067          	jalr	zero,0(ra)
   11e20:	00078513          	addi	a0,a5,0
   11e24:	d81ff06f          	jal	zero,11ba4 <__sflush_r>
   11e28:	fe010113          	addi	sp,sp,-32
   11e2c:	00b13423          	sd	a1,8(sp)
   11e30:	00113c23          	sd	ra,24(sp)
   11e34:	00a13023          	sd	a0,0(sp)
   11e38:	f70fe0ef          	jal	ra,105a8 <__sinit>
   11e3c:	00813583          	ld	a1,8(sp)
   11e40:	00013783          	ld	a5,0(sp)
   11e44:	01059703          	lh	a4,16(a1)
   11e48:	00070a63          	beq	a4,zero,11e5c <_fflush_r+0x5c>
   11e4c:	01813083          	ld	ra,24(sp)
   11e50:	00078513          	addi	a0,a5,0
   11e54:	02010113          	addi	sp,sp,32
   11e58:	d4dff06f          	jal	zero,11ba4 <__sflush_r>
   11e5c:	01813083          	ld	ra,24(sp)
   11e60:	00000513          	addi	a0,zero,0
   11e64:	02010113          	addi	sp,sp,32
   11e68:	00008067          	jalr	zero,0(ra)

0000000000011e6c <fflush>:
   11e6c:	06050063          	beq	a0,zero,11ecc <fflush+0x60>
   11e70:	00050593          	addi	a1,a0,0
   11e74:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11e78:	00050663          	beq	a0,zero,11e84 <fflush+0x18>
   11e7c:	04853783          	ld	a5,72(a0)
   11e80:	00078c63          	beq	a5,zero,11e98 <fflush+0x2c>
   11e84:	01059783          	lh	a5,16(a1)
   11e88:	00079663          	bne	a5,zero,11e94 <fflush+0x28>
   11e8c:	00000513          	addi	a0,zero,0
   11e90:	00008067          	jalr	zero,0(ra)
   11e94:	d11ff06f          	jal	zero,11ba4 <__sflush_r>
   11e98:	fe010113          	addi	sp,sp,-32
   11e9c:	00b13423          	sd	a1,8(sp)
   11ea0:	00a13023          	sd	a0,0(sp)
   11ea4:	00113c23          	sd	ra,24(sp)
   11ea8:	f00fe0ef          	jal	ra,105a8 <__sinit>
   11eac:	00813583          	ld	a1,8(sp)
   11eb0:	00013503          	ld	a0,0(sp)
   11eb4:	01059783          	lh	a5,16(a1)
   11eb8:	02079863          	bne	a5,zero,11ee8 <fflush+0x7c>
   11ebc:	01813083          	ld	ra,24(sp)
   11ec0:	00000513          	addi	a0,zero,0
   11ec4:	02010113          	addi	sp,sp,32
   11ec8:	00008067          	jalr	zero,0(ra)
   11ecc:	00013637          	lui	a2,0x13
   11ed0:	000125b7          	lui	a1,0x12
   11ed4:	00013537          	lui	a0,0x13
   11ed8:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   11edc:	e0058593          	addi	a1,a1,-512 # 11e00 <_fflush_r>
   11ee0:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   11ee4:	f20fe06f          	jal	zero,10604 <_fwalk_sglue>
   11ee8:	01813083          	ld	ra,24(sp)
   11eec:	02010113          	addi	sp,sp,32
   11ef0:	cb5ff06f          	jal	zero,11ba4 <__sflush_r>

0000000000011ef4 <_putc_r>:
   11ef4:	00050713          	addi	a4,a0,0
   11ef8:	00050663          	beq	a0,zero,11f04 <_putc_r+0x10>
   11efc:	04853783          	ld	a5,72(a0)
   11f00:	04078463          	beq	a5,zero,11f48 <_putc_r+0x54>
   11f04:	00c62783          	lw	a5,12(a2)
   11f08:	0ff5f693          	andi	a3,a1,255
   11f0c:	fff7879b          	addiw	a5,a5,-1
   11f10:	00f62623          	sw	a5,12(a2)
   11f14:	0007da63          	bge	a5,zero,11f28 <_putc_r+0x34>
   11f18:	02862503          	lw	a0,40(a2)
   11f1c:	02a7c263          	blt	a5,a0,11f40 <_putc_r+0x4c>
   11f20:	ff668793          	addi	a5,a3,-10
   11f24:	00078e63          	beq	a5,zero,11f40 <_putc_r+0x4c>
   11f28:	00063783          	ld	a5,0(a2)
   11f2c:	0ff5f513          	andi	a0,a1,255
   11f30:	00178713          	addi	a4,a5,1
   11f34:	00e63023          	sd	a4,0(a2)
   11f38:	00d78023          	sb	a3,0(a5)
   11f3c:	00008067          	jalr	zero,0(ra)
   11f40:	00070513          	addi	a0,a4,0
   11f44:	1600006f          	jal	zero,120a4 <__swbuf_r>
   11f48:	fd010113          	addi	sp,sp,-48
   11f4c:	00c13c23          	sd	a2,24(sp)
   11f50:	00b13823          	sd	a1,16(sp)
   11f54:	02113423          	sd	ra,40(sp)
   11f58:	00a13423          	sd	a0,8(sp)
   11f5c:	e4cfe0ef          	jal	ra,105a8 <__sinit>
   11f60:	01813603          	ld	a2,24(sp)
   11f64:	01013583          	ld	a1,16(sp)
   11f68:	00813703          	ld	a4,8(sp)
   11f6c:	00c62783          	lw	a5,12(a2)
   11f70:	0ff5f693          	andi	a3,a1,255
   11f74:	fff7879b          	addiw	a5,a5,-1
   11f78:	00f62623          	sw	a5,12(a2)
   11f7c:	0007da63          	bge	a5,zero,11f90 <_putc_r+0x9c>
   11f80:	02862503          	lw	a0,40(a2)
   11f84:	02a7c663          	blt	a5,a0,11fb0 <_putc_r+0xbc>
   11f88:	ff668793          	addi	a5,a3,-10
   11f8c:	02078263          	beq	a5,zero,11fb0 <_putc_r+0xbc>
   11f90:	00063783          	ld	a5,0(a2)
   11f94:	0ff5f513          	andi	a0,a1,255
   11f98:	00178713          	addi	a4,a5,1
   11f9c:	00e63023          	sd	a4,0(a2)
   11fa0:	00d78023          	sb	a3,0(a5)
   11fa4:	02813083          	ld	ra,40(sp)
   11fa8:	03010113          	addi	sp,sp,48
   11fac:	00008067          	jalr	zero,0(ra)
   11fb0:	02813083          	ld	ra,40(sp)
   11fb4:	00070513          	addi	a0,a4,0
   11fb8:	03010113          	addi	sp,sp,48
   11fbc:	0e80006f          	jal	zero,120a4 <__swbuf_r>

0000000000011fc0 <putc>:
   11fc0:	1881b683          	ld	a3,392(gp) # 139a0 <_impure_ptr>
   11fc4:	00050713          	addi	a4,a0,0
   11fc8:	00068663          	beq	a3,zero,11fd4 <putc+0x14>
   11fcc:	0486b783          	ld	a5,72(a3)
   11fd0:	04078863          	beq	a5,zero,12020 <putc+0x60>
   11fd4:	00c5a783          	lw	a5,12(a1)
   11fd8:	0ff77613          	andi	a2,a4,255
   11fdc:	fff7879b          	addiw	a5,a5,-1
   11fe0:	00f5a623          	sw	a5,12(a1)
   11fe4:	0007da63          	bge	a5,zero,11ff8 <putc+0x38>
   11fe8:	0285a503          	lw	a0,40(a1)
   11fec:	02a7c263          	blt	a5,a0,12010 <putc+0x50>
   11ff0:	ff660793          	addi	a5,a2,-10
   11ff4:	00078e63          	beq	a5,zero,12010 <putc+0x50>
   11ff8:	0005b783          	ld	a5,0(a1)
   11ffc:	0ff77513          	andi	a0,a4,255
   12000:	00178713          	addi	a4,a5,1
   12004:	00e5b023          	sd	a4,0(a1)
   12008:	00c78023          	sb	a2,0(a5)
   1200c:	00008067          	jalr	zero,0(ra)
   12010:	00058613          	addi	a2,a1,0
   12014:	00068513          	addi	a0,a3,0
   12018:	00070593          	addi	a1,a4,0
   1201c:	0880006f          	jal	zero,120a4 <__swbuf_r>
   12020:	fd010113          	addi	sp,sp,-48
   12024:	00a13823          	sd	a0,16(sp)
   12028:	00068513          	addi	a0,a3,0
   1202c:	00b13c23          	sd	a1,24(sp)
   12030:	00d13423          	sd	a3,8(sp)
   12034:	02113423          	sd	ra,40(sp)
   12038:	d70fe0ef          	jal	ra,105a8 <__sinit>
   1203c:	01813583          	ld	a1,24(sp)
   12040:	01013703          	ld	a4,16(sp)
   12044:	00813683          	ld	a3,8(sp)
   12048:	00c5a783          	lw	a5,12(a1)
   1204c:	0ff77613          	andi	a2,a4,255
   12050:	fff7879b          	addiw	a5,a5,-1
   12054:	00f5a623          	sw	a5,12(a1)
   12058:	0007da63          	bge	a5,zero,1206c <putc+0xac>
   1205c:	0285a503          	lw	a0,40(a1)
   12060:	02a7c663          	blt	a5,a0,1208c <putc+0xcc>
   12064:	ff660793          	addi	a5,a2,-10
   12068:	02078263          	beq	a5,zero,1208c <putc+0xcc>
   1206c:	0005b783          	ld	a5,0(a1)
   12070:	0ff77513          	andi	a0,a4,255
   12074:	00178713          	addi	a4,a5,1
   12078:	00e5b023          	sd	a4,0(a1)
   1207c:	00c78023          	sb	a2,0(a5)
   12080:	02813083          	ld	ra,40(sp)
   12084:	03010113          	addi	sp,sp,48
   12088:	00008067          	jalr	zero,0(ra)
   1208c:	02813083          	ld	ra,40(sp)
   12090:	00058613          	addi	a2,a1,0
   12094:	00070593          	addi	a1,a4,0
   12098:	00068513          	addi	a0,a3,0
   1209c:	03010113          	addi	sp,sp,48
   120a0:	0040006f          	jal	zero,120a4 <__swbuf_r>

00000000000120a4 <__swbuf_r>:
   120a4:	fd010113          	addi	sp,sp,-48
   120a8:	02813023          	sd	s0,32(sp)
   120ac:	00913c23          	sd	s1,24(sp)
   120b0:	02113423          	sd	ra,40(sp)
   120b4:	00050493          	addi	s1,a0,0
   120b8:	00058413          	addi	s0,a1,0
   120bc:	00050663          	beq	a0,zero,120c8 <__swbuf_r+0x24>
   120c0:	04853783          	ld	a5,72(a0)
   120c4:	12078a63          	beq	a5,zero,121f8 <__swbuf_r+0x154>
   120c8:	02862703          	lw	a4,40(a2)
   120cc:	01061783          	lh	a5,16(a2)
   120d0:	00e62623          	sw	a4,12(a2)
   120d4:	0087f713          	andi	a4,a5,8
   120d8:	08070663          	beq	a4,zero,12164 <__swbuf_r+0xc0>
   120dc:	01863703          	ld	a4,24(a2)
   120e0:	08070263          	beq	a4,zero,12164 <__swbuf_r+0xc0>
   120e4:	03279693          	slli	a3,a5,0x32
   120e8:	0ac62703          	lw	a4,172(a2)
   120ec:	000025b7          	lui	a1,0x2
   120f0:	0a06d063          	bge	a3,zero,12190 <__swbuf_r+0xec>
   120f4:	03271793          	slli	a5,a4,0x32
   120f8:	0e07cc63          	blt	a5,zero,121f0 <__swbuf_r+0x14c>
   120fc:	00063703          	ld	a4,0(a2)
   12100:	01863783          	ld	a5,24(a2)
   12104:	02062683          	lw	a3,32(a2)
   12108:	40f707bb          	subw	a5,a4,a5
   1210c:	0ad7d863          	bge	a5,a3,121bc <__swbuf_r+0x118>
   12110:	0017879b          	addiw	a5,a5,1
   12114:	00c62683          	lw	a3,12(a2)
   12118:	00170593          	addi	a1,a4,1
   1211c:	00b63023          	sd	a1,0(a2)
   12120:	fff6869b          	addiw	a3,a3,-1
   12124:	00d62623          	sw	a3,12(a2)
   12128:	00870023          	sb	s0,0(a4)
   1212c:	02062703          	lw	a4,32(a2)
   12130:	0ff47413          	andi	s0,s0,255
   12134:	0af70663          	beq	a4,a5,121e0 <__swbuf_r+0x13c>
   12138:	01065783          	lhu	a5,16(a2)
   1213c:	0017f793          	andi	a5,a5,1
   12140:	00078663          	beq	a5,zero,1214c <__swbuf_r+0xa8>
   12144:	ff640793          	addi	a5,s0,-10
   12148:	08078c63          	beq	a5,zero,121e0 <__swbuf_r+0x13c>
   1214c:	02813083          	ld	ra,40(sp)
   12150:	00040513          	addi	a0,s0,0
   12154:	02013403          	ld	s0,32(sp)
   12158:	01813483          	ld	s1,24(sp)
   1215c:	03010113          	addi	sp,sp,48
   12160:	00008067          	jalr	zero,0(ra)
   12164:	00060593          	addi	a1,a2,0
   12168:	00048513          	addi	a0,s1,0
   1216c:	00c13423          	sd	a2,8(sp)
   12170:	0ac000ef          	jal	ra,1221c <__swsetup_r>
   12174:	06051e63          	bne	a0,zero,121f0 <__swbuf_r+0x14c>
   12178:	00813603          	ld	a2,8(sp)
   1217c:	000025b7          	lui	a1,0x2
   12180:	01061783          	lh	a5,16(a2)
   12184:	0ac62703          	lw	a4,172(a2)
   12188:	03279693          	slli	a3,a5,0x32
   1218c:	f606c4e3          	blt	a3,zero,120f4 <__swbuf_r+0x50>
   12190:	ffffe6b7          	lui	a3,0xffffe
   12194:	fff68693          	addi	a3,a3,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffea087>
   12198:	00d77733          	and	a4,a4,a3
   1219c:	00b7e7b3          	or	a5,a5,a1
   121a0:	00f61823          	sh	a5,16(a2)
   121a4:	0ae62623          	sw	a4,172(a2)
   121a8:	01863783          	ld	a5,24(a2)
   121ac:	00063703          	ld	a4,0(a2)
   121b0:	02062683          	lw	a3,32(a2)
   121b4:	40f707bb          	subw	a5,a4,a5
   121b8:	f4d7cce3          	blt	a5,a3,12110 <__swbuf_r+0x6c>
   121bc:	00060593          	addi	a1,a2,0
   121c0:	00048513          	addi	a0,s1,0
   121c4:	00c13423          	sd	a2,8(sp)
   121c8:	c39ff0ef          	jal	ra,11e00 <_fflush_r>
   121cc:	02051263          	bne	a0,zero,121f0 <__swbuf_r+0x14c>
   121d0:	00813603          	ld	a2,8(sp)
   121d4:	00100793          	addi	a5,zero,1
   121d8:	00063703          	ld	a4,0(a2)
   121dc:	f39ff06f          	jal	zero,12114 <__swbuf_r+0x70>
   121e0:	00060593          	addi	a1,a2,0
   121e4:	00048513          	addi	a0,s1,0
   121e8:	c19ff0ef          	jal	ra,11e00 <_fflush_r>
   121ec:	f60500e3          	beq	a0,zero,1214c <__swbuf_r+0xa8>
   121f0:	fff00413          	addi	s0,zero,-1
   121f4:	f59ff06f          	jal	zero,1214c <__swbuf_r+0xa8>
   121f8:	00c13423          	sd	a2,8(sp)
   121fc:	bacfe0ef          	jal	ra,105a8 <__sinit>
   12200:	00813603          	ld	a2,8(sp)
   12204:	ec5ff06f          	jal	zero,120c8 <__swbuf_r+0x24>

0000000000012208 <__swbuf>:
   12208:	00050793          	addi	a5,a0,0
   1220c:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   12210:	00058613          	addi	a2,a1,0 # 2000 <exit-0xe120>
   12214:	00078593          	addi	a1,a5,0
   12218:	e8dff06f          	jal	zero,120a4 <__swbuf_r>

000000000001221c <__swsetup_r>:
   1221c:	1881b703          	ld	a4,392(gp) # 139a0 <_impure_ptr>
   12220:	fe010113          	addi	sp,sp,-32
   12224:	00113c23          	sd	ra,24(sp)
   12228:	00050613          	addi	a2,a0,0
   1222c:	00058793          	addi	a5,a1,0
   12230:	00070663          	beq	a4,zero,1223c <__swsetup_r+0x20>
   12234:	04873683          	ld	a3,72(a4)
   12238:	10068a63          	beq	a3,zero,1234c <__swsetup_r+0x130>
   1223c:	01079703          	lh	a4,16(a5)
   12240:	00877693          	andi	a3,a4,8
   12244:	02068e63          	beq	a3,zero,12280 <__swsetup_r+0x64>
   12248:	0187b683          	ld	a3,24(a5)
   1224c:	04068a63          	beq	a3,zero,122a0 <__swsetup_r+0x84>
   12250:	01079703          	lh	a4,16(a5)
   12254:	00177613          	andi	a2,a4,1
   12258:	06060e63          	beq	a2,zero,122d4 <__swsetup_r+0xb8>
   1225c:	0207a603          	lw	a2,32(a5)
   12260:	0007a623          	sw	zero,12(a5)
   12264:	00000513          	addi	a0,zero,0
   12268:	40c0063b          	subw	a2,zero,a2
   1226c:	02c7a423          	sw	a2,40(a5)
   12270:	08068063          	beq	a3,zero,122f0 <__swsetup_r+0xd4>
   12274:	01813083          	ld	ra,24(sp)
   12278:	02010113          	addi	sp,sp,32
   1227c:	00008067          	jalr	zero,0(ra)
   12280:	01077693          	andi	a3,a4,16
   12284:	0e068263          	beq	a3,zero,12368 <__swsetup_r+0x14c>
   12288:	00477693          	andi	a3,a4,4
   1228c:	06069e63          	bne	a3,zero,12308 <__swsetup_r+0xec>
   12290:	0187b683          	ld	a3,24(a5)
   12294:	00876713          	ori	a4,a4,8
   12298:	00e79823          	sh	a4,16(a5)
   1229c:	fa069ae3          	bne	a3,zero,12250 <__swsetup_r+0x34>
   122a0:	0107b703          	ld	a4,16(a5)
   122a4:	20000593          	addi	a1,zero,512
   122a8:	28077713          	andi	a4,a4,640
   122ac:	fab702e3          	beq	a4,a1,12250 <__swsetup_r+0x34>
   122b0:	00060513          	addi	a0,a2,0
   122b4:	00078593          	addi	a1,a5,0
   122b8:	00f13023          	sd	a5,0(sp)
   122bc:	218000ef          	jal	ra,124d4 <__smakebuf_r>
   122c0:	00013783          	ld	a5,0(sp)
   122c4:	01079703          	lh	a4,16(a5)
   122c8:	0187b683          	ld	a3,24(a5)
   122cc:	00177613          	andi	a2,a4,1
   122d0:	f80616e3          	bne	a2,zero,1225c <__swsetup_r+0x40>
   122d4:	00277613          	andi	a2,a4,2
   122d8:	00000593          	addi	a1,zero,0
   122dc:	00061463          	bne	a2,zero,122e4 <__swsetup_r+0xc8>
   122e0:	0207a583          	lw	a1,32(a5)
   122e4:	00b7a623          	sw	a1,12(a5)
   122e8:	00000513          	addi	a0,zero,0
   122ec:	f80694e3          	bne	a3,zero,12274 <__swsetup_r+0x58>
   122f0:	08077693          	andi	a3,a4,128
   122f4:	f80680e3          	beq	a3,zero,12274 <__swsetup_r+0x58>
   122f8:	04076713          	ori	a4,a4,64
   122fc:	00e79823          	sh	a4,16(a5)
   12300:	fff00513          	addi	a0,zero,-1
   12304:	f71ff06f          	jal	zero,12274 <__swsetup_r+0x58>
   12308:	0587b583          	ld	a1,88(a5)
   1230c:	02058663          	beq	a1,zero,12338 <__swsetup_r+0x11c>
   12310:	07478693          	addi	a3,a5,116
   12314:	02d58063          	beq	a1,a3,12334 <__swsetup_r+0x118>
   12318:	00060513          	addi	a0,a2,0
   1231c:	00f13423          	sd	a5,8(sp)
   12320:	00c13023          	sd	a2,0(sp)
   12324:	b7dfe0ef          	jal	ra,10ea0 <_free_r>
   12328:	00813783          	ld	a5,8(sp)
   1232c:	00013603          	ld	a2,0(sp)
   12330:	01079703          	lh	a4,16(a5)
   12334:	0407bc23          	sd	zero,88(a5)
   12338:	0187b683          	ld	a3,24(a5)
   1233c:	fdb77713          	andi	a4,a4,-37
   12340:	0007a423          	sw	zero,8(a5)
   12344:	00d7b023          	sd	a3,0(a5)
   12348:	f4dff06f          	jal	zero,12294 <__swsetup_r+0x78>
   1234c:	00a13023          	sd	a0,0(sp)
   12350:	00070513          	addi	a0,a4,0
   12354:	00b13423          	sd	a1,8(sp)
   12358:	a50fe0ef          	jal	ra,105a8 <__sinit>
   1235c:	00813783          	ld	a5,8(sp)
   12360:	00013603          	ld	a2,0(sp)
   12364:	ed9ff06f          	jal	zero,1223c <__swsetup_r+0x20>
   12368:	00900693          	addi	a3,zero,9
   1236c:	04076713          	ori	a4,a4,64
   12370:	00d62023          	sw	a3,0(a2)
   12374:	00e79823          	sh	a4,16(a5)
   12378:	fff00513          	addi	a0,zero,-1
   1237c:	ef9ff06f          	jal	zero,12274 <__swsetup_r+0x58>

0000000000012380 <_sbrk_r>:
   12380:	fe010113          	addi	sp,sp,-32
   12384:	00813823          	sd	s0,16(sp)
   12388:	00913423          	sd	s1,8(sp)
   1238c:	00050493          	addi	s1,a0,0
   12390:	00058513          	addi	a0,a1,0
   12394:	00113c23          	sd	ra,24(sp)
   12398:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   1239c:	5fc000ef          	jal	ra,12998 <_sbrk>
   123a0:	fff00793          	addi	a5,zero,-1
   123a4:	00f50c63          	beq	a0,a5,123bc <_sbrk_r+0x3c>
   123a8:	01813083          	ld	ra,24(sp)
   123ac:	01013403          	ld	s0,16(sp)
   123b0:	00813483          	ld	s1,8(sp)
   123b4:	02010113          	addi	sp,sp,32
   123b8:	00008067          	jalr	zero,0(ra)
   123bc:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   123c0:	fe0784e3          	beq	a5,zero,123a8 <_sbrk_r+0x28>
   123c4:	01813083          	ld	ra,24(sp)
   123c8:	01013403          	ld	s0,16(sp)
   123cc:	00f4a023          	sw	a5,0(s1)
   123d0:	00813483          	ld	s1,8(sp)
   123d4:	02010113          	addi	sp,sp,32
   123d8:	00008067          	jalr	zero,0(ra)

00000000000123dc <__libc_fini_array>:
   123dc:	fe010113          	addi	sp,sp,-32
   123e0:	00813823          	sd	s0,16(sp)
   123e4:	000137b7          	lui	a5,0x13
   123e8:	00013437          	lui	s0,0x13
   123ec:	01878793          	addi	a5,a5,24 # 13018 <__sglue>
   123f0:	01040413          	addi	s0,s0,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   123f4:	408787b3          	sub	a5,a5,s0
   123f8:	00913423          	sd	s1,8(sp)
   123fc:	00113c23          	sd	ra,24(sp)
   12400:	4037d493          	srai	s1,a5,0x3
   12404:	02048063          	beq	s1,zero,12424 <__libc_fini_array+0x48>
   12408:	ff840413          	addi	s0,s0,-8
   1240c:	00f40433          	add	s0,s0,a5
   12410:	00043783          	ld	a5,0(s0)
   12414:	fff48493          	addi	s1,s1,-1
   12418:	ff840413          	addi	s0,s0,-8
   1241c:	000780e7          	jalr	ra,0(a5)
   12420:	fe0498e3          	bne	s1,zero,12410 <__libc_fini_array+0x34>
   12424:	01813083          	ld	ra,24(sp)
   12428:	01013403          	ld	s0,16(sp)
   1242c:	00813483          	ld	s1,8(sp)
   12430:	02010113          	addi	sp,sp,32
   12434:	00008067          	jalr	zero,0(ra)

0000000000012438 <__register_exitproc>:
   12438:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   1243c:	04078e63          	beq	a5,zero,12498 <__register_exitproc+0x60>
   12440:	0087a703          	lw	a4,8(a5)
   12444:	01f00813          	addi	a6,zero,31
   12448:	08e84263          	blt	a6,a4,124cc <__register_exitproc+0x94>
   1244c:	02050863          	beq	a0,zero,1247c <__register_exitproc+0x44>
   12450:	00371813          	slli	a6,a4,0x3
   12454:	01078833          	add	a6,a5,a6
   12458:	10c83823          	sd	a2,272(a6)
   1245c:	3107a883          	lw	a7,784(a5)
   12460:	00100613          	addi	a2,zero,1
   12464:	00e6163b          	sllw	a2,a2,a4
   12468:	00c8e8b3          	or	a7,a7,a2
   1246c:	3117a823          	sw	a7,784(a5)
   12470:	20d83823          	sd	a3,528(a6)
   12474:	00200693          	addi	a3,zero,2
   12478:	02d50663          	beq	a0,a3,124a4 <__register_exitproc+0x6c>
   1247c:	0017069b          	addiw	a3,a4,1
   12480:	00371713          	slli	a4,a4,0x3
   12484:	00d7a423          	sw	a3,8(a5)
   12488:	00e787b3          	add	a5,a5,a4
   1248c:	00b7b823          	sd	a1,16(a5)
   12490:	00000513          	addi	a0,zero,0
   12494:	00008067          	jalr	zero,0(ra)
   12498:	44818793          	addi	a5,gp,1096 # 13c60 <__atexit0>
   1249c:	1af1b823          	sd	a5,432(gp) # 139c8 <__atexit>
   124a0:	fa1ff06f          	jal	zero,12440 <__register_exitproc+0x8>
   124a4:	3147a683          	lw	a3,788(a5)
   124a8:	00000513          	addi	a0,zero,0
   124ac:	00d66633          	or	a2,a2,a3
   124b0:	0017069b          	addiw	a3,a4,1
   124b4:	00371713          	slli	a4,a4,0x3
   124b8:	30c7aa23          	sw	a2,788(a5)
   124bc:	00d7a423          	sw	a3,8(a5)
   124c0:	00e787b3          	add	a5,a5,a4
   124c4:	00b7b823          	sd	a1,16(a5)
   124c8:	00008067          	jalr	zero,0(ra)
   124cc:	fff00513          	addi	a0,zero,-1
   124d0:	00008067          	jalr	zero,0(ra)

00000000000124d4 <__smakebuf_r>:
   124d4:	01059703          	lh	a4,16(a1)
   124d8:	00277793          	andi	a5,a4,2
   124dc:	00078e63          	beq	a5,zero,124f8 <__smakebuf_r+0x24>
   124e0:	07758793          	addi	a5,a1,119
   124e4:	00100713          	addi	a4,zero,1
   124e8:	00f5b023          	sd	a5,0(a1)
   124ec:	00f5bc23          	sd	a5,24(a1)
   124f0:	02e5a023          	sw	a4,32(a1)
   124f4:	00008067          	jalr	zero,0(ra)
   124f8:	00058793          	addi	a5,a1,0
   124fc:	01259583          	lh	a1,18(a1)
   12500:	f6010113          	addi	sp,sp,-160
   12504:	08813823          	sd	s0,144(sp)
   12508:	08113c23          	sd	ra,152(sp)
   1250c:	00050413          	addi	s0,a0,0
   12510:	0805ce63          	blt	a1,zero,125ac <__smakebuf_r+0xd8>
   12514:	01810613          	addi	a2,sp,24
   12518:	00f13023          	sd	a5,0(sp)
   1251c:	224000ef          	jal	ra,12740 <_fstat_r>
   12520:	00013783          	ld	a5,0(sp)
   12524:	08054263          	blt	a0,zero,125a8 <__smakebuf_r+0xd4>
   12528:	40000593          	addi	a1,zero,1024
   1252c:	00040513          	addi	a0,s0,0
   12530:	08913423          	sd	s1,136(sp)
   12534:	00f13023          	sd	a5,0(sp)
   12538:	01c12483          	lw	s1,28(sp)
   1253c:	c69fe0ef          	jal	ra,111a4 <_malloc_r>
   12540:	00013783          	ld	a5,0(sp)
   12544:	01079703          	lh	a4,16(a5)
   12548:	0c050263          	beq	a0,zero,1260c <__smakebuf_r+0x138>
   1254c:	40000693          	addi	a3,zero,1024
   12550:	08076713          	ori	a4,a4,128
   12554:	02d7a023          	sw	a3,32(a5)
   12558:	40c4d693          	srai	a3,s1,0xc
   1255c:	00e79823          	sh	a4,16(a5)
   12560:	00a7b023          	sd	a0,0(a5)
   12564:	00a7bc23          	sd	a0,24(a5)
   12568:	00f6f693          	andi	a3,a3,15
   1256c:	00200613          	addi	a2,zero,2
   12570:	0cc69663          	bne	a3,a2,1263c <__smakebuf_r+0x168>
   12574:	01279583          	lh	a1,18(a5)
   12578:	00040513          	addi	a0,s0,0
   1257c:	00f13023          	sd	a5,0(sp)
   12580:	224000ef          	jal	ra,127a4 <_isatty_r>
   12584:	00013783          	ld	a5,0(sp)
   12588:	01079703          	lh	a4,16(a5)
   1258c:	0a050863          	beq	a0,zero,1263c <__smakebuf_r+0x168>
   12590:	ffc77713          	andi	a4,a4,-4
   12594:	000016b7          	lui	a3,0x1
   12598:	08813483          	ld	s1,136(sp)
   1259c:	00176713          	ori	a4,a4,1
   125a0:	80068693          	addi	a3,a3,-2048 # 800 <exit-0xf920>
   125a4:	0480006f          	jal	zero,125ec <__smakebuf_r+0x118>
   125a8:	01079703          	lh	a4,16(a5)
   125ac:	08077713          	andi	a4,a4,128
   125b0:	40000593          	addi	a1,zero,1024
   125b4:	04071863          	bne	a4,zero,12604 <__smakebuf_r+0x130>
   125b8:	00040513          	addi	a0,s0,0
   125bc:	00f13423          	sd	a5,8(sp)
   125c0:	00b13023          	sd	a1,0(sp)
   125c4:	be1fe0ef          	jal	ra,111a4 <_malloc_r>
   125c8:	00813783          	ld	a5,8(sp)
   125cc:	00013583          	ld	a1,0(sp)
   125d0:	01079703          	lh	a4,16(a5)
   125d4:	02050e63          	beq	a0,zero,12610 <__smakebuf_r+0x13c>
   125d8:	08076713          	ori	a4,a4,128
   125dc:	00a7b023          	sd	a0,0(a5)
   125e0:	00a7bc23          	sd	a0,24(a5)
   125e4:	02b7a023          	sw	a1,32(a5)
   125e8:	00000693          	addi	a3,zero,0
   125ec:	00d76733          	or	a4,a4,a3
   125f0:	00e79823          	sh	a4,16(a5)
   125f4:	09813083          	ld	ra,152(sp)
   125f8:	09013403          	ld	s0,144(sp)
   125fc:	0a010113          	addi	sp,sp,160
   12600:	00008067          	jalr	zero,0(ra)
   12604:	04000593          	addi	a1,zero,64
   12608:	fb1ff06f          	jal	zero,125b8 <__smakebuf_r+0xe4>
   1260c:	08813483          	ld	s1,136(sp)
   12610:	20077693          	andi	a3,a4,512
   12614:	fe0690e3          	bne	a3,zero,125f4 <__smakebuf_r+0x120>
   12618:	ffc77713          	andi	a4,a4,-4
   1261c:	07778693          	addi	a3,a5,119
   12620:	00276713          	ori	a4,a4,2
   12624:	00100613          	addi	a2,zero,1
   12628:	00e79823          	sh	a4,16(a5)
   1262c:	00d7b023          	sd	a3,0(a5)
   12630:	00d7bc23          	sd	a3,24(a5)
   12634:	02c7a023          	sw	a2,32(a5)
   12638:	fbdff06f          	jal	zero,125f4 <__smakebuf_r+0x120>
   1263c:	000016b7          	lui	a3,0x1
   12640:	08813483          	ld	s1,136(sp)
   12644:	80068693          	addi	a3,a3,-2048 # 800 <exit-0xf920>
   12648:	fa5ff06f          	jal	zero,125ec <__smakebuf_r+0x118>

000000000001264c <__swhatbuf_r>:
   1264c:	00058793          	addi	a5,a1,0
   12650:	01259583          	lh	a1,18(a1)
   12654:	00060713          	addi	a4,a2,0
   12658:	0805ca63          	blt	a1,zero,126ec <__swhatbuf_r+0xa0>
   1265c:	f6010113          	addi	sp,sp,-160
   12660:	00c13823          	sd	a2,16(sp)
   12664:	02810613          	addi	a2,sp,40
   12668:	00d13c23          	sd	a3,24(sp)
   1266c:	00f13423          	sd	a5,8(sp)
   12670:	08113c23          	sd	ra,152(sp)
   12674:	0cc000ef          	jal	ra,12740 <_fstat_r>
   12678:	00813783          	ld	a5,8(sp)
   1267c:	01013703          	ld	a4,16(sp)
   12680:	01813683          	ld	a3,24(sp)
   12684:	02054e63          	blt	a0,zero,126c0 <__swhatbuf_r+0x74>
   12688:	02c12783          	lw	a5,44(sp)
   1268c:	0000f5b7          	lui	a1,0xf
   12690:	00002637          	lui	a2,0x2
   12694:	00b7f7b3          	and	a5,a5,a1
   12698:	40c787b3          	sub	a5,a5,a2
   1269c:	09813083          	ld	ra,152(sp)
   126a0:	0017b793          	sltiu	a5,a5,1
   126a4:	00f6a023          	sw	a5,0(a3)
   126a8:	40000613          	addi	a2,zero,1024
   126ac:	00001537          	lui	a0,0x1
   126b0:	00c73023          	sd	a2,0(a4)
   126b4:	80050513          	addi	a0,a0,-2048 # 800 <exit-0xf920>
   126b8:	0a010113          	addi	sp,sp,160
   126bc:	00008067          	jalr	zero,0(ra)
   126c0:	0107d783          	lhu	a5,16(a5)
   126c4:	0807f793          	andi	a5,a5,128
   126c8:	04078263          	beq	a5,zero,1270c <__swhatbuf_r+0xc0>
   126cc:	09813083          	ld	ra,152(sp)
   126d0:	00000793          	addi	a5,zero,0
   126d4:	00f6a023          	sw	a5,0(a3)
   126d8:	04000613          	addi	a2,zero,64
   126dc:	00c73023          	sd	a2,0(a4)
   126e0:	00000513          	addi	a0,zero,0
   126e4:	0a010113          	addi	sp,sp,160
   126e8:	00008067          	jalr	zero,0(ra)
   126ec:	0107d783          	lhu	a5,16(a5)
   126f0:	0807f793          	andi	a5,a5,128
   126f4:	02079a63          	bne	a5,zero,12728 <__swhatbuf_r+0xdc>
   126f8:	40000613          	addi	a2,zero,1024
   126fc:	00f6a023          	sw	a5,0(a3)
   12700:	00000513          	addi	a0,zero,0
   12704:	00c73023          	sd	a2,0(a4)
   12708:	00008067          	jalr	zero,0(ra)
   1270c:	09813083          	ld	ra,152(sp)
   12710:	00f6a023          	sw	a5,0(a3)
   12714:	40000613          	addi	a2,zero,1024
   12718:	00c73023          	sd	a2,0(a4)
   1271c:	00000513          	addi	a0,zero,0
   12720:	0a010113          	addi	sp,sp,160
   12724:	00008067          	jalr	zero,0(ra)
   12728:	00000793          	addi	a5,zero,0
   1272c:	04000613          	addi	a2,zero,64
   12730:	00f6a023          	sw	a5,0(a3)
   12734:	00000513          	addi	a0,zero,0
   12738:	00c73023          	sd	a2,0(a4)
   1273c:	00008067          	jalr	zero,0(ra)

0000000000012740 <_fstat_r>:
   12740:	fe010113          	addi	sp,sp,-32
   12744:	00058793          	addi	a5,a1,0 # f000 <exit-0x1120>
   12748:	00813823          	sd	s0,16(sp)
   1274c:	00913423          	sd	s1,8(sp)
   12750:	00060593          	addi	a1,a2,0 # 2000 <exit-0xe120>
   12754:	00050493          	addi	s1,a0,0
   12758:	00078513          	addi	a0,a5,0
   1275c:	00113c23          	sd	ra,24(sp)
   12760:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   12764:	10c000ef          	jal	ra,12870 <_fstat>
   12768:	fff00793          	addi	a5,zero,-1
   1276c:	00f50c63          	beq	a0,a5,12784 <_fstat_r+0x44>
   12770:	01813083          	ld	ra,24(sp)
   12774:	01013403          	ld	s0,16(sp)
   12778:	00813483          	ld	s1,8(sp)
   1277c:	02010113          	addi	sp,sp,32
   12780:	00008067          	jalr	zero,0(ra)
   12784:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   12788:	fe0784e3          	beq	a5,zero,12770 <_fstat_r+0x30>
   1278c:	01813083          	ld	ra,24(sp)
   12790:	01013403          	ld	s0,16(sp)
   12794:	00f4a023          	sw	a5,0(s1)
   12798:	00813483          	ld	s1,8(sp)
   1279c:	02010113          	addi	sp,sp,32
   127a0:	00008067          	jalr	zero,0(ra)

00000000000127a4 <_isatty_r>:
   127a4:	fe010113          	addi	sp,sp,-32
   127a8:	00813823          	sd	s0,16(sp)
   127ac:	00913423          	sd	s1,8(sp)
   127b0:	00050493          	addi	s1,a0,0
   127b4:	00058513          	addi	a0,a1,0
   127b8:	00113c23          	sd	ra,24(sp)
   127bc:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   127c0:	118000ef          	jal	ra,128d8 <_isatty>
   127c4:	fff00793          	addi	a5,zero,-1
   127c8:	00f50c63          	beq	a0,a5,127e0 <_isatty_r+0x3c>
   127cc:	01813083          	ld	ra,24(sp)
   127d0:	01013403          	ld	s0,16(sp)
   127d4:	00813483          	ld	s1,8(sp)
   127d8:	02010113          	addi	sp,sp,32
   127dc:	00008067          	jalr	zero,0(ra)
   127e0:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   127e4:	fe0784e3          	beq	a5,zero,127cc <_isatty_r+0x28>
   127e8:	01813083          	ld	ra,24(sp)
   127ec:	01013403          	ld	s0,16(sp)
   127f0:	00f4a023          	sw	a5,0(s1)
   127f4:	00813483          	ld	s1,8(sp)
   127f8:	02010113          	addi	sp,sp,32
   127fc:	00008067          	jalr	zero,0(ra)

0000000000012800 <_close>:
   12800:	03900893          	addi	a7,zero,57
   12804:	00000073          	ecall
   12808:	00054663          	blt	a0,zero,12814 <_close+0x14>
   1280c:	0005051b          	addiw	a0,a0,0
   12810:	00008067          	jalr	zero,0(ra)
   12814:	fe010113          	addi	sp,sp,-32
   12818:	00113c23          	sd	ra,24(sp)
   1281c:	00a13423          	sd	a0,8(sp)
   12820:	29c000ef          	jal	ra,12abc <__errno>
   12824:	00813783          	ld	a5,8(sp)
   12828:	01813083          	ld	ra,24(sp)
   1282c:	40f007bb          	subw	a5,zero,a5
   12830:	00f52023          	sw	a5,0(a0)
   12834:	fff00513          	addi	a0,zero,-1
   12838:	02010113          	addi	sp,sp,32
   1283c:	00008067          	jalr	zero,0(ra)

0000000000012840 <_exit>:
   12840:	05d00893          	addi	a7,zero,93
   12844:	00000073          	ecall
   12848:	00054463          	blt	a0,zero,12850 <_exit+0x10>
   1284c:	0000006f          	jal	zero,1284c <_exit+0xc>
   12850:	fe010113          	addi	sp,sp,-32
   12854:	00113c23          	sd	ra,24(sp)
   12858:	00a13423          	sd	a0,8(sp)
   1285c:	260000ef          	jal	ra,12abc <__errno>
   12860:	00813783          	ld	a5,8(sp)
   12864:	40f007bb          	subw	a5,zero,a5
   12868:	00f52023          	sw	a5,0(a0)
   1286c:	0000006f          	jal	zero,1286c <_exit+0x2c>

0000000000012870 <_fstat>:
   12870:	f6010113          	addi	sp,sp,-160
   12874:	00058713          	addi	a4,a1,0
   12878:	08113c23          	sd	ra,152(sp)
   1287c:	08813823          	sd	s0,144(sp)
   12880:	05000893          	addi	a7,zero,80
   12884:	01010593          	addi	a1,sp,16
   12888:	00000073          	ecall
   1288c:	02054463          	blt	a0,zero,128b4 <_fstat+0x44>
   12890:	0005041b          	addiw	s0,a0,0
   12894:	01010593          	addi	a1,sp,16
   12898:	00070513          	addi	a0,a4,0
   1289c:	1b4000ef          	jal	ra,12a50 <_conv_stat>
   128a0:	09813083          	ld	ra,152(sp)
   128a4:	00040513          	addi	a0,s0,0
   128a8:	09013403          	ld	s0,144(sp)
   128ac:	0a010113          	addi	sp,sp,160
   128b0:	00008067          	jalr	zero,0(ra)
   128b4:	00e13023          	sd	a4,0(sp)
   128b8:	00a13423          	sd	a0,8(sp)
   128bc:	200000ef          	jal	ra,12abc <__errno>
   128c0:	00813783          	ld	a5,8(sp)
   128c4:	00013703          	ld	a4,0(sp)
   128c8:	fff00413          	addi	s0,zero,-1
   128cc:	40f007bb          	subw	a5,zero,a5
   128d0:	00f52023          	sw	a5,0(a0)
   128d4:	fc1ff06f          	jal	zero,12894 <_fstat+0x24>

00000000000128d8 <_isatty>:
   128d8:	f8010113          	addi	sp,sp,-128
   128dc:	00810593          	addi	a1,sp,8
   128e0:	06113c23          	sd	ra,120(sp)
   128e4:	f8dff0ef          	jal	ra,12870 <_fstat>
   128e8:	fff00793          	addi	a5,zero,-1
   128ec:	00f50e63          	beq	a0,a5,12908 <_isatty+0x30>
   128f0:	00c12503          	lw	a0,12(sp)
   128f4:	07813083          	ld	ra,120(sp)
   128f8:	00d5551b          	srliw	a0,a0,0xd
   128fc:	00157513          	andi	a0,a0,1
   12900:	08010113          	addi	sp,sp,128
   12904:	00008067          	jalr	zero,0(ra)
   12908:	07813083          	ld	ra,120(sp)
   1290c:	00000513          	addi	a0,zero,0
   12910:	08010113          	addi	sp,sp,128
   12914:	00008067          	jalr	zero,0(ra)

0000000000012918 <_lseek>:
   12918:	03e00893          	addi	a7,zero,62
   1291c:	00000073          	ecall
   12920:	00054463          	blt	a0,zero,12928 <_lseek+0x10>
   12924:	00008067          	jalr	zero,0(ra)
   12928:	fe010113          	addi	sp,sp,-32
   1292c:	00113c23          	sd	ra,24(sp)
   12930:	00a13423          	sd	a0,8(sp)
   12934:	188000ef          	jal	ra,12abc <__errno>
   12938:	00813783          	ld	a5,8(sp)
   1293c:	01813083          	ld	ra,24(sp)
   12940:	40f007bb          	subw	a5,zero,a5
   12944:	00f52023          	sw	a5,0(a0)
   12948:	fff00793          	addi	a5,zero,-1
   1294c:	00078513          	addi	a0,a5,0
   12950:	02010113          	addi	sp,sp,32
   12954:	00008067          	jalr	zero,0(ra)

0000000000012958 <_read>:
   12958:	03f00893          	addi	a7,zero,63
   1295c:	00000073          	ecall
   12960:	00054463          	blt	a0,zero,12968 <_read+0x10>
   12964:	00008067          	jalr	zero,0(ra)
   12968:	fe010113          	addi	sp,sp,-32
   1296c:	00113c23          	sd	ra,24(sp)
   12970:	00a13423          	sd	a0,8(sp)
   12974:	148000ef          	jal	ra,12abc <__errno>
   12978:	00813783          	ld	a5,8(sp)
   1297c:	01813083          	ld	ra,24(sp)
   12980:	40f007bb          	subw	a5,zero,a5
   12984:	00f52023          	sw	a5,0(a0)
   12988:	fff00793          	addi	a5,zero,-1
   1298c:	00078513          	addi	a0,a5,0
   12990:	02010113          	addi	sp,sp,32
   12994:	00008067          	jalr	zero,0(ra)

0000000000012998 <_sbrk>:
   12998:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   1299c:	ff010113          	addi	sp,sp,-16
   129a0:	00113423          	sd	ra,8(sp)
   129a4:	00050713          	addi	a4,a0,0
   129a8:	02079063          	bne	a5,zero,129c8 <_sbrk+0x30>
   129ac:	0d600893          	addi	a7,zero,214
   129b0:	00000513          	addi	a0,zero,0
   129b4:	00000073          	ecall
   129b8:	fff00793          	addi	a5,zero,-1
   129bc:	02f50c63          	beq	a0,a5,129f4 <_sbrk+0x5c>
   129c0:	00050793          	addi	a5,a0,0
   129c4:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   129c8:	00f70533          	add	a0,a4,a5
   129cc:	0d600893          	addi	a7,zero,214
   129d0:	00000073          	ecall
   129d4:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   129d8:	00f70733          	add	a4,a4,a5
   129dc:	00e51c63          	bne	a0,a4,129f4 <_sbrk+0x5c>
   129e0:	00813083          	ld	ra,8(sp)
   129e4:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   129e8:	00078513          	addi	a0,a5,0
   129ec:	01010113          	addi	sp,sp,16
   129f0:	00008067          	jalr	zero,0(ra)
   129f4:	0c8000ef          	jal	ra,12abc <__errno>
   129f8:	00813083          	ld	ra,8(sp)
   129fc:	00c00793          	addi	a5,zero,12
   12a00:	00f52023          	sw	a5,0(a0)
   12a04:	fff00513          	addi	a0,zero,-1
   12a08:	01010113          	addi	sp,sp,16
   12a0c:	00008067          	jalr	zero,0(ra)

0000000000012a10 <_write>:
   12a10:	04000893          	addi	a7,zero,64
   12a14:	00000073          	ecall
   12a18:	00054463          	blt	a0,zero,12a20 <_write+0x10>
   12a1c:	00008067          	jalr	zero,0(ra)
   12a20:	fe010113          	addi	sp,sp,-32
   12a24:	00113c23          	sd	ra,24(sp)
   12a28:	00a13423          	sd	a0,8(sp)
   12a2c:	090000ef          	jal	ra,12abc <__errno>
   12a30:	00813783          	ld	a5,8(sp)
   12a34:	01813083          	ld	ra,24(sp)
   12a38:	40f007bb          	subw	a5,zero,a5
   12a3c:	00f52023          	sw	a5,0(a0)
   12a40:	fff00793          	addi	a5,zero,-1
   12a44:	00078513          	addi	a0,a5,0
   12a48:	02010113          	addi	sp,sp,32
   12a4c:	00008067          	jalr	zero,0(ra)

0000000000012a50 <_conv_stat>:
   12a50:	0005b383          	ld	t2,0(a1)
   12a54:	0085b283          	ld	t0,8(a1)
   12a58:	0105af83          	lw	t6,16(a1)
   12a5c:	0145af03          	lw	t5,20(a1)
   12a60:	0185ae83          	lw	t4,24(a1)
   12a64:	01c5ae03          	lw	t3,28(a1)
   12a68:	0205b303          	ld	t1,32(a1)
   12a6c:	0305b883          	ld	a7,48(a1)
   12a70:	0405b803          	ld	a6,64(a1)
   12a74:	0385a603          	lw	a2,56(a1)
   12a78:	0485b683          	ld	a3,72(a1)
   12a7c:	0585b703          	ld	a4,88(a1)
   12a80:	0685b783          	ld	a5,104(a1)
   12a84:	00751023          	sh	t2,0(a0)
   12a88:	00551123          	sh	t0,2(a0)
   12a8c:	01f52223          	sw	t6,4(a0)
   12a90:	01e51423          	sh	t5,8(a0)
   12a94:	01d51523          	sh	t4,10(a0)
   12a98:	01c51623          	sh	t3,12(a0)
   12a9c:	00651723          	sh	t1,14(a0)
   12aa0:	01153823          	sd	a7,16(a0)
   12aa4:	05053823          	sd	a6,80(a0)
   12aa8:	04c53423          	sd	a2,72(a0)
   12aac:	00d53c23          	sd	a3,24(a0)
   12ab0:	02e53423          	sd	a4,40(a0)
   12ab4:	02f53c23          	sd	a5,56(a0)
   12ab8:	00008067          	jalr	zero,0(ra)

0000000000012abc <__errno>:
   12abc:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   12ac0:	00008067          	jalr	zero,0(ra)
