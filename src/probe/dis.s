
bin-c:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	addi	a1,zero,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	addi	s0,a0,0
   10134:	2b5000ef          	jal	ra,10be8 <__call_exitprocs>
   10138:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   1013c:	00078463          	beq	a5,zero,10144 <exit+0x24>
   10140:	000780e7          	jalr	ra,0(a5)
   10144:	00040513          	addi	a0,s0,0
   10148:	6f9010ef          	jal	ra,12040 <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	addi	a5,zero,0
   10150:	00078863          	beq	a5,zero,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	f0850513          	addi	a0,a0,-248 # 11f08 <__libc_fini_array>
   1015c:	3c50006f          	jal	zero,10d20 <atexit>
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
   10184:	189000ef          	jal	ra,10b0c <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	b9850513          	addi	a0,a0,-1128 # 10d20 <atexit>
   10190:	00050863          	beq	a0,zero,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	d7450513          	addi	a0,a0,-652 # 11f08 <__libc_fini_array>
   1019c:	385000ef          	jal	ra,10d20 <atexit>
   101a0:	0d9000ef          	jal	ra,10a78 <__libc_init_array>
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
   101d8:	1b050513          	addi	a0,a0,432 # 121b0 <__EH_FRAME_BEGIN__>
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
   1020c:	1b050513          	addi	a0,a0,432 # 121b0 <__EH_FRAME_BEGIN__>
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
   10240:	ff010113          	addi	sp,sp,-16
   10244:	00113423          	sd	ra,8(sp)
   10248:	00813023          	sd	s0,0(sp)
   1024c:	01010413          	addi	s0,sp,16
   10250:	fcdff0ef          	jal	ra,1021c <foo>
   10254:	00000793          	addi	a5,zero,0
   10258:	00078513          	addi	a0,a5,0
   1025c:	00813083          	ld	ra,8(sp)
   10260:	00013403          	ld	s0,0(sp)
   10264:	01010113          	addi	sp,sp,16
   10268:	00008067          	jalr	zero,0(ra)

000000000001026c <__fp_lock>:
   1026c:	00000513          	addi	a0,zero,0
   10270:	00008067          	jalr	zero,0(ra)

0000000000010274 <stdio_exit_handler>:
   10274:	00013637          	lui	a2,0x13
   10278:	000125b7          	lui	a1,0x12
   1027c:	00013537          	lui	a0,0x13
   10280:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10284:	a4858593          	addi	a1,a1,-1464 # 11a48 <_fclose_r>
   10288:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   1028c:	34c0006f          	jal	zero,105d8 <_fwalk_sglue>

0000000000010290 <cleanup_stdio>:
   10290:	00853583          	ld	a1,8(a0)
   10294:	ff010113          	addi	sp,sp,-16
   10298:	00813023          	sd	s0,0(sp)
   1029c:	00113423          	sd	ra,8(sp)
   102a0:	21018793          	addi	a5,gp,528 # 13a28 <__sf>
   102a4:	00050413          	addi	s0,a0,0
   102a8:	00f58463          	beq	a1,a5,102b0 <cleanup_stdio+0x20>
   102ac:	79c010ef          	jal	ra,11a48 <_fclose_r>
   102b0:	01043583          	ld	a1,16(s0)
   102b4:	2c018793          	addi	a5,gp,704 # 13ad8 <__sf+0xb0>
   102b8:	00f58663          	beq	a1,a5,102c4 <cleanup_stdio+0x34>
   102bc:	00040513          	addi	a0,s0,0
   102c0:	788010ef          	jal	ra,11a48 <_fclose_r>
   102c4:	01843583          	ld	a1,24(s0)
   102c8:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   102cc:	00f58c63          	beq	a1,a5,102e4 <cleanup_stdio+0x54>
   102d0:	00040513          	addi	a0,s0,0
   102d4:	00013403          	ld	s0,0(sp)
   102d8:	00813083          	ld	ra,8(sp)
   102dc:	01010113          	addi	sp,sp,16
   102e0:	7680106f          	jal	zero,11a48 <_fclose_r>
   102e4:	00813083          	ld	ra,8(sp)
   102e8:	00013403          	ld	s0,0(sp)
   102ec:	01010113          	addi	sp,sp,16
   102f0:	00008067          	jalr	zero,0(ra)

00000000000102f4 <__fp_unlock>:
   102f4:	00000513          	addi	a0,zero,0
   102f8:	00008067          	jalr	zero,0(ra)

00000000000102fc <global_stdio_init.part.0>:
   102fc:	fd010113          	addi	sp,sp,-48
   10300:	000107b7          	lui	a5,0x10
   10304:	02813023          	sd	s0,32(sp)
   10308:	27478793          	addi	a5,a5,628 # 10274 <stdio_exit_handler>
   1030c:	21018413          	addi	s0,gp,528 # 13a28 <__sf>
   10310:	02113423          	sd	ra,40(sp)
   10314:	00913c23          	sd	s1,24(sp)
   10318:	01213823          	sd	s2,16(sp)
   1031c:	01313423          	sd	s3,8(sp)
   10320:	01413023          	sd	s4,0(sp)
   10324:	1af1b023          	sd	a5,416(gp) # 139b8 <__stdio_exit_handler>
   10328:	00800613          	addi	a2,zero,8
   1032c:	00400793          	addi	a5,zero,4
   10330:	00000593          	addi	a1,zero,0
   10334:	2b418513          	addi	a0,gp,692 # 13acc <__sf+0xa4>
   10338:	00f42823          	sw	a5,16(s0)
   1033c:	00043023          	sd	zero,0(s0)
   10340:	00043423          	sd	zero,8(s0)
   10344:	0a042623          	sw	zero,172(s0)
   10348:	00043c23          	sd	zero,24(s0)
   1034c:	02042023          	sw	zero,32(s0)
   10350:	02042423          	sw	zero,40(s0)
   10354:	7b8000ef          	jal	ra,10b0c <memset>
   10358:	00010a37          	lui	s4,0x10
   1035c:	000109b7          	lui	s3,0x10
   10360:	00010937          	lui	s2,0x10
   10364:	000104b7          	lui	s1,0x10
   10368:	000107b7          	lui	a5,0x10
   1036c:	6a8a0a13          	addi	s4,s4,1704 # 106a8 <__sread>
   10370:	70c98993          	addi	s3,s3,1804 # 1070c <__swrite>
   10374:	79490913          	addi	s2,s2,1940 # 10794 <__sseek>
   10378:	7f848493          	addi	s1,s1,2040 # 107f8 <__sclose>
   1037c:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   10380:	00800613          	addi	a2,zero,8
   10384:	00000593          	addi	a1,zero,0
   10388:	36418513          	addi	a0,gp,868 # 13b7c <__sf+0x154>
   1038c:	0cf42023          	sw	a5,192(s0)
   10390:	03443c23          	sd	s4,56(s0)
   10394:	05343023          	sd	s3,64(s0)
   10398:	05243423          	sd	s2,72(s0)
   1039c:	04943823          	sd	s1,80(s0)
   103a0:	02843823          	sd	s0,48(s0)
   103a4:	0a043823          	sd	zero,176(s0)
   103a8:	0a043c23          	sd	zero,184(s0)
   103ac:	14042e23          	sw	zero,348(s0)
   103b0:	0c043423          	sd	zero,200(s0)
   103b4:	0c042823          	sw	zero,208(s0)
   103b8:	0c042c23          	sw	zero,216(s0)
   103bc:	750000ef          	jal	ra,10b0c <memset>
   103c0:	000207b7          	lui	a5,0x20
   103c4:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xc09a>
   103c8:	2c018713          	addi	a4,gp,704 # 13ad8 <__sf+0xb0>
   103cc:	41418513          	addi	a0,gp,1044 # 13c2c <__sf+0x204>
   103d0:	00800613          	addi	a2,zero,8
   103d4:	00000593          	addi	a1,zero,0
   103d8:	0f443423          	sd	s4,232(s0)
   103dc:	0f343823          	sd	s3,240(s0)
   103e0:	0f243c23          	sd	s2,248(s0)
   103e4:	10943023          	sd	s1,256(s0)
   103e8:	16f42823          	sw	a5,368(s0)
   103ec:	16043023          	sd	zero,352(s0)
   103f0:	16043423          	sd	zero,360(s0)
   103f4:	20042623          	sw	zero,524(s0)
   103f8:	16043c23          	sd	zero,376(s0)
   103fc:	18042023          	sw	zero,384(s0)
   10400:	18042423          	sw	zero,392(s0)
   10404:	0ee43023          	sd	a4,224(s0)
   10408:	704000ef          	jal	ra,10b0c <memset>
   1040c:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   10410:	19443c23          	sd	s4,408(s0)
   10414:	1b343023          	sd	s3,416(s0)
   10418:	1b243423          	sd	s2,424(s0)
   1041c:	1a943823          	sd	s1,432(s0)
   10420:	02813083          	ld	ra,40(sp)
   10424:	18f43823          	sd	a5,400(s0)
   10428:	02013403          	ld	s0,32(sp)
   1042c:	01813483          	ld	s1,24(sp)
   10430:	01013903          	ld	s2,16(sp)
   10434:	00813983          	ld	s3,8(sp)
   10438:	00013a03          	ld	s4,0(sp)
   1043c:	03010113          	addi	sp,sp,48
   10440:	00008067          	jalr	zero,0(ra)

0000000000010444 <__sfp>:
   10444:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   10448:	fd010113          	addi	sp,sp,-48
   1044c:	00913c23          	sd	s1,24(sp)
   10450:	02113423          	sd	ra,40(sp)
   10454:	02813023          	sd	s0,32(sp)
   10458:	00050493          	addi	s1,a0,0
   1045c:	10078463          	beq	a5,zero,10564 <__sfp+0x120>
   10460:	000136b7          	lui	a3,0x13
   10464:	01868693          	addi	a3,a3,24 # 13018 <__sglue>
   10468:	0086a703          	lw	a4,8(a3)
   1046c:	08e05c63          	bge	zero,a4,10504 <__sfp+0xc0>
   10470:	02071713          	slli	a4,a4,0x20
   10474:	02075713          	srli	a4,a4,0x20
   10478:	00171793          	slli	a5,a4,0x1
   1047c:	00e787b3          	add	a5,a5,a4
   10480:	0106b403          	ld	s0,16(a3)
   10484:	00279793          	slli	a5,a5,0x2
   10488:	40e787b3          	sub	a5,a5,a4
   1048c:	00479793          	slli	a5,a5,0x4
   10490:	00f407b3          	add	a5,s0,a5
   10494:	00c0006f          	jal	zero,104a0 <__sfp+0x5c>
   10498:	0b040413          	addi	s0,s0,176
   1049c:	06f40463          	beq	s0,a5,10504 <__sfp+0xc0>
   104a0:	01041703          	lh	a4,16(s0)
   104a4:	fe071ae3          	bne	a4,zero,10498 <__sfp+0x54>
   104a8:	ffff07b7          	lui	a5,0xffff0
   104ac:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdc089>
   104b0:	00f42823          	sw	a5,16(s0)
   104b4:	0a042623          	sw	zero,172(s0)
   104b8:	00043023          	sd	zero,0(s0)
   104bc:	00043423          	sd	zero,8(s0)
   104c0:	00043c23          	sd	zero,24(s0)
   104c4:	02042023          	sw	zero,32(s0)
   104c8:	02042423          	sw	zero,40(s0)
   104cc:	00800613          	addi	a2,zero,8
   104d0:	00000593          	addi	a1,zero,0
   104d4:	0a440513          	addi	a0,s0,164
   104d8:	634000ef          	jal	ra,10b0c <memset>
   104dc:	04043c23          	sd	zero,88(s0)
   104e0:	06042023          	sw	zero,96(s0)
   104e4:	06043c23          	sd	zero,120(s0)
   104e8:	08042023          	sw	zero,128(s0)
   104ec:	02813083          	ld	ra,40(sp)
   104f0:	00040513          	addi	a0,s0,0
   104f4:	02013403          	ld	s0,32(sp)
   104f8:	01813483          	ld	s1,24(sp)
   104fc:	03010113          	addi	sp,sp,48
   10500:	00008067          	jalr	zero,0(ra)
   10504:	0006b403          	ld	s0,0(a3)
   10508:	00040663          	beq	s0,zero,10514 <__sfp+0xd0>
   1050c:	00040693          	addi	a3,s0,0
   10510:	f59ff06f          	jal	zero,10468 <__sfp+0x24>
   10514:	2d800593          	addi	a1,zero,728
   10518:	00048513          	addi	a0,s1,0
   1051c:	00d13423          	sd	a3,8(sp)
   10520:	43d000ef          	jal	ra,1115c <_malloc_r>
   10524:	00813683          	ld	a3,8(sp)
   10528:	00050413          	addi	s0,a0,0
   1052c:	04050063          	beq	a0,zero,1056c <__sfp+0x128>
   10530:	00400793          	addi	a5,zero,4
   10534:	00f52423          	sw	a5,8(a0)
   10538:	01850513          	addi	a0,a0,24
   1053c:	00043023          	sd	zero,0(s0)
   10540:	00a43823          	sd	a0,16(s0)
   10544:	2c000613          	addi	a2,zero,704
   10548:	00000593          	addi	a1,zero,0
   1054c:	00d13423          	sd	a3,8(sp)
   10550:	5bc000ef          	jal	ra,10b0c <memset>
   10554:	00813683          	ld	a3,8(sp)
   10558:	0086b023          	sd	s0,0(a3)
   1055c:	00040693          	addi	a3,s0,0
   10560:	f09ff06f          	jal	zero,10468 <__sfp+0x24>
   10564:	d99ff0ef          	jal	ra,102fc <global_stdio_init.part.0>
   10568:	ef9ff06f          	jal	zero,10460 <__sfp+0x1c>
   1056c:	0006b023          	sd	zero,0(a3)
   10570:	00c00793          	addi	a5,zero,12
   10574:	00f4a023          	sw	a5,0(s1)
   10578:	f75ff06f          	jal	zero,104ec <__sfp+0xa8>

000000000001057c <__sinit>:
   1057c:	04853783          	ld	a5,72(a0)
   10580:	00078463          	beq	a5,zero,10588 <__sinit+0xc>
   10584:	00008067          	jalr	zero,0(ra)
   10588:	000107b7          	lui	a5,0x10
   1058c:	1a01b703          	ld	a4,416(gp) # 139b8 <__stdio_exit_handler>
   10590:	29078793          	addi	a5,a5,656 # 10290 <cleanup_stdio>
   10594:	04f53423          	sd	a5,72(a0)
   10598:	fe0716e3          	bne	a4,zero,10584 <__sinit+0x8>
   1059c:	d61ff06f          	jal	zero,102fc <global_stdio_init.part.0>

00000000000105a0 <__sfp_lock_acquire>:
   105a0:	00008067          	jalr	zero,0(ra)

00000000000105a4 <__sfp_lock_release>:
   105a4:	00008067          	jalr	zero,0(ra)

00000000000105a8 <__fp_lock_all>:
   105a8:	00013637          	lui	a2,0x13
   105ac:	000105b7          	lui	a1,0x10
   105b0:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   105b4:	26c58593          	addi	a1,a1,620 # 1026c <__fp_lock>
   105b8:	00000513          	addi	a0,zero,0
   105bc:	01c0006f          	jal	zero,105d8 <_fwalk_sglue>

00000000000105c0 <__fp_unlock_all>:
   105c0:	00013637          	lui	a2,0x13
   105c4:	000105b7          	lui	a1,0x10
   105c8:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   105cc:	2f458593          	addi	a1,a1,756 # 102f4 <__fp_unlock>
   105d0:	00000513          	addi	a0,zero,0
   105d4:	0040006f          	jal	zero,105d8 <_fwalk_sglue>

00000000000105d8 <_fwalk_sglue>:
   105d8:	fb010113          	addi	sp,sp,-80
   105dc:	03213823          	sd	s2,48(sp)
   105e0:	03313423          	sd	s3,40(sp)
   105e4:	03413023          	sd	s4,32(sp)
   105e8:	01513c23          	sd	s5,24(sp)
   105ec:	01613823          	sd	s6,16(sp)
   105f0:	01713423          	sd	s7,8(sp)
   105f4:	04113423          	sd	ra,72(sp)
   105f8:	04813023          	sd	s0,64(sp)
   105fc:	02913c23          	sd	s1,56(sp)
   10600:	00060913          	addi	s2,a2,0
   10604:	00050a13          	addi	s4,a0,0
   10608:	00058a93          	addi	s5,a1,0
   1060c:	00000b13          	addi	s6,zero,0
   10610:	00100b93          	addi	s7,zero,1
   10614:	fff00993          	addi	s3,zero,-1
   10618:	00892783          	lw	a5,8(s2)
   1061c:	04f05a63          	bge	zero,a5,10670 <_fwalk_sglue+0x98>
   10620:	02079793          	slli	a5,a5,0x20
   10624:	0207d793          	srli	a5,a5,0x20
   10628:	00179493          	slli	s1,a5,0x1
   1062c:	00f484b3          	add	s1,s1,a5
   10630:	01093403          	ld	s0,16(s2)
   10634:	00249493          	slli	s1,s1,0x2
   10638:	40f484b3          	sub	s1,s1,a5
   1063c:	00449493          	slli	s1,s1,0x4
   10640:	009404b3          	add	s1,s0,s1
   10644:	01045783          	lhu	a5,16(s0)
   10648:	02fbf063          	bgeu	s7,a5,10668 <_fwalk_sglue+0x90>
   1064c:	01241783          	lh	a5,18(s0)
   10650:	00040593          	addi	a1,s0,0
   10654:	000a0513          	addi	a0,s4,0
   10658:	01378863          	beq	a5,s3,10668 <_fwalk_sglue+0x90>
   1065c:	000a80e7          	jalr	ra,0(s5)
   10660:	01656b33          	or	s6,a0,s6
   10664:	000b0b1b          	addiw	s6,s6,0
   10668:	0b040413          	addi	s0,s0,176
   1066c:	fc941ce3          	bne	s0,s1,10644 <_fwalk_sglue+0x6c>
   10670:	00093903          	ld	s2,0(s2)
   10674:	fa0912e3          	bne	s2,zero,10618 <_fwalk_sglue+0x40>
   10678:	04813083          	ld	ra,72(sp)
   1067c:	04013403          	ld	s0,64(sp)
   10680:	03813483          	ld	s1,56(sp)
   10684:	03013903          	ld	s2,48(sp)
   10688:	02813983          	ld	s3,40(sp)
   1068c:	02013a03          	ld	s4,32(sp)
   10690:	01813a83          	ld	s5,24(sp)
   10694:	00813b83          	ld	s7,8(sp)
   10698:	000b0513          	addi	a0,s6,0
   1069c:	01013b03          	ld	s6,16(sp)
   106a0:	05010113          	addi	sp,sp,80
   106a4:	00008067          	jalr	zero,0(ra)

00000000000106a8 <__sread>:
   106a8:	ff010113          	addi	sp,sp,-16
   106ac:	00813023          	sd	s0,0(sp)
   106b0:	00058413          	addi	s0,a1,0
   106b4:	01259583          	lh	a1,18(a1)
   106b8:	00113423          	sd	ra,8(sp)
   106bc:	2ec000ef          	jal	ra,109a8 <_read_r>
   106c0:	02054063          	blt	a0,zero,106e0 <__sread+0x38>
   106c4:	09043783          	ld	a5,144(s0)
   106c8:	00813083          	ld	ra,8(sp)
   106cc:	00a787b3          	add	a5,a5,a0
   106d0:	08f43823          	sd	a5,144(s0)
   106d4:	00013403          	ld	s0,0(sp)
   106d8:	01010113          	addi	sp,sp,16
   106dc:	00008067          	jalr	zero,0(ra)
   106e0:	01045783          	lhu	a5,16(s0)
   106e4:	fffff737          	lui	a4,0xfffff
   106e8:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   106ec:	00e7f7b3          	and	a5,a5,a4
   106f0:	00813083          	ld	ra,8(sp)
   106f4:	00f41823          	sh	a5,16(s0)
   106f8:	00013403          	ld	s0,0(sp)
   106fc:	01010113          	addi	sp,sp,16
   10700:	00008067          	jalr	zero,0(ra)

0000000000010704 <__seofread>:
   10704:	00000513          	addi	a0,zero,0
   10708:	00008067          	jalr	zero,0(ra)

000000000001070c <__swrite>:
   1070c:	01059783          	lh	a5,16(a1)
   10710:	fd010113          	addi	sp,sp,-48
   10714:	00068313          	addi	t1,a3,0
   10718:	02113423          	sd	ra,40(sp)
   1071c:	1007f693          	andi	a3,a5,256
   10720:	00058713          	addi	a4,a1,0
   10724:	00060893          	addi	a7,a2,0
   10728:	00050813          	addi	a6,a0,0
   1072c:	02069863          	bne	a3,zero,1075c <__swrite+0x50>
   10730:	fffff6b7          	lui	a3,0xfffff
   10734:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10738:	02813083          	ld	ra,40(sp)
   1073c:	00d7f7b3          	and	a5,a5,a3
   10740:	01271583          	lh	a1,18(a4)
   10744:	00f71823          	sh	a5,16(a4)
   10748:	00030693          	addi	a3,t1,0 # 10210 <frame_dummy+0x14>
   1074c:	00088613          	addi	a2,a7,0
   10750:	00080513          	addi	a0,a6,0
   10754:	03010113          	addi	sp,sp,48
   10758:	2b80006f          	jal	zero,10a10 <_write_r>
   1075c:	01259583          	lh	a1,18(a1)
   10760:	00c13823          	sd	a2,16(sp)
   10764:	00200693          	addi	a3,zero,2
   10768:	00000613          	addi	a2,zero,0
   1076c:	00613c23          	sd	t1,24(sp)
   10770:	00e13023          	sd	a4,0(sp)
   10774:	00a13423          	sd	a0,8(sp)
   10778:	1c8000ef          	jal	ra,10940 <_lseek_r>
   1077c:	00013703          	ld	a4,0(sp)
   10780:	01813303          	ld	t1,24(sp)
   10784:	01013883          	ld	a7,16(sp)
   10788:	01071783          	lh	a5,16(a4)
   1078c:	00813803          	ld	a6,8(sp)
   10790:	fa1ff06f          	jal	zero,10730 <__swrite+0x24>

0000000000010794 <__sseek>:
   10794:	ff010113          	addi	sp,sp,-16
   10798:	00813023          	sd	s0,0(sp)
   1079c:	00058413          	addi	s0,a1,0
   107a0:	01259583          	lh	a1,18(a1)
   107a4:	00113423          	sd	ra,8(sp)
   107a8:	198000ef          	jal	ra,10940 <_lseek_r>
   107ac:	fff00713          	addi	a4,zero,-1
   107b0:	01041783          	lh	a5,16(s0)
   107b4:	02e50263          	beq	a0,a4,107d8 <__sseek+0x44>
   107b8:	00001737          	lui	a4,0x1
   107bc:	00e7e7b3          	or	a5,a5,a4
   107c0:	00813083          	ld	ra,8(sp)
   107c4:	08a43823          	sd	a0,144(s0)
   107c8:	00f41823          	sh	a5,16(s0)
   107cc:	00013403          	ld	s0,0(sp)
   107d0:	01010113          	addi	sp,sp,16
   107d4:	00008067          	jalr	zero,0(ra)
   107d8:	80050713          	addi	a4,a0,-2048
   107dc:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   107e0:	00e7f7b3          	and	a5,a5,a4
   107e4:	00813083          	ld	ra,8(sp)
   107e8:	00f41823          	sh	a5,16(s0)
   107ec:	00013403          	ld	s0,0(sp)
   107f0:	01010113          	addi	sp,sp,16
   107f4:	00008067          	jalr	zero,0(ra)

00000000000107f8 <__sclose>:
   107f8:	01259583          	lh	a1,18(a1)
   107fc:	0040006f          	jal	zero,10800 <_close_r>

0000000000010800 <_close_r>:
   10800:	fe010113          	addi	sp,sp,-32
   10804:	00813823          	sd	s0,16(sp)
   10808:	00913423          	sd	s1,8(sp)
   1080c:	00050493          	addi	s1,a0,0
   10810:	00058513          	addi	a0,a1,0
   10814:	00113c23          	sd	ra,24(sp)
   10818:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   1081c:	7e4010ef          	jal	ra,12000 <_close>
   10820:	fff00793          	addi	a5,zero,-1
   10824:	00f50c63          	beq	a0,a5,1083c <_close_r+0x3c>
   10828:	01813083          	ld	ra,24(sp)
   1082c:	01013403          	ld	s0,16(sp)
   10830:	00813483          	ld	s1,8(sp)
   10834:	02010113          	addi	sp,sp,32
   10838:	00008067          	jalr	zero,0(ra)
   1083c:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10840:	fe0784e3          	beq	a5,zero,10828 <_close_r+0x28>
   10844:	01813083          	ld	ra,24(sp)
   10848:	01013403          	ld	s0,16(sp)
   1084c:	00f4a023          	sw	a5,0(s1)
   10850:	00813483          	ld	s1,8(sp)
   10854:	02010113          	addi	sp,sp,32
   10858:	00008067          	jalr	zero,0(ra)

000000000001085c <_reclaim_reent>:
   1085c:	1881b783          	ld	a5,392(gp) # 139a0 <_impure_ptr>
   10860:	0ca78e63          	beq	a5,a0,1093c <_reclaim_reent+0xe0>
   10864:	06853583          	ld	a1,104(a0)
   10868:	fd010113          	addi	sp,sp,-48
   1086c:	00913c23          	sd	s1,24(sp)
   10870:	02113423          	sd	ra,40(sp)
   10874:	02813023          	sd	s0,32(sp)
   10878:	00050493          	addi	s1,a0,0
   1087c:	04058863          	beq	a1,zero,108cc <_reclaim_reent+0x70>
   10880:	01213823          	sd	s2,16(sp)
   10884:	01313423          	sd	s3,8(sp)
   10888:	00000913          	addi	s2,zero,0
   1088c:	20000993          	addi	s3,zero,512
   10890:	012587b3          	add	a5,a1,s2
   10894:	0007b403          	ld	s0,0(a5)
   10898:	00040e63          	beq	s0,zero,108b4 <_reclaim_reent+0x58>
   1089c:	00040593          	addi	a1,s0,0
   108a0:	00043403          	ld	s0,0(s0)
   108a4:	00048513          	addi	a0,s1,0
   108a8:	5b0000ef          	jal	ra,10e58 <_free_r>
   108ac:	fe0418e3          	bne	s0,zero,1089c <_reclaim_reent+0x40>
   108b0:	0684b583          	ld	a1,104(s1)
   108b4:	00890913          	addi	s2,s2,8
   108b8:	fd391ce3          	bne	s2,s3,10890 <_reclaim_reent+0x34>
   108bc:	00048513          	addi	a0,s1,0
   108c0:	598000ef          	jal	ra,10e58 <_free_r>
   108c4:	01013903          	ld	s2,16(sp)
   108c8:	00813983          	ld	s3,8(sp)
   108cc:	0504b583          	ld	a1,80(s1)
   108d0:	00058663          	beq	a1,zero,108dc <_reclaim_reent+0x80>
   108d4:	00048513          	addi	a0,s1,0
   108d8:	580000ef          	jal	ra,10e58 <_free_r>
   108dc:	0604b403          	ld	s0,96(s1)
   108e0:	00040c63          	beq	s0,zero,108f8 <_reclaim_reent+0x9c>
   108e4:	00040593          	addi	a1,s0,0
   108e8:	00043403          	ld	s0,0(s0)
   108ec:	00048513          	addi	a0,s1,0
   108f0:	568000ef          	jal	ra,10e58 <_free_r>
   108f4:	fe0418e3          	bne	s0,zero,108e4 <_reclaim_reent+0x88>
   108f8:	0784b583          	ld	a1,120(s1)
   108fc:	00058663          	beq	a1,zero,10908 <_reclaim_reent+0xac>
   10900:	00048513          	addi	a0,s1,0
   10904:	554000ef          	jal	ra,10e58 <_free_r>
   10908:	0484b783          	ld	a5,72(s1)
   1090c:	00078e63          	beq	a5,zero,10928 <_reclaim_reent+0xcc>
   10910:	02013403          	ld	s0,32(sp)
   10914:	02813083          	ld	ra,40(sp)
   10918:	00048513          	addi	a0,s1,0
   1091c:	01813483          	ld	s1,24(sp)
   10920:	03010113          	addi	sp,sp,48
   10924:	00078067          	jalr	zero,0(a5)
   10928:	02813083          	ld	ra,40(sp)
   1092c:	02013403          	ld	s0,32(sp)
   10930:	01813483          	ld	s1,24(sp)
   10934:	03010113          	addi	sp,sp,48
   10938:	00008067          	jalr	zero,0(ra)
   1093c:	00008067          	jalr	zero,0(ra)

0000000000010940 <_lseek_r>:
   10940:	fe010113          	addi	sp,sp,-32
   10944:	00058793          	addi	a5,a1,0
   10948:	00813823          	sd	s0,16(sp)
   1094c:	00913423          	sd	s1,8(sp)
   10950:	00060593          	addi	a1,a2,0
   10954:	00050493          	addi	s1,a0,0
   10958:	00068613          	addi	a2,a3,0
   1095c:	00078513          	addi	a0,a5,0
   10960:	00113c23          	sd	ra,24(sp)
   10964:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10968:	708010ef          	jal	ra,12070 <_lseek>
   1096c:	fff00793          	addi	a5,zero,-1
   10970:	00f50c63          	beq	a0,a5,10988 <_lseek_r+0x48>
   10974:	01813083          	ld	ra,24(sp)
   10978:	01013403          	ld	s0,16(sp)
   1097c:	00813483          	ld	s1,8(sp)
   10980:	02010113          	addi	sp,sp,32
   10984:	00008067          	jalr	zero,0(ra)
   10988:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   1098c:	fe0784e3          	beq	a5,zero,10974 <_lseek_r+0x34>
   10990:	01813083          	ld	ra,24(sp)
   10994:	01013403          	ld	s0,16(sp)
   10998:	00f4a023          	sw	a5,0(s1)
   1099c:	00813483          	ld	s1,8(sp)
   109a0:	02010113          	addi	sp,sp,32
   109a4:	00008067          	jalr	zero,0(ra)

00000000000109a8 <_read_r>:
   109a8:	fe010113          	addi	sp,sp,-32
   109ac:	00058793          	addi	a5,a1,0
   109b0:	00813823          	sd	s0,16(sp)
   109b4:	00913423          	sd	s1,8(sp)
   109b8:	00060593          	addi	a1,a2,0
   109bc:	00050493          	addi	s1,a0,0
   109c0:	00068613          	addi	a2,a3,0
   109c4:	00078513          	addi	a0,a5,0
   109c8:	00113c23          	sd	ra,24(sp)
   109cc:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   109d0:	6e0010ef          	jal	ra,120b0 <_read>
   109d4:	fff00793          	addi	a5,zero,-1
   109d8:	00f50c63          	beq	a0,a5,109f0 <_read_r+0x48>
   109dc:	01813083          	ld	ra,24(sp)
   109e0:	01013403          	ld	s0,16(sp)
   109e4:	00813483          	ld	s1,8(sp)
   109e8:	02010113          	addi	sp,sp,32
   109ec:	00008067          	jalr	zero,0(ra)
   109f0:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   109f4:	fe0784e3          	beq	a5,zero,109dc <_read_r+0x34>
   109f8:	01813083          	ld	ra,24(sp)
   109fc:	01013403          	ld	s0,16(sp)
   10a00:	00f4a023          	sw	a5,0(s1)
   10a04:	00813483          	ld	s1,8(sp)
   10a08:	02010113          	addi	sp,sp,32
   10a0c:	00008067          	jalr	zero,0(ra)

0000000000010a10 <_write_r>:
   10a10:	fe010113          	addi	sp,sp,-32
   10a14:	00058793          	addi	a5,a1,0
   10a18:	00813823          	sd	s0,16(sp)
   10a1c:	00913423          	sd	s1,8(sp)
   10a20:	00060593          	addi	a1,a2,0
   10a24:	00050493          	addi	s1,a0,0
   10a28:	00068613          	addi	a2,a3,0
   10a2c:	00078513          	addi	a0,a5,0
   10a30:	00113c23          	sd	ra,24(sp)
   10a34:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10a38:	730010ef          	jal	ra,12168 <_write>
   10a3c:	fff00793          	addi	a5,zero,-1
   10a40:	00f50c63          	beq	a0,a5,10a58 <_write_r+0x48>
   10a44:	01813083          	ld	ra,24(sp)
   10a48:	01013403          	ld	s0,16(sp)
   10a4c:	00813483          	ld	s1,8(sp)
   10a50:	02010113          	addi	sp,sp,32
   10a54:	00008067          	jalr	zero,0(ra)
   10a58:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10a5c:	fe0784e3          	beq	a5,zero,10a44 <_write_r+0x34>
   10a60:	01813083          	ld	ra,24(sp)
   10a64:	01013403          	ld	s0,16(sp)
   10a68:	00f4a023          	sw	a5,0(s1)
   10a6c:	00813483          	ld	s1,8(sp)
   10a70:	02010113          	addi	sp,sp,32
   10a74:	00008067          	jalr	zero,0(ra)

0000000000010a78 <__libc_init_array>:
   10a78:	fe010113          	addi	sp,sp,-32
   10a7c:	00813823          	sd	s0,16(sp)
   10a80:	01213023          	sd	s2,0(sp)
   10a84:	00013437          	lui	s0,0x13
   10a88:	00013937          	lui	s2,0x13
   10a8c:	00113c23          	sd	ra,24(sp)
   10a90:	00913423          	sd	s1,8(sp)
   10a94:	00090913          	addi	s2,s2,0 # 13000 <__init_array_start>
   10a98:	00040413          	addi	s0,s0,0 # 13000 <__init_array_start>
   10a9c:	02890263          	beq	s2,s0,10ac0 <__libc_init_array+0x48>
   10aa0:	40890933          	sub	s2,s2,s0
   10aa4:	40395913          	srai	s2,s2,0x3
   10aa8:	00000493          	addi	s1,zero,0
   10aac:	00043783          	ld	a5,0(s0)
   10ab0:	00148493          	addi	s1,s1,1
   10ab4:	00840413          	addi	s0,s0,8
   10ab8:	000780e7          	jalr	ra,0(a5)
   10abc:	ff24e8e3          	bltu	s1,s2,10aac <__libc_init_array+0x34>
   10ac0:	00013937          	lui	s2,0x13
   10ac4:	00013437          	lui	s0,0x13
   10ac8:	01090913          	addi	s2,s2,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   10acc:	00040413          	addi	s0,s0,0 # 13000 <__init_array_start>
   10ad0:	02890263          	beq	s2,s0,10af4 <__libc_init_array+0x7c>
   10ad4:	40890933          	sub	s2,s2,s0
   10ad8:	40395913          	srai	s2,s2,0x3
   10adc:	00000493          	addi	s1,zero,0
   10ae0:	00043783          	ld	a5,0(s0)
   10ae4:	00148493          	addi	s1,s1,1
   10ae8:	00840413          	addi	s0,s0,8
   10aec:	000780e7          	jalr	ra,0(a5)
   10af0:	ff24e8e3          	bltu	s1,s2,10ae0 <__libc_init_array+0x68>
   10af4:	01813083          	ld	ra,24(sp)
   10af8:	01013403          	ld	s0,16(sp)
   10afc:	00813483          	ld	s1,8(sp)
   10b00:	00013903          	ld	s2,0(sp)
   10b04:	02010113          	addi	sp,sp,32
   10b08:	00008067          	jalr	zero,0(ra)

0000000000010b0c <memset>:
   10b0c:	00f00313          	addi	t1,zero,15
   10b10:	00050713          	addi	a4,a0,0
   10b14:	02c37a63          	bgeu	t1,a2,10b48 <memset+0x3c>
   10b18:	00f77793          	andi	a5,a4,15
   10b1c:	0a079063          	bne	a5,zero,10bbc <memset+0xb0>
   10b20:	06059e63          	bne	a1,zero,10b9c <memset+0x90>
   10b24:	ff067693          	andi	a3,a2,-16
   10b28:	00f67613          	andi	a2,a2,15
   10b2c:	00e686b3          	add	a3,a3,a4
   10b30:	00b73023          	sd	a1,0(a4)
   10b34:	00b73423          	sd	a1,8(a4)
   10b38:	01070713          	addi	a4,a4,16
   10b3c:	fed76ae3          	bltu	a4,a3,10b30 <memset+0x24>
   10b40:	00061463          	bne	a2,zero,10b48 <memset+0x3c>
   10b44:	00008067          	jalr	zero,0(ra)
   10b48:	40c306b3          	sub	a3,t1,a2
   10b4c:	00269693          	slli	a3,a3,0x2
   10b50:	00000297          	auipc	t0,0x0
   10b54:	005686b3          	add	a3,a3,t0
   10b58:	00c68067          	jalr	zero,12(a3)
   10b5c:	00b70723          	sb	a1,14(a4)
   10b60:	00b706a3          	sb	a1,13(a4)
   10b64:	00b70623          	sb	a1,12(a4)
   10b68:	00b705a3          	sb	a1,11(a4)
   10b6c:	00b70523          	sb	a1,10(a4)
   10b70:	00b704a3          	sb	a1,9(a4)
   10b74:	00b70423          	sb	a1,8(a4)
   10b78:	00b703a3          	sb	a1,7(a4)
   10b7c:	00b70323          	sb	a1,6(a4)
   10b80:	00b702a3          	sb	a1,5(a4)
   10b84:	00b70223          	sb	a1,4(a4)
   10b88:	00b701a3          	sb	a1,3(a4)
   10b8c:	00b70123          	sb	a1,2(a4)
   10b90:	00b700a3          	sb	a1,1(a4)
   10b94:	00b70023          	sb	a1,0(a4)
   10b98:	00008067          	jalr	zero,0(ra)
   10b9c:	0ff5f593          	andi	a1,a1,255
   10ba0:	00859693          	slli	a3,a1,0x8
   10ba4:	00d5e5b3          	or	a1,a1,a3
   10ba8:	01059693          	slli	a3,a1,0x10
   10bac:	00d5e5b3          	or	a1,a1,a3
   10bb0:	02059693          	slli	a3,a1,0x20
   10bb4:	00d5e5b3          	or	a1,a1,a3
   10bb8:	f6dff06f          	jal	zero,10b24 <memset+0x18>
   10bbc:	00279693          	slli	a3,a5,0x2
   10bc0:	00000297          	auipc	t0,0x0
   10bc4:	005686b3          	add	a3,a3,t0
   10bc8:	00008293          	addi	t0,ra,0
   10bcc:	f98680e7          	jalr	ra,-104(a3)
   10bd0:	00028093          	addi	ra,t0,0 # 10bc0 <memset+0xb4>
   10bd4:	ff078793          	addi	a5,a5,-16
   10bd8:	40f70733          	sub	a4,a4,a5
   10bdc:	00f60633          	add	a2,a2,a5
   10be0:	f6c374e3          	bgeu	t1,a2,10b48 <memset+0x3c>
   10be4:	f3dff06f          	jal	zero,10b20 <memset+0x14>

0000000000010be8 <__call_exitprocs>:
   10be8:	fb010113          	addi	sp,sp,-80
   10bec:	03413023          	sd	s4,32(sp)
   10bf0:	03213823          	sd	s2,48(sp)
   10bf4:	1b01b903          	ld	s2,432(gp) # 139c8 <__atexit>
   10bf8:	04113423          	sd	ra,72(sp)
   10bfc:	06090e63          	beq	s2,zero,10c78 <__call_exitprocs+0x90>
   10c00:	03313423          	sd	s3,40(sp)
   10c04:	01513c23          	sd	s5,24(sp)
   10c08:	01613823          	sd	s6,16(sp)
   10c0c:	01713423          	sd	s7,8(sp)
   10c10:	04813023          	sd	s0,64(sp)
   10c14:	02913c23          	sd	s1,56(sp)
   10c18:	01813023          	sd	s8,0(sp)
   10c1c:	00050b13          	addi	s6,a0,0
   10c20:	00058b93          	addi	s7,a1,0
   10c24:	fff00993          	addi	s3,zero,-1
   10c28:	00100a93          	addi	s5,zero,1
   10c2c:	00892403          	lw	s0,8(s2)
   10c30:	fff4041b          	addiw	s0,s0,-1
   10c34:	02044463          	blt	s0,zero,10c5c <__call_exitprocs+0x74>
   10c38:	01090493          	addi	s1,s2,16
   10c3c:	00341793          	slli	a5,s0,0x3
   10c40:	00f484b3          	add	s1,s1,a5
   10c44:	040b8463          	beq	s7,zero,10c8c <__call_exitprocs+0xa4>
   10c48:	2004b783          	ld	a5,512(s1)
   10c4c:	05778063          	beq	a5,s7,10c8c <__call_exitprocs+0xa4>
   10c50:	fff4041b          	addiw	s0,s0,-1
   10c54:	ff848493          	addi	s1,s1,-8
   10c58:	ff3418e3          	bne	s0,s3,10c48 <__call_exitprocs+0x60>
   10c5c:	04013403          	ld	s0,64(sp)
   10c60:	03813483          	ld	s1,56(sp)
   10c64:	02813983          	ld	s3,40(sp)
   10c68:	01813a83          	ld	s5,24(sp)
   10c6c:	01013b03          	ld	s6,16(sp)
   10c70:	00813b83          	ld	s7,8(sp)
   10c74:	00013c03          	ld	s8,0(sp)
   10c78:	04813083          	ld	ra,72(sp)
   10c7c:	03013903          	ld	s2,48(sp)
   10c80:	02013a03          	ld	s4,32(sp)
   10c84:	05010113          	addi	sp,sp,80
   10c88:	00008067          	jalr	zero,0(ra)
   10c8c:	00892783          	lw	a5,8(s2)
   10c90:	0004b683          	ld	a3,0(s1)
   10c94:	fff7879b          	addiw	a5,a5,-1
   10c98:	06878a63          	beq	a5,s0,10d0c <__call_exitprocs+0x124>
   10c9c:	0004b023          	sd	zero,0(s1)
   10ca0:	02068663          	beq	a3,zero,10ccc <__call_exitprocs+0xe4>
   10ca4:	31092783          	lw	a5,784(s2)
   10ca8:	008a973b          	sllw	a4,s5,s0
   10cac:	00892c03          	lw	s8,8(s2)
   10cb0:	00e7f7b3          	and	a5,a5,a4
   10cb4:	02079463          	bne	a5,zero,10cdc <__call_exitprocs+0xf4>
   10cb8:	000680e7          	jalr	ra,0(a3)
   10cbc:	00892703          	lw	a4,8(s2)
   10cc0:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10cc4:	03871e63          	bne	a4,s8,10d00 <__call_exitprocs+0x118>
   10cc8:	03279c63          	bne	a5,s2,10d00 <__call_exitprocs+0x118>
   10ccc:	fff4041b          	addiw	s0,s0,-1
   10cd0:	ff848493          	addi	s1,s1,-8
   10cd4:	f73418e3          	bne	s0,s3,10c44 <__call_exitprocs+0x5c>
   10cd8:	f85ff06f          	jal	zero,10c5c <__call_exitprocs+0x74>
   10cdc:	31492783          	lw	a5,788(s2)
   10ce0:	1004b583          	ld	a1,256(s1)
   10ce4:	00f77733          	and	a4,a4,a5
   10ce8:	02071663          	bne	a4,zero,10d14 <__call_exitprocs+0x12c>
   10cec:	000b0513          	addi	a0,s6,0
   10cf0:	000680e7          	jalr	ra,0(a3)
   10cf4:	00892703          	lw	a4,8(s2)
   10cf8:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10cfc:	fd8706e3          	beq	a4,s8,10cc8 <__call_exitprocs+0xe0>
   10d00:	f4078ee3          	beq	a5,zero,10c5c <__call_exitprocs+0x74>
   10d04:	00078913          	addi	s2,a5,0
   10d08:	f25ff06f          	jal	zero,10c2c <__call_exitprocs+0x44>
   10d0c:	00892423          	sw	s0,8(s2)
   10d10:	f91ff06f          	jal	zero,10ca0 <__call_exitprocs+0xb8>
   10d14:	00058513          	addi	a0,a1,0
   10d18:	000680e7          	jalr	ra,0(a3)
   10d1c:	fa1ff06f          	jal	zero,10cbc <__call_exitprocs+0xd4>

0000000000010d20 <atexit>:
   10d20:	00050593          	addi	a1,a0,0
   10d24:	00000693          	addi	a3,zero,0
   10d28:	00000613          	addi	a2,zero,0
   10d2c:	00000513          	addi	a0,zero,0
   10d30:	2340106f          	jal	zero,11f64 <__register_exitproc>

0000000000010d34 <_malloc_trim_r>:
   10d34:	fd010113          	addi	sp,sp,-48
   10d38:	01213823          	sd	s2,16(sp)
   10d3c:	00013937          	lui	s2,0x13
   10d40:	02813023          	sd	s0,32(sp)
   10d44:	00913c23          	sd	s1,24(sp)
   10d48:	01313423          	sd	s3,8(sp)
   10d4c:	00058413          	addi	s0,a1,0
   10d50:	02113423          	sd	ra,40(sp)
   10d54:	00050993          	addi	s3,a0,0
   10d58:	18890913          	addi	s2,s2,392 # 13188 <__malloc_av_>
   10d5c:	4e5000ef          	jal	ra,11a40 <__malloc_lock>
   10d60:	01093783          	ld	a5,16(s2)
   10d64:	00001737          	lui	a4,0x1
   10d68:	0087b483          	ld	s1,8(a5)
   10d6c:	ffc4f493          	andi	s1,s1,-4
   10d70:	7ff48793          	addi	a5,s1,2047
   10d74:	7e078793          	addi	a5,a5,2016
   10d78:	40878433          	sub	s0,a5,s0
   10d7c:	00c45413          	srli	s0,s0,0xc
   10d80:	fff40413          	addi	s0,s0,-1
   10d84:	00c41413          	slli	s0,s0,0xc
   10d88:	00e44e63          	blt	s0,a4,10da4 <_malloc_trim_r+0x70>
   10d8c:	00000593          	addi	a1,zero,0
   10d90:	00098513          	addi	a0,s3,0
   10d94:	118010ef          	jal	ra,11eac <_sbrk_r>
   10d98:	01093783          	ld	a5,16(s2)
   10d9c:	009787b3          	add	a5,a5,s1
   10da0:	02f50663          	beq	a0,a5,10dcc <_malloc_trim_r+0x98>
   10da4:	00098513          	addi	a0,s3,0
   10da8:	49d000ef          	jal	ra,11a44 <__malloc_unlock>
   10dac:	02813083          	ld	ra,40(sp)
   10db0:	02013403          	ld	s0,32(sp)
   10db4:	01813483          	ld	s1,24(sp)
   10db8:	01013903          	ld	s2,16(sp)
   10dbc:	00813983          	ld	s3,8(sp)
   10dc0:	00000513          	addi	a0,zero,0
   10dc4:	03010113          	addi	sp,sp,48
   10dc8:	00008067          	jalr	zero,0(ra)
   10dcc:	408005b3          	sub	a1,zero,s0
   10dd0:	00098513          	addi	a0,s3,0
   10dd4:	0d8010ef          	jal	ra,11eac <_sbrk_r>
   10dd8:	fff00793          	addi	a5,zero,-1
   10ddc:	04f50463          	beq	a0,a5,10e24 <_malloc_trim_r+0xf0>
   10de0:	01093683          	ld	a3,16(s2)
   10de4:	4201a783          	lw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   10de8:	408484b3          	sub	s1,s1,s0
   10dec:	0014e493          	ori	s1,s1,1
   10df0:	00098513          	addi	a0,s3,0
   10df4:	408787bb          	subw	a5,a5,s0
   10df8:	0096b423          	sd	s1,8(a3)
   10dfc:	42f1a023          	sw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   10e00:	445000ef          	jal	ra,11a44 <__malloc_unlock>
   10e04:	02813083          	ld	ra,40(sp)
   10e08:	02013403          	ld	s0,32(sp)
   10e0c:	01813483          	ld	s1,24(sp)
   10e10:	01013903          	ld	s2,16(sp)
   10e14:	00813983          	ld	s3,8(sp)
   10e18:	00100513          	addi	a0,zero,1
   10e1c:	03010113          	addi	sp,sp,48
   10e20:	00008067          	jalr	zero,0(ra)
   10e24:	00000593          	addi	a1,zero,0
   10e28:	00098513          	addi	a0,s3,0
   10e2c:	080010ef          	jal	ra,11eac <_sbrk_r>
   10e30:	01093703          	ld	a4,16(s2)
   10e34:	01f00693          	addi	a3,zero,31
   10e38:	40e507b3          	sub	a5,a0,a4
   10e3c:	f6f6d4e3          	bge	a3,a5,10da4 <_malloc_trim_r+0x70>
   10e40:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   10e44:	0017e793          	ori	a5,a5,1
   10e48:	40c50533          	sub	a0,a0,a2
   10e4c:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   10e50:	42a1a023          	sw	a0,1056(gp) # 13c38 <__malloc_current_mallinfo>
   10e54:	f51ff06f          	jal	zero,10da4 <_malloc_trim_r+0x70>

0000000000010e58 <_free_r>:
   10e58:	12058863          	beq	a1,zero,10f88 <_free_r+0x130>
   10e5c:	fe010113          	addi	sp,sp,-32
   10e60:	00813823          	sd	s0,16(sp)
   10e64:	00b13423          	sd	a1,8(sp)
   10e68:	00050413          	addi	s0,a0,0
   10e6c:	00113c23          	sd	ra,24(sp)
   10e70:	3d1000ef          	jal	ra,11a40 <__malloc_lock>
   10e74:	00813583          	ld	a1,8(sp)
   10e78:	00013837          	lui	a6,0x13
   10e7c:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   10e80:	ff85b503          	ld	a0,-8(a1)
   10e84:	ff058713          	addi	a4,a1,-16
   10e88:	01083883          	ld	a7,16(a6)
   10e8c:	ffe57793          	andi	a5,a0,-2
   10e90:	00f70633          	add	a2,a4,a5
   10e94:	00863683          	ld	a3,8(a2)
   10e98:	00157313          	andi	t1,a0,1
   10e9c:	ffc6f693          	andi	a3,a3,-4
   10ea0:	18c88e63          	beq	a7,a2,1103c <_free_r+0x1e4>
   10ea4:	00d63423          	sd	a3,8(a2)
   10ea8:	00d608b3          	add	a7,a2,a3
   10eac:	0088b883          	ld	a7,8(a7)
   10eb0:	0018f893          	andi	a7,a7,1
   10eb4:	08031e63          	bne	t1,zero,10f50 <_free_r+0xf8>
   10eb8:	ff05b303          	ld	t1,-16(a1)
   10ebc:	000135b7          	lui	a1,0x13
   10ec0:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   10ec4:	40670733          	sub	a4,a4,t1
   10ec8:	01073503          	ld	a0,16(a4)
   10ecc:	006787b3          	add	a5,a5,t1
   10ed0:	14b50063          	beq	a0,a1,11010 <_free_r+0x1b8>
   10ed4:	01873303          	ld	t1,24(a4)
   10ed8:	00653c23          	sd	t1,24(a0)
   10edc:	00a33823          	sd	a0,16(t1)
   10ee0:	1a088263          	beq	a7,zero,11084 <_free_r+0x22c>
   10ee4:	0017e693          	ori	a3,a5,1
   10ee8:	00d73423          	sd	a3,8(a4)
   10eec:	00f63023          	sd	a5,0(a2)
   10ef0:	1ff00693          	addi	a3,zero,511
   10ef4:	0af6e663          	bltu	a3,a5,10fa0 <_free_r+0x148>
   10ef8:	0037d793          	srli	a5,a5,0x3
   10efc:	00179693          	slli	a3,a5,0x1
   10f00:	0026869b          	addiw	a3,a3,2
   10f04:	00369693          	slli	a3,a3,0x3
   10f08:	00883503          	ld	a0,8(a6)
   10f0c:	00d806b3          	add	a3,a6,a3
   10f10:	0006b583          	ld	a1,0(a3)
   10f14:	4027d61b          	sraiw	a2,a5,0x2
   10f18:	00100793          	addi	a5,zero,1
   10f1c:	00c797b3          	sll	a5,a5,a2
   10f20:	00a7e7b3          	or	a5,a5,a0
   10f24:	ff068613          	addi	a2,a3,-16
   10f28:	00b73823          	sd	a1,16(a4)
   10f2c:	00c73c23          	sd	a2,24(a4)
   10f30:	00f83423          	sd	a5,8(a6)
   10f34:	00e6b023          	sd	a4,0(a3)
   10f38:	00e5bc23          	sd	a4,24(a1)
   10f3c:	00040513          	addi	a0,s0,0
   10f40:	01013403          	ld	s0,16(sp)
   10f44:	01813083          	ld	ra,24(sp)
   10f48:	02010113          	addi	sp,sp,32
   10f4c:	2f90006f          	jal	zero,11a44 <__malloc_unlock>
   10f50:	02089e63          	bne	a7,zero,10f8c <_free_r+0x134>
   10f54:	000135b7          	lui	a1,0x13
   10f58:	00d787b3          	add	a5,a5,a3
   10f5c:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   10f60:	01063683          	ld	a3,16(a2)
   10f64:	0017e893          	ori	a7,a5,1
   10f68:	00f70533          	add	a0,a4,a5
   10f6c:	16b68663          	beq	a3,a1,110d8 <_free_r+0x280>
   10f70:	01863603          	ld	a2,24(a2)
   10f74:	00c6bc23          	sd	a2,24(a3)
   10f78:	00d63823          	sd	a3,16(a2)
   10f7c:	01173423          	sd	a7,8(a4)
   10f80:	00f53023          	sd	a5,0(a0)
   10f84:	f6dff06f          	jal	zero,10ef0 <_free_r+0x98>
   10f88:	00008067          	jalr	zero,0(ra)
   10f8c:	00156513          	ori	a0,a0,1
   10f90:	fea5bc23          	sd	a0,-8(a1)
   10f94:	00f63023          	sd	a5,0(a2)
   10f98:	1ff00693          	addi	a3,zero,511
   10f9c:	f4f6fee3          	bgeu	a3,a5,10ef8 <_free_r+0xa0>
   10fa0:	0097d693          	srli	a3,a5,0x9
   10fa4:	00400613          	addi	a2,zero,4
   10fa8:	0ed66263          	bltu	a2,a3,1108c <_free_r+0x234>
   10fac:	0067d693          	srli	a3,a5,0x6
   10fb0:	00169593          	slli	a1,a3,0x1
   10fb4:	0725859b          	addiw	a1,a1,114
   10fb8:	00359593          	slli	a1,a1,0x3
   10fbc:	0386861b          	addiw	a2,a3,56
   10fc0:	00b805b3          	add	a1,a6,a1
   10fc4:	0005b683          	ld	a3,0(a1)
   10fc8:	ff058593          	addi	a1,a1,-16
   10fcc:	00d59863          	bne	a1,a3,10fdc <_free_r+0x184>
   10fd0:	1240006f          	jal	zero,110f4 <_free_r+0x29c>
   10fd4:	0106b683          	ld	a3,16(a3)
   10fd8:	00d58863          	beq	a1,a3,10fe8 <_free_r+0x190>
   10fdc:	0086b603          	ld	a2,8(a3)
   10fe0:	ffc67613          	andi	a2,a2,-4
   10fe4:	fec7e8e3          	bltu	a5,a2,10fd4 <_free_r+0x17c>
   10fe8:	0186b583          	ld	a1,24(a3)
   10fec:	00b73c23          	sd	a1,24(a4)
   10ff0:	00d73823          	sd	a3,16(a4)
   10ff4:	00040513          	addi	a0,s0,0
   10ff8:	01013403          	ld	s0,16(sp)
   10ffc:	01813083          	ld	ra,24(sp)
   11000:	00e5b823          	sd	a4,16(a1)
   11004:	00e6bc23          	sd	a4,24(a3)
   11008:	02010113          	addi	sp,sp,32
   1100c:	2390006f          	jal	zero,11a44 <__malloc_unlock>
   11010:	0a089263          	bne	a7,zero,110b4 <_free_r+0x25c>
   11014:	01863583          	ld	a1,24(a2)
   11018:	01063603          	ld	a2,16(a2)
   1101c:	00f686b3          	add	a3,a3,a5
   11020:	0016e793          	ori	a5,a3,1
   11024:	00b63c23          	sd	a1,24(a2)
   11028:	00c5b823          	sd	a2,16(a1)
   1102c:	00f73423          	sd	a5,8(a4)
   11030:	00d70733          	add	a4,a4,a3
   11034:	00d73023          	sd	a3,0(a4)
   11038:	f05ff06f          	jal	zero,10f3c <_free_r+0xe4>
   1103c:	00d786b3          	add	a3,a5,a3
   11040:	02031063          	bne	t1,zero,11060 <_free_r+0x208>
   11044:	ff05b783          	ld	a5,-16(a1)
   11048:	40f70733          	sub	a4,a4,a5
   1104c:	01073603          	ld	a2,16(a4)
   11050:	00f686b3          	add	a3,a3,a5
   11054:	01873783          	ld	a5,24(a4)
   11058:	00f63c23          	sd	a5,24(a2)
   1105c:	00c7b823          	sd	a2,16(a5)
   11060:	0016e613          	ori	a2,a3,1
   11064:	1981b783          	ld	a5,408(gp) # 139b0 <__malloc_trim_threshold>
   11068:	00c73423          	sd	a2,8(a4)
   1106c:	00e83823          	sd	a4,16(a6)
   11070:	ecf6e6e3          	bltu	a3,a5,10f3c <_free_r+0xe4>
   11074:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   11078:	00040513          	addi	a0,s0,0
   1107c:	cb9ff0ef          	jal	ra,10d34 <_malloc_trim_r>
   11080:	ebdff06f          	jal	zero,10f3c <_free_r+0xe4>
   11084:	00d787b3          	add	a5,a5,a3
   11088:	ed9ff06f          	jal	zero,10f60 <_free_r+0x108>
   1108c:	01400613          	addi	a2,zero,20
   11090:	02d67a63          	bgeu	a2,a3,110c4 <_free_r+0x26c>
   11094:	05400613          	addi	a2,zero,84
   11098:	06d66c63          	bltu	a2,a3,11110 <_free_r+0x2b8>
   1109c:	00c7d693          	srli	a3,a5,0xc
   110a0:	00169593          	slli	a1,a3,0x1
   110a4:	0de5859b          	addiw	a1,a1,222
   110a8:	00359593          	slli	a1,a1,0x3
   110ac:	06e6861b          	addiw	a2,a3,110
   110b0:	f11ff06f          	jal	zero,10fc0 <_free_r+0x168>
   110b4:	0017e693          	ori	a3,a5,1
   110b8:	00d73423          	sd	a3,8(a4)
   110bc:	00f63023          	sd	a5,0(a2)
   110c0:	e7dff06f          	jal	zero,10f3c <_free_r+0xe4>
   110c4:	00169593          	slli	a1,a3,0x1
   110c8:	0b85859b          	addiw	a1,a1,184
   110cc:	00359593          	slli	a1,a1,0x3
   110d0:	05b6861b          	addiw	a2,a3,91
   110d4:	eedff06f          	jal	zero,10fc0 <_free_r+0x168>
   110d8:	02e83423          	sd	a4,40(a6)
   110dc:	02e83023          	sd	a4,32(a6)
   110e0:	00b73c23          	sd	a1,24(a4)
   110e4:	00b73823          	sd	a1,16(a4)
   110e8:	01173423          	sd	a7,8(a4)
   110ec:	00f53023          	sd	a5,0(a0)
   110f0:	e4dff06f          	jal	zero,10f3c <_free_r+0xe4>
   110f4:	00883503          	ld	a0,8(a6)
   110f8:	4026561b          	sraiw	a2,a2,0x2
   110fc:	00100793          	addi	a5,zero,1
   11100:	00c797b3          	sll	a5,a5,a2
   11104:	00a7e7b3          	or	a5,a5,a0
   11108:	00f83423          	sd	a5,8(a6)
   1110c:	ee1ff06f          	jal	zero,10fec <_free_r+0x194>
   11110:	15400613          	addi	a2,zero,340
   11114:	00d66e63          	bltu	a2,a3,11130 <_free_r+0x2d8>
   11118:	00f7d693          	srli	a3,a5,0xf
   1111c:	00169593          	slli	a1,a3,0x1
   11120:	0f05859b          	addiw	a1,a1,240
   11124:	00359593          	slli	a1,a1,0x3
   11128:	0776861b          	addiw	a2,a3,119
   1112c:	e95ff06f          	jal	zero,10fc0 <_free_r+0x168>
   11130:	55400613          	addi	a2,zero,1364
   11134:	00d66e63          	bltu	a2,a3,11150 <_free_r+0x2f8>
   11138:	0127d693          	srli	a3,a5,0x12
   1113c:	00169593          	slli	a1,a3,0x1
   11140:	0fa5859b          	addiw	a1,a1,250
   11144:	00359593          	slli	a1,a1,0x3
   11148:	07c6861b          	addiw	a2,a3,124
   1114c:	e75ff06f          	jal	zero,10fc0 <_free_r+0x168>
   11150:	7f000593          	addi	a1,zero,2032
   11154:	07e00613          	addi	a2,zero,126
   11158:	e69ff06f          	jal	zero,10fc0 <_free_r+0x168>

000000000001115c <_malloc_r>:
   1115c:	fa010113          	addi	sp,sp,-96
   11160:	04813823          	sd	s0,80(sp)
   11164:	04113c23          	sd	ra,88(sp)
   11168:	01758713          	addi	a4,a1,23
   1116c:	02e00793          	addi	a5,zero,46
   11170:	00050413          	addi	s0,a0,0
   11174:	08e7ee63          	bltu	a5,a4,11210 <_malloc_r+0xb4>
   11178:	02000713          	addi	a4,zero,32
   1117c:	06b76c63          	bltu	a4,a1,111f4 <_malloc_r+0x98>
   11180:	0c1000ef          	jal	ra,11a40 <__malloc_lock>
   11184:	02000713          	addi	a4,zero,32
   11188:	05000693          	addi	a3,zero,80
   1118c:	00400893          	addi	a7,zero,4
   11190:	00013837          	lui	a6,0x13
   11194:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11198:	00d806b3          	add	a3,a6,a3
   1119c:	0086b783          	ld	a5,8(a3)
   111a0:	ff068613          	addi	a2,a3,-16
   111a4:	48c78063          	beq	a5,a2,11624 <_malloc_r+0x4c8>
   111a8:	0087b703          	ld	a4,8(a5)
   111ac:	0187b603          	ld	a2,24(a5)
   111b0:	0107b583          	ld	a1,16(a5)
   111b4:	ffc77713          	andi	a4,a4,-4
   111b8:	00e78733          	add	a4,a5,a4
   111bc:	00873683          	ld	a3,8(a4)
   111c0:	00c5bc23          	sd	a2,24(a1)
   111c4:	00b63823          	sd	a1,16(a2)
   111c8:	0016e693          	ori	a3,a3,1
   111cc:	00040513          	addi	a0,s0,0
   111d0:	00d73423          	sd	a3,8(a4)
   111d4:	00f13423          	sd	a5,8(sp)
   111d8:	06d000ef          	jal	ra,11a44 <__malloc_unlock>
   111dc:	00813783          	ld	a5,8(sp)
   111e0:	05813083          	ld	ra,88(sp)
   111e4:	05013403          	ld	s0,80(sp)
   111e8:	01078513          	addi	a0,a5,16
   111ec:	06010113          	addi	sp,sp,96
   111f0:	00008067          	jalr	zero,0(ra)
   111f4:	00c00793          	addi	a5,zero,12
   111f8:	00f42023          	sw	a5,0(s0)
   111fc:	00000513          	addi	a0,zero,0
   11200:	05813083          	ld	ra,88(sp)
   11204:	05013403          	ld	s0,80(sp)
   11208:	06010113          	addi	sp,sp,96
   1120c:	00008067          	jalr	zero,0(ra)
   11210:	00100793          	addi	a5,zero,1
   11214:	ff077713          	andi	a4,a4,-16
   11218:	01f79793          	slli	a5,a5,0x1f
   1121c:	fcf77ce3          	bgeu	a4,a5,111f4 <_malloc_r+0x98>
   11220:	fcb76ae3          	bltu	a4,a1,111f4 <_malloc_r+0x98>
   11224:	00e13423          	sd	a4,8(sp)
   11228:	019000ef          	jal	ra,11a40 <__malloc_lock>
   1122c:	00813703          	ld	a4,8(sp)
   11230:	1f700793          	addi	a5,zero,503
   11234:	4ee7fa63          	bgeu	a5,a4,11728 <_malloc_r+0x5cc>
   11238:	00975793          	srli	a5,a4,0x9
   1123c:	18078a63          	beq	a5,zero,113d0 <_malloc_r+0x274>
   11240:	00400693          	addi	a3,zero,4
   11244:	44f6ea63          	bltu	a3,a5,11698 <_malloc_r+0x53c>
   11248:	00675793          	srli	a5,a4,0x6
   1124c:	0397889b          	addiw	a7,a5,57
   11250:	0018951b          	slliw	a0,a7,0x1
   11254:	03878e1b          	addiw	t3,a5,56
   11258:	00351513          	slli	a0,a0,0x3
   1125c:	00013837          	lui	a6,0x13
   11260:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11264:	00a80533          	add	a0,a6,a0
   11268:	00853783          	ld	a5,8(a0)
   1126c:	ff050513          	addi	a0,a0,-16
   11270:	02f50863          	beq	a0,a5,112a0 <_malloc_r+0x144>
   11274:	01f00313          	addi	t1,zero,31
   11278:	0140006f          	jal	zero,1128c <_malloc_r+0x130>
   1127c:	0187b583          	ld	a1,24(a5)
   11280:	36065263          	bge	a2,zero,115e4 <_malloc_r+0x488>
   11284:	00b50e63          	beq	a0,a1,112a0 <_malloc_r+0x144>
   11288:	00058793          	addi	a5,a1,0
   1128c:	0087b683          	ld	a3,8(a5)
   11290:	ffc6f693          	andi	a3,a3,-4
   11294:	40e68633          	sub	a2,a3,a4
   11298:	fec352e3          	bge	t1,a2,1127c <_malloc_r+0x120>
   1129c:	000e0893          	addi	a7,t3,0
   112a0:	02083783          	ld	a5,32(a6)
   112a4:	00013e37          	lui	t3,0x13
   112a8:	198e0e13          	addi	t3,t3,408 # 13198 <__malloc_av_+0x10>
   112ac:	2fc78a63          	beq	a5,t3,115a0 <_malloc_r+0x444>
   112b0:	0087b303          	ld	t1,8(a5)
   112b4:	01f00613          	addi	a2,zero,31
   112b8:	ffc37313          	andi	t1,t1,-4
   112bc:	40e306b3          	sub	a3,t1,a4
   112c0:	4ad64463          	blt	a2,a3,11768 <_malloc_r+0x60c>
   112c4:	03c83423          	sd	t3,40(a6)
   112c8:	03c83023          	sd	t3,32(a6)
   112cc:	4606da63          	bge	a3,zero,11740 <_malloc_r+0x5e4>
   112d0:	1ff00693          	addi	a3,zero,511
   112d4:	00883583          	ld	a1,8(a6)
   112d8:	3466ee63          	bltu	a3,t1,11634 <_malloc_r+0x4d8>
   112dc:	00335313          	srli	t1,t1,0x3
   112e0:	00131693          	slli	a3,t1,0x1
   112e4:	0026869b          	addiw	a3,a3,2
   112e8:	00369693          	slli	a3,a3,0x3
   112ec:	00d806b3          	add	a3,a6,a3
   112f0:	0006b503          	ld	a0,0(a3)
   112f4:	4023531b          	sraiw	t1,t1,0x2
   112f8:	00100613          	addi	a2,zero,1
   112fc:	00661633          	sll	a2,a2,t1
   11300:	00c5e5b3          	or	a1,a1,a2
   11304:	ff068613          	addi	a2,a3,-16
   11308:	00a7b823          	sd	a0,16(a5)
   1130c:	00c7bc23          	sd	a2,24(a5)
   11310:	00b83423          	sd	a1,8(a6)
   11314:	00f6b023          	sd	a5,0(a3)
   11318:	00f53c23          	sd	a5,24(a0)
   1131c:	4028d79b          	sraiw	a5,a7,0x2
   11320:	00100513          	addi	a0,zero,1
   11324:	00f51533          	sll	a0,a0,a5
   11328:	0aa5ec63          	bltu	a1,a0,113e0 <_malloc_r+0x284>
   1132c:	00b577b3          	and	a5,a0,a1
   11330:	02079463          	bne	a5,zero,11358 <_malloc_r+0x1fc>
   11334:	00151513          	slli	a0,a0,0x1
   11338:	ffc8f893          	andi	a7,a7,-4
   1133c:	00b577b3          	and	a5,a0,a1
   11340:	0048889b          	addiw	a7,a7,4
   11344:	00079a63          	bne	a5,zero,11358 <_malloc_r+0x1fc>
   11348:	00151513          	slli	a0,a0,0x1
   1134c:	00b577b3          	and	a5,a0,a1
   11350:	0048889b          	addiw	a7,a7,4
   11354:	fe078ae3          	beq	a5,zero,11348 <_malloc_r+0x1ec>
   11358:	01f00e93          	addi	t4,zero,31
   1135c:	00189f13          	slli	t5,a7,0x1
   11360:	002f0f1b          	addiw	t5,t5,2
   11364:	003f1f13          	slli	t5,t5,0x3
   11368:	ff0f0f13          	addi	t5,t5,-16
   1136c:	01e80f33          	add	t5,a6,t5
   11370:	000f0313          	addi	t1,t5,0
   11374:	01833683          	ld	a3,24(t1)
   11378:	00088f93          	addi	t6,a7,0
   1137c:	34d30263          	beq	t1,a3,116c0 <_malloc_r+0x564>
   11380:	0086b603          	ld	a2,8(a3)
   11384:	00068793          	addi	a5,a3,0
   11388:	0186b683          	ld	a3,24(a3)
   1138c:	ffc67613          	andi	a2,a2,-4
   11390:	40e605b3          	sub	a1,a2,a4
   11394:	34bec263          	blt	t4,a1,116d8 <_malloc_r+0x57c>
   11398:	fe05c2e3          	blt	a1,zero,1137c <_malloc_r+0x220>
   1139c:	00c78633          	add	a2,a5,a2
   113a0:	00863703          	ld	a4,8(a2)
   113a4:	0107b583          	ld	a1,16(a5)
   113a8:	00040513          	addi	a0,s0,0
   113ac:	00176713          	ori	a4,a4,1
   113b0:	00e63423          	sd	a4,8(a2)
   113b4:	00d5bc23          	sd	a3,24(a1)
   113b8:	00b6b823          	sd	a1,16(a3)
   113bc:	00f13423          	sd	a5,8(sp)
   113c0:	684000ef          	jal	ra,11a44 <__malloc_unlock>
   113c4:	00813783          	ld	a5,8(sp)
   113c8:	01078513          	addi	a0,a5,16
   113cc:	e35ff06f          	jal	zero,11200 <_malloc_r+0xa4>
   113d0:	40000513          	addi	a0,zero,1024
   113d4:	04000893          	addi	a7,zero,64
   113d8:	03f00e13          	addi	t3,zero,63
   113dc:	e81ff06f          	jal	zero,1125c <_malloc_r+0x100>
   113e0:	01083783          	ld	a5,16(a6)
   113e4:	0087b683          	ld	a3,8(a5)
   113e8:	ffc6f893          	andi	a7,a3,-4
   113ec:	40e88633          	sub	a2,a7,a4
   113f0:	00e8e663          	bltu	a7,a4,113fc <_malloc_r+0x2a0>
   113f4:	02062693          	slti	a3,a2,32
   113f8:	1a068863          	beq	a3,zero,115a8 <_malloc_r+0x44c>
   113fc:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   11400:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   11404:	fff00693          	addi	a3,zero,-1
   11408:	00b705b3          	add	a1,a4,a1
   1140c:	44d60663          	beq	a2,a3,11858 <_malloc_r+0x6fc>
   11410:	000016b7          	lui	a3,0x1
   11414:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   11418:	00d585b3          	add	a1,a1,a3
   1141c:	fffff6b7          	lui	a3,0xfffff
   11420:	00d5f5b3          	and	a1,a1,a3
   11424:	00040513          	addi	a0,s0,0
   11428:	03013423          	sd	a6,40(sp)
   1142c:	02f13023          	sd	a5,32(sp)
   11430:	00e13c23          	sd	a4,24(sp)
   11434:	01113823          	sd	a7,16(sp)
   11438:	00b13423          	sd	a1,8(sp)
   1143c:	271000ef          	jal	ra,11eac <_sbrk_r>
   11440:	fff00693          	addi	a3,zero,-1
   11444:	00813583          	ld	a1,8(sp)
   11448:	01013883          	ld	a7,16(sp)
   1144c:	01813703          	ld	a4,24(sp)
   11450:	02013783          	ld	a5,32(sp)
   11454:	02813803          	ld	a6,40(sp)
   11458:	00050313          	addi	t1,a0,0
   1145c:	36d50663          	beq	a0,a3,117c8 <_malloc_r+0x66c>
   11460:	011786b3          	add	a3,a5,a7
   11464:	36d56063          	bltu	a0,a3,117c4 <_malloc_r+0x668>
   11468:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   1146c:	000e2603          	lw	a2,0(t3)
   11470:	00b6063b          	addw	a2,a2,a1
   11474:	00ce2023          	sw	a2,0(t3)
   11478:	00060513          	addi	a0,a2,0
   1147c:	4a668c63          	beq	a3,t1,11934 <_malloc_r+0x7d8>
   11480:	1901bf03          	ld	t5,400(gp) # 139a8 <__malloc_sbrk_base>
   11484:	fff00613          	addi	a2,zero,-1
   11488:	4ccf0463          	beq	t5,a2,11950 <_malloc_r+0x7f4>
   1148c:	40d306b3          	sub	a3,t1,a3
   11490:	00a686bb          	addw	a3,a3,a0
   11494:	00de2023          	sw	a3,0(t3)
   11498:	00f37e93          	andi	t4,t1,15
   1149c:	3c0e8e63          	beq	t4,zero,11878 <_malloc_r+0x71c>
   114a0:	ff037313          	andi	t1,t1,-16
   114a4:	000016b7          	lui	a3,0x1
   114a8:	01030313          	addi	t1,t1,16
   114ac:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   114b0:	00b30633          	add	a2,t1,a1
   114b4:	41d685b3          	sub	a1,a3,t4
   114b8:	40c585b3          	sub	a1,a1,a2
   114bc:	03459593          	slli	a1,a1,0x34
   114c0:	0345d593          	srli	a1,a1,0x34
   114c4:	00040513          	addi	a0,s0,0
   114c8:	05c13023          	sd	t3,64(sp)
   114cc:	03013c23          	sd	a6,56(sp)
   114d0:	02f13823          	sd	a5,48(sp)
   114d4:	02e13423          	sd	a4,40(sp)
   114d8:	03113023          	sd	a7,32(sp)
   114dc:	00613c23          	sd	t1,24(sp)
   114e0:	01d13823          	sd	t4,16(sp)
   114e4:	00c13423          	sd	a2,8(sp)
   114e8:	04b13423          	sd	a1,72(sp)
   114ec:	1c1000ef          	jal	ra,11eac <_sbrk_r>
   114f0:	00050693          	addi	a3,a0,0
   114f4:	fff00513          	addi	a0,zero,-1
   114f8:	00813603          	ld	a2,8(sp)
   114fc:	01013e83          	ld	t4,16(sp)
   11500:	01813303          	ld	t1,24(sp)
   11504:	02013883          	ld	a7,32(sp)
   11508:	02813703          	ld	a4,40(sp)
   1150c:	03013783          	ld	a5,48(sp)
   11510:	03813803          	ld	a6,56(sp)
   11514:	04013e03          	ld	t3,64(sp)
   11518:	48a68663          	beq	a3,a0,119a4 <_malloc_r+0x848>
   1151c:	04813583          	ld	a1,72(sp)
   11520:	0005851b          	addiw	a0,a1,0
   11524:	000e2603          	lw	a2,0(t3)
   11528:	406686b3          	sub	a3,a3,t1
   1152c:	00b686b3          	add	a3,a3,a1
   11530:	0016e693          	ori	a3,a3,1
   11534:	00683823          	sd	t1,16(a6)
   11538:	00a6063b          	addw	a2,a2,a0
   1153c:	00d33423          	sd	a3,8(t1)
   11540:	00ce2023          	sw	a2,0(t3)
   11544:	03078e63          	beq	a5,a6,11580 <_malloc_r+0x424>
   11548:	01f00513          	addi	a0,zero,31
   1154c:	41157663          	bgeu	a0,a7,11958 <_malloc_r+0x7fc>
   11550:	0087b583          	ld	a1,8(a5)
   11554:	fe888693          	addi	a3,a7,-24
   11558:	ff06f693          	andi	a3,a3,-16
   1155c:	0015f593          	andi	a1,a1,1
   11560:	00d5e5b3          	or	a1,a1,a3
   11564:	00b7b423          	sd	a1,8(a5)
   11568:	00900893          	addi	a7,zero,9
   1156c:	00d785b3          	add	a1,a5,a3
   11570:	0115b423          	sd	a7,8(a1)
   11574:	0115b823          	sd	a7,16(a1)
   11578:	44d56863          	bltu	a0,a3,119c8 <_malloc_r+0x86c>
   1157c:	00833683          	ld	a3,8(t1)
   11580:	1c01b583          	ld	a1,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   11584:	00c5f463          	bgeu	a1,a2,1158c <_malloc_r+0x430>
   11588:	1cc1b023          	sd	a2,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   1158c:	1b81b583          	ld	a1,440(gp) # 139d0 <__malloc_max_total_mem>
   11590:	00c5f463          	bgeu	a1,a2,11598 <_malloc_r+0x43c>
   11594:	1ac1bc23          	sd	a2,440(gp) # 139d0 <__malloc_max_total_mem>
   11598:	00030793          	addi	a5,t1,0
   1159c:	2340006f          	jal	zero,117d0 <_malloc_r+0x674>
   115a0:	00883583          	ld	a1,8(a6)
   115a4:	d79ff06f          	jal	zero,1131c <_malloc_r+0x1c0>
   115a8:	00176693          	ori	a3,a4,1
   115ac:	00d7b423          	sd	a3,8(a5)
   115b0:	00e78733          	add	a4,a5,a4
   115b4:	00166613          	ori	a2,a2,1
   115b8:	00e83823          	sd	a4,16(a6)
   115bc:	00040513          	addi	a0,s0,0
   115c0:	00c73423          	sd	a2,8(a4)
   115c4:	00f13423          	sd	a5,8(sp)
   115c8:	47c000ef          	jal	ra,11a44 <__malloc_unlock>
   115cc:	00813783          	ld	a5,8(sp)
   115d0:	05813083          	ld	ra,88(sp)
   115d4:	05013403          	ld	s0,80(sp)
   115d8:	01078513          	addi	a0,a5,16
   115dc:	06010113          	addi	sp,sp,96
   115e0:	00008067          	jalr	zero,0(ra)
   115e4:	0107b603          	ld	a2,16(a5)
   115e8:	00d786b3          	add	a3,a5,a3
   115ec:	0086b703          	ld	a4,8(a3)
   115f0:	00b63c23          	sd	a1,24(a2)
   115f4:	00c5b823          	sd	a2,16(a1)
   115f8:	00176713          	ori	a4,a4,1
   115fc:	00040513          	addi	a0,s0,0
   11600:	00e6b423          	sd	a4,8(a3)
   11604:	00f13423          	sd	a5,8(sp)
   11608:	43c000ef          	jal	ra,11a44 <__malloc_unlock>
   1160c:	00813783          	ld	a5,8(sp)
   11610:	05813083          	ld	ra,88(sp)
   11614:	05013403          	ld	s0,80(sp)
   11618:	01078513          	addi	a0,a5,16
   1161c:	06010113          	addi	sp,sp,96
   11620:	00008067          	jalr	zero,0(ra)
   11624:	0186b783          	ld	a5,24(a3)
   11628:	0028889b          	addiw	a7,a7,2
   1162c:	c6f68ae3          	beq	a3,a5,112a0 <_malloc_r+0x144>
   11630:	b79ff06f          	jal	zero,111a8 <_malloc_r+0x4c>
   11634:	00935693          	srli	a3,t1,0x9
   11638:	00400613          	addi	a2,zero,4
   1163c:	16d67863          	bgeu	a2,a3,117ac <_malloc_r+0x650>
   11640:	01400613          	addi	a2,zero,20
   11644:	28d66e63          	bltu	a2,a3,118e0 <_malloc_r+0x784>
   11648:	00169513          	slli	a0,a3,0x1
   1164c:	0b85051b          	addiw	a0,a0,184
   11650:	00351513          	slli	a0,a0,0x3
   11654:	05b6861b          	addiw	a2,a3,91
   11658:	00a80533          	add	a0,a6,a0
   1165c:	00053683          	ld	a3,0(a0)
   11660:	ff050513          	addi	a0,a0,-16
   11664:	00d51863          	bne	a0,a3,11674 <_malloc_r+0x518>
   11668:	1f80006f          	jal	zero,11860 <_malloc_r+0x704>
   1166c:	0106b683          	ld	a3,16(a3)
   11670:	00d50863          	beq	a0,a3,11680 <_malloc_r+0x524>
   11674:	0086b603          	ld	a2,8(a3)
   11678:	ffc67613          	andi	a2,a2,-4
   1167c:	fec368e3          	bltu	t1,a2,1166c <_malloc_r+0x510>
   11680:	0186b503          	ld	a0,24(a3)
   11684:	00a7bc23          	sd	a0,24(a5)
   11688:	00d7b823          	sd	a3,16(a5)
   1168c:	00f53823          	sd	a5,16(a0)
   11690:	00f6bc23          	sd	a5,24(a3)
   11694:	c89ff06f          	jal	zero,1131c <_malloc_r+0x1c0>
   11698:	01400693          	addi	a3,zero,20
   1169c:	14f6fa63          	bgeu	a3,a5,117f0 <_malloc_r+0x694>
   116a0:	05400693          	addi	a3,zero,84
   116a4:	24f6ee63          	bltu	a3,a5,11900 <_malloc_r+0x7a4>
   116a8:	00c75793          	srli	a5,a4,0xc
   116ac:	06f7889b          	addiw	a7,a5,111
   116b0:	0018951b          	slliw	a0,a7,0x1
   116b4:	06e78e1b          	addiw	t3,a5,110
   116b8:	00351513          	slli	a0,a0,0x3
   116bc:	ba1ff06f          	jal	zero,1125c <_malloc_r+0x100>
   116c0:	001f8f9b          	addiw	t6,t6,1
   116c4:	003ff793          	andi	a5,t6,3
   116c8:	01030313          	addi	t1,t1,16
   116cc:	14078263          	beq	a5,zero,11810 <_malloc_r+0x6b4>
   116d0:	01833683          	ld	a3,24(t1)
   116d4:	ca9ff06f          	jal	zero,1137c <_malloc_r+0x220>
   116d8:	0107b503          	ld	a0,16(a5)
   116dc:	00176893          	ori	a7,a4,1
   116e0:	0117b423          	sd	a7,8(a5)
   116e4:	00d53c23          	sd	a3,24(a0)
   116e8:	00a6b823          	sd	a0,16(a3)
   116ec:	00e78733          	add	a4,a5,a4
   116f0:	02e83423          	sd	a4,40(a6)
   116f4:	02e83023          	sd	a4,32(a6)
   116f8:	0015e693          	ori	a3,a1,1
   116fc:	00c78633          	add	a2,a5,a2
   11700:	01c73c23          	sd	t3,24(a4)
   11704:	01c73823          	sd	t3,16(a4)
   11708:	00d73423          	sd	a3,8(a4)
   1170c:	00040513          	addi	a0,s0,0
   11710:	00b63023          	sd	a1,0(a2)
   11714:	00f13423          	sd	a5,8(sp)
   11718:	32c000ef          	jal	ra,11a44 <__malloc_unlock>
   1171c:	00813783          	ld	a5,8(sp)
   11720:	01078513          	addi	a0,a5,16
   11724:	addff06f          	jal	zero,11200 <_malloc_r+0xa4>
   11728:	00375893          	srli	a7,a4,0x3
   1172c:	00189693          	slli	a3,a7,0x1
   11730:	0026869b          	addiw	a3,a3,2
   11734:	00369693          	slli	a3,a3,0x3
   11738:	0008889b          	addiw	a7,a7,0
   1173c:	a55ff06f          	jal	zero,11190 <_malloc_r+0x34>
   11740:	00678333          	add	t1,a5,t1
   11744:	00833703          	ld	a4,8(t1)
   11748:	00040513          	addi	a0,s0,0
   1174c:	00f13423          	sd	a5,8(sp)
   11750:	00176713          	ori	a4,a4,1
   11754:	00e33423          	sd	a4,8(t1)
   11758:	2ec000ef          	jal	ra,11a44 <__malloc_unlock>
   1175c:	00813783          	ld	a5,8(sp)
   11760:	01078513          	addi	a0,a5,16
   11764:	a9dff06f          	jal	zero,11200 <_malloc_r+0xa4>
   11768:	00176613          	ori	a2,a4,1
   1176c:	00c7b423          	sd	a2,8(a5)
   11770:	00e78733          	add	a4,a5,a4
   11774:	02e83423          	sd	a4,40(a6)
   11778:	02e83023          	sd	a4,32(a6)
   1177c:	0016e613          	ori	a2,a3,1
   11780:	00678333          	add	t1,a5,t1
   11784:	01c73c23          	sd	t3,24(a4)
   11788:	01c73823          	sd	t3,16(a4)
   1178c:	00c73423          	sd	a2,8(a4)
   11790:	00040513          	addi	a0,s0,0
   11794:	00d33023          	sd	a3,0(t1)
   11798:	00f13423          	sd	a5,8(sp)
   1179c:	2a8000ef          	jal	ra,11a44 <__malloc_unlock>
   117a0:	00813783          	ld	a5,8(sp)
   117a4:	01078513          	addi	a0,a5,16
   117a8:	a59ff06f          	jal	zero,11200 <_malloc_r+0xa4>
   117ac:	00635693          	srli	a3,t1,0x6
   117b0:	00169513          	slli	a0,a3,0x1
   117b4:	0725051b          	addiw	a0,a0,114
   117b8:	00351513          	slli	a0,a0,0x3
   117bc:	0386861b          	addiw	a2,a3,56
   117c0:	e99ff06f          	jal	zero,11658 <_malloc_r+0x4fc>
   117c4:	15078e63          	beq	a5,a6,11920 <_malloc_r+0x7c4>
   117c8:	01083783          	ld	a5,16(a6)
   117cc:	0087b683          	ld	a3,8(a5)
   117d0:	ffc6f693          	andi	a3,a3,-4
   117d4:	40e68633          	sub	a2,a3,a4
   117d8:	00e6e663          	bltu	a3,a4,117e4 <_malloc_r+0x688>
   117dc:	02062693          	slti	a3,a2,32
   117e0:	dc0684e3          	beq	a3,zero,115a8 <_malloc_r+0x44c>
   117e4:	00040513          	addi	a0,s0,0
   117e8:	25c000ef          	jal	ra,11a44 <__malloc_unlock>
   117ec:	a11ff06f          	jal	zero,111fc <_malloc_r+0xa0>
   117f0:	05c7889b          	addiw	a7,a5,92
   117f4:	0018951b          	slliw	a0,a7,0x1
   117f8:	05b78e1b          	addiw	t3,a5,91
   117fc:	00351513          	slli	a0,a0,0x3
   11800:	a5dff06f          	jal	zero,1125c <_malloc_r+0x100>
   11804:	010f3783          	ld	a5,16(t5)
   11808:	fff8889b          	addiw	a7,a7,-1
   1180c:	23e79663          	bne	a5,t5,11a38 <_malloc_r+0x8dc>
   11810:	0038f793          	andi	a5,a7,3
   11814:	ff0f0f13          	addi	t5,t5,-16
   11818:	fe0796e3          	bne	a5,zero,11804 <_malloc_r+0x6a8>
   1181c:	00883683          	ld	a3,8(a6)
   11820:	fff54793          	xori	a5,a0,-1
   11824:	00d7f7b3          	and	a5,a5,a3
   11828:	00f83423          	sd	a5,8(a6)
   1182c:	00151513          	slli	a0,a0,0x1
   11830:	fff50693          	addi	a3,a0,-1
   11834:	baf6f6e3          	bgeu	a3,a5,113e0 <_malloc_r+0x284>
   11838:	00f576b3          	and	a3,a0,a5
   1183c:	00069a63          	bne	a3,zero,11850 <_malloc_r+0x6f4>
   11840:	00151513          	slli	a0,a0,0x1
   11844:	00f576b3          	and	a3,a0,a5
   11848:	004f8f9b          	addiw	t6,t6,4
   1184c:	fe068ae3          	beq	a3,zero,11840 <_malloc_r+0x6e4>
   11850:	000f8893          	addi	a7,t6,0
   11854:	b09ff06f          	jal	zero,1135c <_malloc_r+0x200>
   11858:	02058593          	addi	a1,a1,32
   1185c:	bc9ff06f          	jal	zero,11424 <_malloc_r+0x2c8>
   11860:	4026561b          	sraiw	a2,a2,0x2
   11864:	00100313          	addi	t1,zero,1
   11868:	00c31633          	sll	a2,t1,a2
   1186c:	00c5e5b3          	or	a1,a1,a2
   11870:	00b83423          	sd	a1,8(a6)
   11874:	e11ff06f          	jal	zero,11684 <_malloc_r+0x528>
   11878:	00b30633          	add	a2,t1,a1
   1187c:	40c005b3          	sub	a1,zero,a2
   11880:	03459593          	slli	a1,a1,0x34
   11884:	0345d593          	srli	a1,a1,0x34
   11888:	00040513          	addi	a0,s0,0
   1188c:	03c13c23          	sd	t3,56(sp)
   11890:	03013823          	sd	a6,48(sp)
   11894:	02f13423          	sd	a5,40(sp)
   11898:	02e13023          	sd	a4,32(sp)
   1189c:	01113c23          	sd	a7,24(sp)
   118a0:	00613823          	sd	t1,16(sp)
   118a4:	00c13423          	sd	a2,8(sp)
   118a8:	04b13023          	sd	a1,64(sp)
   118ac:	600000ef          	jal	ra,11eac <_sbrk_r>
   118b0:	00050693          	addi	a3,a0,0
   118b4:	fff00513          	addi	a0,zero,-1
   118b8:	01013303          	ld	t1,16(sp)
   118bc:	01813883          	ld	a7,24(sp)
   118c0:	02013703          	ld	a4,32(sp)
   118c4:	02813783          	ld	a5,40(sp)
   118c8:	03013803          	ld	a6,48(sp)
   118cc:	03813e03          	ld	t3,56(sp)
   118d0:	0ea68463          	beq	a3,a0,119b8 <_malloc_r+0x85c>
   118d4:	04013583          	ld	a1,64(sp)
   118d8:	0005851b          	addiw	a0,a1,0
   118dc:	c49ff06f          	jal	zero,11524 <_malloc_r+0x3c8>
   118e0:	05400613          	addi	a2,zero,84
   118e4:	08d66063          	bltu	a2,a3,11964 <_malloc_r+0x808>
   118e8:	00c35693          	srli	a3,t1,0xc
   118ec:	00169513          	slli	a0,a3,0x1
   118f0:	0de5051b          	addiw	a0,a0,222
   118f4:	00351513          	slli	a0,a0,0x3
   118f8:	06e6861b          	addiw	a2,a3,110
   118fc:	d5dff06f          	jal	zero,11658 <_malloc_r+0x4fc>
   11900:	15400693          	addi	a3,zero,340
   11904:	08f6e063          	bltu	a3,a5,11984 <_malloc_r+0x828>
   11908:	00f75793          	srli	a5,a4,0xf
   1190c:	0787889b          	addiw	a7,a5,120
   11910:	0018951b          	slliw	a0,a7,0x1
   11914:	07778e1b          	addiw	t3,a5,119
   11918:	00351513          	slli	a0,a0,0x3
   1191c:	941ff06f          	jal	zero,1125c <_malloc_r+0x100>
   11920:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11924:	000e2503          	lw	a0,0(t3)
   11928:	00b5053b          	addw	a0,a0,a1
   1192c:	00ae2023          	sw	a0,0(t3)
   11930:	b51ff06f          	jal	zero,11480 <_malloc_r+0x324>
   11934:	03431f13          	slli	t5,t1,0x34
   11938:	b40f14e3          	bne	t5,zero,11480 <_malloc_r+0x324>
   1193c:	01083303          	ld	t1,16(a6)
   11940:	00b885b3          	add	a1,a7,a1
   11944:	0015e693          	ori	a3,a1,1
   11948:	00d33423          	sd	a3,8(t1)
   1194c:	c35ff06f          	jal	zero,11580 <_malloc_r+0x424>
   11950:	1861b823          	sd	t1,400(gp) # 139a8 <__malloc_sbrk_base>
   11954:	b45ff06f          	jal	zero,11498 <_malloc_r+0x33c>
   11958:	00100793          	addi	a5,zero,1
   1195c:	00f33423          	sd	a5,8(t1)
   11960:	e85ff06f          	jal	zero,117e4 <_malloc_r+0x688>
   11964:	15400613          	addi	a2,zero,340
   11968:	08d66a63          	bltu	a2,a3,119fc <_malloc_r+0x8a0>
   1196c:	00f35693          	srli	a3,t1,0xf
   11970:	00169513          	slli	a0,a3,0x1
   11974:	0f05051b          	addiw	a0,a0,240
   11978:	00351513          	slli	a0,a0,0x3
   1197c:	0776861b          	addiw	a2,a3,119
   11980:	cd9ff06f          	jal	zero,11658 <_malloc_r+0x4fc>
   11984:	55400693          	addi	a3,zero,1364
   11988:	08f6ea63          	bltu	a3,a5,11a1c <_malloc_r+0x8c0>
   1198c:	01275793          	srli	a5,a4,0x12
   11990:	07d7889b          	addiw	a7,a5,125
   11994:	0018951b          	slliw	a0,a7,0x1
   11998:	07c78e1b          	addiw	t3,a5,124
   1199c:	00351513          	slli	a0,a0,0x3
   119a0:	8bdff06f          	jal	zero,1125c <_malloc_r+0x100>
   119a4:	ff0e8e93          	addi	t4,t4,-16
   119a8:	01d606b3          	add	a3,a2,t4
   119ac:	00000513          	addi	a0,zero,0
   119b0:	00000593          	addi	a1,zero,0
   119b4:	b71ff06f          	jal	zero,11524 <_malloc_r+0x3c8>
   119b8:	00813683          	ld	a3,8(sp)
   119bc:	00000593          	addi	a1,zero,0
   119c0:	00000513          	addi	a0,zero,0
   119c4:	b61ff06f          	jal	zero,11524 <_malloc_r+0x3c8>
   119c8:	01078593          	addi	a1,a5,16
   119cc:	00040513          	addi	a0,s0,0
   119d0:	01c13c23          	sd	t3,24(sp)
   119d4:	01013823          	sd	a6,16(sp)
   119d8:	00e13423          	sd	a4,8(sp)
   119dc:	c7cff0ef          	jal	ra,10e58 <_free_r>
   119e0:	01013803          	ld	a6,16(sp)
   119e4:	01813e03          	ld	t3,24(sp)
   119e8:	00813703          	ld	a4,8(sp)
   119ec:	01083303          	ld	t1,16(a6)
   119f0:	000e2603          	lw	a2,0(t3)
   119f4:	00833683          	ld	a3,8(t1)
   119f8:	b89ff06f          	jal	zero,11580 <_malloc_r+0x424>
   119fc:	55400613          	addi	a2,zero,1364
   11a00:	02d66663          	bltu	a2,a3,11a2c <_malloc_r+0x8d0>
   11a04:	01235693          	srli	a3,t1,0x12
   11a08:	00169513          	slli	a0,a3,0x1
   11a0c:	0fa5051b          	addiw	a0,a0,250
   11a10:	00351513          	slli	a0,a0,0x3
   11a14:	07c6861b          	addiw	a2,a3,124
   11a18:	c41ff06f          	jal	zero,11658 <_malloc_r+0x4fc>
   11a1c:	7f000513          	addi	a0,zero,2032
   11a20:	07f00893          	addi	a7,zero,127
   11a24:	07e00e13          	addi	t3,zero,126
   11a28:	835ff06f          	jal	zero,1125c <_malloc_r+0x100>
   11a2c:	7f000513          	addi	a0,zero,2032
   11a30:	07e00613          	addi	a2,zero,126
   11a34:	c25ff06f          	jal	zero,11658 <_malloc_r+0x4fc>
   11a38:	00883783          	ld	a5,8(a6)
   11a3c:	df1ff06f          	jal	zero,1182c <_malloc_r+0x6d0>

0000000000011a40 <__malloc_lock>:
   11a40:	00008067          	jalr	zero,0(ra)

0000000000011a44 <__malloc_unlock>:
   11a44:	00008067          	jalr	zero,0(ra)

0000000000011a48 <_fclose_r>:
   11a48:	fe010113          	addi	sp,sp,-32
   11a4c:	00113c23          	sd	ra,24(sp)
   11a50:	01213023          	sd	s2,0(sp)
   11a54:	02058863          	beq	a1,zero,11a84 <_fclose_r+0x3c>
   11a58:	00813823          	sd	s0,16(sp)
   11a5c:	00913423          	sd	s1,8(sp)
   11a60:	00058413          	addi	s0,a1,0
   11a64:	00050493          	addi	s1,a0,0
   11a68:	00050663          	beq	a0,zero,11a74 <_fclose_r+0x2c>
   11a6c:	04853783          	ld	a5,72(a0)
   11a70:	0c078c63          	beq	a5,zero,11b48 <_fclose_r+0x100>
   11a74:	01041783          	lh	a5,16(s0)
   11a78:	02079263          	bne	a5,zero,11a9c <_fclose_r+0x54>
   11a7c:	01013403          	ld	s0,16(sp)
   11a80:	00813483          	ld	s1,8(sp)
   11a84:	01813083          	ld	ra,24(sp)
   11a88:	00000913          	addi	s2,zero,0
   11a8c:	00090513          	addi	a0,s2,0
   11a90:	00013903          	ld	s2,0(sp)
   11a94:	02010113          	addi	sp,sp,32
   11a98:	00008067          	jalr	zero,0(ra)
   11a9c:	00040593          	addi	a1,s0,0
   11aa0:	00048513          	addi	a0,s1,0
   11aa4:	0b8000ef          	jal	ra,11b5c <__sflush_r>
   11aa8:	05043783          	ld	a5,80(s0)
   11aac:	00050913          	addi	s2,a0,0
   11ab0:	00078a63          	beq	a5,zero,11ac4 <_fclose_r+0x7c>
   11ab4:	03043583          	ld	a1,48(s0)
   11ab8:	00048513          	addi	a0,s1,0
   11abc:	000780e7          	jalr	ra,0(a5)
   11ac0:	06054463          	blt	a0,zero,11b28 <_fclose_r+0xe0>
   11ac4:	01045783          	lhu	a5,16(s0)
   11ac8:	0807f793          	andi	a5,a5,128
   11acc:	06079663          	bne	a5,zero,11b38 <_fclose_r+0xf0>
   11ad0:	05843583          	ld	a1,88(s0)
   11ad4:	00058c63          	beq	a1,zero,11aec <_fclose_r+0xa4>
   11ad8:	07440793          	addi	a5,s0,116
   11adc:	00f58663          	beq	a1,a5,11ae8 <_fclose_r+0xa0>
   11ae0:	00048513          	addi	a0,s1,0
   11ae4:	b74ff0ef          	jal	ra,10e58 <_free_r>
   11ae8:	04043c23          	sd	zero,88(s0)
   11aec:	07843583          	ld	a1,120(s0)
   11af0:	00058863          	beq	a1,zero,11b00 <_fclose_r+0xb8>
   11af4:	00048513          	addi	a0,s1,0
   11af8:	b60ff0ef          	jal	ra,10e58 <_free_r>
   11afc:	06043c23          	sd	zero,120(s0)
   11b00:	aa1fe0ef          	jal	ra,105a0 <__sfp_lock_acquire>
   11b04:	00041823          	sh	zero,16(s0)
   11b08:	a9dfe0ef          	jal	ra,105a4 <__sfp_lock_release>
   11b0c:	01813083          	ld	ra,24(sp)
   11b10:	01013403          	ld	s0,16(sp)
   11b14:	00813483          	ld	s1,8(sp)
   11b18:	00090513          	addi	a0,s2,0
   11b1c:	00013903          	ld	s2,0(sp)
   11b20:	02010113          	addi	sp,sp,32
   11b24:	00008067          	jalr	zero,0(ra)
   11b28:	01045783          	lhu	a5,16(s0)
   11b2c:	fff00913          	addi	s2,zero,-1
   11b30:	0807f793          	andi	a5,a5,128
   11b34:	f8078ee3          	beq	a5,zero,11ad0 <_fclose_r+0x88>
   11b38:	01843583          	ld	a1,24(s0)
   11b3c:	00048513          	addi	a0,s1,0
   11b40:	b18ff0ef          	jal	ra,10e58 <_free_r>
   11b44:	f8dff06f          	jal	zero,11ad0 <_fclose_r+0x88>
   11b48:	a35fe0ef          	jal	ra,1057c <__sinit>
   11b4c:	f29ff06f          	jal	zero,11a74 <_fclose_r+0x2c>

0000000000011b50 <fclose>:
   11b50:	00050593          	addi	a1,a0,0
   11b54:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11b58:	ef1ff06f          	jal	zero,11a48 <_fclose_r>

0000000000011b5c <__sflush_r>:
   11b5c:	01059703          	lh	a4,16(a1)
   11b60:	fd010113          	addi	sp,sp,-48
   11b64:	02813023          	sd	s0,32(sp)
   11b68:	01313423          	sd	s3,8(sp)
   11b6c:	02113423          	sd	ra,40(sp)
   11b70:	00877793          	andi	a5,a4,8
   11b74:	00058413          	addi	s0,a1,0
   11b78:	00050993          	addi	s3,a0,0
   11b7c:	12079263          	bne	a5,zero,11ca0 <__sflush_r+0x144>
   11b80:	000017b7          	lui	a5,0x1
   11b84:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   11b88:	0085a683          	lw	a3,8(a1)
   11b8c:	00f767b3          	or	a5,a4,a5
   11b90:	00f59823          	sh	a5,16(a1)
   11b94:	18d05c63          	bge	zero,a3,11d2c <__sflush_r+0x1d0>
   11b98:	04843803          	ld	a6,72(s0)
   11b9c:	0e080663          	beq	a6,zero,11c88 <__sflush_r+0x12c>
   11ba0:	00913c23          	sd	s1,24(sp)
   11ba4:	03371693          	slli	a3,a4,0x33
   11ba8:	0009a483          	lw	s1,0(s3)
   11bac:	0009a023          	sw	zero,0(s3)
   11bb0:	1806ca63          	blt	a3,zero,11d44 <__sflush_r+0x1e8>
   11bb4:	03043583          	ld	a1,48(s0)
   11bb8:	00000613          	addi	a2,zero,0
   11bbc:	00100693          	addi	a3,zero,1
   11bc0:	00098513          	addi	a0,s3,0
   11bc4:	000800e7          	jalr	ra,0(a6)
   11bc8:	fff00793          	addi	a5,zero,-1
   11bcc:	00050613          	addi	a2,a0,0
   11bd0:	1af50c63          	beq	a0,a5,11d88 <__sflush_r+0x22c>
   11bd4:	01041783          	lh	a5,16(s0)
   11bd8:	04843803          	ld	a6,72(s0)
   11bdc:	0047f793          	andi	a5,a5,4
   11be0:	00078e63          	beq	a5,zero,11bfc <__sflush_r+0xa0>
   11be4:	00842703          	lw	a4,8(s0)
   11be8:	05843783          	ld	a5,88(s0)
   11bec:	40e60633          	sub	a2,a2,a4
   11bf0:	00078663          	beq	a5,zero,11bfc <__sflush_r+0xa0>
   11bf4:	07042783          	lw	a5,112(s0)
   11bf8:	40f60633          	sub	a2,a2,a5
   11bfc:	03043583          	ld	a1,48(s0)
   11c00:	00000693          	addi	a3,zero,0
   11c04:	00098513          	addi	a0,s3,0
   11c08:	000800e7          	jalr	ra,0(a6)
   11c0c:	fff00713          	addi	a4,zero,-1
   11c10:	01041783          	lh	a5,16(s0)
   11c14:	12e51c63          	bne	a0,a4,11d4c <__sflush_r+0x1f0>
   11c18:	0009a683          	lw	a3,0(s3)
   11c1c:	01d00713          	addi	a4,zero,29
   11c20:	18d76263          	bltu	a4,a3,11da4 <__sflush_r+0x248>
   11c24:	20400737          	lui	a4,0x20400
   11c28:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec089>
   11c2c:	00d75733          	srl	a4,a4,a3
   11c30:	00177713          	andi	a4,a4,1
   11c34:	16070863          	beq	a4,zero,11da4 <__sflush_r+0x248>
   11c38:	01843683          	ld	a3,24(s0)
   11c3c:	fffff737          	lui	a4,0xfffff
   11c40:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11c44:	00e7f733          	and	a4,a5,a4
   11c48:	00e41823          	sh	a4,16(s0)
   11c4c:	00042423          	sw	zero,8(s0)
   11c50:	00d43023          	sd	a3,0(s0)
   11c54:	03379713          	slli	a4,a5,0x33
   11c58:	00075663          	bge	a4,zero,11c64 <__sflush_r+0x108>
   11c5c:	0009a783          	lw	a5,0(s3)
   11c60:	10078863          	beq	a5,zero,11d70 <__sflush_r+0x214>
   11c64:	05843583          	ld	a1,88(s0)
   11c68:	0099a023          	sw	s1,0(s3)
   11c6c:	10058a63          	beq	a1,zero,11d80 <__sflush_r+0x224>
   11c70:	07440793          	addi	a5,s0,116
   11c74:	00f58663          	beq	a1,a5,11c80 <__sflush_r+0x124>
   11c78:	00098513          	addi	a0,s3,0
   11c7c:	9dcff0ef          	jal	ra,10e58 <_free_r>
   11c80:	01813483          	ld	s1,24(sp)
   11c84:	04043c23          	sd	zero,88(s0)
   11c88:	02813083          	ld	ra,40(sp)
   11c8c:	02013403          	ld	s0,32(sp)
   11c90:	00813983          	ld	s3,8(sp)
   11c94:	00000513          	addi	a0,zero,0
   11c98:	03010113          	addi	sp,sp,48
   11c9c:	00008067          	jalr	zero,0(ra)
   11ca0:	01213823          	sd	s2,16(sp)
   11ca4:	0185b903          	ld	s2,24(a1)
   11ca8:	08090a63          	beq	s2,zero,11d3c <__sflush_r+0x1e0>
   11cac:	00913c23          	sd	s1,24(sp)
   11cb0:	0005b483          	ld	s1,0(a1)
   11cb4:	00377713          	andi	a4,a4,3
   11cb8:	0125b023          	sd	s2,0(a1)
   11cbc:	412484bb          	subw	s1,s1,s2
   11cc0:	00000793          	addi	a5,zero,0
   11cc4:	00071463          	bne	a4,zero,11ccc <__sflush_r+0x170>
   11cc8:	0205a783          	lw	a5,32(a1)
   11ccc:	00f42623          	sw	a5,12(s0)
   11cd0:	00904863          	blt	zero,s1,11ce0 <__sflush_r+0x184>
   11cd4:	0640006f          	jal	zero,11d38 <__sflush_r+0x1dc>
   11cd8:	00a90933          	add	s2,s2,a0
   11cdc:	04905e63          	bge	zero,s1,11d38 <__sflush_r+0x1dc>
   11ce0:	04043783          	ld	a5,64(s0)
   11ce4:	03043583          	ld	a1,48(s0)
   11ce8:	00048693          	addi	a3,s1,0
   11cec:	00090613          	addi	a2,s2,0
   11cf0:	00098513          	addi	a0,s3,0
   11cf4:	000780e7          	jalr	ra,0(a5)
   11cf8:	40a484bb          	subw	s1,s1,a0
   11cfc:	fca04ee3          	blt	zero,a0,11cd8 <__sflush_r+0x17c>
   11d00:	01045783          	lhu	a5,16(s0)
   11d04:	01013903          	ld	s2,16(sp)
   11d08:	0407e793          	ori	a5,a5,64
   11d0c:	02813083          	ld	ra,40(sp)
   11d10:	00f41823          	sh	a5,16(s0)
   11d14:	02013403          	ld	s0,32(sp)
   11d18:	01813483          	ld	s1,24(sp)
   11d1c:	00813983          	ld	s3,8(sp)
   11d20:	fff00513          	addi	a0,zero,-1
   11d24:	03010113          	addi	sp,sp,48
   11d28:	00008067          	jalr	zero,0(ra)
   11d2c:	0705a683          	lw	a3,112(a1)
   11d30:	e6d044e3          	blt	zero,a3,11b98 <__sflush_r+0x3c>
   11d34:	f55ff06f          	jal	zero,11c88 <__sflush_r+0x12c>
   11d38:	01813483          	ld	s1,24(sp)
   11d3c:	01013903          	ld	s2,16(sp)
   11d40:	f49ff06f          	jal	zero,11c88 <__sflush_r+0x12c>
   11d44:	09043603          	ld	a2,144(s0)
   11d48:	e95ff06f          	jal	zero,11bdc <__sflush_r+0x80>
   11d4c:	01843683          	ld	a3,24(s0)
   11d50:	fffff737          	lui	a4,0xfffff
   11d54:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11d58:	00e7f733          	and	a4,a5,a4
   11d5c:	00e41823          	sh	a4,16(s0)
   11d60:	00042423          	sw	zero,8(s0)
   11d64:	00d43023          	sd	a3,0(s0)
   11d68:	03379713          	slli	a4,a5,0x33
   11d6c:	ee075ce3          	bge	a4,zero,11c64 <__sflush_r+0x108>
   11d70:	05843583          	ld	a1,88(s0)
   11d74:	08a43823          	sd	a0,144(s0)
   11d78:	0099a023          	sw	s1,0(s3)
   11d7c:	ee059ae3          	bne	a1,zero,11c70 <__sflush_r+0x114>
   11d80:	01813483          	ld	s1,24(sp)
   11d84:	f05ff06f          	jal	zero,11c88 <__sflush_r+0x12c>
   11d88:	0009a783          	lw	a5,0(s3)
   11d8c:	e40784e3          	beq	a5,zero,11bd4 <__sflush_r+0x78>
   11d90:	fe378713          	addi	a4,a5,-29
   11d94:	00070c63          	beq	a4,zero,11dac <__sflush_r+0x250>
   11d98:	fea78793          	addi	a5,a5,-22
   11d9c:	00078863          	beq	a5,zero,11dac <__sflush_r+0x250>
   11da0:	01045783          	lhu	a5,16(s0)
   11da4:	0407e793          	ori	a5,a5,64
   11da8:	f65ff06f          	jal	zero,11d0c <__sflush_r+0x1b0>
   11dac:	0099a023          	sw	s1,0(s3)
   11db0:	01813483          	ld	s1,24(sp)
   11db4:	ed5ff06f          	jal	zero,11c88 <__sflush_r+0x12c>

0000000000011db8 <_fflush_r>:
   11db8:	00050793          	addi	a5,a0,0
   11dbc:	00050663          	beq	a0,zero,11dc8 <_fflush_r+0x10>
   11dc0:	04853703          	ld	a4,72(a0)
   11dc4:	00070e63          	beq	a4,zero,11de0 <_fflush_r+0x28>
   11dc8:	01059703          	lh	a4,16(a1)
   11dcc:	00071663          	bne	a4,zero,11dd8 <_fflush_r+0x20>
   11dd0:	00000513          	addi	a0,zero,0
   11dd4:	00008067          	jalr	zero,0(ra)
   11dd8:	00078513          	addi	a0,a5,0
   11ddc:	d81ff06f          	jal	zero,11b5c <__sflush_r>
   11de0:	fe010113          	addi	sp,sp,-32
   11de4:	00b13423          	sd	a1,8(sp)
   11de8:	00113c23          	sd	ra,24(sp)
   11dec:	00a13023          	sd	a0,0(sp)
   11df0:	f8cfe0ef          	jal	ra,1057c <__sinit>
   11df4:	00813583          	ld	a1,8(sp)
   11df8:	00013783          	ld	a5,0(sp)
   11dfc:	01059703          	lh	a4,16(a1)
   11e00:	00070a63          	beq	a4,zero,11e14 <_fflush_r+0x5c>
   11e04:	01813083          	ld	ra,24(sp)
   11e08:	00078513          	addi	a0,a5,0
   11e0c:	02010113          	addi	sp,sp,32
   11e10:	d4dff06f          	jal	zero,11b5c <__sflush_r>
   11e14:	01813083          	ld	ra,24(sp)
   11e18:	00000513          	addi	a0,zero,0
   11e1c:	02010113          	addi	sp,sp,32
   11e20:	00008067          	jalr	zero,0(ra)

0000000000011e24 <fflush>:
   11e24:	06050063          	beq	a0,zero,11e84 <fflush+0x60>
   11e28:	00050593          	addi	a1,a0,0
   11e2c:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11e30:	00050663          	beq	a0,zero,11e3c <fflush+0x18>
   11e34:	04853783          	ld	a5,72(a0)
   11e38:	00078c63          	beq	a5,zero,11e50 <fflush+0x2c>
   11e3c:	01059783          	lh	a5,16(a1)
   11e40:	00079663          	bne	a5,zero,11e4c <fflush+0x28>
   11e44:	00000513          	addi	a0,zero,0
   11e48:	00008067          	jalr	zero,0(ra)
   11e4c:	d11ff06f          	jal	zero,11b5c <__sflush_r>
   11e50:	fe010113          	addi	sp,sp,-32
   11e54:	00b13423          	sd	a1,8(sp)
   11e58:	00a13023          	sd	a0,0(sp)
   11e5c:	00113c23          	sd	ra,24(sp)
   11e60:	f1cfe0ef          	jal	ra,1057c <__sinit>
   11e64:	00813583          	ld	a1,8(sp)
   11e68:	00013503          	ld	a0,0(sp)
   11e6c:	01059783          	lh	a5,16(a1)
   11e70:	02079863          	bne	a5,zero,11ea0 <fflush+0x7c>
   11e74:	01813083          	ld	ra,24(sp)
   11e78:	00000513          	addi	a0,zero,0
   11e7c:	02010113          	addi	sp,sp,32
   11e80:	00008067          	jalr	zero,0(ra)
   11e84:	00013637          	lui	a2,0x13
   11e88:	000125b7          	lui	a1,0x12
   11e8c:	00013537          	lui	a0,0x13
   11e90:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   11e94:	db858593          	addi	a1,a1,-584 # 11db8 <_fflush_r>
   11e98:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   11e9c:	f3cfe06f          	jal	zero,105d8 <_fwalk_sglue>
   11ea0:	01813083          	ld	ra,24(sp)
   11ea4:	02010113          	addi	sp,sp,32
   11ea8:	cb5ff06f          	jal	zero,11b5c <__sflush_r>

0000000000011eac <_sbrk_r>:
   11eac:	fe010113          	addi	sp,sp,-32
   11eb0:	00813823          	sd	s0,16(sp)
   11eb4:	00913423          	sd	s1,8(sp)
   11eb8:	00050493          	addi	s1,a0,0
   11ebc:	00058513          	addi	a0,a1,0
   11ec0:	00113c23          	sd	ra,24(sp)
   11ec4:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   11ec8:	228000ef          	jal	ra,120f0 <_sbrk>
   11ecc:	fff00793          	addi	a5,zero,-1
   11ed0:	00f50c63          	beq	a0,a5,11ee8 <_sbrk_r+0x3c>
   11ed4:	01813083          	ld	ra,24(sp)
   11ed8:	01013403          	ld	s0,16(sp)
   11edc:	00813483          	ld	s1,8(sp)
   11ee0:	02010113          	addi	sp,sp,32
   11ee4:	00008067          	jalr	zero,0(ra)
   11ee8:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   11eec:	fe0784e3          	beq	a5,zero,11ed4 <_sbrk_r+0x28>
   11ef0:	01813083          	ld	ra,24(sp)
   11ef4:	01013403          	ld	s0,16(sp)
   11ef8:	00f4a023          	sw	a5,0(s1)
   11efc:	00813483          	ld	s1,8(sp)
   11f00:	02010113          	addi	sp,sp,32
   11f04:	00008067          	jalr	zero,0(ra)

0000000000011f08 <__libc_fini_array>:
   11f08:	fe010113          	addi	sp,sp,-32
   11f0c:	00813823          	sd	s0,16(sp)
   11f10:	000137b7          	lui	a5,0x13
   11f14:	00013437          	lui	s0,0x13
   11f18:	01878793          	addi	a5,a5,24 # 13018 <__sglue>
   11f1c:	01040413          	addi	s0,s0,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   11f20:	408787b3          	sub	a5,a5,s0
   11f24:	00913423          	sd	s1,8(sp)
   11f28:	00113c23          	sd	ra,24(sp)
   11f2c:	4037d493          	srai	s1,a5,0x3
   11f30:	02048063          	beq	s1,zero,11f50 <__libc_fini_array+0x48>
   11f34:	ff840413          	addi	s0,s0,-8
   11f38:	00f40433          	add	s0,s0,a5
   11f3c:	00043783          	ld	a5,0(s0)
   11f40:	fff48493          	addi	s1,s1,-1
   11f44:	ff840413          	addi	s0,s0,-8
   11f48:	000780e7          	jalr	ra,0(a5)
   11f4c:	fe0498e3          	bne	s1,zero,11f3c <__libc_fini_array+0x34>
   11f50:	01813083          	ld	ra,24(sp)
   11f54:	01013403          	ld	s0,16(sp)
   11f58:	00813483          	ld	s1,8(sp)
   11f5c:	02010113          	addi	sp,sp,32
   11f60:	00008067          	jalr	zero,0(ra)

0000000000011f64 <__register_exitproc>:
   11f64:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   11f68:	04078e63          	beq	a5,zero,11fc4 <__register_exitproc+0x60>
   11f6c:	0087a703          	lw	a4,8(a5)
   11f70:	01f00813          	addi	a6,zero,31
   11f74:	08e84263          	blt	a6,a4,11ff8 <__register_exitproc+0x94>
   11f78:	02050863          	beq	a0,zero,11fa8 <__register_exitproc+0x44>
   11f7c:	00371813          	slli	a6,a4,0x3
   11f80:	01078833          	add	a6,a5,a6
   11f84:	10c83823          	sd	a2,272(a6)
   11f88:	3107a883          	lw	a7,784(a5)
   11f8c:	00100613          	addi	a2,zero,1
   11f90:	00e6163b          	sllw	a2,a2,a4
   11f94:	00c8e8b3          	or	a7,a7,a2
   11f98:	3117a823          	sw	a7,784(a5)
   11f9c:	20d83823          	sd	a3,528(a6)
   11fa0:	00200693          	addi	a3,zero,2
   11fa4:	02d50663          	beq	a0,a3,11fd0 <__register_exitproc+0x6c>
   11fa8:	0017069b          	addiw	a3,a4,1
   11fac:	00371713          	slli	a4,a4,0x3
   11fb0:	00d7a423          	sw	a3,8(a5)
   11fb4:	00e787b3          	add	a5,a5,a4
   11fb8:	00b7b823          	sd	a1,16(a5)
   11fbc:	00000513          	addi	a0,zero,0
   11fc0:	00008067          	jalr	zero,0(ra)
   11fc4:	44818793          	addi	a5,gp,1096 # 13c60 <__atexit0>
   11fc8:	1af1b823          	sd	a5,432(gp) # 139c8 <__atexit>
   11fcc:	fa1ff06f          	jal	zero,11f6c <__register_exitproc+0x8>
   11fd0:	3147a683          	lw	a3,788(a5)
   11fd4:	00000513          	addi	a0,zero,0
   11fd8:	00d66633          	or	a2,a2,a3
   11fdc:	0017069b          	addiw	a3,a4,1
   11fe0:	00371713          	slli	a4,a4,0x3
   11fe4:	30c7aa23          	sw	a2,788(a5)
   11fe8:	00d7a423          	sw	a3,8(a5)
   11fec:	00e787b3          	add	a5,a5,a4
   11ff0:	00b7b823          	sd	a1,16(a5)
   11ff4:	00008067          	jalr	zero,0(ra)
   11ff8:	fff00513          	addi	a0,zero,-1
   11ffc:	00008067          	jalr	zero,0(ra)

0000000000012000 <_close>:
   12000:	03900893          	addi	a7,zero,57
   12004:	00000073          	ecall
   12008:	00054663          	blt	a0,zero,12014 <_close+0x14>
   1200c:	0005051b          	addiw	a0,a0,0
   12010:	00008067          	jalr	zero,0(ra)
   12014:	fe010113          	addi	sp,sp,-32
   12018:	00113c23          	sd	ra,24(sp)
   1201c:	00a13423          	sd	a0,8(sp)
   12020:	188000ef          	jal	ra,121a8 <__errno>
   12024:	00813783          	ld	a5,8(sp)
   12028:	01813083          	ld	ra,24(sp)
   1202c:	40f007bb          	subw	a5,zero,a5
   12030:	00f52023          	sw	a5,0(a0)
   12034:	fff00513          	addi	a0,zero,-1
   12038:	02010113          	addi	sp,sp,32
   1203c:	00008067          	jalr	zero,0(ra)

0000000000012040 <_exit>:
   12040:	05d00893          	addi	a7,zero,93
   12044:	00000073          	ecall
   12048:	00054463          	blt	a0,zero,12050 <_exit+0x10>
   1204c:	0000006f          	jal	zero,1204c <_exit+0xc>
   12050:	fe010113          	addi	sp,sp,-32
   12054:	00113c23          	sd	ra,24(sp)
   12058:	00a13423          	sd	a0,8(sp)
   1205c:	14c000ef          	jal	ra,121a8 <__errno>
   12060:	00813783          	ld	a5,8(sp)
   12064:	40f007bb          	subw	a5,zero,a5
   12068:	00f52023          	sw	a5,0(a0)
   1206c:	0000006f          	jal	zero,1206c <_exit+0x2c>

0000000000012070 <_lseek>:
   12070:	03e00893          	addi	a7,zero,62
   12074:	00000073          	ecall
   12078:	00054463          	blt	a0,zero,12080 <_lseek+0x10>
   1207c:	00008067          	jalr	zero,0(ra)
   12080:	fe010113          	addi	sp,sp,-32
   12084:	00113c23          	sd	ra,24(sp)
   12088:	00a13423          	sd	a0,8(sp)
   1208c:	11c000ef          	jal	ra,121a8 <__errno>
   12090:	00813783          	ld	a5,8(sp)
   12094:	01813083          	ld	ra,24(sp)
   12098:	40f007bb          	subw	a5,zero,a5
   1209c:	00f52023          	sw	a5,0(a0)
   120a0:	fff00793          	addi	a5,zero,-1
   120a4:	00078513          	addi	a0,a5,0
   120a8:	02010113          	addi	sp,sp,32
   120ac:	00008067          	jalr	zero,0(ra)

00000000000120b0 <_read>:
   120b0:	03f00893          	addi	a7,zero,63
   120b4:	00000073          	ecall
   120b8:	00054463          	blt	a0,zero,120c0 <_read+0x10>
   120bc:	00008067          	jalr	zero,0(ra)
   120c0:	fe010113          	addi	sp,sp,-32
   120c4:	00113c23          	sd	ra,24(sp)
   120c8:	00a13423          	sd	a0,8(sp)
   120cc:	0dc000ef          	jal	ra,121a8 <__errno>
   120d0:	00813783          	ld	a5,8(sp)
   120d4:	01813083          	ld	ra,24(sp)
   120d8:	40f007bb          	subw	a5,zero,a5
   120dc:	00f52023          	sw	a5,0(a0)
   120e0:	fff00793          	addi	a5,zero,-1
   120e4:	00078513          	addi	a0,a5,0
   120e8:	02010113          	addi	sp,sp,32
   120ec:	00008067          	jalr	zero,0(ra)

00000000000120f0 <_sbrk>:
   120f0:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   120f4:	ff010113          	addi	sp,sp,-16
   120f8:	00113423          	sd	ra,8(sp)
   120fc:	00050713          	addi	a4,a0,0
   12100:	02079063          	bne	a5,zero,12120 <_sbrk+0x30>
   12104:	0d600893          	addi	a7,zero,214
   12108:	00000513          	addi	a0,zero,0
   1210c:	00000073          	ecall
   12110:	fff00793          	addi	a5,zero,-1
   12114:	02f50c63          	beq	a0,a5,1214c <_sbrk+0x5c>
   12118:	00050793          	addi	a5,a0,0
   1211c:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   12120:	00f70533          	add	a0,a4,a5
   12124:	0d600893          	addi	a7,zero,214
   12128:	00000073          	ecall
   1212c:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   12130:	00f70733          	add	a4,a4,a5
   12134:	00e51c63          	bne	a0,a4,1214c <_sbrk+0x5c>
   12138:	00813083          	ld	ra,8(sp)
   1213c:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   12140:	00078513          	addi	a0,a5,0
   12144:	01010113          	addi	sp,sp,16
   12148:	00008067          	jalr	zero,0(ra)
   1214c:	05c000ef          	jal	ra,121a8 <__errno>
   12150:	00813083          	ld	ra,8(sp)
   12154:	00c00793          	addi	a5,zero,12
   12158:	00f52023          	sw	a5,0(a0)
   1215c:	fff00513          	addi	a0,zero,-1
   12160:	01010113          	addi	sp,sp,16
   12164:	00008067          	jalr	zero,0(ra)

0000000000012168 <_write>:
   12168:	04000893          	addi	a7,zero,64
   1216c:	00000073          	ecall
   12170:	00054463          	blt	a0,zero,12178 <_write+0x10>
   12174:	00008067          	jalr	zero,0(ra)
   12178:	fe010113          	addi	sp,sp,-32
   1217c:	00113c23          	sd	ra,24(sp)
   12180:	00a13423          	sd	a0,8(sp)
   12184:	024000ef          	jal	ra,121a8 <__errno>
   12188:	00813783          	ld	a5,8(sp)
   1218c:	01813083          	ld	ra,24(sp)
   12190:	40f007bb          	subw	a5,zero,a5
   12194:	00f52023          	sw	a5,0(a0)
   12198:	fff00793          	addi	a5,zero,-1
   1219c:	00078513          	addi	a0,a5,0
   121a0:	02010113          	addi	sp,sp,32
   121a4:	00008067          	jalr	zero,0(ra)

00000000000121a8 <__errno>:
   121a8:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   121ac:	00008067          	jalr	zero,0(ra)
