
bin-c:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	addi	a1,zero,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	addi	s0,a0,0
   10134:	28d000ef          	jal	ra,10bc0 <__call_exitprocs>
   10138:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   1013c:	00078463          	beq	a5,zero,10144 <exit+0x24>
   10140:	000780e7          	jalr	ra,0(a5)
   10144:	00040513          	addi	a0,s0,0
   10148:	6d1010ef          	jal	ra,12018 <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	addi	a5,zero,0
   10150:	00078863          	beq	a5,zero,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	ee050513          	addi	a0,a0,-288 # 11ee0 <__libc_fini_array>
   1015c:	39d0006f          	jal	zero,10cf8 <atexit>
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
   10184:	161000ef          	jal	ra,10ae4 <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	b7050513          	addi	a0,a0,-1168 # 10cf8 <atexit>
   10190:	00050863          	beq	a0,zero,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	d4c50513          	addi	a0,a0,-692 # 11ee0 <__libc_fini_array>
   1019c:	35d000ef          	jal	ra,10cf8 <atexit>
   101a0:	0b1000ef          	jal	ra,10a50 <__libc_init_array>
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
   101d8:	18850513          	addi	a0,a0,392 # 12188 <__EH_FRAME_BEGIN__>
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
   1020c:	18850513          	addi	a0,a0,392 # 12188 <__EH_FRAME_BEGIN__>
   10210:	00000317          	auipc	t1,0x0
   10214:	00000067          	jalr	zero,0(zero) # 0 <exit-0x10120>
   10218:	00008067          	jalr	zero,0(ra)

000000000001021c <main>:
   1021c:	ff010113          	addi	sp,sp,-16
   10220:	00113423          	sd	ra,8(sp)
   10224:	00813023          	sd	s0,0(sp)
   10228:	01010413          	addi	s0,sp,16
   1022c:	00000793          	addi	a5,zero,0
   10230:	00078513          	addi	a0,a5,0
   10234:	00813083          	ld	ra,8(sp)
   10238:	00013403          	ld	s0,0(sp)
   1023c:	01010113          	addi	sp,sp,16
   10240:	00008067          	jalr	zero,0(ra)

0000000000010244 <__fp_lock>:
   10244:	00000513          	addi	a0,zero,0
   10248:	00008067          	jalr	zero,0(ra)

000000000001024c <stdio_exit_handler>:
   1024c:	00013637          	lui	a2,0x13
   10250:	000125b7          	lui	a1,0x12
   10254:	00013537          	lui	a0,0x13
   10258:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   1025c:	a2058593          	addi	a1,a1,-1504 # 11a20 <_fclose_r>
   10260:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   10264:	34c0006f          	jal	zero,105b0 <_fwalk_sglue>

0000000000010268 <cleanup_stdio>:
   10268:	00853583          	ld	a1,8(a0)
   1026c:	ff010113          	addi	sp,sp,-16
   10270:	00813023          	sd	s0,0(sp)
   10274:	00113423          	sd	ra,8(sp)
   10278:	21018793          	addi	a5,gp,528 # 13a28 <__sf>
   1027c:	00050413          	addi	s0,a0,0
   10280:	00f58463          	beq	a1,a5,10288 <cleanup_stdio+0x20>
   10284:	79c010ef          	jal	ra,11a20 <_fclose_r>
   10288:	01043583          	ld	a1,16(s0)
   1028c:	2c018793          	addi	a5,gp,704 # 13ad8 <__sf+0xb0>
   10290:	00f58663          	beq	a1,a5,1029c <cleanup_stdio+0x34>
   10294:	00040513          	addi	a0,s0,0
   10298:	788010ef          	jal	ra,11a20 <_fclose_r>
   1029c:	01843583          	ld	a1,24(s0)
   102a0:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   102a4:	00f58c63          	beq	a1,a5,102bc <cleanup_stdio+0x54>
   102a8:	00040513          	addi	a0,s0,0
   102ac:	00013403          	ld	s0,0(sp)
   102b0:	00813083          	ld	ra,8(sp)
   102b4:	01010113          	addi	sp,sp,16
   102b8:	7680106f          	jal	zero,11a20 <_fclose_r>
   102bc:	00813083          	ld	ra,8(sp)
   102c0:	00013403          	ld	s0,0(sp)
   102c4:	01010113          	addi	sp,sp,16
   102c8:	00008067          	jalr	zero,0(ra)

00000000000102cc <__fp_unlock>:
   102cc:	00000513          	addi	a0,zero,0
   102d0:	00008067          	jalr	zero,0(ra)

00000000000102d4 <global_stdio_init.part.0>:
   102d4:	fd010113          	addi	sp,sp,-48
   102d8:	000107b7          	lui	a5,0x10
   102dc:	02813023          	sd	s0,32(sp)
   102e0:	24c78793          	addi	a5,a5,588 # 1024c <stdio_exit_handler>
   102e4:	21018413          	addi	s0,gp,528 # 13a28 <__sf>
   102e8:	02113423          	sd	ra,40(sp)
   102ec:	00913c23          	sd	s1,24(sp)
   102f0:	01213823          	sd	s2,16(sp)
   102f4:	01313423          	sd	s3,8(sp)
   102f8:	01413023          	sd	s4,0(sp)
   102fc:	1af1b023          	sd	a5,416(gp) # 139b8 <__stdio_exit_handler>
   10300:	00800613          	addi	a2,zero,8
   10304:	00400793          	addi	a5,zero,4
   10308:	00000593          	addi	a1,zero,0
   1030c:	2b418513          	addi	a0,gp,692 # 13acc <__sf+0xa4>
   10310:	00f42823          	sw	a5,16(s0)
   10314:	00043023          	sd	zero,0(s0)
   10318:	00043423          	sd	zero,8(s0)
   1031c:	0a042623          	sw	zero,172(s0)
   10320:	00043c23          	sd	zero,24(s0)
   10324:	02042023          	sw	zero,32(s0)
   10328:	02042423          	sw	zero,40(s0)
   1032c:	7b8000ef          	jal	ra,10ae4 <memset>
   10330:	00010a37          	lui	s4,0x10
   10334:	000109b7          	lui	s3,0x10
   10338:	00010937          	lui	s2,0x10
   1033c:	000104b7          	lui	s1,0x10
   10340:	000107b7          	lui	a5,0x10
   10344:	680a0a13          	addi	s4,s4,1664 # 10680 <__sread>
   10348:	6e498993          	addi	s3,s3,1764 # 106e4 <__swrite>
   1034c:	76c90913          	addi	s2,s2,1900 # 1076c <__sseek>
   10350:	7d048493          	addi	s1,s1,2000 # 107d0 <__sclose>
   10354:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   10358:	00800613          	addi	a2,zero,8
   1035c:	00000593          	addi	a1,zero,0
   10360:	36418513          	addi	a0,gp,868 # 13b7c <__sf+0x154>
   10364:	0cf42023          	sw	a5,192(s0)
   10368:	03443c23          	sd	s4,56(s0)
   1036c:	05343023          	sd	s3,64(s0)
   10370:	05243423          	sd	s2,72(s0)
   10374:	04943823          	sd	s1,80(s0)
   10378:	02843823          	sd	s0,48(s0)
   1037c:	0a043823          	sd	zero,176(s0)
   10380:	0a043c23          	sd	zero,184(s0)
   10384:	14042e23          	sw	zero,348(s0)
   10388:	0c043423          	sd	zero,200(s0)
   1038c:	0c042823          	sw	zero,208(s0)
   10390:	0c042c23          	sw	zero,216(s0)
   10394:	750000ef          	jal	ra,10ae4 <memset>
   10398:	000207b7          	lui	a5,0x20
   1039c:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xc09a>
   103a0:	2c018713          	addi	a4,gp,704 # 13ad8 <__sf+0xb0>
   103a4:	41418513          	addi	a0,gp,1044 # 13c2c <__sf+0x204>
   103a8:	00800613          	addi	a2,zero,8
   103ac:	00000593          	addi	a1,zero,0
   103b0:	0f443423          	sd	s4,232(s0)
   103b4:	0f343823          	sd	s3,240(s0)
   103b8:	0f243c23          	sd	s2,248(s0)
   103bc:	10943023          	sd	s1,256(s0)
   103c0:	16f42823          	sw	a5,368(s0)
   103c4:	16043023          	sd	zero,352(s0)
   103c8:	16043423          	sd	zero,360(s0)
   103cc:	20042623          	sw	zero,524(s0)
   103d0:	16043c23          	sd	zero,376(s0)
   103d4:	18042023          	sw	zero,384(s0)
   103d8:	18042423          	sw	zero,392(s0)
   103dc:	0ee43023          	sd	a4,224(s0)
   103e0:	704000ef          	jal	ra,10ae4 <memset>
   103e4:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   103e8:	19443c23          	sd	s4,408(s0)
   103ec:	1b343023          	sd	s3,416(s0)
   103f0:	1b243423          	sd	s2,424(s0)
   103f4:	1a943823          	sd	s1,432(s0)
   103f8:	02813083          	ld	ra,40(sp)
   103fc:	18f43823          	sd	a5,400(s0)
   10400:	02013403          	ld	s0,32(sp)
   10404:	01813483          	ld	s1,24(sp)
   10408:	01013903          	ld	s2,16(sp)
   1040c:	00813983          	ld	s3,8(sp)
   10410:	00013a03          	ld	s4,0(sp)
   10414:	03010113          	addi	sp,sp,48
   10418:	00008067          	jalr	zero,0(ra)

000000000001041c <__sfp>:
   1041c:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   10420:	fd010113          	addi	sp,sp,-48
   10424:	00913c23          	sd	s1,24(sp)
   10428:	02113423          	sd	ra,40(sp)
   1042c:	02813023          	sd	s0,32(sp)
   10430:	00050493          	addi	s1,a0,0
   10434:	10078463          	beq	a5,zero,1053c <__sfp+0x120>
   10438:	000136b7          	lui	a3,0x13
   1043c:	01868693          	addi	a3,a3,24 # 13018 <__sglue>
   10440:	0086a703          	lw	a4,8(a3)
   10444:	08e05c63          	bge	zero,a4,104dc <__sfp+0xc0>
   10448:	02071713          	slli	a4,a4,0x20
   1044c:	02075713          	srli	a4,a4,0x20
   10450:	00171793          	slli	a5,a4,0x1
   10454:	00e787b3          	add	a5,a5,a4
   10458:	0106b403          	ld	s0,16(a3)
   1045c:	00279793          	slli	a5,a5,0x2
   10460:	40e787b3          	sub	a5,a5,a4
   10464:	00479793          	slli	a5,a5,0x4
   10468:	00f407b3          	add	a5,s0,a5
   1046c:	00c0006f          	jal	zero,10478 <__sfp+0x5c>
   10470:	0b040413          	addi	s0,s0,176
   10474:	06f40463          	beq	s0,a5,104dc <__sfp+0xc0>
   10478:	01041703          	lh	a4,16(s0)
   1047c:	fe071ae3          	bne	a4,zero,10470 <__sfp+0x54>
   10480:	ffff07b7          	lui	a5,0xffff0
   10484:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdc089>
   10488:	00f42823          	sw	a5,16(s0)
   1048c:	0a042623          	sw	zero,172(s0)
   10490:	00043023          	sd	zero,0(s0)
   10494:	00043423          	sd	zero,8(s0)
   10498:	00043c23          	sd	zero,24(s0)
   1049c:	02042023          	sw	zero,32(s0)
   104a0:	02042423          	sw	zero,40(s0)
   104a4:	00800613          	addi	a2,zero,8
   104a8:	00000593          	addi	a1,zero,0
   104ac:	0a440513          	addi	a0,s0,164
   104b0:	634000ef          	jal	ra,10ae4 <memset>
   104b4:	04043c23          	sd	zero,88(s0)
   104b8:	06042023          	sw	zero,96(s0)
   104bc:	06043c23          	sd	zero,120(s0)
   104c0:	08042023          	sw	zero,128(s0)
   104c4:	02813083          	ld	ra,40(sp)
   104c8:	00040513          	addi	a0,s0,0
   104cc:	02013403          	ld	s0,32(sp)
   104d0:	01813483          	ld	s1,24(sp)
   104d4:	03010113          	addi	sp,sp,48
   104d8:	00008067          	jalr	zero,0(ra)
   104dc:	0006b403          	ld	s0,0(a3)
   104e0:	00040663          	beq	s0,zero,104ec <__sfp+0xd0>
   104e4:	00040693          	addi	a3,s0,0
   104e8:	f59ff06f          	jal	zero,10440 <__sfp+0x24>
   104ec:	2d800593          	addi	a1,zero,728
   104f0:	00048513          	addi	a0,s1,0
   104f4:	00d13423          	sd	a3,8(sp)
   104f8:	43d000ef          	jal	ra,11134 <_malloc_r>
   104fc:	00813683          	ld	a3,8(sp)
   10500:	00050413          	addi	s0,a0,0
   10504:	04050063          	beq	a0,zero,10544 <__sfp+0x128>
   10508:	00400793          	addi	a5,zero,4
   1050c:	00f52423          	sw	a5,8(a0)
   10510:	01850513          	addi	a0,a0,24
   10514:	00043023          	sd	zero,0(s0)
   10518:	00a43823          	sd	a0,16(s0)
   1051c:	2c000613          	addi	a2,zero,704
   10520:	00000593          	addi	a1,zero,0
   10524:	00d13423          	sd	a3,8(sp)
   10528:	5bc000ef          	jal	ra,10ae4 <memset>
   1052c:	00813683          	ld	a3,8(sp)
   10530:	0086b023          	sd	s0,0(a3)
   10534:	00040693          	addi	a3,s0,0
   10538:	f09ff06f          	jal	zero,10440 <__sfp+0x24>
   1053c:	d99ff0ef          	jal	ra,102d4 <global_stdio_init.part.0>
   10540:	ef9ff06f          	jal	zero,10438 <__sfp+0x1c>
   10544:	0006b023          	sd	zero,0(a3)
   10548:	00c00793          	addi	a5,zero,12
   1054c:	00f4a023          	sw	a5,0(s1)
   10550:	f75ff06f          	jal	zero,104c4 <__sfp+0xa8>

0000000000010554 <__sinit>:
   10554:	04853783          	ld	a5,72(a0)
   10558:	00078463          	beq	a5,zero,10560 <__sinit+0xc>
   1055c:	00008067          	jalr	zero,0(ra)
   10560:	000107b7          	lui	a5,0x10
   10564:	1a01b703          	ld	a4,416(gp) # 139b8 <__stdio_exit_handler>
   10568:	26878793          	addi	a5,a5,616 # 10268 <cleanup_stdio>
   1056c:	04f53423          	sd	a5,72(a0)
   10570:	fe0716e3          	bne	a4,zero,1055c <__sinit+0x8>
   10574:	d61ff06f          	jal	zero,102d4 <global_stdio_init.part.0>

0000000000010578 <__sfp_lock_acquire>:
   10578:	00008067          	jalr	zero,0(ra)

000000000001057c <__sfp_lock_release>:
   1057c:	00008067          	jalr	zero,0(ra)

0000000000010580 <__fp_lock_all>:
   10580:	00013637          	lui	a2,0x13
   10584:	000105b7          	lui	a1,0x10
   10588:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   1058c:	24458593          	addi	a1,a1,580 # 10244 <__fp_lock>
   10590:	00000513          	addi	a0,zero,0
   10594:	01c0006f          	jal	zero,105b0 <_fwalk_sglue>

0000000000010598 <__fp_unlock_all>:
   10598:	00013637          	lui	a2,0x13
   1059c:	000105b7          	lui	a1,0x10
   105a0:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   105a4:	2cc58593          	addi	a1,a1,716 # 102cc <__fp_unlock>
   105a8:	00000513          	addi	a0,zero,0
   105ac:	0040006f          	jal	zero,105b0 <_fwalk_sglue>

00000000000105b0 <_fwalk_sglue>:
   105b0:	fb010113          	addi	sp,sp,-80
   105b4:	03213823          	sd	s2,48(sp)
   105b8:	03313423          	sd	s3,40(sp)
   105bc:	03413023          	sd	s4,32(sp)
   105c0:	01513c23          	sd	s5,24(sp)
   105c4:	01613823          	sd	s6,16(sp)
   105c8:	01713423          	sd	s7,8(sp)
   105cc:	04113423          	sd	ra,72(sp)
   105d0:	04813023          	sd	s0,64(sp)
   105d4:	02913c23          	sd	s1,56(sp)
   105d8:	00060913          	addi	s2,a2,0
   105dc:	00050a13          	addi	s4,a0,0
   105e0:	00058a93          	addi	s5,a1,0
   105e4:	00000b13          	addi	s6,zero,0
   105e8:	00100b93          	addi	s7,zero,1
   105ec:	fff00993          	addi	s3,zero,-1
   105f0:	00892783          	lw	a5,8(s2)
   105f4:	04f05a63          	bge	zero,a5,10648 <_fwalk_sglue+0x98>
   105f8:	02079793          	slli	a5,a5,0x20
   105fc:	0207d793          	srli	a5,a5,0x20
   10600:	00179493          	slli	s1,a5,0x1
   10604:	00f484b3          	add	s1,s1,a5
   10608:	01093403          	ld	s0,16(s2)
   1060c:	00249493          	slli	s1,s1,0x2
   10610:	40f484b3          	sub	s1,s1,a5
   10614:	00449493          	slli	s1,s1,0x4
   10618:	009404b3          	add	s1,s0,s1
   1061c:	01045783          	lhu	a5,16(s0)
   10620:	02fbf063          	bgeu	s7,a5,10640 <_fwalk_sglue+0x90>
   10624:	01241783          	lh	a5,18(s0)
   10628:	00040593          	addi	a1,s0,0
   1062c:	000a0513          	addi	a0,s4,0
   10630:	01378863          	beq	a5,s3,10640 <_fwalk_sglue+0x90>
   10634:	000a80e7          	jalr	ra,0(s5)
   10638:	01656b33          	or	s6,a0,s6
   1063c:	000b0b1b          	addiw	s6,s6,0
   10640:	0b040413          	addi	s0,s0,176
   10644:	fc941ce3          	bne	s0,s1,1061c <_fwalk_sglue+0x6c>
   10648:	00093903          	ld	s2,0(s2)
   1064c:	fa0912e3          	bne	s2,zero,105f0 <_fwalk_sglue+0x40>
   10650:	04813083          	ld	ra,72(sp)
   10654:	04013403          	ld	s0,64(sp)
   10658:	03813483          	ld	s1,56(sp)
   1065c:	03013903          	ld	s2,48(sp)
   10660:	02813983          	ld	s3,40(sp)
   10664:	02013a03          	ld	s4,32(sp)
   10668:	01813a83          	ld	s5,24(sp)
   1066c:	00813b83          	ld	s7,8(sp)
   10670:	000b0513          	addi	a0,s6,0
   10674:	01013b03          	ld	s6,16(sp)
   10678:	05010113          	addi	sp,sp,80
   1067c:	00008067          	jalr	zero,0(ra)

0000000000010680 <__sread>:
   10680:	ff010113          	addi	sp,sp,-16
   10684:	00813023          	sd	s0,0(sp)
   10688:	00058413          	addi	s0,a1,0
   1068c:	01259583          	lh	a1,18(a1)
   10690:	00113423          	sd	ra,8(sp)
   10694:	2ec000ef          	jal	ra,10980 <_read_r>
   10698:	02054063          	blt	a0,zero,106b8 <__sread+0x38>
   1069c:	09043783          	ld	a5,144(s0)
   106a0:	00813083          	ld	ra,8(sp)
   106a4:	00a787b3          	add	a5,a5,a0
   106a8:	08f43823          	sd	a5,144(s0)
   106ac:	00013403          	ld	s0,0(sp)
   106b0:	01010113          	addi	sp,sp,16
   106b4:	00008067          	jalr	zero,0(ra)
   106b8:	01045783          	lhu	a5,16(s0)
   106bc:	fffff737          	lui	a4,0xfffff
   106c0:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   106c4:	00e7f7b3          	and	a5,a5,a4
   106c8:	00813083          	ld	ra,8(sp)
   106cc:	00f41823          	sh	a5,16(s0)
   106d0:	00013403          	ld	s0,0(sp)
   106d4:	01010113          	addi	sp,sp,16
   106d8:	00008067          	jalr	zero,0(ra)

00000000000106dc <__seofread>:
   106dc:	00000513          	addi	a0,zero,0
   106e0:	00008067          	jalr	zero,0(ra)

00000000000106e4 <__swrite>:
   106e4:	01059783          	lh	a5,16(a1)
   106e8:	fd010113          	addi	sp,sp,-48
   106ec:	00068313          	addi	t1,a3,0
   106f0:	02113423          	sd	ra,40(sp)
   106f4:	1007f693          	andi	a3,a5,256
   106f8:	00058713          	addi	a4,a1,0
   106fc:	00060893          	addi	a7,a2,0
   10700:	00050813          	addi	a6,a0,0
   10704:	02069863          	bne	a3,zero,10734 <__swrite+0x50>
   10708:	fffff6b7          	lui	a3,0xfffff
   1070c:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10710:	02813083          	ld	ra,40(sp)
   10714:	00d7f7b3          	and	a5,a5,a3
   10718:	01271583          	lh	a1,18(a4)
   1071c:	00f71823          	sh	a5,16(a4)
   10720:	00030693          	addi	a3,t1,0 # 10210 <frame_dummy+0x14>
   10724:	00088613          	addi	a2,a7,0
   10728:	00080513          	addi	a0,a6,0
   1072c:	03010113          	addi	sp,sp,48
   10730:	2b80006f          	jal	zero,109e8 <_write_r>
   10734:	01259583          	lh	a1,18(a1)
   10738:	00c13823          	sd	a2,16(sp)
   1073c:	00200693          	addi	a3,zero,2
   10740:	00000613          	addi	a2,zero,0
   10744:	00613c23          	sd	t1,24(sp)
   10748:	00e13023          	sd	a4,0(sp)
   1074c:	00a13423          	sd	a0,8(sp)
   10750:	1c8000ef          	jal	ra,10918 <_lseek_r>
   10754:	00013703          	ld	a4,0(sp)
   10758:	01813303          	ld	t1,24(sp)
   1075c:	01013883          	ld	a7,16(sp)
   10760:	01071783          	lh	a5,16(a4)
   10764:	00813803          	ld	a6,8(sp)
   10768:	fa1ff06f          	jal	zero,10708 <__swrite+0x24>

000000000001076c <__sseek>:
   1076c:	ff010113          	addi	sp,sp,-16
   10770:	00813023          	sd	s0,0(sp)
   10774:	00058413          	addi	s0,a1,0
   10778:	01259583          	lh	a1,18(a1)
   1077c:	00113423          	sd	ra,8(sp)
   10780:	198000ef          	jal	ra,10918 <_lseek_r>
   10784:	fff00713          	addi	a4,zero,-1
   10788:	01041783          	lh	a5,16(s0)
   1078c:	02e50263          	beq	a0,a4,107b0 <__sseek+0x44>
   10790:	00001737          	lui	a4,0x1
   10794:	00e7e7b3          	or	a5,a5,a4
   10798:	00813083          	ld	ra,8(sp)
   1079c:	08a43823          	sd	a0,144(s0)
   107a0:	00f41823          	sh	a5,16(s0)
   107a4:	00013403          	ld	s0,0(sp)
   107a8:	01010113          	addi	sp,sp,16
   107ac:	00008067          	jalr	zero,0(ra)
   107b0:	80050713          	addi	a4,a0,-2048
   107b4:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   107b8:	00e7f7b3          	and	a5,a5,a4
   107bc:	00813083          	ld	ra,8(sp)
   107c0:	00f41823          	sh	a5,16(s0)
   107c4:	00013403          	ld	s0,0(sp)
   107c8:	01010113          	addi	sp,sp,16
   107cc:	00008067          	jalr	zero,0(ra)

00000000000107d0 <__sclose>:
   107d0:	01259583          	lh	a1,18(a1)
   107d4:	0040006f          	jal	zero,107d8 <_close_r>

00000000000107d8 <_close_r>:
   107d8:	fe010113          	addi	sp,sp,-32
   107dc:	00813823          	sd	s0,16(sp)
   107e0:	00913423          	sd	s1,8(sp)
   107e4:	00050493          	addi	s1,a0,0
   107e8:	00058513          	addi	a0,a1,0
   107ec:	00113c23          	sd	ra,24(sp)
   107f0:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   107f4:	7e4010ef          	jal	ra,11fd8 <_close>
   107f8:	fff00793          	addi	a5,zero,-1
   107fc:	00f50c63          	beq	a0,a5,10814 <_close_r+0x3c>
   10800:	01813083          	ld	ra,24(sp)
   10804:	01013403          	ld	s0,16(sp)
   10808:	00813483          	ld	s1,8(sp)
   1080c:	02010113          	addi	sp,sp,32
   10810:	00008067          	jalr	zero,0(ra)
   10814:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10818:	fe0784e3          	beq	a5,zero,10800 <_close_r+0x28>
   1081c:	01813083          	ld	ra,24(sp)
   10820:	01013403          	ld	s0,16(sp)
   10824:	00f4a023          	sw	a5,0(s1)
   10828:	00813483          	ld	s1,8(sp)
   1082c:	02010113          	addi	sp,sp,32
   10830:	00008067          	jalr	zero,0(ra)

0000000000010834 <_reclaim_reent>:
   10834:	1881b783          	ld	a5,392(gp) # 139a0 <_impure_ptr>
   10838:	0ca78e63          	beq	a5,a0,10914 <_reclaim_reent+0xe0>
   1083c:	06853583          	ld	a1,104(a0)
   10840:	fd010113          	addi	sp,sp,-48
   10844:	00913c23          	sd	s1,24(sp)
   10848:	02113423          	sd	ra,40(sp)
   1084c:	02813023          	sd	s0,32(sp)
   10850:	00050493          	addi	s1,a0,0
   10854:	04058863          	beq	a1,zero,108a4 <_reclaim_reent+0x70>
   10858:	01213823          	sd	s2,16(sp)
   1085c:	01313423          	sd	s3,8(sp)
   10860:	00000913          	addi	s2,zero,0
   10864:	20000993          	addi	s3,zero,512
   10868:	012587b3          	add	a5,a1,s2
   1086c:	0007b403          	ld	s0,0(a5)
   10870:	00040e63          	beq	s0,zero,1088c <_reclaim_reent+0x58>
   10874:	00040593          	addi	a1,s0,0
   10878:	00043403          	ld	s0,0(s0)
   1087c:	00048513          	addi	a0,s1,0
   10880:	5b0000ef          	jal	ra,10e30 <_free_r>
   10884:	fe0418e3          	bne	s0,zero,10874 <_reclaim_reent+0x40>
   10888:	0684b583          	ld	a1,104(s1)
   1088c:	00890913          	addi	s2,s2,8
   10890:	fd391ce3          	bne	s2,s3,10868 <_reclaim_reent+0x34>
   10894:	00048513          	addi	a0,s1,0
   10898:	598000ef          	jal	ra,10e30 <_free_r>
   1089c:	01013903          	ld	s2,16(sp)
   108a0:	00813983          	ld	s3,8(sp)
   108a4:	0504b583          	ld	a1,80(s1)
   108a8:	00058663          	beq	a1,zero,108b4 <_reclaim_reent+0x80>
   108ac:	00048513          	addi	a0,s1,0
   108b0:	580000ef          	jal	ra,10e30 <_free_r>
   108b4:	0604b403          	ld	s0,96(s1)
   108b8:	00040c63          	beq	s0,zero,108d0 <_reclaim_reent+0x9c>
   108bc:	00040593          	addi	a1,s0,0
   108c0:	00043403          	ld	s0,0(s0)
   108c4:	00048513          	addi	a0,s1,0
   108c8:	568000ef          	jal	ra,10e30 <_free_r>
   108cc:	fe0418e3          	bne	s0,zero,108bc <_reclaim_reent+0x88>
   108d0:	0784b583          	ld	a1,120(s1)
   108d4:	00058663          	beq	a1,zero,108e0 <_reclaim_reent+0xac>
   108d8:	00048513          	addi	a0,s1,0
   108dc:	554000ef          	jal	ra,10e30 <_free_r>
   108e0:	0484b783          	ld	a5,72(s1)
   108e4:	00078e63          	beq	a5,zero,10900 <_reclaim_reent+0xcc>
   108e8:	02013403          	ld	s0,32(sp)
   108ec:	02813083          	ld	ra,40(sp)
   108f0:	00048513          	addi	a0,s1,0
   108f4:	01813483          	ld	s1,24(sp)
   108f8:	03010113          	addi	sp,sp,48
   108fc:	00078067          	jalr	zero,0(a5)
   10900:	02813083          	ld	ra,40(sp)
   10904:	02013403          	ld	s0,32(sp)
   10908:	01813483          	ld	s1,24(sp)
   1090c:	03010113          	addi	sp,sp,48
   10910:	00008067          	jalr	zero,0(ra)
   10914:	00008067          	jalr	zero,0(ra)

0000000000010918 <_lseek_r>:
   10918:	fe010113          	addi	sp,sp,-32
   1091c:	00058793          	addi	a5,a1,0
   10920:	00813823          	sd	s0,16(sp)
   10924:	00913423          	sd	s1,8(sp)
   10928:	00060593          	addi	a1,a2,0
   1092c:	00050493          	addi	s1,a0,0
   10930:	00068613          	addi	a2,a3,0
   10934:	00078513          	addi	a0,a5,0
   10938:	00113c23          	sd	ra,24(sp)
   1093c:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10940:	708010ef          	jal	ra,12048 <_lseek>
   10944:	fff00793          	addi	a5,zero,-1
   10948:	00f50c63          	beq	a0,a5,10960 <_lseek_r+0x48>
   1094c:	01813083          	ld	ra,24(sp)
   10950:	01013403          	ld	s0,16(sp)
   10954:	00813483          	ld	s1,8(sp)
   10958:	02010113          	addi	sp,sp,32
   1095c:	00008067          	jalr	zero,0(ra)
   10960:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10964:	fe0784e3          	beq	a5,zero,1094c <_lseek_r+0x34>
   10968:	01813083          	ld	ra,24(sp)
   1096c:	01013403          	ld	s0,16(sp)
   10970:	00f4a023          	sw	a5,0(s1)
   10974:	00813483          	ld	s1,8(sp)
   10978:	02010113          	addi	sp,sp,32
   1097c:	00008067          	jalr	zero,0(ra)

0000000000010980 <_read_r>:
   10980:	fe010113          	addi	sp,sp,-32
   10984:	00058793          	addi	a5,a1,0
   10988:	00813823          	sd	s0,16(sp)
   1098c:	00913423          	sd	s1,8(sp)
   10990:	00060593          	addi	a1,a2,0
   10994:	00050493          	addi	s1,a0,0
   10998:	00068613          	addi	a2,a3,0
   1099c:	00078513          	addi	a0,a5,0
   109a0:	00113c23          	sd	ra,24(sp)
   109a4:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   109a8:	6e0010ef          	jal	ra,12088 <_read>
   109ac:	fff00793          	addi	a5,zero,-1
   109b0:	00f50c63          	beq	a0,a5,109c8 <_read_r+0x48>
   109b4:	01813083          	ld	ra,24(sp)
   109b8:	01013403          	ld	s0,16(sp)
   109bc:	00813483          	ld	s1,8(sp)
   109c0:	02010113          	addi	sp,sp,32
   109c4:	00008067          	jalr	zero,0(ra)
   109c8:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   109cc:	fe0784e3          	beq	a5,zero,109b4 <_read_r+0x34>
   109d0:	01813083          	ld	ra,24(sp)
   109d4:	01013403          	ld	s0,16(sp)
   109d8:	00f4a023          	sw	a5,0(s1)
   109dc:	00813483          	ld	s1,8(sp)
   109e0:	02010113          	addi	sp,sp,32
   109e4:	00008067          	jalr	zero,0(ra)

00000000000109e8 <_write_r>:
   109e8:	fe010113          	addi	sp,sp,-32
   109ec:	00058793          	addi	a5,a1,0
   109f0:	00813823          	sd	s0,16(sp)
   109f4:	00913423          	sd	s1,8(sp)
   109f8:	00060593          	addi	a1,a2,0
   109fc:	00050493          	addi	s1,a0,0
   10a00:	00068613          	addi	a2,a3,0
   10a04:	00078513          	addi	a0,a5,0
   10a08:	00113c23          	sd	ra,24(sp)
   10a0c:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10a10:	730010ef          	jal	ra,12140 <_write>
   10a14:	fff00793          	addi	a5,zero,-1
   10a18:	00f50c63          	beq	a0,a5,10a30 <_write_r+0x48>
   10a1c:	01813083          	ld	ra,24(sp)
   10a20:	01013403          	ld	s0,16(sp)
   10a24:	00813483          	ld	s1,8(sp)
   10a28:	02010113          	addi	sp,sp,32
   10a2c:	00008067          	jalr	zero,0(ra)
   10a30:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10a34:	fe0784e3          	beq	a5,zero,10a1c <_write_r+0x34>
   10a38:	01813083          	ld	ra,24(sp)
   10a3c:	01013403          	ld	s0,16(sp)
   10a40:	00f4a023          	sw	a5,0(s1)
   10a44:	00813483          	ld	s1,8(sp)
   10a48:	02010113          	addi	sp,sp,32
   10a4c:	00008067          	jalr	zero,0(ra)

0000000000010a50 <__libc_init_array>:
   10a50:	fe010113          	addi	sp,sp,-32
   10a54:	00813823          	sd	s0,16(sp)
   10a58:	01213023          	sd	s2,0(sp)
   10a5c:	00013437          	lui	s0,0x13
   10a60:	00013937          	lui	s2,0x13
   10a64:	00113c23          	sd	ra,24(sp)
   10a68:	00913423          	sd	s1,8(sp)
   10a6c:	00090913          	addi	s2,s2,0 # 13000 <__init_array_start>
   10a70:	00040413          	addi	s0,s0,0 # 13000 <__init_array_start>
   10a74:	02890263          	beq	s2,s0,10a98 <__libc_init_array+0x48>
   10a78:	40890933          	sub	s2,s2,s0
   10a7c:	40395913          	srai	s2,s2,0x3
   10a80:	00000493          	addi	s1,zero,0
   10a84:	00043783          	ld	a5,0(s0)
   10a88:	00148493          	addi	s1,s1,1
   10a8c:	00840413          	addi	s0,s0,8
   10a90:	000780e7          	jalr	ra,0(a5)
   10a94:	ff24e8e3          	bltu	s1,s2,10a84 <__libc_init_array+0x34>
   10a98:	00013937          	lui	s2,0x13
   10a9c:	00013437          	lui	s0,0x13
   10aa0:	01090913          	addi	s2,s2,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   10aa4:	00040413          	addi	s0,s0,0 # 13000 <__init_array_start>
   10aa8:	02890263          	beq	s2,s0,10acc <__libc_init_array+0x7c>
   10aac:	40890933          	sub	s2,s2,s0
   10ab0:	40395913          	srai	s2,s2,0x3
   10ab4:	00000493          	addi	s1,zero,0
   10ab8:	00043783          	ld	a5,0(s0)
   10abc:	00148493          	addi	s1,s1,1
   10ac0:	00840413          	addi	s0,s0,8
   10ac4:	000780e7          	jalr	ra,0(a5)
   10ac8:	ff24e8e3          	bltu	s1,s2,10ab8 <__libc_init_array+0x68>
   10acc:	01813083          	ld	ra,24(sp)
   10ad0:	01013403          	ld	s0,16(sp)
   10ad4:	00813483          	ld	s1,8(sp)
   10ad8:	00013903          	ld	s2,0(sp)
   10adc:	02010113          	addi	sp,sp,32
   10ae0:	00008067          	jalr	zero,0(ra)

0000000000010ae4 <memset>:
   10ae4:	00f00313          	addi	t1,zero,15
   10ae8:	00050713          	addi	a4,a0,0
   10aec:	02c37a63          	bgeu	t1,a2,10b20 <memset+0x3c>
   10af0:	00f77793          	andi	a5,a4,15
   10af4:	0a079063          	bne	a5,zero,10b94 <memset+0xb0>
   10af8:	06059e63          	bne	a1,zero,10b74 <memset+0x90>
   10afc:	ff067693          	andi	a3,a2,-16
   10b00:	00f67613          	andi	a2,a2,15
   10b04:	00e686b3          	add	a3,a3,a4
   10b08:	00b73023          	sd	a1,0(a4)
   10b0c:	00b73423          	sd	a1,8(a4)
   10b10:	01070713          	addi	a4,a4,16
   10b14:	fed76ae3          	bltu	a4,a3,10b08 <memset+0x24>
   10b18:	00061463          	bne	a2,zero,10b20 <memset+0x3c>
   10b1c:	00008067          	jalr	zero,0(ra)
   10b20:	40c306b3          	sub	a3,t1,a2
   10b24:	00269693          	slli	a3,a3,0x2
   10b28:	00000297          	auipc	t0,0x0
   10b2c:	005686b3          	add	a3,a3,t0
   10b30:	00c68067          	jalr	zero,12(a3)
   10b34:	00b70723          	sb	a1,14(a4)
   10b38:	00b706a3          	sb	a1,13(a4)
   10b3c:	00b70623          	sb	a1,12(a4)
   10b40:	00b705a3          	sb	a1,11(a4)
   10b44:	00b70523          	sb	a1,10(a4)
   10b48:	00b704a3          	sb	a1,9(a4)
   10b4c:	00b70423          	sb	a1,8(a4)
   10b50:	00b703a3          	sb	a1,7(a4)
   10b54:	00b70323          	sb	a1,6(a4)
   10b58:	00b702a3          	sb	a1,5(a4)
   10b5c:	00b70223          	sb	a1,4(a4)
   10b60:	00b701a3          	sb	a1,3(a4)
   10b64:	00b70123          	sb	a1,2(a4)
   10b68:	00b700a3          	sb	a1,1(a4)
   10b6c:	00b70023          	sb	a1,0(a4)
   10b70:	00008067          	jalr	zero,0(ra)
   10b74:	0ff5f593          	andi	a1,a1,255
   10b78:	00859693          	slli	a3,a1,0x8
   10b7c:	00d5e5b3          	or	a1,a1,a3
   10b80:	01059693          	slli	a3,a1,0x10
   10b84:	00d5e5b3          	or	a1,a1,a3
   10b88:	02059693          	slli	a3,a1,0x20
   10b8c:	00d5e5b3          	or	a1,a1,a3
   10b90:	f6dff06f          	jal	zero,10afc <memset+0x18>
   10b94:	00279693          	slli	a3,a5,0x2
   10b98:	00000297          	auipc	t0,0x0
   10b9c:	005686b3          	add	a3,a3,t0
   10ba0:	00008293          	addi	t0,ra,0
   10ba4:	f98680e7          	jalr	ra,-104(a3)
   10ba8:	00028093          	addi	ra,t0,0 # 10b98 <memset+0xb4>
   10bac:	ff078793          	addi	a5,a5,-16
   10bb0:	40f70733          	sub	a4,a4,a5
   10bb4:	00f60633          	add	a2,a2,a5
   10bb8:	f6c374e3          	bgeu	t1,a2,10b20 <memset+0x3c>
   10bbc:	f3dff06f          	jal	zero,10af8 <memset+0x14>

0000000000010bc0 <__call_exitprocs>:
   10bc0:	fb010113          	addi	sp,sp,-80
   10bc4:	03413023          	sd	s4,32(sp)
   10bc8:	03213823          	sd	s2,48(sp)
   10bcc:	1b01b903          	ld	s2,432(gp) # 139c8 <__atexit>
   10bd0:	04113423          	sd	ra,72(sp)
   10bd4:	06090e63          	beq	s2,zero,10c50 <__call_exitprocs+0x90>
   10bd8:	03313423          	sd	s3,40(sp)
   10bdc:	01513c23          	sd	s5,24(sp)
   10be0:	01613823          	sd	s6,16(sp)
   10be4:	01713423          	sd	s7,8(sp)
   10be8:	04813023          	sd	s0,64(sp)
   10bec:	02913c23          	sd	s1,56(sp)
   10bf0:	01813023          	sd	s8,0(sp)
   10bf4:	00050b13          	addi	s6,a0,0
   10bf8:	00058b93          	addi	s7,a1,0
   10bfc:	fff00993          	addi	s3,zero,-1
   10c00:	00100a93          	addi	s5,zero,1
   10c04:	00892403          	lw	s0,8(s2)
   10c08:	fff4041b          	addiw	s0,s0,-1
   10c0c:	02044463          	blt	s0,zero,10c34 <__call_exitprocs+0x74>
   10c10:	01090493          	addi	s1,s2,16
   10c14:	00341793          	slli	a5,s0,0x3
   10c18:	00f484b3          	add	s1,s1,a5
   10c1c:	040b8463          	beq	s7,zero,10c64 <__call_exitprocs+0xa4>
   10c20:	2004b783          	ld	a5,512(s1)
   10c24:	05778063          	beq	a5,s7,10c64 <__call_exitprocs+0xa4>
   10c28:	fff4041b          	addiw	s0,s0,-1
   10c2c:	ff848493          	addi	s1,s1,-8
   10c30:	ff3418e3          	bne	s0,s3,10c20 <__call_exitprocs+0x60>
   10c34:	04013403          	ld	s0,64(sp)
   10c38:	03813483          	ld	s1,56(sp)
   10c3c:	02813983          	ld	s3,40(sp)
   10c40:	01813a83          	ld	s5,24(sp)
   10c44:	01013b03          	ld	s6,16(sp)
   10c48:	00813b83          	ld	s7,8(sp)
   10c4c:	00013c03          	ld	s8,0(sp)
   10c50:	04813083          	ld	ra,72(sp)
   10c54:	03013903          	ld	s2,48(sp)
   10c58:	02013a03          	ld	s4,32(sp)
   10c5c:	05010113          	addi	sp,sp,80
   10c60:	00008067          	jalr	zero,0(ra)
   10c64:	00892783          	lw	a5,8(s2)
   10c68:	0004b683          	ld	a3,0(s1)
   10c6c:	fff7879b          	addiw	a5,a5,-1
   10c70:	06878a63          	beq	a5,s0,10ce4 <__call_exitprocs+0x124>
   10c74:	0004b023          	sd	zero,0(s1)
   10c78:	02068663          	beq	a3,zero,10ca4 <__call_exitprocs+0xe4>
   10c7c:	31092783          	lw	a5,784(s2)
   10c80:	008a973b          	sllw	a4,s5,s0
   10c84:	00892c03          	lw	s8,8(s2)
   10c88:	00e7f7b3          	and	a5,a5,a4
   10c8c:	02079463          	bne	a5,zero,10cb4 <__call_exitprocs+0xf4>
   10c90:	000680e7          	jalr	ra,0(a3)
   10c94:	00892703          	lw	a4,8(s2)
   10c98:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10c9c:	03871e63          	bne	a4,s8,10cd8 <__call_exitprocs+0x118>
   10ca0:	03279c63          	bne	a5,s2,10cd8 <__call_exitprocs+0x118>
   10ca4:	fff4041b          	addiw	s0,s0,-1
   10ca8:	ff848493          	addi	s1,s1,-8
   10cac:	f73418e3          	bne	s0,s3,10c1c <__call_exitprocs+0x5c>
   10cb0:	f85ff06f          	jal	zero,10c34 <__call_exitprocs+0x74>
   10cb4:	31492783          	lw	a5,788(s2)
   10cb8:	1004b583          	ld	a1,256(s1)
   10cbc:	00f77733          	and	a4,a4,a5
   10cc0:	02071663          	bne	a4,zero,10cec <__call_exitprocs+0x12c>
   10cc4:	000b0513          	addi	a0,s6,0
   10cc8:	000680e7          	jalr	ra,0(a3)
   10ccc:	00892703          	lw	a4,8(s2)
   10cd0:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10cd4:	fd8706e3          	beq	a4,s8,10ca0 <__call_exitprocs+0xe0>
   10cd8:	f4078ee3          	beq	a5,zero,10c34 <__call_exitprocs+0x74>
   10cdc:	00078913          	addi	s2,a5,0
   10ce0:	f25ff06f          	jal	zero,10c04 <__call_exitprocs+0x44>
   10ce4:	00892423          	sw	s0,8(s2)
   10ce8:	f91ff06f          	jal	zero,10c78 <__call_exitprocs+0xb8>
   10cec:	00058513          	addi	a0,a1,0
   10cf0:	000680e7          	jalr	ra,0(a3)
   10cf4:	fa1ff06f          	jal	zero,10c94 <__call_exitprocs+0xd4>

0000000000010cf8 <atexit>:
   10cf8:	00050593          	addi	a1,a0,0
   10cfc:	00000693          	addi	a3,zero,0
   10d00:	00000613          	addi	a2,zero,0
   10d04:	00000513          	addi	a0,zero,0
   10d08:	2340106f          	jal	zero,11f3c <__register_exitproc>

0000000000010d0c <_malloc_trim_r>:
   10d0c:	fd010113          	addi	sp,sp,-48
   10d10:	01213823          	sd	s2,16(sp)
   10d14:	00013937          	lui	s2,0x13
   10d18:	02813023          	sd	s0,32(sp)
   10d1c:	00913c23          	sd	s1,24(sp)
   10d20:	01313423          	sd	s3,8(sp)
   10d24:	00058413          	addi	s0,a1,0
   10d28:	02113423          	sd	ra,40(sp)
   10d2c:	00050993          	addi	s3,a0,0
   10d30:	18890913          	addi	s2,s2,392 # 13188 <__malloc_av_>
   10d34:	4e5000ef          	jal	ra,11a18 <__malloc_lock>
   10d38:	01093783          	ld	a5,16(s2)
   10d3c:	00001737          	lui	a4,0x1
   10d40:	0087b483          	ld	s1,8(a5)
   10d44:	ffc4f493          	andi	s1,s1,-4
   10d48:	7ff48793          	addi	a5,s1,2047
   10d4c:	7e078793          	addi	a5,a5,2016
   10d50:	40878433          	sub	s0,a5,s0
   10d54:	00c45413          	srli	s0,s0,0xc
   10d58:	fff40413          	addi	s0,s0,-1
   10d5c:	00c41413          	slli	s0,s0,0xc
   10d60:	00e44e63          	blt	s0,a4,10d7c <_malloc_trim_r+0x70>
   10d64:	00000593          	addi	a1,zero,0
   10d68:	00098513          	addi	a0,s3,0
   10d6c:	118010ef          	jal	ra,11e84 <_sbrk_r>
   10d70:	01093783          	ld	a5,16(s2)
   10d74:	009787b3          	add	a5,a5,s1
   10d78:	02f50663          	beq	a0,a5,10da4 <_malloc_trim_r+0x98>
   10d7c:	00098513          	addi	a0,s3,0
   10d80:	49d000ef          	jal	ra,11a1c <__malloc_unlock>
   10d84:	02813083          	ld	ra,40(sp)
   10d88:	02013403          	ld	s0,32(sp)
   10d8c:	01813483          	ld	s1,24(sp)
   10d90:	01013903          	ld	s2,16(sp)
   10d94:	00813983          	ld	s3,8(sp)
   10d98:	00000513          	addi	a0,zero,0
   10d9c:	03010113          	addi	sp,sp,48
   10da0:	00008067          	jalr	zero,0(ra)
   10da4:	408005b3          	sub	a1,zero,s0
   10da8:	00098513          	addi	a0,s3,0
   10dac:	0d8010ef          	jal	ra,11e84 <_sbrk_r>
   10db0:	fff00793          	addi	a5,zero,-1
   10db4:	04f50463          	beq	a0,a5,10dfc <_malloc_trim_r+0xf0>
   10db8:	01093683          	ld	a3,16(s2)
   10dbc:	4201a783          	lw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   10dc0:	408484b3          	sub	s1,s1,s0
   10dc4:	0014e493          	ori	s1,s1,1
   10dc8:	00098513          	addi	a0,s3,0
   10dcc:	408787bb          	subw	a5,a5,s0
   10dd0:	0096b423          	sd	s1,8(a3)
   10dd4:	42f1a023          	sw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   10dd8:	445000ef          	jal	ra,11a1c <__malloc_unlock>
   10ddc:	02813083          	ld	ra,40(sp)
   10de0:	02013403          	ld	s0,32(sp)
   10de4:	01813483          	ld	s1,24(sp)
   10de8:	01013903          	ld	s2,16(sp)
   10dec:	00813983          	ld	s3,8(sp)
   10df0:	00100513          	addi	a0,zero,1
   10df4:	03010113          	addi	sp,sp,48
   10df8:	00008067          	jalr	zero,0(ra)
   10dfc:	00000593          	addi	a1,zero,0
   10e00:	00098513          	addi	a0,s3,0
   10e04:	080010ef          	jal	ra,11e84 <_sbrk_r>
   10e08:	01093703          	ld	a4,16(s2)
   10e0c:	01f00693          	addi	a3,zero,31
   10e10:	40e507b3          	sub	a5,a0,a4
   10e14:	f6f6d4e3          	bge	a3,a5,10d7c <_malloc_trim_r+0x70>
   10e18:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   10e1c:	0017e793          	ori	a5,a5,1
   10e20:	40c50533          	sub	a0,a0,a2
   10e24:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   10e28:	42a1a023          	sw	a0,1056(gp) # 13c38 <__malloc_current_mallinfo>
   10e2c:	f51ff06f          	jal	zero,10d7c <_malloc_trim_r+0x70>

0000000000010e30 <_free_r>:
   10e30:	12058863          	beq	a1,zero,10f60 <_free_r+0x130>
   10e34:	fe010113          	addi	sp,sp,-32
   10e38:	00813823          	sd	s0,16(sp)
   10e3c:	00b13423          	sd	a1,8(sp)
   10e40:	00050413          	addi	s0,a0,0
   10e44:	00113c23          	sd	ra,24(sp)
   10e48:	3d1000ef          	jal	ra,11a18 <__malloc_lock>
   10e4c:	00813583          	ld	a1,8(sp)
   10e50:	00013837          	lui	a6,0x13
   10e54:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   10e58:	ff85b503          	ld	a0,-8(a1)
   10e5c:	ff058713          	addi	a4,a1,-16
   10e60:	01083883          	ld	a7,16(a6)
   10e64:	ffe57793          	andi	a5,a0,-2
   10e68:	00f70633          	add	a2,a4,a5
   10e6c:	00863683          	ld	a3,8(a2)
   10e70:	00157313          	andi	t1,a0,1
   10e74:	ffc6f693          	andi	a3,a3,-4
   10e78:	18c88e63          	beq	a7,a2,11014 <_free_r+0x1e4>
   10e7c:	00d63423          	sd	a3,8(a2)
   10e80:	00d608b3          	add	a7,a2,a3
   10e84:	0088b883          	ld	a7,8(a7)
   10e88:	0018f893          	andi	a7,a7,1
   10e8c:	08031e63          	bne	t1,zero,10f28 <_free_r+0xf8>
   10e90:	ff05b303          	ld	t1,-16(a1)
   10e94:	000135b7          	lui	a1,0x13
   10e98:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   10e9c:	40670733          	sub	a4,a4,t1
   10ea0:	01073503          	ld	a0,16(a4)
   10ea4:	006787b3          	add	a5,a5,t1
   10ea8:	14b50063          	beq	a0,a1,10fe8 <_free_r+0x1b8>
   10eac:	01873303          	ld	t1,24(a4)
   10eb0:	00653c23          	sd	t1,24(a0)
   10eb4:	00a33823          	sd	a0,16(t1)
   10eb8:	1a088263          	beq	a7,zero,1105c <_free_r+0x22c>
   10ebc:	0017e693          	ori	a3,a5,1
   10ec0:	00d73423          	sd	a3,8(a4)
   10ec4:	00f63023          	sd	a5,0(a2)
   10ec8:	1ff00693          	addi	a3,zero,511
   10ecc:	0af6e663          	bltu	a3,a5,10f78 <_free_r+0x148>
   10ed0:	0037d793          	srli	a5,a5,0x3
   10ed4:	00179693          	slli	a3,a5,0x1
   10ed8:	0026869b          	addiw	a3,a3,2
   10edc:	00369693          	slli	a3,a3,0x3
   10ee0:	00883503          	ld	a0,8(a6)
   10ee4:	00d806b3          	add	a3,a6,a3
   10ee8:	0006b583          	ld	a1,0(a3)
   10eec:	4027d61b          	sraiw	a2,a5,0x2
   10ef0:	00100793          	addi	a5,zero,1
   10ef4:	00c797b3          	sll	a5,a5,a2
   10ef8:	00a7e7b3          	or	a5,a5,a0
   10efc:	ff068613          	addi	a2,a3,-16
   10f00:	00b73823          	sd	a1,16(a4)
   10f04:	00c73c23          	sd	a2,24(a4)
   10f08:	00f83423          	sd	a5,8(a6)
   10f0c:	00e6b023          	sd	a4,0(a3)
   10f10:	00e5bc23          	sd	a4,24(a1)
   10f14:	00040513          	addi	a0,s0,0
   10f18:	01013403          	ld	s0,16(sp)
   10f1c:	01813083          	ld	ra,24(sp)
   10f20:	02010113          	addi	sp,sp,32
   10f24:	2f90006f          	jal	zero,11a1c <__malloc_unlock>
   10f28:	02089e63          	bne	a7,zero,10f64 <_free_r+0x134>
   10f2c:	000135b7          	lui	a1,0x13
   10f30:	00d787b3          	add	a5,a5,a3
   10f34:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   10f38:	01063683          	ld	a3,16(a2)
   10f3c:	0017e893          	ori	a7,a5,1
   10f40:	00f70533          	add	a0,a4,a5
   10f44:	16b68663          	beq	a3,a1,110b0 <_free_r+0x280>
   10f48:	01863603          	ld	a2,24(a2)
   10f4c:	00c6bc23          	sd	a2,24(a3)
   10f50:	00d63823          	sd	a3,16(a2)
   10f54:	01173423          	sd	a7,8(a4)
   10f58:	00f53023          	sd	a5,0(a0)
   10f5c:	f6dff06f          	jal	zero,10ec8 <_free_r+0x98>
   10f60:	00008067          	jalr	zero,0(ra)
   10f64:	00156513          	ori	a0,a0,1
   10f68:	fea5bc23          	sd	a0,-8(a1)
   10f6c:	00f63023          	sd	a5,0(a2)
   10f70:	1ff00693          	addi	a3,zero,511
   10f74:	f4f6fee3          	bgeu	a3,a5,10ed0 <_free_r+0xa0>
   10f78:	0097d693          	srli	a3,a5,0x9
   10f7c:	00400613          	addi	a2,zero,4
   10f80:	0ed66263          	bltu	a2,a3,11064 <_free_r+0x234>
   10f84:	0067d693          	srli	a3,a5,0x6
   10f88:	00169593          	slli	a1,a3,0x1
   10f8c:	0725859b          	addiw	a1,a1,114
   10f90:	00359593          	slli	a1,a1,0x3
   10f94:	0386861b          	addiw	a2,a3,56
   10f98:	00b805b3          	add	a1,a6,a1
   10f9c:	0005b683          	ld	a3,0(a1)
   10fa0:	ff058593          	addi	a1,a1,-16
   10fa4:	00d59863          	bne	a1,a3,10fb4 <_free_r+0x184>
   10fa8:	1240006f          	jal	zero,110cc <_free_r+0x29c>
   10fac:	0106b683          	ld	a3,16(a3)
   10fb0:	00d58863          	beq	a1,a3,10fc0 <_free_r+0x190>
   10fb4:	0086b603          	ld	a2,8(a3)
   10fb8:	ffc67613          	andi	a2,a2,-4
   10fbc:	fec7e8e3          	bltu	a5,a2,10fac <_free_r+0x17c>
   10fc0:	0186b583          	ld	a1,24(a3)
   10fc4:	00b73c23          	sd	a1,24(a4)
   10fc8:	00d73823          	sd	a3,16(a4)
   10fcc:	00040513          	addi	a0,s0,0
   10fd0:	01013403          	ld	s0,16(sp)
   10fd4:	01813083          	ld	ra,24(sp)
   10fd8:	00e5b823          	sd	a4,16(a1)
   10fdc:	00e6bc23          	sd	a4,24(a3)
   10fe0:	02010113          	addi	sp,sp,32
   10fe4:	2390006f          	jal	zero,11a1c <__malloc_unlock>
   10fe8:	0a089263          	bne	a7,zero,1108c <_free_r+0x25c>
   10fec:	01863583          	ld	a1,24(a2)
   10ff0:	01063603          	ld	a2,16(a2)
   10ff4:	00f686b3          	add	a3,a3,a5
   10ff8:	0016e793          	ori	a5,a3,1
   10ffc:	00b63c23          	sd	a1,24(a2)
   11000:	00c5b823          	sd	a2,16(a1)
   11004:	00f73423          	sd	a5,8(a4)
   11008:	00d70733          	add	a4,a4,a3
   1100c:	00d73023          	sd	a3,0(a4)
   11010:	f05ff06f          	jal	zero,10f14 <_free_r+0xe4>
   11014:	00d786b3          	add	a3,a5,a3
   11018:	02031063          	bne	t1,zero,11038 <_free_r+0x208>
   1101c:	ff05b783          	ld	a5,-16(a1)
   11020:	40f70733          	sub	a4,a4,a5
   11024:	01073603          	ld	a2,16(a4)
   11028:	00f686b3          	add	a3,a3,a5
   1102c:	01873783          	ld	a5,24(a4)
   11030:	00f63c23          	sd	a5,24(a2)
   11034:	00c7b823          	sd	a2,16(a5)
   11038:	0016e613          	ori	a2,a3,1
   1103c:	1981b783          	ld	a5,408(gp) # 139b0 <__malloc_trim_threshold>
   11040:	00c73423          	sd	a2,8(a4)
   11044:	00e83823          	sd	a4,16(a6)
   11048:	ecf6e6e3          	bltu	a3,a5,10f14 <_free_r+0xe4>
   1104c:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   11050:	00040513          	addi	a0,s0,0
   11054:	cb9ff0ef          	jal	ra,10d0c <_malloc_trim_r>
   11058:	ebdff06f          	jal	zero,10f14 <_free_r+0xe4>
   1105c:	00d787b3          	add	a5,a5,a3
   11060:	ed9ff06f          	jal	zero,10f38 <_free_r+0x108>
   11064:	01400613          	addi	a2,zero,20
   11068:	02d67a63          	bgeu	a2,a3,1109c <_free_r+0x26c>
   1106c:	05400613          	addi	a2,zero,84
   11070:	06d66c63          	bltu	a2,a3,110e8 <_free_r+0x2b8>
   11074:	00c7d693          	srli	a3,a5,0xc
   11078:	00169593          	slli	a1,a3,0x1
   1107c:	0de5859b          	addiw	a1,a1,222
   11080:	00359593          	slli	a1,a1,0x3
   11084:	06e6861b          	addiw	a2,a3,110
   11088:	f11ff06f          	jal	zero,10f98 <_free_r+0x168>
   1108c:	0017e693          	ori	a3,a5,1
   11090:	00d73423          	sd	a3,8(a4)
   11094:	00f63023          	sd	a5,0(a2)
   11098:	e7dff06f          	jal	zero,10f14 <_free_r+0xe4>
   1109c:	00169593          	slli	a1,a3,0x1
   110a0:	0b85859b          	addiw	a1,a1,184
   110a4:	00359593          	slli	a1,a1,0x3
   110a8:	05b6861b          	addiw	a2,a3,91
   110ac:	eedff06f          	jal	zero,10f98 <_free_r+0x168>
   110b0:	02e83423          	sd	a4,40(a6)
   110b4:	02e83023          	sd	a4,32(a6)
   110b8:	00b73c23          	sd	a1,24(a4)
   110bc:	00b73823          	sd	a1,16(a4)
   110c0:	01173423          	sd	a7,8(a4)
   110c4:	00f53023          	sd	a5,0(a0)
   110c8:	e4dff06f          	jal	zero,10f14 <_free_r+0xe4>
   110cc:	00883503          	ld	a0,8(a6)
   110d0:	4026561b          	sraiw	a2,a2,0x2
   110d4:	00100793          	addi	a5,zero,1
   110d8:	00c797b3          	sll	a5,a5,a2
   110dc:	00a7e7b3          	or	a5,a5,a0
   110e0:	00f83423          	sd	a5,8(a6)
   110e4:	ee1ff06f          	jal	zero,10fc4 <_free_r+0x194>
   110e8:	15400613          	addi	a2,zero,340
   110ec:	00d66e63          	bltu	a2,a3,11108 <_free_r+0x2d8>
   110f0:	00f7d693          	srli	a3,a5,0xf
   110f4:	00169593          	slli	a1,a3,0x1
   110f8:	0f05859b          	addiw	a1,a1,240
   110fc:	00359593          	slli	a1,a1,0x3
   11100:	0776861b          	addiw	a2,a3,119
   11104:	e95ff06f          	jal	zero,10f98 <_free_r+0x168>
   11108:	55400613          	addi	a2,zero,1364
   1110c:	00d66e63          	bltu	a2,a3,11128 <_free_r+0x2f8>
   11110:	0127d693          	srli	a3,a5,0x12
   11114:	00169593          	slli	a1,a3,0x1
   11118:	0fa5859b          	addiw	a1,a1,250
   1111c:	00359593          	slli	a1,a1,0x3
   11120:	07c6861b          	addiw	a2,a3,124
   11124:	e75ff06f          	jal	zero,10f98 <_free_r+0x168>
   11128:	7f000593          	addi	a1,zero,2032
   1112c:	07e00613          	addi	a2,zero,126
   11130:	e69ff06f          	jal	zero,10f98 <_free_r+0x168>

0000000000011134 <_malloc_r>:
   11134:	fa010113          	addi	sp,sp,-96
   11138:	04813823          	sd	s0,80(sp)
   1113c:	04113c23          	sd	ra,88(sp)
   11140:	01758713          	addi	a4,a1,23
   11144:	02e00793          	addi	a5,zero,46
   11148:	00050413          	addi	s0,a0,0
   1114c:	08e7ee63          	bltu	a5,a4,111e8 <_malloc_r+0xb4>
   11150:	02000713          	addi	a4,zero,32
   11154:	06b76c63          	bltu	a4,a1,111cc <_malloc_r+0x98>
   11158:	0c1000ef          	jal	ra,11a18 <__malloc_lock>
   1115c:	02000713          	addi	a4,zero,32
   11160:	05000693          	addi	a3,zero,80
   11164:	00400893          	addi	a7,zero,4
   11168:	00013837          	lui	a6,0x13
   1116c:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11170:	00d806b3          	add	a3,a6,a3
   11174:	0086b783          	ld	a5,8(a3)
   11178:	ff068613          	addi	a2,a3,-16
   1117c:	48c78063          	beq	a5,a2,115fc <_malloc_r+0x4c8>
   11180:	0087b703          	ld	a4,8(a5)
   11184:	0187b603          	ld	a2,24(a5)
   11188:	0107b583          	ld	a1,16(a5)
   1118c:	ffc77713          	andi	a4,a4,-4
   11190:	00e78733          	add	a4,a5,a4
   11194:	00873683          	ld	a3,8(a4)
   11198:	00c5bc23          	sd	a2,24(a1)
   1119c:	00b63823          	sd	a1,16(a2)
   111a0:	0016e693          	ori	a3,a3,1
   111a4:	00040513          	addi	a0,s0,0
   111a8:	00d73423          	sd	a3,8(a4)
   111ac:	00f13423          	sd	a5,8(sp)
   111b0:	06d000ef          	jal	ra,11a1c <__malloc_unlock>
   111b4:	00813783          	ld	a5,8(sp)
   111b8:	05813083          	ld	ra,88(sp)
   111bc:	05013403          	ld	s0,80(sp)
   111c0:	01078513          	addi	a0,a5,16
   111c4:	06010113          	addi	sp,sp,96
   111c8:	00008067          	jalr	zero,0(ra)
   111cc:	00c00793          	addi	a5,zero,12
   111d0:	00f42023          	sw	a5,0(s0)
   111d4:	00000513          	addi	a0,zero,0
   111d8:	05813083          	ld	ra,88(sp)
   111dc:	05013403          	ld	s0,80(sp)
   111e0:	06010113          	addi	sp,sp,96
   111e4:	00008067          	jalr	zero,0(ra)
   111e8:	00100793          	addi	a5,zero,1
   111ec:	ff077713          	andi	a4,a4,-16
   111f0:	01f79793          	slli	a5,a5,0x1f
   111f4:	fcf77ce3          	bgeu	a4,a5,111cc <_malloc_r+0x98>
   111f8:	fcb76ae3          	bltu	a4,a1,111cc <_malloc_r+0x98>
   111fc:	00e13423          	sd	a4,8(sp)
   11200:	019000ef          	jal	ra,11a18 <__malloc_lock>
   11204:	00813703          	ld	a4,8(sp)
   11208:	1f700793          	addi	a5,zero,503
   1120c:	4ee7fa63          	bgeu	a5,a4,11700 <_malloc_r+0x5cc>
   11210:	00975793          	srli	a5,a4,0x9
   11214:	18078a63          	beq	a5,zero,113a8 <_malloc_r+0x274>
   11218:	00400693          	addi	a3,zero,4
   1121c:	44f6ea63          	bltu	a3,a5,11670 <_malloc_r+0x53c>
   11220:	00675793          	srli	a5,a4,0x6
   11224:	0397889b          	addiw	a7,a5,57
   11228:	0018951b          	slliw	a0,a7,0x1
   1122c:	03878e1b          	addiw	t3,a5,56
   11230:	00351513          	slli	a0,a0,0x3
   11234:	00013837          	lui	a6,0x13
   11238:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   1123c:	00a80533          	add	a0,a6,a0
   11240:	00853783          	ld	a5,8(a0)
   11244:	ff050513          	addi	a0,a0,-16
   11248:	02f50863          	beq	a0,a5,11278 <_malloc_r+0x144>
   1124c:	01f00313          	addi	t1,zero,31
   11250:	0140006f          	jal	zero,11264 <_malloc_r+0x130>
   11254:	0187b583          	ld	a1,24(a5)
   11258:	36065263          	bge	a2,zero,115bc <_malloc_r+0x488>
   1125c:	00b50e63          	beq	a0,a1,11278 <_malloc_r+0x144>
   11260:	00058793          	addi	a5,a1,0
   11264:	0087b683          	ld	a3,8(a5)
   11268:	ffc6f693          	andi	a3,a3,-4
   1126c:	40e68633          	sub	a2,a3,a4
   11270:	fec352e3          	bge	t1,a2,11254 <_malloc_r+0x120>
   11274:	000e0893          	addi	a7,t3,0
   11278:	02083783          	ld	a5,32(a6)
   1127c:	00013e37          	lui	t3,0x13
   11280:	198e0e13          	addi	t3,t3,408 # 13198 <__malloc_av_+0x10>
   11284:	2fc78a63          	beq	a5,t3,11578 <_malloc_r+0x444>
   11288:	0087b303          	ld	t1,8(a5)
   1128c:	01f00613          	addi	a2,zero,31
   11290:	ffc37313          	andi	t1,t1,-4
   11294:	40e306b3          	sub	a3,t1,a4
   11298:	4ad64463          	blt	a2,a3,11740 <_malloc_r+0x60c>
   1129c:	03c83423          	sd	t3,40(a6)
   112a0:	03c83023          	sd	t3,32(a6)
   112a4:	4606da63          	bge	a3,zero,11718 <_malloc_r+0x5e4>
   112a8:	1ff00693          	addi	a3,zero,511
   112ac:	00883583          	ld	a1,8(a6)
   112b0:	3466ee63          	bltu	a3,t1,1160c <_malloc_r+0x4d8>
   112b4:	00335313          	srli	t1,t1,0x3
   112b8:	00131693          	slli	a3,t1,0x1
   112bc:	0026869b          	addiw	a3,a3,2
   112c0:	00369693          	slli	a3,a3,0x3
   112c4:	00d806b3          	add	a3,a6,a3
   112c8:	0006b503          	ld	a0,0(a3)
   112cc:	4023531b          	sraiw	t1,t1,0x2
   112d0:	00100613          	addi	a2,zero,1
   112d4:	00661633          	sll	a2,a2,t1
   112d8:	00c5e5b3          	or	a1,a1,a2
   112dc:	ff068613          	addi	a2,a3,-16
   112e0:	00a7b823          	sd	a0,16(a5)
   112e4:	00c7bc23          	sd	a2,24(a5)
   112e8:	00b83423          	sd	a1,8(a6)
   112ec:	00f6b023          	sd	a5,0(a3)
   112f0:	00f53c23          	sd	a5,24(a0)
   112f4:	4028d79b          	sraiw	a5,a7,0x2
   112f8:	00100513          	addi	a0,zero,1
   112fc:	00f51533          	sll	a0,a0,a5
   11300:	0aa5ec63          	bltu	a1,a0,113b8 <_malloc_r+0x284>
   11304:	00b577b3          	and	a5,a0,a1
   11308:	02079463          	bne	a5,zero,11330 <_malloc_r+0x1fc>
   1130c:	00151513          	slli	a0,a0,0x1
   11310:	ffc8f893          	andi	a7,a7,-4
   11314:	00b577b3          	and	a5,a0,a1
   11318:	0048889b          	addiw	a7,a7,4
   1131c:	00079a63          	bne	a5,zero,11330 <_malloc_r+0x1fc>
   11320:	00151513          	slli	a0,a0,0x1
   11324:	00b577b3          	and	a5,a0,a1
   11328:	0048889b          	addiw	a7,a7,4
   1132c:	fe078ae3          	beq	a5,zero,11320 <_malloc_r+0x1ec>
   11330:	01f00e93          	addi	t4,zero,31
   11334:	00189f13          	slli	t5,a7,0x1
   11338:	002f0f1b          	addiw	t5,t5,2
   1133c:	003f1f13          	slli	t5,t5,0x3
   11340:	ff0f0f13          	addi	t5,t5,-16
   11344:	01e80f33          	add	t5,a6,t5
   11348:	000f0313          	addi	t1,t5,0
   1134c:	01833683          	ld	a3,24(t1)
   11350:	00088f93          	addi	t6,a7,0
   11354:	34d30263          	beq	t1,a3,11698 <_malloc_r+0x564>
   11358:	0086b603          	ld	a2,8(a3)
   1135c:	00068793          	addi	a5,a3,0
   11360:	0186b683          	ld	a3,24(a3)
   11364:	ffc67613          	andi	a2,a2,-4
   11368:	40e605b3          	sub	a1,a2,a4
   1136c:	34bec263          	blt	t4,a1,116b0 <_malloc_r+0x57c>
   11370:	fe05c2e3          	blt	a1,zero,11354 <_malloc_r+0x220>
   11374:	00c78633          	add	a2,a5,a2
   11378:	00863703          	ld	a4,8(a2)
   1137c:	0107b583          	ld	a1,16(a5)
   11380:	00040513          	addi	a0,s0,0
   11384:	00176713          	ori	a4,a4,1
   11388:	00e63423          	sd	a4,8(a2)
   1138c:	00d5bc23          	sd	a3,24(a1)
   11390:	00b6b823          	sd	a1,16(a3)
   11394:	00f13423          	sd	a5,8(sp)
   11398:	684000ef          	jal	ra,11a1c <__malloc_unlock>
   1139c:	00813783          	ld	a5,8(sp)
   113a0:	01078513          	addi	a0,a5,16
   113a4:	e35ff06f          	jal	zero,111d8 <_malloc_r+0xa4>
   113a8:	40000513          	addi	a0,zero,1024
   113ac:	04000893          	addi	a7,zero,64
   113b0:	03f00e13          	addi	t3,zero,63
   113b4:	e81ff06f          	jal	zero,11234 <_malloc_r+0x100>
   113b8:	01083783          	ld	a5,16(a6)
   113bc:	0087b683          	ld	a3,8(a5)
   113c0:	ffc6f893          	andi	a7,a3,-4
   113c4:	40e88633          	sub	a2,a7,a4
   113c8:	00e8e663          	bltu	a7,a4,113d4 <_malloc_r+0x2a0>
   113cc:	02062693          	slti	a3,a2,32
   113d0:	1a068863          	beq	a3,zero,11580 <_malloc_r+0x44c>
   113d4:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   113d8:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   113dc:	fff00693          	addi	a3,zero,-1
   113e0:	00b705b3          	add	a1,a4,a1
   113e4:	44d60663          	beq	a2,a3,11830 <_malloc_r+0x6fc>
   113e8:	000016b7          	lui	a3,0x1
   113ec:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   113f0:	00d585b3          	add	a1,a1,a3
   113f4:	fffff6b7          	lui	a3,0xfffff
   113f8:	00d5f5b3          	and	a1,a1,a3
   113fc:	00040513          	addi	a0,s0,0
   11400:	03013423          	sd	a6,40(sp)
   11404:	02f13023          	sd	a5,32(sp)
   11408:	00e13c23          	sd	a4,24(sp)
   1140c:	01113823          	sd	a7,16(sp)
   11410:	00b13423          	sd	a1,8(sp)
   11414:	271000ef          	jal	ra,11e84 <_sbrk_r>
   11418:	fff00693          	addi	a3,zero,-1
   1141c:	00813583          	ld	a1,8(sp)
   11420:	01013883          	ld	a7,16(sp)
   11424:	01813703          	ld	a4,24(sp)
   11428:	02013783          	ld	a5,32(sp)
   1142c:	02813803          	ld	a6,40(sp)
   11430:	00050313          	addi	t1,a0,0
   11434:	36d50663          	beq	a0,a3,117a0 <_malloc_r+0x66c>
   11438:	011786b3          	add	a3,a5,a7
   1143c:	36d56063          	bltu	a0,a3,1179c <_malloc_r+0x668>
   11440:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11444:	000e2603          	lw	a2,0(t3)
   11448:	00b6063b          	addw	a2,a2,a1
   1144c:	00ce2023          	sw	a2,0(t3)
   11450:	00060513          	addi	a0,a2,0
   11454:	4a668c63          	beq	a3,t1,1190c <_malloc_r+0x7d8>
   11458:	1901bf03          	ld	t5,400(gp) # 139a8 <__malloc_sbrk_base>
   1145c:	fff00613          	addi	a2,zero,-1
   11460:	4ccf0463          	beq	t5,a2,11928 <_malloc_r+0x7f4>
   11464:	40d306b3          	sub	a3,t1,a3
   11468:	00a686bb          	addw	a3,a3,a0
   1146c:	00de2023          	sw	a3,0(t3)
   11470:	00f37e93          	andi	t4,t1,15
   11474:	3c0e8e63          	beq	t4,zero,11850 <_malloc_r+0x71c>
   11478:	ff037313          	andi	t1,t1,-16
   1147c:	000016b7          	lui	a3,0x1
   11480:	01030313          	addi	t1,t1,16
   11484:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   11488:	00b30633          	add	a2,t1,a1
   1148c:	41d685b3          	sub	a1,a3,t4
   11490:	40c585b3          	sub	a1,a1,a2
   11494:	03459593          	slli	a1,a1,0x34
   11498:	0345d593          	srli	a1,a1,0x34
   1149c:	00040513          	addi	a0,s0,0
   114a0:	05c13023          	sd	t3,64(sp)
   114a4:	03013c23          	sd	a6,56(sp)
   114a8:	02f13823          	sd	a5,48(sp)
   114ac:	02e13423          	sd	a4,40(sp)
   114b0:	03113023          	sd	a7,32(sp)
   114b4:	00613c23          	sd	t1,24(sp)
   114b8:	01d13823          	sd	t4,16(sp)
   114bc:	00c13423          	sd	a2,8(sp)
   114c0:	04b13423          	sd	a1,72(sp)
   114c4:	1c1000ef          	jal	ra,11e84 <_sbrk_r>
   114c8:	00050693          	addi	a3,a0,0
   114cc:	fff00513          	addi	a0,zero,-1
   114d0:	00813603          	ld	a2,8(sp)
   114d4:	01013e83          	ld	t4,16(sp)
   114d8:	01813303          	ld	t1,24(sp)
   114dc:	02013883          	ld	a7,32(sp)
   114e0:	02813703          	ld	a4,40(sp)
   114e4:	03013783          	ld	a5,48(sp)
   114e8:	03813803          	ld	a6,56(sp)
   114ec:	04013e03          	ld	t3,64(sp)
   114f0:	48a68663          	beq	a3,a0,1197c <_malloc_r+0x848>
   114f4:	04813583          	ld	a1,72(sp)
   114f8:	0005851b          	addiw	a0,a1,0
   114fc:	000e2603          	lw	a2,0(t3)
   11500:	406686b3          	sub	a3,a3,t1
   11504:	00b686b3          	add	a3,a3,a1
   11508:	0016e693          	ori	a3,a3,1
   1150c:	00683823          	sd	t1,16(a6)
   11510:	00a6063b          	addw	a2,a2,a0
   11514:	00d33423          	sd	a3,8(t1)
   11518:	00ce2023          	sw	a2,0(t3)
   1151c:	03078e63          	beq	a5,a6,11558 <_malloc_r+0x424>
   11520:	01f00513          	addi	a0,zero,31
   11524:	41157663          	bgeu	a0,a7,11930 <_malloc_r+0x7fc>
   11528:	0087b583          	ld	a1,8(a5)
   1152c:	fe888693          	addi	a3,a7,-24
   11530:	ff06f693          	andi	a3,a3,-16
   11534:	0015f593          	andi	a1,a1,1
   11538:	00d5e5b3          	or	a1,a1,a3
   1153c:	00b7b423          	sd	a1,8(a5)
   11540:	00900893          	addi	a7,zero,9
   11544:	00d785b3          	add	a1,a5,a3
   11548:	0115b423          	sd	a7,8(a1)
   1154c:	0115b823          	sd	a7,16(a1)
   11550:	44d56863          	bltu	a0,a3,119a0 <_malloc_r+0x86c>
   11554:	00833683          	ld	a3,8(t1)
   11558:	1c01b583          	ld	a1,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   1155c:	00c5f463          	bgeu	a1,a2,11564 <_malloc_r+0x430>
   11560:	1cc1b023          	sd	a2,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   11564:	1b81b583          	ld	a1,440(gp) # 139d0 <__malloc_max_total_mem>
   11568:	00c5f463          	bgeu	a1,a2,11570 <_malloc_r+0x43c>
   1156c:	1ac1bc23          	sd	a2,440(gp) # 139d0 <__malloc_max_total_mem>
   11570:	00030793          	addi	a5,t1,0
   11574:	2340006f          	jal	zero,117a8 <_malloc_r+0x674>
   11578:	00883583          	ld	a1,8(a6)
   1157c:	d79ff06f          	jal	zero,112f4 <_malloc_r+0x1c0>
   11580:	00176693          	ori	a3,a4,1
   11584:	00d7b423          	sd	a3,8(a5)
   11588:	00e78733          	add	a4,a5,a4
   1158c:	00166613          	ori	a2,a2,1
   11590:	00e83823          	sd	a4,16(a6)
   11594:	00040513          	addi	a0,s0,0
   11598:	00c73423          	sd	a2,8(a4)
   1159c:	00f13423          	sd	a5,8(sp)
   115a0:	47c000ef          	jal	ra,11a1c <__malloc_unlock>
   115a4:	00813783          	ld	a5,8(sp)
   115a8:	05813083          	ld	ra,88(sp)
   115ac:	05013403          	ld	s0,80(sp)
   115b0:	01078513          	addi	a0,a5,16
   115b4:	06010113          	addi	sp,sp,96
   115b8:	00008067          	jalr	zero,0(ra)
   115bc:	0107b603          	ld	a2,16(a5)
   115c0:	00d786b3          	add	a3,a5,a3
   115c4:	0086b703          	ld	a4,8(a3)
   115c8:	00b63c23          	sd	a1,24(a2)
   115cc:	00c5b823          	sd	a2,16(a1)
   115d0:	00176713          	ori	a4,a4,1
   115d4:	00040513          	addi	a0,s0,0
   115d8:	00e6b423          	sd	a4,8(a3)
   115dc:	00f13423          	sd	a5,8(sp)
   115e0:	43c000ef          	jal	ra,11a1c <__malloc_unlock>
   115e4:	00813783          	ld	a5,8(sp)
   115e8:	05813083          	ld	ra,88(sp)
   115ec:	05013403          	ld	s0,80(sp)
   115f0:	01078513          	addi	a0,a5,16
   115f4:	06010113          	addi	sp,sp,96
   115f8:	00008067          	jalr	zero,0(ra)
   115fc:	0186b783          	ld	a5,24(a3)
   11600:	0028889b          	addiw	a7,a7,2
   11604:	c6f68ae3          	beq	a3,a5,11278 <_malloc_r+0x144>
   11608:	b79ff06f          	jal	zero,11180 <_malloc_r+0x4c>
   1160c:	00935693          	srli	a3,t1,0x9
   11610:	00400613          	addi	a2,zero,4
   11614:	16d67863          	bgeu	a2,a3,11784 <_malloc_r+0x650>
   11618:	01400613          	addi	a2,zero,20
   1161c:	28d66e63          	bltu	a2,a3,118b8 <_malloc_r+0x784>
   11620:	00169513          	slli	a0,a3,0x1
   11624:	0b85051b          	addiw	a0,a0,184
   11628:	00351513          	slli	a0,a0,0x3
   1162c:	05b6861b          	addiw	a2,a3,91
   11630:	00a80533          	add	a0,a6,a0
   11634:	00053683          	ld	a3,0(a0)
   11638:	ff050513          	addi	a0,a0,-16
   1163c:	00d51863          	bne	a0,a3,1164c <_malloc_r+0x518>
   11640:	1f80006f          	jal	zero,11838 <_malloc_r+0x704>
   11644:	0106b683          	ld	a3,16(a3)
   11648:	00d50863          	beq	a0,a3,11658 <_malloc_r+0x524>
   1164c:	0086b603          	ld	a2,8(a3)
   11650:	ffc67613          	andi	a2,a2,-4
   11654:	fec368e3          	bltu	t1,a2,11644 <_malloc_r+0x510>
   11658:	0186b503          	ld	a0,24(a3)
   1165c:	00a7bc23          	sd	a0,24(a5)
   11660:	00d7b823          	sd	a3,16(a5)
   11664:	00f53823          	sd	a5,16(a0)
   11668:	00f6bc23          	sd	a5,24(a3)
   1166c:	c89ff06f          	jal	zero,112f4 <_malloc_r+0x1c0>
   11670:	01400693          	addi	a3,zero,20
   11674:	14f6fa63          	bgeu	a3,a5,117c8 <_malloc_r+0x694>
   11678:	05400693          	addi	a3,zero,84
   1167c:	24f6ee63          	bltu	a3,a5,118d8 <_malloc_r+0x7a4>
   11680:	00c75793          	srli	a5,a4,0xc
   11684:	06f7889b          	addiw	a7,a5,111
   11688:	0018951b          	slliw	a0,a7,0x1
   1168c:	06e78e1b          	addiw	t3,a5,110
   11690:	00351513          	slli	a0,a0,0x3
   11694:	ba1ff06f          	jal	zero,11234 <_malloc_r+0x100>
   11698:	001f8f9b          	addiw	t6,t6,1
   1169c:	003ff793          	andi	a5,t6,3
   116a0:	01030313          	addi	t1,t1,16
   116a4:	14078263          	beq	a5,zero,117e8 <_malloc_r+0x6b4>
   116a8:	01833683          	ld	a3,24(t1)
   116ac:	ca9ff06f          	jal	zero,11354 <_malloc_r+0x220>
   116b0:	0107b503          	ld	a0,16(a5)
   116b4:	00176893          	ori	a7,a4,1
   116b8:	0117b423          	sd	a7,8(a5)
   116bc:	00d53c23          	sd	a3,24(a0)
   116c0:	00a6b823          	sd	a0,16(a3)
   116c4:	00e78733          	add	a4,a5,a4
   116c8:	02e83423          	sd	a4,40(a6)
   116cc:	02e83023          	sd	a4,32(a6)
   116d0:	0015e693          	ori	a3,a1,1
   116d4:	00c78633          	add	a2,a5,a2
   116d8:	01c73c23          	sd	t3,24(a4)
   116dc:	01c73823          	sd	t3,16(a4)
   116e0:	00d73423          	sd	a3,8(a4)
   116e4:	00040513          	addi	a0,s0,0
   116e8:	00b63023          	sd	a1,0(a2)
   116ec:	00f13423          	sd	a5,8(sp)
   116f0:	32c000ef          	jal	ra,11a1c <__malloc_unlock>
   116f4:	00813783          	ld	a5,8(sp)
   116f8:	01078513          	addi	a0,a5,16
   116fc:	addff06f          	jal	zero,111d8 <_malloc_r+0xa4>
   11700:	00375893          	srli	a7,a4,0x3
   11704:	00189693          	slli	a3,a7,0x1
   11708:	0026869b          	addiw	a3,a3,2
   1170c:	00369693          	slli	a3,a3,0x3
   11710:	0008889b          	addiw	a7,a7,0
   11714:	a55ff06f          	jal	zero,11168 <_malloc_r+0x34>
   11718:	00678333          	add	t1,a5,t1
   1171c:	00833703          	ld	a4,8(t1)
   11720:	00040513          	addi	a0,s0,0
   11724:	00f13423          	sd	a5,8(sp)
   11728:	00176713          	ori	a4,a4,1
   1172c:	00e33423          	sd	a4,8(t1)
   11730:	2ec000ef          	jal	ra,11a1c <__malloc_unlock>
   11734:	00813783          	ld	a5,8(sp)
   11738:	01078513          	addi	a0,a5,16
   1173c:	a9dff06f          	jal	zero,111d8 <_malloc_r+0xa4>
   11740:	00176613          	ori	a2,a4,1
   11744:	00c7b423          	sd	a2,8(a5)
   11748:	00e78733          	add	a4,a5,a4
   1174c:	02e83423          	sd	a4,40(a6)
   11750:	02e83023          	sd	a4,32(a6)
   11754:	0016e613          	ori	a2,a3,1
   11758:	00678333          	add	t1,a5,t1
   1175c:	01c73c23          	sd	t3,24(a4)
   11760:	01c73823          	sd	t3,16(a4)
   11764:	00c73423          	sd	a2,8(a4)
   11768:	00040513          	addi	a0,s0,0
   1176c:	00d33023          	sd	a3,0(t1)
   11770:	00f13423          	sd	a5,8(sp)
   11774:	2a8000ef          	jal	ra,11a1c <__malloc_unlock>
   11778:	00813783          	ld	a5,8(sp)
   1177c:	01078513          	addi	a0,a5,16
   11780:	a59ff06f          	jal	zero,111d8 <_malloc_r+0xa4>
   11784:	00635693          	srli	a3,t1,0x6
   11788:	00169513          	slli	a0,a3,0x1
   1178c:	0725051b          	addiw	a0,a0,114
   11790:	00351513          	slli	a0,a0,0x3
   11794:	0386861b          	addiw	a2,a3,56
   11798:	e99ff06f          	jal	zero,11630 <_malloc_r+0x4fc>
   1179c:	15078e63          	beq	a5,a6,118f8 <_malloc_r+0x7c4>
   117a0:	01083783          	ld	a5,16(a6)
   117a4:	0087b683          	ld	a3,8(a5)
   117a8:	ffc6f693          	andi	a3,a3,-4
   117ac:	40e68633          	sub	a2,a3,a4
   117b0:	00e6e663          	bltu	a3,a4,117bc <_malloc_r+0x688>
   117b4:	02062693          	slti	a3,a2,32
   117b8:	dc0684e3          	beq	a3,zero,11580 <_malloc_r+0x44c>
   117bc:	00040513          	addi	a0,s0,0
   117c0:	25c000ef          	jal	ra,11a1c <__malloc_unlock>
   117c4:	a11ff06f          	jal	zero,111d4 <_malloc_r+0xa0>
   117c8:	05c7889b          	addiw	a7,a5,92
   117cc:	0018951b          	slliw	a0,a7,0x1
   117d0:	05b78e1b          	addiw	t3,a5,91
   117d4:	00351513          	slli	a0,a0,0x3
   117d8:	a5dff06f          	jal	zero,11234 <_malloc_r+0x100>
   117dc:	010f3783          	ld	a5,16(t5)
   117e0:	fff8889b          	addiw	a7,a7,-1
   117e4:	23e79663          	bne	a5,t5,11a10 <_malloc_r+0x8dc>
   117e8:	0038f793          	andi	a5,a7,3
   117ec:	ff0f0f13          	addi	t5,t5,-16
   117f0:	fe0796e3          	bne	a5,zero,117dc <_malloc_r+0x6a8>
   117f4:	00883683          	ld	a3,8(a6)
   117f8:	fff54793          	xori	a5,a0,-1
   117fc:	00d7f7b3          	and	a5,a5,a3
   11800:	00f83423          	sd	a5,8(a6)
   11804:	00151513          	slli	a0,a0,0x1
   11808:	fff50693          	addi	a3,a0,-1
   1180c:	baf6f6e3          	bgeu	a3,a5,113b8 <_malloc_r+0x284>
   11810:	00f576b3          	and	a3,a0,a5
   11814:	00069a63          	bne	a3,zero,11828 <_malloc_r+0x6f4>
   11818:	00151513          	slli	a0,a0,0x1
   1181c:	00f576b3          	and	a3,a0,a5
   11820:	004f8f9b          	addiw	t6,t6,4
   11824:	fe068ae3          	beq	a3,zero,11818 <_malloc_r+0x6e4>
   11828:	000f8893          	addi	a7,t6,0
   1182c:	b09ff06f          	jal	zero,11334 <_malloc_r+0x200>
   11830:	02058593          	addi	a1,a1,32
   11834:	bc9ff06f          	jal	zero,113fc <_malloc_r+0x2c8>
   11838:	4026561b          	sraiw	a2,a2,0x2
   1183c:	00100313          	addi	t1,zero,1
   11840:	00c31633          	sll	a2,t1,a2
   11844:	00c5e5b3          	or	a1,a1,a2
   11848:	00b83423          	sd	a1,8(a6)
   1184c:	e11ff06f          	jal	zero,1165c <_malloc_r+0x528>
   11850:	00b30633          	add	a2,t1,a1
   11854:	40c005b3          	sub	a1,zero,a2
   11858:	03459593          	slli	a1,a1,0x34
   1185c:	0345d593          	srli	a1,a1,0x34
   11860:	00040513          	addi	a0,s0,0
   11864:	03c13c23          	sd	t3,56(sp)
   11868:	03013823          	sd	a6,48(sp)
   1186c:	02f13423          	sd	a5,40(sp)
   11870:	02e13023          	sd	a4,32(sp)
   11874:	01113c23          	sd	a7,24(sp)
   11878:	00613823          	sd	t1,16(sp)
   1187c:	00c13423          	sd	a2,8(sp)
   11880:	04b13023          	sd	a1,64(sp)
   11884:	600000ef          	jal	ra,11e84 <_sbrk_r>
   11888:	00050693          	addi	a3,a0,0
   1188c:	fff00513          	addi	a0,zero,-1
   11890:	01013303          	ld	t1,16(sp)
   11894:	01813883          	ld	a7,24(sp)
   11898:	02013703          	ld	a4,32(sp)
   1189c:	02813783          	ld	a5,40(sp)
   118a0:	03013803          	ld	a6,48(sp)
   118a4:	03813e03          	ld	t3,56(sp)
   118a8:	0ea68463          	beq	a3,a0,11990 <_malloc_r+0x85c>
   118ac:	04013583          	ld	a1,64(sp)
   118b0:	0005851b          	addiw	a0,a1,0
   118b4:	c49ff06f          	jal	zero,114fc <_malloc_r+0x3c8>
   118b8:	05400613          	addi	a2,zero,84
   118bc:	08d66063          	bltu	a2,a3,1193c <_malloc_r+0x808>
   118c0:	00c35693          	srli	a3,t1,0xc
   118c4:	00169513          	slli	a0,a3,0x1
   118c8:	0de5051b          	addiw	a0,a0,222
   118cc:	00351513          	slli	a0,a0,0x3
   118d0:	06e6861b          	addiw	a2,a3,110
   118d4:	d5dff06f          	jal	zero,11630 <_malloc_r+0x4fc>
   118d8:	15400693          	addi	a3,zero,340
   118dc:	08f6e063          	bltu	a3,a5,1195c <_malloc_r+0x828>
   118e0:	00f75793          	srli	a5,a4,0xf
   118e4:	0787889b          	addiw	a7,a5,120
   118e8:	0018951b          	slliw	a0,a7,0x1
   118ec:	07778e1b          	addiw	t3,a5,119
   118f0:	00351513          	slli	a0,a0,0x3
   118f4:	941ff06f          	jal	zero,11234 <_malloc_r+0x100>
   118f8:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   118fc:	000e2503          	lw	a0,0(t3)
   11900:	00b5053b          	addw	a0,a0,a1
   11904:	00ae2023          	sw	a0,0(t3)
   11908:	b51ff06f          	jal	zero,11458 <_malloc_r+0x324>
   1190c:	03431f13          	slli	t5,t1,0x34
   11910:	b40f14e3          	bne	t5,zero,11458 <_malloc_r+0x324>
   11914:	01083303          	ld	t1,16(a6)
   11918:	00b885b3          	add	a1,a7,a1
   1191c:	0015e693          	ori	a3,a1,1
   11920:	00d33423          	sd	a3,8(t1)
   11924:	c35ff06f          	jal	zero,11558 <_malloc_r+0x424>
   11928:	1861b823          	sd	t1,400(gp) # 139a8 <__malloc_sbrk_base>
   1192c:	b45ff06f          	jal	zero,11470 <_malloc_r+0x33c>
   11930:	00100793          	addi	a5,zero,1
   11934:	00f33423          	sd	a5,8(t1)
   11938:	e85ff06f          	jal	zero,117bc <_malloc_r+0x688>
   1193c:	15400613          	addi	a2,zero,340
   11940:	08d66a63          	bltu	a2,a3,119d4 <_malloc_r+0x8a0>
   11944:	00f35693          	srli	a3,t1,0xf
   11948:	00169513          	slli	a0,a3,0x1
   1194c:	0f05051b          	addiw	a0,a0,240
   11950:	00351513          	slli	a0,a0,0x3
   11954:	0776861b          	addiw	a2,a3,119
   11958:	cd9ff06f          	jal	zero,11630 <_malloc_r+0x4fc>
   1195c:	55400693          	addi	a3,zero,1364
   11960:	08f6ea63          	bltu	a3,a5,119f4 <_malloc_r+0x8c0>
   11964:	01275793          	srli	a5,a4,0x12
   11968:	07d7889b          	addiw	a7,a5,125
   1196c:	0018951b          	slliw	a0,a7,0x1
   11970:	07c78e1b          	addiw	t3,a5,124
   11974:	00351513          	slli	a0,a0,0x3
   11978:	8bdff06f          	jal	zero,11234 <_malloc_r+0x100>
   1197c:	ff0e8e93          	addi	t4,t4,-16
   11980:	01d606b3          	add	a3,a2,t4
   11984:	00000513          	addi	a0,zero,0
   11988:	00000593          	addi	a1,zero,0
   1198c:	b71ff06f          	jal	zero,114fc <_malloc_r+0x3c8>
   11990:	00813683          	ld	a3,8(sp)
   11994:	00000593          	addi	a1,zero,0
   11998:	00000513          	addi	a0,zero,0
   1199c:	b61ff06f          	jal	zero,114fc <_malloc_r+0x3c8>
   119a0:	01078593          	addi	a1,a5,16
   119a4:	00040513          	addi	a0,s0,0
   119a8:	01c13c23          	sd	t3,24(sp)
   119ac:	01013823          	sd	a6,16(sp)
   119b0:	00e13423          	sd	a4,8(sp)
   119b4:	c7cff0ef          	jal	ra,10e30 <_free_r>
   119b8:	01013803          	ld	a6,16(sp)
   119bc:	01813e03          	ld	t3,24(sp)
   119c0:	00813703          	ld	a4,8(sp)
   119c4:	01083303          	ld	t1,16(a6)
   119c8:	000e2603          	lw	a2,0(t3)
   119cc:	00833683          	ld	a3,8(t1)
   119d0:	b89ff06f          	jal	zero,11558 <_malloc_r+0x424>
   119d4:	55400613          	addi	a2,zero,1364
   119d8:	02d66663          	bltu	a2,a3,11a04 <_malloc_r+0x8d0>
   119dc:	01235693          	srli	a3,t1,0x12
   119e0:	00169513          	slli	a0,a3,0x1
   119e4:	0fa5051b          	addiw	a0,a0,250
   119e8:	00351513          	slli	a0,a0,0x3
   119ec:	07c6861b          	addiw	a2,a3,124
   119f0:	c41ff06f          	jal	zero,11630 <_malloc_r+0x4fc>
   119f4:	7f000513          	addi	a0,zero,2032
   119f8:	07f00893          	addi	a7,zero,127
   119fc:	07e00e13          	addi	t3,zero,126
   11a00:	835ff06f          	jal	zero,11234 <_malloc_r+0x100>
   11a04:	7f000513          	addi	a0,zero,2032
   11a08:	07e00613          	addi	a2,zero,126
   11a0c:	c25ff06f          	jal	zero,11630 <_malloc_r+0x4fc>
   11a10:	00883783          	ld	a5,8(a6)
   11a14:	df1ff06f          	jal	zero,11804 <_malloc_r+0x6d0>

0000000000011a18 <__malloc_lock>:
   11a18:	00008067          	jalr	zero,0(ra)

0000000000011a1c <__malloc_unlock>:
   11a1c:	00008067          	jalr	zero,0(ra)

0000000000011a20 <_fclose_r>:
   11a20:	fe010113          	addi	sp,sp,-32
   11a24:	00113c23          	sd	ra,24(sp)
   11a28:	01213023          	sd	s2,0(sp)
   11a2c:	02058863          	beq	a1,zero,11a5c <_fclose_r+0x3c>
   11a30:	00813823          	sd	s0,16(sp)
   11a34:	00913423          	sd	s1,8(sp)
   11a38:	00058413          	addi	s0,a1,0
   11a3c:	00050493          	addi	s1,a0,0
   11a40:	00050663          	beq	a0,zero,11a4c <_fclose_r+0x2c>
   11a44:	04853783          	ld	a5,72(a0)
   11a48:	0c078c63          	beq	a5,zero,11b20 <_fclose_r+0x100>
   11a4c:	01041783          	lh	a5,16(s0)
   11a50:	02079263          	bne	a5,zero,11a74 <_fclose_r+0x54>
   11a54:	01013403          	ld	s0,16(sp)
   11a58:	00813483          	ld	s1,8(sp)
   11a5c:	01813083          	ld	ra,24(sp)
   11a60:	00000913          	addi	s2,zero,0
   11a64:	00090513          	addi	a0,s2,0
   11a68:	00013903          	ld	s2,0(sp)
   11a6c:	02010113          	addi	sp,sp,32
   11a70:	00008067          	jalr	zero,0(ra)
   11a74:	00040593          	addi	a1,s0,0
   11a78:	00048513          	addi	a0,s1,0
   11a7c:	0b8000ef          	jal	ra,11b34 <__sflush_r>
   11a80:	05043783          	ld	a5,80(s0)
   11a84:	00050913          	addi	s2,a0,0
   11a88:	00078a63          	beq	a5,zero,11a9c <_fclose_r+0x7c>
   11a8c:	03043583          	ld	a1,48(s0)
   11a90:	00048513          	addi	a0,s1,0
   11a94:	000780e7          	jalr	ra,0(a5)
   11a98:	06054463          	blt	a0,zero,11b00 <_fclose_r+0xe0>
   11a9c:	01045783          	lhu	a5,16(s0)
   11aa0:	0807f793          	andi	a5,a5,128
   11aa4:	06079663          	bne	a5,zero,11b10 <_fclose_r+0xf0>
   11aa8:	05843583          	ld	a1,88(s0)
   11aac:	00058c63          	beq	a1,zero,11ac4 <_fclose_r+0xa4>
   11ab0:	07440793          	addi	a5,s0,116
   11ab4:	00f58663          	beq	a1,a5,11ac0 <_fclose_r+0xa0>
   11ab8:	00048513          	addi	a0,s1,0
   11abc:	b74ff0ef          	jal	ra,10e30 <_free_r>
   11ac0:	04043c23          	sd	zero,88(s0)
   11ac4:	07843583          	ld	a1,120(s0)
   11ac8:	00058863          	beq	a1,zero,11ad8 <_fclose_r+0xb8>
   11acc:	00048513          	addi	a0,s1,0
   11ad0:	b60ff0ef          	jal	ra,10e30 <_free_r>
   11ad4:	06043c23          	sd	zero,120(s0)
   11ad8:	aa1fe0ef          	jal	ra,10578 <__sfp_lock_acquire>
   11adc:	00041823          	sh	zero,16(s0)
   11ae0:	a9dfe0ef          	jal	ra,1057c <__sfp_lock_release>
   11ae4:	01813083          	ld	ra,24(sp)
   11ae8:	01013403          	ld	s0,16(sp)
   11aec:	00813483          	ld	s1,8(sp)
   11af0:	00090513          	addi	a0,s2,0
   11af4:	00013903          	ld	s2,0(sp)
   11af8:	02010113          	addi	sp,sp,32
   11afc:	00008067          	jalr	zero,0(ra)
   11b00:	01045783          	lhu	a5,16(s0)
   11b04:	fff00913          	addi	s2,zero,-1
   11b08:	0807f793          	andi	a5,a5,128
   11b0c:	f8078ee3          	beq	a5,zero,11aa8 <_fclose_r+0x88>
   11b10:	01843583          	ld	a1,24(s0)
   11b14:	00048513          	addi	a0,s1,0
   11b18:	b18ff0ef          	jal	ra,10e30 <_free_r>
   11b1c:	f8dff06f          	jal	zero,11aa8 <_fclose_r+0x88>
   11b20:	a35fe0ef          	jal	ra,10554 <__sinit>
   11b24:	f29ff06f          	jal	zero,11a4c <_fclose_r+0x2c>

0000000000011b28 <fclose>:
   11b28:	00050593          	addi	a1,a0,0
   11b2c:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11b30:	ef1ff06f          	jal	zero,11a20 <_fclose_r>

0000000000011b34 <__sflush_r>:
   11b34:	01059703          	lh	a4,16(a1)
   11b38:	fd010113          	addi	sp,sp,-48
   11b3c:	02813023          	sd	s0,32(sp)
   11b40:	01313423          	sd	s3,8(sp)
   11b44:	02113423          	sd	ra,40(sp)
   11b48:	00877793          	andi	a5,a4,8
   11b4c:	00058413          	addi	s0,a1,0
   11b50:	00050993          	addi	s3,a0,0
   11b54:	12079263          	bne	a5,zero,11c78 <__sflush_r+0x144>
   11b58:	000017b7          	lui	a5,0x1
   11b5c:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   11b60:	0085a683          	lw	a3,8(a1)
   11b64:	00f767b3          	or	a5,a4,a5
   11b68:	00f59823          	sh	a5,16(a1)
   11b6c:	18d05c63          	bge	zero,a3,11d04 <__sflush_r+0x1d0>
   11b70:	04843803          	ld	a6,72(s0)
   11b74:	0e080663          	beq	a6,zero,11c60 <__sflush_r+0x12c>
   11b78:	00913c23          	sd	s1,24(sp)
   11b7c:	03371693          	slli	a3,a4,0x33
   11b80:	0009a483          	lw	s1,0(s3)
   11b84:	0009a023          	sw	zero,0(s3)
   11b88:	1806ca63          	blt	a3,zero,11d1c <__sflush_r+0x1e8>
   11b8c:	03043583          	ld	a1,48(s0)
   11b90:	00000613          	addi	a2,zero,0
   11b94:	00100693          	addi	a3,zero,1
   11b98:	00098513          	addi	a0,s3,0
   11b9c:	000800e7          	jalr	ra,0(a6)
   11ba0:	fff00793          	addi	a5,zero,-1
   11ba4:	00050613          	addi	a2,a0,0
   11ba8:	1af50c63          	beq	a0,a5,11d60 <__sflush_r+0x22c>
   11bac:	01041783          	lh	a5,16(s0)
   11bb0:	04843803          	ld	a6,72(s0)
   11bb4:	0047f793          	andi	a5,a5,4
   11bb8:	00078e63          	beq	a5,zero,11bd4 <__sflush_r+0xa0>
   11bbc:	00842703          	lw	a4,8(s0)
   11bc0:	05843783          	ld	a5,88(s0)
   11bc4:	40e60633          	sub	a2,a2,a4
   11bc8:	00078663          	beq	a5,zero,11bd4 <__sflush_r+0xa0>
   11bcc:	07042783          	lw	a5,112(s0)
   11bd0:	40f60633          	sub	a2,a2,a5
   11bd4:	03043583          	ld	a1,48(s0)
   11bd8:	00000693          	addi	a3,zero,0
   11bdc:	00098513          	addi	a0,s3,0
   11be0:	000800e7          	jalr	ra,0(a6)
   11be4:	fff00713          	addi	a4,zero,-1
   11be8:	01041783          	lh	a5,16(s0)
   11bec:	12e51c63          	bne	a0,a4,11d24 <__sflush_r+0x1f0>
   11bf0:	0009a683          	lw	a3,0(s3)
   11bf4:	01d00713          	addi	a4,zero,29
   11bf8:	18d76263          	bltu	a4,a3,11d7c <__sflush_r+0x248>
   11bfc:	20400737          	lui	a4,0x20400
   11c00:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec089>
   11c04:	00d75733          	srl	a4,a4,a3
   11c08:	00177713          	andi	a4,a4,1
   11c0c:	16070863          	beq	a4,zero,11d7c <__sflush_r+0x248>
   11c10:	01843683          	ld	a3,24(s0)
   11c14:	fffff737          	lui	a4,0xfffff
   11c18:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11c1c:	00e7f733          	and	a4,a5,a4
   11c20:	00e41823          	sh	a4,16(s0)
   11c24:	00042423          	sw	zero,8(s0)
   11c28:	00d43023          	sd	a3,0(s0)
   11c2c:	03379713          	slli	a4,a5,0x33
   11c30:	00075663          	bge	a4,zero,11c3c <__sflush_r+0x108>
   11c34:	0009a783          	lw	a5,0(s3)
   11c38:	10078863          	beq	a5,zero,11d48 <__sflush_r+0x214>
   11c3c:	05843583          	ld	a1,88(s0)
   11c40:	0099a023          	sw	s1,0(s3)
   11c44:	10058a63          	beq	a1,zero,11d58 <__sflush_r+0x224>
   11c48:	07440793          	addi	a5,s0,116
   11c4c:	00f58663          	beq	a1,a5,11c58 <__sflush_r+0x124>
   11c50:	00098513          	addi	a0,s3,0
   11c54:	9dcff0ef          	jal	ra,10e30 <_free_r>
   11c58:	01813483          	ld	s1,24(sp)
   11c5c:	04043c23          	sd	zero,88(s0)
   11c60:	02813083          	ld	ra,40(sp)
   11c64:	02013403          	ld	s0,32(sp)
   11c68:	00813983          	ld	s3,8(sp)
   11c6c:	00000513          	addi	a0,zero,0
   11c70:	03010113          	addi	sp,sp,48
   11c74:	00008067          	jalr	zero,0(ra)
   11c78:	01213823          	sd	s2,16(sp)
   11c7c:	0185b903          	ld	s2,24(a1)
   11c80:	08090a63          	beq	s2,zero,11d14 <__sflush_r+0x1e0>
   11c84:	00913c23          	sd	s1,24(sp)
   11c88:	0005b483          	ld	s1,0(a1)
   11c8c:	00377713          	andi	a4,a4,3
   11c90:	0125b023          	sd	s2,0(a1)
   11c94:	412484bb          	subw	s1,s1,s2
   11c98:	00000793          	addi	a5,zero,0
   11c9c:	00071463          	bne	a4,zero,11ca4 <__sflush_r+0x170>
   11ca0:	0205a783          	lw	a5,32(a1)
   11ca4:	00f42623          	sw	a5,12(s0)
   11ca8:	00904863          	blt	zero,s1,11cb8 <__sflush_r+0x184>
   11cac:	0640006f          	jal	zero,11d10 <__sflush_r+0x1dc>
   11cb0:	00a90933          	add	s2,s2,a0
   11cb4:	04905e63          	bge	zero,s1,11d10 <__sflush_r+0x1dc>
   11cb8:	04043783          	ld	a5,64(s0)
   11cbc:	03043583          	ld	a1,48(s0)
   11cc0:	00048693          	addi	a3,s1,0
   11cc4:	00090613          	addi	a2,s2,0
   11cc8:	00098513          	addi	a0,s3,0
   11ccc:	000780e7          	jalr	ra,0(a5)
   11cd0:	40a484bb          	subw	s1,s1,a0
   11cd4:	fca04ee3          	blt	zero,a0,11cb0 <__sflush_r+0x17c>
   11cd8:	01045783          	lhu	a5,16(s0)
   11cdc:	01013903          	ld	s2,16(sp)
   11ce0:	0407e793          	ori	a5,a5,64
   11ce4:	02813083          	ld	ra,40(sp)
   11ce8:	00f41823          	sh	a5,16(s0)
   11cec:	02013403          	ld	s0,32(sp)
   11cf0:	01813483          	ld	s1,24(sp)
   11cf4:	00813983          	ld	s3,8(sp)
   11cf8:	fff00513          	addi	a0,zero,-1
   11cfc:	03010113          	addi	sp,sp,48
   11d00:	00008067          	jalr	zero,0(ra)
   11d04:	0705a683          	lw	a3,112(a1)
   11d08:	e6d044e3          	blt	zero,a3,11b70 <__sflush_r+0x3c>
   11d0c:	f55ff06f          	jal	zero,11c60 <__sflush_r+0x12c>
   11d10:	01813483          	ld	s1,24(sp)
   11d14:	01013903          	ld	s2,16(sp)
   11d18:	f49ff06f          	jal	zero,11c60 <__sflush_r+0x12c>
   11d1c:	09043603          	ld	a2,144(s0)
   11d20:	e95ff06f          	jal	zero,11bb4 <__sflush_r+0x80>
   11d24:	01843683          	ld	a3,24(s0)
   11d28:	fffff737          	lui	a4,0xfffff
   11d2c:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11d30:	00e7f733          	and	a4,a5,a4
   11d34:	00e41823          	sh	a4,16(s0)
   11d38:	00042423          	sw	zero,8(s0)
   11d3c:	00d43023          	sd	a3,0(s0)
   11d40:	03379713          	slli	a4,a5,0x33
   11d44:	ee075ce3          	bge	a4,zero,11c3c <__sflush_r+0x108>
   11d48:	05843583          	ld	a1,88(s0)
   11d4c:	08a43823          	sd	a0,144(s0)
   11d50:	0099a023          	sw	s1,0(s3)
   11d54:	ee059ae3          	bne	a1,zero,11c48 <__sflush_r+0x114>
   11d58:	01813483          	ld	s1,24(sp)
   11d5c:	f05ff06f          	jal	zero,11c60 <__sflush_r+0x12c>
   11d60:	0009a783          	lw	a5,0(s3)
   11d64:	e40784e3          	beq	a5,zero,11bac <__sflush_r+0x78>
   11d68:	fe378713          	addi	a4,a5,-29
   11d6c:	00070c63          	beq	a4,zero,11d84 <__sflush_r+0x250>
   11d70:	fea78793          	addi	a5,a5,-22
   11d74:	00078863          	beq	a5,zero,11d84 <__sflush_r+0x250>
   11d78:	01045783          	lhu	a5,16(s0)
   11d7c:	0407e793          	ori	a5,a5,64
   11d80:	f65ff06f          	jal	zero,11ce4 <__sflush_r+0x1b0>
   11d84:	0099a023          	sw	s1,0(s3)
   11d88:	01813483          	ld	s1,24(sp)
   11d8c:	ed5ff06f          	jal	zero,11c60 <__sflush_r+0x12c>

0000000000011d90 <_fflush_r>:
   11d90:	00050793          	addi	a5,a0,0
   11d94:	00050663          	beq	a0,zero,11da0 <_fflush_r+0x10>
   11d98:	04853703          	ld	a4,72(a0)
   11d9c:	00070e63          	beq	a4,zero,11db8 <_fflush_r+0x28>
   11da0:	01059703          	lh	a4,16(a1)
   11da4:	00071663          	bne	a4,zero,11db0 <_fflush_r+0x20>
   11da8:	00000513          	addi	a0,zero,0
   11dac:	00008067          	jalr	zero,0(ra)
   11db0:	00078513          	addi	a0,a5,0
   11db4:	d81ff06f          	jal	zero,11b34 <__sflush_r>
   11db8:	fe010113          	addi	sp,sp,-32
   11dbc:	00b13423          	sd	a1,8(sp)
   11dc0:	00113c23          	sd	ra,24(sp)
   11dc4:	00a13023          	sd	a0,0(sp)
   11dc8:	f8cfe0ef          	jal	ra,10554 <__sinit>
   11dcc:	00813583          	ld	a1,8(sp)
   11dd0:	00013783          	ld	a5,0(sp)
   11dd4:	01059703          	lh	a4,16(a1)
   11dd8:	00070a63          	beq	a4,zero,11dec <_fflush_r+0x5c>
   11ddc:	01813083          	ld	ra,24(sp)
   11de0:	00078513          	addi	a0,a5,0
   11de4:	02010113          	addi	sp,sp,32
   11de8:	d4dff06f          	jal	zero,11b34 <__sflush_r>
   11dec:	01813083          	ld	ra,24(sp)
   11df0:	00000513          	addi	a0,zero,0
   11df4:	02010113          	addi	sp,sp,32
   11df8:	00008067          	jalr	zero,0(ra)

0000000000011dfc <fflush>:
   11dfc:	06050063          	beq	a0,zero,11e5c <fflush+0x60>
   11e00:	00050593          	addi	a1,a0,0
   11e04:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11e08:	00050663          	beq	a0,zero,11e14 <fflush+0x18>
   11e0c:	04853783          	ld	a5,72(a0)
   11e10:	00078c63          	beq	a5,zero,11e28 <fflush+0x2c>
   11e14:	01059783          	lh	a5,16(a1)
   11e18:	00079663          	bne	a5,zero,11e24 <fflush+0x28>
   11e1c:	00000513          	addi	a0,zero,0
   11e20:	00008067          	jalr	zero,0(ra)
   11e24:	d11ff06f          	jal	zero,11b34 <__sflush_r>
   11e28:	fe010113          	addi	sp,sp,-32
   11e2c:	00b13423          	sd	a1,8(sp)
   11e30:	00a13023          	sd	a0,0(sp)
   11e34:	00113c23          	sd	ra,24(sp)
   11e38:	f1cfe0ef          	jal	ra,10554 <__sinit>
   11e3c:	00813583          	ld	a1,8(sp)
   11e40:	00013503          	ld	a0,0(sp)
   11e44:	01059783          	lh	a5,16(a1)
   11e48:	02079863          	bne	a5,zero,11e78 <fflush+0x7c>
   11e4c:	01813083          	ld	ra,24(sp)
   11e50:	00000513          	addi	a0,zero,0
   11e54:	02010113          	addi	sp,sp,32
   11e58:	00008067          	jalr	zero,0(ra)
   11e5c:	00013637          	lui	a2,0x13
   11e60:	000125b7          	lui	a1,0x12
   11e64:	00013537          	lui	a0,0x13
   11e68:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   11e6c:	d9058593          	addi	a1,a1,-624 # 11d90 <_fflush_r>
   11e70:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   11e74:	f3cfe06f          	jal	zero,105b0 <_fwalk_sglue>
   11e78:	01813083          	ld	ra,24(sp)
   11e7c:	02010113          	addi	sp,sp,32
   11e80:	cb5ff06f          	jal	zero,11b34 <__sflush_r>

0000000000011e84 <_sbrk_r>:
   11e84:	fe010113          	addi	sp,sp,-32
   11e88:	00813823          	sd	s0,16(sp)
   11e8c:	00913423          	sd	s1,8(sp)
   11e90:	00050493          	addi	s1,a0,0
   11e94:	00058513          	addi	a0,a1,0
   11e98:	00113c23          	sd	ra,24(sp)
   11e9c:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   11ea0:	228000ef          	jal	ra,120c8 <_sbrk>
   11ea4:	fff00793          	addi	a5,zero,-1
   11ea8:	00f50c63          	beq	a0,a5,11ec0 <_sbrk_r+0x3c>
   11eac:	01813083          	ld	ra,24(sp)
   11eb0:	01013403          	ld	s0,16(sp)
   11eb4:	00813483          	ld	s1,8(sp)
   11eb8:	02010113          	addi	sp,sp,32
   11ebc:	00008067          	jalr	zero,0(ra)
   11ec0:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   11ec4:	fe0784e3          	beq	a5,zero,11eac <_sbrk_r+0x28>
   11ec8:	01813083          	ld	ra,24(sp)
   11ecc:	01013403          	ld	s0,16(sp)
   11ed0:	00f4a023          	sw	a5,0(s1)
   11ed4:	00813483          	ld	s1,8(sp)
   11ed8:	02010113          	addi	sp,sp,32
   11edc:	00008067          	jalr	zero,0(ra)

0000000000011ee0 <__libc_fini_array>:
   11ee0:	fe010113          	addi	sp,sp,-32
   11ee4:	00813823          	sd	s0,16(sp)
   11ee8:	000137b7          	lui	a5,0x13
   11eec:	00013437          	lui	s0,0x13
   11ef0:	01878793          	addi	a5,a5,24 # 13018 <__sglue>
   11ef4:	01040413          	addi	s0,s0,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   11ef8:	408787b3          	sub	a5,a5,s0
   11efc:	00913423          	sd	s1,8(sp)
   11f00:	00113c23          	sd	ra,24(sp)
   11f04:	4037d493          	srai	s1,a5,0x3
   11f08:	02048063          	beq	s1,zero,11f28 <__libc_fini_array+0x48>
   11f0c:	ff840413          	addi	s0,s0,-8
   11f10:	00f40433          	add	s0,s0,a5
   11f14:	00043783          	ld	a5,0(s0)
   11f18:	fff48493          	addi	s1,s1,-1
   11f1c:	ff840413          	addi	s0,s0,-8
   11f20:	000780e7          	jalr	ra,0(a5)
   11f24:	fe0498e3          	bne	s1,zero,11f14 <__libc_fini_array+0x34>
   11f28:	01813083          	ld	ra,24(sp)
   11f2c:	01013403          	ld	s0,16(sp)
   11f30:	00813483          	ld	s1,8(sp)
   11f34:	02010113          	addi	sp,sp,32
   11f38:	00008067          	jalr	zero,0(ra)

0000000000011f3c <__register_exitproc>:
   11f3c:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   11f40:	04078e63          	beq	a5,zero,11f9c <__register_exitproc+0x60>
   11f44:	0087a703          	lw	a4,8(a5)
   11f48:	01f00813          	addi	a6,zero,31
   11f4c:	08e84263          	blt	a6,a4,11fd0 <__register_exitproc+0x94>
   11f50:	02050863          	beq	a0,zero,11f80 <__register_exitproc+0x44>
   11f54:	00371813          	slli	a6,a4,0x3
   11f58:	01078833          	add	a6,a5,a6
   11f5c:	10c83823          	sd	a2,272(a6)
   11f60:	3107a883          	lw	a7,784(a5)
   11f64:	00100613          	addi	a2,zero,1
   11f68:	00e6163b          	sllw	a2,a2,a4
   11f6c:	00c8e8b3          	or	a7,a7,a2
   11f70:	3117a823          	sw	a7,784(a5)
   11f74:	20d83823          	sd	a3,528(a6)
   11f78:	00200693          	addi	a3,zero,2
   11f7c:	02d50663          	beq	a0,a3,11fa8 <__register_exitproc+0x6c>
   11f80:	0017069b          	addiw	a3,a4,1
   11f84:	00371713          	slli	a4,a4,0x3
   11f88:	00d7a423          	sw	a3,8(a5)
   11f8c:	00e787b3          	add	a5,a5,a4
   11f90:	00b7b823          	sd	a1,16(a5)
   11f94:	00000513          	addi	a0,zero,0
   11f98:	00008067          	jalr	zero,0(ra)
   11f9c:	44818793          	addi	a5,gp,1096 # 13c60 <__atexit0>
   11fa0:	1af1b823          	sd	a5,432(gp) # 139c8 <__atexit>
   11fa4:	fa1ff06f          	jal	zero,11f44 <__register_exitproc+0x8>
   11fa8:	3147a683          	lw	a3,788(a5)
   11fac:	00000513          	addi	a0,zero,0
   11fb0:	00d66633          	or	a2,a2,a3
   11fb4:	0017069b          	addiw	a3,a4,1
   11fb8:	00371713          	slli	a4,a4,0x3
   11fbc:	30c7aa23          	sw	a2,788(a5)
   11fc0:	00d7a423          	sw	a3,8(a5)
   11fc4:	00e787b3          	add	a5,a5,a4
   11fc8:	00b7b823          	sd	a1,16(a5)
   11fcc:	00008067          	jalr	zero,0(ra)
   11fd0:	fff00513          	addi	a0,zero,-1
   11fd4:	00008067          	jalr	zero,0(ra)

0000000000011fd8 <_close>:
   11fd8:	03900893          	addi	a7,zero,57
   11fdc:	00000073          	ecall
   11fe0:	00054663          	blt	a0,zero,11fec <_close+0x14>
   11fe4:	0005051b          	addiw	a0,a0,0
   11fe8:	00008067          	jalr	zero,0(ra)
   11fec:	fe010113          	addi	sp,sp,-32
   11ff0:	00113c23          	sd	ra,24(sp)
   11ff4:	00a13423          	sd	a0,8(sp)
   11ff8:	188000ef          	jal	ra,12180 <__errno>
   11ffc:	00813783          	ld	a5,8(sp)
   12000:	01813083          	ld	ra,24(sp)
   12004:	40f007bb          	subw	a5,zero,a5
   12008:	00f52023          	sw	a5,0(a0)
   1200c:	fff00513          	addi	a0,zero,-1
   12010:	02010113          	addi	sp,sp,32
   12014:	00008067          	jalr	zero,0(ra)

0000000000012018 <_exit>:
   12018:	05d00893          	addi	a7,zero,93
   1201c:	00000073          	ecall
   12020:	00054463          	blt	a0,zero,12028 <_exit+0x10>
   12024:	0000006f          	jal	zero,12024 <_exit+0xc>
   12028:	fe010113          	addi	sp,sp,-32
   1202c:	00113c23          	sd	ra,24(sp)
   12030:	00a13423          	sd	a0,8(sp)
   12034:	14c000ef          	jal	ra,12180 <__errno>
   12038:	00813783          	ld	a5,8(sp)
   1203c:	40f007bb          	subw	a5,zero,a5
   12040:	00f52023          	sw	a5,0(a0)
   12044:	0000006f          	jal	zero,12044 <_exit+0x2c>

0000000000012048 <_lseek>:
   12048:	03e00893          	addi	a7,zero,62
   1204c:	00000073          	ecall
   12050:	00054463          	blt	a0,zero,12058 <_lseek+0x10>
   12054:	00008067          	jalr	zero,0(ra)
   12058:	fe010113          	addi	sp,sp,-32
   1205c:	00113c23          	sd	ra,24(sp)
   12060:	00a13423          	sd	a0,8(sp)
   12064:	11c000ef          	jal	ra,12180 <__errno>
   12068:	00813783          	ld	a5,8(sp)
   1206c:	01813083          	ld	ra,24(sp)
   12070:	40f007bb          	subw	a5,zero,a5
   12074:	00f52023          	sw	a5,0(a0)
   12078:	fff00793          	addi	a5,zero,-1
   1207c:	00078513          	addi	a0,a5,0
   12080:	02010113          	addi	sp,sp,32
   12084:	00008067          	jalr	zero,0(ra)

0000000000012088 <_read>:
   12088:	03f00893          	addi	a7,zero,63
   1208c:	00000073          	ecall
   12090:	00054463          	blt	a0,zero,12098 <_read+0x10>
   12094:	00008067          	jalr	zero,0(ra)
   12098:	fe010113          	addi	sp,sp,-32
   1209c:	00113c23          	sd	ra,24(sp)
   120a0:	00a13423          	sd	a0,8(sp)
   120a4:	0dc000ef          	jal	ra,12180 <__errno>
   120a8:	00813783          	ld	a5,8(sp)
   120ac:	01813083          	ld	ra,24(sp)
   120b0:	40f007bb          	subw	a5,zero,a5
   120b4:	00f52023          	sw	a5,0(a0)
   120b8:	fff00793          	addi	a5,zero,-1
   120bc:	00078513          	addi	a0,a5,0
   120c0:	02010113          	addi	sp,sp,32
   120c4:	00008067          	jalr	zero,0(ra)

00000000000120c8 <_sbrk>:
   120c8:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   120cc:	ff010113          	addi	sp,sp,-16
   120d0:	00113423          	sd	ra,8(sp)
   120d4:	00050713          	addi	a4,a0,0
   120d8:	02079063          	bne	a5,zero,120f8 <_sbrk+0x30>
   120dc:	0d600893          	addi	a7,zero,214
   120e0:	00000513          	addi	a0,zero,0
   120e4:	00000073          	ecall
   120e8:	fff00793          	addi	a5,zero,-1
   120ec:	02f50c63          	beq	a0,a5,12124 <_sbrk+0x5c>
   120f0:	00050793          	addi	a5,a0,0
   120f4:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   120f8:	00f70533          	add	a0,a4,a5
   120fc:	0d600893          	addi	a7,zero,214
   12100:	00000073          	ecall
   12104:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   12108:	00f70733          	add	a4,a4,a5
   1210c:	00e51c63          	bne	a0,a4,12124 <_sbrk+0x5c>
   12110:	00813083          	ld	ra,8(sp)
   12114:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   12118:	00078513          	addi	a0,a5,0
   1211c:	01010113          	addi	sp,sp,16
   12120:	00008067          	jalr	zero,0(ra)
   12124:	05c000ef          	jal	ra,12180 <__errno>
   12128:	00813083          	ld	ra,8(sp)
   1212c:	00c00793          	addi	a5,zero,12
   12130:	00f52023          	sw	a5,0(a0)
   12134:	fff00513          	addi	a0,zero,-1
   12138:	01010113          	addi	sp,sp,16
   1213c:	00008067          	jalr	zero,0(ra)

0000000000012140 <_write>:
   12140:	04000893          	addi	a7,zero,64
   12144:	00000073          	ecall
   12148:	00054463          	blt	a0,zero,12150 <_write+0x10>
   1214c:	00008067          	jalr	zero,0(ra)
   12150:	fe010113          	addi	sp,sp,-32
   12154:	00113c23          	sd	ra,24(sp)
   12158:	00a13423          	sd	a0,8(sp)
   1215c:	024000ef          	jal	ra,12180 <__errno>
   12160:	00813783          	ld	a5,8(sp)
   12164:	01813083          	ld	ra,24(sp)
   12168:	40f007bb          	subw	a5,zero,a5
   1216c:	00f52023          	sw	a5,0(a0)
   12170:	fff00793          	addi	a5,zero,-1
   12174:	00078513          	addi	a0,a5,0
   12178:	02010113          	addi	sp,sp,32
   1217c:	00008067          	jalr	zero,0(ra)

0000000000012180 <__errno>:
   12180:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   12184:	00008067          	jalr	zero,0(ra)
