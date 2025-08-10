
bin-c:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	addi	a1,zero,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	addi	s0,a0,0
   10134:	3c5000ef          	jal	ra,10cf8 <__call_exitprocs>
   10138:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   1013c:	00078463          	beq	a5,zero,10144 <exit+0x24>
   10140:	000780e7          	jalr	ra,0(a5)
   10144:	00040513          	addi	a0,s0,0
   10148:	008020ef          	jal	ra,12150 <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	addi	a5,zero,0
   10150:	00078863          	beq	a5,zero,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	01850513          	addi	a0,a0,24 # 12018 <__libc_fini_array>
   1015c:	4d50006f          	jal	zero,10e30 <atexit>
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
   10184:	1c5000ef          	jal	ra,10b48 <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	ca850513          	addi	a0,a0,-856 # 10e30 <atexit>
   10190:	00050863          	beq	a0,zero,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	e8450513          	addi	a0,a0,-380 # 12018 <__libc_fini_array>
   1019c:	495000ef          	jal	ra,10e30 <atexit>
   101a0:	0fd000ef          	jal	ra,10a9c <__libc_init_array>
   101a4:	00012503          	lw	a0,0(sp)
   101a8:	00810593          	addi	a1,sp,8
   101ac:	00000613          	addi	a2,zero,0
   101b0:	090000ef          	jal	ra,10240 <main>
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
   101d8:	2d050513          	addi	a0,a0,720 # 122d0 <__EH_FRAME_BEGIN__>
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
   1020c:	2d050513          	addi	a0,a0,720 # 122d0 <__EH_FRAME_BEGIN__>
   10210:	00000317          	auipc	t1,0x0
   10214:	00000067          	jalr	zero,0(zero) # 0 <exit-0x10120>
   10218:	00008067          	jalr	zero,0(ra)

000000000001021c <foo>:
   1021c:	ff010113          	addi	sp,sp,-16
   10220:	00113423          	sd	ra,8(sp)
   10224:	00813023          	sd	s0,0(sp)
   10228:	01010413          	addi	s0,sp,16
   1022c:	00000013          	addi	zero,zero,0
   10230:	00813083          	ld	ra,8(sp)
   10234:	00013403          	ld	s0,0(sp)
   10238:	01010113          	addi	sp,sp,16
   1023c:	00008067          	jalr	zero,0(ra)

0000000000010240 <main>:
   10240:	fe010113          	addi	sp,sp,-32
   10244:	00113c23          	sd	ra,24(sp)
   10248:	00813823          	sd	s0,16(sp)
   1024c:	02010413          	addi	s0,sp,32
   10250:	000127b7          	lui	a5,0x12
   10254:	2c078793          	addi	a5,a5,704 # 122c0 <__errno+0x8>
   10258:	fef43423          	sd	a5,-24(s0)
   1025c:	fe843503          	ld	a0,-24(s0)
   10260:	1c5000ef          	jal	ra,10c24 <strlen>
   10264:	00050793          	addi	a5,a0,0
   10268:	00078613          	addi	a2,a5,0
   1026c:	fe843583          	ld	a1,-24(s0)
   10270:	00100513          	addi	a0,zero,1
   10274:	0bd000ef          	jal	ra,10b30 <write>
   10278:	00000793          	addi	a5,zero,0
   1027c:	00078513          	addi	a0,a5,0
   10280:	01813083          	ld	ra,24(sp)
   10284:	01013403          	ld	s0,16(sp)
   10288:	02010113          	addi	sp,sp,32
   1028c:	00008067          	jalr	zero,0(ra)

0000000000010290 <__fp_lock>:
   10290:	00000513          	addi	a0,zero,0
   10294:	00008067          	jalr	zero,0(ra)

0000000000010298 <stdio_exit_handler>:
   10298:	00013637          	lui	a2,0x13
   1029c:	000125b7          	lui	a1,0x12
   102a0:	00013537          	lui	a0,0x13
   102a4:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   102a8:	b5858593          	addi	a1,a1,-1192 # 11b58 <_fclose_r>
   102ac:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   102b0:	34c0006f          	jal	zero,105fc <_fwalk_sglue>

00000000000102b4 <cleanup_stdio>:
   102b4:	00853583          	ld	a1,8(a0)
   102b8:	ff010113          	addi	sp,sp,-16
   102bc:	00813023          	sd	s0,0(sp)
   102c0:	00113423          	sd	ra,8(sp)
   102c4:	21018793          	addi	a5,gp,528 # 13a28 <__sf>
   102c8:	00050413          	addi	s0,a0,0
   102cc:	00f58463          	beq	a1,a5,102d4 <cleanup_stdio+0x20>
   102d0:	089010ef          	jal	ra,11b58 <_fclose_r>
   102d4:	01043583          	ld	a1,16(s0)
   102d8:	2c018793          	addi	a5,gp,704 # 13ad8 <__sf+0xb0>
   102dc:	00f58663          	beq	a1,a5,102e8 <cleanup_stdio+0x34>
   102e0:	00040513          	addi	a0,s0,0
   102e4:	075010ef          	jal	ra,11b58 <_fclose_r>
   102e8:	01843583          	ld	a1,24(s0)
   102ec:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   102f0:	00f58c63          	beq	a1,a5,10308 <cleanup_stdio+0x54>
   102f4:	00040513          	addi	a0,s0,0
   102f8:	00013403          	ld	s0,0(sp)
   102fc:	00813083          	ld	ra,8(sp)
   10300:	01010113          	addi	sp,sp,16
   10304:	0550106f          	jal	zero,11b58 <_fclose_r>
   10308:	00813083          	ld	ra,8(sp)
   1030c:	00013403          	ld	s0,0(sp)
   10310:	01010113          	addi	sp,sp,16
   10314:	00008067          	jalr	zero,0(ra)

0000000000010318 <__fp_unlock>:
   10318:	00000513          	addi	a0,zero,0
   1031c:	00008067          	jalr	zero,0(ra)

0000000000010320 <global_stdio_init.part.0>:
   10320:	fd010113          	addi	sp,sp,-48
   10324:	000107b7          	lui	a5,0x10
   10328:	02813023          	sd	s0,32(sp)
   1032c:	29878793          	addi	a5,a5,664 # 10298 <stdio_exit_handler>
   10330:	21018413          	addi	s0,gp,528 # 13a28 <__sf>
   10334:	02113423          	sd	ra,40(sp)
   10338:	00913c23          	sd	s1,24(sp)
   1033c:	01213823          	sd	s2,16(sp)
   10340:	01313423          	sd	s3,8(sp)
   10344:	01413023          	sd	s4,0(sp)
   10348:	1af1b023          	sd	a5,416(gp) # 139b8 <__stdio_exit_handler>
   1034c:	00800613          	addi	a2,zero,8
   10350:	00400793          	addi	a5,zero,4
   10354:	00000593          	addi	a1,zero,0
   10358:	2b418513          	addi	a0,gp,692 # 13acc <__sf+0xa4>
   1035c:	00f42823          	sw	a5,16(s0)
   10360:	00043023          	sd	zero,0(s0)
   10364:	00043423          	sd	zero,8(s0)
   10368:	0a042623          	sw	zero,172(s0)
   1036c:	00043c23          	sd	zero,24(s0)
   10370:	02042023          	sw	zero,32(s0)
   10374:	02042423          	sw	zero,40(s0)
   10378:	7d0000ef          	jal	ra,10b48 <memset>
   1037c:	00010a37          	lui	s4,0x10
   10380:	000109b7          	lui	s3,0x10
   10384:	00010937          	lui	s2,0x10
   10388:	000114b7          	lui	s1,0x11
   1038c:	000107b7          	lui	a5,0x10
   10390:	6cca0a13          	addi	s4,s4,1740 # 106cc <__sread>
   10394:	73098993          	addi	s3,s3,1840 # 10730 <__swrite>
   10398:	7b890913          	addi	s2,s2,1976 # 107b8 <__sseek>
   1039c:	81c48493          	addi	s1,s1,-2020 # 1081c <__sclose>
   103a0:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   103a4:	00800613          	addi	a2,zero,8
   103a8:	00000593          	addi	a1,zero,0
   103ac:	36418513          	addi	a0,gp,868 # 13b7c <__sf+0x154>
   103b0:	0cf42023          	sw	a5,192(s0)
   103b4:	03443c23          	sd	s4,56(s0)
   103b8:	05343023          	sd	s3,64(s0)
   103bc:	05243423          	sd	s2,72(s0)
   103c0:	04943823          	sd	s1,80(s0)
   103c4:	02843823          	sd	s0,48(s0)
   103c8:	0a043823          	sd	zero,176(s0)
   103cc:	0a043c23          	sd	zero,184(s0)
   103d0:	14042e23          	sw	zero,348(s0)
   103d4:	0c043423          	sd	zero,200(s0)
   103d8:	0c042823          	sw	zero,208(s0)
   103dc:	0c042c23          	sw	zero,216(s0)
   103e0:	768000ef          	jal	ra,10b48 <memset>
   103e4:	000207b7          	lui	a5,0x20
   103e8:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xc09a>
   103ec:	2c018713          	addi	a4,gp,704 # 13ad8 <__sf+0xb0>
   103f0:	41418513          	addi	a0,gp,1044 # 13c2c <__sf+0x204>
   103f4:	00800613          	addi	a2,zero,8
   103f8:	00000593          	addi	a1,zero,0
   103fc:	0f443423          	sd	s4,232(s0)
   10400:	0f343823          	sd	s3,240(s0)
   10404:	0f243c23          	sd	s2,248(s0)
   10408:	10943023          	sd	s1,256(s0)
   1040c:	16f42823          	sw	a5,368(s0)
   10410:	16043023          	sd	zero,352(s0)
   10414:	16043423          	sd	zero,360(s0)
   10418:	20042623          	sw	zero,524(s0)
   1041c:	16043c23          	sd	zero,376(s0)
   10420:	18042023          	sw	zero,384(s0)
   10424:	18042423          	sw	zero,392(s0)
   10428:	0ee43023          	sd	a4,224(s0)
   1042c:	71c000ef          	jal	ra,10b48 <memset>
   10430:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   10434:	19443c23          	sd	s4,408(s0)
   10438:	1b343023          	sd	s3,416(s0)
   1043c:	1b243423          	sd	s2,424(s0)
   10440:	1a943823          	sd	s1,432(s0)
   10444:	02813083          	ld	ra,40(sp)
   10448:	18f43823          	sd	a5,400(s0)
   1044c:	02013403          	ld	s0,32(sp)
   10450:	01813483          	ld	s1,24(sp)
   10454:	01013903          	ld	s2,16(sp)
   10458:	00813983          	ld	s3,8(sp)
   1045c:	00013a03          	ld	s4,0(sp)
   10460:	03010113          	addi	sp,sp,48
   10464:	00008067          	jalr	zero,0(ra)

0000000000010468 <__sfp>:
   10468:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   1046c:	fd010113          	addi	sp,sp,-48
   10470:	00913c23          	sd	s1,24(sp)
   10474:	02113423          	sd	ra,40(sp)
   10478:	02813023          	sd	s0,32(sp)
   1047c:	00050493          	addi	s1,a0,0
   10480:	10078463          	beq	a5,zero,10588 <__sfp+0x120>
   10484:	000136b7          	lui	a3,0x13
   10488:	01868693          	addi	a3,a3,24 # 13018 <__sglue>
   1048c:	0086a703          	lw	a4,8(a3)
   10490:	08e05c63          	bge	zero,a4,10528 <__sfp+0xc0>
   10494:	02071713          	slli	a4,a4,0x20
   10498:	02075713          	srli	a4,a4,0x20
   1049c:	00171793          	slli	a5,a4,0x1
   104a0:	00e787b3          	add	a5,a5,a4
   104a4:	0106b403          	ld	s0,16(a3)
   104a8:	00279793          	slli	a5,a5,0x2
   104ac:	40e787b3          	sub	a5,a5,a4
   104b0:	00479793          	slli	a5,a5,0x4
   104b4:	00f407b3          	add	a5,s0,a5
   104b8:	00c0006f          	jal	zero,104c4 <__sfp+0x5c>
   104bc:	0b040413          	addi	s0,s0,176
   104c0:	06f40463          	beq	s0,a5,10528 <__sfp+0xc0>
   104c4:	01041703          	lh	a4,16(s0)
   104c8:	fe071ae3          	bne	a4,zero,104bc <__sfp+0x54>
   104cc:	ffff07b7          	lui	a5,0xffff0
   104d0:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdc089>
   104d4:	00f42823          	sw	a5,16(s0)
   104d8:	0a042623          	sw	zero,172(s0)
   104dc:	00043023          	sd	zero,0(s0)
   104e0:	00043423          	sd	zero,8(s0)
   104e4:	00043c23          	sd	zero,24(s0)
   104e8:	02042023          	sw	zero,32(s0)
   104ec:	02042423          	sw	zero,40(s0)
   104f0:	00800613          	addi	a2,zero,8
   104f4:	00000593          	addi	a1,zero,0
   104f8:	0a440513          	addi	a0,s0,164
   104fc:	64c000ef          	jal	ra,10b48 <memset>
   10500:	04043c23          	sd	zero,88(s0)
   10504:	06042023          	sw	zero,96(s0)
   10508:	06043c23          	sd	zero,120(s0)
   1050c:	08042023          	sw	zero,128(s0)
   10510:	02813083          	ld	ra,40(sp)
   10514:	00040513          	addi	a0,s0,0
   10518:	02013403          	ld	s0,32(sp)
   1051c:	01813483          	ld	s1,24(sp)
   10520:	03010113          	addi	sp,sp,48
   10524:	00008067          	jalr	zero,0(ra)
   10528:	0006b403          	ld	s0,0(a3)
   1052c:	00040663          	beq	s0,zero,10538 <__sfp+0xd0>
   10530:	00040693          	addi	a3,s0,0
   10534:	f59ff06f          	jal	zero,1048c <__sfp+0x24>
   10538:	2d800593          	addi	a1,zero,728
   1053c:	00048513          	addi	a0,s1,0
   10540:	00d13423          	sd	a3,8(sp)
   10544:	529000ef          	jal	ra,1126c <_malloc_r>
   10548:	00813683          	ld	a3,8(sp)
   1054c:	00050413          	addi	s0,a0,0
   10550:	04050063          	beq	a0,zero,10590 <__sfp+0x128>
   10554:	00400793          	addi	a5,zero,4
   10558:	00f52423          	sw	a5,8(a0)
   1055c:	01850513          	addi	a0,a0,24
   10560:	00043023          	sd	zero,0(s0)
   10564:	00a43823          	sd	a0,16(s0)
   10568:	2c000613          	addi	a2,zero,704
   1056c:	00000593          	addi	a1,zero,0
   10570:	00d13423          	sd	a3,8(sp)
   10574:	5d4000ef          	jal	ra,10b48 <memset>
   10578:	00813683          	ld	a3,8(sp)
   1057c:	0086b023          	sd	s0,0(a3)
   10580:	00040693          	addi	a3,s0,0
   10584:	f09ff06f          	jal	zero,1048c <__sfp+0x24>
   10588:	d99ff0ef          	jal	ra,10320 <global_stdio_init.part.0>
   1058c:	ef9ff06f          	jal	zero,10484 <__sfp+0x1c>
   10590:	0006b023          	sd	zero,0(a3)
   10594:	00c00793          	addi	a5,zero,12
   10598:	00f4a023          	sw	a5,0(s1)
   1059c:	f75ff06f          	jal	zero,10510 <__sfp+0xa8>

00000000000105a0 <__sinit>:
   105a0:	04853783          	ld	a5,72(a0)
   105a4:	00078463          	beq	a5,zero,105ac <__sinit+0xc>
   105a8:	00008067          	jalr	zero,0(ra)
   105ac:	000107b7          	lui	a5,0x10
   105b0:	1a01b703          	ld	a4,416(gp) # 139b8 <__stdio_exit_handler>
   105b4:	2b478793          	addi	a5,a5,692 # 102b4 <cleanup_stdio>
   105b8:	04f53423          	sd	a5,72(a0)
   105bc:	fe0716e3          	bne	a4,zero,105a8 <__sinit+0x8>
   105c0:	d61ff06f          	jal	zero,10320 <global_stdio_init.part.0>

00000000000105c4 <__sfp_lock_acquire>:
   105c4:	00008067          	jalr	zero,0(ra)

00000000000105c8 <__sfp_lock_release>:
   105c8:	00008067          	jalr	zero,0(ra)

00000000000105cc <__fp_lock_all>:
   105cc:	00013637          	lui	a2,0x13
   105d0:	000105b7          	lui	a1,0x10
   105d4:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   105d8:	29058593          	addi	a1,a1,656 # 10290 <__fp_lock>
   105dc:	00000513          	addi	a0,zero,0
   105e0:	01c0006f          	jal	zero,105fc <_fwalk_sglue>

00000000000105e4 <__fp_unlock_all>:
   105e4:	00013637          	lui	a2,0x13
   105e8:	000105b7          	lui	a1,0x10
   105ec:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   105f0:	31858593          	addi	a1,a1,792 # 10318 <__fp_unlock>
   105f4:	00000513          	addi	a0,zero,0
   105f8:	0040006f          	jal	zero,105fc <_fwalk_sglue>

00000000000105fc <_fwalk_sglue>:
   105fc:	fb010113          	addi	sp,sp,-80
   10600:	03213823          	sd	s2,48(sp)
   10604:	03313423          	sd	s3,40(sp)
   10608:	03413023          	sd	s4,32(sp)
   1060c:	01513c23          	sd	s5,24(sp)
   10610:	01613823          	sd	s6,16(sp)
   10614:	01713423          	sd	s7,8(sp)
   10618:	04113423          	sd	ra,72(sp)
   1061c:	04813023          	sd	s0,64(sp)
   10620:	02913c23          	sd	s1,56(sp)
   10624:	00060913          	addi	s2,a2,0
   10628:	00050a13          	addi	s4,a0,0
   1062c:	00058a93          	addi	s5,a1,0
   10630:	00000b13          	addi	s6,zero,0
   10634:	00100b93          	addi	s7,zero,1
   10638:	fff00993          	addi	s3,zero,-1
   1063c:	00892783          	lw	a5,8(s2)
   10640:	04f05a63          	bge	zero,a5,10694 <_fwalk_sglue+0x98>
   10644:	02079793          	slli	a5,a5,0x20
   10648:	0207d793          	srli	a5,a5,0x20
   1064c:	00179493          	slli	s1,a5,0x1
   10650:	00f484b3          	add	s1,s1,a5
   10654:	01093403          	ld	s0,16(s2)
   10658:	00249493          	slli	s1,s1,0x2
   1065c:	40f484b3          	sub	s1,s1,a5
   10660:	00449493          	slli	s1,s1,0x4
   10664:	009404b3          	add	s1,s0,s1
   10668:	01045783          	lhu	a5,16(s0)
   1066c:	02fbf063          	bgeu	s7,a5,1068c <_fwalk_sglue+0x90>
   10670:	01241783          	lh	a5,18(s0)
   10674:	00040593          	addi	a1,s0,0
   10678:	000a0513          	addi	a0,s4,0
   1067c:	01378863          	beq	a5,s3,1068c <_fwalk_sglue+0x90>
   10680:	000a80e7          	jalr	ra,0(s5)
   10684:	01656b33          	or	s6,a0,s6
   10688:	000b0b1b          	addiw	s6,s6,0
   1068c:	0b040413          	addi	s0,s0,176
   10690:	fc941ce3          	bne	s0,s1,10668 <_fwalk_sglue+0x6c>
   10694:	00093903          	ld	s2,0(s2)
   10698:	fa0912e3          	bne	s2,zero,1063c <_fwalk_sglue+0x40>
   1069c:	04813083          	ld	ra,72(sp)
   106a0:	04013403          	ld	s0,64(sp)
   106a4:	03813483          	ld	s1,56(sp)
   106a8:	03013903          	ld	s2,48(sp)
   106ac:	02813983          	ld	s3,40(sp)
   106b0:	02013a03          	ld	s4,32(sp)
   106b4:	01813a83          	ld	s5,24(sp)
   106b8:	00813b83          	ld	s7,8(sp)
   106bc:	000b0513          	addi	a0,s6,0
   106c0:	01013b03          	ld	s6,16(sp)
   106c4:	05010113          	addi	sp,sp,80
   106c8:	00008067          	jalr	zero,0(ra)

00000000000106cc <__sread>:
   106cc:	ff010113          	addi	sp,sp,-16
   106d0:	00813023          	sd	s0,0(sp)
   106d4:	00058413          	addi	s0,a1,0
   106d8:	01259583          	lh	a1,18(a1)
   106dc:	00113423          	sd	ra,8(sp)
   106e0:	2ec000ef          	jal	ra,109cc <_read_r>
   106e4:	02054063          	blt	a0,zero,10704 <__sread+0x38>
   106e8:	09043783          	ld	a5,144(s0)
   106ec:	00813083          	ld	ra,8(sp)
   106f0:	00a787b3          	add	a5,a5,a0
   106f4:	08f43823          	sd	a5,144(s0)
   106f8:	00013403          	ld	s0,0(sp)
   106fc:	01010113          	addi	sp,sp,16
   10700:	00008067          	jalr	zero,0(ra)
   10704:	01045783          	lhu	a5,16(s0)
   10708:	fffff737          	lui	a4,0xfffff
   1070c:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10710:	00e7f7b3          	and	a5,a5,a4
   10714:	00813083          	ld	ra,8(sp)
   10718:	00f41823          	sh	a5,16(s0)
   1071c:	00013403          	ld	s0,0(sp)
   10720:	01010113          	addi	sp,sp,16
   10724:	00008067          	jalr	zero,0(ra)

0000000000010728 <__seofread>:
   10728:	00000513          	addi	a0,zero,0
   1072c:	00008067          	jalr	zero,0(ra)

0000000000010730 <__swrite>:
   10730:	01059783          	lh	a5,16(a1)
   10734:	fd010113          	addi	sp,sp,-48
   10738:	00068313          	addi	t1,a3,0
   1073c:	02113423          	sd	ra,40(sp)
   10740:	1007f693          	andi	a3,a5,256
   10744:	00058713          	addi	a4,a1,0
   10748:	00060893          	addi	a7,a2,0
   1074c:	00050813          	addi	a6,a0,0
   10750:	02069863          	bne	a3,zero,10780 <__swrite+0x50>
   10754:	fffff6b7          	lui	a3,0xfffff
   10758:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   1075c:	02813083          	ld	ra,40(sp)
   10760:	00d7f7b3          	and	a5,a5,a3
   10764:	01271583          	lh	a1,18(a4)
   10768:	00f71823          	sh	a5,16(a4)
   1076c:	00030693          	addi	a3,t1,0 # 10210 <frame_dummy+0x14>
   10770:	00088613          	addi	a2,a7,0
   10774:	00080513          	addi	a0,a6,0
   10778:	03010113          	addi	sp,sp,48
   1077c:	2b80006f          	jal	zero,10a34 <_write_r>
   10780:	01259583          	lh	a1,18(a1)
   10784:	00c13823          	sd	a2,16(sp)
   10788:	00200693          	addi	a3,zero,2
   1078c:	00000613          	addi	a2,zero,0
   10790:	00613c23          	sd	t1,24(sp)
   10794:	00e13023          	sd	a4,0(sp)
   10798:	00a13423          	sd	a0,8(sp)
   1079c:	1c8000ef          	jal	ra,10964 <_lseek_r>
   107a0:	00013703          	ld	a4,0(sp)
   107a4:	01813303          	ld	t1,24(sp)
   107a8:	01013883          	ld	a7,16(sp)
   107ac:	01071783          	lh	a5,16(a4)
   107b0:	00813803          	ld	a6,8(sp)
   107b4:	fa1ff06f          	jal	zero,10754 <__swrite+0x24>

00000000000107b8 <__sseek>:
   107b8:	ff010113          	addi	sp,sp,-16
   107bc:	00813023          	sd	s0,0(sp)
   107c0:	00058413          	addi	s0,a1,0
   107c4:	01259583          	lh	a1,18(a1)
   107c8:	00113423          	sd	ra,8(sp)
   107cc:	198000ef          	jal	ra,10964 <_lseek_r>
   107d0:	fff00713          	addi	a4,zero,-1
   107d4:	01041783          	lh	a5,16(s0)
   107d8:	02e50263          	beq	a0,a4,107fc <__sseek+0x44>
   107dc:	00001737          	lui	a4,0x1
   107e0:	00e7e7b3          	or	a5,a5,a4
   107e4:	00813083          	ld	ra,8(sp)
   107e8:	08a43823          	sd	a0,144(s0)
   107ec:	00f41823          	sh	a5,16(s0)
   107f0:	00013403          	ld	s0,0(sp)
   107f4:	01010113          	addi	sp,sp,16
   107f8:	00008067          	jalr	zero,0(ra)
   107fc:	80050713          	addi	a4,a0,-2048
   10800:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   10804:	00e7f7b3          	and	a5,a5,a4
   10808:	00813083          	ld	ra,8(sp)
   1080c:	00f41823          	sh	a5,16(s0)
   10810:	00013403          	ld	s0,0(sp)
   10814:	01010113          	addi	sp,sp,16
   10818:	00008067          	jalr	zero,0(ra)

000000000001081c <__sclose>:
   1081c:	01259583          	lh	a1,18(a1)
   10820:	0040006f          	jal	zero,10824 <_close_r>

0000000000010824 <_close_r>:
   10824:	fe010113          	addi	sp,sp,-32
   10828:	00813823          	sd	s0,16(sp)
   1082c:	00913423          	sd	s1,8(sp)
   10830:	00050493          	addi	s1,a0,0
   10834:	00058513          	addi	a0,a1,0
   10838:	00113c23          	sd	ra,24(sp)
   1083c:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10840:	0d1010ef          	jal	ra,12110 <_close>
   10844:	fff00793          	addi	a5,zero,-1
   10848:	00f50c63          	beq	a0,a5,10860 <_close_r+0x3c>
   1084c:	01813083          	ld	ra,24(sp)
   10850:	01013403          	ld	s0,16(sp)
   10854:	00813483          	ld	s1,8(sp)
   10858:	02010113          	addi	sp,sp,32
   1085c:	00008067          	jalr	zero,0(ra)
   10860:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10864:	fe0784e3          	beq	a5,zero,1084c <_close_r+0x28>
   10868:	01813083          	ld	ra,24(sp)
   1086c:	01013403          	ld	s0,16(sp)
   10870:	00f4a023          	sw	a5,0(s1)
   10874:	00813483          	ld	s1,8(sp)
   10878:	02010113          	addi	sp,sp,32
   1087c:	00008067          	jalr	zero,0(ra)

0000000000010880 <_reclaim_reent>:
   10880:	1881b783          	ld	a5,392(gp) # 139a0 <_impure_ptr>
   10884:	0ca78e63          	beq	a5,a0,10960 <_reclaim_reent+0xe0>
   10888:	06853583          	ld	a1,104(a0)
   1088c:	fd010113          	addi	sp,sp,-48
   10890:	00913c23          	sd	s1,24(sp)
   10894:	02113423          	sd	ra,40(sp)
   10898:	02813023          	sd	s0,32(sp)
   1089c:	00050493          	addi	s1,a0,0
   108a0:	04058863          	beq	a1,zero,108f0 <_reclaim_reent+0x70>
   108a4:	01213823          	sd	s2,16(sp)
   108a8:	01313423          	sd	s3,8(sp)
   108ac:	00000913          	addi	s2,zero,0
   108b0:	20000993          	addi	s3,zero,512
   108b4:	012587b3          	add	a5,a1,s2
   108b8:	0007b403          	ld	s0,0(a5)
   108bc:	00040e63          	beq	s0,zero,108d8 <_reclaim_reent+0x58>
   108c0:	00040593          	addi	a1,s0,0
   108c4:	00043403          	ld	s0,0(s0)
   108c8:	00048513          	addi	a0,s1,0
   108cc:	69c000ef          	jal	ra,10f68 <_free_r>
   108d0:	fe0418e3          	bne	s0,zero,108c0 <_reclaim_reent+0x40>
   108d4:	0684b583          	ld	a1,104(s1)
   108d8:	00890913          	addi	s2,s2,8
   108dc:	fd391ce3          	bne	s2,s3,108b4 <_reclaim_reent+0x34>
   108e0:	00048513          	addi	a0,s1,0
   108e4:	684000ef          	jal	ra,10f68 <_free_r>
   108e8:	01013903          	ld	s2,16(sp)
   108ec:	00813983          	ld	s3,8(sp)
   108f0:	0504b583          	ld	a1,80(s1)
   108f4:	00058663          	beq	a1,zero,10900 <_reclaim_reent+0x80>
   108f8:	00048513          	addi	a0,s1,0
   108fc:	66c000ef          	jal	ra,10f68 <_free_r>
   10900:	0604b403          	ld	s0,96(s1)
   10904:	00040c63          	beq	s0,zero,1091c <_reclaim_reent+0x9c>
   10908:	00040593          	addi	a1,s0,0
   1090c:	00043403          	ld	s0,0(s0)
   10910:	00048513          	addi	a0,s1,0
   10914:	654000ef          	jal	ra,10f68 <_free_r>
   10918:	fe0418e3          	bne	s0,zero,10908 <_reclaim_reent+0x88>
   1091c:	0784b583          	ld	a1,120(s1)
   10920:	00058663          	beq	a1,zero,1092c <_reclaim_reent+0xac>
   10924:	00048513          	addi	a0,s1,0
   10928:	640000ef          	jal	ra,10f68 <_free_r>
   1092c:	0484b783          	ld	a5,72(s1)
   10930:	00078e63          	beq	a5,zero,1094c <_reclaim_reent+0xcc>
   10934:	02013403          	ld	s0,32(sp)
   10938:	02813083          	ld	ra,40(sp)
   1093c:	00048513          	addi	a0,s1,0
   10940:	01813483          	ld	s1,24(sp)
   10944:	03010113          	addi	sp,sp,48
   10948:	00078067          	jalr	zero,0(a5)
   1094c:	02813083          	ld	ra,40(sp)
   10950:	02013403          	ld	s0,32(sp)
   10954:	01813483          	ld	s1,24(sp)
   10958:	03010113          	addi	sp,sp,48
   1095c:	00008067          	jalr	zero,0(ra)
   10960:	00008067          	jalr	zero,0(ra)

0000000000010964 <_lseek_r>:
   10964:	fe010113          	addi	sp,sp,-32
   10968:	00058793          	addi	a5,a1,0
   1096c:	00813823          	sd	s0,16(sp)
   10970:	00913423          	sd	s1,8(sp)
   10974:	00060593          	addi	a1,a2,0
   10978:	00050493          	addi	s1,a0,0
   1097c:	00068613          	addi	a2,a3,0
   10980:	00078513          	addi	a0,a5,0
   10984:	00113c23          	sd	ra,24(sp)
   10988:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   1098c:	7f4010ef          	jal	ra,12180 <_lseek>
   10990:	fff00793          	addi	a5,zero,-1
   10994:	00f50c63          	beq	a0,a5,109ac <_lseek_r+0x48>
   10998:	01813083          	ld	ra,24(sp)
   1099c:	01013403          	ld	s0,16(sp)
   109a0:	00813483          	ld	s1,8(sp)
   109a4:	02010113          	addi	sp,sp,32
   109a8:	00008067          	jalr	zero,0(ra)
   109ac:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   109b0:	fe0784e3          	beq	a5,zero,10998 <_lseek_r+0x34>
   109b4:	01813083          	ld	ra,24(sp)
   109b8:	01013403          	ld	s0,16(sp)
   109bc:	00f4a023          	sw	a5,0(s1)
   109c0:	00813483          	ld	s1,8(sp)
   109c4:	02010113          	addi	sp,sp,32
   109c8:	00008067          	jalr	zero,0(ra)

00000000000109cc <_read_r>:
   109cc:	fe010113          	addi	sp,sp,-32
   109d0:	00058793          	addi	a5,a1,0
   109d4:	00813823          	sd	s0,16(sp)
   109d8:	00913423          	sd	s1,8(sp)
   109dc:	00060593          	addi	a1,a2,0
   109e0:	00050493          	addi	s1,a0,0
   109e4:	00068613          	addi	a2,a3,0
   109e8:	00078513          	addi	a0,a5,0
   109ec:	00113c23          	sd	ra,24(sp)
   109f0:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   109f4:	7cc010ef          	jal	ra,121c0 <_read>
   109f8:	fff00793          	addi	a5,zero,-1
   109fc:	00f50c63          	beq	a0,a5,10a14 <_read_r+0x48>
   10a00:	01813083          	ld	ra,24(sp)
   10a04:	01013403          	ld	s0,16(sp)
   10a08:	00813483          	ld	s1,8(sp)
   10a0c:	02010113          	addi	sp,sp,32
   10a10:	00008067          	jalr	zero,0(ra)
   10a14:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10a18:	fe0784e3          	beq	a5,zero,10a00 <_read_r+0x34>
   10a1c:	01813083          	ld	ra,24(sp)
   10a20:	01013403          	ld	s0,16(sp)
   10a24:	00f4a023          	sw	a5,0(s1)
   10a28:	00813483          	ld	s1,8(sp)
   10a2c:	02010113          	addi	sp,sp,32
   10a30:	00008067          	jalr	zero,0(ra)

0000000000010a34 <_write_r>:
   10a34:	fe010113          	addi	sp,sp,-32
   10a38:	00058793          	addi	a5,a1,0
   10a3c:	00813823          	sd	s0,16(sp)
   10a40:	00913423          	sd	s1,8(sp)
   10a44:	00060593          	addi	a1,a2,0
   10a48:	00050493          	addi	s1,a0,0
   10a4c:	00068613          	addi	a2,a3,0
   10a50:	00078513          	addi	a0,a5,0
   10a54:	00113c23          	sd	ra,24(sp)
   10a58:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10a5c:	01d010ef          	jal	ra,12278 <_write>
   10a60:	fff00793          	addi	a5,zero,-1
   10a64:	00f50c63          	beq	a0,a5,10a7c <_write_r+0x48>
   10a68:	01813083          	ld	ra,24(sp)
   10a6c:	01013403          	ld	s0,16(sp)
   10a70:	00813483          	ld	s1,8(sp)
   10a74:	02010113          	addi	sp,sp,32
   10a78:	00008067          	jalr	zero,0(ra)
   10a7c:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10a80:	fe0784e3          	beq	a5,zero,10a68 <_write_r+0x34>
   10a84:	01813083          	ld	ra,24(sp)
   10a88:	01013403          	ld	s0,16(sp)
   10a8c:	00f4a023          	sw	a5,0(s1)
   10a90:	00813483          	ld	s1,8(sp)
   10a94:	02010113          	addi	sp,sp,32
   10a98:	00008067          	jalr	zero,0(ra)

0000000000010a9c <__libc_init_array>:
   10a9c:	fe010113          	addi	sp,sp,-32
   10aa0:	00813823          	sd	s0,16(sp)
   10aa4:	01213023          	sd	s2,0(sp)
   10aa8:	00013437          	lui	s0,0x13
   10aac:	00013937          	lui	s2,0x13
   10ab0:	00113c23          	sd	ra,24(sp)
   10ab4:	00913423          	sd	s1,8(sp)
   10ab8:	00090913          	addi	s2,s2,0 # 13000 <__init_array_start>
   10abc:	00040413          	addi	s0,s0,0 # 13000 <__init_array_start>
   10ac0:	02890263          	beq	s2,s0,10ae4 <__libc_init_array+0x48>
   10ac4:	40890933          	sub	s2,s2,s0
   10ac8:	40395913          	srai	s2,s2,0x3
   10acc:	00000493          	addi	s1,zero,0
   10ad0:	00043783          	ld	a5,0(s0)
   10ad4:	00148493          	addi	s1,s1,1
   10ad8:	00840413          	addi	s0,s0,8
   10adc:	000780e7          	jalr	ra,0(a5)
   10ae0:	ff24e8e3          	bltu	s1,s2,10ad0 <__libc_init_array+0x34>
   10ae4:	00013937          	lui	s2,0x13
   10ae8:	00013437          	lui	s0,0x13
   10aec:	01090913          	addi	s2,s2,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   10af0:	00040413          	addi	s0,s0,0 # 13000 <__init_array_start>
   10af4:	02890263          	beq	s2,s0,10b18 <__libc_init_array+0x7c>
   10af8:	40890933          	sub	s2,s2,s0
   10afc:	40395913          	srai	s2,s2,0x3
   10b00:	00000493          	addi	s1,zero,0
   10b04:	00043783          	ld	a5,0(s0)
   10b08:	00148493          	addi	s1,s1,1
   10b0c:	00840413          	addi	s0,s0,8
   10b10:	000780e7          	jalr	ra,0(a5)
   10b14:	ff24e8e3          	bltu	s1,s2,10b04 <__libc_init_array+0x68>
   10b18:	01813083          	ld	ra,24(sp)
   10b1c:	01013403          	ld	s0,16(sp)
   10b20:	00813483          	ld	s1,8(sp)
   10b24:	00013903          	ld	s2,0(sp)
   10b28:	02010113          	addi	sp,sp,32
   10b2c:	00008067          	jalr	zero,0(ra)

0000000000010b30 <write>:
   10b30:	00050713          	addi	a4,a0,0
   10b34:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   10b38:	00060693          	addi	a3,a2,0
   10b3c:	00058613          	addi	a2,a1,0
   10b40:	00070593          	addi	a1,a4,0
   10b44:	ef1ff06f          	jal	zero,10a34 <_write_r>

0000000000010b48 <memset>:
   10b48:	00f00313          	addi	t1,zero,15
   10b4c:	00050713          	addi	a4,a0,0
   10b50:	02c37a63          	bgeu	t1,a2,10b84 <memset+0x3c>
   10b54:	00f77793          	andi	a5,a4,15
   10b58:	0a079063          	bne	a5,zero,10bf8 <memset+0xb0>
   10b5c:	06059e63          	bne	a1,zero,10bd8 <memset+0x90>
   10b60:	ff067693          	andi	a3,a2,-16
   10b64:	00f67613          	andi	a2,a2,15
   10b68:	00e686b3          	add	a3,a3,a4
   10b6c:	00b73023          	sd	a1,0(a4)
   10b70:	00b73423          	sd	a1,8(a4)
   10b74:	01070713          	addi	a4,a4,16
   10b78:	fed76ae3          	bltu	a4,a3,10b6c <memset+0x24>
   10b7c:	00061463          	bne	a2,zero,10b84 <memset+0x3c>
   10b80:	00008067          	jalr	zero,0(ra)
   10b84:	40c306b3          	sub	a3,t1,a2
   10b88:	00269693          	slli	a3,a3,0x2
   10b8c:	00000297          	auipc	t0,0x0
   10b90:	005686b3          	add	a3,a3,t0
   10b94:	00c68067          	jalr	zero,12(a3)
   10b98:	00b70723          	sb	a1,14(a4)
   10b9c:	00b706a3          	sb	a1,13(a4)
   10ba0:	00b70623          	sb	a1,12(a4)
   10ba4:	00b705a3          	sb	a1,11(a4)
   10ba8:	00b70523          	sb	a1,10(a4)
   10bac:	00b704a3          	sb	a1,9(a4)
   10bb0:	00b70423          	sb	a1,8(a4)
   10bb4:	00b703a3          	sb	a1,7(a4)
   10bb8:	00b70323          	sb	a1,6(a4)
   10bbc:	00b702a3          	sb	a1,5(a4)
   10bc0:	00b70223          	sb	a1,4(a4)
   10bc4:	00b701a3          	sb	a1,3(a4)
   10bc8:	00b70123          	sb	a1,2(a4)
   10bcc:	00b700a3          	sb	a1,1(a4)
   10bd0:	00b70023          	sb	a1,0(a4)
   10bd4:	00008067          	jalr	zero,0(ra)
   10bd8:	0ff5f593          	andi	a1,a1,255
   10bdc:	00859693          	slli	a3,a1,0x8
   10be0:	00d5e5b3          	or	a1,a1,a3
   10be4:	01059693          	slli	a3,a1,0x10
   10be8:	00d5e5b3          	or	a1,a1,a3
   10bec:	02059693          	slli	a3,a1,0x20
   10bf0:	00d5e5b3          	or	a1,a1,a3
   10bf4:	f6dff06f          	jal	zero,10b60 <memset+0x18>
   10bf8:	00279693          	slli	a3,a5,0x2
   10bfc:	00000297          	auipc	t0,0x0
   10c00:	005686b3          	add	a3,a3,t0
   10c04:	00008293          	addi	t0,ra,0
   10c08:	f98680e7          	jalr	ra,-104(a3)
   10c0c:	00028093          	addi	ra,t0,0 # 10bfc <memset+0xb4>
   10c10:	ff078793          	addi	a5,a5,-16
   10c14:	40f70733          	sub	a4,a4,a5
   10c18:	00f60633          	add	a2,a2,a5
   10c1c:	f6c374e3          	bgeu	t1,a2,10b84 <memset+0x3c>
   10c20:	f3dff06f          	jal	zero,10b5c <memset+0x14>

0000000000010c24 <strlen>:
   10c24:	00757793          	andi	a5,a0,7
   10c28:	00050713          	addi	a4,a0,0
   10c2c:	08079063          	bne	a5,zero,10cac <strlen+0x88>
   10c30:	7f7f87b7          	lui	a5,0x7f7f8
   10c34:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <__BSS_END__+0x7f7e4007>
   10c38:	02079693          	slli	a3,a5,0x20
   10c3c:	00f686b3          	add	a3,a3,a5
   10c40:	fff00593          	addi	a1,zero,-1
   10c44:	00073603          	ld	a2,0(a4)
   10c48:	00870713          	addi	a4,a4,8
   10c4c:	00d677b3          	and	a5,a2,a3
   10c50:	00d787b3          	add	a5,a5,a3
   10c54:	00c7e7b3          	or	a5,a5,a2
   10c58:	00d7e7b3          	or	a5,a5,a3
   10c5c:	feb784e3          	beq	a5,a1,10c44 <strlen+0x20>
   10c60:	ff874783          	lbu	a5,-8(a4)
   10c64:	40a706b3          	sub	a3,a4,a0
   10c68:	06078463          	beq	a5,zero,10cd0 <strlen+0xac>
   10c6c:	ff974783          	lbu	a5,-7(a4)
   10c70:	04078c63          	beq	a5,zero,10cc8 <strlen+0xa4>
   10c74:	ffa74783          	lbu	a5,-6(a4)
   10c78:	06078463          	beq	a5,zero,10ce0 <strlen+0xbc>
   10c7c:	ffb74783          	lbu	a5,-5(a4)
   10c80:	04078c63          	beq	a5,zero,10cd8 <strlen+0xb4>
   10c84:	ffc74783          	lbu	a5,-4(a4)
   10c88:	06078063          	beq	a5,zero,10ce8 <strlen+0xc4>
   10c8c:	ffd74783          	lbu	a5,-3(a4)
   10c90:	06078063          	beq	a5,zero,10cf0 <strlen+0xcc>
   10c94:	ffe74783          	lbu	a5,-2(a4)
   10c98:	00f03533          	sltu	a0,zero,a5
   10c9c:	00d50533          	add	a0,a0,a3
   10ca0:	ffe50513          	addi	a0,a0,-2
   10ca4:	00008067          	jalr	zero,0(ra)
   10ca8:	f80684e3          	beq	a3,zero,10c30 <strlen+0xc>
   10cac:	00074783          	lbu	a5,0(a4)
   10cb0:	00170713          	addi	a4,a4,1
   10cb4:	00777693          	andi	a3,a4,7
   10cb8:	fe0798e3          	bne	a5,zero,10ca8 <strlen+0x84>
   10cbc:	40a70733          	sub	a4,a4,a0
   10cc0:	fff70513          	addi	a0,a4,-1
   10cc4:	00008067          	jalr	zero,0(ra)
   10cc8:	ff968513          	addi	a0,a3,-7
   10ccc:	00008067          	jalr	zero,0(ra)
   10cd0:	ff868513          	addi	a0,a3,-8
   10cd4:	00008067          	jalr	zero,0(ra)
   10cd8:	ffb68513          	addi	a0,a3,-5
   10cdc:	00008067          	jalr	zero,0(ra)
   10ce0:	ffa68513          	addi	a0,a3,-6
   10ce4:	00008067          	jalr	zero,0(ra)
   10ce8:	ffc68513          	addi	a0,a3,-4
   10cec:	00008067          	jalr	zero,0(ra)
   10cf0:	ffd68513          	addi	a0,a3,-3
   10cf4:	00008067          	jalr	zero,0(ra)

0000000000010cf8 <__call_exitprocs>:
   10cf8:	fb010113          	addi	sp,sp,-80
   10cfc:	03413023          	sd	s4,32(sp)
   10d00:	03213823          	sd	s2,48(sp)
   10d04:	1b01b903          	ld	s2,432(gp) # 139c8 <__atexit>
   10d08:	04113423          	sd	ra,72(sp)
   10d0c:	06090e63          	beq	s2,zero,10d88 <__call_exitprocs+0x90>
   10d10:	03313423          	sd	s3,40(sp)
   10d14:	01513c23          	sd	s5,24(sp)
   10d18:	01613823          	sd	s6,16(sp)
   10d1c:	01713423          	sd	s7,8(sp)
   10d20:	04813023          	sd	s0,64(sp)
   10d24:	02913c23          	sd	s1,56(sp)
   10d28:	01813023          	sd	s8,0(sp)
   10d2c:	00050b13          	addi	s6,a0,0
   10d30:	00058b93          	addi	s7,a1,0
   10d34:	fff00993          	addi	s3,zero,-1
   10d38:	00100a93          	addi	s5,zero,1
   10d3c:	00892403          	lw	s0,8(s2)
   10d40:	fff4041b          	addiw	s0,s0,-1
   10d44:	02044463          	blt	s0,zero,10d6c <__call_exitprocs+0x74>
   10d48:	01090493          	addi	s1,s2,16
   10d4c:	00341793          	slli	a5,s0,0x3
   10d50:	00f484b3          	add	s1,s1,a5
   10d54:	040b8463          	beq	s7,zero,10d9c <__call_exitprocs+0xa4>
   10d58:	2004b783          	ld	a5,512(s1)
   10d5c:	05778063          	beq	a5,s7,10d9c <__call_exitprocs+0xa4>
   10d60:	fff4041b          	addiw	s0,s0,-1
   10d64:	ff848493          	addi	s1,s1,-8
   10d68:	ff3418e3          	bne	s0,s3,10d58 <__call_exitprocs+0x60>
   10d6c:	04013403          	ld	s0,64(sp)
   10d70:	03813483          	ld	s1,56(sp)
   10d74:	02813983          	ld	s3,40(sp)
   10d78:	01813a83          	ld	s5,24(sp)
   10d7c:	01013b03          	ld	s6,16(sp)
   10d80:	00813b83          	ld	s7,8(sp)
   10d84:	00013c03          	ld	s8,0(sp)
   10d88:	04813083          	ld	ra,72(sp)
   10d8c:	03013903          	ld	s2,48(sp)
   10d90:	02013a03          	ld	s4,32(sp)
   10d94:	05010113          	addi	sp,sp,80
   10d98:	00008067          	jalr	zero,0(ra)
   10d9c:	00892783          	lw	a5,8(s2)
   10da0:	0004b683          	ld	a3,0(s1)
   10da4:	fff7879b          	addiw	a5,a5,-1
   10da8:	06878a63          	beq	a5,s0,10e1c <__call_exitprocs+0x124>
   10dac:	0004b023          	sd	zero,0(s1)
   10db0:	02068663          	beq	a3,zero,10ddc <__call_exitprocs+0xe4>
   10db4:	31092783          	lw	a5,784(s2)
   10db8:	008a973b          	sllw	a4,s5,s0
   10dbc:	00892c03          	lw	s8,8(s2)
   10dc0:	00e7f7b3          	and	a5,a5,a4
   10dc4:	02079463          	bne	a5,zero,10dec <__call_exitprocs+0xf4>
   10dc8:	000680e7          	jalr	ra,0(a3)
   10dcc:	00892703          	lw	a4,8(s2)
   10dd0:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10dd4:	03871e63          	bne	a4,s8,10e10 <__call_exitprocs+0x118>
   10dd8:	03279c63          	bne	a5,s2,10e10 <__call_exitprocs+0x118>
   10ddc:	fff4041b          	addiw	s0,s0,-1
   10de0:	ff848493          	addi	s1,s1,-8
   10de4:	f73418e3          	bne	s0,s3,10d54 <__call_exitprocs+0x5c>
   10de8:	f85ff06f          	jal	zero,10d6c <__call_exitprocs+0x74>
   10dec:	31492783          	lw	a5,788(s2)
   10df0:	1004b583          	ld	a1,256(s1)
   10df4:	00f77733          	and	a4,a4,a5
   10df8:	02071663          	bne	a4,zero,10e24 <__call_exitprocs+0x12c>
   10dfc:	000b0513          	addi	a0,s6,0
   10e00:	000680e7          	jalr	ra,0(a3)
   10e04:	00892703          	lw	a4,8(s2)
   10e08:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10e0c:	fd8706e3          	beq	a4,s8,10dd8 <__call_exitprocs+0xe0>
   10e10:	f4078ee3          	beq	a5,zero,10d6c <__call_exitprocs+0x74>
   10e14:	00078913          	addi	s2,a5,0
   10e18:	f25ff06f          	jal	zero,10d3c <__call_exitprocs+0x44>
   10e1c:	00892423          	sw	s0,8(s2)
   10e20:	f91ff06f          	jal	zero,10db0 <__call_exitprocs+0xb8>
   10e24:	00058513          	addi	a0,a1,0
   10e28:	000680e7          	jalr	ra,0(a3)
   10e2c:	fa1ff06f          	jal	zero,10dcc <__call_exitprocs+0xd4>

0000000000010e30 <atexit>:
   10e30:	00050593          	addi	a1,a0,0
   10e34:	00000693          	addi	a3,zero,0
   10e38:	00000613          	addi	a2,zero,0
   10e3c:	00000513          	addi	a0,zero,0
   10e40:	2340106f          	jal	zero,12074 <__register_exitproc>

0000000000010e44 <_malloc_trim_r>:
   10e44:	fd010113          	addi	sp,sp,-48
   10e48:	01213823          	sd	s2,16(sp)
   10e4c:	00013937          	lui	s2,0x13
   10e50:	02813023          	sd	s0,32(sp)
   10e54:	00913c23          	sd	s1,24(sp)
   10e58:	01313423          	sd	s3,8(sp)
   10e5c:	00058413          	addi	s0,a1,0
   10e60:	02113423          	sd	ra,40(sp)
   10e64:	00050993          	addi	s3,a0,0
   10e68:	18890913          	addi	s2,s2,392 # 13188 <__malloc_av_>
   10e6c:	4e5000ef          	jal	ra,11b50 <__malloc_lock>
   10e70:	01093783          	ld	a5,16(s2)
   10e74:	00001737          	lui	a4,0x1
   10e78:	0087b483          	ld	s1,8(a5)
   10e7c:	ffc4f493          	andi	s1,s1,-4
   10e80:	7ff48793          	addi	a5,s1,2047
   10e84:	7e078793          	addi	a5,a5,2016
   10e88:	40878433          	sub	s0,a5,s0
   10e8c:	00c45413          	srli	s0,s0,0xc
   10e90:	fff40413          	addi	s0,s0,-1
   10e94:	00c41413          	slli	s0,s0,0xc
   10e98:	00e44e63          	blt	s0,a4,10eb4 <_malloc_trim_r+0x70>
   10e9c:	00000593          	addi	a1,zero,0
   10ea0:	00098513          	addi	a0,s3,0
   10ea4:	118010ef          	jal	ra,11fbc <_sbrk_r>
   10ea8:	01093783          	ld	a5,16(s2)
   10eac:	009787b3          	add	a5,a5,s1
   10eb0:	02f50663          	beq	a0,a5,10edc <_malloc_trim_r+0x98>
   10eb4:	00098513          	addi	a0,s3,0
   10eb8:	49d000ef          	jal	ra,11b54 <__malloc_unlock>
   10ebc:	02813083          	ld	ra,40(sp)
   10ec0:	02013403          	ld	s0,32(sp)
   10ec4:	01813483          	ld	s1,24(sp)
   10ec8:	01013903          	ld	s2,16(sp)
   10ecc:	00813983          	ld	s3,8(sp)
   10ed0:	00000513          	addi	a0,zero,0
   10ed4:	03010113          	addi	sp,sp,48
   10ed8:	00008067          	jalr	zero,0(ra)
   10edc:	408005b3          	sub	a1,zero,s0
   10ee0:	00098513          	addi	a0,s3,0
   10ee4:	0d8010ef          	jal	ra,11fbc <_sbrk_r>
   10ee8:	fff00793          	addi	a5,zero,-1
   10eec:	04f50463          	beq	a0,a5,10f34 <_malloc_trim_r+0xf0>
   10ef0:	01093683          	ld	a3,16(s2)
   10ef4:	4201a783          	lw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   10ef8:	408484b3          	sub	s1,s1,s0
   10efc:	0014e493          	ori	s1,s1,1
   10f00:	00098513          	addi	a0,s3,0
   10f04:	408787bb          	subw	a5,a5,s0
   10f08:	0096b423          	sd	s1,8(a3)
   10f0c:	42f1a023          	sw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   10f10:	445000ef          	jal	ra,11b54 <__malloc_unlock>
   10f14:	02813083          	ld	ra,40(sp)
   10f18:	02013403          	ld	s0,32(sp)
   10f1c:	01813483          	ld	s1,24(sp)
   10f20:	01013903          	ld	s2,16(sp)
   10f24:	00813983          	ld	s3,8(sp)
   10f28:	00100513          	addi	a0,zero,1
   10f2c:	03010113          	addi	sp,sp,48
   10f30:	00008067          	jalr	zero,0(ra)
   10f34:	00000593          	addi	a1,zero,0
   10f38:	00098513          	addi	a0,s3,0
   10f3c:	080010ef          	jal	ra,11fbc <_sbrk_r>
   10f40:	01093703          	ld	a4,16(s2)
   10f44:	01f00693          	addi	a3,zero,31
   10f48:	40e507b3          	sub	a5,a0,a4
   10f4c:	f6f6d4e3          	bge	a3,a5,10eb4 <_malloc_trim_r+0x70>
   10f50:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   10f54:	0017e793          	ori	a5,a5,1
   10f58:	40c50533          	sub	a0,a0,a2
   10f5c:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   10f60:	42a1a023          	sw	a0,1056(gp) # 13c38 <__malloc_current_mallinfo>
   10f64:	f51ff06f          	jal	zero,10eb4 <_malloc_trim_r+0x70>

0000000000010f68 <_free_r>:
   10f68:	12058863          	beq	a1,zero,11098 <_free_r+0x130>
   10f6c:	fe010113          	addi	sp,sp,-32
   10f70:	00813823          	sd	s0,16(sp)
   10f74:	00b13423          	sd	a1,8(sp)
   10f78:	00050413          	addi	s0,a0,0
   10f7c:	00113c23          	sd	ra,24(sp)
   10f80:	3d1000ef          	jal	ra,11b50 <__malloc_lock>
   10f84:	00813583          	ld	a1,8(sp)
   10f88:	00013837          	lui	a6,0x13
   10f8c:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   10f90:	ff85b503          	ld	a0,-8(a1)
   10f94:	ff058713          	addi	a4,a1,-16
   10f98:	01083883          	ld	a7,16(a6)
   10f9c:	ffe57793          	andi	a5,a0,-2
   10fa0:	00f70633          	add	a2,a4,a5
   10fa4:	00863683          	ld	a3,8(a2)
   10fa8:	00157313          	andi	t1,a0,1
   10fac:	ffc6f693          	andi	a3,a3,-4
   10fb0:	18c88e63          	beq	a7,a2,1114c <_free_r+0x1e4>
   10fb4:	00d63423          	sd	a3,8(a2)
   10fb8:	00d608b3          	add	a7,a2,a3
   10fbc:	0088b883          	ld	a7,8(a7)
   10fc0:	0018f893          	andi	a7,a7,1
   10fc4:	08031e63          	bne	t1,zero,11060 <_free_r+0xf8>
   10fc8:	ff05b303          	ld	t1,-16(a1)
   10fcc:	000135b7          	lui	a1,0x13
   10fd0:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   10fd4:	40670733          	sub	a4,a4,t1
   10fd8:	01073503          	ld	a0,16(a4)
   10fdc:	006787b3          	add	a5,a5,t1
   10fe0:	14b50063          	beq	a0,a1,11120 <_free_r+0x1b8>
   10fe4:	01873303          	ld	t1,24(a4)
   10fe8:	00653c23          	sd	t1,24(a0)
   10fec:	00a33823          	sd	a0,16(t1)
   10ff0:	1a088263          	beq	a7,zero,11194 <_free_r+0x22c>
   10ff4:	0017e693          	ori	a3,a5,1
   10ff8:	00d73423          	sd	a3,8(a4)
   10ffc:	00f63023          	sd	a5,0(a2)
   11000:	1ff00693          	addi	a3,zero,511
   11004:	0af6e663          	bltu	a3,a5,110b0 <_free_r+0x148>
   11008:	0037d793          	srli	a5,a5,0x3
   1100c:	00179693          	slli	a3,a5,0x1
   11010:	0026869b          	addiw	a3,a3,2
   11014:	00369693          	slli	a3,a3,0x3
   11018:	00883503          	ld	a0,8(a6)
   1101c:	00d806b3          	add	a3,a6,a3
   11020:	0006b583          	ld	a1,0(a3)
   11024:	4027d61b          	sraiw	a2,a5,0x2
   11028:	00100793          	addi	a5,zero,1
   1102c:	00c797b3          	sll	a5,a5,a2
   11030:	00a7e7b3          	or	a5,a5,a0
   11034:	ff068613          	addi	a2,a3,-16
   11038:	00b73823          	sd	a1,16(a4)
   1103c:	00c73c23          	sd	a2,24(a4)
   11040:	00f83423          	sd	a5,8(a6)
   11044:	00e6b023          	sd	a4,0(a3)
   11048:	00e5bc23          	sd	a4,24(a1)
   1104c:	00040513          	addi	a0,s0,0
   11050:	01013403          	ld	s0,16(sp)
   11054:	01813083          	ld	ra,24(sp)
   11058:	02010113          	addi	sp,sp,32
   1105c:	2f90006f          	jal	zero,11b54 <__malloc_unlock>
   11060:	02089e63          	bne	a7,zero,1109c <_free_r+0x134>
   11064:	000135b7          	lui	a1,0x13
   11068:	00d787b3          	add	a5,a5,a3
   1106c:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   11070:	01063683          	ld	a3,16(a2)
   11074:	0017e893          	ori	a7,a5,1
   11078:	00f70533          	add	a0,a4,a5
   1107c:	16b68663          	beq	a3,a1,111e8 <_free_r+0x280>
   11080:	01863603          	ld	a2,24(a2)
   11084:	00c6bc23          	sd	a2,24(a3)
   11088:	00d63823          	sd	a3,16(a2)
   1108c:	01173423          	sd	a7,8(a4)
   11090:	00f53023          	sd	a5,0(a0)
   11094:	f6dff06f          	jal	zero,11000 <_free_r+0x98>
   11098:	00008067          	jalr	zero,0(ra)
   1109c:	00156513          	ori	a0,a0,1
   110a0:	fea5bc23          	sd	a0,-8(a1)
   110a4:	00f63023          	sd	a5,0(a2)
   110a8:	1ff00693          	addi	a3,zero,511
   110ac:	f4f6fee3          	bgeu	a3,a5,11008 <_free_r+0xa0>
   110b0:	0097d693          	srli	a3,a5,0x9
   110b4:	00400613          	addi	a2,zero,4
   110b8:	0ed66263          	bltu	a2,a3,1119c <_free_r+0x234>
   110bc:	0067d693          	srli	a3,a5,0x6
   110c0:	00169593          	slli	a1,a3,0x1
   110c4:	0725859b          	addiw	a1,a1,114
   110c8:	00359593          	slli	a1,a1,0x3
   110cc:	0386861b          	addiw	a2,a3,56
   110d0:	00b805b3          	add	a1,a6,a1
   110d4:	0005b683          	ld	a3,0(a1)
   110d8:	ff058593          	addi	a1,a1,-16
   110dc:	00d59863          	bne	a1,a3,110ec <_free_r+0x184>
   110e0:	1240006f          	jal	zero,11204 <_free_r+0x29c>
   110e4:	0106b683          	ld	a3,16(a3)
   110e8:	00d58863          	beq	a1,a3,110f8 <_free_r+0x190>
   110ec:	0086b603          	ld	a2,8(a3)
   110f0:	ffc67613          	andi	a2,a2,-4
   110f4:	fec7e8e3          	bltu	a5,a2,110e4 <_free_r+0x17c>
   110f8:	0186b583          	ld	a1,24(a3)
   110fc:	00b73c23          	sd	a1,24(a4)
   11100:	00d73823          	sd	a3,16(a4)
   11104:	00040513          	addi	a0,s0,0
   11108:	01013403          	ld	s0,16(sp)
   1110c:	01813083          	ld	ra,24(sp)
   11110:	00e5b823          	sd	a4,16(a1)
   11114:	00e6bc23          	sd	a4,24(a3)
   11118:	02010113          	addi	sp,sp,32
   1111c:	2390006f          	jal	zero,11b54 <__malloc_unlock>
   11120:	0a089263          	bne	a7,zero,111c4 <_free_r+0x25c>
   11124:	01863583          	ld	a1,24(a2)
   11128:	01063603          	ld	a2,16(a2)
   1112c:	00f686b3          	add	a3,a3,a5
   11130:	0016e793          	ori	a5,a3,1
   11134:	00b63c23          	sd	a1,24(a2)
   11138:	00c5b823          	sd	a2,16(a1)
   1113c:	00f73423          	sd	a5,8(a4)
   11140:	00d70733          	add	a4,a4,a3
   11144:	00d73023          	sd	a3,0(a4)
   11148:	f05ff06f          	jal	zero,1104c <_free_r+0xe4>
   1114c:	00d786b3          	add	a3,a5,a3
   11150:	02031063          	bne	t1,zero,11170 <_free_r+0x208>
   11154:	ff05b783          	ld	a5,-16(a1)
   11158:	40f70733          	sub	a4,a4,a5
   1115c:	01073603          	ld	a2,16(a4)
   11160:	00f686b3          	add	a3,a3,a5
   11164:	01873783          	ld	a5,24(a4)
   11168:	00f63c23          	sd	a5,24(a2)
   1116c:	00c7b823          	sd	a2,16(a5)
   11170:	0016e613          	ori	a2,a3,1
   11174:	1981b783          	ld	a5,408(gp) # 139b0 <__malloc_trim_threshold>
   11178:	00c73423          	sd	a2,8(a4)
   1117c:	00e83823          	sd	a4,16(a6)
   11180:	ecf6e6e3          	bltu	a3,a5,1104c <_free_r+0xe4>
   11184:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   11188:	00040513          	addi	a0,s0,0
   1118c:	cb9ff0ef          	jal	ra,10e44 <_malloc_trim_r>
   11190:	ebdff06f          	jal	zero,1104c <_free_r+0xe4>
   11194:	00d787b3          	add	a5,a5,a3
   11198:	ed9ff06f          	jal	zero,11070 <_free_r+0x108>
   1119c:	01400613          	addi	a2,zero,20
   111a0:	02d67a63          	bgeu	a2,a3,111d4 <_free_r+0x26c>
   111a4:	05400613          	addi	a2,zero,84
   111a8:	06d66c63          	bltu	a2,a3,11220 <_free_r+0x2b8>
   111ac:	00c7d693          	srli	a3,a5,0xc
   111b0:	00169593          	slli	a1,a3,0x1
   111b4:	0de5859b          	addiw	a1,a1,222
   111b8:	00359593          	slli	a1,a1,0x3
   111bc:	06e6861b          	addiw	a2,a3,110
   111c0:	f11ff06f          	jal	zero,110d0 <_free_r+0x168>
   111c4:	0017e693          	ori	a3,a5,1
   111c8:	00d73423          	sd	a3,8(a4)
   111cc:	00f63023          	sd	a5,0(a2)
   111d0:	e7dff06f          	jal	zero,1104c <_free_r+0xe4>
   111d4:	00169593          	slli	a1,a3,0x1
   111d8:	0b85859b          	addiw	a1,a1,184
   111dc:	00359593          	slli	a1,a1,0x3
   111e0:	05b6861b          	addiw	a2,a3,91
   111e4:	eedff06f          	jal	zero,110d0 <_free_r+0x168>
   111e8:	02e83423          	sd	a4,40(a6)
   111ec:	02e83023          	sd	a4,32(a6)
   111f0:	00b73c23          	sd	a1,24(a4)
   111f4:	00b73823          	sd	a1,16(a4)
   111f8:	01173423          	sd	a7,8(a4)
   111fc:	00f53023          	sd	a5,0(a0)
   11200:	e4dff06f          	jal	zero,1104c <_free_r+0xe4>
   11204:	00883503          	ld	a0,8(a6)
   11208:	4026561b          	sraiw	a2,a2,0x2
   1120c:	00100793          	addi	a5,zero,1
   11210:	00c797b3          	sll	a5,a5,a2
   11214:	00a7e7b3          	or	a5,a5,a0
   11218:	00f83423          	sd	a5,8(a6)
   1121c:	ee1ff06f          	jal	zero,110fc <_free_r+0x194>
   11220:	15400613          	addi	a2,zero,340
   11224:	00d66e63          	bltu	a2,a3,11240 <_free_r+0x2d8>
   11228:	00f7d693          	srli	a3,a5,0xf
   1122c:	00169593          	slli	a1,a3,0x1
   11230:	0f05859b          	addiw	a1,a1,240
   11234:	00359593          	slli	a1,a1,0x3
   11238:	0776861b          	addiw	a2,a3,119
   1123c:	e95ff06f          	jal	zero,110d0 <_free_r+0x168>
   11240:	55400613          	addi	a2,zero,1364
   11244:	00d66e63          	bltu	a2,a3,11260 <_free_r+0x2f8>
   11248:	0127d693          	srli	a3,a5,0x12
   1124c:	00169593          	slli	a1,a3,0x1
   11250:	0fa5859b          	addiw	a1,a1,250
   11254:	00359593          	slli	a1,a1,0x3
   11258:	07c6861b          	addiw	a2,a3,124
   1125c:	e75ff06f          	jal	zero,110d0 <_free_r+0x168>
   11260:	7f000593          	addi	a1,zero,2032
   11264:	07e00613          	addi	a2,zero,126
   11268:	e69ff06f          	jal	zero,110d0 <_free_r+0x168>

000000000001126c <_malloc_r>:
   1126c:	fa010113          	addi	sp,sp,-96
   11270:	04813823          	sd	s0,80(sp)
   11274:	04113c23          	sd	ra,88(sp)
   11278:	01758713          	addi	a4,a1,23
   1127c:	02e00793          	addi	a5,zero,46
   11280:	00050413          	addi	s0,a0,0
   11284:	08e7ee63          	bltu	a5,a4,11320 <_malloc_r+0xb4>
   11288:	02000713          	addi	a4,zero,32
   1128c:	06b76c63          	bltu	a4,a1,11304 <_malloc_r+0x98>
   11290:	0c1000ef          	jal	ra,11b50 <__malloc_lock>
   11294:	02000713          	addi	a4,zero,32
   11298:	05000693          	addi	a3,zero,80
   1129c:	00400893          	addi	a7,zero,4
   112a0:	00013837          	lui	a6,0x13
   112a4:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   112a8:	00d806b3          	add	a3,a6,a3
   112ac:	0086b783          	ld	a5,8(a3)
   112b0:	ff068613          	addi	a2,a3,-16
   112b4:	48c78063          	beq	a5,a2,11734 <_malloc_r+0x4c8>
   112b8:	0087b703          	ld	a4,8(a5)
   112bc:	0187b603          	ld	a2,24(a5)
   112c0:	0107b583          	ld	a1,16(a5)
   112c4:	ffc77713          	andi	a4,a4,-4
   112c8:	00e78733          	add	a4,a5,a4
   112cc:	00873683          	ld	a3,8(a4)
   112d0:	00c5bc23          	sd	a2,24(a1)
   112d4:	00b63823          	sd	a1,16(a2)
   112d8:	0016e693          	ori	a3,a3,1
   112dc:	00040513          	addi	a0,s0,0
   112e0:	00d73423          	sd	a3,8(a4)
   112e4:	00f13423          	sd	a5,8(sp)
   112e8:	06d000ef          	jal	ra,11b54 <__malloc_unlock>
   112ec:	00813783          	ld	a5,8(sp)
   112f0:	05813083          	ld	ra,88(sp)
   112f4:	05013403          	ld	s0,80(sp)
   112f8:	01078513          	addi	a0,a5,16
   112fc:	06010113          	addi	sp,sp,96
   11300:	00008067          	jalr	zero,0(ra)
   11304:	00c00793          	addi	a5,zero,12
   11308:	00f42023          	sw	a5,0(s0)
   1130c:	00000513          	addi	a0,zero,0
   11310:	05813083          	ld	ra,88(sp)
   11314:	05013403          	ld	s0,80(sp)
   11318:	06010113          	addi	sp,sp,96
   1131c:	00008067          	jalr	zero,0(ra)
   11320:	00100793          	addi	a5,zero,1
   11324:	ff077713          	andi	a4,a4,-16
   11328:	01f79793          	slli	a5,a5,0x1f
   1132c:	fcf77ce3          	bgeu	a4,a5,11304 <_malloc_r+0x98>
   11330:	fcb76ae3          	bltu	a4,a1,11304 <_malloc_r+0x98>
   11334:	00e13423          	sd	a4,8(sp)
   11338:	019000ef          	jal	ra,11b50 <__malloc_lock>
   1133c:	00813703          	ld	a4,8(sp)
   11340:	1f700793          	addi	a5,zero,503
   11344:	4ee7fa63          	bgeu	a5,a4,11838 <_malloc_r+0x5cc>
   11348:	00975793          	srli	a5,a4,0x9
   1134c:	18078a63          	beq	a5,zero,114e0 <_malloc_r+0x274>
   11350:	00400693          	addi	a3,zero,4
   11354:	44f6ea63          	bltu	a3,a5,117a8 <_malloc_r+0x53c>
   11358:	00675793          	srli	a5,a4,0x6
   1135c:	0397889b          	addiw	a7,a5,57
   11360:	0018951b          	slliw	a0,a7,0x1
   11364:	03878e1b          	addiw	t3,a5,56
   11368:	00351513          	slli	a0,a0,0x3
   1136c:	00013837          	lui	a6,0x13
   11370:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11374:	00a80533          	add	a0,a6,a0
   11378:	00853783          	ld	a5,8(a0)
   1137c:	ff050513          	addi	a0,a0,-16
   11380:	02f50863          	beq	a0,a5,113b0 <_malloc_r+0x144>
   11384:	01f00313          	addi	t1,zero,31
   11388:	0140006f          	jal	zero,1139c <_malloc_r+0x130>
   1138c:	0187b583          	ld	a1,24(a5)
   11390:	36065263          	bge	a2,zero,116f4 <_malloc_r+0x488>
   11394:	00b50e63          	beq	a0,a1,113b0 <_malloc_r+0x144>
   11398:	00058793          	addi	a5,a1,0
   1139c:	0087b683          	ld	a3,8(a5)
   113a0:	ffc6f693          	andi	a3,a3,-4
   113a4:	40e68633          	sub	a2,a3,a4
   113a8:	fec352e3          	bge	t1,a2,1138c <_malloc_r+0x120>
   113ac:	000e0893          	addi	a7,t3,0
   113b0:	02083783          	ld	a5,32(a6)
   113b4:	00013e37          	lui	t3,0x13
   113b8:	198e0e13          	addi	t3,t3,408 # 13198 <__malloc_av_+0x10>
   113bc:	2fc78a63          	beq	a5,t3,116b0 <_malloc_r+0x444>
   113c0:	0087b303          	ld	t1,8(a5)
   113c4:	01f00613          	addi	a2,zero,31
   113c8:	ffc37313          	andi	t1,t1,-4
   113cc:	40e306b3          	sub	a3,t1,a4
   113d0:	4ad64463          	blt	a2,a3,11878 <_malloc_r+0x60c>
   113d4:	03c83423          	sd	t3,40(a6)
   113d8:	03c83023          	sd	t3,32(a6)
   113dc:	4606da63          	bge	a3,zero,11850 <_malloc_r+0x5e4>
   113e0:	1ff00693          	addi	a3,zero,511
   113e4:	00883583          	ld	a1,8(a6)
   113e8:	3466ee63          	bltu	a3,t1,11744 <_malloc_r+0x4d8>
   113ec:	00335313          	srli	t1,t1,0x3
   113f0:	00131693          	slli	a3,t1,0x1
   113f4:	0026869b          	addiw	a3,a3,2
   113f8:	00369693          	slli	a3,a3,0x3
   113fc:	00d806b3          	add	a3,a6,a3
   11400:	0006b503          	ld	a0,0(a3)
   11404:	4023531b          	sraiw	t1,t1,0x2
   11408:	00100613          	addi	a2,zero,1
   1140c:	00661633          	sll	a2,a2,t1
   11410:	00c5e5b3          	or	a1,a1,a2
   11414:	ff068613          	addi	a2,a3,-16
   11418:	00a7b823          	sd	a0,16(a5)
   1141c:	00c7bc23          	sd	a2,24(a5)
   11420:	00b83423          	sd	a1,8(a6)
   11424:	00f6b023          	sd	a5,0(a3)
   11428:	00f53c23          	sd	a5,24(a0)
   1142c:	4028d79b          	sraiw	a5,a7,0x2
   11430:	00100513          	addi	a0,zero,1
   11434:	00f51533          	sll	a0,a0,a5
   11438:	0aa5ec63          	bltu	a1,a0,114f0 <_malloc_r+0x284>
   1143c:	00b577b3          	and	a5,a0,a1
   11440:	02079463          	bne	a5,zero,11468 <_malloc_r+0x1fc>
   11444:	00151513          	slli	a0,a0,0x1
   11448:	ffc8f893          	andi	a7,a7,-4
   1144c:	00b577b3          	and	a5,a0,a1
   11450:	0048889b          	addiw	a7,a7,4
   11454:	00079a63          	bne	a5,zero,11468 <_malloc_r+0x1fc>
   11458:	00151513          	slli	a0,a0,0x1
   1145c:	00b577b3          	and	a5,a0,a1
   11460:	0048889b          	addiw	a7,a7,4
   11464:	fe078ae3          	beq	a5,zero,11458 <_malloc_r+0x1ec>
   11468:	01f00e93          	addi	t4,zero,31
   1146c:	00189f13          	slli	t5,a7,0x1
   11470:	002f0f1b          	addiw	t5,t5,2
   11474:	003f1f13          	slli	t5,t5,0x3
   11478:	ff0f0f13          	addi	t5,t5,-16
   1147c:	01e80f33          	add	t5,a6,t5
   11480:	000f0313          	addi	t1,t5,0
   11484:	01833683          	ld	a3,24(t1)
   11488:	00088f93          	addi	t6,a7,0
   1148c:	34d30263          	beq	t1,a3,117d0 <_malloc_r+0x564>
   11490:	0086b603          	ld	a2,8(a3)
   11494:	00068793          	addi	a5,a3,0
   11498:	0186b683          	ld	a3,24(a3)
   1149c:	ffc67613          	andi	a2,a2,-4
   114a0:	40e605b3          	sub	a1,a2,a4
   114a4:	34bec263          	blt	t4,a1,117e8 <_malloc_r+0x57c>
   114a8:	fe05c2e3          	blt	a1,zero,1148c <_malloc_r+0x220>
   114ac:	00c78633          	add	a2,a5,a2
   114b0:	00863703          	ld	a4,8(a2)
   114b4:	0107b583          	ld	a1,16(a5)
   114b8:	00040513          	addi	a0,s0,0
   114bc:	00176713          	ori	a4,a4,1
   114c0:	00e63423          	sd	a4,8(a2)
   114c4:	00d5bc23          	sd	a3,24(a1)
   114c8:	00b6b823          	sd	a1,16(a3)
   114cc:	00f13423          	sd	a5,8(sp)
   114d0:	684000ef          	jal	ra,11b54 <__malloc_unlock>
   114d4:	00813783          	ld	a5,8(sp)
   114d8:	01078513          	addi	a0,a5,16
   114dc:	e35ff06f          	jal	zero,11310 <_malloc_r+0xa4>
   114e0:	40000513          	addi	a0,zero,1024
   114e4:	04000893          	addi	a7,zero,64
   114e8:	03f00e13          	addi	t3,zero,63
   114ec:	e81ff06f          	jal	zero,1136c <_malloc_r+0x100>
   114f0:	01083783          	ld	a5,16(a6)
   114f4:	0087b683          	ld	a3,8(a5)
   114f8:	ffc6f893          	andi	a7,a3,-4
   114fc:	40e88633          	sub	a2,a7,a4
   11500:	00e8e663          	bltu	a7,a4,1150c <_malloc_r+0x2a0>
   11504:	02062693          	slti	a3,a2,32
   11508:	1a068863          	beq	a3,zero,116b8 <_malloc_r+0x44c>
   1150c:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   11510:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   11514:	fff00693          	addi	a3,zero,-1
   11518:	00b705b3          	add	a1,a4,a1
   1151c:	44d60663          	beq	a2,a3,11968 <_malloc_r+0x6fc>
   11520:	000016b7          	lui	a3,0x1
   11524:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   11528:	00d585b3          	add	a1,a1,a3
   1152c:	fffff6b7          	lui	a3,0xfffff
   11530:	00d5f5b3          	and	a1,a1,a3
   11534:	00040513          	addi	a0,s0,0
   11538:	03013423          	sd	a6,40(sp)
   1153c:	02f13023          	sd	a5,32(sp)
   11540:	00e13c23          	sd	a4,24(sp)
   11544:	01113823          	sd	a7,16(sp)
   11548:	00b13423          	sd	a1,8(sp)
   1154c:	271000ef          	jal	ra,11fbc <_sbrk_r>
   11550:	fff00693          	addi	a3,zero,-1
   11554:	00813583          	ld	a1,8(sp)
   11558:	01013883          	ld	a7,16(sp)
   1155c:	01813703          	ld	a4,24(sp)
   11560:	02013783          	ld	a5,32(sp)
   11564:	02813803          	ld	a6,40(sp)
   11568:	00050313          	addi	t1,a0,0
   1156c:	36d50663          	beq	a0,a3,118d8 <_malloc_r+0x66c>
   11570:	011786b3          	add	a3,a5,a7
   11574:	36d56063          	bltu	a0,a3,118d4 <_malloc_r+0x668>
   11578:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   1157c:	000e2603          	lw	a2,0(t3)
   11580:	00b6063b          	addw	a2,a2,a1
   11584:	00ce2023          	sw	a2,0(t3)
   11588:	00060513          	addi	a0,a2,0
   1158c:	4a668c63          	beq	a3,t1,11a44 <_malloc_r+0x7d8>
   11590:	1901bf03          	ld	t5,400(gp) # 139a8 <__malloc_sbrk_base>
   11594:	fff00613          	addi	a2,zero,-1
   11598:	4ccf0463          	beq	t5,a2,11a60 <_malloc_r+0x7f4>
   1159c:	40d306b3          	sub	a3,t1,a3
   115a0:	00a686bb          	addw	a3,a3,a0
   115a4:	00de2023          	sw	a3,0(t3)
   115a8:	00f37e93          	andi	t4,t1,15
   115ac:	3c0e8e63          	beq	t4,zero,11988 <_malloc_r+0x71c>
   115b0:	ff037313          	andi	t1,t1,-16
   115b4:	000016b7          	lui	a3,0x1
   115b8:	01030313          	addi	t1,t1,16
   115bc:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   115c0:	00b30633          	add	a2,t1,a1
   115c4:	41d685b3          	sub	a1,a3,t4
   115c8:	40c585b3          	sub	a1,a1,a2
   115cc:	03459593          	slli	a1,a1,0x34
   115d0:	0345d593          	srli	a1,a1,0x34
   115d4:	00040513          	addi	a0,s0,0
   115d8:	05c13023          	sd	t3,64(sp)
   115dc:	03013c23          	sd	a6,56(sp)
   115e0:	02f13823          	sd	a5,48(sp)
   115e4:	02e13423          	sd	a4,40(sp)
   115e8:	03113023          	sd	a7,32(sp)
   115ec:	00613c23          	sd	t1,24(sp)
   115f0:	01d13823          	sd	t4,16(sp)
   115f4:	00c13423          	sd	a2,8(sp)
   115f8:	04b13423          	sd	a1,72(sp)
   115fc:	1c1000ef          	jal	ra,11fbc <_sbrk_r>
   11600:	00050693          	addi	a3,a0,0
   11604:	fff00513          	addi	a0,zero,-1
   11608:	00813603          	ld	a2,8(sp)
   1160c:	01013e83          	ld	t4,16(sp)
   11610:	01813303          	ld	t1,24(sp)
   11614:	02013883          	ld	a7,32(sp)
   11618:	02813703          	ld	a4,40(sp)
   1161c:	03013783          	ld	a5,48(sp)
   11620:	03813803          	ld	a6,56(sp)
   11624:	04013e03          	ld	t3,64(sp)
   11628:	48a68663          	beq	a3,a0,11ab4 <_malloc_r+0x848>
   1162c:	04813583          	ld	a1,72(sp)
   11630:	0005851b          	addiw	a0,a1,0
   11634:	000e2603          	lw	a2,0(t3)
   11638:	406686b3          	sub	a3,a3,t1
   1163c:	00b686b3          	add	a3,a3,a1
   11640:	0016e693          	ori	a3,a3,1
   11644:	00683823          	sd	t1,16(a6)
   11648:	00a6063b          	addw	a2,a2,a0
   1164c:	00d33423          	sd	a3,8(t1)
   11650:	00ce2023          	sw	a2,0(t3)
   11654:	03078e63          	beq	a5,a6,11690 <_malloc_r+0x424>
   11658:	01f00513          	addi	a0,zero,31
   1165c:	41157663          	bgeu	a0,a7,11a68 <_malloc_r+0x7fc>
   11660:	0087b583          	ld	a1,8(a5)
   11664:	fe888693          	addi	a3,a7,-24
   11668:	ff06f693          	andi	a3,a3,-16
   1166c:	0015f593          	andi	a1,a1,1
   11670:	00d5e5b3          	or	a1,a1,a3
   11674:	00b7b423          	sd	a1,8(a5)
   11678:	00900893          	addi	a7,zero,9
   1167c:	00d785b3          	add	a1,a5,a3
   11680:	0115b423          	sd	a7,8(a1)
   11684:	0115b823          	sd	a7,16(a1)
   11688:	44d56863          	bltu	a0,a3,11ad8 <_malloc_r+0x86c>
   1168c:	00833683          	ld	a3,8(t1)
   11690:	1c01b583          	ld	a1,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   11694:	00c5f463          	bgeu	a1,a2,1169c <_malloc_r+0x430>
   11698:	1cc1b023          	sd	a2,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   1169c:	1b81b583          	ld	a1,440(gp) # 139d0 <__malloc_max_total_mem>
   116a0:	00c5f463          	bgeu	a1,a2,116a8 <_malloc_r+0x43c>
   116a4:	1ac1bc23          	sd	a2,440(gp) # 139d0 <__malloc_max_total_mem>
   116a8:	00030793          	addi	a5,t1,0
   116ac:	2340006f          	jal	zero,118e0 <_malloc_r+0x674>
   116b0:	00883583          	ld	a1,8(a6)
   116b4:	d79ff06f          	jal	zero,1142c <_malloc_r+0x1c0>
   116b8:	00176693          	ori	a3,a4,1
   116bc:	00d7b423          	sd	a3,8(a5)
   116c0:	00e78733          	add	a4,a5,a4
   116c4:	00166613          	ori	a2,a2,1
   116c8:	00e83823          	sd	a4,16(a6)
   116cc:	00040513          	addi	a0,s0,0
   116d0:	00c73423          	sd	a2,8(a4)
   116d4:	00f13423          	sd	a5,8(sp)
   116d8:	47c000ef          	jal	ra,11b54 <__malloc_unlock>
   116dc:	00813783          	ld	a5,8(sp)
   116e0:	05813083          	ld	ra,88(sp)
   116e4:	05013403          	ld	s0,80(sp)
   116e8:	01078513          	addi	a0,a5,16
   116ec:	06010113          	addi	sp,sp,96
   116f0:	00008067          	jalr	zero,0(ra)
   116f4:	0107b603          	ld	a2,16(a5)
   116f8:	00d786b3          	add	a3,a5,a3
   116fc:	0086b703          	ld	a4,8(a3)
   11700:	00b63c23          	sd	a1,24(a2)
   11704:	00c5b823          	sd	a2,16(a1)
   11708:	00176713          	ori	a4,a4,1
   1170c:	00040513          	addi	a0,s0,0
   11710:	00e6b423          	sd	a4,8(a3)
   11714:	00f13423          	sd	a5,8(sp)
   11718:	43c000ef          	jal	ra,11b54 <__malloc_unlock>
   1171c:	00813783          	ld	a5,8(sp)
   11720:	05813083          	ld	ra,88(sp)
   11724:	05013403          	ld	s0,80(sp)
   11728:	01078513          	addi	a0,a5,16
   1172c:	06010113          	addi	sp,sp,96
   11730:	00008067          	jalr	zero,0(ra)
   11734:	0186b783          	ld	a5,24(a3)
   11738:	0028889b          	addiw	a7,a7,2
   1173c:	c6f68ae3          	beq	a3,a5,113b0 <_malloc_r+0x144>
   11740:	b79ff06f          	jal	zero,112b8 <_malloc_r+0x4c>
   11744:	00935693          	srli	a3,t1,0x9
   11748:	00400613          	addi	a2,zero,4
   1174c:	16d67863          	bgeu	a2,a3,118bc <_malloc_r+0x650>
   11750:	01400613          	addi	a2,zero,20
   11754:	28d66e63          	bltu	a2,a3,119f0 <_malloc_r+0x784>
   11758:	00169513          	slli	a0,a3,0x1
   1175c:	0b85051b          	addiw	a0,a0,184
   11760:	00351513          	slli	a0,a0,0x3
   11764:	05b6861b          	addiw	a2,a3,91
   11768:	00a80533          	add	a0,a6,a0
   1176c:	00053683          	ld	a3,0(a0)
   11770:	ff050513          	addi	a0,a0,-16
   11774:	00d51863          	bne	a0,a3,11784 <_malloc_r+0x518>
   11778:	1f80006f          	jal	zero,11970 <_malloc_r+0x704>
   1177c:	0106b683          	ld	a3,16(a3)
   11780:	00d50863          	beq	a0,a3,11790 <_malloc_r+0x524>
   11784:	0086b603          	ld	a2,8(a3)
   11788:	ffc67613          	andi	a2,a2,-4
   1178c:	fec368e3          	bltu	t1,a2,1177c <_malloc_r+0x510>
   11790:	0186b503          	ld	a0,24(a3)
   11794:	00a7bc23          	sd	a0,24(a5)
   11798:	00d7b823          	sd	a3,16(a5)
   1179c:	00f53823          	sd	a5,16(a0)
   117a0:	00f6bc23          	sd	a5,24(a3)
   117a4:	c89ff06f          	jal	zero,1142c <_malloc_r+0x1c0>
   117a8:	01400693          	addi	a3,zero,20
   117ac:	14f6fa63          	bgeu	a3,a5,11900 <_malloc_r+0x694>
   117b0:	05400693          	addi	a3,zero,84
   117b4:	24f6ee63          	bltu	a3,a5,11a10 <_malloc_r+0x7a4>
   117b8:	00c75793          	srli	a5,a4,0xc
   117bc:	06f7889b          	addiw	a7,a5,111
   117c0:	0018951b          	slliw	a0,a7,0x1
   117c4:	06e78e1b          	addiw	t3,a5,110
   117c8:	00351513          	slli	a0,a0,0x3
   117cc:	ba1ff06f          	jal	zero,1136c <_malloc_r+0x100>
   117d0:	001f8f9b          	addiw	t6,t6,1
   117d4:	003ff793          	andi	a5,t6,3
   117d8:	01030313          	addi	t1,t1,16
   117dc:	14078263          	beq	a5,zero,11920 <_malloc_r+0x6b4>
   117e0:	01833683          	ld	a3,24(t1)
   117e4:	ca9ff06f          	jal	zero,1148c <_malloc_r+0x220>
   117e8:	0107b503          	ld	a0,16(a5)
   117ec:	00176893          	ori	a7,a4,1
   117f0:	0117b423          	sd	a7,8(a5)
   117f4:	00d53c23          	sd	a3,24(a0)
   117f8:	00a6b823          	sd	a0,16(a3)
   117fc:	00e78733          	add	a4,a5,a4
   11800:	02e83423          	sd	a4,40(a6)
   11804:	02e83023          	sd	a4,32(a6)
   11808:	0015e693          	ori	a3,a1,1
   1180c:	00c78633          	add	a2,a5,a2
   11810:	01c73c23          	sd	t3,24(a4)
   11814:	01c73823          	sd	t3,16(a4)
   11818:	00d73423          	sd	a3,8(a4)
   1181c:	00040513          	addi	a0,s0,0
   11820:	00b63023          	sd	a1,0(a2)
   11824:	00f13423          	sd	a5,8(sp)
   11828:	32c000ef          	jal	ra,11b54 <__malloc_unlock>
   1182c:	00813783          	ld	a5,8(sp)
   11830:	01078513          	addi	a0,a5,16
   11834:	addff06f          	jal	zero,11310 <_malloc_r+0xa4>
   11838:	00375893          	srli	a7,a4,0x3
   1183c:	00189693          	slli	a3,a7,0x1
   11840:	0026869b          	addiw	a3,a3,2
   11844:	00369693          	slli	a3,a3,0x3
   11848:	0008889b          	addiw	a7,a7,0
   1184c:	a55ff06f          	jal	zero,112a0 <_malloc_r+0x34>
   11850:	00678333          	add	t1,a5,t1
   11854:	00833703          	ld	a4,8(t1)
   11858:	00040513          	addi	a0,s0,0
   1185c:	00f13423          	sd	a5,8(sp)
   11860:	00176713          	ori	a4,a4,1
   11864:	00e33423          	sd	a4,8(t1)
   11868:	2ec000ef          	jal	ra,11b54 <__malloc_unlock>
   1186c:	00813783          	ld	a5,8(sp)
   11870:	01078513          	addi	a0,a5,16
   11874:	a9dff06f          	jal	zero,11310 <_malloc_r+0xa4>
   11878:	00176613          	ori	a2,a4,1
   1187c:	00c7b423          	sd	a2,8(a5)
   11880:	00e78733          	add	a4,a5,a4
   11884:	02e83423          	sd	a4,40(a6)
   11888:	02e83023          	sd	a4,32(a6)
   1188c:	0016e613          	ori	a2,a3,1
   11890:	00678333          	add	t1,a5,t1
   11894:	01c73c23          	sd	t3,24(a4)
   11898:	01c73823          	sd	t3,16(a4)
   1189c:	00c73423          	sd	a2,8(a4)
   118a0:	00040513          	addi	a0,s0,0
   118a4:	00d33023          	sd	a3,0(t1)
   118a8:	00f13423          	sd	a5,8(sp)
   118ac:	2a8000ef          	jal	ra,11b54 <__malloc_unlock>
   118b0:	00813783          	ld	a5,8(sp)
   118b4:	01078513          	addi	a0,a5,16
   118b8:	a59ff06f          	jal	zero,11310 <_malloc_r+0xa4>
   118bc:	00635693          	srli	a3,t1,0x6
   118c0:	00169513          	slli	a0,a3,0x1
   118c4:	0725051b          	addiw	a0,a0,114
   118c8:	00351513          	slli	a0,a0,0x3
   118cc:	0386861b          	addiw	a2,a3,56
   118d0:	e99ff06f          	jal	zero,11768 <_malloc_r+0x4fc>
   118d4:	15078e63          	beq	a5,a6,11a30 <_malloc_r+0x7c4>
   118d8:	01083783          	ld	a5,16(a6)
   118dc:	0087b683          	ld	a3,8(a5)
   118e0:	ffc6f693          	andi	a3,a3,-4
   118e4:	40e68633          	sub	a2,a3,a4
   118e8:	00e6e663          	bltu	a3,a4,118f4 <_malloc_r+0x688>
   118ec:	02062693          	slti	a3,a2,32
   118f0:	dc0684e3          	beq	a3,zero,116b8 <_malloc_r+0x44c>
   118f4:	00040513          	addi	a0,s0,0
   118f8:	25c000ef          	jal	ra,11b54 <__malloc_unlock>
   118fc:	a11ff06f          	jal	zero,1130c <_malloc_r+0xa0>
   11900:	05c7889b          	addiw	a7,a5,92
   11904:	0018951b          	slliw	a0,a7,0x1
   11908:	05b78e1b          	addiw	t3,a5,91
   1190c:	00351513          	slli	a0,a0,0x3
   11910:	a5dff06f          	jal	zero,1136c <_malloc_r+0x100>
   11914:	010f3783          	ld	a5,16(t5)
   11918:	fff8889b          	addiw	a7,a7,-1
   1191c:	23e79663          	bne	a5,t5,11b48 <_malloc_r+0x8dc>
   11920:	0038f793          	andi	a5,a7,3
   11924:	ff0f0f13          	addi	t5,t5,-16
   11928:	fe0796e3          	bne	a5,zero,11914 <_malloc_r+0x6a8>
   1192c:	00883683          	ld	a3,8(a6)
   11930:	fff54793          	xori	a5,a0,-1
   11934:	00d7f7b3          	and	a5,a5,a3
   11938:	00f83423          	sd	a5,8(a6)
   1193c:	00151513          	slli	a0,a0,0x1
   11940:	fff50693          	addi	a3,a0,-1
   11944:	baf6f6e3          	bgeu	a3,a5,114f0 <_malloc_r+0x284>
   11948:	00f576b3          	and	a3,a0,a5
   1194c:	00069a63          	bne	a3,zero,11960 <_malloc_r+0x6f4>
   11950:	00151513          	slli	a0,a0,0x1
   11954:	00f576b3          	and	a3,a0,a5
   11958:	004f8f9b          	addiw	t6,t6,4
   1195c:	fe068ae3          	beq	a3,zero,11950 <_malloc_r+0x6e4>
   11960:	000f8893          	addi	a7,t6,0
   11964:	b09ff06f          	jal	zero,1146c <_malloc_r+0x200>
   11968:	02058593          	addi	a1,a1,32
   1196c:	bc9ff06f          	jal	zero,11534 <_malloc_r+0x2c8>
   11970:	4026561b          	sraiw	a2,a2,0x2
   11974:	00100313          	addi	t1,zero,1
   11978:	00c31633          	sll	a2,t1,a2
   1197c:	00c5e5b3          	or	a1,a1,a2
   11980:	00b83423          	sd	a1,8(a6)
   11984:	e11ff06f          	jal	zero,11794 <_malloc_r+0x528>
   11988:	00b30633          	add	a2,t1,a1
   1198c:	40c005b3          	sub	a1,zero,a2
   11990:	03459593          	slli	a1,a1,0x34
   11994:	0345d593          	srli	a1,a1,0x34
   11998:	00040513          	addi	a0,s0,0
   1199c:	03c13c23          	sd	t3,56(sp)
   119a0:	03013823          	sd	a6,48(sp)
   119a4:	02f13423          	sd	a5,40(sp)
   119a8:	02e13023          	sd	a4,32(sp)
   119ac:	01113c23          	sd	a7,24(sp)
   119b0:	00613823          	sd	t1,16(sp)
   119b4:	00c13423          	sd	a2,8(sp)
   119b8:	04b13023          	sd	a1,64(sp)
   119bc:	600000ef          	jal	ra,11fbc <_sbrk_r>
   119c0:	00050693          	addi	a3,a0,0
   119c4:	fff00513          	addi	a0,zero,-1
   119c8:	01013303          	ld	t1,16(sp)
   119cc:	01813883          	ld	a7,24(sp)
   119d0:	02013703          	ld	a4,32(sp)
   119d4:	02813783          	ld	a5,40(sp)
   119d8:	03013803          	ld	a6,48(sp)
   119dc:	03813e03          	ld	t3,56(sp)
   119e0:	0ea68463          	beq	a3,a0,11ac8 <_malloc_r+0x85c>
   119e4:	04013583          	ld	a1,64(sp)
   119e8:	0005851b          	addiw	a0,a1,0
   119ec:	c49ff06f          	jal	zero,11634 <_malloc_r+0x3c8>
   119f0:	05400613          	addi	a2,zero,84
   119f4:	08d66063          	bltu	a2,a3,11a74 <_malloc_r+0x808>
   119f8:	00c35693          	srli	a3,t1,0xc
   119fc:	00169513          	slli	a0,a3,0x1
   11a00:	0de5051b          	addiw	a0,a0,222
   11a04:	00351513          	slli	a0,a0,0x3
   11a08:	06e6861b          	addiw	a2,a3,110
   11a0c:	d5dff06f          	jal	zero,11768 <_malloc_r+0x4fc>
   11a10:	15400693          	addi	a3,zero,340
   11a14:	08f6e063          	bltu	a3,a5,11a94 <_malloc_r+0x828>
   11a18:	00f75793          	srli	a5,a4,0xf
   11a1c:	0787889b          	addiw	a7,a5,120
   11a20:	0018951b          	slliw	a0,a7,0x1
   11a24:	07778e1b          	addiw	t3,a5,119
   11a28:	00351513          	slli	a0,a0,0x3
   11a2c:	941ff06f          	jal	zero,1136c <_malloc_r+0x100>
   11a30:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11a34:	000e2503          	lw	a0,0(t3)
   11a38:	00b5053b          	addw	a0,a0,a1
   11a3c:	00ae2023          	sw	a0,0(t3)
   11a40:	b51ff06f          	jal	zero,11590 <_malloc_r+0x324>
   11a44:	03431f13          	slli	t5,t1,0x34
   11a48:	b40f14e3          	bne	t5,zero,11590 <_malloc_r+0x324>
   11a4c:	01083303          	ld	t1,16(a6)
   11a50:	00b885b3          	add	a1,a7,a1
   11a54:	0015e693          	ori	a3,a1,1
   11a58:	00d33423          	sd	a3,8(t1)
   11a5c:	c35ff06f          	jal	zero,11690 <_malloc_r+0x424>
   11a60:	1861b823          	sd	t1,400(gp) # 139a8 <__malloc_sbrk_base>
   11a64:	b45ff06f          	jal	zero,115a8 <_malloc_r+0x33c>
   11a68:	00100793          	addi	a5,zero,1
   11a6c:	00f33423          	sd	a5,8(t1)
   11a70:	e85ff06f          	jal	zero,118f4 <_malloc_r+0x688>
   11a74:	15400613          	addi	a2,zero,340
   11a78:	08d66a63          	bltu	a2,a3,11b0c <_malloc_r+0x8a0>
   11a7c:	00f35693          	srli	a3,t1,0xf
   11a80:	00169513          	slli	a0,a3,0x1
   11a84:	0f05051b          	addiw	a0,a0,240
   11a88:	00351513          	slli	a0,a0,0x3
   11a8c:	0776861b          	addiw	a2,a3,119
   11a90:	cd9ff06f          	jal	zero,11768 <_malloc_r+0x4fc>
   11a94:	55400693          	addi	a3,zero,1364
   11a98:	08f6ea63          	bltu	a3,a5,11b2c <_malloc_r+0x8c0>
   11a9c:	01275793          	srli	a5,a4,0x12
   11aa0:	07d7889b          	addiw	a7,a5,125
   11aa4:	0018951b          	slliw	a0,a7,0x1
   11aa8:	07c78e1b          	addiw	t3,a5,124
   11aac:	00351513          	slli	a0,a0,0x3
   11ab0:	8bdff06f          	jal	zero,1136c <_malloc_r+0x100>
   11ab4:	ff0e8e93          	addi	t4,t4,-16
   11ab8:	01d606b3          	add	a3,a2,t4
   11abc:	00000513          	addi	a0,zero,0
   11ac0:	00000593          	addi	a1,zero,0
   11ac4:	b71ff06f          	jal	zero,11634 <_malloc_r+0x3c8>
   11ac8:	00813683          	ld	a3,8(sp)
   11acc:	00000593          	addi	a1,zero,0
   11ad0:	00000513          	addi	a0,zero,0
   11ad4:	b61ff06f          	jal	zero,11634 <_malloc_r+0x3c8>
   11ad8:	01078593          	addi	a1,a5,16
   11adc:	00040513          	addi	a0,s0,0
   11ae0:	01c13c23          	sd	t3,24(sp)
   11ae4:	01013823          	sd	a6,16(sp)
   11ae8:	00e13423          	sd	a4,8(sp)
   11aec:	c7cff0ef          	jal	ra,10f68 <_free_r>
   11af0:	01013803          	ld	a6,16(sp)
   11af4:	01813e03          	ld	t3,24(sp)
   11af8:	00813703          	ld	a4,8(sp)
   11afc:	01083303          	ld	t1,16(a6)
   11b00:	000e2603          	lw	a2,0(t3)
   11b04:	00833683          	ld	a3,8(t1)
   11b08:	b89ff06f          	jal	zero,11690 <_malloc_r+0x424>
   11b0c:	55400613          	addi	a2,zero,1364
   11b10:	02d66663          	bltu	a2,a3,11b3c <_malloc_r+0x8d0>
   11b14:	01235693          	srli	a3,t1,0x12
   11b18:	00169513          	slli	a0,a3,0x1
   11b1c:	0fa5051b          	addiw	a0,a0,250
   11b20:	00351513          	slli	a0,a0,0x3
   11b24:	07c6861b          	addiw	a2,a3,124
   11b28:	c41ff06f          	jal	zero,11768 <_malloc_r+0x4fc>
   11b2c:	7f000513          	addi	a0,zero,2032
   11b30:	07f00893          	addi	a7,zero,127
   11b34:	07e00e13          	addi	t3,zero,126
   11b38:	835ff06f          	jal	zero,1136c <_malloc_r+0x100>
   11b3c:	7f000513          	addi	a0,zero,2032
   11b40:	07e00613          	addi	a2,zero,126
   11b44:	c25ff06f          	jal	zero,11768 <_malloc_r+0x4fc>
   11b48:	00883783          	ld	a5,8(a6)
   11b4c:	df1ff06f          	jal	zero,1193c <_malloc_r+0x6d0>

0000000000011b50 <__malloc_lock>:
   11b50:	00008067          	jalr	zero,0(ra)

0000000000011b54 <__malloc_unlock>:
   11b54:	00008067          	jalr	zero,0(ra)

0000000000011b58 <_fclose_r>:
   11b58:	fe010113          	addi	sp,sp,-32
   11b5c:	00113c23          	sd	ra,24(sp)
   11b60:	01213023          	sd	s2,0(sp)
   11b64:	02058863          	beq	a1,zero,11b94 <_fclose_r+0x3c>
   11b68:	00813823          	sd	s0,16(sp)
   11b6c:	00913423          	sd	s1,8(sp)
   11b70:	00058413          	addi	s0,a1,0
   11b74:	00050493          	addi	s1,a0,0
   11b78:	00050663          	beq	a0,zero,11b84 <_fclose_r+0x2c>
   11b7c:	04853783          	ld	a5,72(a0)
   11b80:	0c078c63          	beq	a5,zero,11c58 <_fclose_r+0x100>
   11b84:	01041783          	lh	a5,16(s0)
   11b88:	02079263          	bne	a5,zero,11bac <_fclose_r+0x54>
   11b8c:	01013403          	ld	s0,16(sp)
   11b90:	00813483          	ld	s1,8(sp)
   11b94:	01813083          	ld	ra,24(sp)
   11b98:	00000913          	addi	s2,zero,0
   11b9c:	00090513          	addi	a0,s2,0
   11ba0:	00013903          	ld	s2,0(sp)
   11ba4:	02010113          	addi	sp,sp,32
   11ba8:	00008067          	jalr	zero,0(ra)
   11bac:	00040593          	addi	a1,s0,0
   11bb0:	00048513          	addi	a0,s1,0
   11bb4:	0b8000ef          	jal	ra,11c6c <__sflush_r>
   11bb8:	05043783          	ld	a5,80(s0)
   11bbc:	00050913          	addi	s2,a0,0
   11bc0:	00078a63          	beq	a5,zero,11bd4 <_fclose_r+0x7c>
   11bc4:	03043583          	ld	a1,48(s0)
   11bc8:	00048513          	addi	a0,s1,0
   11bcc:	000780e7          	jalr	ra,0(a5)
   11bd0:	06054463          	blt	a0,zero,11c38 <_fclose_r+0xe0>
   11bd4:	01045783          	lhu	a5,16(s0)
   11bd8:	0807f793          	andi	a5,a5,128
   11bdc:	06079663          	bne	a5,zero,11c48 <_fclose_r+0xf0>
   11be0:	05843583          	ld	a1,88(s0)
   11be4:	00058c63          	beq	a1,zero,11bfc <_fclose_r+0xa4>
   11be8:	07440793          	addi	a5,s0,116
   11bec:	00f58663          	beq	a1,a5,11bf8 <_fclose_r+0xa0>
   11bf0:	00048513          	addi	a0,s1,0
   11bf4:	b74ff0ef          	jal	ra,10f68 <_free_r>
   11bf8:	04043c23          	sd	zero,88(s0)
   11bfc:	07843583          	ld	a1,120(s0)
   11c00:	00058863          	beq	a1,zero,11c10 <_fclose_r+0xb8>
   11c04:	00048513          	addi	a0,s1,0
   11c08:	b60ff0ef          	jal	ra,10f68 <_free_r>
   11c0c:	06043c23          	sd	zero,120(s0)
   11c10:	9b5fe0ef          	jal	ra,105c4 <__sfp_lock_acquire>
   11c14:	00041823          	sh	zero,16(s0)
   11c18:	9b1fe0ef          	jal	ra,105c8 <__sfp_lock_release>
   11c1c:	01813083          	ld	ra,24(sp)
   11c20:	01013403          	ld	s0,16(sp)
   11c24:	00813483          	ld	s1,8(sp)
   11c28:	00090513          	addi	a0,s2,0
   11c2c:	00013903          	ld	s2,0(sp)
   11c30:	02010113          	addi	sp,sp,32
   11c34:	00008067          	jalr	zero,0(ra)
   11c38:	01045783          	lhu	a5,16(s0)
   11c3c:	fff00913          	addi	s2,zero,-1
   11c40:	0807f793          	andi	a5,a5,128
   11c44:	f8078ee3          	beq	a5,zero,11be0 <_fclose_r+0x88>
   11c48:	01843583          	ld	a1,24(s0)
   11c4c:	00048513          	addi	a0,s1,0
   11c50:	b18ff0ef          	jal	ra,10f68 <_free_r>
   11c54:	f8dff06f          	jal	zero,11be0 <_fclose_r+0x88>
   11c58:	949fe0ef          	jal	ra,105a0 <__sinit>
   11c5c:	f29ff06f          	jal	zero,11b84 <_fclose_r+0x2c>

0000000000011c60 <fclose>:
   11c60:	00050593          	addi	a1,a0,0
   11c64:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11c68:	ef1ff06f          	jal	zero,11b58 <_fclose_r>

0000000000011c6c <__sflush_r>:
   11c6c:	01059703          	lh	a4,16(a1)
   11c70:	fd010113          	addi	sp,sp,-48
   11c74:	02813023          	sd	s0,32(sp)
   11c78:	01313423          	sd	s3,8(sp)
   11c7c:	02113423          	sd	ra,40(sp)
   11c80:	00877793          	andi	a5,a4,8
   11c84:	00058413          	addi	s0,a1,0
   11c88:	00050993          	addi	s3,a0,0
   11c8c:	12079263          	bne	a5,zero,11db0 <__sflush_r+0x144>
   11c90:	000017b7          	lui	a5,0x1
   11c94:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   11c98:	0085a683          	lw	a3,8(a1)
   11c9c:	00f767b3          	or	a5,a4,a5
   11ca0:	00f59823          	sh	a5,16(a1)
   11ca4:	18d05c63          	bge	zero,a3,11e3c <__sflush_r+0x1d0>
   11ca8:	04843803          	ld	a6,72(s0)
   11cac:	0e080663          	beq	a6,zero,11d98 <__sflush_r+0x12c>
   11cb0:	00913c23          	sd	s1,24(sp)
   11cb4:	03371693          	slli	a3,a4,0x33
   11cb8:	0009a483          	lw	s1,0(s3)
   11cbc:	0009a023          	sw	zero,0(s3)
   11cc0:	1806ca63          	blt	a3,zero,11e54 <__sflush_r+0x1e8>
   11cc4:	03043583          	ld	a1,48(s0)
   11cc8:	00000613          	addi	a2,zero,0
   11ccc:	00100693          	addi	a3,zero,1
   11cd0:	00098513          	addi	a0,s3,0
   11cd4:	000800e7          	jalr	ra,0(a6)
   11cd8:	fff00793          	addi	a5,zero,-1
   11cdc:	00050613          	addi	a2,a0,0
   11ce0:	1af50c63          	beq	a0,a5,11e98 <__sflush_r+0x22c>
   11ce4:	01041783          	lh	a5,16(s0)
   11ce8:	04843803          	ld	a6,72(s0)
   11cec:	0047f793          	andi	a5,a5,4
   11cf0:	00078e63          	beq	a5,zero,11d0c <__sflush_r+0xa0>
   11cf4:	00842703          	lw	a4,8(s0)
   11cf8:	05843783          	ld	a5,88(s0)
   11cfc:	40e60633          	sub	a2,a2,a4
   11d00:	00078663          	beq	a5,zero,11d0c <__sflush_r+0xa0>
   11d04:	07042783          	lw	a5,112(s0)
   11d08:	40f60633          	sub	a2,a2,a5
   11d0c:	03043583          	ld	a1,48(s0)
   11d10:	00000693          	addi	a3,zero,0
   11d14:	00098513          	addi	a0,s3,0
   11d18:	000800e7          	jalr	ra,0(a6)
   11d1c:	fff00713          	addi	a4,zero,-1
   11d20:	01041783          	lh	a5,16(s0)
   11d24:	12e51c63          	bne	a0,a4,11e5c <__sflush_r+0x1f0>
   11d28:	0009a683          	lw	a3,0(s3)
   11d2c:	01d00713          	addi	a4,zero,29
   11d30:	18d76263          	bltu	a4,a3,11eb4 <__sflush_r+0x248>
   11d34:	20400737          	lui	a4,0x20400
   11d38:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec089>
   11d3c:	00d75733          	srl	a4,a4,a3
   11d40:	00177713          	andi	a4,a4,1
   11d44:	16070863          	beq	a4,zero,11eb4 <__sflush_r+0x248>
   11d48:	01843683          	ld	a3,24(s0)
   11d4c:	fffff737          	lui	a4,0xfffff
   11d50:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11d54:	00e7f733          	and	a4,a5,a4
   11d58:	00e41823          	sh	a4,16(s0)
   11d5c:	00042423          	sw	zero,8(s0)
   11d60:	00d43023          	sd	a3,0(s0)
   11d64:	03379713          	slli	a4,a5,0x33
   11d68:	00075663          	bge	a4,zero,11d74 <__sflush_r+0x108>
   11d6c:	0009a783          	lw	a5,0(s3)
   11d70:	10078863          	beq	a5,zero,11e80 <__sflush_r+0x214>
   11d74:	05843583          	ld	a1,88(s0)
   11d78:	0099a023          	sw	s1,0(s3)
   11d7c:	10058a63          	beq	a1,zero,11e90 <__sflush_r+0x224>
   11d80:	07440793          	addi	a5,s0,116
   11d84:	00f58663          	beq	a1,a5,11d90 <__sflush_r+0x124>
   11d88:	00098513          	addi	a0,s3,0
   11d8c:	9dcff0ef          	jal	ra,10f68 <_free_r>
   11d90:	01813483          	ld	s1,24(sp)
   11d94:	04043c23          	sd	zero,88(s0)
   11d98:	02813083          	ld	ra,40(sp)
   11d9c:	02013403          	ld	s0,32(sp)
   11da0:	00813983          	ld	s3,8(sp)
   11da4:	00000513          	addi	a0,zero,0
   11da8:	03010113          	addi	sp,sp,48
   11dac:	00008067          	jalr	zero,0(ra)
   11db0:	01213823          	sd	s2,16(sp)
   11db4:	0185b903          	ld	s2,24(a1)
   11db8:	08090a63          	beq	s2,zero,11e4c <__sflush_r+0x1e0>
   11dbc:	00913c23          	sd	s1,24(sp)
   11dc0:	0005b483          	ld	s1,0(a1)
   11dc4:	00377713          	andi	a4,a4,3
   11dc8:	0125b023          	sd	s2,0(a1)
   11dcc:	412484bb          	subw	s1,s1,s2
   11dd0:	00000793          	addi	a5,zero,0
   11dd4:	00071463          	bne	a4,zero,11ddc <__sflush_r+0x170>
   11dd8:	0205a783          	lw	a5,32(a1)
   11ddc:	00f42623          	sw	a5,12(s0)
   11de0:	00904863          	blt	zero,s1,11df0 <__sflush_r+0x184>
   11de4:	0640006f          	jal	zero,11e48 <__sflush_r+0x1dc>
   11de8:	00a90933          	add	s2,s2,a0
   11dec:	04905e63          	bge	zero,s1,11e48 <__sflush_r+0x1dc>
   11df0:	04043783          	ld	a5,64(s0)
   11df4:	03043583          	ld	a1,48(s0)
   11df8:	00048693          	addi	a3,s1,0
   11dfc:	00090613          	addi	a2,s2,0
   11e00:	00098513          	addi	a0,s3,0
   11e04:	000780e7          	jalr	ra,0(a5)
   11e08:	40a484bb          	subw	s1,s1,a0
   11e0c:	fca04ee3          	blt	zero,a0,11de8 <__sflush_r+0x17c>
   11e10:	01045783          	lhu	a5,16(s0)
   11e14:	01013903          	ld	s2,16(sp)
   11e18:	0407e793          	ori	a5,a5,64
   11e1c:	02813083          	ld	ra,40(sp)
   11e20:	00f41823          	sh	a5,16(s0)
   11e24:	02013403          	ld	s0,32(sp)
   11e28:	01813483          	ld	s1,24(sp)
   11e2c:	00813983          	ld	s3,8(sp)
   11e30:	fff00513          	addi	a0,zero,-1
   11e34:	03010113          	addi	sp,sp,48
   11e38:	00008067          	jalr	zero,0(ra)
   11e3c:	0705a683          	lw	a3,112(a1)
   11e40:	e6d044e3          	blt	zero,a3,11ca8 <__sflush_r+0x3c>
   11e44:	f55ff06f          	jal	zero,11d98 <__sflush_r+0x12c>
   11e48:	01813483          	ld	s1,24(sp)
   11e4c:	01013903          	ld	s2,16(sp)
   11e50:	f49ff06f          	jal	zero,11d98 <__sflush_r+0x12c>
   11e54:	09043603          	ld	a2,144(s0)
   11e58:	e95ff06f          	jal	zero,11cec <__sflush_r+0x80>
   11e5c:	01843683          	ld	a3,24(s0)
   11e60:	fffff737          	lui	a4,0xfffff
   11e64:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11e68:	00e7f733          	and	a4,a5,a4
   11e6c:	00e41823          	sh	a4,16(s0)
   11e70:	00042423          	sw	zero,8(s0)
   11e74:	00d43023          	sd	a3,0(s0)
   11e78:	03379713          	slli	a4,a5,0x33
   11e7c:	ee075ce3          	bge	a4,zero,11d74 <__sflush_r+0x108>
   11e80:	05843583          	ld	a1,88(s0)
   11e84:	08a43823          	sd	a0,144(s0)
   11e88:	0099a023          	sw	s1,0(s3)
   11e8c:	ee059ae3          	bne	a1,zero,11d80 <__sflush_r+0x114>
   11e90:	01813483          	ld	s1,24(sp)
   11e94:	f05ff06f          	jal	zero,11d98 <__sflush_r+0x12c>
   11e98:	0009a783          	lw	a5,0(s3)
   11e9c:	e40784e3          	beq	a5,zero,11ce4 <__sflush_r+0x78>
   11ea0:	fe378713          	addi	a4,a5,-29
   11ea4:	00070c63          	beq	a4,zero,11ebc <__sflush_r+0x250>
   11ea8:	fea78793          	addi	a5,a5,-22
   11eac:	00078863          	beq	a5,zero,11ebc <__sflush_r+0x250>
   11eb0:	01045783          	lhu	a5,16(s0)
   11eb4:	0407e793          	ori	a5,a5,64
   11eb8:	f65ff06f          	jal	zero,11e1c <__sflush_r+0x1b0>
   11ebc:	0099a023          	sw	s1,0(s3)
   11ec0:	01813483          	ld	s1,24(sp)
   11ec4:	ed5ff06f          	jal	zero,11d98 <__sflush_r+0x12c>

0000000000011ec8 <_fflush_r>:
   11ec8:	00050793          	addi	a5,a0,0
   11ecc:	00050663          	beq	a0,zero,11ed8 <_fflush_r+0x10>
   11ed0:	04853703          	ld	a4,72(a0)
   11ed4:	00070e63          	beq	a4,zero,11ef0 <_fflush_r+0x28>
   11ed8:	01059703          	lh	a4,16(a1)
   11edc:	00071663          	bne	a4,zero,11ee8 <_fflush_r+0x20>
   11ee0:	00000513          	addi	a0,zero,0
   11ee4:	00008067          	jalr	zero,0(ra)
   11ee8:	00078513          	addi	a0,a5,0
   11eec:	d81ff06f          	jal	zero,11c6c <__sflush_r>
   11ef0:	fe010113          	addi	sp,sp,-32
   11ef4:	00b13423          	sd	a1,8(sp)
   11ef8:	00113c23          	sd	ra,24(sp)
   11efc:	00a13023          	sd	a0,0(sp)
   11f00:	ea0fe0ef          	jal	ra,105a0 <__sinit>
   11f04:	00813583          	ld	a1,8(sp)
   11f08:	00013783          	ld	a5,0(sp)
   11f0c:	01059703          	lh	a4,16(a1)
   11f10:	00070a63          	beq	a4,zero,11f24 <_fflush_r+0x5c>
   11f14:	01813083          	ld	ra,24(sp)
   11f18:	00078513          	addi	a0,a5,0
   11f1c:	02010113          	addi	sp,sp,32
   11f20:	d4dff06f          	jal	zero,11c6c <__sflush_r>
   11f24:	01813083          	ld	ra,24(sp)
   11f28:	00000513          	addi	a0,zero,0
   11f2c:	02010113          	addi	sp,sp,32
   11f30:	00008067          	jalr	zero,0(ra)

0000000000011f34 <fflush>:
   11f34:	06050063          	beq	a0,zero,11f94 <fflush+0x60>
   11f38:	00050593          	addi	a1,a0,0
   11f3c:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11f40:	00050663          	beq	a0,zero,11f4c <fflush+0x18>
   11f44:	04853783          	ld	a5,72(a0)
   11f48:	00078c63          	beq	a5,zero,11f60 <fflush+0x2c>
   11f4c:	01059783          	lh	a5,16(a1)
   11f50:	00079663          	bne	a5,zero,11f5c <fflush+0x28>
   11f54:	00000513          	addi	a0,zero,0
   11f58:	00008067          	jalr	zero,0(ra)
   11f5c:	d11ff06f          	jal	zero,11c6c <__sflush_r>
   11f60:	fe010113          	addi	sp,sp,-32
   11f64:	00b13423          	sd	a1,8(sp)
   11f68:	00a13023          	sd	a0,0(sp)
   11f6c:	00113c23          	sd	ra,24(sp)
   11f70:	e30fe0ef          	jal	ra,105a0 <__sinit>
   11f74:	00813583          	ld	a1,8(sp)
   11f78:	00013503          	ld	a0,0(sp)
   11f7c:	01059783          	lh	a5,16(a1)
   11f80:	02079863          	bne	a5,zero,11fb0 <fflush+0x7c>
   11f84:	01813083          	ld	ra,24(sp)
   11f88:	00000513          	addi	a0,zero,0
   11f8c:	02010113          	addi	sp,sp,32
   11f90:	00008067          	jalr	zero,0(ra)
   11f94:	00013637          	lui	a2,0x13
   11f98:	000125b7          	lui	a1,0x12
   11f9c:	00013537          	lui	a0,0x13
   11fa0:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   11fa4:	ec858593          	addi	a1,a1,-312 # 11ec8 <_fflush_r>
   11fa8:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   11fac:	e50fe06f          	jal	zero,105fc <_fwalk_sglue>
   11fb0:	01813083          	ld	ra,24(sp)
   11fb4:	02010113          	addi	sp,sp,32
   11fb8:	cb5ff06f          	jal	zero,11c6c <__sflush_r>

0000000000011fbc <_sbrk_r>:
   11fbc:	fe010113          	addi	sp,sp,-32
   11fc0:	00813823          	sd	s0,16(sp)
   11fc4:	00913423          	sd	s1,8(sp)
   11fc8:	00050493          	addi	s1,a0,0
   11fcc:	00058513          	addi	a0,a1,0
   11fd0:	00113c23          	sd	ra,24(sp)
   11fd4:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   11fd8:	228000ef          	jal	ra,12200 <_sbrk>
   11fdc:	fff00793          	addi	a5,zero,-1
   11fe0:	00f50c63          	beq	a0,a5,11ff8 <_sbrk_r+0x3c>
   11fe4:	01813083          	ld	ra,24(sp)
   11fe8:	01013403          	ld	s0,16(sp)
   11fec:	00813483          	ld	s1,8(sp)
   11ff0:	02010113          	addi	sp,sp,32
   11ff4:	00008067          	jalr	zero,0(ra)
   11ff8:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   11ffc:	fe0784e3          	beq	a5,zero,11fe4 <_sbrk_r+0x28>
   12000:	01813083          	ld	ra,24(sp)
   12004:	01013403          	ld	s0,16(sp)
   12008:	00f4a023          	sw	a5,0(s1)
   1200c:	00813483          	ld	s1,8(sp)
   12010:	02010113          	addi	sp,sp,32
   12014:	00008067          	jalr	zero,0(ra)

0000000000012018 <__libc_fini_array>:
   12018:	fe010113          	addi	sp,sp,-32
   1201c:	00813823          	sd	s0,16(sp)
   12020:	000137b7          	lui	a5,0x13
   12024:	00013437          	lui	s0,0x13
   12028:	01878793          	addi	a5,a5,24 # 13018 <__sglue>
   1202c:	01040413          	addi	s0,s0,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   12030:	408787b3          	sub	a5,a5,s0
   12034:	00913423          	sd	s1,8(sp)
   12038:	00113c23          	sd	ra,24(sp)
   1203c:	4037d493          	srai	s1,a5,0x3
   12040:	02048063          	beq	s1,zero,12060 <__libc_fini_array+0x48>
   12044:	ff840413          	addi	s0,s0,-8
   12048:	00f40433          	add	s0,s0,a5
   1204c:	00043783          	ld	a5,0(s0)
   12050:	fff48493          	addi	s1,s1,-1
   12054:	ff840413          	addi	s0,s0,-8
   12058:	000780e7          	jalr	ra,0(a5)
   1205c:	fe0498e3          	bne	s1,zero,1204c <__libc_fini_array+0x34>
   12060:	01813083          	ld	ra,24(sp)
   12064:	01013403          	ld	s0,16(sp)
   12068:	00813483          	ld	s1,8(sp)
   1206c:	02010113          	addi	sp,sp,32
   12070:	00008067          	jalr	zero,0(ra)

0000000000012074 <__register_exitproc>:
   12074:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   12078:	04078e63          	beq	a5,zero,120d4 <__register_exitproc+0x60>
   1207c:	0087a703          	lw	a4,8(a5)
   12080:	01f00813          	addi	a6,zero,31
   12084:	08e84263          	blt	a6,a4,12108 <__register_exitproc+0x94>
   12088:	02050863          	beq	a0,zero,120b8 <__register_exitproc+0x44>
   1208c:	00371813          	slli	a6,a4,0x3
   12090:	01078833          	add	a6,a5,a6
   12094:	10c83823          	sd	a2,272(a6)
   12098:	3107a883          	lw	a7,784(a5)
   1209c:	00100613          	addi	a2,zero,1
   120a0:	00e6163b          	sllw	a2,a2,a4
   120a4:	00c8e8b3          	or	a7,a7,a2
   120a8:	3117a823          	sw	a7,784(a5)
   120ac:	20d83823          	sd	a3,528(a6)
   120b0:	00200693          	addi	a3,zero,2
   120b4:	02d50663          	beq	a0,a3,120e0 <__register_exitproc+0x6c>
   120b8:	0017069b          	addiw	a3,a4,1
   120bc:	00371713          	slli	a4,a4,0x3
   120c0:	00d7a423          	sw	a3,8(a5)
   120c4:	00e787b3          	add	a5,a5,a4
   120c8:	00b7b823          	sd	a1,16(a5)
   120cc:	00000513          	addi	a0,zero,0
   120d0:	00008067          	jalr	zero,0(ra)
   120d4:	44818793          	addi	a5,gp,1096 # 13c60 <__atexit0>
   120d8:	1af1b823          	sd	a5,432(gp) # 139c8 <__atexit>
   120dc:	fa1ff06f          	jal	zero,1207c <__register_exitproc+0x8>
   120e0:	3147a683          	lw	a3,788(a5)
   120e4:	00000513          	addi	a0,zero,0
   120e8:	00d66633          	or	a2,a2,a3
   120ec:	0017069b          	addiw	a3,a4,1
   120f0:	00371713          	slli	a4,a4,0x3
   120f4:	30c7aa23          	sw	a2,788(a5)
   120f8:	00d7a423          	sw	a3,8(a5)
   120fc:	00e787b3          	add	a5,a5,a4
   12100:	00b7b823          	sd	a1,16(a5)
   12104:	00008067          	jalr	zero,0(ra)
   12108:	fff00513          	addi	a0,zero,-1
   1210c:	00008067          	jalr	zero,0(ra)

0000000000012110 <_close>:
   12110:	03900893          	addi	a7,zero,57
   12114:	00000073          	ecall
   12118:	00054663          	blt	a0,zero,12124 <_close+0x14>
   1211c:	0005051b          	addiw	a0,a0,0
   12120:	00008067          	jalr	zero,0(ra)
   12124:	fe010113          	addi	sp,sp,-32
   12128:	00113c23          	sd	ra,24(sp)
   1212c:	00a13423          	sd	a0,8(sp)
   12130:	188000ef          	jal	ra,122b8 <__errno>
   12134:	00813783          	ld	a5,8(sp)
   12138:	01813083          	ld	ra,24(sp)
   1213c:	40f007bb          	subw	a5,zero,a5
   12140:	00f52023          	sw	a5,0(a0)
   12144:	fff00513          	addi	a0,zero,-1
   12148:	02010113          	addi	sp,sp,32
   1214c:	00008067          	jalr	zero,0(ra)

0000000000012150 <_exit>:
   12150:	05d00893          	addi	a7,zero,93
   12154:	00000073          	ecall
   12158:	00054463          	blt	a0,zero,12160 <_exit+0x10>
   1215c:	0000006f          	jal	zero,1215c <_exit+0xc>
   12160:	fe010113          	addi	sp,sp,-32
   12164:	00113c23          	sd	ra,24(sp)
   12168:	00a13423          	sd	a0,8(sp)
   1216c:	14c000ef          	jal	ra,122b8 <__errno>
   12170:	00813783          	ld	a5,8(sp)
   12174:	40f007bb          	subw	a5,zero,a5
   12178:	00f52023          	sw	a5,0(a0)
   1217c:	0000006f          	jal	zero,1217c <_exit+0x2c>

0000000000012180 <_lseek>:
   12180:	03e00893          	addi	a7,zero,62
   12184:	00000073          	ecall
   12188:	00054463          	blt	a0,zero,12190 <_lseek+0x10>
   1218c:	00008067          	jalr	zero,0(ra)
   12190:	fe010113          	addi	sp,sp,-32
   12194:	00113c23          	sd	ra,24(sp)
   12198:	00a13423          	sd	a0,8(sp)
   1219c:	11c000ef          	jal	ra,122b8 <__errno>
   121a0:	00813783          	ld	a5,8(sp)
   121a4:	01813083          	ld	ra,24(sp)
   121a8:	40f007bb          	subw	a5,zero,a5
   121ac:	00f52023          	sw	a5,0(a0)
   121b0:	fff00793          	addi	a5,zero,-1
   121b4:	00078513          	addi	a0,a5,0
   121b8:	02010113          	addi	sp,sp,32
   121bc:	00008067          	jalr	zero,0(ra)

00000000000121c0 <_read>:
   121c0:	03f00893          	addi	a7,zero,63
   121c4:	00000073          	ecall
   121c8:	00054463          	blt	a0,zero,121d0 <_read+0x10>
   121cc:	00008067          	jalr	zero,0(ra)
   121d0:	fe010113          	addi	sp,sp,-32
   121d4:	00113c23          	sd	ra,24(sp)
   121d8:	00a13423          	sd	a0,8(sp)
   121dc:	0dc000ef          	jal	ra,122b8 <__errno>
   121e0:	00813783          	ld	a5,8(sp)
   121e4:	01813083          	ld	ra,24(sp)
   121e8:	40f007bb          	subw	a5,zero,a5
   121ec:	00f52023          	sw	a5,0(a0)
   121f0:	fff00793          	addi	a5,zero,-1
   121f4:	00078513          	addi	a0,a5,0
   121f8:	02010113          	addi	sp,sp,32
   121fc:	00008067          	jalr	zero,0(ra)

0000000000012200 <_sbrk>:
   12200:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   12204:	ff010113          	addi	sp,sp,-16
   12208:	00113423          	sd	ra,8(sp)
   1220c:	00050713          	addi	a4,a0,0
   12210:	02079063          	bne	a5,zero,12230 <_sbrk+0x30>
   12214:	0d600893          	addi	a7,zero,214
   12218:	00000513          	addi	a0,zero,0
   1221c:	00000073          	ecall
   12220:	fff00793          	addi	a5,zero,-1
   12224:	02f50c63          	beq	a0,a5,1225c <_sbrk+0x5c>
   12228:	00050793          	addi	a5,a0,0
   1222c:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   12230:	00f70533          	add	a0,a4,a5
   12234:	0d600893          	addi	a7,zero,214
   12238:	00000073          	ecall
   1223c:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   12240:	00f70733          	add	a4,a4,a5
   12244:	00e51c63          	bne	a0,a4,1225c <_sbrk+0x5c>
   12248:	00813083          	ld	ra,8(sp)
   1224c:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   12250:	00078513          	addi	a0,a5,0
   12254:	01010113          	addi	sp,sp,16
   12258:	00008067          	jalr	zero,0(ra)
   1225c:	05c000ef          	jal	ra,122b8 <__errno>
   12260:	00813083          	ld	ra,8(sp)
   12264:	00c00793          	addi	a5,zero,12
   12268:	00f52023          	sw	a5,0(a0)
   1226c:	fff00513          	addi	a0,zero,-1
   12270:	01010113          	addi	sp,sp,16
   12274:	00008067          	jalr	zero,0(ra)

0000000000012278 <_write>:
   12278:	04000893          	addi	a7,zero,64
   1227c:	00000073          	ecall
   12280:	00054463          	blt	a0,zero,12288 <_write+0x10>
   12284:	00008067          	jalr	zero,0(ra)
   12288:	fe010113          	addi	sp,sp,-32
   1228c:	00113c23          	sd	ra,24(sp)
   12290:	00a13423          	sd	a0,8(sp)
   12294:	024000ef          	jal	ra,122b8 <__errno>
   12298:	00813783          	ld	a5,8(sp)
   1229c:	01813083          	ld	ra,24(sp)
   122a0:	40f007bb          	subw	a5,zero,a5
   122a4:	00f52023          	sw	a5,0(a0)
   122a8:	fff00793          	addi	a5,zero,-1
   122ac:	00078513          	addi	a0,a5,0
   122b0:	02010113          	addi	sp,sp,32
   122b4:	00008067          	jalr	zero,0(ra)

00000000000122b8 <__errno>:
   122b8:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   122bc:	00008067          	jalr	zero,0(ra)
