
bin-c:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	addi	a1,zero,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	addi	s0,a0,0
   10134:	3ad000ef          	jal	ra,10ce0 <__call_exitprocs>
   10138:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   1013c:	00078463          	beq	a5,zero,10144 <exit+0x24>
   10140:	000780e7          	jalr	ra,0(a5)
   10144:	00040513          	addi	a0,s0,0
   10148:	7f1010ef          	jal	ra,12138 <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	addi	a5,zero,0
   10150:	00078863          	beq	a5,zero,10160 <register_fini+0x14>
   10154:	00012537          	lui	a0,0x12
   10158:	00050513          	addi	a0,a0,0 # 12000 <__libc_fini_array>
   1015c:	4bd0006f          	jal	zero,10e18 <atexit>
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
   10184:	1ad000ef          	jal	ra,10b30 <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	c9050513          	addi	a0,a0,-880 # 10e18 <atexit>
   10190:	00050863          	beq	a0,zero,101a0 <_start+0x3c>
   10194:	00002517          	auipc	a0,0x2
   10198:	e6c50513          	addi	a0,a0,-404 # 12000 <__libc_fini_array>
   1019c:	47d000ef          	jal	ra,10e18 <atexit>
   101a0:	0e5000ef          	jal	ra,10a84 <__libc_init_array>
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
   10230:	2a878793          	addi	a5,a5,680 # 122a8 <__errno+0x8>
   10234:	fef43423          	sd	a5,-24(s0)
   10238:	fe843503          	ld	a0,-24(s0)
   1023c:	1d1000ef          	jal	ra,10c0c <strlen>
   10240:	00050793          	addi	a5,a0,0
   10244:	00078613          	addi	a2,a5,0
   10248:	fe843583          	ld	a1,-24(s0)
   1024c:	00100513          	addi	a0,zero,1
   10250:	0c9000ef          	jal	ra,10b18 <write>
   10254:	00000513          	addi	a0,zero,0
   10258:	05d00893          	addi	a7,zero,93
   1025c:	00000073          	ecall
   10260:	00000793          	addi	a5,zero,0
   10264:	00078513          	addi	a0,a5,0
   10268:	01813083          	ld	ra,24(sp)
   1026c:	01013403          	ld	s0,16(sp)
   10270:	02010113          	addi	sp,sp,32
   10274:	00008067          	jalr	zero,0(ra)

0000000000010278 <__fp_lock>:
   10278:	00000513          	addi	a0,zero,0
   1027c:	00008067          	jalr	zero,0(ra)

0000000000010280 <stdio_exit_handler>:
   10280:	00013637          	lui	a2,0x13
   10284:	000125b7          	lui	a1,0x12
   10288:	00013537          	lui	a0,0x13
   1028c:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   10290:	b4058593          	addi	a1,a1,-1216 # 11b40 <_fclose_r>
   10294:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   10298:	34c0006f          	jal	zero,105e4 <_fwalk_sglue>

000000000001029c <cleanup_stdio>:
   1029c:	00853583          	ld	a1,8(a0)
   102a0:	ff010113          	addi	sp,sp,-16
   102a4:	00813023          	sd	s0,0(sp)
   102a8:	00113423          	sd	ra,8(sp)
   102ac:	21018793          	addi	a5,gp,528 # 13a28 <__sf>
   102b0:	00050413          	addi	s0,a0,0
   102b4:	00f58463          	beq	a1,a5,102bc <cleanup_stdio+0x20>
   102b8:	089010ef          	jal	ra,11b40 <_fclose_r>
   102bc:	01043583          	ld	a1,16(s0)
   102c0:	2c018793          	addi	a5,gp,704 # 13ad8 <__sf+0xb0>
   102c4:	00f58663          	beq	a1,a5,102d0 <cleanup_stdio+0x34>
   102c8:	00040513          	addi	a0,s0,0
   102cc:	075010ef          	jal	ra,11b40 <_fclose_r>
   102d0:	01843583          	ld	a1,24(s0)
   102d4:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   102d8:	00f58c63          	beq	a1,a5,102f0 <cleanup_stdio+0x54>
   102dc:	00040513          	addi	a0,s0,0
   102e0:	00013403          	ld	s0,0(sp)
   102e4:	00813083          	ld	ra,8(sp)
   102e8:	01010113          	addi	sp,sp,16
   102ec:	0550106f          	jal	zero,11b40 <_fclose_r>
   102f0:	00813083          	ld	ra,8(sp)
   102f4:	00013403          	ld	s0,0(sp)
   102f8:	01010113          	addi	sp,sp,16
   102fc:	00008067          	jalr	zero,0(ra)

0000000000010300 <__fp_unlock>:
   10300:	00000513          	addi	a0,zero,0
   10304:	00008067          	jalr	zero,0(ra)

0000000000010308 <global_stdio_init.part.0>:
   10308:	fd010113          	addi	sp,sp,-48
   1030c:	000107b7          	lui	a5,0x10
   10310:	02813023          	sd	s0,32(sp)
   10314:	28078793          	addi	a5,a5,640 # 10280 <stdio_exit_handler>
   10318:	21018413          	addi	s0,gp,528 # 13a28 <__sf>
   1031c:	02113423          	sd	ra,40(sp)
   10320:	00913c23          	sd	s1,24(sp)
   10324:	01213823          	sd	s2,16(sp)
   10328:	01313423          	sd	s3,8(sp)
   1032c:	01413023          	sd	s4,0(sp)
   10330:	1af1b023          	sd	a5,416(gp) # 139b8 <__stdio_exit_handler>
   10334:	00800613          	addi	a2,zero,8
   10338:	00400793          	addi	a5,zero,4
   1033c:	00000593          	addi	a1,zero,0
   10340:	2b418513          	addi	a0,gp,692 # 13acc <__sf+0xa4>
   10344:	00f42823          	sw	a5,16(s0)
   10348:	00043023          	sd	zero,0(s0)
   1034c:	00043423          	sd	zero,8(s0)
   10350:	0a042623          	sw	zero,172(s0)
   10354:	00043c23          	sd	zero,24(s0)
   10358:	02042023          	sw	zero,32(s0)
   1035c:	02042423          	sw	zero,40(s0)
   10360:	7d0000ef          	jal	ra,10b30 <memset>
   10364:	00010a37          	lui	s4,0x10
   10368:	000109b7          	lui	s3,0x10
   1036c:	00010937          	lui	s2,0x10
   10370:	000114b7          	lui	s1,0x11
   10374:	000107b7          	lui	a5,0x10
   10378:	6b4a0a13          	addi	s4,s4,1716 # 106b4 <__sread>
   1037c:	71898993          	addi	s3,s3,1816 # 10718 <__swrite>
   10380:	7a090913          	addi	s2,s2,1952 # 107a0 <__sseek>
   10384:	80448493          	addi	s1,s1,-2044 # 10804 <__sclose>
   10388:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   1038c:	00800613          	addi	a2,zero,8
   10390:	00000593          	addi	a1,zero,0
   10394:	36418513          	addi	a0,gp,868 # 13b7c <__sf+0x154>
   10398:	0cf42023          	sw	a5,192(s0)
   1039c:	03443c23          	sd	s4,56(s0)
   103a0:	05343023          	sd	s3,64(s0)
   103a4:	05243423          	sd	s2,72(s0)
   103a8:	04943823          	sd	s1,80(s0)
   103ac:	02843823          	sd	s0,48(s0)
   103b0:	0a043823          	sd	zero,176(s0)
   103b4:	0a043c23          	sd	zero,184(s0)
   103b8:	14042e23          	sw	zero,348(s0)
   103bc:	0c043423          	sd	zero,200(s0)
   103c0:	0c042823          	sw	zero,208(s0)
   103c4:	0c042c23          	sw	zero,216(s0)
   103c8:	768000ef          	jal	ra,10b30 <memset>
   103cc:	000207b7          	lui	a5,0x20
   103d0:	01278793          	addi	a5,a5,18 # 20012 <__BSS_END__+0xc09a>
   103d4:	2c018713          	addi	a4,gp,704 # 13ad8 <__sf+0xb0>
   103d8:	41418513          	addi	a0,gp,1044 # 13c2c <__sf+0x204>
   103dc:	00800613          	addi	a2,zero,8
   103e0:	00000593          	addi	a1,zero,0
   103e4:	0f443423          	sd	s4,232(s0)
   103e8:	0f343823          	sd	s3,240(s0)
   103ec:	0f243c23          	sd	s2,248(s0)
   103f0:	10943023          	sd	s1,256(s0)
   103f4:	16f42823          	sw	a5,368(s0)
   103f8:	16043023          	sd	zero,352(s0)
   103fc:	16043423          	sd	zero,360(s0)
   10400:	20042623          	sw	zero,524(s0)
   10404:	16043c23          	sd	zero,376(s0)
   10408:	18042023          	sw	zero,384(s0)
   1040c:	18042423          	sw	zero,392(s0)
   10410:	0ee43023          	sd	a4,224(s0)
   10414:	71c000ef          	jal	ra,10b30 <memset>
   10418:	37018793          	addi	a5,gp,880 # 13b88 <__sf+0x160>
   1041c:	19443c23          	sd	s4,408(s0)
   10420:	1b343023          	sd	s3,416(s0)
   10424:	1b243423          	sd	s2,424(s0)
   10428:	1a943823          	sd	s1,432(s0)
   1042c:	02813083          	ld	ra,40(sp)
   10430:	18f43823          	sd	a5,400(s0)
   10434:	02013403          	ld	s0,32(sp)
   10438:	01813483          	ld	s1,24(sp)
   1043c:	01013903          	ld	s2,16(sp)
   10440:	00813983          	ld	s3,8(sp)
   10444:	00013a03          	ld	s4,0(sp)
   10448:	03010113          	addi	sp,sp,48
   1044c:	00008067          	jalr	zero,0(ra)

0000000000010450 <__sfp>:
   10450:	1a01b783          	ld	a5,416(gp) # 139b8 <__stdio_exit_handler>
   10454:	fd010113          	addi	sp,sp,-48
   10458:	00913c23          	sd	s1,24(sp)
   1045c:	02113423          	sd	ra,40(sp)
   10460:	02813023          	sd	s0,32(sp)
   10464:	00050493          	addi	s1,a0,0
   10468:	10078463          	beq	a5,zero,10570 <__sfp+0x120>
   1046c:	000136b7          	lui	a3,0x13
   10470:	01868693          	addi	a3,a3,24 # 13018 <__sglue>
   10474:	0086a703          	lw	a4,8(a3)
   10478:	08e05c63          	bge	zero,a4,10510 <__sfp+0xc0>
   1047c:	02071713          	slli	a4,a4,0x20
   10480:	02075713          	srli	a4,a4,0x20
   10484:	00171793          	slli	a5,a4,0x1
   10488:	00e787b3          	add	a5,a5,a4
   1048c:	0106b403          	ld	s0,16(a3)
   10490:	00279793          	slli	a5,a5,0x2
   10494:	40e787b3          	sub	a5,a5,a4
   10498:	00479793          	slli	a5,a5,0x4
   1049c:	00f407b3          	add	a5,s0,a5
   104a0:	00c0006f          	jal	zero,104ac <__sfp+0x5c>
   104a4:	0b040413          	addi	s0,s0,176
   104a8:	06f40463          	beq	s0,a5,10510 <__sfp+0xc0>
   104ac:	01041703          	lh	a4,16(s0)
   104b0:	fe071ae3          	bne	a4,zero,104a4 <__sfp+0x54>
   104b4:	ffff07b7          	lui	a5,0xffff0
   104b8:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdc089>
   104bc:	00f42823          	sw	a5,16(s0)
   104c0:	0a042623          	sw	zero,172(s0)
   104c4:	00043023          	sd	zero,0(s0)
   104c8:	00043423          	sd	zero,8(s0)
   104cc:	00043c23          	sd	zero,24(s0)
   104d0:	02042023          	sw	zero,32(s0)
   104d4:	02042423          	sw	zero,40(s0)
   104d8:	00800613          	addi	a2,zero,8
   104dc:	00000593          	addi	a1,zero,0
   104e0:	0a440513          	addi	a0,s0,164
   104e4:	64c000ef          	jal	ra,10b30 <memset>
   104e8:	04043c23          	sd	zero,88(s0)
   104ec:	06042023          	sw	zero,96(s0)
   104f0:	06043c23          	sd	zero,120(s0)
   104f4:	08042023          	sw	zero,128(s0)
   104f8:	02813083          	ld	ra,40(sp)
   104fc:	00040513          	addi	a0,s0,0
   10500:	02013403          	ld	s0,32(sp)
   10504:	01813483          	ld	s1,24(sp)
   10508:	03010113          	addi	sp,sp,48
   1050c:	00008067          	jalr	zero,0(ra)
   10510:	0006b403          	ld	s0,0(a3)
   10514:	00040663          	beq	s0,zero,10520 <__sfp+0xd0>
   10518:	00040693          	addi	a3,s0,0
   1051c:	f59ff06f          	jal	zero,10474 <__sfp+0x24>
   10520:	2d800593          	addi	a1,zero,728
   10524:	00048513          	addi	a0,s1,0
   10528:	00d13423          	sd	a3,8(sp)
   1052c:	529000ef          	jal	ra,11254 <_malloc_r>
   10530:	00813683          	ld	a3,8(sp)
   10534:	00050413          	addi	s0,a0,0
   10538:	04050063          	beq	a0,zero,10578 <__sfp+0x128>
   1053c:	00400793          	addi	a5,zero,4
   10540:	00f52423          	sw	a5,8(a0)
   10544:	01850513          	addi	a0,a0,24
   10548:	00043023          	sd	zero,0(s0)
   1054c:	00a43823          	sd	a0,16(s0)
   10550:	2c000613          	addi	a2,zero,704
   10554:	00000593          	addi	a1,zero,0
   10558:	00d13423          	sd	a3,8(sp)
   1055c:	5d4000ef          	jal	ra,10b30 <memset>
   10560:	00813683          	ld	a3,8(sp)
   10564:	0086b023          	sd	s0,0(a3)
   10568:	00040693          	addi	a3,s0,0
   1056c:	f09ff06f          	jal	zero,10474 <__sfp+0x24>
   10570:	d99ff0ef          	jal	ra,10308 <global_stdio_init.part.0>
   10574:	ef9ff06f          	jal	zero,1046c <__sfp+0x1c>
   10578:	0006b023          	sd	zero,0(a3)
   1057c:	00c00793          	addi	a5,zero,12
   10580:	00f4a023          	sw	a5,0(s1)
   10584:	f75ff06f          	jal	zero,104f8 <__sfp+0xa8>

0000000000010588 <__sinit>:
   10588:	04853783          	ld	a5,72(a0)
   1058c:	00078463          	beq	a5,zero,10594 <__sinit+0xc>
   10590:	00008067          	jalr	zero,0(ra)
   10594:	000107b7          	lui	a5,0x10
   10598:	1a01b703          	ld	a4,416(gp) # 139b8 <__stdio_exit_handler>
   1059c:	29c78793          	addi	a5,a5,668 # 1029c <cleanup_stdio>
   105a0:	04f53423          	sd	a5,72(a0)
   105a4:	fe0716e3          	bne	a4,zero,10590 <__sinit+0x8>
   105a8:	d61ff06f          	jal	zero,10308 <global_stdio_init.part.0>

00000000000105ac <__sfp_lock_acquire>:
   105ac:	00008067          	jalr	zero,0(ra)

00000000000105b0 <__sfp_lock_release>:
   105b0:	00008067          	jalr	zero,0(ra)

00000000000105b4 <__fp_lock_all>:
   105b4:	00013637          	lui	a2,0x13
   105b8:	000105b7          	lui	a1,0x10
   105bc:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   105c0:	27858593          	addi	a1,a1,632 # 10278 <__fp_lock>
   105c4:	00000513          	addi	a0,zero,0
   105c8:	01c0006f          	jal	zero,105e4 <_fwalk_sglue>

00000000000105cc <__fp_unlock_all>:
   105cc:	00013637          	lui	a2,0x13
   105d0:	000105b7          	lui	a1,0x10
   105d4:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   105d8:	30058593          	addi	a1,a1,768 # 10300 <__fp_unlock>
   105dc:	00000513          	addi	a0,zero,0
   105e0:	0040006f          	jal	zero,105e4 <_fwalk_sglue>

00000000000105e4 <_fwalk_sglue>:
   105e4:	fb010113          	addi	sp,sp,-80
   105e8:	03213823          	sd	s2,48(sp)
   105ec:	03313423          	sd	s3,40(sp)
   105f0:	03413023          	sd	s4,32(sp)
   105f4:	01513c23          	sd	s5,24(sp)
   105f8:	01613823          	sd	s6,16(sp)
   105fc:	01713423          	sd	s7,8(sp)
   10600:	04113423          	sd	ra,72(sp)
   10604:	04813023          	sd	s0,64(sp)
   10608:	02913c23          	sd	s1,56(sp)
   1060c:	00060913          	addi	s2,a2,0
   10610:	00050a13          	addi	s4,a0,0
   10614:	00058a93          	addi	s5,a1,0
   10618:	00000b13          	addi	s6,zero,0
   1061c:	00100b93          	addi	s7,zero,1
   10620:	fff00993          	addi	s3,zero,-1
   10624:	00892783          	lw	a5,8(s2)
   10628:	04f05a63          	bge	zero,a5,1067c <_fwalk_sglue+0x98>
   1062c:	02079793          	slli	a5,a5,0x20
   10630:	0207d793          	srli	a5,a5,0x20
   10634:	00179493          	slli	s1,a5,0x1
   10638:	00f484b3          	add	s1,s1,a5
   1063c:	01093403          	ld	s0,16(s2)
   10640:	00249493          	slli	s1,s1,0x2
   10644:	40f484b3          	sub	s1,s1,a5
   10648:	00449493          	slli	s1,s1,0x4
   1064c:	009404b3          	add	s1,s0,s1
   10650:	01045783          	lhu	a5,16(s0)
   10654:	02fbf063          	bgeu	s7,a5,10674 <_fwalk_sglue+0x90>
   10658:	01241783          	lh	a5,18(s0)
   1065c:	00040593          	addi	a1,s0,0
   10660:	000a0513          	addi	a0,s4,0
   10664:	01378863          	beq	a5,s3,10674 <_fwalk_sglue+0x90>
   10668:	000a80e7          	jalr	ra,0(s5)
   1066c:	01656b33          	or	s6,a0,s6
   10670:	000b0b1b          	addiw	s6,s6,0
   10674:	0b040413          	addi	s0,s0,176
   10678:	fc941ce3          	bne	s0,s1,10650 <_fwalk_sglue+0x6c>
   1067c:	00093903          	ld	s2,0(s2)
   10680:	fa0912e3          	bne	s2,zero,10624 <_fwalk_sglue+0x40>
   10684:	04813083          	ld	ra,72(sp)
   10688:	04013403          	ld	s0,64(sp)
   1068c:	03813483          	ld	s1,56(sp)
   10690:	03013903          	ld	s2,48(sp)
   10694:	02813983          	ld	s3,40(sp)
   10698:	02013a03          	ld	s4,32(sp)
   1069c:	01813a83          	ld	s5,24(sp)
   106a0:	00813b83          	ld	s7,8(sp)
   106a4:	000b0513          	addi	a0,s6,0
   106a8:	01013b03          	ld	s6,16(sp)
   106ac:	05010113          	addi	sp,sp,80
   106b0:	00008067          	jalr	zero,0(ra)

00000000000106b4 <__sread>:
   106b4:	ff010113          	addi	sp,sp,-16
   106b8:	00813023          	sd	s0,0(sp)
   106bc:	00058413          	addi	s0,a1,0
   106c0:	01259583          	lh	a1,18(a1)
   106c4:	00113423          	sd	ra,8(sp)
   106c8:	2ec000ef          	jal	ra,109b4 <_read_r>
   106cc:	02054063          	blt	a0,zero,106ec <__sread+0x38>
   106d0:	09043783          	ld	a5,144(s0)
   106d4:	00813083          	ld	ra,8(sp)
   106d8:	00a787b3          	add	a5,a5,a0
   106dc:	08f43823          	sd	a5,144(s0)
   106e0:	00013403          	ld	s0,0(sp)
   106e4:	01010113          	addi	sp,sp,16
   106e8:	00008067          	jalr	zero,0(ra)
   106ec:	01045783          	lhu	a5,16(s0)
   106f0:	fffff737          	lui	a4,0xfffff
   106f4:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   106f8:	00e7f7b3          	and	a5,a5,a4
   106fc:	00813083          	ld	ra,8(sp)
   10700:	00f41823          	sh	a5,16(s0)
   10704:	00013403          	ld	s0,0(sp)
   10708:	01010113          	addi	sp,sp,16
   1070c:	00008067          	jalr	zero,0(ra)

0000000000010710 <__seofread>:
   10710:	00000513          	addi	a0,zero,0
   10714:	00008067          	jalr	zero,0(ra)

0000000000010718 <__swrite>:
   10718:	01059783          	lh	a5,16(a1)
   1071c:	fd010113          	addi	sp,sp,-48
   10720:	00068313          	addi	t1,a3,0
   10724:	02113423          	sd	ra,40(sp)
   10728:	1007f693          	andi	a3,a5,256
   1072c:	00058713          	addi	a4,a1,0
   10730:	00060893          	addi	a7,a2,0
   10734:	00050813          	addi	a6,a0,0
   10738:	02069863          	bne	a3,zero,10768 <__swrite+0x50>
   1073c:	fffff6b7          	lui	a3,0xfffff
   10740:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffeb087>
   10744:	02813083          	ld	ra,40(sp)
   10748:	00d7f7b3          	and	a5,a5,a3
   1074c:	01271583          	lh	a1,18(a4)
   10750:	00f71823          	sh	a5,16(a4)
   10754:	00030693          	addi	a3,t1,0 # 10210 <frame_dummy+0x14>
   10758:	00088613          	addi	a2,a7,0
   1075c:	00080513          	addi	a0,a6,0
   10760:	03010113          	addi	sp,sp,48
   10764:	2b80006f          	jal	zero,10a1c <_write_r>
   10768:	01259583          	lh	a1,18(a1)
   1076c:	00c13823          	sd	a2,16(sp)
   10770:	00200693          	addi	a3,zero,2
   10774:	00000613          	addi	a2,zero,0
   10778:	00613c23          	sd	t1,24(sp)
   1077c:	00e13023          	sd	a4,0(sp)
   10780:	00a13423          	sd	a0,8(sp)
   10784:	1c8000ef          	jal	ra,1094c <_lseek_r>
   10788:	00013703          	ld	a4,0(sp)
   1078c:	01813303          	ld	t1,24(sp)
   10790:	01013883          	ld	a7,16(sp)
   10794:	01071783          	lh	a5,16(a4)
   10798:	00813803          	ld	a6,8(sp)
   1079c:	fa1ff06f          	jal	zero,1073c <__swrite+0x24>

00000000000107a0 <__sseek>:
   107a0:	ff010113          	addi	sp,sp,-16
   107a4:	00813023          	sd	s0,0(sp)
   107a8:	00058413          	addi	s0,a1,0
   107ac:	01259583          	lh	a1,18(a1)
   107b0:	00113423          	sd	ra,8(sp)
   107b4:	198000ef          	jal	ra,1094c <_lseek_r>
   107b8:	fff00713          	addi	a4,zero,-1
   107bc:	01041783          	lh	a5,16(s0)
   107c0:	02e50263          	beq	a0,a4,107e4 <__sseek+0x44>
   107c4:	00001737          	lui	a4,0x1
   107c8:	00e7e7b3          	or	a5,a5,a4
   107cc:	00813083          	ld	ra,8(sp)
   107d0:	08a43823          	sd	a0,144(s0)
   107d4:	00f41823          	sh	a5,16(s0)
   107d8:	00013403          	ld	s0,0(sp)
   107dc:	01010113          	addi	sp,sp,16
   107e0:	00008067          	jalr	zero,0(ra)
   107e4:	80050713          	addi	a4,a0,-2048
   107e8:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   107ec:	00e7f7b3          	and	a5,a5,a4
   107f0:	00813083          	ld	ra,8(sp)
   107f4:	00f41823          	sh	a5,16(s0)
   107f8:	00013403          	ld	s0,0(sp)
   107fc:	01010113          	addi	sp,sp,16
   10800:	00008067          	jalr	zero,0(ra)

0000000000010804 <__sclose>:
   10804:	01259583          	lh	a1,18(a1)
   10808:	0040006f          	jal	zero,1080c <_close_r>

000000000001080c <_close_r>:
   1080c:	fe010113          	addi	sp,sp,-32
   10810:	00813823          	sd	s0,16(sp)
   10814:	00913423          	sd	s1,8(sp)
   10818:	00050493          	addi	s1,a0,0
   1081c:	00058513          	addi	a0,a1,0
   10820:	00113c23          	sd	ra,24(sp)
   10824:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10828:	0d1010ef          	jal	ra,120f8 <_close>
   1082c:	fff00793          	addi	a5,zero,-1
   10830:	00f50c63          	beq	a0,a5,10848 <_close_r+0x3c>
   10834:	01813083          	ld	ra,24(sp)
   10838:	01013403          	ld	s0,16(sp)
   1083c:	00813483          	ld	s1,8(sp)
   10840:	02010113          	addi	sp,sp,32
   10844:	00008067          	jalr	zero,0(ra)
   10848:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   1084c:	fe0784e3          	beq	a5,zero,10834 <_close_r+0x28>
   10850:	01813083          	ld	ra,24(sp)
   10854:	01013403          	ld	s0,16(sp)
   10858:	00f4a023          	sw	a5,0(s1)
   1085c:	00813483          	ld	s1,8(sp)
   10860:	02010113          	addi	sp,sp,32
   10864:	00008067          	jalr	zero,0(ra)

0000000000010868 <_reclaim_reent>:
   10868:	1881b783          	ld	a5,392(gp) # 139a0 <_impure_ptr>
   1086c:	0ca78e63          	beq	a5,a0,10948 <_reclaim_reent+0xe0>
   10870:	06853583          	ld	a1,104(a0)
   10874:	fd010113          	addi	sp,sp,-48
   10878:	00913c23          	sd	s1,24(sp)
   1087c:	02113423          	sd	ra,40(sp)
   10880:	02813023          	sd	s0,32(sp)
   10884:	00050493          	addi	s1,a0,0
   10888:	04058863          	beq	a1,zero,108d8 <_reclaim_reent+0x70>
   1088c:	01213823          	sd	s2,16(sp)
   10890:	01313423          	sd	s3,8(sp)
   10894:	00000913          	addi	s2,zero,0
   10898:	20000993          	addi	s3,zero,512
   1089c:	012587b3          	add	a5,a1,s2
   108a0:	0007b403          	ld	s0,0(a5)
   108a4:	00040e63          	beq	s0,zero,108c0 <_reclaim_reent+0x58>
   108a8:	00040593          	addi	a1,s0,0
   108ac:	00043403          	ld	s0,0(s0)
   108b0:	00048513          	addi	a0,s1,0
   108b4:	69c000ef          	jal	ra,10f50 <_free_r>
   108b8:	fe0418e3          	bne	s0,zero,108a8 <_reclaim_reent+0x40>
   108bc:	0684b583          	ld	a1,104(s1)
   108c0:	00890913          	addi	s2,s2,8
   108c4:	fd391ce3          	bne	s2,s3,1089c <_reclaim_reent+0x34>
   108c8:	00048513          	addi	a0,s1,0
   108cc:	684000ef          	jal	ra,10f50 <_free_r>
   108d0:	01013903          	ld	s2,16(sp)
   108d4:	00813983          	ld	s3,8(sp)
   108d8:	0504b583          	ld	a1,80(s1)
   108dc:	00058663          	beq	a1,zero,108e8 <_reclaim_reent+0x80>
   108e0:	00048513          	addi	a0,s1,0
   108e4:	66c000ef          	jal	ra,10f50 <_free_r>
   108e8:	0604b403          	ld	s0,96(s1)
   108ec:	00040c63          	beq	s0,zero,10904 <_reclaim_reent+0x9c>
   108f0:	00040593          	addi	a1,s0,0
   108f4:	00043403          	ld	s0,0(s0)
   108f8:	00048513          	addi	a0,s1,0
   108fc:	654000ef          	jal	ra,10f50 <_free_r>
   10900:	fe0418e3          	bne	s0,zero,108f0 <_reclaim_reent+0x88>
   10904:	0784b583          	ld	a1,120(s1)
   10908:	00058663          	beq	a1,zero,10914 <_reclaim_reent+0xac>
   1090c:	00048513          	addi	a0,s1,0
   10910:	640000ef          	jal	ra,10f50 <_free_r>
   10914:	0484b783          	ld	a5,72(s1)
   10918:	00078e63          	beq	a5,zero,10934 <_reclaim_reent+0xcc>
   1091c:	02013403          	ld	s0,32(sp)
   10920:	02813083          	ld	ra,40(sp)
   10924:	00048513          	addi	a0,s1,0
   10928:	01813483          	ld	s1,24(sp)
   1092c:	03010113          	addi	sp,sp,48
   10930:	00078067          	jalr	zero,0(a5)
   10934:	02813083          	ld	ra,40(sp)
   10938:	02013403          	ld	s0,32(sp)
   1093c:	01813483          	ld	s1,24(sp)
   10940:	03010113          	addi	sp,sp,48
   10944:	00008067          	jalr	zero,0(ra)
   10948:	00008067          	jalr	zero,0(ra)

000000000001094c <_lseek_r>:
   1094c:	fe010113          	addi	sp,sp,-32
   10950:	00058793          	addi	a5,a1,0
   10954:	00813823          	sd	s0,16(sp)
   10958:	00913423          	sd	s1,8(sp)
   1095c:	00060593          	addi	a1,a2,0
   10960:	00050493          	addi	s1,a0,0
   10964:	00068613          	addi	a2,a3,0
   10968:	00078513          	addi	a0,a5,0
   1096c:	00113c23          	sd	ra,24(sp)
   10970:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10974:	7f4010ef          	jal	ra,12168 <_lseek>
   10978:	fff00793          	addi	a5,zero,-1
   1097c:	00f50c63          	beq	a0,a5,10994 <_lseek_r+0x48>
   10980:	01813083          	ld	ra,24(sp)
   10984:	01013403          	ld	s0,16(sp)
   10988:	00813483          	ld	s1,8(sp)
   1098c:	02010113          	addi	sp,sp,32
   10990:	00008067          	jalr	zero,0(ra)
   10994:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10998:	fe0784e3          	beq	a5,zero,10980 <_lseek_r+0x34>
   1099c:	01813083          	ld	ra,24(sp)
   109a0:	01013403          	ld	s0,16(sp)
   109a4:	00f4a023          	sw	a5,0(s1)
   109a8:	00813483          	ld	s1,8(sp)
   109ac:	02010113          	addi	sp,sp,32
   109b0:	00008067          	jalr	zero,0(ra)

00000000000109b4 <_read_r>:
   109b4:	fe010113          	addi	sp,sp,-32
   109b8:	00058793          	addi	a5,a1,0
   109bc:	00813823          	sd	s0,16(sp)
   109c0:	00913423          	sd	s1,8(sp)
   109c4:	00060593          	addi	a1,a2,0
   109c8:	00050493          	addi	s1,a0,0
   109cc:	00068613          	addi	a2,a3,0
   109d0:	00078513          	addi	a0,a5,0
   109d4:	00113c23          	sd	ra,24(sp)
   109d8:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   109dc:	7cc010ef          	jal	ra,121a8 <_read>
   109e0:	fff00793          	addi	a5,zero,-1
   109e4:	00f50c63          	beq	a0,a5,109fc <_read_r+0x48>
   109e8:	01813083          	ld	ra,24(sp)
   109ec:	01013403          	ld	s0,16(sp)
   109f0:	00813483          	ld	s1,8(sp)
   109f4:	02010113          	addi	sp,sp,32
   109f8:	00008067          	jalr	zero,0(ra)
   109fc:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10a00:	fe0784e3          	beq	a5,zero,109e8 <_read_r+0x34>
   10a04:	01813083          	ld	ra,24(sp)
   10a08:	01013403          	ld	s0,16(sp)
   10a0c:	00f4a023          	sw	a5,0(s1)
   10a10:	00813483          	ld	s1,8(sp)
   10a14:	02010113          	addi	sp,sp,32
   10a18:	00008067          	jalr	zero,0(ra)

0000000000010a1c <_write_r>:
   10a1c:	fe010113          	addi	sp,sp,-32
   10a20:	00058793          	addi	a5,a1,0
   10a24:	00813823          	sd	s0,16(sp)
   10a28:	00913423          	sd	s1,8(sp)
   10a2c:	00060593          	addi	a1,a2,0
   10a30:	00050493          	addi	s1,a0,0
   10a34:	00068613          	addi	a2,a3,0
   10a38:	00078513          	addi	a0,a5,0
   10a3c:	00113c23          	sd	ra,24(sp)
   10a40:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   10a44:	01d010ef          	jal	ra,12260 <_write>
   10a48:	fff00793          	addi	a5,zero,-1
   10a4c:	00f50c63          	beq	a0,a5,10a64 <_write_r+0x48>
   10a50:	01813083          	ld	ra,24(sp)
   10a54:	01013403          	ld	s0,16(sp)
   10a58:	00813483          	ld	s1,8(sp)
   10a5c:	02010113          	addi	sp,sp,32
   10a60:	00008067          	jalr	zero,0(ra)
   10a64:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   10a68:	fe0784e3          	beq	a5,zero,10a50 <_write_r+0x34>
   10a6c:	01813083          	ld	ra,24(sp)
   10a70:	01013403          	ld	s0,16(sp)
   10a74:	00f4a023          	sw	a5,0(s1)
   10a78:	00813483          	ld	s1,8(sp)
   10a7c:	02010113          	addi	sp,sp,32
   10a80:	00008067          	jalr	zero,0(ra)

0000000000010a84 <__libc_init_array>:
   10a84:	fe010113          	addi	sp,sp,-32
   10a88:	00813823          	sd	s0,16(sp)
   10a8c:	01213023          	sd	s2,0(sp)
   10a90:	00013437          	lui	s0,0x13
   10a94:	00013937          	lui	s2,0x13
   10a98:	00113c23          	sd	ra,24(sp)
   10a9c:	00913423          	sd	s1,8(sp)
   10aa0:	00090913          	addi	s2,s2,0 # 13000 <__init_array_start>
   10aa4:	00040413          	addi	s0,s0,0 # 13000 <__init_array_start>
   10aa8:	02890263          	beq	s2,s0,10acc <__libc_init_array+0x48>
   10aac:	40890933          	sub	s2,s2,s0
   10ab0:	40395913          	srai	s2,s2,0x3
   10ab4:	00000493          	addi	s1,zero,0
   10ab8:	00043783          	ld	a5,0(s0)
   10abc:	00148493          	addi	s1,s1,1
   10ac0:	00840413          	addi	s0,s0,8
   10ac4:	000780e7          	jalr	ra,0(a5)
   10ac8:	ff24e8e3          	bltu	s1,s2,10ab8 <__libc_init_array+0x34>
   10acc:	00013937          	lui	s2,0x13
   10ad0:	00013437          	lui	s0,0x13
   10ad4:	01090913          	addi	s2,s2,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   10ad8:	00040413          	addi	s0,s0,0 # 13000 <__init_array_start>
   10adc:	02890263          	beq	s2,s0,10b00 <__libc_init_array+0x7c>
   10ae0:	40890933          	sub	s2,s2,s0
   10ae4:	40395913          	srai	s2,s2,0x3
   10ae8:	00000493          	addi	s1,zero,0
   10aec:	00043783          	ld	a5,0(s0)
   10af0:	00148493          	addi	s1,s1,1
   10af4:	00840413          	addi	s0,s0,8
   10af8:	000780e7          	jalr	ra,0(a5)
   10afc:	ff24e8e3          	bltu	s1,s2,10aec <__libc_init_array+0x68>
   10b00:	01813083          	ld	ra,24(sp)
   10b04:	01013403          	ld	s0,16(sp)
   10b08:	00813483          	ld	s1,8(sp)
   10b0c:	00013903          	ld	s2,0(sp)
   10b10:	02010113          	addi	sp,sp,32
   10b14:	00008067          	jalr	zero,0(ra)

0000000000010b18 <write>:
   10b18:	00050713          	addi	a4,a0,0
   10b1c:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   10b20:	00060693          	addi	a3,a2,0
   10b24:	00058613          	addi	a2,a1,0
   10b28:	00070593          	addi	a1,a4,0
   10b2c:	ef1ff06f          	jal	zero,10a1c <_write_r>

0000000000010b30 <memset>:
   10b30:	00f00313          	addi	t1,zero,15
   10b34:	00050713          	addi	a4,a0,0
   10b38:	02c37a63          	bgeu	t1,a2,10b6c <memset+0x3c>
   10b3c:	00f77793          	andi	a5,a4,15
   10b40:	0a079063          	bne	a5,zero,10be0 <memset+0xb0>
   10b44:	06059e63          	bne	a1,zero,10bc0 <memset+0x90>
   10b48:	ff067693          	andi	a3,a2,-16
   10b4c:	00f67613          	andi	a2,a2,15
   10b50:	00e686b3          	add	a3,a3,a4
   10b54:	00b73023          	sd	a1,0(a4)
   10b58:	00b73423          	sd	a1,8(a4)
   10b5c:	01070713          	addi	a4,a4,16
   10b60:	fed76ae3          	bltu	a4,a3,10b54 <memset+0x24>
   10b64:	00061463          	bne	a2,zero,10b6c <memset+0x3c>
   10b68:	00008067          	jalr	zero,0(ra)
   10b6c:	40c306b3          	sub	a3,t1,a2
   10b70:	00269693          	slli	a3,a3,0x2
   10b74:	00000297          	auipc	t0,0x0
   10b78:	005686b3          	add	a3,a3,t0
   10b7c:	00c68067          	jalr	zero,12(a3)
   10b80:	00b70723          	sb	a1,14(a4)
   10b84:	00b706a3          	sb	a1,13(a4)
   10b88:	00b70623          	sb	a1,12(a4)
   10b8c:	00b705a3          	sb	a1,11(a4)
   10b90:	00b70523          	sb	a1,10(a4)
   10b94:	00b704a3          	sb	a1,9(a4)
   10b98:	00b70423          	sb	a1,8(a4)
   10b9c:	00b703a3          	sb	a1,7(a4)
   10ba0:	00b70323          	sb	a1,6(a4)
   10ba4:	00b702a3          	sb	a1,5(a4)
   10ba8:	00b70223          	sb	a1,4(a4)
   10bac:	00b701a3          	sb	a1,3(a4)
   10bb0:	00b70123          	sb	a1,2(a4)
   10bb4:	00b700a3          	sb	a1,1(a4)
   10bb8:	00b70023          	sb	a1,0(a4)
   10bbc:	00008067          	jalr	zero,0(ra)
   10bc0:	0ff5f593          	andi	a1,a1,255
   10bc4:	00859693          	slli	a3,a1,0x8
   10bc8:	00d5e5b3          	or	a1,a1,a3
   10bcc:	01059693          	slli	a3,a1,0x10
   10bd0:	00d5e5b3          	or	a1,a1,a3
   10bd4:	02059693          	slli	a3,a1,0x20
   10bd8:	00d5e5b3          	or	a1,a1,a3
   10bdc:	f6dff06f          	jal	zero,10b48 <memset+0x18>
   10be0:	00279693          	slli	a3,a5,0x2
   10be4:	00000297          	auipc	t0,0x0
   10be8:	005686b3          	add	a3,a3,t0
   10bec:	00008293          	addi	t0,ra,0
   10bf0:	f98680e7          	jalr	ra,-104(a3)
   10bf4:	00028093          	addi	ra,t0,0 # 10be4 <memset+0xb4>
   10bf8:	ff078793          	addi	a5,a5,-16
   10bfc:	40f70733          	sub	a4,a4,a5
   10c00:	00f60633          	add	a2,a2,a5
   10c04:	f6c374e3          	bgeu	t1,a2,10b6c <memset+0x3c>
   10c08:	f3dff06f          	jal	zero,10b44 <memset+0x14>

0000000000010c0c <strlen>:
   10c0c:	00757793          	andi	a5,a0,7
   10c10:	00050713          	addi	a4,a0,0
   10c14:	08079063          	bne	a5,zero,10c94 <strlen+0x88>
   10c18:	7f7f87b7          	lui	a5,0x7f7f8
   10c1c:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <__BSS_END__+0x7f7e4007>
   10c20:	02079693          	slli	a3,a5,0x20
   10c24:	00f686b3          	add	a3,a3,a5
   10c28:	fff00593          	addi	a1,zero,-1
   10c2c:	00073603          	ld	a2,0(a4)
   10c30:	00870713          	addi	a4,a4,8
   10c34:	00d677b3          	and	a5,a2,a3
   10c38:	00d787b3          	add	a5,a5,a3
   10c3c:	00c7e7b3          	or	a5,a5,a2
   10c40:	00d7e7b3          	or	a5,a5,a3
   10c44:	feb784e3          	beq	a5,a1,10c2c <strlen+0x20>
   10c48:	ff874783          	lbu	a5,-8(a4)
   10c4c:	40a706b3          	sub	a3,a4,a0
   10c50:	06078463          	beq	a5,zero,10cb8 <strlen+0xac>
   10c54:	ff974783          	lbu	a5,-7(a4)
   10c58:	04078c63          	beq	a5,zero,10cb0 <strlen+0xa4>
   10c5c:	ffa74783          	lbu	a5,-6(a4)
   10c60:	06078463          	beq	a5,zero,10cc8 <strlen+0xbc>
   10c64:	ffb74783          	lbu	a5,-5(a4)
   10c68:	04078c63          	beq	a5,zero,10cc0 <strlen+0xb4>
   10c6c:	ffc74783          	lbu	a5,-4(a4)
   10c70:	06078063          	beq	a5,zero,10cd0 <strlen+0xc4>
   10c74:	ffd74783          	lbu	a5,-3(a4)
   10c78:	06078063          	beq	a5,zero,10cd8 <strlen+0xcc>
   10c7c:	ffe74783          	lbu	a5,-2(a4)
   10c80:	00f03533          	sltu	a0,zero,a5
   10c84:	00d50533          	add	a0,a0,a3
   10c88:	ffe50513          	addi	a0,a0,-2
   10c8c:	00008067          	jalr	zero,0(ra)
   10c90:	f80684e3          	beq	a3,zero,10c18 <strlen+0xc>
   10c94:	00074783          	lbu	a5,0(a4)
   10c98:	00170713          	addi	a4,a4,1
   10c9c:	00777693          	andi	a3,a4,7
   10ca0:	fe0798e3          	bne	a5,zero,10c90 <strlen+0x84>
   10ca4:	40a70733          	sub	a4,a4,a0
   10ca8:	fff70513          	addi	a0,a4,-1
   10cac:	00008067          	jalr	zero,0(ra)
   10cb0:	ff968513          	addi	a0,a3,-7
   10cb4:	00008067          	jalr	zero,0(ra)
   10cb8:	ff868513          	addi	a0,a3,-8
   10cbc:	00008067          	jalr	zero,0(ra)
   10cc0:	ffb68513          	addi	a0,a3,-5
   10cc4:	00008067          	jalr	zero,0(ra)
   10cc8:	ffa68513          	addi	a0,a3,-6
   10ccc:	00008067          	jalr	zero,0(ra)
   10cd0:	ffc68513          	addi	a0,a3,-4
   10cd4:	00008067          	jalr	zero,0(ra)
   10cd8:	ffd68513          	addi	a0,a3,-3
   10cdc:	00008067          	jalr	zero,0(ra)

0000000000010ce0 <__call_exitprocs>:
   10ce0:	fb010113          	addi	sp,sp,-80
   10ce4:	03413023          	sd	s4,32(sp)
   10ce8:	03213823          	sd	s2,48(sp)
   10cec:	1b01b903          	ld	s2,432(gp) # 139c8 <__atexit>
   10cf0:	04113423          	sd	ra,72(sp)
   10cf4:	06090e63          	beq	s2,zero,10d70 <__call_exitprocs+0x90>
   10cf8:	03313423          	sd	s3,40(sp)
   10cfc:	01513c23          	sd	s5,24(sp)
   10d00:	01613823          	sd	s6,16(sp)
   10d04:	01713423          	sd	s7,8(sp)
   10d08:	04813023          	sd	s0,64(sp)
   10d0c:	02913c23          	sd	s1,56(sp)
   10d10:	01813023          	sd	s8,0(sp)
   10d14:	00050b13          	addi	s6,a0,0
   10d18:	00058b93          	addi	s7,a1,0
   10d1c:	fff00993          	addi	s3,zero,-1
   10d20:	00100a93          	addi	s5,zero,1
   10d24:	00892403          	lw	s0,8(s2)
   10d28:	fff4041b          	addiw	s0,s0,-1
   10d2c:	02044463          	blt	s0,zero,10d54 <__call_exitprocs+0x74>
   10d30:	01090493          	addi	s1,s2,16
   10d34:	00341793          	slli	a5,s0,0x3
   10d38:	00f484b3          	add	s1,s1,a5
   10d3c:	040b8463          	beq	s7,zero,10d84 <__call_exitprocs+0xa4>
   10d40:	2004b783          	ld	a5,512(s1)
   10d44:	05778063          	beq	a5,s7,10d84 <__call_exitprocs+0xa4>
   10d48:	fff4041b          	addiw	s0,s0,-1
   10d4c:	ff848493          	addi	s1,s1,-8
   10d50:	ff3418e3          	bne	s0,s3,10d40 <__call_exitprocs+0x60>
   10d54:	04013403          	ld	s0,64(sp)
   10d58:	03813483          	ld	s1,56(sp)
   10d5c:	02813983          	ld	s3,40(sp)
   10d60:	01813a83          	ld	s5,24(sp)
   10d64:	01013b03          	ld	s6,16(sp)
   10d68:	00813b83          	ld	s7,8(sp)
   10d6c:	00013c03          	ld	s8,0(sp)
   10d70:	04813083          	ld	ra,72(sp)
   10d74:	03013903          	ld	s2,48(sp)
   10d78:	02013a03          	ld	s4,32(sp)
   10d7c:	05010113          	addi	sp,sp,80
   10d80:	00008067          	jalr	zero,0(ra)
   10d84:	00892783          	lw	a5,8(s2)
   10d88:	0004b683          	ld	a3,0(s1)
   10d8c:	fff7879b          	addiw	a5,a5,-1
   10d90:	06878a63          	beq	a5,s0,10e04 <__call_exitprocs+0x124>
   10d94:	0004b023          	sd	zero,0(s1)
   10d98:	02068663          	beq	a3,zero,10dc4 <__call_exitprocs+0xe4>
   10d9c:	31092783          	lw	a5,784(s2)
   10da0:	008a973b          	sllw	a4,s5,s0
   10da4:	00892c03          	lw	s8,8(s2)
   10da8:	00e7f7b3          	and	a5,a5,a4
   10dac:	02079463          	bne	a5,zero,10dd4 <__call_exitprocs+0xf4>
   10db0:	000680e7          	jalr	ra,0(a3)
   10db4:	00892703          	lw	a4,8(s2)
   10db8:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10dbc:	03871e63          	bne	a4,s8,10df8 <__call_exitprocs+0x118>
   10dc0:	03279c63          	bne	a5,s2,10df8 <__call_exitprocs+0x118>
   10dc4:	fff4041b          	addiw	s0,s0,-1
   10dc8:	ff848493          	addi	s1,s1,-8
   10dcc:	f73418e3          	bne	s0,s3,10d3c <__call_exitprocs+0x5c>
   10dd0:	f85ff06f          	jal	zero,10d54 <__call_exitprocs+0x74>
   10dd4:	31492783          	lw	a5,788(s2)
   10dd8:	1004b583          	ld	a1,256(s1)
   10ddc:	00f77733          	and	a4,a4,a5
   10de0:	02071663          	bne	a4,zero,10e0c <__call_exitprocs+0x12c>
   10de4:	000b0513          	addi	a0,s6,0
   10de8:	000680e7          	jalr	ra,0(a3)
   10dec:	00892703          	lw	a4,8(s2)
   10df0:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   10df4:	fd8706e3          	beq	a4,s8,10dc0 <__call_exitprocs+0xe0>
   10df8:	f4078ee3          	beq	a5,zero,10d54 <__call_exitprocs+0x74>
   10dfc:	00078913          	addi	s2,a5,0
   10e00:	f25ff06f          	jal	zero,10d24 <__call_exitprocs+0x44>
   10e04:	00892423          	sw	s0,8(s2)
   10e08:	f91ff06f          	jal	zero,10d98 <__call_exitprocs+0xb8>
   10e0c:	00058513          	addi	a0,a1,0
   10e10:	000680e7          	jalr	ra,0(a3)
   10e14:	fa1ff06f          	jal	zero,10db4 <__call_exitprocs+0xd4>

0000000000010e18 <atexit>:
   10e18:	00050593          	addi	a1,a0,0
   10e1c:	00000693          	addi	a3,zero,0
   10e20:	00000613          	addi	a2,zero,0
   10e24:	00000513          	addi	a0,zero,0
   10e28:	2340106f          	jal	zero,1205c <__register_exitproc>

0000000000010e2c <_malloc_trim_r>:
   10e2c:	fd010113          	addi	sp,sp,-48
   10e30:	01213823          	sd	s2,16(sp)
   10e34:	00013937          	lui	s2,0x13
   10e38:	02813023          	sd	s0,32(sp)
   10e3c:	00913c23          	sd	s1,24(sp)
   10e40:	01313423          	sd	s3,8(sp)
   10e44:	00058413          	addi	s0,a1,0
   10e48:	02113423          	sd	ra,40(sp)
   10e4c:	00050993          	addi	s3,a0,0
   10e50:	18890913          	addi	s2,s2,392 # 13188 <__malloc_av_>
   10e54:	4e5000ef          	jal	ra,11b38 <__malloc_lock>
   10e58:	01093783          	ld	a5,16(s2)
   10e5c:	00001737          	lui	a4,0x1
   10e60:	0087b483          	ld	s1,8(a5)
   10e64:	ffc4f493          	andi	s1,s1,-4
   10e68:	7ff48793          	addi	a5,s1,2047
   10e6c:	7e078793          	addi	a5,a5,2016
   10e70:	40878433          	sub	s0,a5,s0
   10e74:	00c45413          	srli	s0,s0,0xc
   10e78:	fff40413          	addi	s0,s0,-1
   10e7c:	00c41413          	slli	s0,s0,0xc
   10e80:	00e44e63          	blt	s0,a4,10e9c <_malloc_trim_r+0x70>
   10e84:	00000593          	addi	a1,zero,0
   10e88:	00098513          	addi	a0,s3,0
   10e8c:	118010ef          	jal	ra,11fa4 <_sbrk_r>
   10e90:	01093783          	ld	a5,16(s2)
   10e94:	009787b3          	add	a5,a5,s1
   10e98:	02f50663          	beq	a0,a5,10ec4 <_malloc_trim_r+0x98>
   10e9c:	00098513          	addi	a0,s3,0
   10ea0:	49d000ef          	jal	ra,11b3c <__malloc_unlock>
   10ea4:	02813083          	ld	ra,40(sp)
   10ea8:	02013403          	ld	s0,32(sp)
   10eac:	01813483          	ld	s1,24(sp)
   10eb0:	01013903          	ld	s2,16(sp)
   10eb4:	00813983          	ld	s3,8(sp)
   10eb8:	00000513          	addi	a0,zero,0
   10ebc:	03010113          	addi	sp,sp,48
   10ec0:	00008067          	jalr	zero,0(ra)
   10ec4:	408005b3          	sub	a1,zero,s0
   10ec8:	00098513          	addi	a0,s3,0
   10ecc:	0d8010ef          	jal	ra,11fa4 <_sbrk_r>
   10ed0:	fff00793          	addi	a5,zero,-1
   10ed4:	04f50463          	beq	a0,a5,10f1c <_malloc_trim_r+0xf0>
   10ed8:	01093683          	ld	a3,16(s2)
   10edc:	4201a783          	lw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   10ee0:	408484b3          	sub	s1,s1,s0
   10ee4:	0014e493          	ori	s1,s1,1
   10ee8:	00098513          	addi	a0,s3,0
   10eec:	408787bb          	subw	a5,a5,s0
   10ef0:	0096b423          	sd	s1,8(a3)
   10ef4:	42f1a023          	sw	a5,1056(gp) # 13c38 <__malloc_current_mallinfo>
   10ef8:	445000ef          	jal	ra,11b3c <__malloc_unlock>
   10efc:	02813083          	ld	ra,40(sp)
   10f00:	02013403          	ld	s0,32(sp)
   10f04:	01813483          	ld	s1,24(sp)
   10f08:	01013903          	ld	s2,16(sp)
   10f0c:	00813983          	ld	s3,8(sp)
   10f10:	00100513          	addi	a0,zero,1
   10f14:	03010113          	addi	sp,sp,48
   10f18:	00008067          	jalr	zero,0(ra)
   10f1c:	00000593          	addi	a1,zero,0
   10f20:	00098513          	addi	a0,s3,0
   10f24:	080010ef          	jal	ra,11fa4 <_sbrk_r>
   10f28:	01093703          	ld	a4,16(s2)
   10f2c:	01f00693          	addi	a3,zero,31
   10f30:	40e507b3          	sub	a5,a0,a4
   10f34:	f6f6d4e3          	bge	a3,a5,10e9c <_malloc_trim_r+0x70>
   10f38:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   10f3c:	0017e793          	ori	a5,a5,1
   10f40:	40c50533          	sub	a0,a0,a2
   10f44:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   10f48:	42a1a023          	sw	a0,1056(gp) # 13c38 <__malloc_current_mallinfo>
   10f4c:	f51ff06f          	jal	zero,10e9c <_malloc_trim_r+0x70>

0000000000010f50 <_free_r>:
   10f50:	12058863          	beq	a1,zero,11080 <_free_r+0x130>
   10f54:	fe010113          	addi	sp,sp,-32
   10f58:	00813823          	sd	s0,16(sp)
   10f5c:	00b13423          	sd	a1,8(sp)
   10f60:	00050413          	addi	s0,a0,0
   10f64:	00113c23          	sd	ra,24(sp)
   10f68:	3d1000ef          	jal	ra,11b38 <__malloc_lock>
   10f6c:	00813583          	ld	a1,8(sp)
   10f70:	00013837          	lui	a6,0x13
   10f74:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   10f78:	ff85b503          	ld	a0,-8(a1)
   10f7c:	ff058713          	addi	a4,a1,-16
   10f80:	01083883          	ld	a7,16(a6)
   10f84:	ffe57793          	andi	a5,a0,-2
   10f88:	00f70633          	add	a2,a4,a5
   10f8c:	00863683          	ld	a3,8(a2)
   10f90:	00157313          	andi	t1,a0,1
   10f94:	ffc6f693          	andi	a3,a3,-4
   10f98:	18c88e63          	beq	a7,a2,11134 <_free_r+0x1e4>
   10f9c:	00d63423          	sd	a3,8(a2)
   10fa0:	00d608b3          	add	a7,a2,a3
   10fa4:	0088b883          	ld	a7,8(a7)
   10fa8:	0018f893          	andi	a7,a7,1
   10fac:	08031e63          	bne	t1,zero,11048 <_free_r+0xf8>
   10fb0:	ff05b303          	ld	t1,-16(a1)
   10fb4:	000135b7          	lui	a1,0x13
   10fb8:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   10fbc:	40670733          	sub	a4,a4,t1
   10fc0:	01073503          	ld	a0,16(a4)
   10fc4:	006787b3          	add	a5,a5,t1
   10fc8:	14b50063          	beq	a0,a1,11108 <_free_r+0x1b8>
   10fcc:	01873303          	ld	t1,24(a4)
   10fd0:	00653c23          	sd	t1,24(a0)
   10fd4:	00a33823          	sd	a0,16(t1)
   10fd8:	1a088263          	beq	a7,zero,1117c <_free_r+0x22c>
   10fdc:	0017e693          	ori	a3,a5,1
   10fe0:	00d73423          	sd	a3,8(a4)
   10fe4:	00f63023          	sd	a5,0(a2)
   10fe8:	1ff00693          	addi	a3,zero,511
   10fec:	0af6e663          	bltu	a3,a5,11098 <_free_r+0x148>
   10ff0:	0037d793          	srli	a5,a5,0x3
   10ff4:	00179693          	slli	a3,a5,0x1
   10ff8:	0026869b          	addiw	a3,a3,2
   10ffc:	00369693          	slli	a3,a3,0x3
   11000:	00883503          	ld	a0,8(a6)
   11004:	00d806b3          	add	a3,a6,a3
   11008:	0006b583          	ld	a1,0(a3)
   1100c:	4027d61b          	sraiw	a2,a5,0x2
   11010:	00100793          	addi	a5,zero,1
   11014:	00c797b3          	sll	a5,a5,a2
   11018:	00a7e7b3          	or	a5,a5,a0
   1101c:	ff068613          	addi	a2,a3,-16
   11020:	00b73823          	sd	a1,16(a4)
   11024:	00c73c23          	sd	a2,24(a4)
   11028:	00f83423          	sd	a5,8(a6)
   1102c:	00e6b023          	sd	a4,0(a3)
   11030:	00e5bc23          	sd	a4,24(a1)
   11034:	00040513          	addi	a0,s0,0
   11038:	01013403          	ld	s0,16(sp)
   1103c:	01813083          	ld	ra,24(sp)
   11040:	02010113          	addi	sp,sp,32
   11044:	2f90006f          	jal	zero,11b3c <__malloc_unlock>
   11048:	02089e63          	bne	a7,zero,11084 <_free_r+0x134>
   1104c:	000135b7          	lui	a1,0x13
   11050:	00d787b3          	add	a5,a5,a3
   11054:	19858593          	addi	a1,a1,408 # 13198 <__malloc_av_+0x10>
   11058:	01063683          	ld	a3,16(a2)
   1105c:	0017e893          	ori	a7,a5,1
   11060:	00f70533          	add	a0,a4,a5
   11064:	16b68663          	beq	a3,a1,111d0 <_free_r+0x280>
   11068:	01863603          	ld	a2,24(a2)
   1106c:	00c6bc23          	sd	a2,24(a3)
   11070:	00d63823          	sd	a3,16(a2)
   11074:	01173423          	sd	a7,8(a4)
   11078:	00f53023          	sd	a5,0(a0)
   1107c:	f6dff06f          	jal	zero,10fe8 <_free_r+0x98>
   11080:	00008067          	jalr	zero,0(ra)
   11084:	00156513          	ori	a0,a0,1
   11088:	fea5bc23          	sd	a0,-8(a1)
   1108c:	00f63023          	sd	a5,0(a2)
   11090:	1ff00693          	addi	a3,zero,511
   11094:	f4f6fee3          	bgeu	a3,a5,10ff0 <_free_r+0xa0>
   11098:	0097d693          	srli	a3,a5,0x9
   1109c:	00400613          	addi	a2,zero,4
   110a0:	0ed66263          	bltu	a2,a3,11184 <_free_r+0x234>
   110a4:	0067d693          	srli	a3,a5,0x6
   110a8:	00169593          	slli	a1,a3,0x1
   110ac:	0725859b          	addiw	a1,a1,114
   110b0:	00359593          	slli	a1,a1,0x3
   110b4:	0386861b          	addiw	a2,a3,56
   110b8:	00b805b3          	add	a1,a6,a1
   110bc:	0005b683          	ld	a3,0(a1)
   110c0:	ff058593          	addi	a1,a1,-16
   110c4:	00d59863          	bne	a1,a3,110d4 <_free_r+0x184>
   110c8:	1240006f          	jal	zero,111ec <_free_r+0x29c>
   110cc:	0106b683          	ld	a3,16(a3)
   110d0:	00d58863          	beq	a1,a3,110e0 <_free_r+0x190>
   110d4:	0086b603          	ld	a2,8(a3)
   110d8:	ffc67613          	andi	a2,a2,-4
   110dc:	fec7e8e3          	bltu	a5,a2,110cc <_free_r+0x17c>
   110e0:	0186b583          	ld	a1,24(a3)
   110e4:	00b73c23          	sd	a1,24(a4)
   110e8:	00d73823          	sd	a3,16(a4)
   110ec:	00040513          	addi	a0,s0,0
   110f0:	01013403          	ld	s0,16(sp)
   110f4:	01813083          	ld	ra,24(sp)
   110f8:	00e5b823          	sd	a4,16(a1)
   110fc:	00e6bc23          	sd	a4,24(a3)
   11100:	02010113          	addi	sp,sp,32
   11104:	2390006f          	jal	zero,11b3c <__malloc_unlock>
   11108:	0a089263          	bne	a7,zero,111ac <_free_r+0x25c>
   1110c:	01863583          	ld	a1,24(a2)
   11110:	01063603          	ld	a2,16(a2)
   11114:	00f686b3          	add	a3,a3,a5
   11118:	0016e793          	ori	a5,a3,1
   1111c:	00b63c23          	sd	a1,24(a2)
   11120:	00c5b823          	sd	a2,16(a1)
   11124:	00f73423          	sd	a5,8(a4)
   11128:	00d70733          	add	a4,a4,a3
   1112c:	00d73023          	sd	a3,0(a4)
   11130:	f05ff06f          	jal	zero,11034 <_free_r+0xe4>
   11134:	00d786b3          	add	a3,a5,a3
   11138:	02031063          	bne	t1,zero,11158 <_free_r+0x208>
   1113c:	ff05b783          	ld	a5,-16(a1)
   11140:	40f70733          	sub	a4,a4,a5
   11144:	01073603          	ld	a2,16(a4)
   11148:	00f686b3          	add	a3,a3,a5
   1114c:	01873783          	ld	a5,24(a4)
   11150:	00f63c23          	sd	a5,24(a2)
   11154:	00c7b823          	sd	a2,16(a5)
   11158:	0016e613          	ori	a2,a3,1
   1115c:	1981b783          	ld	a5,408(gp) # 139b0 <__malloc_trim_threshold>
   11160:	00c73423          	sd	a2,8(a4)
   11164:	00e83823          	sd	a4,16(a6)
   11168:	ecf6e6e3          	bltu	a3,a5,11034 <_free_r+0xe4>
   1116c:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   11170:	00040513          	addi	a0,s0,0
   11174:	cb9ff0ef          	jal	ra,10e2c <_malloc_trim_r>
   11178:	ebdff06f          	jal	zero,11034 <_free_r+0xe4>
   1117c:	00d787b3          	add	a5,a5,a3
   11180:	ed9ff06f          	jal	zero,11058 <_free_r+0x108>
   11184:	01400613          	addi	a2,zero,20
   11188:	02d67a63          	bgeu	a2,a3,111bc <_free_r+0x26c>
   1118c:	05400613          	addi	a2,zero,84
   11190:	06d66c63          	bltu	a2,a3,11208 <_free_r+0x2b8>
   11194:	00c7d693          	srli	a3,a5,0xc
   11198:	00169593          	slli	a1,a3,0x1
   1119c:	0de5859b          	addiw	a1,a1,222
   111a0:	00359593          	slli	a1,a1,0x3
   111a4:	06e6861b          	addiw	a2,a3,110
   111a8:	f11ff06f          	jal	zero,110b8 <_free_r+0x168>
   111ac:	0017e693          	ori	a3,a5,1
   111b0:	00d73423          	sd	a3,8(a4)
   111b4:	00f63023          	sd	a5,0(a2)
   111b8:	e7dff06f          	jal	zero,11034 <_free_r+0xe4>
   111bc:	00169593          	slli	a1,a3,0x1
   111c0:	0b85859b          	addiw	a1,a1,184
   111c4:	00359593          	slli	a1,a1,0x3
   111c8:	05b6861b          	addiw	a2,a3,91
   111cc:	eedff06f          	jal	zero,110b8 <_free_r+0x168>
   111d0:	02e83423          	sd	a4,40(a6)
   111d4:	02e83023          	sd	a4,32(a6)
   111d8:	00b73c23          	sd	a1,24(a4)
   111dc:	00b73823          	sd	a1,16(a4)
   111e0:	01173423          	sd	a7,8(a4)
   111e4:	00f53023          	sd	a5,0(a0)
   111e8:	e4dff06f          	jal	zero,11034 <_free_r+0xe4>
   111ec:	00883503          	ld	a0,8(a6)
   111f0:	4026561b          	sraiw	a2,a2,0x2
   111f4:	00100793          	addi	a5,zero,1
   111f8:	00c797b3          	sll	a5,a5,a2
   111fc:	00a7e7b3          	or	a5,a5,a0
   11200:	00f83423          	sd	a5,8(a6)
   11204:	ee1ff06f          	jal	zero,110e4 <_free_r+0x194>
   11208:	15400613          	addi	a2,zero,340
   1120c:	00d66e63          	bltu	a2,a3,11228 <_free_r+0x2d8>
   11210:	00f7d693          	srli	a3,a5,0xf
   11214:	00169593          	slli	a1,a3,0x1
   11218:	0f05859b          	addiw	a1,a1,240
   1121c:	00359593          	slli	a1,a1,0x3
   11220:	0776861b          	addiw	a2,a3,119
   11224:	e95ff06f          	jal	zero,110b8 <_free_r+0x168>
   11228:	55400613          	addi	a2,zero,1364
   1122c:	00d66e63          	bltu	a2,a3,11248 <_free_r+0x2f8>
   11230:	0127d693          	srli	a3,a5,0x12
   11234:	00169593          	slli	a1,a3,0x1
   11238:	0fa5859b          	addiw	a1,a1,250
   1123c:	00359593          	slli	a1,a1,0x3
   11240:	07c6861b          	addiw	a2,a3,124
   11244:	e75ff06f          	jal	zero,110b8 <_free_r+0x168>
   11248:	7f000593          	addi	a1,zero,2032
   1124c:	07e00613          	addi	a2,zero,126
   11250:	e69ff06f          	jal	zero,110b8 <_free_r+0x168>

0000000000011254 <_malloc_r>:
   11254:	fa010113          	addi	sp,sp,-96
   11258:	04813823          	sd	s0,80(sp)
   1125c:	04113c23          	sd	ra,88(sp)
   11260:	01758713          	addi	a4,a1,23
   11264:	02e00793          	addi	a5,zero,46
   11268:	00050413          	addi	s0,a0,0
   1126c:	08e7ee63          	bltu	a5,a4,11308 <_malloc_r+0xb4>
   11270:	02000713          	addi	a4,zero,32
   11274:	06b76c63          	bltu	a4,a1,112ec <_malloc_r+0x98>
   11278:	0c1000ef          	jal	ra,11b38 <__malloc_lock>
   1127c:	02000713          	addi	a4,zero,32
   11280:	05000693          	addi	a3,zero,80
   11284:	00400893          	addi	a7,zero,4
   11288:	00013837          	lui	a6,0x13
   1128c:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   11290:	00d806b3          	add	a3,a6,a3
   11294:	0086b783          	ld	a5,8(a3)
   11298:	ff068613          	addi	a2,a3,-16
   1129c:	48c78063          	beq	a5,a2,1171c <_malloc_r+0x4c8>
   112a0:	0087b703          	ld	a4,8(a5)
   112a4:	0187b603          	ld	a2,24(a5)
   112a8:	0107b583          	ld	a1,16(a5)
   112ac:	ffc77713          	andi	a4,a4,-4
   112b0:	00e78733          	add	a4,a5,a4
   112b4:	00873683          	ld	a3,8(a4)
   112b8:	00c5bc23          	sd	a2,24(a1)
   112bc:	00b63823          	sd	a1,16(a2)
   112c0:	0016e693          	ori	a3,a3,1
   112c4:	00040513          	addi	a0,s0,0
   112c8:	00d73423          	sd	a3,8(a4)
   112cc:	00f13423          	sd	a5,8(sp)
   112d0:	06d000ef          	jal	ra,11b3c <__malloc_unlock>
   112d4:	00813783          	ld	a5,8(sp)
   112d8:	05813083          	ld	ra,88(sp)
   112dc:	05013403          	ld	s0,80(sp)
   112e0:	01078513          	addi	a0,a5,16
   112e4:	06010113          	addi	sp,sp,96
   112e8:	00008067          	jalr	zero,0(ra)
   112ec:	00c00793          	addi	a5,zero,12
   112f0:	00f42023          	sw	a5,0(s0)
   112f4:	00000513          	addi	a0,zero,0
   112f8:	05813083          	ld	ra,88(sp)
   112fc:	05013403          	ld	s0,80(sp)
   11300:	06010113          	addi	sp,sp,96
   11304:	00008067          	jalr	zero,0(ra)
   11308:	00100793          	addi	a5,zero,1
   1130c:	ff077713          	andi	a4,a4,-16
   11310:	01f79793          	slli	a5,a5,0x1f
   11314:	fcf77ce3          	bgeu	a4,a5,112ec <_malloc_r+0x98>
   11318:	fcb76ae3          	bltu	a4,a1,112ec <_malloc_r+0x98>
   1131c:	00e13423          	sd	a4,8(sp)
   11320:	019000ef          	jal	ra,11b38 <__malloc_lock>
   11324:	00813703          	ld	a4,8(sp)
   11328:	1f700793          	addi	a5,zero,503
   1132c:	4ee7fa63          	bgeu	a5,a4,11820 <_malloc_r+0x5cc>
   11330:	00975793          	srli	a5,a4,0x9
   11334:	18078a63          	beq	a5,zero,114c8 <_malloc_r+0x274>
   11338:	00400693          	addi	a3,zero,4
   1133c:	44f6ea63          	bltu	a3,a5,11790 <_malloc_r+0x53c>
   11340:	00675793          	srli	a5,a4,0x6
   11344:	0397889b          	addiw	a7,a5,57
   11348:	0018951b          	slliw	a0,a7,0x1
   1134c:	03878e1b          	addiw	t3,a5,56
   11350:	00351513          	slli	a0,a0,0x3
   11354:	00013837          	lui	a6,0x13
   11358:	18880813          	addi	a6,a6,392 # 13188 <__malloc_av_>
   1135c:	00a80533          	add	a0,a6,a0
   11360:	00853783          	ld	a5,8(a0)
   11364:	ff050513          	addi	a0,a0,-16
   11368:	02f50863          	beq	a0,a5,11398 <_malloc_r+0x144>
   1136c:	01f00313          	addi	t1,zero,31
   11370:	0140006f          	jal	zero,11384 <_malloc_r+0x130>
   11374:	0187b583          	ld	a1,24(a5)
   11378:	36065263          	bge	a2,zero,116dc <_malloc_r+0x488>
   1137c:	00b50e63          	beq	a0,a1,11398 <_malloc_r+0x144>
   11380:	00058793          	addi	a5,a1,0
   11384:	0087b683          	ld	a3,8(a5)
   11388:	ffc6f693          	andi	a3,a3,-4
   1138c:	40e68633          	sub	a2,a3,a4
   11390:	fec352e3          	bge	t1,a2,11374 <_malloc_r+0x120>
   11394:	000e0893          	addi	a7,t3,0
   11398:	02083783          	ld	a5,32(a6)
   1139c:	00013e37          	lui	t3,0x13
   113a0:	198e0e13          	addi	t3,t3,408 # 13198 <__malloc_av_+0x10>
   113a4:	2fc78a63          	beq	a5,t3,11698 <_malloc_r+0x444>
   113a8:	0087b303          	ld	t1,8(a5)
   113ac:	01f00613          	addi	a2,zero,31
   113b0:	ffc37313          	andi	t1,t1,-4
   113b4:	40e306b3          	sub	a3,t1,a4
   113b8:	4ad64463          	blt	a2,a3,11860 <_malloc_r+0x60c>
   113bc:	03c83423          	sd	t3,40(a6)
   113c0:	03c83023          	sd	t3,32(a6)
   113c4:	4606da63          	bge	a3,zero,11838 <_malloc_r+0x5e4>
   113c8:	1ff00693          	addi	a3,zero,511
   113cc:	00883583          	ld	a1,8(a6)
   113d0:	3466ee63          	bltu	a3,t1,1172c <_malloc_r+0x4d8>
   113d4:	00335313          	srli	t1,t1,0x3
   113d8:	00131693          	slli	a3,t1,0x1
   113dc:	0026869b          	addiw	a3,a3,2
   113e0:	00369693          	slli	a3,a3,0x3
   113e4:	00d806b3          	add	a3,a6,a3
   113e8:	0006b503          	ld	a0,0(a3)
   113ec:	4023531b          	sraiw	t1,t1,0x2
   113f0:	00100613          	addi	a2,zero,1
   113f4:	00661633          	sll	a2,a2,t1
   113f8:	00c5e5b3          	or	a1,a1,a2
   113fc:	ff068613          	addi	a2,a3,-16
   11400:	00a7b823          	sd	a0,16(a5)
   11404:	00c7bc23          	sd	a2,24(a5)
   11408:	00b83423          	sd	a1,8(a6)
   1140c:	00f6b023          	sd	a5,0(a3)
   11410:	00f53c23          	sd	a5,24(a0)
   11414:	4028d79b          	sraiw	a5,a7,0x2
   11418:	00100513          	addi	a0,zero,1
   1141c:	00f51533          	sll	a0,a0,a5
   11420:	0aa5ec63          	bltu	a1,a0,114d8 <_malloc_r+0x284>
   11424:	00b577b3          	and	a5,a0,a1
   11428:	02079463          	bne	a5,zero,11450 <_malloc_r+0x1fc>
   1142c:	00151513          	slli	a0,a0,0x1
   11430:	ffc8f893          	andi	a7,a7,-4
   11434:	00b577b3          	and	a5,a0,a1
   11438:	0048889b          	addiw	a7,a7,4
   1143c:	00079a63          	bne	a5,zero,11450 <_malloc_r+0x1fc>
   11440:	00151513          	slli	a0,a0,0x1
   11444:	00b577b3          	and	a5,a0,a1
   11448:	0048889b          	addiw	a7,a7,4
   1144c:	fe078ae3          	beq	a5,zero,11440 <_malloc_r+0x1ec>
   11450:	01f00e93          	addi	t4,zero,31
   11454:	00189f13          	slli	t5,a7,0x1
   11458:	002f0f1b          	addiw	t5,t5,2
   1145c:	003f1f13          	slli	t5,t5,0x3
   11460:	ff0f0f13          	addi	t5,t5,-16
   11464:	01e80f33          	add	t5,a6,t5
   11468:	000f0313          	addi	t1,t5,0
   1146c:	01833683          	ld	a3,24(t1)
   11470:	00088f93          	addi	t6,a7,0
   11474:	34d30263          	beq	t1,a3,117b8 <_malloc_r+0x564>
   11478:	0086b603          	ld	a2,8(a3)
   1147c:	00068793          	addi	a5,a3,0
   11480:	0186b683          	ld	a3,24(a3)
   11484:	ffc67613          	andi	a2,a2,-4
   11488:	40e605b3          	sub	a1,a2,a4
   1148c:	34bec263          	blt	t4,a1,117d0 <_malloc_r+0x57c>
   11490:	fe05c2e3          	blt	a1,zero,11474 <_malloc_r+0x220>
   11494:	00c78633          	add	a2,a5,a2
   11498:	00863703          	ld	a4,8(a2)
   1149c:	0107b583          	ld	a1,16(a5)
   114a0:	00040513          	addi	a0,s0,0
   114a4:	00176713          	ori	a4,a4,1
   114a8:	00e63423          	sd	a4,8(a2)
   114ac:	00d5bc23          	sd	a3,24(a1)
   114b0:	00b6b823          	sd	a1,16(a3)
   114b4:	00f13423          	sd	a5,8(sp)
   114b8:	684000ef          	jal	ra,11b3c <__malloc_unlock>
   114bc:	00813783          	ld	a5,8(sp)
   114c0:	01078513          	addi	a0,a5,16
   114c4:	e35ff06f          	jal	zero,112f8 <_malloc_r+0xa4>
   114c8:	40000513          	addi	a0,zero,1024
   114cc:	04000893          	addi	a7,zero,64
   114d0:	03f00e13          	addi	t3,zero,63
   114d4:	e81ff06f          	jal	zero,11354 <_malloc_r+0x100>
   114d8:	01083783          	ld	a5,16(a6)
   114dc:	0087b683          	ld	a3,8(a5)
   114e0:	ffc6f893          	andi	a7,a3,-4
   114e4:	40e88633          	sub	a2,a7,a4
   114e8:	00e8e663          	bltu	a7,a4,114f4 <_malloc_r+0x2a0>
   114ec:	02062693          	slti	a3,a2,32
   114f0:	1a068863          	beq	a3,zero,116a0 <_malloc_r+0x44c>
   114f4:	1c81b583          	ld	a1,456(gp) # 139e0 <__malloc_top_pad>
   114f8:	1901b603          	ld	a2,400(gp) # 139a8 <__malloc_sbrk_base>
   114fc:	fff00693          	addi	a3,zero,-1
   11500:	00b705b3          	add	a1,a4,a1
   11504:	44d60663          	beq	a2,a3,11950 <_malloc_r+0x6fc>
   11508:	000016b7          	lui	a3,0x1
   1150c:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   11510:	00d585b3          	add	a1,a1,a3
   11514:	fffff6b7          	lui	a3,0xfffff
   11518:	00d5f5b3          	and	a1,a1,a3
   1151c:	00040513          	addi	a0,s0,0
   11520:	03013423          	sd	a6,40(sp)
   11524:	02f13023          	sd	a5,32(sp)
   11528:	00e13c23          	sd	a4,24(sp)
   1152c:	01113823          	sd	a7,16(sp)
   11530:	00b13423          	sd	a1,8(sp)
   11534:	271000ef          	jal	ra,11fa4 <_sbrk_r>
   11538:	fff00693          	addi	a3,zero,-1
   1153c:	00813583          	ld	a1,8(sp)
   11540:	01013883          	ld	a7,16(sp)
   11544:	01813703          	ld	a4,24(sp)
   11548:	02013783          	ld	a5,32(sp)
   1154c:	02813803          	ld	a6,40(sp)
   11550:	00050313          	addi	t1,a0,0
   11554:	36d50663          	beq	a0,a3,118c0 <_malloc_r+0x66c>
   11558:	011786b3          	add	a3,a5,a7
   1155c:	36d56063          	bltu	a0,a3,118bc <_malloc_r+0x668>
   11560:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11564:	000e2603          	lw	a2,0(t3)
   11568:	00b6063b          	addw	a2,a2,a1
   1156c:	00ce2023          	sw	a2,0(t3)
   11570:	00060513          	addi	a0,a2,0
   11574:	4a668c63          	beq	a3,t1,11a2c <_malloc_r+0x7d8>
   11578:	1901bf03          	ld	t5,400(gp) # 139a8 <__malloc_sbrk_base>
   1157c:	fff00613          	addi	a2,zero,-1
   11580:	4ccf0463          	beq	t5,a2,11a48 <_malloc_r+0x7f4>
   11584:	40d306b3          	sub	a3,t1,a3
   11588:	00a686bb          	addw	a3,a3,a0
   1158c:	00de2023          	sw	a3,0(t3)
   11590:	00f37e93          	andi	t4,t1,15
   11594:	3c0e8e63          	beq	t4,zero,11970 <_malloc_r+0x71c>
   11598:	ff037313          	andi	t1,t1,-16
   1159c:	000016b7          	lui	a3,0x1
   115a0:	01030313          	addi	t1,t1,16
   115a4:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   115a8:	00b30633          	add	a2,t1,a1
   115ac:	41d685b3          	sub	a1,a3,t4
   115b0:	40c585b3          	sub	a1,a1,a2
   115b4:	03459593          	slli	a1,a1,0x34
   115b8:	0345d593          	srli	a1,a1,0x34
   115bc:	00040513          	addi	a0,s0,0
   115c0:	05c13023          	sd	t3,64(sp)
   115c4:	03013c23          	sd	a6,56(sp)
   115c8:	02f13823          	sd	a5,48(sp)
   115cc:	02e13423          	sd	a4,40(sp)
   115d0:	03113023          	sd	a7,32(sp)
   115d4:	00613c23          	sd	t1,24(sp)
   115d8:	01d13823          	sd	t4,16(sp)
   115dc:	00c13423          	sd	a2,8(sp)
   115e0:	04b13423          	sd	a1,72(sp)
   115e4:	1c1000ef          	jal	ra,11fa4 <_sbrk_r>
   115e8:	00050693          	addi	a3,a0,0
   115ec:	fff00513          	addi	a0,zero,-1
   115f0:	00813603          	ld	a2,8(sp)
   115f4:	01013e83          	ld	t4,16(sp)
   115f8:	01813303          	ld	t1,24(sp)
   115fc:	02013883          	ld	a7,32(sp)
   11600:	02813703          	ld	a4,40(sp)
   11604:	03013783          	ld	a5,48(sp)
   11608:	03813803          	ld	a6,56(sp)
   1160c:	04013e03          	ld	t3,64(sp)
   11610:	48a68663          	beq	a3,a0,11a9c <_malloc_r+0x848>
   11614:	04813583          	ld	a1,72(sp)
   11618:	0005851b          	addiw	a0,a1,0
   1161c:	000e2603          	lw	a2,0(t3)
   11620:	406686b3          	sub	a3,a3,t1
   11624:	00b686b3          	add	a3,a3,a1
   11628:	0016e693          	ori	a3,a3,1
   1162c:	00683823          	sd	t1,16(a6)
   11630:	00a6063b          	addw	a2,a2,a0
   11634:	00d33423          	sd	a3,8(t1)
   11638:	00ce2023          	sw	a2,0(t3)
   1163c:	03078e63          	beq	a5,a6,11678 <_malloc_r+0x424>
   11640:	01f00513          	addi	a0,zero,31
   11644:	41157663          	bgeu	a0,a7,11a50 <_malloc_r+0x7fc>
   11648:	0087b583          	ld	a1,8(a5)
   1164c:	fe888693          	addi	a3,a7,-24
   11650:	ff06f693          	andi	a3,a3,-16
   11654:	0015f593          	andi	a1,a1,1
   11658:	00d5e5b3          	or	a1,a1,a3
   1165c:	00b7b423          	sd	a1,8(a5)
   11660:	00900893          	addi	a7,zero,9
   11664:	00d785b3          	add	a1,a5,a3
   11668:	0115b423          	sd	a7,8(a1)
   1166c:	0115b823          	sd	a7,16(a1)
   11670:	44d56863          	bltu	a0,a3,11ac0 <_malloc_r+0x86c>
   11674:	00833683          	ld	a3,8(t1)
   11678:	1c01b583          	ld	a1,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   1167c:	00c5f463          	bgeu	a1,a2,11684 <_malloc_r+0x430>
   11680:	1cc1b023          	sd	a2,448(gp) # 139d8 <__malloc_max_sbrked_mem>
   11684:	1b81b583          	ld	a1,440(gp) # 139d0 <__malloc_max_total_mem>
   11688:	00c5f463          	bgeu	a1,a2,11690 <_malloc_r+0x43c>
   1168c:	1ac1bc23          	sd	a2,440(gp) # 139d0 <__malloc_max_total_mem>
   11690:	00030793          	addi	a5,t1,0
   11694:	2340006f          	jal	zero,118c8 <_malloc_r+0x674>
   11698:	00883583          	ld	a1,8(a6)
   1169c:	d79ff06f          	jal	zero,11414 <_malloc_r+0x1c0>
   116a0:	00176693          	ori	a3,a4,1
   116a4:	00d7b423          	sd	a3,8(a5)
   116a8:	00e78733          	add	a4,a5,a4
   116ac:	00166613          	ori	a2,a2,1
   116b0:	00e83823          	sd	a4,16(a6)
   116b4:	00040513          	addi	a0,s0,0
   116b8:	00c73423          	sd	a2,8(a4)
   116bc:	00f13423          	sd	a5,8(sp)
   116c0:	47c000ef          	jal	ra,11b3c <__malloc_unlock>
   116c4:	00813783          	ld	a5,8(sp)
   116c8:	05813083          	ld	ra,88(sp)
   116cc:	05013403          	ld	s0,80(sp)
   116d0:	01078513          	addi	a0,a5,16
   116d4:	06010113          	addi	sp,sp,96
   116d8:	00008067          	jalr	zero,0(ra)
   116dc:	0107b603          	ld	a2,16(a5)
   116e0:	00d786b3          	add	a3,a5,a3
   116e4:	0086b703          	ld	a4,8(a3)
   116e8:	00b63c23          	sd	a1,24(a2)
   116ec:	00c5b823          	sd	a2,16(a1)
   116f0:	00176713          	ori	a4,a4,1
   116f4:	00040513          	addi	a0,s0,0
   116f8:	00e6b423          	sd	a4,8(a3)
   116fc:	00f13423          	sd	a5,8(sp)
   11700:	43c000ef          	jal	ra,11b3c <__malloc_unlock>
   11704:	00813783          	ld	a5,8(sp)
   11708:	05813083          	ld	ra,88(sp)
   1170c:	05013403          	ld	s0,80(sp)
   11710:	01078513          	addi	a0,a5,16
   11714:	06010113          	addi	sp,sp,96
   11718:	00008067          	jalr	zero,0(ra)
   1171c:	0186b783          	ld	a5,24(a3)
   11720:	0028889b          	addiw	a7,a7,2
   11724:	c6f68ae3          	beq	a3,a5,11398 <_malloc_r+0x144>
   11728:	b79ff06f          	jal	zero,112a0 <_malloc_r+0x4c>
   1172c:	00935693          	srli	a3,t1,0x9
   11730:	00400613          	addi	a2,zero,4
   11734:	16d67863          	bgeu	a2,a3,118a4 <_malloc_r+0x650>
   11738:	01400613          	addi	a2,zero,20
   1173c:	28d66e63          	bltu	a2,a3,119d8 <_malloc_r+0x784>
   11740:	00169513          	slli	a0,a3,0x1
   11744:	0b85051b          	addiw	a0,a0,184
   11748:	00351513          	slli	a0,a0,0x3
   1174c:	05b6861b          	addiw	a2,a3,91
   11750:	00a80533          	add	a0,a6,a0
   11754:	00053683          	ld	a3,0(a0)
   11758:	ff050513          	addi	a0,a0,-16
   1175c:	00d51863          	bne	a0,a3,1176c <_malloc_r+0x518>
   11760:	1f80006f          	jal	zero,11958 <_malloc_r+0x704>
   11764:	0106b683          	ld	a3,16(a3)
   11768:	00d50863          	beq	a0,a3,11778 <_malloc_r+0x524>
   1176c:	0086b603          	ld	a2,8(a3)
   11770:	ffc67613          	andi	a2,a2,-4
   11774:	fec368e3          	bltu	t1,a2,11764 <_malloc_r+0x510>
   11778:	0186b503          	ld	a0,24(a3)
   1177c:	00a7bc23          	sd	a0,24(a5)
   11780:	00d7b823          	sd	a3,16(a5)
   11784:	00f53823          	sd	a5,16(a0)
   11788:	00f6bc23          	sd	a5,24(a3)
   1178c:	c89ff06f          	jal	zero,11414 <_malloc_r+0x1c0>
   11790:	01400693          	addi	a3,zero,20
   11794:	14f6fa63          	bgeu	a3,a5,118e8 <_malloc_r+0x694>
   11798:	05400693          	addi	a3,zero,84
   1179c:	24f6ee63          	bltu	a3,a5,119f8 <_malloc_r+0x7a4>
   117a0:	00c75793          	srli	a5,a4,0xc
   117a4:	06f7889b          	addiw	a7,a5,111
   117a8:	0018951b          	slliw	a0,a7,0x1
   117ac:	06e78e1b          	addiw	t3,a5,110
   117b0:	00351513          	slli	a0,a0,0x3
   117b4:	ba1ff06f          	jal	zero,11354 <_malloc_r+0x100>
   117b8:	001f8f9b          	addiw	t6,t6,1
   117bc:	003ff793          	andi	a5,t6,3
   117c0:	01030313          	addi	t1,t1,16
   117c4:	14078263          	beq	a5,zero,11908 <_malloc_r+0x6b4>
   117c8:	01833683          	ld	a3,24(t1)
   117cc:	ca9ff06f          	jal	zero,11474 <_malloc_r+0x220>
   117d0:	0107b503          	ld	a0,16(a5)
   117d4:	00176893          	ori	a7,a4,1
   117d8:	0117b423          	sd	a7,8(a5)
   117dc:	00d53c23          	sd	a3,24(a0)
   117e0:	00a6b823          	sd	a0,16(a3)
   117e4:	00e78733          	add	a4,a5,a4
   117e8:	02e83423          	sd	a4,40(a6)
   117ec:	02e83023          	sd	a4,32(a6)
   117f0:	0015e693          	ori	a3,a1,1
   117f4:	00c78633          	add	a2,a5,a2
   117f8:	01c73c23          	sd	t3,24(a4)
   117fc:	01c73823          	sd	t3,16(a4)
   11800:	00d73423          	sd	a3,8(a4)
   11804:	00040513          	addi	a0,s0,0
   11808:	00b63023          	sd	a1,0(a2)
   1180c:	00f13423          	sd	a5,8(sp)
   11810:	32c000ef          	jal	ra,11b3c <__malloc_unlock>
   11814:	00813783          	ld	a5,8(sp)
   11818:	01078513          	addi	a0,a5,16
   1181c:	addff06f          	jal	zero,112f8 <_malloc_r+0xa4>
   11820:	00375893          	srli	a7,a4,0x3
   11824:	00189693          	slli	a3,a7,0x1
   11828:	0026869b          	addiw	a3,a3,2
   1182c:	00369693          	slli	a3,a3,0x3
   11830:	0008889b          	addiw	a7,a7,0
   11834:	a55ff06f          	jal	zero,11288 <_malloc_r+0x34>
   11838:	00678333          	add	t1,a5,t1
   1183c:	00833703          	ld	a4,8(t1)
   11840:	00040513          	addi	a0,s0,0
   11844:	00f13423          	sd	a5,8(sp)
   11848:	00176713          	ori	a4,a4,1
   1184c:	00e33423          	sd	a4,8(t1)
   11850:	2ec000ef          	jal	ra,11b3c <__malloc_unlock>
   11854:	00813783          	ld	a5,8(sp)
   11858:	01078513          	addi	a0,a5,16
   1185c:	a9dff06f          	jal	zero,112f8 <_malloc_r+0xa4>
   11860:	00176613          	ori	a2,a4,1
   11864:	00c7b423          	sd	a2,8(a5)
   11868:	00e78733          	add	a4,a5,a4
   1186c:	02e83423          	sd	a4,40(a6)
   11870:	02e83023          	sd	a4,32(a6)
   11874:	0016e613          	ori	a2,a3,1
   11878:	00678333          	add	t1,a5,t1
   1187c:	01c73c23          	sd	t3,24(a4)
   11880:	01c73823          	sd	t3,16(a4)
   11884:	00c73423          	sd	a2,8(a4)
   11888:	00040513          	addi	a0,s0,0
   1188c:	00d33023          	sd	a3,0(t1)
   11890:	00f13423          	sd	a5,8(sp)
   11894:	2a8000ef          	jal	ra,11b3c <__malloc_unlock>
   11898:	00813783          	ld	a5,8(sp)
   1189c:	01078513          	addi	a0,a5,16
   118a0:	a59ff06f          	jal	zero,112f8 <_malloc_r+0xa4>
   118a4:	00635693          	srli	a3,t1,0x6
   118a8:	00169513          	slli	a0,a3,0x1
   118ac:	0725051b          	addiw	a0,a0,114
   118b0:	00351513          	slli	a0,a0,0x3
   118b4:	0386861b          	addiw	a2,a3,56
   118b8:	e99ff06f          	jal	zero,11750 <_malloc_r+0x4fc>
   118bc:	15078e63          	beq	a5,a6,11a18 <_malloc_r+0x7c4>
   118c0:	01083783          	ld	a5,16(a6)
   118c4:	0087b683          	ld	a3,8(a5)
   118c8:	ffc6f693          	andi	a3,a3,-4
   118cc:	40e68633          	sub	a2,a3,a4
   118d0:	00e6e663          	bltu	a3,a4,118dc <_malloc_r+0x688>
   118d4:	02062693          	slti	a3,a2,32
   118d8:	dc0684e3          	beq	a3,zero,116a0 <_malloc_r+0x44c>
   118dc:	00040513          	addi	a0,s0,0
   118e0:	25c000ef          	jal	ra,11b3c <__malloc_unlock>
   118e4:	a11ff06f          	jal	zero,112f4 <_malloc_r+0xa0>
   118e8:	05c7889b          	addiw	a7,a5,92
   118ec:	0018951b          	slliw	a0,a7,0x1
   118f0:	05b78e1b          	addiw	t3,a5,91
   118f4:	00351513          	slli	a0,a0,0x3
   118f8:	a5dff06f          	jal	zero,11354 <_malloc_r+0x100>
   118fc:	010f3783          	ld	a5,16(t5)
   11900:	fff8889b          	addiw	a7,a7,-1
   11904:	23e79663          	bne	a5,t5,11b30 <_malloc_r+0x8dc>
   11908:	0038f793          	andi	a5,a7,3
   1190c:	ff0f0f13          	addi	t5,t5,-16
   11910:	fe0796e3          	bne	a5,zero,118fc <_malloc_r+0x6a8>
   11914:	00883683          	ld	a3,8(a6)
   11918:	fff54793          	xori	a5,a0,-1
   1191c:	00d7f7b3          	and	a5,a5,a3
   11920:	00f83423          	sd	a5,8(a6)
   11924:	00151513          	slli	a0,a0,0x1
   11928:	fff50693          	addi	a3,a0,-1
   1192c:	baf6f6e3          	bgeu	a3,a5,114d8 <_malloc_r+0x284>
   11930:	00f576b3          	and	a3,a0,a5
   11934:	00069a63          	bne	a3,zero,11948 <_malloc_r+0x6f4>
   11938:	00151513          	slli	a0,a0,0x1
   1193c:	00f576b3          	and	a3,a0,a5
   11940:	004f8f9b          	addiw	t6,t6,4
   11944:	fe068ae3          	beq	a3,zero,11938 <_malloc_r+0x6e4>
   11948:	000f8893          	addi	a7,t6,0
   1194c:	b09ff06f          	jal	zero,11454 <_malloc_r+0x200>
   11950:	02058593          	addi	a1,a1,32
   11954:	bc9ff06f          	jal	zero,1151c <_malloc_r+0x2c8>
   11958:	4026561b          	sraiw	a2,a2,0x2
   1195c:	00100313          	addi	t1,zero,1
   11960:	00c31633          	sll	a2,t1,a2
   11964:	00c5e5b3          	or	a1,a1,a2
   11968:	00b83423          	sd	a1,8(a6)
   1196c:	e11ff06f          	jal	zero,1177c <_malloc_r+0x528>
   11970:	00b30633          	add	a2,t1,a1
   11974:	40c005b3          	sub	a1,zero,a2
   11978:	03459593          	slli	a1,a1,0x34
   1197c:	0345d593          	srli	a1,a1,0x34
   11980:	00040513          	addi	a0,s0,0
   11984:	03c13c23          	sd	t3,56(sp)
   11988:	03013823          	sd	a6,48(sp)
   1198c:	02f13423          	sd	a5,40(sp)
   11990:	02e13023          	sd	a4,32(sp)
   11994:	01113c23          	sd	a7,24(sp)
   11998:	00613823          	sd	t1,16(sp)
   1199c:	00c13423          	sd	a2,8(sp)
   119a0:	04b13023          	sd	a1,64(sp)
   119a4:	600000ef          	jal	ra,11fa4 <_sbrk_r>
   119a8:	00050693          	addi	a3,a0,0
   119ac:	fff00513          	addi	a0,zero,-1
   119b0:	01013303          	ld	t1,16(sp)
   119b4:	01813883          	ld	a7,24(sp)
   119b8:	02013703          	ld	a4,32(sp)
   119bc:	02813783          	ld	a5,40(sp)
   119c0:	03013803          	ld	a6,48(sp)
   119c4:	03813e03          	ld	t3,56(sp)
   119c8:	0ea68463          	beq	a3,a0,11ab0 <_malloc_r+0x85c>
   119cc:	04013583          	ld	a1,64(sp)
   119d0:	0005851b          	addiw	a0,a1,0
   119d4:	c49ff06f          	jal	zero,1161c <_malloc_r+0x3c8>
   119d8:	05400613          	addi	a2,zero,84
   119dc:	08d66063          	bltu	a2,a3,11a5c <_malloc_r+0x808>
   119e0:	00c35693          	srli	a3,t1,0xc
   119e4:	00169513          	slli	a0,a3,0x1
   119e8:	0de5051b          	addiw	a0,a0,222
   119ec:	00351513          	slli	a0,a0,0x3
   119f0:	06e6861b          	addiw	a2,a3,110
   119f4:	d5dff06f          	jal	zero,11750 <_malloc_r+0x4fc>
   119f8:	15400693          	addi	a3,zero,340
   119fc:	08f6e063          	bltu	a3,a5,11a7c <_malloc_r+0x828>
   11a00:	00f75793          	srli	a5,a4,0xf
   11a04:	0787889b          	addiw	a7,a5,120
   11a08:	0018951b          	slliw	a0,a7,0x1
   11a0c:	07778e1b          	addiw	t3,a5,119
   11a10:	00351513          	slli	a0,a0,0x3
   11a14:	941ff06f          	jal	zero,11354 <_malloc_r+0x100>
   11a18:	42018e13          	addi	t3,gp,1056 # 13c38 <__malloc_current_mallinfo>
   11a1c:	000e2503          	lw	a0,0(t3)
   11a20:	00b5053b          	addw	a0,a0,a1
   11a24:	00ae2023          	sw	a0,0(t3)
   11a28:	b51ff06f          	jal	zero,11578 <_malloc_r+0x324>
   11a2c:	03431f13          	slli	t5,t1,0x34
   11a30:	b40f14e3          	bne	t5,zero,11578 <_malloc_r+0x324>
   11a34:	01083303          	ld	t1,16(a6)
   11a38:	00b885b3          	add	a1,a7,a1
   11a3c:	0015e693          	ori	a3,a1,1
   11a40:	00d33423          	sd	a3,8(t1)
   11a44:	c35ff06f          	jal	zero,11678 <_malloc_r+0x424>
   11a48:	1861b823          	sd	t1,400(gp) # 139a8 <__malloc_sbrk_base>
   11a4c:	b45ff06f          	jal	zero,11590 <_malloc_r+0x33c>
   11a50:	00100793          	addi	a5,zero,1
   11a54:	00f33423          	sd	a5,8(t1)
   11a58:	e85ff06f          	jal	zero,118dc <_malloc_r+0x688>
   11a5c:	15400613          	addi	a2,zero,340
   11a60:	08d66a63          	bltu	a2,a3,11af4 <_malloc_r+0x8a0>
   11a64:	00f35693          	srli	a3,t1,0xf
   11a68:	00169513          	slli	a0,a3,0x1
   11a6c:	0f05051b          	addiw	a0,a0,240
   11a70:	00351513          	slli	a0,a0,0x3
   11a74:	0776861b          	addiw	a2,a3,119
   11a78:	cd9ff06f          	jal	zero,11750 <_malloc_r+0x4fc>
   11a7c:	55400693          	addi	a3,zero,1364
   11a80:	08f6ea63          	bltu	a3,a5,11b14 <_malloc_r+0x8c0>
   11a84:	01275793          	srli	a5,a4,0x12
   11a88:	07d7889b          	addiw	a7,a5,125
   11a8c:	0018951b          	slliw	a0,a7,0x1
   11a90:	07c78e1b          	addiw	t3,a5,124
   11a94:	00351513          	slli	a0,a0,0x3
   11a98:	8bdff06f          	jal	zero,11354 <_malloc_r+0x100>
   11a9c:	ff0e8e93          	addi	t4,t4,-16
   11aa0:	01d606b3          	add	a3,a2,t4
   11aa4:	00000513          	addi	a0,zero,0
   11aa8:	00000593          	addi	a1,zero,0
   11aac:	b71ff06f          	jal	zero,1161c <_malloc_r+0x3c8>
   11ab0:	00813683          	ld	a3,8(sp)
   11ab4:	00000593          	addi	a1,zero,0
   11ab8:	00000513          	addi	a0,zero,0
   11abc:	b61ff06f          	jal	zero,1161c <_malloc_r+0x3c8>
   11ac0:	01078593          	addi	a1,a5,16
   11ac4:	00040513          	addi	a0,s0,0
   11ac8:	01c13c23          	sd	t3,24(sp)
   11acc:	01013823          	sd	a6,16(sp)
   11ad0:	00e13423          	sd	a4,8(sp)
   11ad4:	c7cff0ef          	jal	ra,10f50 <_free_r>
   11ad8:	01013803          	ld	a6,16(sp)
   11adc:	01813e03          	ld	t3,24(sp)
   11ae0:	00813703          	ld	a4,8(sp)
   11ae4:	01083303          	ld	t1,16(a6)
   11ae8:	000e2603          	lw	a2,0(t3)
   11aec:	00833683          	ld	a3,8(t1)
   11af0:	b89ff06f          	jal	zero,11678 <_malloc_r+0x424>
   11af4:	55400613          	addi	a2,zero,1364
   11af8:	02d66663          	bltu	a2,a3,11b24 <_malloc_r+0x8d0>
   11afc:	01235693          	srli	a3,t1,0x12
   11b00:	00169513          	slli	a0,a3,0x1
   11b04:	0fa5051b          	addiw	a0,a0,250
   11b08:	00351513          	slli	a0,a0,0x3
   11b0c:	07c6861b          	addiw	a2,a3,124
   11b10:	c41ff06f          	jal	zero,11750 <_malloc_r+0x4fc>
   11b14:	7f000513          	addi	a0,zero,2032
   11b18:	07f00893          	addi	a7,zero,127
   11b1c:	07e00e13          	addi	t3,zero,126
   11b20:	835ff06f          	jal	zero,11354 <_malloc_r+0x100>
   11b24:	7f000513          	addi	a0,zero,2032
   11b28:	07e00613          	addi	a2,zero,126
   11b2c:	c25ff06f          	jal	zero,11750 <_malloc_r+0x4fc>
   11b30:	00883783          	ld	a5,8(a6)
   11b34:	df1ff06f          	jal	zero,11924 <_malloc_r+0x6d0>

0000000000011b38 <__malloc_lock>:
   11b38:	00008067          	jalr	zero,0(ra)

0000000000011b3c <__malloc_unlock>:
   11b3c:	00008067          	jalr	zero,0(ra)

0000000000011b40 <_fclose_r>:
   11b40:	fe010113          	addi	sp,sp,-32
   11b44:	00113c23          	sd	ra,24(sp)
   11b48:	01213023          	sd	s2,0(sp)
   11b4c:	02058863          	beq	a1,zero,11b7c <_fclose_r+0x3c>
   11b50:	00813823          	sd	s0,16(sp)
   11b54:	00913423          	sd	s1,8(sp)
   11b58:	00058413          	addi	s0,a1,0
   11b5c:	00050493          	addi	s1,a0,0
   11b60:	00050663          	beq	a0,zero,11b6c <_fclose_r+0x2c>
   11b64:	04853783          	ld	a5,72(a0)
   11b68:	0c078c63          	beq	a5,zero,11c40 <_fclose_r+0x100>
   11b6c:	01041783          	lh	a5,16(s0)
   11b70:	02079263          	bne	a5,zero,11b94 <_fclose_r+0x54>
   11b74:	01013403          	ld	s0,16(sp)
   11b78:	00813483          	ld	s1,8(sp)
   11b7c:	01813083          	ld	ra,24(sp)
   11b80:	00000913          	addi	s2,zero,0
   11b84:	00090513          	addi	a0,s2,0
   11b88:	00013903          	ld	s2,0(sp)
   11b8c:	02010113          	addi	sp,sp,32
   11b90:	00008067          	jalr	zero,0(ra)
   11b94:	00040593          	addi	a1,s0,0
   11b98:	00048513          	addi	a0,s1,0
   11b9c:	0b8000ef          	jal	ra,11c54 <__sflush_r>
   11ba0:	05043783          	ld	a5,80(s0)
   11ba4:	00050913          	addi	s2,a0,0
   11ba8:	00078a63          	beq	a5,zero,11bbc <_fclose_r+0x7c>
   11bac:	03043583          	ld	a1,48(s0)
   11bb0:	00048513          	addi	a0,s1,0
   11bb4:	000780e7          	jalr	ra,0(a5)
   11bb8:	06054463          	blt	a0,zero,11c20 <_fclose_r+0xe0>
   11bbc:	01045783          	lhu	a5,16(s0)
   11bc0:	0807f793          	andi	a5,a5,128
   11bc4:	06079663          	bne	a5,zero,11c30 <_fclose_r+0xf0>
   11bc8:	05843583          	ld	a1,88(s0)
   11bcc:	00058c63          	beq	a1,zero,11be4 <_fclose_r+0xa4>
   11bd0:	07440793          	addi	a5,s0,116
   11bd4:	00f58663          	beq	a1,a5,11be0 <_fclose_r+0xa0>
   11bd8:	00048513          	addi	a0,s1,0
   11bdc:	b74ff0ef          	jal	ra,10f50 <_free_r>
   11be0:	04043c23          	sd	zero,88(s0)
   11be4:	07843583          	ld	a1,120(s0)
   11be8:	00058863          	beq	a1,zero,11bf8 <_fclose_r+0xb8>
   11bec:	00048513          	addi	a0,s1,0
   11bf0:	b60ff0ef          	jal	ra,10f50 <_free_r>
   11bf4:	06043c23          	sd	zero,120(s0)
   11bf8:	9b5fe0ef          	jal	ra,105ac <__sfp_lock_acquire>
   11bfc:	00041823          	sh	zero,16(s0)
   11c00:	9b1fe0ef          	jal	ra,105b0 <__sfp_lock_release>
   11c04:	01813083          	ld	ra,24(sp)
   11c08:	01013403          	ld	s0,16(sp)
   11c0c:	00813483          	ld	s1,8(sp)
   11c10:	00090513          	addi	a0,s2,0
   11c14:	00013903          	ld	s2,0(sp)
   11c18:	02010113          	addi	sp,sp,32
   11c1c:	00008067          	jalr	zero,0(ra)
   11c20:	01045783          	lhu	a5,16(s0)
   11c24:	fff00913          	addi	s2,zero,-1
   11c28:	0807f793          	andi	a5,a5,128
   11c2c:	f8078ee3          	beq	a5,zero,11bc8 <_fclose_r+0x88>
   11c30:	01843583          	ld	a1,24(s0)
   11c34:	00048513          	addi	a0,s1,0
   11c38:	b18ff0ef          	jal	ra,10f50 <_free_r>
   11c3c:	f8dff06f          	jal	zero,11bc8 <_fclose_r+0x88>
   11c40:	949fe0ef          	jal	ra,10588 <__sinit>
   11c44:	f29ff06f          	jal	zero,11b6c <_fclose_r+0x2c>

0000000000011c48 <fclose>:
   11c48:	00050593          	addi	a1,a0,0
   11c4c:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11c50:	ef1ff06f          	jal	zero,11b40 <_fclose_r>

0000000000011c54 <__sflush_r>:
   11c54:	01059703          	lh	a4,16(a1)
   11c58:	fd010113          	addi	sp,sp,-48
   11c5c:	02813023          	sd	s0,32(sp)
   11c60:	01313423          	sd	s3,8(sp)
   11c64:	02113423          	sd	ra,40(sp)
   11c68:	00877793          	andi	a5,a4,8
   11c6c:	00058413          	addi	s0,a1,0
   11c70:	00050993          	addi	s3,a0,0
   11c74:	12079263          	bne	a5,zero,11d98 <__sflush_r+0x144>
   11c78:	000017b7          	lui	a5,0x1
   11c7c:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   11c80:	0085a683          	lw	a3,8(a1)
   11c84:	00f767b3          	or	a5,a4,a5
   11c88:	00f59823          	sh	a5,16(a1)
   11c8c:	18d05c63          	bge	zero,a3,11e24 <__sflush_r+0x1d0>
   11c90:	04843803          	ld	a6,72(s0)
   11c94:	0e080663          	beq	a6,zero,11d80 <__sflush_r+0x12c>
   11c98:	00913c23          	sd	s1,24(sp)
   11c9c:	03371693          	slli	a3,a4,0x33
   11ca0:	0009a483          	lw	s1,0(s3)
   11ca4:	0009a023          	sw	zero,0(s3)
   11ca8:	1806ca63          	blt	a3,zero,11e3c <__sflush_r+0x1e8>
   11cac:	03043583          	ld	a1,48(s0)
   11cb0:	00000613          	addi	a2,zero,0
   11cb4:	00100693          	addi	a3,zero,1
   11cb8:	00098513          	addi	a0,s3,0
   11cbc:	000800e7          	jalr	ra,0(a6)
   11cc0:	fff00793          	addi	a5,zero,-1
   11cc4:	00050613          	addi	a2,a0,0
   11cc8:	1af50c63          	beq	a0,a5,11e80 <__sflush_r+0x22c>
   11ccc:	01041783          	lh	a5,16(s0)
   11cd0:	04843803          	ld	a6,72(s0)
   11cd4:	0047f793          	andi	a5,a5,4
   11cd8:	00078e63          	beq	a5,zero,11cf4 <__sflush_r+0xa0>
   11cdc:	00842703          	lw	a4,8(s0)
   11ce0:	05843783          	ld	a5,88(s0)
   11ce4:	40e60633          	sub	a2,a2,a4
   11ce8:	00078663          	beq	a5,zero,11cf4 <__sflush_r+0xa0>
   11cec:	07042783          	lw	a5,112(s0)
   11cf0:	40f60633          	sub	a2,a2,a5
   11cf4:	03043583          	ld	a1,48(s0)
   11cf8:	00000693          	addi	a3,zero,0
   11cfc:	00098513          	addi	a0,s3,0
   11d00:	000800e7          	jalr	ra,0(a6)
   11d04:	fff00713          	addi	a4,zero,-1
   11d08:	01041783          	lh	a5,16(s0)
   11d0c:	12e51c63          	bne	a0,a4,11e44 <__sflush_r+0x1f0>
   11d10:	0009a683          	lw	a3,0(s3)
   11d14:	01d00713          	addi	a4,zero,29
   11d18:	18d76263          	bltu	a4,a3,11e9c <__sflush_r+0x248>
   11d1c:	20400737          	lui	a4,0x20400
   11d20:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203ec089>
   11d24:	00d75733          	srl	a4,a4,a3
   11d28:	00177713          	andi	a4,a4,1
   11d2c:	16070863          	beq	a4,zero,11e9c <__sflush_r+0x248>
   11d30:	01843683          	ld	a3,24(s0)
   11d34:	fffff737          	lui	a4,0xfffff
   11d38:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11d3c:	00e7f733          	and	a4,a5,a4
   11d40:	00e41823          	sh	a4,16(s0)
   11d44:	00042423          	sw	zero,8(s0)
   11d48:	00d43023          	sd	a3,0(s0)
   11d4c:	03379713          	slli	a4,a5,0x33
   11d50:	00075663          	bge	a4,zero,11d5c <__sflush_r+0x108>
   11d54:	0009a783          	lw	a5,0(s3)
   11d58:	10078863          	beq	a5,zero,11e68 <__sflush_r+0x214>
   11d5c:	05843583          	ld	a1,88(s0)
   11d60:	0099a023          	sw	s1,0(s3)
   11d64:	10058a63          	beq	a1,zero,11e78 <__sflush_r+0x224>
   11d68:	07440793          	addi	a5,s0,116
   11d6c:	00f58663          	beq	a1,a5,11d78 <__sflush_r+0x124>
   11d70:	00098513          	addi	a0,s3,0
   11d74:	9dcff0ef          	jal	ra,10f50 <_free_r>
   11d78:	01813483          	ld	s1,24(sp)
   11d7c:	04043c23          	sd	zero,88(s0)
   11d80:	02813083          	ld	ra,40(sp)
   11d84:	02013403          	ld	s0,32(sp)
   11d88:	00813983          	ld	s3,8(sp)
   11d8c:	00000513          	addi	a0,zero,0
   11d90:	03010113          	addi	sp,sp,48
   11d94:	00008067          	jalr	zero,0(ra)
   11d98:	01213823          	sd	s2,16(sp)
   11d9c:	0185b903          	ld	s2,24(a1)
   11da0:	08090a63          	beq	s2,zero,11e34 <__sflush_r+0x1e0>
   11da4:	00913c23          	sd	s1,24(sp)
   11da8:	0005b483          	ld	s1,0(a1)
   11dac:	00377713          	andi	a4,a4,3
   11db0:	0125b023          	sd	s2,0(a1)
   11db4:	412484bb          	subw	s1,s1,s2
   11db8:	00000793          	addi	a5,zero,0
   11dbc:	00071463          	bne	a4,zero,11dc4 <__sflush_r+0x170>
   11dc0:	0205a783          	lw	a5,32(a1)
   11dc4:	00f42623          	sw	a5,12(s0)
   11dc8:	00904863          	blt	zero,s1,11dd8 <__sflush_r+0x184>
   11dcc:	0640006f          	jal	zero,11e30 <__sflush_r+0x1dc>
   11dd0:	00a90933          	add	s2,s2,a0
   11dd4:	04905e63          	bge	zero,s1,11e30 <__sflush_r+0x1dc>
   11dd8:	04043783          	ld	a5,64(s0)
   11ddc:	03043583          	ld	a1,48(s0)
   11de0:	00048693          	addi	a3,s1,0
   11de4:	00090613          	addi	a2,s2,0
   11de8:	00098513          	addi	a0,s3,0
   11dec:	000780e7          	jalr	ra,0(a5)
   11df0:	40a484bb          	subw	s1,s1,a0
   11df4:	fca04ee3          	blt	zero,a0,11dd0 <__sflush_r+0x17c>
   11df8:	01045783          	lhu	a5,16(s0)
   11dfc:	01013903          	ld	s2,16(sp)
   11e00:	0407e793          	ori	a5,a5,64
   11e04:	02813083          	ld	ra,40(sp)
   11e08:	00f41823          	sh	a5,16(s0)
   11e0c:	02013403          	ld	s0,32(sp)
   11e10:	01813483          	ld	s1,24(sp)
   11e14:	00813983          	ld	s3,8(sp)
   11e18:	fff00513          	addi	a0,zero,-1
   11e1c:	03010113          	addi	sp,sp,48
   11e20:	00008067          	jalr	zero,0(ra)
   11e24:	0705a683          	lw	a3,112(a1)
   11e28:	e6d044e3          	blt	zero,a3,11c90 <__sflush_r+0x3c>
   11e2c:	f55ff06f          	jal	zero,11d80 <__sflush_r+0x12c>
   11e30:	01813483          	ld	s1,24(sp)
   11e34:	01013903          	ld	s2,16(sp)
   11e38:	f49ff06f          	jal	zero,11d80 <__sflush_r+0x12c>
   11e3c:	09043603          	ld	a2,144(s0)
   11e40:	e95ff06f          	jal	zero,11cd4 <__sflush_r+0x80>
   11e44:	01843683          	ld	a3,24(s0)
   11e48:	fffff737          	lui	a4,0xfffff
   11e4c:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffeb887>
   11e50:	00e7f733          	and	a4,a5,a4
   11e54:	00e41823          	sh	a4,16(s0)
   11e58:	00042423          	sw	zero,8(s0)
   11e5c:	00d43023          	sd	a3,0(s0)
   11e60:	03379713          	slli	a4,a5,0x33
   11e64:	ee075ce3          	bge	a4,zero,11d5c <__sflush_r+0x108>
   11e68:	05843583          	ld	a1,88(s0)
   11e6c:	08a43823          	sd	a0,144(s0)
   11e70:	0099a023          	sw	s1,0(s3)
   11e74:	ee059ae3          	bne	a1,zero,11d68 <__sflush_r+0x114>
   11e78:	01813483          	ld	s1,24(sp)
   11e7c:	f05ff06f          	jal	zero,11d80 <__sflush_r+0x12c>
   11e80:	0009a783          	lw	a5,0(s3)
   11e84:	e40784e3          	beq	a5,zero,11ccc <__sflush_r+0x78>
   11e88:	fe378713          	addi	a4,a5,-29
   11e8c:	00070c63          	beq	a4,zero,11ea4 <__sflush_r+0x250>
   11e90:	fea78793          	addi	a5,a5,-22
   11e94:	00078863          	beq	a5,zero,11ea4 <__sflush_r+0x250>
   11e98:	01045783          	lhu	a5,16(s0)
   11e9c:	0407e793          	ori	a5,a5,64
   11ea0:	f65ff06f          	jal	zero,11e04 <__sflush_r+0x1b0>
   11ea4:	0099a023          	sw	s1,0(s3)
   11ea8:	01813483          	ld	s1,24(sp)
   11eac:	ed5ff06f          	jal	zero,11d80 <__sflush_r+0x12c>

0000000000011eb0 <_fflush_r>:
   11eb0:	00050793          	addi	a5,a0,0
   11eb4:	00050663          	beq	a0,zero,11ec0 <_fflush_r+0x10>
   11eb8:	04853703          	ld	a4,72(a0)
   11ebc:	00070e63          	beq	a4,zero,11ed8 <_fflush_r+0x28>
   11ec0:	01059703          	lh	a4,16(a1)
   11ec4:	00071663          	bne	a4,zero,11ed0 <_fflush_r+0x20>
   11ec8:	00000513          	addi	a0,zero,0
   11ecc:	00008067          	jalr	zero,0(ra)
   11ed0:	00078513          	addi	a0,a5,0
   11ed4:	d81ff06f          	jal	zero,11c54 <__sflush_r>
   11ed8:	fe010113          	addi	sp,sp,-32
   11edc:	00b13423          	sd	a1,8(sp)
   11ee0:	00113c23          	sd	ra,24(sp)
   11ee4:	00a13023          	sd	a0,0(sp)
   11ee8:	ea0fe0ef          	jal	ra,10588 <__sinit>
   11eec:	00813583          	ld	a1,8(sp)
   11ef0:	00013783          	ld	a5,0(sp)
   11ef4:	01059703          	lh	a4,16(a1)
   11ef8:	00070a63          	beq	a4,zero,11f0c <_fflush_r+0x5c>
   11efc:	01813083          	ld	ra,24(sp)
   11f00:	00078513          	addi	a0,a5,0
   11f04:	02010113          	addi	sp,sp,32
   11f08:	d4dff06f          	jal	zero,11c54 <__sflush_r>
   11f0c:	01813083          	ld	ra,24(sp)
   11f10:	00000513          	addi	a0,zero,0
   11f14:	02010113          	addi	sp,sp,32
   11f18:	00008067          	jalr	zero,0(ra)

0000000000011f1c <fflush>:
   11f1c:	06050063          	beq	a0,zero,11f7c <fflush+0x60>
   11f20:	00050593          	addi	a1,a0,0
   11f24:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   11f28:	00050663          	beq	a0,zero,11f34 <fflush+0x18>
   11f2c:	04853783          	ld	a5,72(a0)
   11f30:	00078c63          	beq	a5,zero,11f48 <fflush+0x2c>
   11f34:	01059783          	lh	a5,16(a1)
   11f38:	00079663          	bne	a5,zero,11f44 <fflush+0x28>
   11f3c:	00000513          	addi	a0,zero,0
   11f40:	00008067          	jalr	zero,0(ra)
   11f44:	d11ff06f          	jal	zero,11c54 <__sflush_r>
   11f48:	fe010113          	addi	sp,sp,-32
   11f4c:	00b13423          	sd	a1,8(sp)
   11f50:	00a13023          	sd	a0,0(sp)
   11f54:	00113c23          	sd	ra,24(sp)
   11f58:	e30fe0ef          	jal	ra,10588 <__sinit>
   11f5c:	00813583          	ld	a1,8(sp)
   11f60:	00013503          	ld	a0,0(sp)
   11f64:	01059783          	lh	a5,16(a1)
   11f68:	02079863          	bne	a5,zero,11f98 <fflush+0x7c>
   11f6c:	01813083          	ld	ra,24(sp)
   11f70:	00000513          	addi	a0,zero,0
   11f74:	02010113          	addi	sp,sp,32
   11f78:	00008067          	jalr	zero,0(ra)
   11f7c:	00013637          	lui	a2,0x13
   11f80:	000125b7          	lui	a1,0x12
   11f84:	00013537          	lui	a0,0x13
   11f88:	01860613          	addi	a2,a2,24 # 13018 <__sglue>
   11f8c:	eb058593          	addi	a1,a1,-336 # 11eb0 <_fflush_r>
   11f90:	03050513          	addi	a0,a0,48 # 13030 <_impure_data>
   11f94:	e50fe06f          	jal	zero,105e4 <_fwalk_sglue>
   11f98:	01813083          	ld	ra,24(sp)
   11f9c:	02010113          	addi	sp,sp,32
   11fa0:	cb5ff06f          	jal	zero,11c54 <__sflush_r>

0000000000011fa4 <_sbrk_r>:
   11fa4:	fe010113          	addi	sp,sp,-32
   11fa8:	00813823          	sd	s0,16(sp)
   11fac:	00913423          	sd	s1,8(sp)
   11fb0:	00050493          	addi	s1,a0,0
   11fb4:	00058513          	addi	a0,a1,0
   11fb8:	00113c23          	sd	ra,24(sp)
   11fbc:	1a01a423          	sw	zero,424(gp) # 139c0 <errno>
   11fc0:	228000ef          	jal	ra,121e8 <_sbrk>
   11fc4:	fff00793          	addi	a5,zero,-1
   11fc8:	00f50c63          	beq	a0,a5,11fe0 <_sbrk_r+0x3c>
   11fcc:	01813083          	ld	ra,24(sp)
   11fd0:	01013403          	ld	s0,16(sp)
   11fd4:	00813483          	ld	s1,8(sp)
   11fd8:	02010113          	addi	sp,sp,32
   11fdc:	00008067          	jalr	zero,0(ra)
   11fe0:	1a81a783          	lw	a5,424(gp) # 139c0 <errno>
   11fe4:	fe0784e3          	beq	a5,zero,11fcc <_sbrk_r+0x28>
   11fe8:	01813083          	ld	ra,24(sp)
   11fec:	01013403          	ld	s0,16(sp)
   11ff0:	00f4a023          	sw	a5,0(s1)
   11ff4:	00813483          	ld	s1,8(sp)
   11ff8:	02010113          	addi	sp,sp,32
   11ffc:	00008067          	jalr	zero,0(ra)

0000000000012000 <__libc_fini_array>:
   12000:	fe010113          	addi	sp,sp,-32
   12004:	00813823          	sd	s0,16(sp)
   12008:	000137b7          	lui	a5,0x13
   1200c:	00013437          	lui	s0,0x13
   12010:	01878793          	addi	a5,a5,24 # 13018 <__sglue>
   12014:	01040413          	addi	s0,s0,16 # 13010 <__do_global_dtors_aux_fini_array_entry>
   12018:	408787b3          	sub	a5,a5,s0
   1201c:	00913423          	sd	s1,8(sp)
   12020:	00113c23          	sd	ra,24(sp)
   12024:	4037d493          	srai	s1,a5,0x3
   12028:	02048063          	beq	s1,zero,12048 <__libc_fini_array+0x48>
   1202c:	ff840413          	addi	s0,s0,-8
   12030:	00f40433          	add	s0,s0,a5
   12034:	00043783          	ld	a5,0(s0)
   12038:	fff48493          	addi	s1,s1,-1
   1203c:	ff840413          	addi	s0,s0,-8
   12040:	000780e7          	jalr	ra,0(a5)
   12044:	fe0498e3          	bne	s1,zero,12034 <__libc_fini_array+0x34>
   12048:	01813083          	ld	ra,24(sp)
   1204c:	01013403          	ld	s0,16(sp)
   12050:	00813483          	ld	s1,8(sp)
   12054:	02010113          	addi	sp,sp,32
   12058:	00008067          	jalr	zero,0(ra)

000000000001205c <__register_exitproc>:
   1205c:	1b01b783          	ld	a5,432(gp) # 139c8 <__atexit>
   12060:	04078e63          	beq	a5,zero,120bc <__register_exitproc+0x60>
   12064:	0087a703          	lw	a4,8(a5)
   12068:	01f00813          	addi	a6,zero,31
   1206c:	08e84263          	blt	a6,a4,120f0 <__register_exitproc+0x94>
   12070:	02050863          	beq	a0,zero,120a0 <__register_exitproc+0x44>
   12074:	00371813          	slli	a6,a4,0x3
   12078:	01078833          	add	a6,a5,a6
   1207c:	10c83823          	sd	a2,272(a6)
   12080:	3107a883          	lw	a7,784(a5)
   12084:	00100613          	addi	a2,zero,1
   12088:	00e6163b          	sllw	a2,a2,a4
   1208c:	00c8e8b3          	or	a7,a7,a2
   12090:	3117a823          	sw	a7,784(a5)
   12094:	20d83823          	sd	a3,528(a6)
   12098:	00200693          	addi	a3,zero,2
   1209c:	02d50663          	beq	a0,a3,120c8 <__register_exitproc+0x6c>
   120a0:	0017069b          	addiw	a3,a4,1
   120a4:	00371713          	slli	a4,a4,0x3
   120a8:	00d7a423          	sw	a3,8(a5)
   120ac:	00e787b3          	add	a5,a5,a4
   120b0:	00b7b823          	sd	a1,16(a5)
   120b4:	00000513          	addi	a0,zero,0
   120b8:	00008067          	jalr	zero,0(ra)
   120bc:	44818793          	addi	a5,gp,1096 # 13c60 <__atexit0>
   120c0:	1af1b823          	sd	a5,432(gp) # 139c8 <__atexit>
   120c4:	fa1ff06f          	jal	zero,12064 <__register_exitproc+0x8>
   120c8:	3147a683          	lw	a3,788(a5)
   120cc:	00000513          	addi	a0,zero,0
   120d0:	00d66633          	or	a2,a2,a3
   120d4:	0017069b          	addiw	a3,a4,1
   120d8:	00371713          	slli	a4,a4,0x3
   120dc:	30c7aa23          	sw	a2,788(a5)
   120e0:	00d7a423          	sw	a3,8(a5)
   120e4:	00e787b3          	add	a5,a5,a4
   120e8:	00b7b823          	sd	a1,16(a5)
   120ec:	00008067          	jalr	zero,0(ra)
   120f0:	fff00513          	addi	a0,zero,-1
   120f4:	00008067          	jalr	zero,0(ra)

00000000000120f8 <_close>:
   120f8:	03900893          	addi	a7,zero,57
   120fc:	00000073          	ecall
   12100:	00054663          	blt	a0,zero,1210c <_close+0x14>
   12104:	0005051b          	addiw	a0,a0,0
   12108:	00008067          	jalr	zero,0(ra)
   1210c:	fe010113          	addi	sp,sp,-32
   12110:	00113c23          	sd	ra,24(sp)
   12114:	00a13423          	sd	a0,8(sp)
   12118:	188000ef          	jal	ra,122a0 <__errno>
   1211c:	00813783          	ld	a5,8(sp)
   12120:	01813083          	ld	ra,24(sp)
   12124:	40f007bb          	subw	a5,zero,a5
   12128:	00f52023          	sw	a5,0(a0)
   1212c:	fff00513          	addi	a0,zero,-1
   12130:	02010113          	addi	sp,sp,32
   12134:	00008067          	jalr	zero,0(ra)

0000000000012138 <_exit>:
   12138:	05d00893          	addi	a7,zero,93
   1213c:	00000073          	ecall
   12140:	00054463          	blt	a0,zero,12148 <_exit+0x10>
   12144:	0000006f          	jal	zero,12144 <_exit+0xc>
   12148:	fe010113          	addi	sp,sp,-32
   1214c:	00113c23          	sd	ra,24(sp)
   12150:	00a13423          	sd	a0,8(sp)
   12154:	14c000ef          	jal	ra,122a0 <__errno>
   12158:	00813783          	ld	a5,8(sp)
   1215c:	40f007bb          	subw	a5,zero,a5
   12160:	00f52023          	sw	a5,0(a0)
   12164:	0000006f          	jal	zero,12164 <_exit+0x2c>

0000000000012168 <_lseek>:
   12168:	03e00893          	addi	a7,zero,62
   1216c:	00000073          	ecall
   12170:	00054463          	blt	a0,zero,12178 <_lseek+0x10>
   12174:	00008067          	jalr	zero,0(ra)
   12178:	fe010113          	addi	sp,sp,-32
   1217c:	00113c23          	sd	ra,24(sp)
   12180:	00a13423          	sd	a0,8(sp)
   12184:	11c000ef          	jal	ra,122a0 <__errno>
   12188:	00813783          	ld	a5,8(sp)
   1218c:	01813083          	ld	ra,24(sp)
   12190:	40f007bb          	subw	a5,zero,a5
   12194:	00f52023          	sw	a5,0(a0)
   12198:	fff00793          	addi	a5,zero,-1
   1219c:	00078513          	addi	a0,a5,0
   121a0:	02010113          	addi	sp,sp,32
   121a4:	00008067          	jalr	zero,0(ra)

00000000000121a8 <_read>:
   121a8:	03f00893          	addi	a7,zero,63
   121ac:	00000073          	ecall
   121b0:	00054463          	blt	a0,zero,121b8 <_read+0x10>
   121b4:	00008067          	jalr	zero,0(ra)
   121b8:	fe010113          	addi	sp,sp,-32
   121bc:	00113c23          	sd	ra,24(sp)
   121c0:	00a13423          	sd	a0,8(sp)
   121c4:	0dc000ef          	jal	ra,122a0 <__errno>
   121c8:	00813783          	ld	a5,8(sp)
   121cc:	01813083          	ld	ra,24(sp)
   121d0:	40f007bb          	subw	a5,zero,a5
   121d4:	00f52023          	sw	a5,0(a0)
   121d8:	fff00793          	addi	a5,zero,-1
   121dc:	00078513          	addi	a0,a5,0
   121e0:	02010113          	addi	sp,sp,32
   121e4:	00008067          	jalr	zero,0(ra)

00000000000121e8 <_sbrk>:
   121e8:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   121ec:	ff010113          	addi	sp,sp,-16
   121f0:	00113423          	sd	ra,8(sp)
   121f4:	00050713          	addi	a4,a0,0
   121f8:	02079063          	bne	a5,zero,12218 <_sbrk+0x30>
   121fc:	0d600893          	addi	a7,zero,214
   12200:	00000513          	addi	a0,zero,0
   12204:	00000073          	ecall
   12208:	fff00793          	addi	a5,zero,-1
   1220c:	02f50c63          	beq	a0,a5,12244 <_sbrk+0x5c>
   12210:	00050793          	addi	a5,a0,0
   12214:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   12218:	00f70533          	add	a0,a4,a5
   1221c:	0d600893          	addi	a7,zero,214
   12220:	00000073          	ecall
   12224:	1d01b783          	ld	a5,464(gp) # 139e8 <heap_end.0>
   12228:	00f70733          	add	a4,a4,a5
   1222c:	00e51c63          	bne	a0,a4,12244 <_sbrk+0x5c>
   12230:	00813083          	ld	ra,8(sp)
   12234:	1ca1b823          	sd	a0,464(gp) # 139e8 <heap_end.0>
   12238:	00078513          	addi	a0,a5,0
   1223c:	01010113          	addi	sp,sp,16
   12240:	00008067          	jalr	zero,0(ra)
   12244:	05c000ef          	jal	ra,122a0 <__errno>
   12248:	00813083          	ld	ra,8(sp)
   1224c:	00c00793          	addi	a5,zero,12
   12250:	00f52023          	sw	a5,0(a0)
   12254:	fff00513          	addi	a0,zero,-1
   12258:	01010113          	addi	sp,sp,16
   1225c:	00008067          	jalr	zero,0(ra)

0000000000012260 <_write>:
   12260:	04000893          	addi	a7,zero,64
   12264:	00000073          	ecall
   12268:	00054463          	blt	a0,zero,12270 <_write+0x10>
   1226c:	00008067          	jalr	zero,0(ra)
   12270:	fe010113          	addi	sp,sp,-32
   12274:	00113c23          	sd	ra,24(sp)
   12278:	00a13423          	sd	a0,8(sp)
   1227c:	024000ef          	jal	ra,122a0 <__errno>
   12280:	00813783          	ld	a5,8(sp)
   12284:	01813083          	ld	ra,24(sp)
   12288:	40f007bb          	subw	a5,zero,a5
   1228c:	00f52023          	sw	a5,0(a0)
   12290:	fff00793          	addi	a5,zero,-1
   12294:	00078513          	addi	a0,a5,0
   12298:	02010113          	addi	sp,sp,32
   1229c:	00008067          	jalr	zero,0(ra)

00000000000122a0 <__errno>:
   122a0:	1881b503          	ld	a0,392(gp) # 139a0 <_impure_ptr>
   122a4:	00008067          	jalr	zero,0(ra)
