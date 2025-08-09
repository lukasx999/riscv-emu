
bin-c:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	addi	a1,zero,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	addi	s0,a0,0
   10134:	3a1000ef          	jal	ra,10cd4 <__call_exitprocs>
   10138:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   1013c:	00078463          	beq	a5,zero,10144 <exit+0x24>
   10140:	000780e7          	jalr	ra,0(a5)
   10144:	00040513          	addi	a0,s0,0
   10148:	7e5010ef          	jal	ra,1212c <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	addi	a5,zero,0
   10150:	00078863          	beq	a5,zero,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	ff450513          	addi	a0,a0,-12 # 11ff4 <__libc_fini_array>
   1015c:	4b10006f          	jal	zero,10e0c <atexit>
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
   10184:	1a1000ef          	jal	ra,10b24 <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	c8450513          	addi	a0,a0,-892 # 10e0c <atexit>
   10190:	00050863          	beq	a0,zero,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	e6050513          	addi	a0,a0,-416 # 11ff4 <__libc_fini_array>
   1019c:	471000ef          	jal	ra,10e0c <atexit>
   101a0:	0d9000ef          	jal	ra,10a78 <__libc_init_array>
   101a4:	00012503          	lw	a0,0(sp)
   101a8:	00810593          	addi	a1,sp,8
   101ac:	00000613          	addi	a2,zero,0
   101b0:	06c000ef          	jal	ra,1021c <main>
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
   101d8:	2b050513          	addi	a0,a0,688 # 122b0 <__EH_FRAME_BEGIN__>
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
   1020c:	2b050513          	addi	a0,a0,688 # 122b0 <__EH_FRAME_BEGIN__>
   10210:	00000317          	auipc	t1,0x0
   10214:	00000067          	jalr	zero,0(zero) # 0 <exit-0x10120>
   10218:	00008067          	jalr	zero,0(ra)

000000000001021c <main>:
   1021c:	fe010113          	addi	sp,sp,-32
   10220:	00113c23          	sd	ra,24(sp)
   10224:	00813823          	sd	s0,16(sp)
   10228:	02010413          	addi	s0,sp,32
   1022c:	000127b7          	lui	a5,0x12
   10230:	2a078793          	addi	a5,a5,672 # 122a0 <__errno+0xc>
   10234:	fef43423          	sd	a5,-24(s0)
   10238:	fe843503          	ld	a0,-24(s0)
   1023c:	1c5000ef          	jal	ra,10c00 <strlen>
   10240:	00050793          	addi	a5,a0,0
   10244:	00078613          	addi	a2,a5,0
   10248:	fe843583          	ld	a1,-24(s0)
   1024c:	00100513          	addi	a0,zero,1
   10250:	0bd000ef          	jal	ra,10b0c <write>
   10254:	00000793          	addi	a5,zero,0
   10258:	00078513          	addi	a0,a5,0
   1025c:	01813083          	ld	ra,24(sp)
   10260:	01013403          	ld	s0,16(sp)
   10264:	02010113          	addi	sp,sp,32
   10268:	00008067          	jalr	zero,0(ra)

000000000001026c <__fp_lock>:
   1026c:	00000513          	addi	a0,zero,0
   10270:	00008067          	jalr	zero,0(ra)

0000000000010274 <stdio_exit_handler>:
   10274:	00013637          	lui	a2,0x13
   10278:	000125b7          	lui	a1,0x12
   1027c:	00013537          	lui	a0,0x13
   10280:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10284:	b3458593          	addi	a1,a1,-1228 # 11b34 <_fclose_r>
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
   102ac:	089010ef          	jal	ra,11b34 <_fclose_r>
   102b0:	01043583          	ld	a1,16(s0)
   102b4:	2c018793          	addi	a5,gp,704 # 13ad8 <__sf+0xb0>
   102b8:	00f58663          	beq	a1,a5,102c4 <cleanup_stdio+0x34>
   102bc:	00040513          	addi	a0,s0,0
   102c0:	075010ef          	jal	ra,11b34 <_fclose_r>
   102c4:	01843583          	ld	a1,24(s0)
   102c8:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   102cc:	00f58c63          	beq	a1,a5,102e4 <cleanup_stdio+0x54>
   102d0:	00040513          	addi	a0,s0,0
   102d4:	00013403          	ld	s0,0(sp)
   102d8:	00813083          	ld	ra,8(sp)
   102dc:	01010113          	addi	sp,sp,16
   102e0:	0550106f          	jal	zero,11b34 <_fclose_r>
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
   10354:	7d0000ef          	jal	ra,10b24 <memset>
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
   103bc:	768000ef          	jal	ra,10b24 <memset>
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
   10408:	71c000ef          	jal	ra,10b24 <memset>
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
   104d8:	64c000ef          	jal	ra,10b24 <memset>
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
   10520:	529000ef          	jal	ra,11248 <_malloc_r>
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
   10550:	5d4000ef          	jal	ra,10b24 <memset>
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
   1081c:	0d1010ef          	jal	ra,120ec <_close>
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
   108a8:	69c000ef          	jal	ra,10f44 <_free_r>
   108ac:	fe0418e3          	bne	s0,zero,1089c <_reclaim_reent+0x40>
   108b0:	0684b583          	ld	a1,104(s1)
   108b4:	00890913          	addi	s2,s2,8
   108b8:	fd391ce3          	bne	s2,s3,10890 <_reclaim_reent+0x34>
   108bc:	00048513          	addi	a0,s1,0
   108c0:	684000ef          	jal	ra,10f44 <_free_r>
   108c4:	01013903          	ld	s2,16(sp)
   108c8:	00813983          	ld	s3,8(sp)
   108cc:	0504b583          	ld	a1,80(s1)
   108d0:	00058663          	beq	a1,zero,108dc <_reclaim_reent+0x80>
   108d4:	00048513          	addi	a0,s1,0
   108d8:	66c000ef          	jal	ra,10f44 <_free_r>
   108dc:	0604b403          	ld	s0,96(s1)
   108e0:	00040c63          	beq	s0,zero,108f8 <_reclaim_reent+0x9c>
   108e4:	00040593          	addi	a1,s0,0
   108e8:	00043403          	ld	s0,0(s0)
   108ec:	00048513          	addi	a0,s1,0
   108f0:	654000ef          	jal	ra,10f44 <_free_r>
   108f4:	fe0418e3          	bne	s0,zero,108e4 <_reclaim_reent+0x88>
   108f8:	0784b583          	ld	a1,120(s1)
   108fc:	00058663          	beq	a1,zero,10908 <_reclaim_reent+0xac>
   10900:	00048513          	addi	a0,s1,0
   10904:	640000ef          	jal	ra,10f44 <_free_r>
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
   10968:	7f4010ef          	jal	ra,1215c <_lseek>
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
   109d0:	7cc010ef          	jal	ra,1219c <_read>
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
   10a38:	01d010ef          	jal	ra,12254 <_write>
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

0000000000010b0c <write>:
   10b0c:	00050713          	addi	a4,a0,0
   10b10:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   10b14:	00060693          	addi	a3,a2,0
   10b18:	00058613          	addi	a2,a1,0
   10b1c:	00070593          	addi	a1,a4,0
   10b20:	ef1ff06f          	jal	zero,10a10 <_write_r>

0000000000010b24 <memset>:
   10b24:	00f00313          	addi	t1,zero,15
   10b28:	00050713          	addi	a4,a0,0
   10b2c:	02c37a63          	bgeu	t1,a2,10b60 <memset+0x3c>
   10b30:	00f77793          	andi	a5,a4,15
   10b34:	0a079063          	bne	a5,zero,10bd4 <memset+0xb0>
   10b38:	06059e63          	bne	a1,zero,10bb4 <memset+0x90>
   10b3c:	ff067693          	andi	a3,a2,-16
   10b40:	00f67613          	andi	a2,a2,15
   10b44:	00e686b3          	add	a3,a3,a4
   10b48:	00b73023          	sd	a1,0(a4)
   10b4c:	00b73423          	sd	a1,8(a4)
   10b50:	01070713          	addi	a4,a4,16
   10b54:	fed76ae3          	bltu	a4,a3,10b48 <memset+0x24>
   10b58:	00061463          	bne	a2,zero,10b60 <memset+0x3c>
   10b5c:	00008067          	jalr	zero,0(ra)
   10b60:	40c306b3          	sub	a3,t1,a2
   10b64:	00269693          	slli	a3,a3,0x2
   10b68:	00000297          	auipc	t0,0x0
   10b6c:	005686b3          	add	a3,a3,t0
   10b70:	00c68067          	jalr	zero,12(a3)
   10b74:	00b70723          	sb	a1,14(a4)
   10b78:	00b706a3          	sb	a1,13(a4)
   10b7c:	00b70623          	sb	a1,12(a4)
   10b80:	00b705a3          	sb	a1,11(a4)
   10b84:	00b70523          	sb	a1,10(a4)
   10b88:	00b704a3          	sb	a1,9(a4)
   10b8c:	00b70423          	sb	a1,8(a4)
   10b90:	00b703a3          	sb	a1,7(a4)
   10b94:	00b70323          	sb	a1,6(a4)
   10b98:	00b702a3          	sb	a1,5(a4)
   10b9c:	00b70223          	sb	a1,4(a4)
   10ba0:	00b701a3          	sb	a1,3(a4)
   10ba4:	00b70123          	sb	a1,2(a4)
   10ba8:	00b700a3          	sb	a1,1(a4)
   10bac:	00b70023          	sb	a1,0(a4)
   10bb0:	00008067          	jalr	zero,0(ra)
   10bb4:	0ff5f593          	andi	a1,a1,255
   10bb8:	00859693          	slli	a3,a1,0x8
   10bbc:	00d5e5b3          	or	a1,a1,a3
   10bc0:	01059693          	slli	a3,a1,0x10
   10bc4:	00d5e5b3          	or	a1,a1,a3
   10bc8:	02059693          	slli	a3,a1,0x20
   10bcc:	00d5e5b3          	or	a1,a1,a3
   10bd0:	f6dff06f          	jal	zero,10b3c <memset+0x18>
   10bd4:	00279693          	slli	a3,a5,0x2
   10bd8:	00000297          	auipc	t0,0x0
   10bdc:	005686b3          	add	a3,a3,t0
   10be0:	00008293          	addi	t0,ra,0
   10be4:	f98680e7          	jalr	ra,-104(a3)
   10be8:	00028093          	addi	ra,t0,0 # 10bd8 <memset+0xb4>
   10bec:	ff078793          	addi	a5,a5,-16
   10bf0:	40f70733          	sub	a4,a4,a5
   10bf4:	00f60633          	add	a2,a2,a5
   10bf8:	f6c374e3          	bgeu	t1,a2,10b60 <memset+0x3c>
   10bfc:	f3dff06f          	jal	zero,10b38 <memset+0x14>

0000000000010c00 <strlen>:
   10c00:	00757793          	andi	a5,a0,7
   10c04:	00050713          	addi	a4,a0,0
   10c08:	08079063          	bne	a5,zero,10c88 <strlen+0x88>
   10c0c:	7f7f87b7          	lui	a5,0x7f7f8
   10c10:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <__BSS_END__+0x7f7e4007>
   10c14:	02079693          	slli	a3,a5,0x20
   10c18:	00f686b3          	add	a3,a3,a5
   10c1c:	fff00593          	addi	a1,zero,-1
   10c20:	00073603          	ld	a2,0(a4)
   10c24:	00870713          	addi	a4,a4,8
   10c28:	00d677b3          	and	a5,a2,a3
   10c2c:	00d787b3          	add	a5,a5,a3
   10c30:	00c7e7b3          	or	a5,a5,a2
   10c34:	00d7e7b3          	or	a5,a5,a3
   10c38:	feb784e3          	beq	a5,a1,10c20 <strlen+0x20>
   10c3c:	ff874783          	lbu	a5,-8(a4)
   10c40:	40a706b3          	sub	a3,a4,a0
   10c44:	06078463          	beq	a5,zero,10cac <strlen+0xac>
   10c48:	ff974783          	lbu	a5,-7(a4)
   10c4c:	04078c63          	beq	a5,zero,10ca4 <strlen+0xa4>
   10c50:	ffa74783          	lbu	a5,-6(a4)
   10c54:	06078463          	beq	a5,zero,10cbc <strlen+0xbc>
   10c58:	ffb74783          	lbu	a5,-5(a4)
   10c5c:	04078c63          	beq	a5,zero,10cb4 <strlen+0xb4>
   10c60:	ffc74783          	lbu	a5,-4(a4)
   10c64:	06078063          	beq	a5,zero,10cc4 <strlen+0xc4>
   10c68:	ffd74783          	lbu	a5,-3(a4)
   10c6c:	06078063          	beq	a5,zero,10ccc <strlen+0xcc>
   10c70:	ffe74783          	lbu	a5,-2(a4)
   10c74:	00f03533          	sltu	a0,zero,a5
   10c78:	00d50533          	add	a0,a0,a3
   10c7c:	ffe50513          	addi	a0,a0,-2
   10c80:	00008067          	jalr	zero,0(ra)
   10c84:	f80684e3          	beq	a3,zero,10c0c <strlen+0xc>
   10c88:	00074783          	lbu	a5,0(a4)
   10c8c:	00170713          	addi	a4,a4,1
   10c90:	00777693          	andi	a3,a4,7
   10c94:	fe0798e3          	bne	a5,zero,10c84 <strlen+0x84>
   10c98:	40a70733          	sub	a4,a4,a0
   10c9c:	fff70513          	addi	a0,a4,-1
   10ca0:	00008067          	jalr	zero,0(ra)
   10ca4:	ff968513          	addi	a0,a3,-7
   10ca8:	00008067          	jalr	zero,0(ra)
   10cac:	ff868513          	addi	a0,a3,-8
   10cb0:	00008067          	jalr	zero,0(ra)
   10cb4:	ffb68513          	addi	a0,a3,-5
   10cb8:	00008067          	jalr	zero,0(ra)
   10cbc:	ffa68513          	addi	a0,a3,-6
   10cc0:	00008067          	jalr	zero,0(ra)
   10cc4:	ffc68513          	addi	a0,a3,-4
   10cc8:	00008067          	jalr	zero,0(ra)
   10ccc:	ffd68513          	addi	a0,a3,-3
   10cd0:	00008067          	jalr	zero,0(ra)

0000000000010cd4 <__call_exitprocs>:
   10cd4:	fb010113          	addi	sp,sp,-80
   10cd8:	03413023          	sd	s4,32(sp)
   10cdc:	03213823          	sd	s2,48(sp)
   10ce0:	1b01b903          	ld	s2,432(gp) # 139c8 <__atexit>
   10ce4:	04113423          	sd	ra,72(sp)
   10ce8:	06090e63          	beq	s2,zero,10d64 <__call_exitprocs+0x90>
   10cec:	03313423          	sd	s3,40(sp)
   10cf0:	01513c23          	sd	s5,24(sp)
   10cf4:	01613823          	sd	s6,16(sp)
   10cf8:	01713423          	sd	s7,8(sp)
   10cfc:	04813023          	sd	s0,64(sp)
   10d00:	02913c23          	sd	s1,56(sp)
   10d04:	01813023          	sd	s8,0(sp)
   10d08:	00050b13          	addi	s6,a0,0
   10d0c:	00058b93          	addi	s7,a1,0
   10d10:	fff00993          	addi	s3,zero,-1
   10d14:	00100a93          	addi	s5,zero,1
   10d18:	00892403          	lw	s0,8(s2)
   10d1c:	fff4041b          	addiw	s0,s0,-1
   10d20:	02044463          	blt	s0,zero,10d48 <__call_exitprocs+0x74>
   10d24:	01090493          	addi	s1,s2,16
   10d28:	00341793          	slli	a5,s0,0x3
   10d2c:	00f484b3          	add	s1,s1,a5
   10d30:	040b8463          	beq	s7,zero,10d78 <__call_exitprocs+0xa4>
   10d34:	2004b783          	ld	a5,512(s1)
   10d38:	05778063          	beq	a5,s7,10d78 <__call_exitprocs+0xa4>
   10d3c:	fff4041b          	addiw	s0,s0,-1
   10d40:	ff848493          	addi	s1,s1,-8
   10d44:	ff3418e3          	bne	s0,s3,10d34 <__call_exitprocs+0x60>
   10d48:	04013403          	ld	s0,64(sp)
   10d4c:	03813483          	ld	s1,56(sp)
   10d50:	02813983          	ld	s3,40(sp)
   10d54:	01813a83          	ld	s5,24(sp)
   10d58:	01013b03          	ld	s6,16(sp)
   10d5c:	00813b83          	ld	s7,8(sp)
   10d60:	00013c03          	ld	s8,0(sp)
   10d64:	04813083          	ld	ra,72(sp)
   10d68:	03013903          	ld	s2,48(sp)
   10d6c:	02013a03          	ld	s4,32(sp)
   10d70:	05010113          	addi	sp,sp,80
   10d74:	00008067          	jalr	zero,0(ra)
   10d78:	00892783          	lw	a5,8(s2)
   10d7c:	0004b683          	ld	a3,0(s1)
   10d80:	fff7879b          	addiw	a5,a5,-1
   10d84:	06878a63          	beq	a5,s0,10df8 <__call_exitprocs+0x124>
   10d88:	0004b023          	sd	zero,0(s1)
   10d8c:	02068663          	beq	a3,zero,10db8 <__call_exitprocs+0xe4>
   10d90:	31092783          	lw	a5,784(s2)
   10d94:	008a973b          	sllw	a4,s5,s0
   10d98:	00892c03          	lw	s8,8(s2)
   10d9c:	00e7f7b3          	and	a5,a5,a4
   10da0:	02079463          	bne	a5,zero,10dc8 <__call_exitprocs+0xf4>
   10da4:	000680e7          	jalr	ra,0(a3)
   10da8:	00892703          	lw	a4,8(s2)
   10dac:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10db0:	03871e63          	bne	a4,s8,10dec <__call_exitprocs+0x118>
   10db4:	03279c63          	bne	a5,s2,10dec <__call_exitprocs+0x118>
   10db8:	fff4041b          	addiw	s0,s0,-1
   10dbc:	ff848493          	addi	s1,s1,-8
   10dc0:	f73418e3          	bne	s0,s3,10d30 <__call_exitprocs+0x5c>
   10dc4:	f85ff06f          	jal	zero,10d48 <__call_exitprocs+0x74>
   10dc8:	31492783          	lw	a5,788(s2)
   10dcc:	1004b583          	ld	a1,256(s1)
   10dd0:	00f77733          	and	a4,a4,a5
   10dd4:	02071663          	bne	a4,zero,10e00 <__call_exitprocs+0x12c>
   10dd8:	000b0513          	addi	a0,s6,0
   10ddc:	000680e7          	jalr	ra,0(a3)
   10de0:	00892703          	lw	a4,8(s2)
   10de4:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10de8:	fd8706e3          	beq	a4,s8,10db4 <__call_exitprocs+0xe0>
   10dec:	f4078ee3          	beq	a5,zero,10d48 <__call_exitprocs+0x74>
   10df0:	00078913          	addi	s2,a5,0
   10df4:	f25ff06f          	jal	zero,10d18 <__call_exitprocs+0x44>
   10df8:	00892423          	sw	s0,8(s2)
   10dfc:	f91ff06f          	jal	zero,10d8c <__call_exitprocs+0xb8>
   10e00:	00058513          	addi	a0,a1,0
   10e04:	000680e7          	jalr	ra,0(a3)
   10e08:	fa1ff06f          	jal	zero,10da8 <__call_exitprocs+0xd4>

0000000000010e0c <atexit>:
   10e0c:	00050593          	addi	a1,a0,0
   10e10:	00000693          	addi	a3,zero,0
   10e14:	00000613          	addi	a2,zero,0
   10e18:	00000513          	addi	a0,zero,0
   10e1c:	2340106f          	jal	zero,12050 <__register_exitproc>

0000000000010e20 <_malloc_trim_r>:
   10e20:	fd010113          	addi	sp,sp,-48
   10e24:	01213823          	sd	s2,16(sp)
   10e28:	00013937          	lui	s2,0x13
   10e2c:	02813023          	sd	s0,32(sp)
   10e30:	00913c23          	sd	s1,24(sp)
   10e34:	01313423          	sd	s3,8(sp)
   10e38:	00058413          	addi	s0,a1,0
   10e3c:	02113423          	sd	ra,40(sp)
   10e40:	00050993          	addi	s3,a0,0
   10e44:	18890913          	addi	s2,s2,392 # 13188 <__malloc_av_>
   10e48:	4e5000ef          	jal	ra,11b2c <__malloc_lock>
   10e4c:	01093783          	ld	a5,16(s2)
   10e50:	00001737          	lui	a4,0x1
   10e54:	0087b483          	ld	s1,8(a5)
   10e58:	ffc4f493          	andi	s1,s1,-4
   10e5c:	7ff48793          	addi	a5,s1,2047
   10e60:	7e078793          	addi	a5,a5,2016
   10e64:	40878433          	sub	s0,a5,s0
   10e68:	00c45413          	srli	s0,s0,0xc
   10e6c:	fff40413          	addi	s0,s0,-1
   10e70:	00c41413          	slli	s0,s0,0xc
   10e74:	00e44e63          	blt	s0,a4,10e90 <_malloc_trim_r+0x70>
   10e78:	00000593          	addi	a1,zero,0
   10e7c:	00098513          	addi	a0,s3,0
   10e80:	118010ef          	jal	ra,11f98 <_sbrk_r>
   10e84:	01093783          	ld	a5,16(s2)
   10e88:	009787b3          	add	a5,a5,s1
   10e8c:	02f50663          	beq	a0,a5,10eb8 <_malloc_trim_r+0x98>
   10e90:	00098513          	addi	a0,s3,0
   10e94:	49d000ef          	jal	ra,11b30 <__malloc_unlock>
   10e98:	02813083          	ld	ra,40(sp)
   10e9c:	02013403          	ld	s0,32(sp)
   10ea0:	01813483          	ld	s1,24(sp)
   10ea4:	01013903          	ld	s2,16(sp)
   10ea8:	00813983          	ld	s3,8(sp)
   10eac:	00000513          	addi	a0,zero,0
   10eb0:	03010113          	addi	sp,sp,48
   10eb4:	00008067          	jalr	zero,0(ra)
   10eb8:	408005b3          	sub	a1,zero,s0
   10ebc:	00098513          	addi	a0,s3,0
   10ec0:	0d8010ef          	jal	ra,11f98 <_sbrk_r>
   10ec4:	fff00793          	addi	a5,zero,-1
   10ec8:	04f50463          	beq	a0,a5,10f10 <_malloc_trim_r+0xf0>
   10ecc:	01093683          	ld	a3,16(s2)
   10ed0:	4201a783          	lw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   10ed4:	408484b3          	sub	s1,s1,s0
   10ed8:	0014e493          	ori	s1,s1,1
   10edc:	00098513          	addi	a0,s3,0
   10ee0:	408787bb          	subw	a5,a5,s0
   10ee4:	0096b423          	sd	s1,8(a3)
   10ee8:	42f1a023          	sw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   10eec:	445000ef          	jal	ra,11b30 <__malloc_unlock>
   10ef0:	02813083          	ld	ra,40(sp)
   10ef4:	02013403          	ld	s0,32(sp)
   10ef8:	01813483          	ld	s1,24(sp)
   10efc:	01013903          	ld	s2,16(sp)
   10f00:	00813983          	ld	s3,8(sp)
   10f04:	00100513          	addi	a0,zero,1
   10f08:	03010113          	addi	sp,sp,48
   10f0c:	00008067          	jalr	zero,0(ra)
   10f10:	00000593          	addi	a1,zero,0
   10f14:	00098513          	addi	a0,s3,0
   10f18:	080010ef          	jal	ra,11f98 <_sbrk_r>
   10f1c:	01093703          	ld	a4,16(s2)
   10f20:	01f00693          	addi	a3,zero,31
   10f24:	40e507b3          	sub	a5,a0,a4
   10f28:	f6f6d4e3          	bge	a3,a5,10e90 <_malloc_trim_r+0x70>
   10f2c:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   10f30:	0017e793          	ori	a5,a5,1
   10f34:	40c50533          	sub	a0,a0,a2
   10f38:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   10f3c:	42a1a023          	sw	a0,1056(gp) # 13c38 <__malloc_current_mallinfo>
   10f40:	f51ff06f          	jal	zero,10e90 <_malloc_trim_r+0x70>

0000000000010f44 <_free_r>:
   10f44:	12058863          	beq	a1,zero,11074 <_free_r+0x130>
   10f48:	fe010113          	addi	sp,sp,-32
   10f4c:	00813823          	sd	s0,16(sp)
   10f50:	00b13423          	sd	a1,8(sp)
   10f54:	00050413          	addi	s0,a0,0
   10f58:	00113c23          	sd	ra,24(sp)
   10f5c:	3d1000ef          	jal	ra,11b2c <__malloc_lock>
   10f60:	00813583          	ld	a1,8(sp)
   10f64:	00013837          	lui	a6,0x13
   10f68:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   10f6c:	ff85b503          	ld	a0,-8(a1)
   10f70:	ff058713          	addi	a4,a1,-16
   10f74:	01083883          	ld	a7,16(a6)
   10f78:	ffe57793          	andi	a5,a0,-2
   10f7c:	00f70633          	add	a2,a4,a5
   10f80:	00863683          	ld	a3,8(a2)
   10f84:	00157313          	andi	t1,a0,1
   10f88:	ffc6f693          	andi	a3,a3,-4
   10f8c:	18c88e63          	beq	a7,a2,11128 <_free_r+0x1e4>
   10f90:	00d63423          	sd	a3,8(a2)
   10f94:	00d608b3          	add	a7,a2,a3
   10f98:	0088b883          	ld	a7,8(a7)
   10f9c:	0018f893          	andi	a7,a7,1
   10fa0:	08031e63          	bne	t1,zero,1103c <_free_r+0xf8>
   10fa4:	ff05b303          	ld	t1,-16(a1)
   10fa8:	000135b7          	lui	a1,0x13
   10fac:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   10fb0:	40670733          	sub	a4,a4,t1
   10fb4:	01073503          	ld	a0,16(a4)
   10fb8:	006787b3          	add	a5,a5,t1
   10fbc:	14b50063          	beq	a0,a1,110fc <_free_r+0x1b8>
   10fc0:	01873303          	ld	t1,24(a4)
   10fc4:	00653c23          	sd	t1,24(a0)
   10fc8:	00a33823          	sd	a0,16(t1)
   10fcc:	1a088263          	beq	a7,zero,11170 <_free_r+0x22c>
   10fd0:	0017e693          	ori	a3,a5,1
   10fd4:	00d73423          	sd	a3,8(a4)
   10fd8:	00f63023          	sd	a5,0(a2)
   10fdc:	1ff00693          	addi	a3,zero,511
   10fe0:	0af6e663          	bltu	a3,a5,1108c <_free_r+0x148>
   10fe4:	0037d793          	srli	a5,a5,0x3
   10fe8:	00179693          	slli	a3,a5,0x1
   10fec:	0026869b          	addiw	a3,a3,2
   10ff0:	00369693          	slli	a3,a3,0x3
   10ff4:	00883503          	ld	a0,8(a6)
   10ff8:	00d806b3          	add	a3,a6,a3
   10ffc:	0006b583          	ld	a1,0(a3)
   11000:	4027d61b          	sraiw	a2,a5,0x2
   11004:	00100793          	addi	a5,zero,1
   11008:	00c797b3          	sll	a5,a5,a2
   1100c:	00a7e7b3          	or	a5,a5,a0
   11010:	ff068613          	addi	a2,a3,-16
   11014:	00b73823          	sd	a1,16(a4)
   11018:	00c73c23          	sd	a2,24(a4)
   1101c:	00f83423          	sd	a5,8(a6)
   11020:	00e6b023          	sd	a4,0(a3)
   11024:	00e5bc23          	sd	a4,24(a1)
   11028:	00040513          	addi	a0,s0,0
   1102c:	01013403          	ld	s0,16(sp)
   11030:	01813083          	ld	ra,24(sp)
   11034:	02010113          	addi	sp,sp,32
   11038:	2f90006f          	jal	zero,11b30 <__malloc_unlock>
   1103c:	02089e63          	bne	a7,zero,11078 <_free_r+0x134>
   11040:	000135b7          	lui	a1,0x13
   11044:	00d787b3          	add	a5,a5,a3
   11048:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   1104c:	01063683          	ld	a3,16(a2)
   11050:	0017e893          	ori	a7,a5,1
   11054:	00f70533          	add	a0,a4,a5
   11058:	16b68663          	beq	a3,a1,111c4 <_free_r+0x280>
   1105c:	01863603          	ld	a2,24(a2)
   11060:	00c6bc23          	sd	a2,24(a3)
   11064:	00d63823          	sd	a3,16(a2)
   11068:	01173423          	sd	a7,8(a4)
   1106c:	00f53023          	sd	a5,0(a0)
   11070:	f6dff06f          	jal	zero,10fdc <_free_r+0x98>
   11074:	00008067          	jalr	zero,0(ra)
   11078:	00156513          	ori	a0,a0,1
   1107c:	fea5bc23          	sd	a0,-8(a1)
   11080:	00f63023          	sd	a5,0(a2)
   11084:	1ff00693          	addi	a3,zero,511
   11088:	f4f6fee3          	bgeu	a3,a5,10fe4 <_free_r+0xa0>
   1108c:	0097d693          	srli	a3,a5,0x9
   11090:	00400613          	addi	a2,zero,4
   11094:	0ed66263          	bltu	a2,a3,11178 <_free_r+0x234>
   11098:	0067d693          	srli	a3,a5,0x6
   1109c:	00169593          	slli	a1,a3,0x1
   110a0:	0725859b          	addiw	a1,a1,114
   110a4:	00359593          	slli	a1,a1,0x3
   110a8:	0386861b          	addiw	a2,a3,56
   110ac:	00b805b3          	add	a1,a6,a1
   110b0:	0005b683          	ld	a3,0(a1)
   110b4:	ff058593          	addi	a1,a1,-16
   110b8:	00d59863          	bne	a1,a3,110c8 <_free_r+0x184>
   110bc:	1240006f          	jal	zero,111e0 <_free_r+0x29c>
   110c0:	0106b683          	ld	a3,16(a3)
   110c4:	00d58863          	beq	a1,a3,110d4 <_free_r+0x190>
   110c8:	0086b603          	ld	a2,8(a3)
   110cc:	ffc67613          	andi	a2,a2,-4
   110d0:	fec7e8e3          	bltu	a5,a2,110c0 <_free_r+0x17c>
   110d4:	0186b583          	ld	a1,24(a3)
   110d8:	00b73c23          	sd	a1,24(a4)
   110dc:	00d73823          	sd	a3,16(a4)
   110e0:	00040513          	addi	a0,s0,0
   110e4:	01013403          	ld	s0,16(sp)
   110e8:	01813083          	ld	ra,24(sp)
   110ec:	00e5b823          	sd	a4,16(a1)
   110f0:	00e6bc23          	sd	a4,24(a3)
   110f4:	02010113          	addi	sp,sp,32
   110f8:	2390006f          	jal	zero,11b30 <__malloc_unlock>
   110fc:	0a089263          	bne	a7,zero,111a0 <_free_r+0x25c>
   11100:	01863583          	ld	a1,24(a2)
   11104:	01063603          	ld	a2,16(a2)
   11108:	00f686b3          	add	a3,a3,a5
   1110c:	0016e793          	ori	a5,a3,1
   11110:	00b63c23          	sd	a1,24(a2)
   11114:	00c5b823          	sd	a2,16(a1)
   11118:	00f73423          	sd	a5,8(a4)
   1111c:	00d70733          	add	a4,a4,a3
   11120:	00d73023          	sd	a3,0(a4)
   11124:	f05ff06f          	jal	zero,11028 <_free_r+0xe4>
   11128:	00d786b3          	add	a3,a5,a3
   1112c:	02031063          	bne	t1,zero,1114c <_free_r+0x208>
   11130:	ff05b783          	ld	a5,-16(a1)
   11134:	40f70733          	sub	a4,a4,a5
   11138:	01073603          	ld	a2,16(a4)
   1113c:	00f686b3          	add	a3,a3,a5
   11140:	01873783          	ld	a5,24(a4)
   11144:	00f63c23          	sd	a5,24(a2)
   11148:	00c7b823          	sd	a2,16(a5)
   1114c:	0016e613          	ori	a2,a3,1
   11150:	1981b783          	ld	a5,408(gp) # 139b0 <__malloc_trim_threshold>
   11154:	00c73423          	sd	a2,8(a4)
   11158:	00e83823          	sd	a4,16(a6)
   1115c:	ecf6e6e3          	bltu	a3,a5,11028 <_free_r+0xe4>
   11160:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   11164:	00040513          	addi	a0,s0,0
   11168:	cb9ff0ef          	jal	ra,10e20 <_malloc_trim_r>
   1116c:	ebdff06f          	jal	zero,11028 <_free_r+0xe4>
   11170:	00d787b3          	add	a5,a5,a3
   11174:	ed9ff06f          	jal	zero,1104c <_free_r+0x108>
   11178:	01400613          	addi	a2,zero,20
   1117c:	02d67a63          	bgeu	a2,a3,111b0 <_free_r+0x26c>
   11180:	05400613          	addi	a2,zero,84
   11184:	06d66c63          	bltu	a2,a3,111fc <_free_r+0x2b8>
   11188:	00c7d693          	srli	a3,a5,0xc
   1118c:	00169593          	slli	a1,a3,0x1
   11190:	0de5859b          	addiw	a1,a1,222
   11194:	00359593          	slli	a1,a1,0x3
   11198:	06e6861b          	addiw	a2,a3,110
   1119c:	f11ff06f          	jal	zero,110ac <_free_r+0x168>
   111a0:	0017e693          	ori	a3,a5,1
   111a4:	00d73423          	sd	a3,8(a4)
   111a8:	00f63023          	sd	a5,0(a2)
   111ac:	e7dff06f          	jal	zero,11028 <_free_r+0xe4>
   111b0:	00169593          	slli	a1,a3,0x1
   111b4:	0b85859b          	addiw	a1,a1,184
   111b8:	00359593          	slli	a1,a1,0x3
   111bc:	05b6861b          	addiw	a2,a3,91
   111c0:	eedff06f          	jal	zero,110ac <_free_r+0x168>
   111c4:	02e83423          	sd	a4,40(a6)
   111c8:	02e83023          	sd	a4,32(a6)
   111cc:	00b73c23          	sd	a1,24(a4)
   111d0:	00b73823          	sd	a1,16(a4)
   111d4:	01173423          	sd	a7,8(a4)
   111d8:	00f53023          	sd	a5,0(a0)
   111dc:	e4dff06f          	jal	zero,11028 <_free_r+0xe4>
   111e0:	00883503          	ld	a0,8(a6)
   111e4:	4026561b          	sraiw	a2,a2,0x2
   111e8:	00100793          	addi	a5,zero,1
   111ec:	00c797b3          	sll	a5,a5,a2
   111f0:	00a7e7b3          	or	a5,a5,a0
   111f4:	00f83423          	sd	a5,8(a6)
   111f8:	ee1ff06f          	jal	zero,110d8 <_free_r+0x194>
   111fc:	15400613          	addi	a2,zero,340
   11200:	00d66e63          	bltu	a2,a3,1121c <_free_r+0x2d8>
   11204:	00f7d693          	srli	a3,a5,0xf
   11208:	00169593          	slli	a1,a3,0x1
   1120c:	0f05859b          	addiw	a1,a1,240
   11210:	00359593          	slli	a1,a1,0x3
   11214:	0776861b          	addiw	a2,a3,119
   11218:	e95ff06f          	jal	zero,110ac <_free_r+0x168>
   1121c:	55400613          	addi	a2,zero,1364
   11220:	00d66e63          	bltu	a2,a3,1123c <_free_r+0x2f8>
   11224:	0127d693          	srli	a3,a5,0x12
   11228:	00169593          	slli	a1,a3,0x1
   1122c:	0fa5859b          	addiw	a1,a1,250
   11230:	00359593          	slli	a1,a1,0x3
   11234:	07c6861b          	addiw	a2,a3,124
   11238:	e75ff06f          	jal	zero,110ac <_free_r+0x168>
   1123c:	7f000593          	addi	a1,zero,2032
   11240:	07e00613          	addi	a2,zero,126
   11244:	e69ff06f          	jal	zero,110ac <_free_r+0x168>

0000000000011248 <_malloc_r>:
   11248:	fa010113          	addi	sp,sp,-96
   1124c:	04813823          	sd	s0,80(sp)
   11250:	04113c23          	sd	ra,88(sp)
   11254:	01758713          	addi	a4,a1,23
   11258:	02e00793          	addi	a5,zero,46
   1125c:	00050413          	addi	s0,a0,0
   11260:	08e7ee63          	bltu	a5,a4,112fc <_malloc_r+0xb4>
   11264:	02000713          	addi	a4,zero,32
   11268:	06b76c63          	bltu	a4,a1,112e0 <_malloc_r+0x98>
   1126c:	0c1000ef          	jal	ra,11b2c <__malloc_lock>
   11270:	02000713          	addi	a4,zero,32
   11274:	05000693          	addi	a3,zero,80
   11278:	00400893          	addi	a7,zero,4
   1127c:	00013837          	lui	a6,0x13
   11280:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11284:	00d806b3          	add	a3,a6,a3
   11288:	0086b783          	ld	a5,8(a3)
   1128c:	ff068613          	addi	a2,a3,-16
   11290:	48c78063          	beq	a5,a2,11710 <_malloc_r+0x4c8>
   11294:	0087b703          	ld	a4,8(a5)
   11298:	0187b603          	ld	a2,24(a5)
   1129c:	0107b583          	ld	a1,16(a5)
   112a0:	ffc77713          	andi	a4,a4,-4
   112a4:	00e78733          	add	a4,a5,a4
   112a8:	00873683          	ld	a3,8(a4)
   112ac:	00c5bc23          	sd	a2,24(a1)
   112b0:	00b63823          	sd	a1,16(a2)
   112b4:	0016e693          	ori	a3,a3,1
   112b8:	00040513          	addi	a0,s0,0
   112bc:	00d73423          	sd	a3,8(a4)
   112c0:	00f13423          	sd	a5,8(sp)
   112c4:	06d000ef          	jal	ra,11b30 <__malloc_unlock>
   112c8:	00813783          	ld	a5,8(sp)
   112cc:	05813083          	ld	ra,88(sp)
   112d0:	05013403          	ld	s0,80(sp)
   112d4:	01078513          	addi	a0,a5,16
   112d8:	06010113          	addi	sp,sp,96
   112dc:	00008067          	jalr	zero,0(ra)
   112e0:	00c00793          	addi	a5,zero,12
   112e4:	00f42023          	sw	a5,0(s0)
   112e8:	00000513          	addi	a0,zero,0
   112ec:	05813083          	ld	ra,88(sp)
   112f0:	05013403          	ld	s0,80(sp)
   112f4:	06010113          	addi	sp,sp,96
   112f8:	00008067          	jalr	zero,0(ra)
   112fc:	00100793          	addi	a5,zero,1
   11300:	ff077713          	andi	a4,a4,-16
   11304:	01f79793          	slli	a5,a5,0x1f
   11308:	fcf77ce3          	bgeu	a4,a5,112e0 <_malloc_r+0x98>
   1130c:	fcb76ae3          	bltu	a4,a1,112e0 <_malloc_r+0x98>
   11310:	00e13423          	sd	a4,8(sp)
   11314:	019000ef          	jal	ra,11b2c <__malloc_lock>
   11318:	00813703          	ld	a4,8(sp)
   1131c:	1f700793          	addi	a5,zero,503
   11320:	4ee7fa63          	bgeu	a5,a4,11814 <_malloc_r+0x5cc>
   11324:	00975793          	srli	a5,a4,0x9
   11328:	18078a63          	beq	a5,zero,114bc <_malloc_r+0x274>
   1132c:	00400693          	addi	a3,zero,4
   11330:	44f6ea63          	bltu	a3,a5,11784 <_malloc_r+0x53c>
   11334:	00675793          	srli	a5,a4,0x6
   11338:	0397889b          	addiw	a7,a5,57
   1133c:	0018951b          	slliw	a0,a7,0x1
   11340:	03878e1b          	addiw	t3,a5,56
   11344:	00351513          	slli	a0,a0,0x3
   11348:	00013837          	lui	a6,0x13
   1134c:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11350:	00a80533          	add	a0,a6,a0
   11354:	00853783          	ld	a5,8(a0)
   11358:	ff050513          	addi	a0,a0,-16
   1135c:	02f50863          	beq	a0,a5,1138c <_malloc_r+0x144>
   11360:	01f00313          	addi	t1,zero,31
   11364:	0140006f          	jal	zero,11378 <_malloc_r+0x130>
   11368:	0187b583          	ld	a1,24(a5)
   1136c:	36065263          	bge	a2,zero,116d0 <_malloc_r+0x488>
   11370:	00b50e63          	beq	a0,a1,1138c <_malloc_r+0x144>
   11374:	00058793          	addi	a5,a1,0
   11378:	0087b683          	ld	a3,8(a5)
   1137c:	ffc6f693          	andi	a3,a3,-4
   11380:	40e68633          	sub	a2,a3,a4
   11384:	fec352e3          	bge	t1,a2,11368 <_malloc_r+0x120>
   11388:	000e0893          	addi	a7,t3,0
   1138c:	02083783          	ld	a5,32(a6)
   11390:	00013e37          	lui	t3,0x13
   11394:	198e0e13          	addi	t3,t3,408 # 13198 <__malloc_av_+0x10>
   11398:	2fc78a63          	beq	a5,t3,1168c <_malloc_r+0x444>
   1139c:	0087b303          	ld	t1,8(a5)
   113a0:	01f00613          	addi	a2,zero,31
   113a4:	ffc37313          	andi	t1,t1,-4
   113a8:	40e306b3          	sub	a3,t1,a4
   113ac:	4ad64463          	blt	a2,a3,11854 <_malloc_r+0x60c>
   113b0:	03c83423          	sd	t3,40(a6)
   113b4:	03c83023          	sd	t3,32(a6)
   113b8:	4606da63          	bge	a3,zero,1182c <_malloc_r+0x5e4>
   113bc:	1ff00693          	addi	a3,zero,511
   113c0:	00883583          	ld	a1,8(a6)
   113c4:	3466ee63          	bltu	a3,t1,11720 <_malloc_r+0x4d8>
   113c8:	00335313          	srli	t1,t1,0x3
   113cc:	00131693          	slli	a3,t1,0x1
   113d0:	0026869b          	addiw	a3,a3,2
   113d4:	00369693          	slli	a3,a3,0x3
   113d8:	00d806b3          	add	a3,a6,a3
   113dc:	0006b503          	ld	a0,0(a3)
   113e0:	4023531b          	sraiw	t1,t1,0x2
   113e4:	00100613          	addi	a2,zero,1
   113e8:	00661633          	sll	a2,a2,t1
   113ec:	00c5e5b3          	or	a1,a1,a2
   113f0:	ff068613          	addi	a2,a3,-16
   113f4:	00a7b823          	sd	a0,16(a5)
   113f8:	00c7bc23          	sd	a2,24(a5)
   113fc:	00b83423          	sd	a1,8(a6)
   11400:	00f6b023          	sd	a5,0(a3)
   11404:	00f53c23          	sd	a5,24(a0)
   11408:	4028d79b          	sraiw	a5,a7,0x2
   1140c:	00100513          	addi	a0,zero,1
   11410:	00f51533          	sll	a0,a0,a5
   11414:	0aa5ec63          	bltu	a1,a0,114cc <_malloc_r+0x284>
   11418:	00b577b3          	and	a5,a0,a1
   1141c:	02079463          	bne	a5,zero,11444 <_malloc_r+0x1fc>
   11420:	00151513          	slli	a0,a0,0x1
   11424:	ffc8f893          	andi	a7,a7,-4
   11428:	00b577b3          	and	a5,a0,a1
   1142c:	0048889b          	addiw	a7,a7,4
   11430:	00079a63          	bne	a5,zero,11444 <_malloc_r+0x1fc>
   11434:	00151513          	slli	a0,a0,0x1
   11438:	00b577b3          	and	a5,a0,a1
   1143c:	0048889b          	addiw	a7,a7,4
   11440:	fe078ae3          	beq	a5,zero,11434 <_malloc_r+0x1ec>
   11444:	01f00e93          	addi	t4,zero,31
   11448:	00189f13          	slli	t5,a7,0x1
   1144c:	002f0f1b          	addiw	t5,t5,2
   11450:	003f1f13          	slli	t5,t5,0x3
   11454:	ff0f0f13          	addi	t5,t5,-16
   11458:	01e80f33          	add	t5,a6,t5
   1145c:	000f0313          	addi	t1,t5,0
   11460:	01833683          	ld	a3,24(t1)
   11464:	00088f93          	addi	t6,a7,0
   11468:	34d30263          	beq	t1,a3,117ac <_malloc_r+0x564>
   1146c:	0086b603          	ld	a2,8(a3)
   11470:	00068793          	addi	a5,a3,0
   11474:	0186b683          	ld	a3,24(a3)
   11478:	ffc67613          	andi	a2,a2,-4
   1147c:	40e605b3          	sub	a1,a2,a4
   11480:	34bec263          	blt	t4,a1,117c4 <_malloc_r+0x57c>
   11484:	fe05c2e3          	blt	a1,zero,11468 <_malloc_r+0x220>
   11488:	00c78633          	add	a2,a5,a2
   1148c:	00863703          	ld	a4,8(a2)
   11490:	0107b583          	ld	a1,16(a5)
   11494:	00040513          	addi	a0,s0,0
   11498:	00176713          	ori	a4,a4,1
   1149c:	00e63423          	sd	a4,8(a2)
   114a0:	00d5bc23          	sd	a3,24(a1)
   114a4:	00b6b823          	sd	a1,16(a3)
   114a8:	00f13423          	sd	a5,8(sp)
   114ac:	684000ef          	jal	ra,11b30 <__malloc_unlock>
   114b0:	00813783          	ld	a5,8(sp)
   114b4:	01078513          	addi	a0,a5,16
   114b8:	e35ff06f          	jal	zero,112ec <_malloc_r+0xa4>
   114bc:	40000513          	addi	a0,zero,1024
   114c0:	04000893          	addi	a7,zero,64
   114c4:	03f00e13          	addi	t3,zero,63
   114c8:	e81ff06f          	jal	zero,11348 <_malloc_r+0x100>
   114cc:	01083783          	ld	a5,16(a6)
   114d0:	0087b683          	ld	a3,8(a5)
   114d4:	ffc6f893          	andi	a7,a3,-4
   114d8:	40e88633          	sub	a2,a7,a4
   114dc:	00e8e663          	bltu	a7,a4,114e8 <_malloc_r+0x2a0>
   114e0:	02062693          	slti	a3,a2,32
   114e4:	1a068863          	beq	a3,zero,11694 <_malloc_r+0x44c>
   114e8:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   114ec:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   114f0:	fff00693          	addi	a3,zero,-1
   114f4:	00b705b3          	add	a1,a4,a1
   114f8:	44d60663          	beq	a2,a3,11944 <_malloc_r+0x6fc>
   114fc:	000016b7          	lui	a3,0x1
   11500:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   11504:	00d585b3          	add	a1,a1,a3
   11508:	fffff6b7          	lui	a3,0xfffff
   1150c:	00d5f5b3          	and	a1,a1,a3
   11510:	00040513          	addi	a0,s0,0
   11514:	03013423          	sd	a6,40(sp)
   11518:	02f13023          	sd	a5,32(sp)
   1151c:	00e13c23          	sd	a4,24(sp)
   11520:	01113823          	sd	a7,16(sp)
   11524:	00b13423          	sd	a1,8(sp)
   11528:	271000ef          	jal	ra,11f98 <_sbrk_r>
   1152c:	fff00693          	addi	a3,zero,-1
   11530:	00813583          	ld	a1,8(sp)
   11534:	01013883          	ld	a7,16(sp)
   11538:	01813703          	ld	a4,24(sp)
   1153c:	02013783          	ld	a5,32(sp)
   11540:	02813803          	ld	a6,40(sp)
   11544:	00050313          	addi	t1,a0,0
   11548:	36d50663          	beq	a0,a3,118b4 <_malloc_r+0x66c>
   1154c:	011786b3          	add	a3,a5,a7
   11550:	36d56063          	bltu	a0,a3,118b0 <_malloc_r+0x668>
   11554:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11558:	000e2603          	lw	a2,0(t3)
   1155c:	00b6063b          	addw	a2,a2,a1
   11560:	00ce2023          	sw	a2,0(t3)
   11564:	00060513          	addi	a0,a2,0
   11568:	4a668c63          	beq	a3,t1,11a20 <_malloc_r+0x7d8>
   1156c:	1901bf03          	ld	t5,400(gp) # 139a8 <__malloc_sbrk_base>
   11570:	fff00613          	addi	a2,zero,-1
   11574:	4ccf0463          	beq	t5,a2,11a3c <_malloc_r+0x7f4>
   11578:	40d306b3          	sub	a3,t1,a3
   1157c:	00a686bb          	addw	a3,a3,a0
   11580:	00de2023          	sw	a3,0(t3)
   11584:	00f37e93          	andi	t4,t1,15
   11588:	3c0e8e63          	beq	t4,zero,11964 <_malloc_r+0x71c>
   1158c:	ff037313          	andi	t1,t1,-16
   11590:	000016b7          	lui	a3,0x1
   11594:	01030313          	addi	t1,t1,16
   11598:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   1159c:	00b30633          	add	a2,t1,a1
   115a0:	41d685b3          	sub	a1,a3,t4
   115a4:	40c585b3          	sub	a1,a1,a2
   115a8:	03459593          	slli	a1,a1,0x34
   115ac:	0345d593          	srli	a1,a1,0x34
   115b0:	00040513          	addi	a0,s0,0
   115b4:	05c13023          	sd	t3,64(sp)
   115b8:	03013c23          	sd	a6,56(sp)
   115bc:	02f13823          	sd	a5,48(sp)
   115c0:	02e13423          	sd	a4,40(sp)
   115c4:	03113023          	sd	a7,32(sp)
   115c8:	00613c23          	sd	t1,24(sp)
   115cc:	01d13823          	sd	t4,16(sp)
   115d0:	00c13423          	sd	a2,8(sp)
   115d4:	04b13423          	sd	a1,72(sp)
   115d8:	1c1000ef          	jal	ra,11f98 <_sbrk_r>
   115dc:	00050693          	addi	a3,a0,0
   115e0:	fff00513          	addi	a0,zero,-1
   115e4:	00813603          	ld	a2,8(sp)
   115e8:	01013e83          	ld	t4,16(sp)
   115ec:	01813303          	ld	t1,24(sp)
   115f0:	02013883          	ld	a7,32(sp)
   115f4:	02813703          	ld	a4,40(sp)
   115f8:	03013783          	ld	a5,48(sp)
   115fc:	03813803          	ld	a6,56(sp)
   11600:	04013e03          	ld	t3,64(sp)
   11604:	48a68663          	beq	a3,a0,11a90 <_malloc_r+0x848>
   11608:	04813583          	ld	a1,72(sp)
   1160c:	0005851b          	addiw	a0,a1,0
   11610:	000e2603          	lw	a2,0(t3)
   11614:	406686b3          	sub	a3,a3,t1
   11618:	00b686b3          	add	a3,a3,a1
   1161c:	0016e693          	ori	a3,a3,1
   11620:	00683823          	sd	t1,16(a6)
   11624:	00a6063b          	addw	a2,a2,a0
   11628:	00d33423          	sd	a3,8(t1)
   1162c:	00ce2023          	sw	a2,0(t3)
   11630:	03078e63          	beq	a5,a6,1166c <_malloc_r+0x424>
   11634:	01f00513          	addi	a0,zero,31
   11638:	41157663          	bgeu	a0,a7,11a44 <_malloc_r+0x7fc>
   1163c:	0087b583          	ld	a1,8(a5)
   11640:	fe888693          	addi	a3,a7,-24
   11644:	ff06f693          	andi	a3,a3,-16
   11648:	0015f593          	andi	a1,a1,1
   1164c:	00d5e5b3          	or	a1,a1,a3
   11650:	00b7b423          	sd	a1,8(a5)
   11654:	00900893          	addi	a7,zero,9
   11658:	00d785b3          	add	a1,a5,a3
   1165c:	0115b423          	sd	a7,8(a1)
   11660:	0115b823          	sd	a7,16(a1)
   11664:	44d56863          	bltu	a0,a3,11ab4 <_malloc_r+0x86c>
   11668:	00833683          	ld	a3,8(t1)
   1166c:	1c01b583          	ld	a1,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   11670:	00c5f463          	bgeu	a1,a2,11678 <_malloc_r+0x430>
   11674:	1cc1b023          	sd	a2,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   11678:	1b81b583          	ld	a1,440(gp) # 139d0 <__malloc_max_total_mem>
   1167c:	00c5f463          	bgeu	a1,a2,11684 <_malloc_r+0x43c>
   11680:	1ac1bc23          	sd	a2,440(gp) # 139d0 <__malloc_max_total_mem>
   11684:	00030793          	addi	a5,t1,0
   11688:	2340006f          	jal	zero,118bc <_malloc_r+0x674>
   1168c:	00883583          	ld	a1,8(a6)
   11690:	d79ff06f          	jal	zero,11408 <_malloc_r+0x1c0>
   11694:	00176693          	ori	a3,a4,1
   11698:	00d7b423          	sd	a3,8(a5)
   1169c:	00e78733          	add	a4,a5,a4
   116a0:	00166613          	ori	a2,a2,1
   116a4:	00e83823          	sd	a4,16(a6)
   116a8:	00040513          	addi	a0,s0,0
   116ac:	00c73423          	sd	a2,8(a4)
   116b0:	00f13423          	sd	a5,8(sp)
   116b4:	47c000ef          	jal	ra,11b30 <__malloc_unlock>
   116b8:	00813783          	ld	a5,8(sp)
   116bc:	05813083          	ld	ra,88(sp)
   116c0:	05013403          	ld	s0,80(sp)
   116c4:	01078513          	addi	a0,a5,16
   116c8:	06010113          	addi	sp,sp,96
   116cc:	00008067          	jalr	zero,0(ra)
   116d0:	0107b603          	ld	a2,16(a5)
   116d4:	00d786b3          	add	a3,a5,a3
   116d8:	0086b703          	ld	a4,8(a3)
   116dc:	00b63c23          	sd	a1,24(a2)
   116e0:	00c5b823          	sd	a2,16(a1)
   116e4:	00176713          	ori	a4,a4,1
   116e8:	00040513          	addi	a0,s0,0
   116ec:	00e6b423          	sd	a4,8(a3)
   116f0:	00f13423          	sd	a5,8(sp)
   116f4:	43c000ef          	jal	ra,11b30 <__malloc_unlock>
   116f8:	00813783          	ld	a5,8(sp)
   116fc:	05813083          	ld	ra,88(sp)
   11700:	05013403          	ld	s0,80(sp)
   11704:	01078513          	addi	a0,a5,16
   11708:	06010113          	addi	sp,sp,96
   1170c:	00008067          	jalr	zero,0(ra)
   11710:	0186b783          	ld	a5,24(a3)
   11714:	0028889b          	addiw	a7,a7,2
   11718:	c6f68ae3          	beq	a3,a5,1138c <_malloc_r+0x144>
   1171c:	b79ff06f          	jal	zero,11294 <_malloc_r+0x4c>
   11720:	00935693          	srli	a3,t1,0x9
   11724:	00400613          	addi	a2,zero,4
   11728:	16d67863          	bgeu	a2,a3,11898 <_malloc_r+0x650>
   1172c:	01400613          	addi	a2,zero,20
   11730:	28d66e63          	bltu	a2,a3,119cc <_malloc_r+0x784>
   11734:	00169513          	slli	a0,a3,0x1
   11738:	0b85051b          	addiw	a0,a0,184
   1173c:	00351513          	slli	a0,a0,0x3
   11740:	05b6861b          	addiw	a2,a3,91
   11744:	00a80533          	add	a0,a6,a0
   11748:	00053683          	ld	a3,0(a0)
   1174c:	ff050513          	addi	a0,a0,-16
   11750:	00d51863          	bne	a0,a3,11760 <_malloc_r+0x518>
   11754:	1f80006f          	jal	zero,1194c <_malloc_r+0x704>
   11758:	0106b683          	ld	a3,16(a3)
   1175c:	00d50863          	beq	a0,a3,1176c <_malloc_r+0x524>
   11760:	0086b603          	ld	a2,8(a3)
   11764:	ffc67613          	andi	a2,a2,-4
   11768:	fec368e3          	bltu	t1,a2,11758 <_malloc_r+0x510>
   1176c:	0186b503          	ld	a0,24(a3)
   11770:	00a7bc23          	sd	a0,24(a5)
   11774:	00d7b823          	sd	a3,16(a5)
   11778:	00f53823          	sd	a5,16(a0)
   1177c:	00f6bc23          	sd	a5,24(a3)
   11780:	c89ff06f          	jal	zero,11408 <_malloc_r+0x1c0>
   11784:	01400693          	addi	a3,zero,20
   11788:	14f6fa63          	bgeu	a3,a5,118dc <_malloc_r+0x694>
   1178c:	05400693          	addi	a3,zero,84
   11790:	24f6ee63          	bltu	a3,a5,119ec <_malloc_r+0x7a4>
   11794:	00c75793          	srli	a5,a4,0xc
   11798:	06f7889b          	addiw	a7,a5,111
   1179c:	0018951b          	slliw	a0,a7,0x1
   117a0:	06e78e1b          	addiw	t3,a5,110
   117a4:	00351513          	slli	a0,a0,0x3
   117a8:	ba1ff06f          	jal	zero,11348 <_malloc_r+0x100>
   117ac:	001f8f9b          	addiw	t6,t6,1
   117b0:	003ff793          	andi	a5,t6,3
   117b4:	01030313          	addi	t1,t1,16
   117b8:	14078263          	beq	a5,zero,118fc <_malloc_r+0x6b4>
   117bc:	01833683          	ld	a3,24(t1)
   117c0:	ca9ff06f          	jal	zero,11468 <_malloc_r+0x220>
   117c4:	0107b503          	ld	a0,16(a5)
   117c8:	00176893          	ori	a7,a4,1
   117cc:	0117b423          	sd	a7,8(a5)
   117d0:	00d53c23          	sd	a3,24(a0)
   117d4:	00a6b823          	sd	a0,16(a3)
   117d8:	00e78733          	add	a4,a5,a4
   117dc:	02e83423          	sd	a4,40(a6)
   117e0:	02e83023          	sd	a4,32(a6)
   117e4:	0015e693          	ori	a3,a1,1
   117e8:	00c78633          	add	a2,a5,a2
   117ec:	01c73c23          	sd	t3,24(a4)
   117f0:	01c73823          	sd	t3,16(a4)
   117f4:	00d73423          	sd	a3,8(a4)
   117f8:	00040513          	addi	a0,s0,0
   117fc:	00b63023          	sd	a1,0(a2)
   11800:	00f13423          	sd	a5,8(sp)
   11804:	32c000ef          	jal	ra,11b30 <__malloc_unlock>
   11808:	00813783          	ld	a5,8(sp)
   1180c:	01078513          	addi	a0,a5,16
   11810:	addff06f          	jal	zero,112ec <_malloc_r+0xa4>
   11814:	00375893          	srli	a7,a4,0x3
   11818:	00189693          	slli	a3,a7,0x1
   1181c:	0026869b          	addiw	a3,a3,2
   11820:	00369693          	slli	a3,a3,0x3
   11824:	0008889b          	addiw	a7,a7,0
   11828:	a55ff06f          	jal	zero,1127c <_malloc_r+0x34>
   1182c:	00678333          	add	t1,a5,t1
   11830:	00833703          	ld	a4,8(t1)
   11834:	00040513          	addi	a0,s0,0
   11838:	00f13423          	sd	a5,8(sp)
   1183c:	00176713          	ori	a4,a4,1
   11840:	00e33423          	sd	a4,8(t1)
   11844:	2ec000ef          	jal	ra,11b30 <__malloc_unlock>
   11848:	00813783          	ld	a5,8(sp)
   1184c:	01078513          	addi	a0,a5,16
   11850:	a9dff06f          	jal	zero,112ec <_malloc_r+0xa4>
   11854:	00176613          	ori	a2,a4,1
   11858:	00c7b423          	sd	a2,8(a5)
   1185c:	00e78733          	add	a4,a5,a4
   11860:	02e83423          	sd	a4,40(a6)
   11864:	02e83023          	sd	a4,32(a6)
   11868:	0016e613          	ori	a2,a3,1
   1186c:	00678333          	add	t1,a5,t1
   11870:	01c73c23          	sd	t3,24(a4)
   11874:	01c73823          	sd	t3,16(a4)
   11878:	00c73423          	sd	a2,8(a4)
   1187c:	00040513          	addi	a0,s0,0
   11880:	00d33023          	sd	a3,0(t1)
   11884:	00f13423          	sd	a5,8(sp)
   11888:	2a8000ef          	jal	ra,11b30 <__malloc_unlock>
   1188c:	00813783          	ld	a5,8(sp)
   11890:	01078513          	addi	a0,a5,16
   11894:	a59ff06f          	jal	zero,112ec <_malloc_r+0xa4>
   11898:	00635693          	srli	a3,t1,0x6
   1189c:	00169513          	slli	a0,a3,0x1
   118a0:	0725051b          	addiw	a0,a0,114
   118a4:	00351513          	slli	a0,a0,0x3
   118a8:	0386861b          	addiw	a2,a3,56
   118ac:	e99ff06f          	jal	zero,11744 <_malloc_r+0x4fc>
   118b0:	15078e63          	beq	a5,a6,11a0c <_malloc_r+0x7c4>
   118b4:	01083783          	ld	a5,16(a6)
   118b8:	0087b683          	ld	a3,8(a5)
   118bc:	ffc6f693          	andi	a3,a3,-4
   118c0:	40e68633          	sub	a2,a3,a4
   118c4:	00e6e663          	bltu	a3,a4,118d0 <_malloc_r+0x688>
   118c8:	02062693          	slti	a3,a2,32
   118cc:	dc0684e3          	beq	a3,zero,11694 <_malloc_r+0x44c>
   118d0:	00040513          	addi	a0,s0,0
   118d4:	25c000ef          	jal	ra,11b30 <__malloc_unlock>
   118d8:	a11ff06f          	jal	zero,112e8 <_malloc_r+0xa0>
   118dc:	05c7889b          	addiw	a7,a5,92
   118e0:	0018951b          	slliw	a0,a7,0x1
   118e4:	05b78e1b          	addiw	t3,a5,91
   118e8:	00351513          	slli	a0,a0,0x3
   118ec:	a5dff06f          	jal	zero,11348 <_malloc_r+0x100>
   118f0:	010f3783          	ld	a5,16(t5)
   118f4:	fff8889b          	addiw	a7,a7,-1
   118f8:	23e79663          	bne	a5,t5,11b24 <_malloc_r+0x8dc>
   118fc:	0038f793          	andi	a5,a7,3
   11900:	ff0f0f13          	addi	t5,t5,-16
   11904:	fe0796e3          	bne	a5,zero,118f0 <_malloc_r+0x6a8>
   11908:	00883683          	ld	a3,8(a6)
   1190c:	fff54793          	xori	a5,a0,-1
   11910:	00d7f7b3          	and	a5,a5,a3
   11914:	00f83423          	sd	a5,8(a6)
   11918:	00151513          	slli	a0,a0,0x1
   1191c:	fff50693          	addi	a3,a0,-1
   11920:	baf6f6e3          	bgeu	a3,a5,114cc <_malloc_r+0x284>
   11924:	00f576b3          	and	a3,a0,a5
   11928:	00069a63          	bne	a3,zero,1193c <_malloc_r+0x6f4>
   1192c:	00151513          	slli	a0,a0,0x1
   11930:	00f576b3          	and	a3,a0,a5
   11934:	004f8f9b          	addiw	t6,t6,4
   11938:	fe068ae3          	beq	a3,zero,1192c <_malloc_r+0x6e4>
   1193c:	000f8893          	addi	a7,t6,0
   11940:	b09ff06f          	jal	zero,11448 <_malloc_r+0x200>
   11944:	02058593          	addi	a1,a1,32
   11948:	bc9ff06f          	jal	zero,11510 <_malloc_r+0x2c8>
   1194c:	4026561b          	sraiw	a2,a2,0x2
   11950:	00100313          	addi	t1,zero,1
   11954:	00c31633          	sll	a2,t1,a2
   11958:	00c5e5b3          	or	a1,a1,a2
   1195c:	00b83423          	sd	a1,8(a6)
   11960:	e11ff06f          	jal	zero,11770 <_malloc_r+0x528>
   11964:	00b30633          	add	a2,t1,a1
   11968:	40c005b3          	sub	a1,zero,a2
   1196c:	03459593          	slli	a1,a1,0x34
   11970:	0345d593          	srli	a1,a1,0x34
   11974:	00040513          	addi	a0,s0,0
   11978:	03c13c23          	sd	t3,56(sp)
   1197c:	03013823          	sd	a6,48(sp)
   11980:	02f13423          	sd	a5,40(sp)
   11984:	02e13023          	sd	a4,32(sp)
   11988:	01113c23          	sd	a7,24(sp)
   1198c:	00613823          	sd	t1,16(sp)
   11990:	00c13423          	sd	a2,8(sp)
   11994:	04b13023          	sd	a1,64(sp)
   11998:	600000ef          	jal	ra,11f98 <_sbrk_r>
   1199c:	00050693          	addi	a3,a0,0
   119a0:	fff00513          	addi	a0,zero,-1
   119a4:	01013303          	ld	t1,16(sp)
   119a8:	01813883          	ld	a7,24(sp)
   119ac:	02013703          	ld	a4,32(sp)
   119b0:	02813783          	ld	a5,40(sp)
   119b4:	03013803          	ld	a6,48(sp)
   119b8:	03813e03          	ld	t3,56(sp)
   119bc:	0ea68463          	beq	a3,a0,11aa4 <_malloc_r+0x85c>
   119c0:	04013583          	ld	a1,64(sp)
   119c4:	0005851b          	addiw	a0,a1,0
   119c8:	c49ff06f          	jal	zero,11610 <_malloc_r+0x3c8>
   119cc:	05400613          	addi	a2,zero,84
   119d0:	08d66063          	bltu	a2,a3,11a50 <_malloc_r+0x808>
   119d4:	00c35693          	srli	a3,t1,0xc
   119d8:	00169513          	slli	a0,a3,0x1
   119dc:	0de5051b          	addiw	a0,a0,222
   119e0:	00351513          	slli	a0,a0,0x3
   119e4:	06e6861b          	addiw	a2,a3,110
   119e8:	d5dff06f          	jal	zero,11744 <_malloc_r+0x4fc>
   119ec:	15400693          	addi	a3,zero,340
   119f0:	08f6e063          	bltu	a3,a5,11a70 <_malloc_r+0x828>
   119f4:	00f75793          	srli	a5,a4,0xf
   119f8:	0787889b          	addiw	a7,a5,120
   119fc:	0018951b          	slliw	a0,a7,0x1
   11a00:	07778e1b          	addiw	t3,a5,119
   11a04:	00351513          	slli	a0,a0,0x3
   11a08:	941ff06f          	jal	zero,11348 <_malloc_r+0x100>
   11a0c:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11a10:	000e2503          	lw	a0,0(t3)
   11a14:	00b5053b          	addw	a0,a0,a1
   11a18:	00ae2023          	sw	a0,0(t3)
   11a1c:	b51ff06f          	jal	zero,1156c <_malloc_r+0x324>
   11a20:	03431f13          	slli	t5,t1,0x34
   11a24:	b40f14e3          	bne	t5,zero,1156c <_malloc_r+0x324>
   11a28:	01083303          	ld	t1,16(a6)
   11a2c:	00b885b3          	add	a1,a7,a1
   11a30:	0015e693          	ori	a3,a1,1
   11a34:	00d33423          	sd	a3,8(t1)
   11a38:	c35ff06f          	jal	zero,1166c <_malloc_r+0x424>
   11a3c:	1861b823          	sd	t1,400(gp) # 139a8 <__malloc_sbrk_base>
   11a40:	b45ff06f          	jal	zero,11584 <_malloc_r+0x33c>
   11a44:	00100793          	addi	a5,zero,1
   11a48:	00f33423          	sd	a5,8(t1)
   11a4c:	e85ff06f          	jal	zero,118d0 <_malloc_r+0x688>
   11a50:	15400613          	addi	a2,zero,340
   11a54:	08d66a63          	bltu	a2,a3,11ae8 <_malloc_r+0x8a0>
   11a58:	00f35693          	srli	a3,t1,0xf
   11a5c:	00169513          	slli	a0,a3,0x1
   11a60:	0f05051b          	addiw	a0,a0,240
   11a64:	00351513          	slli	a0,a0,0x3
   11a68:	0776861b          	addiw	a2,a3,119
   11a6c:	cd9ff06f          	jal	zero,11744 <_malloc_r+0x4fc>
   11a70:	55400693          	addi	a3,zero,1364
   11a74:	08f6ea63          	bltu	a3,a5,11b08 <_malloc_r+0x8c0>
   11a78:	01275793          	srli	a5,a4,0x12
   11a7c:	07d7889b          	addiw	a7,a5,125
   11a80:	0018951b          	slliw	a0,a7,0x1
   11a84:	07c78e1b          	addiw	t3,a5,124
   11a88:	00351513          	slli	a0,a0,0x3
   11a8c:	8bdff06f          	jal	zero,11348 <_malloc_r+0x100>
   11a90:	ff0e8e93          	addi	t4,t4,-16
   11a94:	01d606b3          	add	a3,a2,t4
   11a98:	00000513          	addi	a0,zero,0
   11a9c:	00000593          	addi	a1,zero,0
   11aa0:	b71ff06f          	jal	zero,11610 <_malloc_r+0x3c8>
   11aa4:	00813683          	ld	a3,8(sp)
   11aa8:	00000593          	addi	a1,zero,0
   11aac:	00000513          	addi	a0,zero,0
   11ab0:	b61ff06f          	jal	zero,11610 <_malloc_r+0x3c8>
   11ab4:	01078593          	addi	a1,a5,16
   11ab8:	00040513          	addi	a0,s0,0
   11abc:	01c13c23          	sd	t3,24(sp)
   11ac0:	01013823          	sd	a6,16(sp)
   11ac4:	00e13423          	sd	a4,8(sp)
   11ac8:	c7cff0ef          	jal	ra,10f44 <_free_r>
   11acc:	01013803          	ld	a6,16(sp)
   11ad0:	01813e03          	ld	t3,24(sp)
   11ad4:	00813703          	ld	a4,8(sp)
   11ad8:	01083303          	ld	t1,16(a6)
   11adc:	000e2603          	lw	a2,0(t3)
   11ae0:	00833683          	ld	a3,8(t1)
   11ae4:	b89ff06f          	jal	zero,1166c <_malloc_r+0x424>
   11ae8:	55400613          	addi	a2,zero,1364
   11aec:	02d66663          	bltu	a2,a3,11b18 <_malloc_r+0x8d0>
   11af0:	01235693          	srli	a3,t1,0x12
   11af4:	00169513          	slli	a0,a3,0x1
   11af8:	0fa5051b          	addiw	a0,a0,250
   11afc:	00351513          	slli	a0,a0,0x3
   11b00:	07c6861b          	addiw	a2,a3,124
   11b04:	c41ff06f          	jal	zero,11744 <_malloc_r+0x4fc>
   11b08:	7f000513          	addi	a0,zero,2032
   11b0c:	07f00893          	addi	a7,zero,127
   11b10:	07e00e13          	addi	t3,zero,126
   11b14:	835ff06f          	jal	zero,11348 <_malloc_r+0x100>
   11b18:	7f000513          	addi	a0,zero,2032
   11b1c:	07e00613          	addi	a2,zero,126
   11b20:	c25ff06f          	jal	zero,11744 <_malloc_r+0x4fc>
   11b24:	00883783          	ld	a5,8(a6)
   11b28:	df1ff06f          	jal	zero,11918 <_malloc_r+0x6d0>

0000000000011b2c <__malloc_lock>:
   11b2c:	00008067          	jalr	zero,0(ra)

0000000000011b30 <__malloc_unlock>:
   11b30:	00008067          	jalr	zero,0(ra)

0000000000011b34 <_fclose_r>:
   11b34:	fe010113          	addi	sp,sp,-32
   11b38:	00113c23          	sd	ra,24(sp)
   11b3c:	01213023          	sd	s2,0(sp)
   11b40:	02058863          	beq	a1,zero,11b70 <_fclose_r+0x3c>
   11b44:	00813823          	sd	s0,16(sp)
   11b48:	00913423          	sd	s1,8(sp)
   11b4c:	00058413          	addi	s0,a1,0
   11b50:	00050493          	addi	s1,a0,0
   11b54:	00050663          	beq	a0,zero,11b60 <_fclose_r+0x2c>
   11b58:	04853783          	ld	a5,72(a0)
   11b5c:	0c078c63          	beq	a5,zero,11c34 <_fclose_r+0x100>
   11b60:	01041783          	lh	a5,16(s0)
   11b64:	02079263          	bne	a5,zero,11b88 <_fclose_r+0x54>
   11b68:	01013403          	ld	s0,16(sp)
   11b6c:	00813483          	ld	s1,8(sp)
   11b70:	01813083          	ld	ra,24(sp)
   11b74:	00000913          	addi	s2,zero,0
   11b78:	00090513          	addi	a0,s2,0
   11b7c:	00013903          	ld	s2,0(sp)
   11b80:	02010113          	addi	sp,sp,32
   11b84:	00008067          	jalr	zero,0(ra)
   11b88:	00040593          	addi	a1,s0,0
   11b8c:	00048513          	addi	a0,s1,0
   11b90:	0b8000ef          	jal	ra,11c48 <__sflush_r>
   11b94:	05043783          	ld	a5,80(s0)
   11b98:	00050913          	addi	s2,a0,0
   11b9c:	00078a63          	beq	a5,zero,11bb0 <_fclose_r+0x7c>
   11ba0:	03043583          	ld	a1,48(s0)
   11ba4:	00048513          	addi	a0,s1,0
   11ba8:	000780e7          	jalr	ra,0(a5)
   11bac:	06054463          	blt	a0,zero,11c14 <_fclose_r+0xe0>
   11bb0:	01045783          	lhu	a5,16(s0)
   11bb4:	0807f793          	andi	a5,a5,128
   11bb8:	06079663          	bne	a5,zero,11c24 <_fclose_r+0xf0>
   11bbc:	05843583          	ld	a1,88(s0)
   11bc0:	00058c63          	beq	a1,zero,11bd8 <_fclose_r+0xa4>
   11bc4:	07440793          	addi	a5,s0,116
   11bc8:	00f58663          	beq	a1,a5,11bd4 <_fclose_r+0xa0>
   11bcc:	00048513          	addi	a0,s1,0
   11bd0:	b74ff0ef          	jal	ra,10f44 <_free_r>
   11bd4:	04043c23          	sd	zero,88(s0)
   11bd8:	07843583          	ld	a1,120(s0)
   11bdc:	00058863          	beq	a1,zero,11bec <_fclose_r+0xb8>
   11be0:	00048513          	addi	a0,s1,0
   11be4:	b60ff0ef          	jal	ra,10f44 <_free_r>
   11be8:	06043c23          	sd	zero,120(s0)
   11bec:	9b5fe0ef          	jal	ra,105a0 <__sfp_lock_acquire>
   11bf0:	00041823          	sh	zero,16(s0)
   11bf4:	9b1fe0ef          	jal	ra,105a4 <__sfp_lock_release>
   11bf8:	01813083          	ld	ra,24(sp)
   11bfc:	01013403          	ld	s0,16(sp)
   11c00:	00813483          	ld	s1,8(sp)
   11c04:	00090513          	addi	a0,s2,0
   11c08:	00013903          	ld	s2,0(sp)
   11c0c:	02010113          	addi	sp,sp,32
   11c10:	00008067          	jalr	zero,0(ra)
   11c14:	01045783          	lhu	a5,16(s0)
   11c18:	fff00913          	addi	s2,zero,-1
   11c1c:	0807f793          	andi	a5,a5,128
   11c20:	f8078ee3          	beq	a5,zero,11bbc <_fclose_r+0x88>
   11c24:	01843583          	ld	a1,24(s0)
   11c28:	00048513          	addi	a0,s1,0
   11c2c:	b18ff0ef          	jal	ra,10f44 <_free_r>
   11c30:	f8dff06f          	jal	zero,11bbc <_fclose_r+0x88>
   11c34:	949fe0ef          	jal	ra,1057c <__sinit>
   11c38:	f29ff06f          	jal	zero,11b60 <_fclose_r+0x2c>

0000000000011c3c <fclose>:
   11c3c:	00050593          	addi	a1,a0,0
   11c40:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11c44:	ef1ff06f          	jal	zero,11b34 <_fclose_r>

0000000000011c48 <__sflush_r>:
   11c48:	01059703          	lh	a4,16(a1)
   11c4c:	fd010113          	addi	sp,sp,-48
   11c50:	02813023          	sd	s0,32(sp)
   11c54:	01313423          	sd	s3,8(sp)
   11c58:	02113423          	sd	ra,40(sp)
   11c5c:	00877793          	andi	a5,a4,8
   11c60:	00058413          	addi	s0,a1,0
   11c64:	00050993          	addi	s3,a0,0
   11c68:	12079263          	bne	a5,zero,11d8c <__sflush_r+0x144>
   11c6c:	000017b7          	lui	a5,0x1
   11c70:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   11c74:	0085a683          	lw	a3,8(a1)
   11c78:	00f767b3          	or	a5,a4,a5
   11c7c:	00f59823          	sh	a5,16(a1)
   11c80:	18d05c63          	bge	zero,a3,11e18 <__sflush_r+0x1d0>
   11c84:	04843803          	ld	a6,72(s0)
   11c88:	0e080663          	beq	a6,zero,11d74 <__sflush_r+0x12c>
   11c8c:	00913c23          	sd	s1,24(sp)
   11c90:	03371693          	slli	a3,a4,0x33
   11c94:	0009a483          	lw	s1,0(s3)
   11c98:	0009a023          	sw	zero,0(s3)
   11c9c:	1806ca63          	blt	a3,zero,11e30 <__sflush_r+0x1e8>
   11ca0:	03043583          	ld	a1,48(s0)
   11ca4:	00000613          	addi	a2,zero,0
   11ca8:	00100693          	addi	a3,zero,1
   11cac:	00098513          	addi	a0,s3,0
   11cb0:	000800e7          	jalr	ra,0(a6)
   11cb4:	fff00793          	addi	a5,zero,-1
   11cb8:	00050613          	addi	a2,a0,0
   11cbc:	1af50c63          	beq	a0,a5,11e74 <__sflush_r+0x22c>
   11cc0:	01041783          	lh	a5,16(s0)
   11cc4:	04843803          	ld	a6,72(s0)
   11cc8:	0047f793          	andi	a5,a5,4
   11ccc:	00078e63          	beq	a5,zero,11ce8 <__sflush_r+0xa0>
   11cd0:	00842703          	lw	a4,8(s0)
   11cd4:	05843783          	ld	a5,88(s0)
   11cd8:	40e60633          	sub	a2,a2,a4
   11cdc:	00078663          	beq	a5,zero,11ce8 <__sflush_r+0xa0>
   11ce0:	07042783          	lw	a5,112(s0)
   11ce4:	40f60633          	sub	a2,a2,a5
   11ce8:	03043583          	ld	a1,48(s0)
   11cec:	00000693          	addi	a3,zero,0
   11cf0:	00098513          	addi	a0,s3,0
   11cf4:	000800e7          	jalr	ra,0(a6)
   11cf8:	fff00713          	addi	a4,zero,-1
   11cfc:	01041783          	lh	a5,16(s0)
   11d00:	12e51c63          	bne	a0,a4,11e38 <__sflush_r+0x1f0>
   11d04:	0009a683          	lw	a3,0(s3)
   11d08:	01d00713          	addi	a4,zero,29
   11d0c:	18d76263          	bltu	a4,a3,11e90 <__sflush_r+0x248>
   11d10:	20400737          	lui	a4,0x20400
   11d14:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec089>
   11d18:	00d75733          	srl	a4,a4,a3
   11d1c:	00177713          	andi	a4,a4,1
   11d20:	16070863          	beq	a4,zero,11e90 <__sflush_r+0x248>
   11d24:	01843683          	ld	a3,24(s0)
   11d28:	fffff737          	lui	a4,0xfffff
   11d2c:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11d30:	00e7f733          	and	a4,a5,a4
   11d34:	00e41823          	sh	a4,16(s0)
   11d38:	00042423          	sw	zero,8(s0)
   11d3c:	00d43023          	sd	a3,0(s0)
   11d40:	03379713          	slli	a4,a5,0x33
   11d44:	00075663          	bge	a4,zero,11d50 <__sflush_r+0x108>
   11d48:	0009a783          	lw	a5,0(s3)
   11d4c:	10078863          	beq	a5,zero,11e5c <__sflush_r+0x214>
   11d50:	05843583          	ld	a1,88(s0)
   11d54:	0099a023          	sw	s1,0(s3)
   11d58:	10058a63          	beq	a1,zero,11e6c <__sflush_r+0x224>
   11d5c:	07440793          	addi	a5,s0,116
   11d60:	00f58663          	beq	a1,a5,11d6c <__sflush_r+0x124>
   11d64:	00098513          	addi	a0,s3,0
   11d68:	9dcff0ef          	jal	ra,10f44 <_free_r>
   11d6c:	01813483          	ld	s1,24(sp)
   11d70:	04043c23          	sd	zero,88(s0)
   11d74:	02813083          	ld	ra,40(sp)
   11d78:	02013403          	ld	s0,32(sp)
   11d7c:	00813983          	ld	s3,8(sp)
   11d80:	00000513          	addi	a0,zero,0
   11d84:	03010113          	addi	sp,sp,48
   11d88:	00008067          	jalr	zero,0(ra)
   11d8c:	01213823          	sd	s2,16(sp)
   11d90:	0185b903          	ld	s2,24(a1)
   11d94:	08090a63          	beq	s2,zero,11e28 <__sflush_r+0x1e0>
   11d98:	00913c23          	sd	s1,24(sp)
   11d9c:	0005b483          	ld	s1,0(a1)
   11da0:	00377713          	andi	a4,a4,3
   11da4:	0125b023          	sd	s2,0(a1)
   11da8:	412484bb          	subw	s1,s1,s2
   11dac:	00000793          	addi	a5,zero,0
   11db0:	00071463          	bne	a4,zero,11db8 <__sflush_r+0x170>
   11db4:	0205a783          	lw	a5,32(a1)
   11db8:	00f42623          	sw	a5,12(s0)
   11dbc:	00904863          	blt	zero,s1,11dcc <__sflush_r+0x184>
   11dc0:	0640006f          	jal	zero,11e24 <__sflush_r+0x1dc>
   11dc4:	00a90933          	add	s2,s2,a0
   11dc8:	04905e63          	bge	zero,s1,11e24 <__sflush_r+0x1dc>
   11dcc:	04043783          	ld	a5,64(s0)
   11dd0:	03043583          	ld	a1,48(s0)
   11dd4:	00048693          	addi	a3,s1,0
   11dd8:	00090613          	addi	a2,s2,0
   11ddc:	00098513          	addi	a0,s3,0
   11de0:	000780e7          	jalr	ra,0(a5)
   11de4:	40a484bb          	subw	s1,s1,a0
   11de8:	fca04ee3          	blt	zero,a0,11dc4 <__sflush_r+0x17c>
   11dec:	01045783          	lhu	a5,16(s0)
   11df0:	01013903          	ld	s2,16(sp)
   11df4:	0407e793          	ori	a5,a5,64
   11df8:	02813083          	ld	ra,40(sp)
   11dfc:	00f41823          	sh	a5,16(s0)
   11e00:	02013403          	ld	s0,32(sp)
   11e04:	01813483          	ld	s1,24(sp)
   11e08:	00813983          	ld	s3,8(sp)
   11e0c:	fff00513          	addi	a0,zero,-1
   11e10:	03010113          	addi	sp,sp,48
   11e14:	00008067          	jalr	zero,0(ra)
   11e18:	0705a683          	lw	a3,112(a1)
   11e1c:	e6d044e3          	blt	zero,a3,11c84 <__sflush_r+0x3c>
   11e20:	f55ff06f          	jal	zero,11d74 <__sflush_r+0x12c>
   11e24:	01813483          	ld	s1,24(sp)
   11e28:	01013903          	ld	s2,16(sp)
   11e2c:	f49ff06f          	jal	zero,11d74 <__sflush_r+0x12c>
   11e30:	09043603          	ld	a2,144(s0)
   11e34:	e95ff06f          	jal	zero,11cc8 <__sflush_r+0x80>
   11e38:	01843683          	ld	a3,24(s0)
   11e3c:	fffff737          	lui	a4,0xfffff
   11e40:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11e44:	00e7f733          	and	a4,a5,a4
   11e48:	00e41823          	sh	a4,16(s0)
   11e4c:	00042423          	sw	zero,8(s0)
   11e50:	00d43023          	sd	a3,0(s0)
   11e54:	03379713          	slli	a4,a5,0x33
   11e58:	ee075ce3          	bge	a4,zero,11d50 <__sflush_r+0x108>
   11e5c:	05843583          	ld	a1,88(s0)
   11e60:	08a43823          	sd	a0,144(s0)
   11e64:	0099a023          	sw	s1,0(s3)
   11e68:	ee059ae3          	bne	a1,zero,11d5c <__sflush_r+0x114>
   11e6c:	01813483          	ld	s1,24(sp)
   11e70:	f05ff06f          	jal	zero,11d74 <__sflush_r+0x12c>
   11e74:	0009a783          	lw	a5,0(s3)
   11e78:	e40784e3          	beq	a5,zero,11cc0 <__sflush_r+0x78>
   11e7c:	fe378713          	addi	a4,a5,-29
   11e80:	00070c63          	beq	a4,zero,11e98 <__sflush_r+0x250>
   11e84:	fea78793          	addi	a5,a5,-22
   11e88:	00078863          	beq	a5,zero,11e98 <__sflush_r+0x250>
   11e8c:	01045783          	lhu	a5,16(s0)
   11e90:	0407e793          	ori	a5,a5,64
   11e94:	f65ff06f          	jal	zero,11df8 <__sflush_r+0x1b0>
   11e98:	0099a023          	sw	s1,0(s3)
   11e9c:	01813483          	ld	s1,24(sp)
   11ea0:	ed5ff06f          	jal	zero,11d74 <__sflush_r+0x12c>

0000000000011ea4 <_fflush_r>:
   11ea4:	00050793          	addi	a5,a0,0
   11ea8:	00050663          	beq	a0,zero,11eb4 <_fflush_r+0x10>
   11eac:	04853703          	ld	a4,72(a0)
   11eb0:	00070e63          	beq	a4,zero,11ecc <_fflush_r+0x28>
   11eb4:	01059703          	lh	a4,16(a1)
   11eb8:	00071663          	bne	a4,zero,11ec4 <_fflush_r+0x20>
   11ebc:	00000513          	addi	a0,zero,0
   11ec0:	00008067          	jalr	zero,0(ra)
   11ec4:	00078513          	addi	a0,a5,0
   11ec8:	d81ff06f          	jal	zero,11c48 <__sflush_r>
   11ecc:	fe010113          	addi	sp,sp,-32
   11ed0:	00b13423          	sd	a1,8(sp)
   11ed4:	00113c23          	sd	ra,24(sp)
   11ed8:	00a13023          	sd	a0,0(sp)
   11edc:	ea0fe0ef          	jal	ra,1057c <__sinit>
   11ee0:	00813583          	ld	a1,8(sp)
   11ee4:	00013783          	ld	a5,0(sp)
   11ee8:	01059703          	lh	a4,16(a1)
   11eec:	00070a63          	beq	a4,zero,11f00 <_fflush_r+0x5c>
   11ef0:	01813083          	ld	ra,24(sp)
   11ef4:	00078513          	addi	a0,a5,0
   11ef8:	02010113          	addi	sp,sp,32
   11efc:	d4dff06f          	jal	zero,11c48 <__sflush_r>
   11f00:	01813083          	ld	ra,24(sp)
   11f04:	00000513          	addi	a0,zero,0
   11f08:	02010113          	addi	sp,sp,32
   11f0c:	00008067          	jalr	zero,0(ra)

0000000000011f10 <fflush>:
   11f10:	06050063          	beq	a0,zero,11f70 <fflush+0x60>
   11f14:	00050593          	addi	a1,a0,0
   11f18:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11f1c:	00050663          	beq	a0,zero,11f28 <fflush+0x18>
   11f20:	04853783          	ld	a5,72(a0)
   11f24:	00078c63          	beq	a5,zero,11f3c <fflush+0x2c>
   11f28:	01059783          	lh	a5,16(a1)
   11f2c:	00079663          	bne	a5,zero,11f38 <fflush+0x28>
   11f30:	00000513          	addi	a0,zero,0
   11f34:	00008067          	jalr	zero,0(ra)
   11f38:	d11ff06f          	jal	zero,11c48 <__sflush_r>
   11f3c:	fe010113          	addi	sp,sp,-32
   11f40:	00b13423          	sd	a1,8(sp)
   11f44:	00a13023          	sd	a0,0(sp)
   11f48:	00113c23          	sd	ra,24(sp)
   11f4c:	e30fe0ef          	jal	ra,1057c <__sinit>
   11f50:	00813583          	ld	a1,8(sp)
   11f54:	00013503          	ld	a0,0(sp)
   11f58:	01059783          	lh	a5,16(a1)
   11f5c:	02079863          	bne	a5,zero,11f8c <fflush+0x7c>
   11f60:	01813083          	ld	ra,24(sp)
   11f64:	00000513          	addi	a0,zero,0
   11f68:	02010113          	addi	sp,sp,32
   11f6c:	00008067          	jalr	zero,0(ra)
   11f70:	00013637          	lui	a2,0x13
   11f74:	000125b7          	lui	a1,0x12
   11f78:	00013537          	lui	a0,0x13
   11f7c:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   11f80:	ea458593          	addi	a1,a1,-348 # 11ea4 <_fflush_r>
   11f84:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   11f88:	e50fe06f          	jal	zero,105d8 <_fwalk_sglue>
   11f8c:	01813083          	ld	ra,24(sp)
   11f90:	02010113          	addi	sp,sp,32
   11f94:	cb5ff06f          	jal	zero,11c48 <__sflush_r>

0000000000011f98 <_sbrk_r>:
   11f98:	fe010113          	addi	sp,sp,-32
   11f9c:	00813823          	sd	s0,16(sp)
   11fa0:	00913423          	sd	s1,8(sp)
   11fa4:	00050493          	addi	s1,a0,0
   11fa8:	00058513          	addi	a0,a1,0
   11fac:	00113c23          	sd	ra,24(sp)
   11fb0:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   11fb4:	228000ef          	jal	ra,121dc <_sbrk>
   11fb8:	fff00793          	addi	a5,zero,-1
   11fbc:	00f50c63          	beq	a0,a5,11fd4 <_sbrk_r+0x3c>
   11fc0:	01813083          	ld	ra,24(sp)
   11fc4:	01013403          	ld	s0,16(sp)
   11fc8:	00813483          	ld	s1,8(sp)
   11fcc:	02010113          	addi	sp,sp,32
   11fd0:	00008067          	jalr	zero,0(ra)
   11fd4:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   11fd8:	fe0784e3          	beq	a5,zero,11fc0 <_sbrk_r+0x28>
   11fdc:	01813083          	ld	ra,24(sp)
   11fe0:	01013403          	ld	s0,16(sp)
   11fe4:	00f4a023          	sw	a5,0(s1)
   11fe8:	00813483          	ld	s1,8(sp)
   11fec:	02010113          	addi	sp,sp,32
   11ff0:	00008067          	jalr	zero,0(ra)

0000000000011ff4 <__libc_fini_array>:
   11ff4:	fe010113          	addi	sp,sp,-32
   11ff8:	00813823          	sd	s0,16(sp)
   11ffc:	000137b7          	lui	a5,0x13
   12000:	00013437          	lui	s0,0x13
   12004:	01878793          	addi	a5,a5,24 # 13018 <__sglue>
   12008:	01040413          	addi	s0,s0,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   1200c:	408787b3          	sub	a5,a5,s0
   12010:	00913423          	sd	s1,8(sp)
   12014:	00113c23          	sd	ra,24(sp)
   12018:	4037d493          	srai	s1,a5,0x3
   1201c:	02048063          	beq	s1,zero,1203c <__libc_fini_array+0x48>
   12020:	ff840413          	addi	s0,s0,-8
   12024:	00f40433          	add	s0,s0,a5
   12028:	00043783          	ld	a5,0(s0)
   1202c:	fff48493          	addi	s1,s1,-1
   12030:	ff840413          	addi	s0,s0,-8
   12034:	000780e7          	jalr	ra,0(a5)
   12038:	fe0498e3          	bne	s1,zero,12028 <__libc_fini_array+0x34>
   1203c:	01813083          	ld	ra,24(sp)
   12040:	01013403          	ld	s0,16(sp)
   12044:	00813483          	ld	s1,8(sp)
   12048:	02010113          	addi	sp,sp,32
   1204c:	00008067          	jalr	zero,0(ra)

0000000000012050 <__register_exitproc>:
   12050:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   12054:	04078e63          	beq	a5,zero,120b0 <__register_exitproc+0x60>
   12058:	0087a703          	lw	a4,8(a5)
   1205c:	01f00813          	addi	a6,zero,31
   12060:	08e84263          	blt	a6,a4,120e4 <__register_exitproc+0x94>
   12064:	02050863          	beq	a0,zero,12094 <__register_exitproc+0x44>
   12068:	00371813          	slli	a6,a4,0x3
   1206c:	01078833          	add	a6,a5,a6
   12070:	10c83823          	sd	a2,272(a6)
   12074:	3107a883          	lw	a7,784(a5)
   12078:	00100613          	addi	a2,zero,1
   1207c:	00e6163b          	sllw	a2,a2,a4
   12080:	00c8e8b3          	or	a7,a7,a2
   12084:	3117a823          	sw	a7,784(a5)
   12088:	20d83823          	sd	a3,528(a6)
   1208c:	00200693          	addi	a3,zero,2
   12090:	02d50663          	beq	a0,a3,120bc <__register_exitproc+0x6c>
   12094:	0017069b          	addiw	a3,a4,1
   12098:	00371713          	slli	a4,a4,0x3
   1209c:	00d7a423          	sw	a3,8(a5)
   120a0:	00e787b3          	add	a5,a5,a4
   120a4:	00b7b823          	sd	a1,16(a5)
   120a8:	00000513          	addi	a0,zero,0
   120ac:	00008067          	jalr	zero,0(ra)
   120b0:	44818793          	addi	a5,gp,1096 # 13c60 <__atexit0>
   120b4:	1af1b823          	sd	a5,432(gp) # 139c8 <__atexit>
   120b8:	fa1ff06f          	jal	zero,12058 <__register_exitproc+0x8>
   120bc:	3147a683          	lw	a3,788(a5)
   120c0:	00000513          	addi	a0,zero,0
   120c4:	00d66633          	or	a2,a2,a3
   120c8:	0017069b          	addiw	a3,a4,1
   120cc:	00371713          	slli	a4,a4,0x3
   120d0:	30c7aa23          	sw	a2,788(a5)
   120d4:	00d7a423          	sw	a3,8(a5)
   120d8:	00e787b3          	add	a5,a5,a4
   120dc:	00b7b823          	sd	a1,16(a5)
   120e0:	00008067          	jalr	zero,0(ra)
   120e4:	fff00513          	addi	a0,zero,-1
   120e8:	00008067          	jalr	zero,0(ra)

00000000000120ec <_close>:
   120ec:	03900893          	addi	a7,zero,57
   120f0:	00000073          	ecall
   120f4:	00054663          	blt	a0,zero,12100 <_close+0x14>
   120f8:	0005051b          	addiw	a0,a0,0
   120fc:	00008067          	jalr	zero,0(ra)
   12100:	fe010113          	addi	sp,sp,-32
   12104:	00113c23          	sd	ra,24(sp)
   12108:	00a13423          	sd	a0,8(sp)
   1210c:	188000ef          	jal	ra,12294 <__errno>
   12110:	00813783          	ld	a5,8(sp)
   12114:	01813083          	ld	ra,24(sp)
   12118:	40f007bb          	subw	a5,zero,a5
   1211c:	00f52023          	sw	a5,0(a0)
   12120:	fff00513          	addi	a0,zero,-1
   12124:	02010113          	addi	sp,sp,32
   12128:	00008067          	jalr	zero,0(ra)

000000000001212c <_exit>:
   1212c:	05d00893          	addi	a7,zero,93
   12130:	00000073          	ecall
   12134:	00054463          	blt	a0,zero,1213c <_exit+0x10>
   12138:	0000006f          	jal	zero,12138 <_exit+0xc>
   1213c:	fe010113          	addi	sp,sp,-32
   12140:	00113c23          	sd	ra,24(sp)
   12144:	00a13423          	sd	a0,8(sp)
   12148:	14c000ef          	jal	ra,12294 <__errno>
   1214c:	00813783          	ld	a5,8(sp)
   12150:	40f007bb          	subw	a5,zero,a5
   12154:	00f52023          	sw	a5,0(a0)
   12158:	0000006f          	jal	zero,12158 <_exit+0x2c>

000000000001215c <_lseek>:
   1215c:	03e00893          	addi	a7,zero,62
   12160:	00000073          	ecall
   12164:	00054463          	blt	a0,zero,1216c <_lseek+0x10>
   12168:	00008067          	jalr	zero,0(ra)
   1216c:	fe010113          	addi	sp,sp,-32
   12170:	00113c23          	sd	ra,24(sp)
   12174:	00a13423          	sd	a0,8(sp)
   12178:	11c000ef          	jal	ra,12294 <__errno>
   1217c:	00813783          	ld	a5,8(sp)
   12180:	01813083          	ld	ra,24(sp)
   12184:	40f007bb          	subw	a5,zero,a5
   12188:	00f52023          	sw	a5,0(a0)
   1218c:	fff00793          	addi	a5,zero,-1
   12190:	00078513          	addi	a0,a5,0
   12194:	02010113          	addi	sp,sp,32
   12198:	00008067          	jalr	zero,0(ra)

000000000001219c <_read>:
   1219c:	03f00893          	addi	a7,zero,63
   121a0:	00000073          	ecall
   121a4:	00054463          	blt	a0,zero,121ac <_read+0x10>
   121a8:	00008067          	jalr	zero,0(ra)
   121ac:	fe010113          	addi	sp,sp,-32
   121b0:	00113c23          	sd	ra,24(sp)
   121b4:	00a13423          	sd	a0,8(sp)
   121b8:	0dc000ef          	jal	ra,12294 <__errno>
   121bc:	00813783          	ld	a5,8(sp)
   121c0:	01813083          	ld	ra,24(sp)
   121c4:	40f007bb          	subw	a5,zero,a5
   121c8:	00f52023          	sw	a5,0(a0)
   121cc:	fff00793          	addi	a5,zero,-1
   121d0:	00078513          	addi	a0,a5,0
   121d4:	02010113          	addi	sp,sp,32
   121d8:	00008067          	jalr	zero,0(ra)

00000000000121dc <_sbrk>:
   121dc:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   121e0:	ff010113          	addi	sp,sp,-16
   121e4:	00113423          	sd	ra,8(sp)
   121e8:	00050713          	addi	a4,a0,0
   121ec:	02079063          	bne	a5,zero,1220c <_sbrk+0x30>
   121f0:	0d600893          	addi	a7,zero,214
   121f4:	00000513          	addi	a0,zero,0
   121f8:	00000073          	ecall
   121fc:	fff00793          	addi	a5,zero,-1
   12200:	02f50c63          	beq	a0,a5,12238 <_sbrk+0x5c>
   12204:	00050793          	addi	a5,a0,0
   12208:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   1220c:	00f70533          	add	a0,a4,a5
   12210:	0d600893          	addi	a7,zero,214
   12214:	00000073          	ecall
   12218:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   1221c:	00f70733          	add	a4,a4,a5
   12220:	00e51c63          	bne	a0,a4,12238 <_sbrk+0x5c>
   12224:	00813083          	ld	ra,8(sp)
   12228:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   1222c:	00078513          	addi	a0,a5,0
   12230:	01010113          	addi	sp,sp,16
   12234:	00008067          	jalr	zero,0(ra)
   12238:	05c000ef          	jal	ra,12294 <__errno>
   1223c:	00813083          	ld	ra,8(sp)
   12240:	00c00793          	addi	a5,zero,12
   12244:	00f52023          	sw	a5,0(a0)
   12248:	fff00513          	addi	a0,zero,-1
   1224c:	01010113          	addi	sp,sp,16
   12250:	00008067          	jalr	zero,0(ra)

0000000000012254 <_write>:
   12254:	04000893          	addi	a7,zero,64
   12258:	00000073          	ecall
   1225c:	00054463          	blt	a0,zero,12264 <_write+0x10>
   12260:	00008067          	jalr	zero,0(ra)
   12264:	fe010113          	addi	sp,sp,-32
   12268:	00113c23          	sd	ra,24(sp)
   1226c:	00a13423          	sd	a0,8(sp)
   12270:	024000ef          	jal	ra,12294 <__errno>
   12274:	00813783          	ld	a5,8(sp)
   12278:	01813083          	ld	ra,24(sp)
   1227c:	40f007bb          	subw	a5,zero,a5
   12280:	00f52023          	sw	a5,0(a0)
   12284:	fff00793          	addi	a5,zero,-1
   12288:	00078513          	addi	a0,a5,0
   1228c:	02010113          	addi	sp,sp,32
   12290:	00008067          	jalr	zero,0(ra)

0000000000012294 <__errno>:
   12294:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   12298:	00008067          	jalr	zero,0(ra)
