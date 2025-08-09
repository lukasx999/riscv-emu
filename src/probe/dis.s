
bin-c:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	ff010113          	addi	sp,sp,-16
   10124:	00000593          	addi	a1,zero,0
   10128:	00813023          	sd	s0,0(sp)
   1012c:	00113423          	sd	ra,8(sp)
   10130:	00050413          	addi	s0,a0,0
   10134:	32d000ef          	jal	ra,10c60 <__call_exitprocs>
   10138:	2381b783          	ld	a5,568(gp) # 20680 <__stdio_exit_handler>
   1013c:	00078463          	beq	a5,zero,10144 <exit+0x24>
   10140:	000780e7          	jalr	ra,0(a5)
   10144:	00040513          	addi	a0,s0,0
   10148:	7300b0ef          	jal	ra,1b878 <_exit>

000000000001014c <register_fini>:
   1014c:	00000793          	addi	a5,zero,0
   10150:	00078863          	beq	a5,zero,10160 <register_fini+0x14>
   10154:	00015537          	lui	a0,0x15
   10158:	67450513          	addi	a0,a0,1652 # 15674 <__libc_fini_array>
   1015c:	43d0006f          	jal	zero,10d98 <atexit>
   10160:	00008067          	jalr	zero,0(ra)

0000000000010164 <_start>:
   10164:	00010197          	auipc	gp,0x10
   10168:	2e418193          	addi	gp,gp,740 # 20448 <__global_pointer$>
   1016c:	00010517          	auipc	a0,0x10
   10170:	51450513          	addi	a0,a0,1300 # 20680 <__stdio_exit_handler>
   10174:	00011617          	auipc	a2,0x11
   10178:	ad460613          	addi	a2,a2,-1324 # 20c48 <__BSS_END__>
   1017c:	40a60633          	sub	a2,a2,a0
   10180:	00000593          	addi	a1,zero,0
   10184:	201000ef          	jal	ra,10b84 <memset>
   10188:	00001517          	auipc	a0,0x1
   1018c:	c1050513          	addi	a0,a0,-1008 # 10d98 <atexit>
   10190:	00050863          	beq	a0,zero,101a0 <_start+0x3c>
   10194:	00005517          	auipc	a0,0x5
   10198:	4e050513          	addi	a0,a0,1248 # 15674 <__libc_fini_array>
   1019c:	3fd000ef          	jal	ra,10d98 <atexit>
   101a0:	151000ef          	jal	ra,10af0 <__libc_init_array>
   101a4:	00012503          	lw	a0,0(sp)
   101a8:	00810593          	addi	a1,sp,8
   101ac:	00000613          	addi	a2,zero,0
   101b0:	06c000ef          	jal	ra,1021c <main>
   101b4:	f6dff06f          	jal	zero,10120 <exit>

00000000000101b8 <__do_global_dtors_aux>:
   101b8:	ff010113          	addi	sp,sp,-16
   101bc:	00813023          	sd	s0,0(sp)
   101c0:	2781c783          	lbu	a5,632(gp) # 206c0 <completed.1>
   101c4:	00113423          	sd	ra,8(sp)
   101c8:	02079263          	bne	a5,zero,101ec <__do_global_dtors_aux+0x34>
   101cc:	00000793          	addi	a5,zero,0
   101d0:	00078a63          	beq	a5,zero,101e4 <__do_global_dtors_aux+0x2c>
   101d4:	0001f537          	lui	a0,0x1f
   101d8:	ab050513          	addi	a0,a0,-1360 # 1eab0 <__EH_FRAME_BEGIN__>
   101dc:	00000097          	auipc	ra,0x0
   101e0:	000000e7          	jalr	ra,0(zero) # 0 <exit-0x10120>
   101e4:	00100793          	addi	a5,zero,1
   101e8:	26f18c23          	sb	a5,632(gp) # 206c0 <completed.1>
   101ec:	00813083          	ld	ra,8(sp)
   101f0:	00013403          	ld	s0,0(sp)
   101f4:	01010113          	addi	sp,sp,16
   101f8:	00008067          	jalr	zero,0(ra) # 101dc <__do_global_dtors_aux+0x24>

00000000000101fc <frame_dummy>:
   101fc:	00000793          	addi	a5,zero,0
   10200:	00078c63          	beq	a5,zero,10218 <frame_dummy+0x1c>
   10204:	0001f537          	lui	a0,0x1f
   10208:	28018593          	addi	a1,gp,640 # 206c8 <object.0>
   1020c:	ab050513          	addi	a0,a0,-1360 # 1eab0 <__EH_FRAME_BEGIN__>
   10210:	00000317          	auipc	t1,0x0
   10214:	00000067          	jalr	zero,0(zero) # 0 <exit-0x10120>
   10218:	00008067          	jalr	zero,0(ra)

000000000001021c <main>:
   1021c:	ff010113          	addi	sp,sp,-16
   10220:	00113423          	sd	ra,8(sp)
   10224:	00813023          	sd	s0,0(sp)
   10228:	01010413          	addi	s0,sp,16
   1022c:	0001e7b7          	lui	a5,0x1e
   10230:	26078513          	addi	a0,a5,608 # 1e260 <__clzdi2+0x4c>
   10234:	4a0000ef          	jal	ra,106d4 <printf>
   10238:	00000793          	addi	a5,zero,0
   1023c:	00078513          	addi	a0,a5,0
   10240:	00813083          	ld	ra,8(sp)
   10244:	00013403          	ld	s0,0(sp)
   10248:	01010113          	addi	sp,sp,16
   1024c:	00008067          	jalr	zero,0(ra)

0000000000010250 <__fp_lock>:
   10250:	00000513          	addi	a0,zero,0
   10254:	00008067          	jalr	zero,0(ra)

0000000000010258 <stdio_exit_handler>:
   10258:	00020637          	lui	a2,0x20
   1025c:	000155b7          	lui	a1,0x15
   10260:	00020537          	lui	a0,0x20
   10264:	ad060613          	addi	a2,a2,-1328 # 1fad0 <__sglue>
   10268:	9dc58593          	addi	a1,a1,-1572 # 149dc <_fclose_r>
   1026c:	ae850513          	addi	a0,a0,-1304 # 1fae8 <_impure_data>
   10270:	34c0006f          	jal	zero,105bc <_fwalk_sglue>

0000000000010274 <cleanup_stdio>:
   10274:	00853583          	ld	a1,8(a0)
   10278:	ff010113          	addi	sp,sp,-16
   1027c:	00813023          	sd	s0,0(sp)
   10280:	00113423          	sd	ra,8(sp)
   10284:	2b018793          	addi	a5,gp,688 # 206f8 <__sf>
   10288:	00050413          	addi	s0,a0,0
   1028c:	00f58463          	beq	a1,a5,10294 <cleanup_stdio+0x20>
   10290:	74c040ef          	jal	ra,149dc <_fclose_r>
   10294:	01043583          	ld	a1,16(s0)
   10298:	36018793          	addi	a5,gp,864 # 207a8 <__sf+0xb0>
   1029c:	00f58663          	beq	a1,a5,102a8 <cleanup_stdio+0x34>
   102a0:	00040513          	addi	a0,s0,0
   102a4:	738040ef          	jal	ra,149dc <_fclose_r>
   102a8:	01843583          	ld	a1,24(s0)
   102ac:	41018793          	addi	a5,gp,1040 # 20858 <__sf+0x160>
   102b0:	00f58c63          	beq	a1,a5,102c8 <cleanup_stdio+0x54>
   102b4:	00040513          	addi	a0,s0,0
   102b8:	00013403          	ld	s0,0(sp)
   102bc:	00813083          	ld	ra,8(sp)
   102c0:	01010113          	addi	sp,sp,16
   102c4:	7180406f          	jal	zero,149dc <_fclose_r>
   102c8:	00813083          	ld	ra,8(sp)
   102cc:	00013403          	ld	s0,0(sp)
   102d0:	01010113          	addi	sp,sp,16
   102d4:	00008067          	jalr	zero,0(ra)

00000000000102d8 <__fp_unlock>:
   102d8:	00000513          	addi	a0,zero,0
   102dc:	00008067          	jalr	zero,0(ra)

00000000000102e0 <global_stdio_init.part.0>:
   102e0:	fd010113          	addi	sp,sp,-48
   102e4:	000107b7          	lui	a5,0x10
   102e8:	02813023          	sd	s0,32(sp)
   102ec:	25878793          	addi	a5,a5,600 # 10258 <stdio_exit_handler>
   102f0:	2b018413          	addi	s0,gp,688 # 206f8 <__sf>
   102f4:	02113423          	sd	ra,40(sp)
   102f8:	00913c23          	sd	s1,24(sp)
   102fc:	01213823          	sd	s2,16(sp)
   10300:	01313423          	sd	s3,8(sp)
   10304:	01413023          	sd	s4,0(sp)
   10308:	22f1bc23          	sd	a5,568(gp) # 20680 <__stdio_exit_handler>
   1030c:	00800613          	addi	a2,zero,8
   10310:	00400793          	addi	a5,zero,4
   10314:	00000593          	addi	a1,zero,0
   10318:	35418513          	addi	a0,gp,852 # 2079c <__sf+0xa4>
   1031c:	00f42823          	sw	a5,16(s0)
   10320:	00043023          	sd	zero,0(s0)
   10324:	00043423          	sd	zero,8(s0)
   10328:	0a042623          	sw	zero,172(s0)
   1032c:	00043c23          	sd	zero,24(s0)
   10330:	02042023          	sw	zero,32(s0)
   10334:	02042423          	sw	zero,40(s0)
   10338:	04d000ef          	jal	ra,10b84 <memset>
   1033c:	00010a37          	lui	s4,0x10
   10340:	000109b7          	lui	s3,0x10
   10344:	00011937          	lui	s2,0x11
   10348:	000114b7          	lui	s1,0x11
   1034c:	000107b7          	lui	a5,0x10
   10350:	720a0a13          	addi	s4,s4,1824 # 10720 <__sread>
   10354:	78498993          	addi	s3,s3,1924 # 10784 <__swrite>
   10358:	80c90913          	addi	s2,s2,-2036 # 1080c <__sseek>
   1035c:	87048493          	addi	s1,s1,-1936 # 10870 <__sclose>
   10360:	00978793          	addi	a5,a5,9 # 10009 <exit-0x117>
   10364:	00800613          	addi	a2,zero,8
   10368:	00000593          	addi	a1,zero,0
   1036c:	40418513          	addi	a0,gp,1028 # 2084c <__sf+0x154>
   10370:	0cf42023          	sw	a5,192(s0)
   10374:	03443c23          	sd	s4,56(s0)
   10378:	05343023          	sd	s3,64(s0)
   1037c:	05243423          	sd	s2,72(s0)
   10380:	04943823          	sd	s1,80(s0)
   10384:	02843823          	sd	s0,48(s0)
   10388:	0a043823          	sd	zero,176(s0)
   1038c:	0a043c23          	sd	zero,184(s0)
   10390:	14042e23          	sw	zero,348(s0)
   10394:	0c043423          	sd	zero,200(s0)
   10398:	0c042823          	sw	zero,208(s0)
   1039c:	0c042c23          	sw	zero,216(s0)
   103a0:	7e4000ef          	jal	ra,10b84 <memset>
   103a4:	000207b7          	lui	a5,0x20
   103a8:	01278793          	addi	a5,a5,18 # 20012 <__malloc_av_+0x3d2>
   103ac:	36018713          	addi	a4,gp,864 # 207a8 <__sf+0xb0>
   103b0:	4b418513          	addi	a0,gp,1204 # 208fc <__sf+0x204>
   103b4:	00800613          	addi	a2,zero,8
   103b8:	00000593          	addi	a1,zero,0
   103bc:	0f443423          	sd	s4,232(s0)
   103c0:	0f343823          	sd	s3,240(s0)
   103c4:	0f243c23          	sd	s2,248(s0)
   103c8:	10943023          	sd	s1,256(s0)
   103cc:	16f42823          	sw	a5,368(s0)
   103d0:	16043023          	sd	zero,352(s0)
   103d4:	16043423          	sd	zero,360(s0)
   103d8:	20042623          	sw	zero,524(s0)
   103dc:	16043c23          	sd	zero,376(s0)
   103e0:	18042023          	sw	zero,384(s0)
   103e4:	18042423          	sw	zero,392(s0)
   103e8:	0ee43023          	sd	a4,224(s0)
   103ec:	798000ef          	jal	ra,10b84 <memset>
   103f0:	41018793          	addi	a5,gp,1040 # 20858 <__sf+0x160>
   103f4:	19443c23          	sd	s4,408(s0)
   103f8:	1b343023          	sd	s3,416(s0)
   103fc:	1b243423          	sd	s2,424(s0)
   10400:	1a943823          	sd	s1,432(s0)
   10404:	02813083          	ld	ra,40(sp)
   10408:	18f43823          	sd	a5,400(s0)
   1040c:	02013403          	ld	s0,32(sp)
   10410:	01813483          	ld	s1,24(sp)
   10414:	01013903          	ld	s2,16(sp)
   10418:	00813983          	ld	s3,8(sp)
   1041c:	00013a03          	ld	s4,0(sp)
   10420:	03010113          	addi	sp,sp,48
   10424:	00008067          	jalr	zero,0(ra)

0000000000010428 <__sfp>:
   10428:	2381b783          	ld	a5,568(gp) # 20680 <__stdio_exit_handler>
   1042c:	fd010113          	addi	sp,sp,-48
   10430:	00913c23          	sd	s1,24(sp)
   10434:	02113423          	sd	ra,40(sp)
   10438:	02813023          	sd	s0,32(sp)
   1043c:	00050493          	addi	s1,a0,0
   10440:	10078463          	beq	a5,zero,10548 <__sfp+0x120>
   10444:	000206b7          	lui	a3,0x20
   10448:	ad068693          	addi	a3,a3,-1328 # 1fad0 <__sglue>
   1044c:	0086a703          	lw	a4,8(a3)
   10450:	08e05c63          	bge	zero,a4,104e8 <__sfp+0xc0>
   10454:	02071713          	slli	a4,a4,0x20
   10458:	02075713          	srli	a4,a4,0x20
   1045c:	00171793          	slli	a5,a4,0x1
   10460:	00e787b3          	add	a5,a5,a4
   10464:	0106b403          	ld	s0,16(a3)
   10468:	00279793          	slli	a5,a5,0x2
   1046c:	40e787b3          	sub	a5,a5,a4
   10470:	00479793          	slli	a5,a5,0x4
   10474:	00f407b3          	add	a5,s0,a5
   10478:	00c0006f          	jal	zero,10484 <__sfp+0x5c>
   1047c:	0b040413          	addi	s0,s0,176
   10480:	06f40463          	beq	s0,a5,104e8 <__sfp+0xc0>
   10484:	01041703          	lh	a4,16(s0)
   10488:	fe071ae3          	bne	a4,zero,1047c <__sfp+0x54>
   1048c:	ffff07b7          	lui	a5,0xffff0
   10490:	00178793          	addi	a5,a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffcf3b9>
   10494:	00f42823          	sw	a5,16(s0)
   10498:	0a042623          	sw	zero,172(s0)
   1049c:	00043023          	sd	zero,0(s0)
   104a0:	00043423          	sd	zero,8(s0)
   104a4:	00043c23          	sd	zero,24(s0)
   104a8:	02042023          	sw	zero,32(s0)
   104ac:	02042423          	sw	zero,40(s0)
   104b0:	00800613          	addi	a2,zero,8
   104b4:	00000593          	addi	a1,zero,0
   104b8:	0a440513          	addi	a0,s0,164
   104bc:	6c8000ef          	jal	ra,10b84 <memset>
   104c0:	04043c23          	sd	zero,88(s0)
   104c4:	06042023          	sw	zero,96(s0)
   104c8:	06043c23          	sd	zero,120(s0)
   104cc:	08042023          	sw	zero,128(s0)
   104d0:	02813083          	ld	ra,40(sp)
   104d4:	00040513          	addi	a0,s0,0
   104d8:	02013403          	ld	s0,32(sp)
   104dc:	01813483          	ld	s1,24(sp)
   104e0:	03010113          	addi	sp,sp,48
   104e4:	00008067          	jalr	zero,0(ra)
   104e8:	0006b403          	ld	s0,0(a3)
   104ec:	00040663          	beq	s0,zero,104f8 <__sfp+0xd0>
   104f0:	00040693          	addi	a3,s0,0
   104f4:	f59ff06f          	jal	zero,1044c <__sfp+0x24>
   104f8:	2d800593          	addi	a1,zero,728
   104fc:	00048513          	addi	a0,s1,0
   10500:	00d13423          	sd	a3,8(sp)
   10504:	4d1000ef          	jal	ra,111d4 <_malloc_r>
   10508:	00813683          	ld	a3,8(sp)
   1050c:	00050413          	addi	s0,a0,0
   10510:	04050063          	beq	a0,zero,10550 <__sfp+0x128>
   10514:	00400793          	addi	a5,zero,4
   10518:	00f52423          	sw	a5,8(a0)
   1051c:	01850513          	addi	a0,a0,24
   10520:	00043023          	sd	zero,0(s0)
   10524:	00a43823          	sd	a0,16(s0)
   10528:	2c000613          	addi	a2,zero,704
   1052c:	00000593          	addi	a1,zero,0
   10530:	00d13423          	sd	a3,8(sp)
   10534:	650000ef          	jal	ra,10b84 <memset>
   10538:	00813683          	ld	a3,8(sp)
   1053c:	0086b023          	sd	s0,0(a3)
   10540:	00040693          	addi	a3,s0,0
   10544:	f09ff06f          	jal	zero,1044c <__sfp+0x24>
   10548:	d99ff0ef          	jal	ra,102e0 <global_stdio_init.part.0>
   1054c:	ef9ff06f          	jal	zero,10444 <__sfp+0x1c>
   10550:	0006b023          	sd	zero,0(a3)
   10554:	00c00793          	addi	a5,zero,12
   10558:	00f4a023          	sw	a5,0(s1)
   1055c:	f75ff06f          	jal	zero,104d0 <__sfp+0xa8>

0000000000010560 <__sinit>:
   10560:	04853783          	ld	a5,72(a0)
   10564:	00078463          	beq	a5,zero,1056c <__sinit+0xc>
   10568:	00008067          	jalr	zero,0(ra)
   1056c:	000107b7          	lui	a5,0x10
   10570:	2381b703          	ld	a4,568(gp) # 20680 <__stdio_exit_handler>
   10574:	27478793          	addi	a5,a5,628 # 10274 <cleanup_stdio>
   10578:	04f53423          	sd	a5,72(a0)
   1057c:	fe0716e3          	bne	a4,zero,10568 <__sinit+0x8>
   10580:	d61ff06f          	jal	zero,102e0 <global_stdio_init.part.0>

0000000000010584 <__sfp_lock_acquire>:
   10584:	00008067          	jalr	zero,0(ra)

0000000000010588 <__sfp_lock_release>:
   10588:	00008067          	jalr	zero,0(ra)

000000000001058c <__fp_lock_all>:
   1058c:	00020637          	lui	a2,0x20
   10590:	000105b7          	lui	a1,0x10
   10594:	ad060613          	addi	a2,a2,-1328 # 1fad0 <__sglue>
   10598:	25058593          	addi	a1,a1,592 # 10250 <__fp_lock>
   1059c:	00000513          	addi	a0,zero,0
   105a0:	01c0006f          	jal	zero,105bc <_fwalk_sglue>

00000000000105a4 <__fp_unlock_all>:
   105a4:	00020637          	lui	a2,0x20
   105a8:	000105b7          	lui	a1,0x10
   105ac:	ad060613          	addi	a2,a2,-1328 # 1fad0 <__sglue>
   105b0:	2d858593          	addi	a1,a1,728 # 102d8 <__fp_unlock>
   105b4:	00000513          	addi	a0,zero,0
   105b8:	0040006f          	jal	zero,105bc <_fwalk_sglue>

00000000000105bc <_fwalk_sglue>:
   105bc:	fb010113          	addi	sp,sp,-80
   105c0:	03213823          	sd	s2,48(sp)
   105c4:	03313423          	sd	s3,40(sp)
   105c8:	03413023          	sd	s4,32(sp)
   105cc:	01513c23          	sd	s5,24(sp)
   105d0:	01613823          	sd	s6,16(sp)
   105d4:	01713423          	sd	s7,8(sp)
   105d8:	04113423          	sd	ra,72(sp)
   105dc:	04813023          	sd	s0,64(sp)
   105e0:	02913c23          	sd	s1,56(sp)
   105e4:	00060913          	addi	s2,a2,0
   105e8:	00050a13          	addi	s4,a0,0
   105ec:	00058a93          	addi	s5,a1,0
   105f0:	00000b13          	addi	s6,zero,0
   105f4:	00100b93          	addi	s7,zero,1
   105f8:	fff00993          	addi	s3,zero,-1
   105fc:	00892783          	lw	a5,8(s2)
   10600:	04f05a63          	bge	zero,a5,10654 <_fwalk_sglue+0x98>
   10604:	02079793          	slli	a5,a5,0x20
   10608:	0207d793          	srli	a5,a5,0x20
   1060c:	00179493          	slli	s1,a5,0x1
   10610:	00f484b3          	add	s1,s1,a5
   10614:	01093403          	ld	s0,16(s2)
   10618:	00249493          	slli	s1,s1,0x2
   1061c:	40f484b3          	sub	s1,s1,a5
   10620:	00449493          	slli	s1,s1,0x4
   10624:	009404b3          	add	s1,s0,s1
   10628:	01045783          	lhu	a5,16(s0)
   1062c:	02fbf063          	bgeu	s7,a5,1064c <_fwalk_sglue+0x90>
   10630:	01241783          	lh	a5,18(s0)
   10634:	00040593          	addi	a1,s0,0
   10638:	000a0513          	addi	a0,s4,0
   1063c:	01378863          	beq	a5,s3,1064c <_fwalk_sglue+0x90>
   10640:	000a80e7          	jalr	ra,0(s5)
   10644:	01656b33          	or	s6,a0,s6
   10648:	000b0b1b          	addiw	s6,s6,0
   1064c:	0b040413          	addi	s0,s0,176
   10650:	fc941ce3          	bne	s0,s1,10628 <_fwalk_sglue+0x6c>
   10654:	00093903          	ld	s2,0(s2)
   10658:	fa0912e3          	bne	s2,zero,105fc <_fwalk_sglue+0x40>
   1065c:	04813083          	ld	ra,72(sp)
   10660:	04013403          	ld	s0,64(sp)
   10664:	03813483          	ld	s1,56(sp)
   10668:	03013903          	ld	s2,48(sp)
   1066c:	02813983          	ld	s3,40(sp)
   10670:	02013a03          	ld	s4,32(sp)
   10674:	01813a83          	ld	s5,24(sp)
   10678:	00813b83          	ld	s7,8(sp)
   1067c:	000b0513          	addi	a0,s6,0
   10680:	01013b03          	ld	s6,16(sp)
   10684:	05010113          	addi	sp,sp,80
   10688:	00008067          	jalr	zero,0(ra)

000000000001068c <_printf_r>:
   1068c:	fb010113          	addi	sp,sp,-80
   10690:	00058e13          	addi	t3,a1,0
   10694:	01053583          	ld	a1,16(a0)
   10698:	02010313          	addi	t1,sp,32
   1069c:	02c13023          	sd	a2,32(sp)
   106a0:	02d13423          	sd	a3,40(sp)
   106a4:	000e0613          	addi	a2,t3,0
   106a8:	00030693          	addi	a3,t1,0 # 10210 <frame_dummy+0x14>
   106ac:	00113c23          	sd	ra,24(sp)
   106b0:	02e13823          	sd	a4,48(sp)
   106b4:	02f13c23          	sd	a5,56(sp)
   106b8:	05013023          	sd	a6,64(sp)
   106bc:	05113423          	sd	a7,72(sp)
   106c0:	00613423          	sd	t1,8(sp)
   106c4:	3fc010ef          	jal	ra,11ac0 <_vfprintf_r>
   106c8:	01813083          	ld	ra,24(sp)
   106cc:	05010113          	addi	sp,sp,80
   106d0:	00008067          	jalr	zero,0(ra)

00000000000106d4 <printf>:
   106d4:	2201b303          	ld	t1,544(gp) # 20668 <_impure_ptr>
   106d8:	fa010113          	addi	sp,sp,-96
   106dc:	02c13823          	sd	a2,48(sp)
   106e0:	02d13c23          	sd	a3,56(sp)
   106e4:	02b13423          	sd	a1,40(sp)
   106e8:	04e13023          	sd	a4,64(sp)
   106ec:	04f13423          	sd	a5,72(sp)
   106f0:	05013823          	sd	a6,80(sp)
   106f4:	05113c23          	sd	a7,88(sp)
   106f8:	01033583          	ld	a1,16(t1)
   106fc:	02810693          	addi	a3,sp,40
   10700:	00050613          	addi	a2,a0,0
   10704:	00030513          	addi	a0,t1,0
   10708:	00113c23          	sd	ra,24(sp)
   1070c:	00d13423          	sd	a3,8(sp)
   10710:	3b0010ef          	jal	ra,11ac0 <_vfprintf_r>
   10714:	01813083          	ld	ra,24(sp)
   10718:	06010113          	addi	sp,sp,96
   1071c:	00008067          	jalr	zero,0(ra)

0000000000010720 <__sread>:
   10720:	ff010113          	addi	sp,sp,-16
   10724:	00813023          	sd	s0,0(sp)
   10728:	00058413          	addi	s0,a1,0
   1072c:	01259583          	lh	a1,18(a1)
   10730:	00113423          	sd	ra,8(sp)
   10734:	2ec000ef          	jal	ra,10a20 <_read_r>
   10738:	02054063          	blt	a0,zero,10758 <__sread+0x38>
   1073c:	09043783          	ld	a5,144(s0)
   10740:	00813083          	ld	ra,8(sp)
   10744:	00a787b3          	add	a5,a5,a0
   10748:	08f43823          	sd	a5,144(s0)
   1074c:	00013403          	ld	s0,0(sp)
   10750:	01010113          	addi	sp,sp,16
   10754:	00008067          	jalr	zero,0(ra)
   10758:	01045783          	lhu	a5,16(s0)
   1075c:	fffff737          	lui	a4,0xfffff
   10760:	fff70713          	addi	a4,a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffde3b7>
   10764:	00e7f7b3          	and	a5,a5,a4
   10768:	00813083          	ld	ra,8(sp)
   1076c:	00f41823          	sh	a5,16(s0)
   10770:	00013403          	ld	s0,0(sp)
   10774:	01010113          	addi	sp,sp,16
   10778:	00008067          	jalr	zero,0(ra)

000000000001077c <__seofread>:
   1077c:	00000513          	addi	a0,zero,0
   10780:	00008067          	jalr	zero,0(ra)

0000000000010784 <__swrite>:
   10784:	01059783          	lh	a5,16(a1)
   10788:	fd010113          	addi	sp,sp,-48
   1078c:	00068313          	addi	t1,a3,0
   10790:	02113423          	sd	ra,40(sp)
   10794:	1007f693          	andi	a3,a5,256
   10798:	00058713          	addi	a4,a1,0
   1079c:	00060893          	addi	a7,a2,0
   107a0:	00050813          	addi	a6,a0,0
   107a4:	02069863          	bne	a3,zero,107d4 <__swrite+0x50>
   107a8:	fffff6b7          	lui	a3,0xfffff
   107ac:	fff68693          	addi	a3,a3,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffde3b7>
   107b0:	02813083          	ld	ra,40(sp)
   107b4:	00d7f7b3          	and	a5,a5,a3
   107b8:	01271583          	lh	a1,18(a4)
   107bc:	00f71823          	sh	a5,16(a4)
   107c0:	00030693          	addi	a3,t1,0
   107c4:	00088613          	addi	a2,a7,0
   107c8:	00080513          	addi	a0,a6,0
   107cc:	03010113          	addi	sp,sp,48
   107d0:	2b80006f          	jal	zero,10a88 <_write_r>
   107d4:	01259583          	lh	a1,18(a1)
   107d8:	00c13823          	sd	a2,16(sp)
   107dc:	00200693          	addi	a3,zero,2
   107e0:	00000613          	addi	a2,zero,0
   107e4:	00613c23          	sd	t1,24(sp)
   107e8:	00e13023          	sd	a4,0(sp)
   107ec:	00a13423          	sd	a0,8(sp)
   107f0:	1c8000ef          	jal	ra,109b8 <_lseek_r>
   107f4:	00013703          	ld	a4,0(sp)
   107f8:	01813303          	ld	t1,24(sp)
   107fc:	01013883          	ld	a7,16(sp)
   10800:	01071783          	lh	a5,16(a4)
   10804:	00813803          	ld	a6,8(sp)
   10808:	fa1ff06f          	jal	zero,107a8 <__swrite+0x24>

000000000001080c <__sseek>:
   1080c:	ff010113          	addi	sp,sp,-16
   10810:	00813023          	sd	s0,0(sp)
   10814:	00058413          	addi	s0,a1,0
   10818:	01259583          	lh	a1,18(a1)
   1081c:	00113423          	sd	ra,8(sp)
   10820:	198000ef          	jal	ra,109b8 <_lseek_r>
   10824:	fff00713          	addi	a4,zero,-1
   10828:	01041783          	lh	a5,16(s0)
   1082c:	02e50263          	beq	a0,a4,10850 <__sseek+0x44>
   10830:	00001737          	lui	a4,0x1
   10834:	00e7e7b3          	or	a5,a5,a4
   10838:	00813083          	ld	ra,8(sp)
   1083c:	08a43823          	sd	a0,144(s0)
   10840:	00f41823          	sh	a5,16(s0)
   10844:	00013403          	ld	s0,0(sp)
   10848:	01010113          	addi	sp,sp,16
   1084c:	00008067          	jalr	zero,0(ra)
   10850:	80050713          	addi	a4,a0,-2048
   10854:	80070713          	addi	a4,a4,-2048 # 800 <exit-0xf920>
   10858:	00e7f7b3          	and	a5,a5,a4
   1085c:	00813083          	ld	ra,8(sp)
   10860:	00f41823          	sh	a5,16(s0)
   10864:	00013403          	ld	s0,0(sp)
   10868:	01010113          	addi	sp,sp,16
   1086c:	00008067          	jalr	zero,0(ra)

0000000000010870 <__sclose>:
   10870:	01259583          	lh	a1,18(a1)
   10874:	0040006f          	jal	zero,10878 <_close_r>

0000000000010878 <_close_r>:
   10878:	fe010113          	addi	sp,sp,-32
   1087c:	00813823          	sd	s0,16(sp)
   10880:	00913423          	sd	s1,8(sp)
   10884:	00050493          	addi	s1,a0,0
   10888:	00058513          	addi	a0,a1,0
   1088c:	00113c23          	sd	ra,24(sp)
   10890:	2401a023          	sw	zero,576(gp) # 20688 <errno>
   10894:	7a50a0ef          	jal	ra,1b838 <_close>
   10898:	fff00793          	addi	a5,zero,-1
   1089c:	00f50c63          	beq	a0,a5,108b4 <_close_r+0x3c>
   108a0:	01813083          	ld	ra,24(sp)
   108a4:	01013403          	ld	s0,16(sp)
   108a8:	00813483          	ld	s1,8(sp)
   108ac:	02010113          	addi	sp,sp,32
   108b0:	00008067          	jalr	zero,0(ra)
   108b4:	2401a783          	lw	a5,576(gp) # 20688 <errno>
   108b8:	fe0784e3          	beq	a5,zero,108a0 <_close_r+0x28>
   108bc:	01813083          	ld	ra,24(sp)
   108c0:	01013403          	ld	s0,16(sp)
   108c4:	00f4a023          	sw	a5,0(s1)
   108c8:	00813483          	ld	s1,8(sp)
   108cc:	02010113          	addi	sp,sp,32
   108d0:	00008067          	jalr	zero,0(ra)

00000000000108d4 <_reclaim_reent>:
   108d4:	2201b783          	ld	a5,544(gp) # 20668 <_impure_ptr>
   108d8:	0ca78e63          	beq	a5,a0,109b4 <_reclaim_reent+0xe0>
   108dc:	06853583          	ld	a1,104(a0)
   108e0:	fd010113          	addi	sp,sp,-48
   108e4:	00913c23          	sd	s1,24(sp)
   108e8:	02113423          	sd	ra,40(sp)
   108ec:	02813023          	sd	s0,32(sp)
   108f0:	00050493          	addi	s1,a0,0
   108f4:	04058863          	beq	a1,zero,10944 <_reclaim_reent+0x70>
   108f8:	01213823          	sd	s2,16(sp)
   108fc:	01313423          	sd	s3,8(sp)
   10900:	00000913          	addi	s2,zero,0
   10904:	20000993          	addi	s3,zero,512
   10908:	012587b3          	add	a5,a1,s2
   1090c:	0007b403          	ld	s0,0(a5)
   10910:	00040e63          	beq	s0,zero,1092c <_reclaim_reent+0x58>
   10914:	00040593          	addi	a1,s0,0
   10918:	00043403          	ld	s0,0(s0)
   1091c:	00048513          	addi	a0,s1,0
   10920:	5b0000ef          	jal	ra,10ed0 <_free_r>
   10924:	fe0418e3          	bne	s0,zero,10914 <_reclaim_reent+0x40>
   10928:	0684b583          	ld	a1,104(s1)
   1092c:	00890913          	addi	s2,s2,8
   10930:	fd391ce3          	bne	s2,s3,10908 <_reclaim_reent+0x34>
   10934:	00048513          	addi	a0,s1,0
   10938:	598000ef          	jal	ra,10ed0 <_free_r>
   1093c:	01013903          	ld	s2,16(sp)
   10940:	00813983          	ld	s3,8(sp)
   10944:	0504b583          	ld	a1,80(s1)
   10948:	00058663          	beq	a1,zero,10954 <_reclaim_reent+0x80>
   1094c:	00048513          	addi	a0,s1,0
   10950:	580000ef          	jal	ra,10ed0 <_free_r>
   10954:	0604b403          	ld	s0,96(s1)
   10958:	00040c63          	beq	s0,zero,10970 <_reclaim_reent+0x9c>
   1095c:	00040593          	addi	a1,s0,0
   10960:	00043403          	ld	s0,0(s0)
   10964:	00048513          	addi	a0,s1,0
   10968:	568000ef          	jal	ra,10ed0 <_free_r>
   1096c:	fe0418e3          	bne	s0,zero,1095c <_reclaim_reent+0x88>
   10970:	0784b583          	ld	a1,120(s1)
   10974:	00058663          	beq	a1,zero,10980 <_reclaim_reent+0xac>
   10978:	00048513          	addi	a0,s1,0
   1097c:	554000ef          	jal	ra,10ed0 <_free_r>
   10980:	0484b783          	ld	a5,72(s1)
   10984:	00078e63          	beq	a5,zero,109a0 <_reclaim_reent+0xcc>
   10988:	02013403          	ld	s0,32(sp)
   1098c:	02813083          	ld	ra,40(sp)
   10990:	00048513          	addi	a0,s1,0
   10994:	01813483          	ld	s1,24(sp)
   10998:	03010113          	addi	sp,sp,48
   1099c:	00078067          	jalr	zero,0(a5)
   109a0:	02813083          	ld	ra,40(sp)
   109a4:	02013403          	ld	s0,32(sp)
   109a8:	01813483          	ld	s1,24(sp)
   109ac:	03010113          	addi	sp,sp,48
   109b0:	00008067          	jalr	zero,0(ra)
   109b4:	00008067          	jalr	zero,0(ra)

00000000000109b8 <_lseek_r>:
   109b8:	fe010113          	addi	sp,sp,-32
   109bc:	00058793          	addi	a5,a1,0
   109c0:	00813823          	sd	s0,16(sp)
   109c4:	00913423          	sd	s1,8(sp)
   109c8:	00060593          	addi	a1,a2,0
   109cc:	00050493          	addi	s1,a0,0
   109d0:	00068613          	addi	a2,a3,0
   109d4:	00078513          	addi	a0,a5,0
   109d8:	00113c23          	sd	ra,24(sp)
   109dc:	2401a023          	sw	zero,576(gp) # 20688 <errno>
   109e0:	79d0a0ef          	jal	ra,1b97c <_lseek>
   109e4:	fff00793          	addi	a5,zero,-1
   109e8:	00f50c63          	beq	a0,a5,10a00 <_lseek_r+0x48>
   109ec:	01813083          	ld	ra,24(sp)
   109f0:	01013403          	ld	s0,16(sp)
   109f4:	00813483          	ld	s1,8(sp)
   109f8:	02010113          	addi	sp,sp,32
   109fc:	00008067          	jalr	zero,0(ra)
   10a00:	2401a783          	lw	a5,576(gp) # 20688 <errno>
   10a04:	fe0784e3          	beq	a5,zero,109ec <_lseek_r+0x34>
   10a08:	01813083          	ld	ra,24(sp)
   10a0c:	01013403          	ld	s0,16(sp)
   10a10:	00f4a023          	sw	a5,0(s1)
   10a14:	00813483          	ld	s1,8(sp)
   10a18:	02010113          	addi	sp,sp,32
   10a1c:	00008067          	jalr	zero,0(ra)

0000000000010a20 <_read_r>:
   10a20:	fe010113          	addi	sp,sp,-32
   10a24:	00058793          	addi	a5,a1,0
   10a28:	00813823          	sd	s0,16(sp)
   10a2c:	00913423          	sd	s1,8(sp)
   10a30:	00060593          	addi	a1,a2,0
   10a34:	00050493          	addi	s1,a0,0
   10a38:	00068613          	addi	a2,a3,0
   10a3c:	00078513          	addi	a0,a5,0
   10a40:	00113c23          	sd	ra,24(sp)
   10a44:	2401a023          	sw	zero,576(gp) # 20688 <errno>
   10a48:	7750a0ef          	jal	ra,1b9bc <_read>
   10a4c:	fff00793          	addi	a5,zero,-1
   10a50:	00f50c63          	beq	a0,a5,10a68 <_read_r+0x48>
   10a54:	01813083          	ld	ra,24(sp)
   10a58:	01013403          	ld	s0,16(sp)
   10a5c:	00813483          	ld	s1,8(sp)
   10a60:	02010113          	addi	sp,sp,32
   10a64:	00008067          	jalr	zero,0(ra)
   10a68:	2401a783          	lw	a5,576(gp) # 20688 <errno>
   10a6c:	fe0784e3          	beq	a5,zero,10a54 <_read_r+0x34>
   10a70:	01813083          	ld	ra,24(sp)
   10a74:	01013403          	ld	s0,16(sp)
   10a78:	00f4a023          	sw	a5,0(s1)
   10a7c:	00813483          	ld	s1,8(sp)
   10a80:	02010113          	addi	sp,sp,32
   10a84:	00008067          	jalr	zero,0(ra)

0000000000010a88 <_write_r>:
   10a88:	fe010113          	addi	sp,sp,-32
   10a8c:	00058793          	addi	a5,a1,0
   10a90:	00813823          	sd	s0,16(sp)
   10a94:	00913423          	sd	s1,8(sp)
   10a98:	00060593          	addi	a1,a2,0
   10a9c:	00050493          	addi	s1,a0,0
   10aa0:	00068613          	addi	a2,a3,0
   10aa4:	00078513          	addi	a0,a5,0
   10aa8:	00113c23          	sd	ra,24(sp)
   10aac:	2401a023          	sw	zero,576(gp) # 20688 <errno>
   10ab0:	7c50a0ef          	jal	ra,1ba74 <_write>
   10ab4:	fff00793          	addi	a5,zero,-1
   10ab8:	00f50c63          	beq	a0,a5,10ad0 <_write_r+0x48>
   10abc:	01813083          	ld	ra,24(sp)
   10ac0:	01013403          	ld	s0,16(sp)
   10ac4:	00813483          	ld	s1,8(sp)
   10ac8:	02010113          	addi	sp,sp,32
   10acc:	00008067          	jalr	zero,0(ra)
   10ad0:	2401a783          	lw	a5,576(gp) # 20688 <errno>
   10ad4:	fe0784e3          	beq	a5,zero,10abc <_write_r+0x34>
   10ad8:	01813083          	ld	ra,24(sp)
   10adc:	01013403          	ld	s0,16(sp)
   10ae0:	00f4a023          	sw	a5,0(s1)
   10ae4:	00813483          	ld	s1,8(sp)
   10ae8:	02010113          	addi	sp,sp,32
   10aec:	00008067          	jalr	zero,0(ra)

0000000000010af0 <__libc_init_array>:
   10af0:	fe010113          	addi	sp,sp,-32
   10af4:	00813823          	sd	s0,16(sp)
   10af8:	01213023          	sd	s2,0(sp)
   10afc:	00020437          	lui	s0,0x20
   10b00:	00020937          	lui	s2,0x20
   10b04:	00113c23          	sd	ra,24(sp)
   10b08:	00913423          	sd	s1,8(sp)
   10b0c:	ab490913          	addi	s2,s2,-1356 # 1fab4 <__preinit_array_end>
   10b10:	ab440413          	addi	s0,s0,-1356 # 1fab4 <__preinit_array_end>
   10b14:	02890263          	beq	s2,s0,10b38 <__libc_init_array+0x48>
   10b18:	40890933          	sub	s2,s2,s0
   10b1c:	40395913          	srai	s2,s2,0x3
   10b20:	00000493          	addi	s1,zero,0
   10b24:	00043783          	ld	a5,0(s0)
   10b28:	00148493          	addi	s1,s1,1
   10b2c:	00840413          	addi	s0,s0,8
   10b30:	000780e7          	jalr	ra,0(a5)
   10b34:	ff24e8e3          	bltu	s1,s2,10b24 <__libc_init_array+0x34>
   10b38:	00020937          	lui	s2,0x20
   10b3c:	00020437          	lui	s0,0x20
   10b40:	ac890913          	addi	s2,s2,-1336 # 1fac8 <__do_global_dtors_aux_fini_array_entry>
   10b44:	ab840413          	addi	s0,s0,-1352 # 1fab8 <__init_array_start>
   10b48:	02890263          	beq	s2,s0,10b6c <__libc_init_array+0x7c>
   10b4c:	40890933          	sub	s2,s2,s0
   10b50:	40395913          	srai	s2,s2,0x3
   10b54:	00000493          	addi	s1,zero,0
   10b58:	00043783          	ld	a5,0(s0)
   10b5c:	00148493          	addi	s1,s1,1
   10b60:	00840413          	addi	s0,s0,8
   10b64:	000780e7          	jalr	ra,0(a5)
   10b68:	ff24e8e3          	bltu	s1,s2,10b58 <__libc_init_array+0x68>
   10b6c:	01813083          	ld	ra,24(sp)
   10b70:	01013403          	ld	s0,16(sp)
   10b74:	00813483          	ld	s1,8(sp)
   10b78:	00013903          	ld	s2,0(sp)
   10b7c:	02010113          	addi	sp,sp,32
   10b80:	00008067          	jalr	zero,0(ra)

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

0000000000010c60 <__call_exitprocs>:
   10c60:	fb010113          	addi	sp,sp,-80
   10c64:	03413023          	sd	s4,32(sp)
   10c68:	03213823          	sd	s2,48(sp)
   10c6c:	2481b903          	ld	s2,584(gp) # 20690 <__atexit>
   10c70:	04113423          	sd	ra,72(sp)
   10c74:	06090e63          	beq	s2,zero,10cf0 <__call_exitprocs+0x90>
   10c78:	03313423          	sd	s3,40(sp)
   10c7c:	01513c23          	sd	s5,24(sp)
   10c80:	01613823          	sd	s6,16(sp)
   10c84:	01713423          	sd	s7,8(sp)
   10c88:	04813023          	sd	s0,64(sp)
   10c8c:	02913c23          	sd	s1,56(sp)
   10c90:	01813023          	sd	s8,0(sp)
   10c94:	00050b13          	addi	s6,a0,0
   10c98:	00058b93          	addi	s7,a1,0
   10c9c:	fff00993          	addi	s3,zero,-1
   10ca0:	00100a93          	addi	s5,zero,1
   10ca4:	00892403          	lw	s0,8(s2)
   10ca8:	fff4041b          	addiw	s0,s0,-1
   10cac:	02044463          	blt	s0,zero,10cd4 <__call_exitprocs+0x74>
   10cb0:	01090493          	addi	s1,s2,16
   10cb4:	00341793          	slli	a5,s0,0x3
   10cb8:	00f484b3          	add	s1,s1,a5
   10cbc:	040b8463          	beq	s7,zero,10d04 <__call_exitprocs+0xa4>
   10cc0:	2004b783          	ld	a5,512(s1)
   10cc4:	05778063          	beq	a5,s7,10d04 <__call_exitprocs+0xa4>
   10cc8:	fff4041b          	addiw	s0,s0,-1
   10ccc:	ff848493          	addi	s1,s1,-8
   10cd0:	ff3418e3          	bne	s0,s3,10cc0 <__call_exitprocs+0x60>
   10cd4:	04013403          	ld	s0,64(sp)
   10cd8:	03813483          	ld	s1,56(sp)
   10cdc:	02813983          	ld	s3,40(sp)
   10ce0:	01813a83          	ld	s5,24(sp)
   10ce4:	01013b03          	ld	s6,16(sp)
   10ce8:	00813b83          	ld	s7,8(sp)
   10cec:	00013c03          	ld	s8,0(sp)
   10cf0:	04813083          	ld	ra,72(sp)
   10cf4:	03013903          	ld	s2,48(sp)
   10cf8:	02013a03          	ld	s4,32(sp)
   10cfc:	05010113          	addi	sp,sp,80
   10d00:	00008067          	jalr	zero,0(ra)
   10d04:	00892783          	lw	a5,8(s2)
   10d08:	0004b683          	ld	a3,0(s1)
   10d0c:	fff7879b          	addiw	a5,a5,-1
   10d10:	06878a63          	beq	a5,s0,10d84 <__call_exitprocs+0x124>
   10d14:	0004b023          	sd	zero,0(s1)
   10d18:	02068663          	beq	a3,zero,10d44 <__call_exitprocs+0xe4>
   10d1c:	31092783          	lw	a5,784(s2)
   10d20:	008a973b          	sllw	a4,s5,s0
   10d24:	00892c03          	lw	s8,8(s2)
   10d28:	00e7f7b3          	and	a5,a5,a4
   10d2c:	02079463          	bne	a5,zero,10d54 <__call_exitprocs+0xf4>
   10d30:	000680e7          	jalr	ra,0(a3)
   10d34:	00892703          	lw	a4,8(s2)
   10d38:	2481b783          	ld	a5,584(gp) # 20690 <__atexit>
   10d3c:	03871e63          	bne	a4,s8,10d78 <__call_exitprocs+0x118>
   10d40:	03279c63          	bne	a5,s2,10d78 <__call_exitprocs+0x118>
   10d44:	fff4041b          	addiw	s0,s0,-1
   10d48:	ff848493          	addi	s1,s1,-8
   10d4c:	f73418e3          	bne	s0,s3,10cbc <__call_exitprocs+0x5c>
   10d50:	f85ff06f          	jal	zero,10cd4 <__call_exitprocs+0x74>
   10d54:	31492783          	lw	a5,788(s2)
   10d58:	1004b583          	ld	a1,256(s1)
   10d5c:	00f77733          	and	a4,a4,a5
   10d60:	02071663          	bne	a4,zero,10d8c <__call_exitprocs+0x12c>
   10d64:	000b0513          	addi	a0,s6,0
   10d68:	000680e7          	jalr	ra,0(a3)
   10d6c:	00892703          	lw	a4,8(s2)
   10d70:	2481b783          	ld	a5,584(gp) # 20690 <__atexit>
   10d74:	fd8706e3          	beq	a4,s8,10d40 <__call_exitprocs+0xe0>
   10d78:	f4078ee3          	beq	a5,zero,10cd4 <__call_exitprocs+0x74>
   10d7c:	00078913          	addi	s2,a5,0
   10d80:	f25ff06f          	jal	zero,10ca4 <__call_exitprocs+0x44>
   10d84:	00892423          	sw	s0,8(s2)
   10d88:	f91ff06f          	jal	zero,10d18 <__call_exitprocs+0xb8>
   10d8c:	00058513          	addi	a0,a1,0
   10d90:	000680e7          	jalr	ra,0(a3)
   10d94:	fa1ff06f          	jal	zero,10d34 <__call_exitprocs+0xd4>

0000000000010d98 <atexit>:
   10d98:	00050593          	addi	a1,a0,0
   10d9c:	00000693          	addi	a3,zero,0
   10da0:	00000613          	addi	a2,zero,0
   10da4:	00000513          	addi	a0,zero,0
   10da8:	54d0406f          	jal	zero,15af4 <__register_exitproc>

0000000000010dac <_malloc_trim_r>:
   10dac:	fd010113          	addi	sp,sp,-48
   10db0:	01213823          	sd	s2,16(sp)
   10db4:	00020937          	lui	s2,0x20
   10db8:	02813023          	sd	s0,32(sp)
   10dbc:	00913c23          	sd	s1,24(sp)
   10dc0:	01313423          	sd	s3,8(sp)
   10dc4:	00058413          	addi	s0,a1,0
   10dc8:	02113423          	sd	ra,40(sp)
   10dcc:	00050993          	addi	s3,a0,0
   10dd0:	c4090913          	addi	s2,s2,-960 # 1fc40 <__malloc_av_>
   10dd4:	4e5000ef          	jal	ra,11ab8 <__malloc_lock>
   10dd8:	01093783          	ld	a5,16(s2)
   10ddc:	00001737          	lui	a4,0x1
   10de0:	0087b483          	ld	s1,8(a5)
   10de4:	ffc4f493          	andi	s1,s1,-4
   10de8:	7ff48793          	addi	a5,s1,2047
   10dec:	7e078793          	addi	a5,a5,2016
   10df0:	40878433          	sub	s0,a5,s0
   10df4:	00c45413          	srli	s0,s0,0xc
   10df8:	fff40413          	addi	s0,s0,-1
   10dfc:	00c41413          	slli	s0,s0,0xc
   10e00:	00e44e63          	blt	s0,a4,10e1c <_malloc_trim_r+0x70>
   10e04:	00000593          	addi	a1,zero,0
   10e08:	00098513          	addi	a0,s3,0
   10e0c:	00d040ef          	jal	ra,15618 <_sbrk_r>
   10e10:	01093783          	ld	a5,16(s2)
   10e14:	009787b3          	add	a5,a5,s1
   10e18:	02f50663          	beq	a0,a5,10e44 <_malloc_trim_r+0x98>
   10e1c:	00098513          	addi	a0,s3,0
   10e20:	49d000ef          	jal	ra,11abc <__malloc_unlock>
   10e24:	02813083          	ld	ra,40(sp)
   10e28:	02013403          	ld	s0,32(sp)
   10e2c:	01813483          	ld	s1,24(sp)
   10e30:	01013903          	ld	s2,16(sp)
   10e34:	00813983          	ld	s3,8(sp)
   10e38:	00000513          	addi	a0,zero,0
   10e3c:	03010113          	addi	sp,sp,48
   10e40:	00008067          	jalr	zero,0(ra)
   10e44:	408005b3          	sub	a1,zero,s0
   10e48:	00098513          	addi	a0,s3,0
   10e4c:	7cc040ef          	jal	ra,15618 <_sbrk_r>
   10e50:	fff00793          	addi	a5,zero,-1
   10e54:	04f50463          	beq	a0,a5,10e9c <_malloc_trim_r+0xf0>
   10e58:	01093683          	ld	a3,16(s2)
   10e5c:	4c01a783          	lw	a5,1216(gp) # 20908 <__malloc_current_mallinfo>
   10e60:	408484b3          	sub	s1,s1,s0
   10e64:	0014e493          	ori	s1,s1,1
   10e68:	00098513          	addi	a0,s3,0
   10e6c:	408787bb          	subw	a5,a5,s0
   10e70:	0096b423          	sd	s1,8(a3)
   10e74:	4cf1a023          	sw	a5,1216(gp) # 20908 <__malloc_current_mallinfo>
   10e78:	445000ef          	jal	ra,11abc <__malloc_unlock>
   10e7c:	02813083          	ld	ra,40(sp)
   10e80:	02013403          	ld	s0,32(sp)
   10e84:	01813483          	ld	s1,24(sp)
   10e88:	01013903          	ld	s2,16(sp)
   10e8c:	00813983          	ld	s3,8(sp)
   10e90:	00100513          	addi	a0,zero,1
   10e94:	03010113          	addi	sp,sp,48
   10e98:	00008067          	jalr	zero,0(ra)
   10e9c:	00000593          	addi	a1,zero,0
   10ea0:	00098513          	addi	a0,s3,0
   10ea4:	774040ef          	jal	ra,15618 <_sbrk_r>
   10ea8:	01093703          	ld	a4,16(s2)
   10eac:	01f00693          	addi	a3,zero,31
   10eb0:	40e507b3          	sub	a5,a0,a4
   10eb4:	f6f6d4e3          	bge	a3,a5,10e1c <_malloc_trim_r+0x70>
   10eb8:	2281b603          	ld	a2,552(gp) # 20670 <__malloc_sbrk_base>
   10ebc:	0017e793          	ori	a5,a5,1
   10ec0:	40c50533          	sub	a0,a0,a2
   10ec4:	00f73423          	sd	a5,8(a4) # 1008 <exit-0xf118>
   10ec8:	4ca1a023          	sw	a0,1216(gp) # 20908 <__malloc_current_mallinfo>
   10ecc:	f51ff06f          	jal	zero,10e1c <_malloc_trim_r+0x70>

0000000000010ed0 <_free_r>:
   10ed0:	12058863          	beq	a1,zero,11000 <_free_r+0x130>
   10ed4:	fe010113          	addi	sp,sp,-32
   10ed8:	00813823          	sd	s0,16(sp)
   10edc:	00b13423          	sd	a1,8(sp)
   10ee0:	00050413          	addi	s0,a0,0
   10ee4:	00113c23          	sd	ra,24(sp)
   10ee8:	3d1000ef          	jal	ra,11ab8 <__malloc_lock>
   10eec:	00813583          	ld	a1,8(sp)
   10ef0:	00020837          	lui	a6,0x20
   10ef4:	c4080813          	addi	a6,a6,-960 # 1fc40 <__malloc_av_>
   10ef8:	ff85b503          	ld	a0,-8(a1)
   10efc:	ff058713          	addi	a4,a1,-16
   10f00:	01083883          	ld	a7,16(a6)
   10f04:	ffe57793          	andi	a5,a0,-2
   10f08:	00f70633          	add	a2,a4,a5
   10f0c:	00863683          	ld	a3,8(a2)
   10f10:	00157313          	andi	t1,a0,1
   10f14:	ffc6f693          	andi	a3,a3,-4
   10f18:	18c88e63          	beq	a7,a2,110b4 <_free_r+0x1e4>
   10f1c:	00d63423          	sd	a3,8(a2)
   10f20:	00d608b3          	add	a7,a2,a3
   10f24:	0088b883          	ld	a7,8(a7)
   10f28:	0018f893          	andi	a7,a7,1
   10f2c:	08031e63          	bne	t1,zero,10fc8 <_free_r+0xf8>
   10f30:	ff05b303          	ld	t1,-16(a1)
   10f34:	000205b7          	lui	a1,0x20
   10f38:	c5058593          	addi	a1,a1,-944 # 1fc50 <__malloc_av_+0x10>
   10f3c:	40670733          	sub	a4,a4,t1
   10f40:	01073503          	ld	a0,16(a4)
   10f44:	006787b3          	add	a5,a5,t1
   10f48:	14b50063          	beq	a0,a1,11088 <_free_r+0x1b8>
   10f4c:	01873303          	ld	t1,24(a4)
   10f50:	00653c23          	sd	t1,24(a0)
   10f54:	00a33823          	sd	a0,16(t1)
   10f58:	1a088263          	beq	a7,zero,110fc <_free_r+0x22c>
   10f5c:	0017e693          	ori	a3,a5,1
   10f60:	00d73423          	sd	a3,8(a4)
   10f64:	00f63023          	sd	a5,0(a2)
   10f68:	1ff00693          	addi	a3,zero,511
   10f6c:	0af6e663          	bltu	a3,a5,11018 <_free_r+0x148>
   10f70:	0037d793          	srli	a5,a5,0x3
   10f74:	00179693          	slli	a3,a5,0x1
   10f78:	0026869b          	addiw	a3,a3,2
   10f7c:	00369693          	slli	a3,a3,0x3
   10f80:	00883503          	ld	a0,8(a6)
   10f84:	00d806b3          	add	a3,a6,a3
   10f88:	0006b583          	ld	a1,0(a3)
   10f8c:	4027d61b          	sraiw	a2,a5,0x2
   10f90:	00100793          	addi	a5,zero,1
   10f94:	00c797b3          	sll	a5,a5,a2
   10f98:	00a7e7b3          	or	a5,a5,a0
   10f9c:	ff068613          	addi	a2,a3,-16
   10fa0:	00b73823          	sd	a1,16(a4)
   10fa4:	00c73c23          	sd	a2,24(a4)
   10fa8:	00f83423          	sd	a5,8(a6)
   10fac:	00e6b023          	sd	a4,0(a3)
   10fb0:	00e5bc23          	sd	a4,24(a1)
   10fb4:	00040513          	addi	a0,s0,0
   10fb8:	01013403          	ld	s0,16(sp)
   10fbc:	01813083          	ld	ra,24(sp)
   10fc0:	02010113          	addi	sp,sp,32
   10fc4:	2f90006f          	jal	zero,11abc <__malloc_unlock>
   10fc8:	02089e63          	bne	a7,zero,11004 <_free_r+0x134>
   10fcc:	000205b7          	lui	a1,0x20
   10fd0:	00d787b3          	add	a5,a5,a3
   10fd4:	c5058593          	addi	a1,a1,-944 # 1fc50 <__malloc_av_+0x10>
   10fd8:	01063683          	ld	a3,16(a2)
   10fdc:	0017e893          	ori	a7,a5,1
   10fe0:	00f70533          	add	a0,a4,a5
   10fe4:	16b68663          	beq	a3,a1,11150 <_free_r+0x280>
   10fe8:	01863603          	ld	a2,24(a2)
   10fec:	00c6bc23          	sd	a2,24(a3)
   10ff0:	00d63823          	sd	a3,16(a2)
   10ff4:	01173423          	sd	a7,8(a4)
   10ff8:	00f53023          	sd	a5,0(a0)
   10ffc:	f6dff06f          	jal	zero,10f68 <_free_r+0x98>
   11000:	00008067          	jalr	zero,0(ra)
   11004:	00156513          	ori	a0,a0,1
   11008:	fea5bc23          	sd	a0,-8(a1)
   1100c:	00f63023          	sd	a5,0(a2)
   11010:	1ff00693          	addi	a3,zero,511
   11014:	f4f6fee3          	bgeu	a3,a5,10f70 <_free_r+0xa0>
   11018:	0097d693          	srli	a3,a5,0x9
   1101c:	00400613          	addi	a2,zero,4
   11020:	0ed66263          	bltu	a2,a3,11104 <_free_r+0x234>
   11024:	0067d693          	srli	a3,a5,0x6
   11028:	00169593          	slli	a1,a3,0x1
   1102c:	0725859b          	addiw	a1,a1,114
   11030:	00359593          	slli	a1,a1,0x3
   11034:	0386861b          	addiw	a2,a3,56
   11038:	00b805b3          	add	a1,a6,a1
   1103c:	0005b683          	ld	a3,0(a1)
   11040:	ff058593          	addi	a1,a1,-16
   11044:	00d59863          	bne	a1,a3,11054 <_free_r+0x184>
   11048:	1240006f          	jal	zero,1116c <_free_r+0x29c>
   1104c:	0106b683          	ld	a3,16(a3)
   11050:	00d58863          	beq	a1,a3,11060 <_free_r+0x190>
   11054:	0086b603          	ld	a2,8(a3)
   11058:	ffc67613          	andi	a2,a2,-4
   1105c:	fec7e8e3          	bltu	a5,a2,1104c <_free_r+0x17c>
   11060:	0186b583          	ld	a1,24(a3)
   11064:	00b73c23          	sd	a1,24(a4)
   11068:	00d73823          	sd	a3,16(a4)
   1106c:	00040513          	addi	a0,s0,0
   11070:	01013403          	ld	s0,16(sp)
   11074:	01813083          	ld	ra,24(sp)
   11078:	00e5b823          	sd	a4,16(a1)
   1107c:	00e6bc23          	sd	a4,24(a3)
   11080:	02010113          	addi	sp,sp,32
   11084:	2390006f          	jal	zero,11abc <__malloc_unlock>
   11088:	0a089263          	bne	a7,zero,1112c <_free_r+0x25c>
   1108c:	01863583          	ld	a1,24(a2)
   11090:	01063603          	ld	a2,16(a2)
   11094:	00f686b3          	add	a3,a3,a5
   11098:	0016e793          	ori	a5,a3,1
   1109c:	00b63c23          	sd	a1,24(a2)
   110a0:	00c5b823          	sd	a2,16(a1)
   110a4:	00f73423          	sd	a5,8(a4)
   110a8:	00d70733          	add	a4,a4,a3
   110ac:	00d73023          	sd	a3,0(a4)
   110b0:	f05ff06f          	jal	zero,10fb4 <_free_r+0xe4>
   110b4:	00d786b3          	add	a3,a5,a3
   110b8:	02031063          	bne	t1,zero,110d8 <_free_r+0x208>
   110bc:	ff05b783          	ld	a5,-16(a1)
   110c0:	40f70733          	sub	a4,a4,a5
   110c4:	01073603          	ld	a2,16(a4)
   110c8:	00f686b3          	add	a3,a3,a5
   110cc:	01873783          	ld	a5,24(a4)
   110d0:	00f63c23          	sd	a5,24(a2)
   110d4:	00c7b823          	sd	a2,16(a5)
   110d8:	0016e613          	ori	a2,a3,1
   110dc:	2301b783          	ld	a5,560(gp) # 20678 <__malloc_trim_threshold>
   110e0:	00c73423          	sd	a2,8(a4)
   110e4:	00e83823          	sd	a4,16(a6)
   110e8:	ecf6e6e3          	bltu	a3,a5,10fb4 <_free_r+0xe4>
   110ec:	2601b583          	ld	a1,608(gp) # 206a8 <__malloc_top_pad>
   110f0:	00040513          	addi	a0,s0,0
   110f4:	cb9ff0ef          	jal	ra,10dac <_malloc_trim_r>
   110f8:	ebdff06f          	jal	zero,10fb4 <_free_r+0xe4>
   110fc:	00d787b3          	add	a5,a5,a3
   11100:	ed9ff06f          	jal	zero,10fd8 <_free_r+0x108>
   11104:	01400613          	addi	a2,zero,20
   11108:	02d67a63          	bgeu	a2,a3,1113c <_free_r+0x26c>
   1110c:	05400613          	addi	a2,zero,84
   11110:	06d66c63          	bltu	a2,a3,11188 <_free_r+0x2b8>
   11114:	00c7d693          	srli	a3,a5,0xc
   11118:	00169593          	slli	a1,a3,0x1
   1111c:	0de5859b          	addiw	a1,a1,222
   11120:	00359593          	slli	a1,a1,0x3
   11124:	06e6861b          	addiw	a2,a3,110
   11128:	f11ff06f          	jal	zero,11038 <_free_r+0x168>
   1112c:	0017e693          	ori	a3,a5,1
   11130:	00d73423          	sd	a3,8(a4)
   11134:	00f63023          	sd	a5,0(a2)
   11138:	e7dff06f          	jal	zero,10fb4 <_free_r+0xe4>
   1113c:	00169593          	slli	a1,a3,0x1
   11140:	0b85859b          	addiw	a1,a1,184
   11144:	00359593          	slli	a1,a1,0x3
   11148:	05b6861b          	addiw	a2,a3,91
   1114c:	eedff06f          	jal	zero,11038 <_free_r+0x168>
   11150:	02e83423          	sd	a4,40(a6)
   11154:	02e83023          	sd	a4,32(a6)
   11158:	00b73c23          	sd	a1,24(a4)
   1115c:	00b73823          	sd	a1,16(a4)
   11160:	01173423          	sd	a7,8(a4)
   11164:	00f53023          	sd	a5,0(a0)
   11168:	e4dff06f          	jal	zero,10fb4 <_free_r+0xe4>
   1116c:	00883503          	ld	a0,8(a6)
   11170:	4026561b          	sraiw	a2,a2,0x2
   11174:	00100793          	addi	a5,zero,1
   11178:	00c797b3          	sll	a5,a5,a2
   1117c:	00a7e7b3          	or	a5,a5,a0
   11180:	00f83423          	sd	a5,8(a6)
   11184:	ee1ff06f          	jal	zero,11064 <_free_r+0x194>
   11188:	15400613          	addi	a2,zero,340
   1118c:	00d66e63          	bltu	a2,a3,111a8 <_free_r+0x2d8>
   11190:	00f7d693          	srli	a3,a5,0xf
   11194:	00169593          	slli	a1,a3,0x1
   11198:	0f05859b          	addiw	a1,a1,240
   1119c:	00359593          	slli	a1,a1,0x3
   111a0:	0776861b          	addiw	a2,a3,119
   111a4:	e95ff06f          	jal	zero,11038 <_free_r+0x168>
   111a8:	55400613          	addi	a2,zero,1364
   111ac:	00d66e63          	bltu	a2,a3,111c8 <_free_r+0x2f8>
   111b0:	0127d693          	srli	a3,a5,0x12
   111b4:	00169593          	slli	a1,a3,0x1
   111b8:	0fa5859b          	addiw	a1,a1,250
   111bc:	00359593          	slli	a1,a1,0x3
   111c0:	07c6861b          	addiw	a2,a3,124
   111c4:	e75ff06f          	jal	zero,11038 <_free_r+0x168>
   111c8:	7f000593          	addi	a1,zero,2032
   111cc:	07e00613          	addi	a2,zero,126
   111d0:	e69ff06f          	jal	zero,11038 <_free_r+0x168>

00000000000111d4 <_malloc_r>:
   111d4:	fa010113          	addi	sp,sp,-96
   111d8:	04813823          	sd	s0,80(sp)
   111dc:	04113c23          	sd	ra,88(sp)
   111e0:	01758713          	addi	a4,a1,23
   111e4:	02e00793          	addi	a5,zero,46
   111e8:	00050413          	addi	s0,a0,0
   111ec:	08e7ee63          	bltu	a5,a4,11288 <_malloc_r+0xb4>
   111f0:	02000713          	addi	a4,zero,32
   111f4:	06b76c63          	bltu	a4,a1,1126c <_malloc_r+0x98>
   111f8:	0c1000ef          	jal	ra,11ab8 <__malloc_lock>
   111fc:	02000713          	addi	a4,zero,32
   11200:	05000693          	addi	a3,zero,80
   11204:	00400893          	addi	a7,zero,4
   11208:	00020837          	lui	a6,0x20
   1120c:	c4080813          	addi	a6,a6,-960 # 1fc40 <__malloc_av_>
   11210:	00d806b3          	add	a3,a6,a3
   11214:	0086b783          	ld	a5,8(a3)
   11218:	ff068613          	addi	a2,a3,-16
   1121c:	48c78063          	beq	a5,a2,1169c <_malloc_r+0x4c8>
   11220:	0087b703          	ld	a4,8(a5)
   11224:	0187b603          	ld	a2,24(a5)
   11228:	0107b583          	ld	a1,16(a5)
   1122c:	ffc77713          	andi	a4,a4,-4
   11230:	00e78733          	add	a4,a5,a4
   11234:	00873683          	ld	a3,8(a4)
   11238:	00c5bc23          	sd	a2,24(a1)
   1123c:	00b63823          	sd	a1,16(a2)
   11240:	0016e693          	ori	a3,a3,1
   11244:	00040513          	addi	a0,s0,0
   11248:	00d73423          	sd	a3,8(a4)
   1124c:	00f13423          	sd	a5,8(sp)
   11250:	06d000ef          	jal	ra,11abc <__malloc_unlock>
   11254:	00813783          	ld	a5,8(sp)
   11258:	05813083          	ld	ra,88(sp)
   1125c:	05013403          	ld	s0,80(sp)
   11260:	01078513          	addi	a0,a5,16
   11264:	06010113          	addi	sp,sp,96
   11268:	00008067          	jalr	zero,0(ra)
   1126c:	00c00793          	addi	a5,zero,12
   11270:	00f42023          	sw	a5,0(s0)
   11274:	00000513          	addi	a0,zero,0
   11278:	05813083          	ld	ra,88(sp)
   1127c:	05013403          	ld	s0,80(sp)
   11280:	06010113          	addi	sp,sp,96
   11284:	00008067          	jalr	zero,0(ra)
   11288:	00100793          	addi	a5,zero,1
   1128c:	ff077713          	andi	a4,a4,-16
   11290:	01f79793          	slli	a5,a5,0x1f
   11294:	fcf77ce3          	bgeu	a4,a5,1126c <_malloc_r+0x98>
   11298:	fcb76ae3          	bltu	a4,a1,1126c <_malloc_r+0x98>
   1129c:	00e13423          	sd	a4,8(sp)
   112a0:	019000ef          	jal	ra,11ab8 <__malloc_lock>
   112a4:	00813703          	ld	a4,8(sp)
   112a8:	1f700793          	addi	a5,zero,503
   112ac:	4ee7fa63          	bgeu	a5,a4,117a0 <_malloc_r+0x5cc>
   112b0:	00975793          	srli	a5,a4,0x9
   112b4:	18078a63          	beq	a5,zero,11448 <_malloc_r+0x274>
   112b8:	00400693          	addi	a3,zero,4
   112bc:	44f6ea63          	bltu	a3,a5,11710 <_malloc_r+0x53c>
   112c0:	00675793          	srli	a5,a4,0x6
   112c4:	0397889b          	addiw	a7,a5,57
   112c8:	0018951b          	slliw	a0,a7,0x1
   112cc:	03878e1b          	addiw	t3,a5,56
   112d0:	00351513          	slli	a0,a0,0x3
   112d4:	00020837          	lui	a6,0x20
   112d8:	c4080813          	addi	a6,a6,-960 # 1fc40 <__malloc_av_>
   112dc:	00a80533          	add	a0,a6,a0
   112e0:	00853783          	ld	a5,8(a0)
   112e4:	ff050513          	addi	a0,a0,-16
   112e8:	02f50863          	beq	a0,a5,11318 <_malloc_r+0x144>
   112ec:	01f00313          	addi	t1,zero,31
   112f0:	0140006f          	jal	zero,11304 <_malloc_r+0x130>
   112f4:	0187b583          	ld	a1,24(a5)
   112f8:	36065263          	bge	a2,zero,1165c <_malloc_r+0x488>
   112fc:	00b50e63          	beq	a0,a1,11318 <_malloc_r+0x144>
   11300:	00058793          	addi	a5,a1,0
   11304:	0087b683          	ld	a3,8(a5)
   11308:	ffc6f693          	andi	a3,a3,-4
   1130c:	40e68633          	sub	a2,a3,a4
   11310:	fec352e3          	bge	t1,a2,112f4 <_malloc_r+0x120>
   11314:	000e0893          	addi	a7,t3,0
   11318:	02083783          	ld	a5,32(a6)
   1131c:	00020e37          	lui	t3,0x20
   11320:	c50e0e13          	addi	t3,t3,-944 # 1fc50 <__malloc_av_+0x10>
   11324:	2fc78a63          	beq	a5,t3,11618 <_malloc_r+0x444>
   11328:	0087b303          	ld	t1,8(a5)
   1132c:	01f00613          	addi	a2,zero,31
   11330:	ffc37313          	andi	t1,t1,-4
   11334:	40e306b3          	sub	a3,t1,a4
   11338:	4ad64463          	blt	a2,a3,117e0 <_malloc_r+0x60c>
   1133c:	03c83423          	sd	t3,40(a6)
   11340:	03c83023          	sd	t3,32(a6)
   11344:	4606da63          	bge	a3,zero,117b8 <_malloc_r+0x5e4>
   11348:	1ff00693          	addi	a3,zero,511
   1134c:	00883583          	ld	a1,8(a6)
   11350:	3466ee63          	bltu	a3,t1,116ac <_malloc_r+0x4d8>
   11354:	00335313          	srli	t1,t1,0x3
   11358:	00131693          	slli	a3,t1,0x1
   1135c:	0026869b          	addiw	a3,a3,2
   11360:	00369693          	slli	a3,a3,0x3
   11364:	00d806b3          	add	a3,a6,a3
   11368:	0006b503          	ld	a0,0(a3)
   1136c:	4023531b          	sraiw	t1,t1,0x2
   11370:	00100613          	addi	a2,zero,1
   11374:	00661633          	sll	a2,a2,t1
   11378:	00c5e5b3          	or	a1,a1,a2
   1137c:	ff068613          	addi	a2,a3,-16
   11380:	00a7b823          	sd	a0,16(a5)
   11384:	00c7bc23          	sd	a2,24(a5)
   11388:	00b83423          	sd	a1,8(a6)
   1138c:	00f6b023          	sd	a5,0(a3)
   11390:	00f53c23          	sd	a5,24(a0)
   11394:	4028d79b          	sraiw	a5,a7,0x2
   11398:	00100513          	addi	a0,zero,1
   1139c:	00f51533          	sll	a0,a0,a5
   113a0:	0aa5ec63          	bltu	a1,a0,11458 <_malloc_r+0x284>
   113a4:	00b577b3          	and	a5,a0,a1
   113a8:	02079463          	bne	a5,zero,113d0 <_malloc_r+0x1fc>
   113ac:	00151513          	slli	a0,a0,0x1
   113b0:	ffc8f893          	andi	a7,a7,-4
   113b4:	00b577b3          	and	a5,a0,a1
   113b8:	0048889b          	addiw	a7,a7,4
   113bc:	00079a63          	bne	a5,zero,113d0 <_malloc_r+0x1fc>
   113c0:	00151513          	slli	a0,a0,0x1
   113c4:	00b577b3          	and	a5,a0,a1
   113c8:	0048889b          	addiw	a7,a7,4
   113cc:	fe078ae3          	beq	a5,zero,113c0 <_malloc_r+0x1ec>
   113d0:	01f00e93          	addi	t4,zero,31
   113d4:	00189f13          	slli	t5,a7,0x1
   113d8:	002f0f1b          	addiw	t5,t5,2
   113dc:	003f1f13          	slli	t5,t5,0x3
   113e0:	ff0f0f13          	addi	t5,t5,-16
   113e4:	01e80f33          	add	t5,a6,t5
   113e8:	000f0313          	addi	t1,t5,0
   113ec:	01833683          	ld	a3,24(t1)
   113f0:	00088f93          	addi	t6,a7,0
   113f4:	34d30263          	beq	t1,a3,11738 <_malloc_r+0x564>
   113f8:	0086b603          	ld	a2,8(a3)
   113fc:	00068793          	addi	a5,a3,0
   11400:	0186b683          	ld	a3,24(a3)
   11404:	ffc67613          	andi	a2,a2,-4
   11408:	40e605b3          	sub	a1,a2,a4
   1140c:	34bec263          	blt	t4,a1,11750 <_malloc_r+0x57c>
   11410:	fe05c2e3          	blt	a1,zero,113f4 <_malloc_r+0x220>
   11414:	00c78633          	add	a2,a5,a2
   11418:	00863703          	ld	a4,8(a2)
   1141c:	0107b583          	ld	a1,16(a5)
   11420:	00040513          	addi	a0,s0,0
   11424:	00176713          	ori	a4,a4,1
   11428:	00e63423          	sd	a4,8(a2)
   1142c:	00d5bc23          	sd	a3,24(a1)
   11430:	00b6b823          	sd	a1,16(a3)
   11434:	00f13423          	sd	a5,8(sp)
   11438:	684000ef          	jal	ra,11abc <__malloc_unlock>
   1143c:	00813783          	ld	a5,8(sp)
   11440:	01078513          	addi	a0,a5,16
   11444:	e35ff06f          	jal	zero,11278 <_malloc_r+0xa4>
   11448:	40000513          	addi	a0,zero,1024
   1144c:	04000893          	addi	a7,zero,64
   11450:	03f00e13          	addi	t3,zero,63
   11454:	e81ff06f          	jal	zero,112d4 <_malloc_r+0x100>
   11458:	01083783          	ld	a5,16(a6)
   1145c:	0087b683          	ld	a3,8(a5)
   11460:	ffc6f893          	andi	a7,a3,-4
   11464:	40e88633          	sub	a2,a7,a4
   11468:	00e8e663          	bltu	a7,a4,11474 <_malloc_r+0x2a0>
   1146c:	02062693          	slti	a3,a2,32
   11470:	1a068863          	beq	a3,zero,11620 <_malloc_r+0x44c>
   11474:	2601b583          	ld	a1,608(gp) # 206a8 <__malloc_top_pad>
   11478:	2281b603          	ld	a2,552(gp) # 20670 <__malloc_sbrk_base>
   1147c:	fff00693          	addi	a3,zero,-1
   11480:	00b705b3          	add	a1,a4,a1
   11484:	44d60663          	beq	a2,a3,118d0 <_malloc_r+0x6fc>
   11488:	000016b7          	lui	a3,0x1
   1148c:	01f68693          	addi	a3,a3,31 # 101f <exit-0xf101>
   11490:	00d585b3          	add	a1,a1,a3
   11494:	fffff6b7          	lui	a3,0xfffff
   11498:	00d5f5b3          	and	a1,a1,a3
   1149c:	00040513          	addi	a0,s0,0
   114a0:	03013423          	sd	a6,40(sp)
   114a4:	02f13023          	sd	a5,32(sp)
   114a8:	00e13c23          	sd	a4,24(sp)
   114ac:	01113823          	sd	a7,16(sp)
   114b0:	00b13423          	sd	a1,8(sp)
   114b4:	164040ef          	jal	ra,15618 <_sbrk_r>
   114b8:	fff00693          	addi	a3,zero,-1
   114bc:	00813583          	ld	a1,8(sp)
   114c0:	01013883          	ld	a7,16(sp)
   114c4:	01813703          	ld	a4,24(sp)
   114c8:	02013783          	ld	a5,32(sp)
   114cc:	02813803          	ld	a6,40(sp)
   114d0:	00050313          	addi	t1,a0,0
   114d4:	36d50663          	beq	a0,a3,11840 <_malloc_r+0x66c>
   114d8:	011786b3          	add	a3,a5,a7
   114dc:	36d56063          	bltu	a0,a3,1183c <_malloc_r+0x668>
   114e0:	4c018e13          	addi	t3,gp,1216 # 20908 <__malloc_current_mallinfo>
   114e4:	000e2603          	lw	a2,0(t3)
   114e8:	00b6063b          	addw	a2,a2,a1
   114ec:	00ce2023          	sw	a2,0(t3)
   114f0:	00060513          	addi	a0,a2,0
   114f4:	4a668c63          	beq	a3,t1,119ac <_malloc_r+0x7d8>
   114f8:	2281bf03          	ld	t5,552(gp) # 20670 <__malloc_sbrk_base>
   114fc:	fff00613          	addi	a2,zero,-1
   11500:	4ccf0463          	beq	t5,a2,119c8 <_malloc_r+0x7f4>
   11504:	40d306b3          	sub	a3,t1,a3
   11508:	00a686bb          	addw	a3,a3,a0
   1150c:	00de2023          	sw	a3,0(t3)
   11510:	00f37e93          	andi	t4,t1,15
   11514:	3c0e8e63          	beq	t4,zero,118f0 <_malloc_r+0x71c>
   11518:	ff037313          	andi	t1,t1,-16
   1151c:	000016b7          	lui	a3,0x1
   11520:	01030313          	addi	t1,t1,16
   11524:	01068693          	addi	a3,a3,16 # 1010 <exit-0xf110>
   11528:	00b30633          	add	a2,t1,a1
   1152c:	41d685b3          	sub	a1,a3,t4
   11530:	40c585b3          	sub	a1,a1,a2
   11534:	03459593          	slli	a1,a1,0x34
   11538:	0345d593          	srli	a1,a1,0x34
   1153c:	00040513          	addi	a0,s0,0
   11540:	05c13023          	sd	t3,64(sp)
   11544:	03013c23          	sd	a6,56(sp)
   11548:	02f13823          	sd	a5,48(sp)
   1154c:	02e13423          	sd	a4,40(sp)
   11550:	03113023          	sd	a7,32(sp)
   11554:	00613c23          	sd	t1,24(sp)
   11558:	01d13823          	sd	t4,16(sp)
   1155c:	00c13423          	sd	a2,8(sp)
   11560:	04b13423          	sd	a1,72(sp)
   11564:	0b4040ef          	jal	ra,15618 <_sbrk_r>
   11568:	00050693          	addi	a3,a0,0
   1156c:	fff00513          	addi	a0,zero,-1
   11570:	00813603          	ld	a2,8(sp)
   11574:	01013e83          	ld	t4,16(sp)
   11578:	01813303          	ld	t1,24(sp)
   1157c:	02013883          	ld	a7,32(sp)
   11580:	02813703          	ld	a4,40(sp)
   11584:	03013783          	ld	a5,48(sp)
   11588:	03813803          	ld	a6,56(sp)
   1158c:	04013e03          	ld	t3,64(sp)
   11590:	48a68663          	beq	a3,a0,11a1c <_malloc_r+0x848>
   11594:	04813583          	ld	a1,72(sp)
   11598:	0005851b          	addiw	a0,a1,0
   1159c:	000e2603          	lw	a2,0(t3)
   115a0:	406686b3          	sub	a3,a3,t1
   115a4:	00b686b3          	add	a3,a3,a1
   115a8:	0016e693          	ori	a3,a3,1
   115ac:	00683823          	sd	t1,16(a6)
   115b0:	00a6063b          	addw	a2,a2,a0
   115b4:	00d33423          	sd	a3,8(t1)
   115b8:	00ce2023          	sw	a2,0(t3)
   115bc:	03078e63          	beq	a5,a6,115f8 <_malloc_r+0x424>
   115c0:	01f00513          	addi	a0,zero,31
   115c4:	41157663          	bgeu	a0,a7,119d0 <_malloc_r+0x7fc>
   115c8:	0087b583          	ld	a1,8(a5)
   115cc:	fe888693          	addi	a3,a7,-24
   115d0:	ff06f693          	andi	a3,a3,-16
   115d4:	0015f593          	andi	a1,a1,1
   115d8:	00d5e5b3          	or	a1,a1,a3
   115dc:	00b7b423          	sd	a1,8(a5)
   115e0:	00900893          	addi	a7,zero,9
   115e4:	00d785b3          	add	a1,a5,a3
   115e8:	0115b423          	sd	a7,8(a1)
   115ec:	0115b823          	sd	a7,16(a1)
   115f0:	44d56863          	bltu	a0,a3,11a40 <_malloc_r+0x86c>
   115f4:	00833683          	ld	a3,8(t1)
   115f8:	2581b583          	ld	a1,600(gp) # 206a0 <__malloc_max_sbrked_mem>
   115fc:	00c5f463          	bgeu	a1,a2,11604 <_malloc_r+0x430>
   11600:	24c1bc23          	sd	a2,600(gp) # 206a0 <__malloc_max_sbrked_mem>
   11604:	2501b583          	ld	a1,592(gp) # 20698 <__malloc_max_total_mem>
   11608:	00c5f463          	bgeu	a1,a2,11610 <_malloc_r+0x43c>
   1160c:	24c1b823          	sd	a2,592(gp) # 20698 <__malloc_max_total_mem>
   11610:	00030793          	addi	a5,t1,0
   11614:	2340006f          	jal	zero,11848 <_malloc_r+0x674>
   11618:	00883583          	ld	a1,8(a6)
   1161c:	d79ff06f          	jal	zero,11394 <_malloc_r+0x1c0>
   11620:	00176693          	ori	a3,a4,1
   11624:	00d7b423          	sd	a3,8(a5)
   11628:	00e78733          	add	a4,a5,a4
   1162c:	00166613          	ori	a2,a2,1
   11630:	00e83823          	sd	a4,16(a6)
   11634:	00040513          	addi	a0,s0,0
   11638:	00c73423          	sd	a2,8(a4)
   1163c:	00f13423          	sd	a5,8(sp)
   11640:	47c000ef          	jal	ra,11abc <__malloc_unlock>
   11644:	00813783          	ld	a5,8(sp)
   11648:	05813083          	ld	ra,88(sp)
   1164c:	05013403          	ld	s0,80(sp)
   11650:	01078513          	addi	a0,a5,16
   11654:	06010113          	addi	sp,sp,96
   11658:	00008067          	jalr	zero,0(ra)
   1165c:	0107b603          	ld	a2,16(a5)
   11660:	00d786b3          	add	a3,a5,a3
   11664:	0086b703          	ld	a4,8(a3)
   11668:	00b63c23          	sd	a1,24(a2)
   1166c:	00c5b823          	sd	a2,16(a1)
   11670:	00176713          	ori	a4,a4,1
   11674:	00040513          	addi	a0,s0,0
   11678:	00e6b423          	sd	a4,8(a3)
   1167c:	00f13423          	sd	a5,8(sp)
   11680:	43c000ef          	jal	ra,11abc <__malloc_unlock>
   11684:	00813783          	ld	a5,8(sp)
   11688:	05813083          	ld	ra,88(sp)
   1168c:	05013403          	ld	s0,80(sp)
   11690:	01078513          	addi	a0,a5,16
   11694:	06010113          	addi	sp,sp,96
   11698:	00008067          	jalr	zero,0(ra)
   1169c:	0186b783          	ld	a5,24(a3)
   116a0:	0028889b          	addiw	a7,a7,2
   116a4:	c6f68ae3          	beq	a3,a5,11318 <_malloc_r+0x144>
   116a8:	b79ff06f          	jal	zero,11220 <_malloc_r+0x4c>
   116ac:	00935693          	srli	a3,t1,0x9
   116b0:	00400613          	addi	a2,zero,4
   116b4:	16d67863          	bgeu	a2,a3,11824 <_malloc_r+0x650>
   116b8:	01400613          	addi	a2,zero,20
   116bc:	28d66e63          	bltu	a2,a3,11958 <_malloc_r+0x784>
   116c0:	00169513          	slli	a0,a3,0x1
   116c4:	0b85051b          	addiw	a0,a0,184
   116c8:	00351513          	slli	a0,a0,0x3
   116cc:	05b6861b          	addiw	a2,a3,91
   116d0:	00a80533          	add	a0,a6,a0
   116d4:	00053683          	ld	a3,0(a0)
   116d8:	ff050513          	addi	a0,a0,-16
   116dc:	00d51863          	bne	a0,a3,116ec <_malloc_r+0x518>
   116e0:	1f80006f          	jal	zero,118d8 <_malloc_r+0x704>
   116e4:	0106b683          	ld	a3,16(a3)
   116e8:	00d50863          	beq	a0,a3,116f8 <_malloc_r+0x524>
   116ec:	0086b603          	ld	a2,8(a3)
   116f0:	ffc67613          	andi	a2,a2,-4
   116f4:	fec368e3          	bltu	t1,a2,116e4 <_malloc_r+0x510>
   116f8:	0186b503          	ld	a0,24(a3)
   116fc:	00a7bc23          	sd	a0,24(a5)
   11700:	00d7b823          	sd	a3,16(a5)
   11704:	00f53823          	sd	a5,16(a0)
   11708:	00f6bc23          	sd	a5,24(a3)
   1170c:	c89ff06f          	jal	zero,11394 <_malloc_r+0x1c0>
   11710:	01400693          	addi	a3,zero,20
   11714:	14f6fa63          	bgeu	a3,a5,11868 <_malloc_r+0x694>
   11718:	05400693          	addi	a3,zero,84
   1171c:	24f6ee63          	bltu	a3,a5,11978 <_malloc_r+0x7a4>
   11720:	00c75793          	srli	a5,a4,0xc
   11724:	06f7889b          	addiw	a7,a5,111
   11728:	0018951b          	slliw	a0,a7,0x1
   1172c:	06e78e1b          	addiw	t3,a5,110
   11730:	00351513          	slli	a0,a0,0x3
   11734:	ba1ff06f          	jal	zero,112d4 <_malloc_r+0x100>
   11738:	001f8f9b          	addiw	t6,t6,1
   1173c:	003ff793          	andi	a5,t6,3
   11740:	01030313          	addi	t1,t1,16
   11744:	14078263          	beq	a5,zero,11888 <_malloc_r+0x6b4>
   11748:	01833683          	ld	a3,24(t1)
   1174c:	ca9ff06f          	jal	zero,113f4 <_malloc_r+0x220>
   11750:	0107b503          	ld	a0,16(a5)
   11754:	00176893          	ori	a7,a4,1
   11758:	0117b423          	sd	a7,8(a5)
   1175c:	00d53c23          	sd	a3,24(a0)
   11760:	00a6b823          	sd	a0,16(a3)
   11764:	00e78733          	add	a4,a5,a4
   11768:	02e83423          	sd	a4,40(a6)
   1176c:	02e83023          	sd	a4,32(a6)
   11770:	0015e693          	ori	a3,a1,1
   11774:	00c78633          	add	a2,a5,a2
   11778:	01c73c23          	sd	t3,24(a4)
   1177c:	01c73823          	sd	t3,16(a4)
   11780:	00d73423          	sd	a3,8(a4)
   11784:	00040513          	addi	a0,s0,0
   11788:	00b63023          	sd	a1,0(a2)
   1178c:	00f13423          	sd	a5,8(sp)
   11790:	32c000ef          	jal	ra,11abc <__malloc_unlock>
   11794:	00813783          	ld	a5,8(sp)
   11798:	01078513          	addi	a0,a5,16
   1179c:	addff06f          	jal	zero,11278 <_malloc_r+0xa4>
   117a0:	00375893          	srli	a7,a4,0x3
   117a4:	00189693          	slli	a3,a7,0x1
   117a8:	0026869b          	addiw	a3,a3,2
   117ac:	00369693          	slli	a3,a3,0x3
   117b0:	0008889b          	addiw	a7,a7,0
   117b4:	a55ff06f          	jal	zero,11208 <_malloc_r+0x34>
   117b8:	00678333          	add	t1,a5,t1
   117bc:	00833703          	ld	a4,8(t1)
   117c0:	00040513          	addi	a0,s0,0
   117c4:	00f13423          	sd	a5,8(sp)
   117c8:	00176713          	ori	a4,a4,1
   117cc:	00e33423          	sd	a4,8(t1)
   117d0:	2ec000ef          	jal	ra,11abc <__malloc_unlock>
   117d4:	00813783          	ld	a5,8(sp)
   117d8:	01078513          	addi	a0,a5,16
   117dc:	a9dff06f          	jal	zero,11278 <_malloc_r+0xa4>
   117e0:	00176613          	ori	a2,a4,1
   117e4:	00c7b423          	sd	a2,8(a5)
   117e8:	00e78733          	add	a4,a5,a4
   117ec:	02e83423          	sd	a4,40(a6)
   117f0:	02e83023          	sd	a4,32(a6)
   117f4:	0016e613          	ori	a2,a3,1
   117f8:	00678333          	add	t1,a5,t1
   117fc:	01c73c23          	sd	t3,24(a4)
   11800:	01c73823          	sd	t3,16(a4)
   11804:	00c73423          	sd	a2,8(a4)
   11808:	00040513          	addi	a0,s0,0
   1180c:	00d33023          	sd	a3,0(t1)
   11810:	00f13423          	sd	a5,8(sp)
   11814:	2a8000ef          	jal	ra,11abc <__malloc_unlock>
   11818:	00813783          	ld	a5,8(sp)
   1181c:	01078513          	addi	a0,a5,16
   11820:	a59ff06f          	jal	zero,11278 <_malloc_r+0xa4>
   11824:	00635693          	srli	a3,t1,0x6
   11828:	00169513          	slli	a0,a3,0x1
   1182c:	0725051b          	addiw	a0,a0,114
   11830:	00351513          	slli	a0,a0,0x3
   11834:	0386861b          	addiw	a2,a3,56
   11838:	e99ff06f          	jal	zero,116d0 <_malloc_r+0x4fc>
   1183c:	15078e63          	beq	a5,a6,11998 <_malloc_r+0x7c4>
   11840:	01083783          	ld	a5,16(a6)
   11844:	0087b683          	ld	a3,8(a5)
   11848:	ffc6f693          	andi	a3,a3,-4
   1184c:	40e68633          	sub	a2,a3,a4
   11850:	00e6e663          	bltu	a3,a4,1185c <_malloc_r+0x688>
   11854:	02062693          	slti	a3,a2,32
   11858:	dc0684e3          	beq	a3,zero,11620 <_malloc_r+0x44c>
   1185c:	00040513          	addi	a0,s0,0
   11860:	25c000ef          	jal	ra,11abc <__malloc_unlock>
   11864:	a11ff06f          	jal	zero,11274 <_malloc_r+0xa0>
   11868:	05c7889b          	addiw	a7,a5,92
   1186c:	0018951b          	slliw	a0,a7,0x1
   11870:	05b78e1b          	addiw	t3,a5,91
   11874:	00351513          	slli	a0,a0,0x3
   11878:	a5dff06f          	jal	zero,112d4 <_malloc_r+0x100>
   1187c:	010f3783          	ld	a5,16(t5)
   11880:	fff8889b          	addiw	a7,a7,-1
   11884:	23e79663          	bne	a5,t5,11ab0 <_malloc_r+0x8dc>
   11888:	0038f793          	andi	a5,a7,3
   1188c:	ff0f0f13          	addi	t5,t5,-16
   11890:	fe0796e3          	bne	a5,zero,1187c <_malloc_r+0x6a8>
   11894:	00883683          	ld	a3,8(a6)
   11898:	fff54793          	xori	a5,a0,-1
   1189c:	00d7f7b3          	and	a5,a5,a3
   118a0:	00f83423          	sd	a5,8(a6)
   118a4:	00151513          	slli	a0,a0,0x1
   118a8:	fff50693          	addi	a3,a0,-1
   118ac:	baf6f6e3          	bgeu	a3,a5,11458 <_malloc_r+0x284>
   118b0:	00f576b3          	and	a3,a0,a5
   118b4:	00069a63          	bne	a3,zero,118c8 <_malloc_r+0x6f4>
   118b8:	00151513          	slli	a0,a0,0x1
   118bc:	00f576b3          	and	a3,a0,a5
   118c0:	004f8f9b          	addiw	t6,t6,4
   118c4:	fe068ae3          	beq	a3,zero,118b8 <_malloc_r+0x6e4>
   118c8:	000f8893          	addi	a7,t6,0
   118cc:	b09ff06f          	jal	zero,113d4 <_malloc_r+0x200>
   118d0:	02058593          	addi	a1,a1,32
   118d4:	bc9ff06f          	jal	zero,1149c <_malloc_r+0x2c8>
   118d8:	4026561b          	sraiw	a2,a2,0x2
   118dc:	00100313          	addi	t1,zero,1
   118e0:	00c31633          	sll	a2,t1,a2
   118e4:	00c5e5b3          	or	a1,a1,a2
   118e8:	00b83423          	sd	a1,8(a6)
   118ec:	e11ff06f          	jal	zero,116fc <_malloc_r+0x528>
   118f0:	00b30633          	add	a2,t1,a1
   118f4:	40c005b3          	sub	a1,zero,a2
   118f8:	03459593          	slli	a1,a1,0x34
   118fc:	0345d593          	srli	a1,a1,0x34
   11900:	00040513          	addi	a0,s0,0
   11904:	03c13c23          	sd	t3,56(sp)
   11908:	03013823          	sd	a6,48(sp)
   1190c:	02f13423          	sd	a5,40(sp)
   11910:	02e13023          	sd	a4,32(sp)
   11914:	01113c23          	sd	a7,24(sp)
   11918:	00613823          	sd	t1,16(sp)
   1191c:	00c13423          	sd	a2,8(sp)
   11920:	04b13023          	sd	a1,64(sp)
   11924:	4f5030ef          	jal	ra,15618 <_sbrk_r>
   11928:	00050693          	addi	a3,a0,0
   1192c:	fff00513          	addi	a0,zero,-1
   11930:	01013303          	ld	t1,16(sp)
   11934:	01813883          	ld	a7,24(sp)
   11938:	02013703          	ld	a4,32(sp)
   1193c:	02813783          	ld	a5,40(sp)
   11940:	03013803          	ld	a6,48(sp)
   11944:	03813e03          	ld	t3,56(sp)
   11948:	0ea68463          	beq	a3,a0,11a30 <_malloc_r+0x85c>
   1194c:	04013583          	ld	a1,64(sp)
   11950:	0005851b          	addiw	a0,a1,0
   11954:	c49ff06f          	jal	zero,1159c <_malloc_r+0x3c8>
   11958:	05400613          	addi	a2,zero,84
   1195c:	08d66063          	bltu	a2,a3,119dc <_malloc_r+0x808>
   11960:	00c35693          	srli	a3,t1,0xc
   11964:	00169513          	slli	a0,a3,0x1
   11968:	0de5051b          	addiw	a0,a0,222
   1196c:	00351513          	slli	a0,a0,0x3
   11970:	06e6861b          	addiw	a2,a3,110
   11974:	d5dff06f          	jal	zero,116d0 <_malloc_r+0x4fc>
   11978:	15400693          	addi	a3,zero,340
   1197c:	08f6e063          	bltu	a3,a5,119fc <_malloc_r+0x828>
   11980:	00f75793          	srli	a5,a4,0xf
   11984:	0787889b          	addiw	a7,a5,120
   11988:	0018951b          	slliw	a0,a7,0x1
   1198c:	07778e1b          	addiw	t3,a5,119
   11990:	00351513          	slli	a0,a0,0x3
   11994:	941ff06f          	jal	zero,112d4 <_malloc_r+0x100>
   11998:	4c018e13          	addi	t3,gp,1216 # 20908 <__malloc_current_mallinfo>
   1199c:	000e2503          	lw	a0,0(t3)
   119a0:	00b5053b          	addw	a0,a0,a1
   119a4:	00ae2023          	sw	a0,0(t3)
   119a8:	b51ff06f          	jal	zero,114f8 <_malloc_r+0x324>
   119ac:	03431f13          	slli	t5,t1,0x34
   119b0:	b40f14e3          	bne	t5,zero,114f8 <_malloc_r+0x324>
   119b4:	01083303          	ld	t1,16(a6)
   119b8:	00b885b3          	add	a1,a7,a1
   119bc:	0015e693          	ori	a3,a1,1
   119c0:	00d33423          	sd	a3,8(t1)
   119c4:	c35ff06f          	jal	zero,115f8 <_malloc_r+0x424>
   119c8:	2261b423          	sd	t1,552(gp) # 20670 <__malloc_sbrk_base>
   119cc:	b45ff06f          	jal	zero,11510 <_malloc_r+0x33c>
   119d0:	00100793          	addi	a5,zero,1
   119d4:	00f33423          	sd	a5,8(t1)
   119d8:	e85ff06f          	jal	zero,1185c <_malloc_r+0x688>
   119dc:	15400613          	addi	a2,zero,340
   119e0:	08d66a63          	bltu	a2,a3,11a74 <_malloc_r+0x8a0>
   119e4:	00f35693          	srli	a3,t1,0xf
   119e8:	00169513          	slli	a0,a3,0x1
   119ec:	0f05051b          	addiw	a0,a0,240
   119f0:	00351513          	slli	a0,a0,0x3
   119f4:	0776861b          	addiw	a2,a3,119
   119f8:	cd9ff06f          	jal	zero,116d0 <_malloc_r+0x4fc>
   119fc:	55400693          	addi	a3,zero,1364
   11a00:	08f6ea63          	bltu	a3,a5,11a94 <_malloc_r+0x8c0>
   11a04:	01275793          	srli	a5,a4,0x12
   11a08:	07d7889b          	addiw	a7,a5,125
   11a0c:	0018951b          	slliw	a0,a7,0x1
   11a10:	07c78e1b          	addiw	t3,a5,124
   11a14:	00351513          	slli	a0,a0,0x3
   11a18:	8bdff06f          	jal	zero,112d4 <_malloc_r+0x100>
   11a1c:	ff0e8e93          	addi	t4,t4,-16
   11a20:	01d606b3          	add	a3,a2,t4
   11a24:	00000513          	addi	a0,zero,0
   11a28:	00000593          	addi	a1,zero,0
   11a2c:	b71ff06f          	jal	zero,1159c <_malloc_r+0x3c8>
   11a30:	00813683          	ld	a3,8(sp)
   11a34:	00000593          	addi	a1,zero,0
   11a38:	00000513          	addi	a0,zero,0
   11a3c:	b61ff06f          	jal	zero,1159c <_malloc_r+0x3c8>
   11a40:	01078593          	addi	a1,a5,16
   11a44:	00040513          	addi	a0,s0,0
   11a48:	01c13c23          	sd	t3,24(sp)
   11a4c:	01013823          	sd	a6,16(sp)
   11a50:	00e13423          	sd	a4,8(sp)
   11a54:	c7cff0ef          	jal	ra,10ed0 <_free_r>
   11a58:	01013803          	ld	a6,16(sp)
   11a5c:	01813e03          	ld	t3,24(sp)
   11a60:	00813703          	ld	a4,8(sp)
   11a64:	01083303          	ld	t1,16(a6)
   11a68:	000e2603          	lw	a2,0(t3)
   11a6c:	00833683          	ld	a3,8(t1)
   11a70:	b89ff06f          	jal	zero,115f8 <_malloc_r+0x424>
   11a74:	55400613          	addi	a2,zero,1364
   11a78:	02d66663          	bltu	a2,a3,11aa4 <_malloc_r+0x8d0>
   11a7c:	01235693          	srli	a3,t1,0x12
   11a80:	00169513          	slli	a0,a3,0x1
   11a84:	0fa5051b          	addiw	a0,a0,250
   11a88:	00351513          	slli	a0,a0,0x3
   11a8c:	07c6861b          	addiw	a2,a3,124
   11a90:	c41ff06f          	jal	zero,116d0 <_malloc_r+0x4fc>
   11a94:	7f000513          	addi	a0,zero,2032
   11a98:	07f00893          	addi	a7,zero,127
   11a9c:	07e00e13          	addi	t3,zero,126
   11aa0:	835ff06f          	jal	zero,112d4 <_malloc_r+0x100>
   11aa4:	7f000513          	addi	a0,zero,2032
   11aa8:	07e00613          	addi	a2,zero,126
   11aac:	c25ff06f          	jal	zero,116d0 <_malloc_r+0x4fc>
   11ab0:	00883783          	ld	a5,8(a6)
   11ab4:	df1ff06f          	jal	zero,118a4 <_malloc_r+0x6d0>

0000000000011ab8 <__malloc_lock>:
   11ab8:	00008067          	jalr	zero,0(ra)

0000000000011abc <__malloc_unlock>:
   11abc:	00008067          	jalr	zero,0(ra)

0000000000011ac0 <_vfprintf_r>:
   11ac0:	db010113          	addi	sp,sp,-592
   11ac4:	24113423          	sd	ra,584(sp)
   11ac8:	24813023          	sd	s0,576(sp)
   11acc:	22913c23          	sd	s1,568(sp)
   11ad0:	21613823          	sd	s6,528(sp)
   11ad4:	00d13c23          	sd	a3,24(sp)
   11ad8:	00060b13          	addi	s6,a2,0
   11adc:	00058493          	addi	s1,a1,0
   11ae0:	00050413          	addi	s0,a0,0
   11ae4:	00a13023          	sd	a0,0(sp)
   11ae8:	321030ef          	jal	ra,15608 <_localeconv_r>
   11aec:	00053703          	ld	a4,0(a0)
   11af0:	00070513          	addi	a0,a4,0
   11af4:	04e13823          	sd	a4,80(sp)
   11af8:	629030ef          	jal	ra,15920 <strlen>
   11afc:	04a13423          	sd	a0,72(sp)
   11b00:	0c013823          	sd	zero,208(sp)
   11b04:	0c013c23          	sd	zero,216(sp)
   11b08:	00040863          	beq	s0,zero,11b18 <_vfprintf_r+0x58>
   11b0c:	04843783          	ld	a5,72(s0)
   11b10:	00079463          	bne	a5,zero,11b18 <_vfprintf_r+0x58>
   11b14:	4450106f          	jal	zero,13758 <_vfprintf_r+0x1c98>
   11b18:	01049783          	lh	a5,16(s1)
   11b1c:	0ac4a703          	lw	a4,172(s1)
   11b20:	00002637          	lui	a2,0x2
   11b24:	03279693          	slli	a3,a5,0x32
   11b28:	3606c263          	blt	a3,zero,11e8c <_vfprintf_r+0x3cc>
   11b2c:	ffffe6b7          	lui	a3,0xffffe
   11b30:	00c7e7b3          	or	a5,a5,a2
   11b34:	fff68693          	addi	a3,a3,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffdd3b7>
   11b38:	00d77733          	and	a4,a4,a3
   11b3c:	00f49823          	sh	a5,16(s1)
   11b40:	0107979b          	slliw	a5,a5,0x10
   11b44:	4107d79b          	sraiw	a5,a5,0x10
   11b48:	0ae4a623          	sw	a4,172(s1)
   11b4c:	0087f713          	andi	a4,a5,8
   11b50:	2c070c63          	beq	a4,zero,11e28 <_vfprintf_r+0x368>
   11b54:	0184b703          	ld	a4,24(s1)
   11b58:	2c070863          	beq	a4,zero,11e28 <_vfprintf_r+0x368>
   11b5c:	01a7f793          	andi	a5,a5,26
   11b60:	00a00713          	addi	a4,zero,10
   11b64:	2ee78263          	beq	a5,a4,11e48 <_vfprintf_r+0x388>
   11b68:	0001e7b7          	lui	a5,0x1e
   11b6c:	23313423          	sd	s3,552(sp)
   11b70:	23413023          	sd	s4,544(sp)
   11b74:	16010993          	addi	s3,sp,352
   11b78:	0001ea37          	lui	s4,0x1e
   11b7c:	40078793          	addi	a5,a5,1024 # 1e400 <__clzdi2+0x1ec>
   11b80:	21713423          	sd	s7,520(sp)
   11b84:	1f913c23          	sd	s9,504(sp)
   11b88:	23213823          	sd	s2,560(sp)
   11b8c:	21513c23          	sd	s5,536(sp)
   11b90:	21813023          	sd	s8,512(sp)
   11b94:	1fa13823          	sd	s10,496(sp)
   11b98:	1fb13423          	sd	s11,488(sp)
   11b9c:	0e013823          	sd	zero,240(sp)
   11ba0:	0e012423          	sw	zero,232(sp)
   11ba4:	0f313023          	sd	s3,224(sp)
   11ba8:	00098b93          	addi	s7,s3,0
   11bac:	02f13423          	sd	a5,40(sp)
   11bb0:	570a0a13          	addi	s4,s4,1392 # 1e570 <zeroes.0>
   11bb4:	02013823          	sd	zero,48(sp)
   11bb8:	04013c23          	sd	zero,88(sp)
   11bbc:	06013423          	sd	zero,104(sp)
   11bc0:	08013023          	sd	zero,128(sp)
   11bc4:	06013023          	sd	zero,96(sp)
   11bc8:	00013823          	sd	zero,16(sp)
   11bcc:	01000413          	addi	s0,zero,16
   11bd0:	000b0c93          	addi	s9,s6,0
   11bd4:	00913423          	sd	s1,8(sp)
   11bd8:	000cc703          	lbu	a4,0(s9)
   11bdc:	000c8913          	addi	s2,s9,0
   11be0:	fdb70793          	addi	a5,a4,-37
   11be4:	0007069b          	addiw	a3,a4,0
   11be8:	06078463          	beq	a5,zero,11c50 <_vfprintf_r+0x190>
   11bec:	06068263          	beq	a3,zero,11c50 <_vfprintf_r+0x190>
   11bf0:	00090a93          	addi	s5,s2,0
   11bf4:	00194703          	lbu	a4,1(s2)
   11bf8:	00190913          	addi	s2,s2,1
   11bfc:	0007079b          	addiw	a5,a4,0
   11c00:	00070663          	beq	a4,zero,11c0c <_vfprintf_r+0x14c>
   11c04:	fdb78793          	addi	a5,a5,-37
   11c08:	fe0794e3          	bne	a5,zero,11bf0 <_vfprintf_r+0x130>
   11c0c:	41990b3b          	subw	s6,s2,s9
   11c10:	040b0063          	beq	s6,zero,11c50 <_vfprintf_r+0x190>
   11c14:	0f013703          	ld	a4,240(sp)
   11c18:	0e812783          	lw	a5,232(sp)
   11c1c:	019bb023          	sd	s9,0(s7)
   11c20:	01670733          	add	a4,a4,s6
   11c24:	0017879b          	addiw	a5,a5,1
   11c28:	016bb423          	sd	s6,8(s7)
   11c2c:	0ee13823          	sd	a4,240(sp)
   11c30:	0ef12423          	sw	a5,232(sp)
   11c34:	00700713          	addi	a4,zero,7
   11c38:	010b8b93          	addi	s7,s7,16
   11c3c:	22f74863          	blt	a4,a5,11e6c <_vfprintf_r+0x3ac>
   11c40:	01013783          	ld	a5,16(sp)
   11c44:	001ac703          	lbu	a4,1(s5)
   11c48:	016787bb          	addw	a5,a5,s6
   11c4c:	00f13823          	sd	a5,16(sp)
   11c50:	00071463          	bne	a4,zero,11c58 <_vfprintf_r+0x198>
   11c54:	3e90106f          	jal	zero,1383c <_vfprintf_r+0x1d7c>
   11c58:	00194303          	lbu	t1,1(s2)
   11c5c:	00190c93          	addi	s9,s2,1
   11c60:	0a0103a3          	sb	zero,167(sp)
   11c64:	fff00a93          	addi	s5,zero,-1
   11c68:	00000d13          	addi	s10,zero,0
   11c6c:	05a00913          	addi	s2,zero,90
   11c70:	00000493          	addi	s1,zero,0
   11c74:	001c8c93          	addi	s9,s9,1
   11c78:	0003031b          	addiw	t1,t1,0
   11c7c:	fe03079b          	addiw	a5,t1,-32
   11c80:	04f96a63          	bltu	s2,a5,11cd4 <_vfprintf_r+0x214>
   11c84:	02079713          	slli	a4,a5,0x20
   11c88:	01e75793          	srli	a5,a4,0x1e
   11c8c:	02813703          	ld	a4,40(sp)
   11c90:	00e787b3          	add	a5,a5,a4
   11c94:	0007a783          	lw	a5,0(a5)
   11c98:	00078067          	jalr	zero,0(a5)
   11c9c:	00000d13          	addi	s10,zero,0
   11ca0:	00900693          	addi	a3,zero,9
   11ca4:	002d179b          	slliw	a5,s10,0x2
   11ca8:	001c8c93          	addi	s9,s9,1
   11cac:	01a78d3b          	addw	s10,a5,s10
   11cb0:	fffcc783          	lbu	a5,-1(s9)
   11cb4:	fd03031b          	addiw	t1,t1,-48
   11cb8:	001d1d1b          	slliw	s10,s10,0x1
   11cbc:	fd07871b          	addiw	a4,a5,-48
   11cc0:	01a30d3b          	addw	s10,t1,s10
   11cc4:	0007831b          	addiw	t1,a5,0
   11cc8:	fce6fee3          	bgeu	a3,a4,11ca4 <_vfprintf_r+0x1e4>
   11ccc:	fe03079b          	addiw	a5,t1,-32
   11cd0:	faf97ae3          	bgeu	s2,a5,11c84 <_vfprintf_r+0x1c4>
   11cd4:	00048e13          	addi	t3,s1,0
   11cd8:	00031463          	bne	t1,zero,11ce0 <_vfprintf_r+0x220>
   11cdc:	3610106f          	jal	zero,1383c <_vfprintf_r+0x1d7c>
   11ce0:	00100b13          	addi	s6,zero,1
   11ce4:	0e610c23          	sb	t1,248(sp)
   11ce8:	0a0103a3          	sb	zero,167(sp)
   11cec:	000b0813          	addi	a6,s6,0
   11cf0:	02013023          	sd	zero,32(sp)
   11cf4:	00000a93          	addi	s5,zero,0
   11cf8:	04013023          	sd	zero,64(sp)
   11cfc:	02013c23          	sd	zero,56(sp)
   11d00:	00000493          	addi	s1,zero,0
   11d04:	0f810d93          	addi	s11,sp,248
   11d08:	0f013903          	ld	s2,240(sp)
   11d0c:	084e7293          	andi	t0,t3,132
   11d10:	00090593          	addi	a1,s2,0
   11d14:	20028ce3          	beq	t0,zero,1272c <_vfprintf_r+0xc6c>
   11d18:	0a714703          	lbu	a4,167(sp)
   11d1c:	06070863          	beq	a4,zero,11d8c <_vfprintf_r+0x2cc>
   11d20:	0e812603          	lw	a2,232(sp)
   11d24:	00000393          	addi	t2,zero,0
   11d28:	0a710713          	addi	a4,sp,167
   11d2c:	00ebb023          	sd	a4,0(s7)
   11d30:	00190913          	addi	s2,s2,1
   11d34:	00100713          	addi	a4,zero,1
   11d38:	0016061b          	addiw	a2,a2,1 # 2001 <exit-0xe11f>
   11d3c:	00ebb423          	sd	a4,8(s7)
   11d40:	0f213823          	sd	s2,240(sp)
   11d44:	0ec12423          	sw	a2,232(sp)
   11d48:	00700713          	addi	a4,zero,7
   11d4c:	010b8b93          	addi	s7,s7,16
   11d50:	40c74863          	blt	a4,a2,12160 <_vfprintf_r+0x6a0>
   11d54:	02038c63          	beq	t2,zero,11d8c <_vfprintf_r+0x2cc>
   11d58:	0e812603          	lw	a2,232(sp)
   11d5c:	0a810713          	addi	a4,sp,168
   11d60:	00ebb023          	sd	a4,0(s7)
   11d64:	00290913          	addi	s2,s2,2
   11d68:	00200713          	addi	a4,zero,2
   11d6c:	0016061b          	addiw	a2,a2,1
   11d70:	00ebb423          	sd	a4,8(s7)
   11d74:	0f213823          	sd	s2,240(sp)
   11d78:	0ec12423          	sw	a2,232(sp)
   11d7c:	00700713          	addi	a4,zero,7
   11d80:	010b8b93          	addi	s7,s7,16
   11d84:	00c75463          	bge	a4,a2,11d8c <_vfprintf_r+0x2cc>
   11d88:	7e50006f          	jal	zero,12d6c <_vfprintf_r+0x12ac>
   11d8c:	08000713          	addi	a4,zero,128
   11d90:	50e284e3          	beq	t0,a4,12a98 <_vfprintf_r+0xfd8>
   11d94:	416a8abb          	subw	s5,s5,s6
   11d98:	1b5046e3          	blt	zero,s5,12744 <_vfprintf_r+0xc84>
   11d9c:	100e7713          	andi	a4,t3,256
   11da0:	2a071ce3          	bne	a4,zero,12858 <_vfprintf_r+0xd98>
   11da4:	0e812783          	lw	a5,232(sp)
   11da8:	01690933          	add	s2,s2,s6
   11dac:	0f213823          	sd	s2,240(sp)
   11db0:	0017879b          	addiw	a5,a5,1
   11db4:	01bbb023          	sd	s11,0(s7)
   11db8:	016bb423          	sd	s6,8(s7)
   11dbc:	00700713          	addi	a4,zero,7
   11dc0:	0ef12423          	sw	a5,232(sp)
   11dc4:	48f74863          	blt	a4,a5,12254 <_vfprintf_r+0x794>
   11dc8:	010b8b93          	addi	s7,s7,16
   11dcc:	004e7f13          	andi	t5,t3,4
   11dd0:	000f0863          	beq	t5,zero,11de0 <_vfprintf_r+0x320>
   11dd4:	410d0abb          	subw	s5,s10,a6
   11dd8:	01505463          	bge	zero,s5,11de0 <_vfprintf_r+0x320>
   11ddc:	7d10006f          	jal	zero,12dac <_vfprintf_r+0x12ec>
   11de0:	000d0793          	addi	a5,s10,0
   11de4:	010d5463          	bge	s10,a6,11dec <_vfprintf_r+0x32c>
   11de8:	00080793          	addi	a5,a6,0
   11dec:	01013703          	ld	a4,16(sp)
   11df0:	00e787bb          	addw	a5,a5,a4
   11df4:	00f13823          	sd	a5,16(sp)
   11df8:	5a091ce3          	bne	s2,zero,12bb0 <_vfprintf_r+0x10f0>
   11dfc:	02013783          	ld	a5,32(sp)
   11e00:	0e012423          	sw	zero,232(sp)
   11e04:	00078863          	beq	a5,zero,11e14 <_vfprintf_r+0x354>
   11e08:	02013583          	ld	a1,32(sp)
   11e0c:	00013503          	ld	a0,0(sp)
   11e10:	8c0ff0ef          	jal	ra,10ed0 <_free_r>
   11e14:	00098b93          	addi	s7,s3,0
   11e18:	dc1ff06f          	jal	zero,11bd8 <_vfprintf_r+0x118>
   11e1c:	000cc303          	lbu	t1,0(s9)
   11e20:	0104e493          	ori	s1,s1,16
   11e24:	e51ff06f          	jal	zero,11c74 <_vfprintf_r+0x1b4>
   11e28:	00013503          	ld	a0,0(sp)
   11e2c:	00048593          	addi	a1,s1,0
   11e30:	4f0030ef          	jal	ra,15320 <__swsetup_r>
   11e34:	06051063          	bne	a0,zero,11e94 <_vfprintf_r+0x3d4>
   11e38:	01049783          	lh	a5,16(s1)
   11e3c:	00a00713          	addi	a4,zero,10
   11e40:	01a7f793          	andi	a5,a5,26
   11e44:	d2e792e3          	bne	a5,a4,11b68 <_vfprintf_r+0xa8>
   11e48:	01249783          	lh	a5,18(s1)
   11e4c:	d007cee3          	blt	a5,zero,11b68 <_vfprintf_r+0xa8>
   11e50:	01813683          	ld	a3,24(sp)
   11e54:	00013503          	ld	a0,0(sp)
   11e58:	000b0613          	addi	a2,s6,0
   11e5c:	00048593          	addi	a1,s1,0
   11e60:	281020ef          	jal	ra,148e0 <__sbprintf>
   11e64:	00a13823          	sd	a0,16(sp)
   11e68:	5a50006f          	jal	zero,12c0c <_vfprintf_r+0x114c>
   11e6c:	00813583          	ld	a1,8(sp)
   11e70:	00013503          	ld	a0,0(sp)
   11e74:	0e010613          	addi	a2,sp,224
   11e78:	329020ef          	jal	ra,149a0 <__sprint_r>
   11e7c:	00050463          	beq	a0,zero,11e84 <_vfprintf_r+0x3c4>
   11e80:	70c0206f          	jal	zero,1458c <_vfprintf_r+0x2acc>
   11e84:	00098b93          	addi	s7,s3,0
   11e88:	db9ff06f          	jal	zero,11c40 <_vfprintf_r+0x180>
   11e8c:	03271693          	slli	a3,a4,0x32
   11e90:	ca06dee3          	bge	a3,zero,11b4c <_vfprintf_r+0x8c>
   11e94:	fff00793          	addi	a5,zero,-1
   11e98:	00f13823          	sd	a5,16(sp)
   11e9c:	5710006f          	jal	zero,12c0c <_vfprintf_r+0x114c>
   11ea0:	0084f793          	andi	a5,s1,8
   11ea4:	00048e13          	addi	t3,s1,0
   11ea8:	00078463          	beq	a5,zero,11eb0 <_vfprintf_r+0x3f0>
   11eac:	4bc0106f          	jal	zero,13368 <_vfprintf_r+0x18a8>
   11eb0:	01813783          	ld	a5,24(sp)
   11eb4:	02613023          	sd	t1,32(sp)
   11eb8:	02913c23          	sd	s1,56(sp)
   11ebc:	0007b503          	ld	a0,0(a5)
   11ec0:	1400c0ef          	jal	ra,1e000 <__extenddftf2>
   11ec4:	01813783          	ld	a5,24(sp)
   11ec8:	03813e03          	ld	t3,56(sp)
   11ecc:	02013303          	ld	t1,32(sp)
   11ed0:	00878793          	addi	a5,a5,8
   11ed4:	00f13c23          	sd	a5,24(sp)
   11ed8:	0ca13823          	sd	a0,208(sp)
   11edc:	0d010513          	addi	a0,sp,208
   11ee0:	03c13c23          	sd	t3,56(sp)
   11ee4:	02613023          	sd	t1,32(sp)
   11ee8:	0cb13c23          	sd	a1,216(sp)
   11eec:	6dd030ef          	jal	ra,15dc8 <_ldcheck>
   11ef0:	0aa12823          	sw	a0,176(sp)
   11ef4:	00200793          	addi	a5,zero,2
   11ef8:	02013303          	ld	t1,32(sp)
   11efc:	03813e03          	ld	t3,56(sp)
   11f00:	00f51463          	bne	a0,a5,11f08 <_vfprintf_r+0x448>
   11f04:	0d50106f          	jal	zero,137d8 <_vfprintf_r+0x1d18>
   11f08:	00100793          	addi	a5,zero,1
   11f0c:	00f51463          	bne	a0,a5,11f14 <_vfprintf_r+0x454>
   11f10:	2490106f          	jal	zero,13958 <_vfprintf_r+0x1e98>
   11f14:	fdf37913          	andi	s2,t1,-33
   11f18:	04100793          	addi	a5,zero,65
   11f1c:	00f90463          	beq	s2,a5,11f24 <_vfprintf_r+0x464>
   11f20:	1f50106f          	jal	zero,13914 <_vfprintf_r+0x1e54>
   11f24:	03000793          	addi	a5,zero,48
   11f28:	0af10423          	sb	a5,168(sp)
   11f2c:	06100713          	addi	a4,zero,97
   11f30:	05800793          	addi	a5,zero,88
   11f34:	00e31463          	bne	t1,a4,11f3c <_vfprintf_r+0x47c>
   11f38:	7c10106f          	jal	zero,13ef8 <_vfprintf_r+0x2438>
   11f3c:	0af104a3          	sb	a5,169(sp)
   11f40:	06300793          	addi	a5,zero,99
   11f44:	0157d463          	bge	a5,s5,11f4c <_vfprintf_r+0x48c>
   11f48:	7b90106f          	jal	zero,13f00 <_vfprintf_r+0x2440>
   11f4c:	0d813583          	ld	a1,216(sp)
   11f50:	0d013503          	ld	a0,208(sp)
   11f54:	0005d463          	bge	a1,zero,11f5c <_vfprintf_r+0x49c>
   11f58:	6140206f          	jal	zero,1456c <_vfprintf_r+0x2aac>
   11f5c:	06013823          	sd	zero,112(sp)
   11f60:	02013023          	sd	zero,32(sp)
   11f64:	0f810d93          	addi	s11,sp,248
   11f68:	002e6793          	ori	a5,t3,2
   11f6c:	0b010613          	addi	a2,sp,176
   11f70:	02613823          	sd	t1,48(sp)
   11f74:	02f13c23          	sd	a5,56(sp)
   11f78:	27d030ef          	jal	ra,159f4 <frexpl>
   11f7c:	00fff6b7          	lui	a3,0xfff
   11f80:	02669693          	slli	a3,a3,0x26
   11f84:	00000613          	addi	a2,zero,0
   11f88:	0740b0ef          	jal	ra,1cffc <__multf3>
   11f8c:	00000613          	addi	a2,zero,0
   11f90:	00000693          	addi	a3,zero,0
   11f94:	00050493          	addi	s1,a0,0
   11f98:	00058913          	addi	s2,a1,0
   11f9c:	5ed0a0ef          	jal	ra,1cd88 <__eqtf2>
   11fa0:	03013303          	ld	t1,48(sp)
   11fa4:	00051663          	bne	a0,zero,11fb0 <_vfprintf_r+0x4f0>
   11fa8:	00100713          	addi	a4,zero,1
   11fac:	0ae12823          	sw	a4,176(sp)
   11fb0:	06100713          	addi	a4,zero,97
   11fb4:	00e31463          	bne	t1,a4,11fbc <_vfprintf_r+0x4fc>
   11fb8:	78c0206f          	jal	zero,14744 <_vfprintf_r+0x2c84>
   11fbc:	0001e737          	lui	a4,0x1e
   11fc0:	2a870793          	addi	a5,a4,680 # 1e2a8 <__clzdi2+0x94>
   11fc4:	02f13823          	sd	a5,48(sp)
   11fc8:	05713023          	sd	s7,64(sp)
   11fcc:	05913c23          	sd	s9,88(sp)
   11fd0:	03013b83          	ld	s7,48(sp)
   11fd4:	000d8b13          	addi	s6,s11,0
   11fd8:	00030c93          	addi	s9,t1,0
   11fdc:	01c0006f          	jal	zero,11ff8 <_vfprintf_r+0x538>
   11fe0:	00000613          	addi	a2,zero,0
   11fe4:	00000693          	addi	a3,zero,0
   11fe8:	5a10a0ef          	jal	ra,1cd88 <__eqtf2>
   11fec:	00051463          	bne	a0,zero,11ff4 <_vfprintf_r+0x534>
   11ff0:	7140206f          	jal	zero,14704 <_vfprintf_r+0x2c44>
   11ff4:	fffa8a9b          	addiw	s5,s5,-1
   11ff8:	040036b7          	lui	a3,0x4003
   11ffc:	02469693          	slli	a3,a3,0x24
   12000:	00000613          	addi	a2,zero,0
   12004:	00048513          	addi	a0,s1,0
   12008:	00090593          	addi	a1,s2,0
   1200c:	7f10a0ef          	jal	ra,1cffc <__multf3>
   12010:	00058493          	addi	s1,a1,0
   12014:	00050913          	addi	s2,a0,0
   12018:	6f50b0ef          	jal	ra,1df0c <__fixtfsi>
   1201c:	00050c1b          	addiw	s8,a0,0
   12020:	000c0513          	addi	a0,s8,0
   12024:	7550b0ef          	jal	ra,1df78 <__floatsitf>
   12028:	00050613          	addi	a2,a0,0
   1202c:	00058693          	addi	a3,a1,0
   12030:	00090513          	addi	a0,s2,0
   12034:	00048593          	addi	a1,s1,0
   12038:	6dc0b0ef          	jal	ra,1d714 <__subtf3>
   1203c:	018b86b3          	add	a3,s7,s8
   12040:	0006c683          	lbu	a3,0(a3) # 4003000 <__BSS_END__+0x3fe23b8>
   12044:	000b0613          	addi	a2,s6,0
   12048:	00050493          	addi	s1,a0,0
   1204c:	00db0023          	sb	a3,0(s6)
   12050:	001b0b13          	addi	s6,s6,1
   12054:	00058913          	addi	s2,a1,0
   12058:	f80a94e3          	bne	s5,zero,11fe0 <_vfprintf_r+0x520>
   1205c:	01fff6b7          	lui	a3,0x1fff
   12060:	000b0793          	addi	a5,s6,0
   12064:	00060493          	addi	s1,a2,0
   12068:	02569693          	slli	a3,a3,0x25
   1206c:	00000613          	addi	a2,zero,0
   12070:	04013b83          	ld	s7,64(sp)
   12074:	000c0b13          	addi	s6,s8,0
   12078:	05913023          	sd	s9,64(sp)
   1207c:	00050a93          	addi	s5,a0,0
   12080:	00078c13          	addi	s8,a5,0
   12084:	5a10a0ef          	jal	ra,1ce24 <__getf2>
   12088:	05813c83          	ld	s9,88(sp)
   1208c:	04013303          	ld	t1,64(sp)
   12090:	02a04663          	blt	zero,a0,120bc <_vfprintf_r+0x5fc>
   12094:	01fff6b7          	lui	a3,0x1fff
   12098:	000a8513          	addi	a0,s5,0
   1209c:	00090593          	addi	a1,s2,0
   120a0:	02569693          	slli	a3,a3,0x25
   120a4:	00000613          	addi	a2,zero,0
   120a8:	4e10a0ef          	jal	ra,1cd88 <__eqtf2>
   120ac:	04013303          	ld	t1,64(sp)
   120b0:	04051c63          	bne	a0,zero,12108 <_vfprintf_r+0x648>
   120b4:	001b7713          	andi	a4,s6,1
   120b8:	04070863          	beq	a4,zero,12108 <_vfprintf_r+0x648>
   120bc:	03013783          	ld	a5,48(sp)
   120c0:	0c913423          	sd	s1,200(sp)
   120c4:	fffc4683          	lbu	a3,-1(s8)
   120c8:	00f7c603          	lbu	a2,15(a5)
   120cc:	000c0713          	addi	a4,s8,0
   120d0:	02d61063          	bne	a2,a3,120f0 <_vfprintf_r+0x630>
   120d4:	03000593          	addi	a1,zero,48
   120d8:	feb70fa3          	sb	a1,-1(a4)
   120dc:	0c813703          	ld	a4,200(sp)
   120e0:	fff70793          	addi	a5,a4,-1
   120e4:	0cf13423          	sd	a5,200(sp)
   120e8:	fff74683          	lbu	a3,-1(a4)
   120ec:	fec686e3          	beq	a3,a2,120d8 <_vfprintf_r+0x618>
   120f0:	03900613          	addi	a2,zero,57
   120f4:	00c69463          	bne	a3,a2,120fc <_vfprintf_r+0x63c>
   120f8:	7480206f          	jal	zero,14840 <_vfprintf_r+0x2d80>
   120fc:	0016869b          	addiw	a3,a3,1 # 1fff001 <__BSS_END__+0x1fde3b9>
   12100:	0ff6f693          	andi	a3,a3,255
   12104:	fed70fa3          	sb	a3,-1(a4)
   12108:	0b012703          	lw	a4,176(sp)
   1210c:	00f3069b          	addiw	a3,t1,15
   12110:	41bc07bb          	subw	a5,s8,s11
   12114:	fff70a9b          	addiw	s5,a4,-1
   12118:	0ad10c23          	sb	a3,184(sp)
   1211c:	0b512823          	sw	s5,176(sp)
   12120:	02f13823          	sd	a5,48(sp)
   12124:	000ad463          	bge	s5,zero,1212c <_vfprintf_r+0x66c>
   12128:	6bc0206f          	jal	zero,147e4 <_vfprintf_r+0x2d24>
   1212c:	02b00713          	addi	a4,zero,43
   12130:	0ae10ca3          	sb	a4,185(sp)
   12134:	00900713          	addi	a4,zero,9
   12138:	01575463          	bge	a4,s5,12140 <_vfprintf_r+0x680>
   1213c:	6f90106f          	jal	zero,14034 <_vfprintf_r+0x2574>
   12140:	0ba10713          	addi	a4,sp,186
   12144:	1e010793          	addi	a5,sp,480
   12148:	030a869b          	addiw	a3,s5,48
   1214c:	00d70023          	sb	a3,0(a4)
   12150:	40f70733          	sub	a4,a4,a5
   12154:	1297079b          	addiw	a5,a4,297
   12158:	04f13c23          	sd	a5,88(sp)
   1215c:	7650106f          	jal	zero,140c0 <_vfprintf_r+0x2600>
   12160:	00813583          	ld	a1,8(sp)
   12164:	00013503          	ld	a0,0(sp)
   12168:	0e010613          	addi	a2,sp,224
   1216c:	09013c23          	sd	a6,152(sp)
   12170:	09c13823          	sd	t3,144(sp)
   12174:	08613423          	sd	t1,136(sp)
   12178:	06513c23          	sd	t0,120(sp)
   1217c:	06713823          	sd	t2,112(sp)
   12180:	021020ef          	jal	ra,149a0 <__sprint_r>
   12184:	240510e3          	bne	a0,zero,12bc4 <_vfprintf_r+0x1104>
   12188:	0f013903          	ld	s2,240(sp)
   1218c:	09813803          	ld	a6,152(sp)
   12190:	09013e03          	ld	t3,144(sp)
   12194:	08813303          	ld	t1,136(sp)
   12198:	07813283          	ld	t0,120(sp)
   1219c:	07013383          	ld	t2,112(sp)
   121a0:	00098b93          	addi	s7,s3,0
   121a4:	bb1ff06f          	jal	zero,11d54 <_vfprintf_r+0x294>
   121a8:	0e812703          	lw	a4,232(sp)
   121ac:	0001e6b7          	lui	a3,0x1e
   121b0:	2c868693          	addi	a3,a3,712 # 1e2c8 <__clzdi2+0xb4>
   121b4:	00dbb023          	sd	a3,0(s7)
   121b8:	00190913          	addi	s2,s2,1
   121bc:	00100693          	addi	a3,zero,1
   121c0:	0017071b          	addiw	a4,a4,1
   121c4:	00dbb423          	sd	a3,8(s7)
   121c8:	0f213823          	sd	s2,240(sp)
   121cc:	0ee12423          	sw	a4,232(sp)
   121d0:	00700693          	addi	a3,zero,7
   121d4:	010b8b93          	addi	s7,s7,16
   121d8:	00e6d463          	bge	a3,a4,121e0 <_vfprintf_r+0x720>
   121dc:	7ad0106f          	jal	zero,14188 <_vfprintf_r+0x26c8>
   121e0:	03013783          	ld	a5,48(sp)
   121e4:	00c7e733          	or	a4,a5,a2
   121e8:	00071463          	bne	a4,zero,121f0 <_vfprintf_r+0x730>
   121ec:	2950106f          	jal	zero,13c80 <_vfprintf_r+0x21c0>
   121f0:	04813783          	ld	a5,72(sp)
   121f4:	0e812703          	lw	a4,232(sp)
   121f8:	00700693          	addi	a3,zero,7
   121fc:	01278933          	add	s2,a5,s2
   12200:	05013783          	ld	a5,80(sp)
   12204:	0017071b          	addiw	a4,a4,1
   12208:	0f213823          	sd	s2,240(sp)
   1220c:	00fbb023          	sd	a5,0(s7)
   12210:	04813783          	ld	a5,72(sp)
   12214:	0ee12423          	sw	a4,232(sp)
   12218:	010b8b93          	addi	s7,s7,16
   1221c:	fefbbc23          	sd	a5,-8(s7)
   12220:	00e6d463          	bge	a3,a4,12228 <_vfprintf_r+0x768>
   12224:	2990106f          	jal	zero,13cbc <_vfprintf_r+0x21fc>
   12228:	00065463          	bge	a2,zero,12230 <_vfprintf_r+0x770>
   1222c:	1a40206f          	jal	zero,143d0 <_vfprintf_r+0x2910>
   12230:	03013783          	ld	a5,48(sp)
   12234:	0017071b          	addiw	a4,a4,1
   12238:	0ee12423          	sw	a4,232(sp)
   1223c:	01278933          	add	s2,a5,s2
   12240:	00fbb423          	sd	a5,8(s7)
   12244:	0f213823          	sd	s2,240(sp)
   12248:	01bbb023          	sd	s11,0(s7)
   1224c:	00700793          	addi	a5,zero,7
   12250:	b6e7dce3          	bge	a5,a4,11dc8 <_vfprintf_r+0x308>
   12254:	00813583          	ld	a1,8(sp)
   12258:	00013503          	ld	a0,0(sp)
   1225c:	0e010613          	addi	a2,sp,224
   12260:	05013023          	sd	a6,64(sp)
   12264:	03c13c23          	sd	t3,56(sp)
   12268:	738020ef          	jal	ra,149a0 <__sprint_r>
   1226c:	14051ce3          	bne	a0,zero,12bc4 <_vfprintf_r+0x1104>
   12270:	0f013903          	ld	s2,240(sp)
   12274:	03813e03          	ld	t3,56(sp)
   12278:	04013803          	ld	a6,64(sp)
   1227c:	00098b93          	addi	s7,s3,0
   12280:	b4dff06f          	jal	zero,11dcc <_vfprintf_r+0x30c>
   12284:	01813783          	ld	a5,24(sp)
   12288:	00048e13          	addi	t3,s1,0
   1228c:	00100b13          	addi	s6,zero,1
   12290:	0007a783          	lw	a5,0(a5)
   12294:	0a0103a3          	sb	zero,167(sp)
   12298:	0ef10c23          	sb	a5,248(sp)
   1229c:	01813783          	ld	a5,24(sp)
   122a0:	00878793          	addi	a5,a5,8
   122a4:	00f13c23          	sd	a5,24(sp)
   122a8:	a45ff06f          	jal	zero,11cec <_vfprintf_r+0x22c>
   122ac:	01813783          	ld	a5,24(sp)
   122b0:	0a0103a3          	sb	zero,167(sp)
   122b4:	00048e13          	addi	t3,s1,0
   122b8:	0007bd83          	ld	s11,0(a5)
   122bc:	00878493          	addi	s1,a5,8
   122c0:	000d9463          	bne	s11,zero,122c8 <_vfprintf_r+0x808>
   122c4:	2800106f          	jal	zero,13544 <_vfprintf_r+0x1a84>
   122c8:	000ad463          	bge	s5,zero,122d0 <_vfprintf_r+0x810>
   122cc:	5900106f          	jal	zero,1385c <_vfprintf_r+0x1d9c>
   122d0:	000a8613          	addi	a2,s5,0
   122d4:	00000593          	addi	a1,zero,0
   122d8:	000d8513          	addi	a0,s11,0
   122dc:	03c13c23          	sd	t3,56(sp)
   122e0:	00613c23          	sd	t1,24(sp)
   122e4:	1a0030ef          	jal	ra,15484 <memchr>
   122e8:	02a13023          	sd	a0,32(sp)
   122ec:	0a714703          	lbu	a4,167(sp)
   122f0:	01813303          	ld	t1,24(sp)
   122f4:	03813e03          	ld	t3,56(sp)
   122f8:	00051463          	bne	a0,zero,12300 <_vfprintf_r+0x840>
   122fc:	0000206f          	jal	zero,142fc <_vfprintf_r+0x283c>
   12300:	41b50b3b          	subw	s6,a0,s11
   12304:	000b0693          	addi	a3,s6,0
   12308:	000b5463          	bge	s6,zero,12310 <_vfprintf_r+0x850>
   1230c:	27d0106f          	jal	zero,13d88 <_vfprintf_r+0x22c8>
   12310:	0006881b          	addiw	a6,a3,0
   12314:	00070463          	beq	a4,zero,1231c <_vfprintf_r+0x85c>
   12318:	0016881b          	addiw	a6,a3,1
   1231c:	00913c23          	sd	s1,24(sp)
   12320:	2400106f          	jal	zero,13560 <_vfprintf_r+0x1aa0>
   12324:	01813703          	ld	a4,24(sp)
   12328:	0204f793          	andi	a5,s1,32
   1232c:	00048e13          	addi	t3,s1,0
   12330:	00870613          	addi	a2,a4,8
   12334:	0c079263          	bne	a5,zero,123f8 <_vfprintf_r+0x938>
   12338:	0104f793          	andi	a5,s1,16
   1233c:	00078463          	beq	a5,zero,12344 <_vfprintf_r+0x884>
   12340:	1140206f          	jal	zero,14454 <_vfprintf_r+0x2994>
   12344:	01813703          	ld	a4,24(sp)
   12348:	0404f793          	andi	a5,s1,64
   1234c:	00072703          	lw	a4,0(a4)
   12350:	00079463          	bne	a5,zero,12358 <_vfprintf_r+0x898>
   12354:	55c0106f          	jal	zero,138b0 <_vfprintf_r+0x1df0>
   12358:	0107171b          	slliw	a4,a4,0x10
   1235c:	4107571b          	sraiw	a4,a4,0x10
   12360:	00c13c23          	sd	a2,24(sp)
   12364:	00070793          	addi	a5,a4,0
   12368:	0a07c263          	blt	a5,zero,1240c <_vfprintf_r+0x94c>
   1236c:	0a0aca63          	blt	s5,zero,12420 <_vfprintf_r+0x960>
   12370:	f7fe7e13          	andi	t3,t3,-129
   12374:	0a071663          	bne	a4,zero,12420 <_vfprintf_r+0x960>
   12378:	0a0a9463          	bne	s5,zero,12420 <_vfprintf_r+0x960>
   1237c:	0a714503          	lbu	a0,167(sp)
   12380:	00051463          	bne	a0,zero,12388 <_vfprintf_r+0x8c8>
   12384:	5700106f          	jal	zero,138f4 <_vfprintf_r+0x1e34>
   12388:	00000813          	addi	a6,zero,0
   1238c:	00000493          	addi	s1,zero,0
   12390:	02013023          	sd	zero,32(sp)
   12394:	00000b13          	addi	s6,zero,0
   12398:	00000a93          	addi	s5,zero,0
   1239c:	15c10d93          	addi	s11,sp,348
   123a0:	0018081b          	addiw	a6,a6,1
   123a4:	00049463          	bne	s1,zero,123ac <_vfprintf_r+0x8ec>
   123a8:	4cc0206f          	jal	zero,14874 <_vfprintf_r+0x2db4>
   123ac:	0f013903          	ld	s2,240(sp)
   123b0:	0e812603          	lw	a2,232(sp)
   123b4:	084e7293          	andi	t0,t3,132
   123b8:	0028081b          	addiw	a6,a6,2
   123bc:	00090593          	addi	a1,s2,0
   123c0:	00060693          	addi	a3,a2,0
   123c4:	060282e3          	beq	t0,zero,12c28 <_vfprintf_r+0x1168>
   123c8:	04013023          	sd	zero,64(sp)
   123cc:	02013c23          	sd	zero,56(sp)
   123d0:	00000493          	addi	s1,zero,0
   123d4:	980504e3          	beq	a0,zero,11d5c <_vfprintf_r+0x29c>
   123d8:	00200393          	addi	t2,zero,2
   123dc:	94dff06f          	jal	zero,11d28 <_vfprintf_r+0x268>
   123e0:	0204f793          	andi	a5,s1,32
   123e4:	0104ef13          	ori	t5,s1,16
   123e8:	70078ce3          	beq	a5,zero,13300 <_vfprintf_r+0x1840>
   123ec:	01813783          	ld	a5,24(sp)
   123f0:	000f0e13          	addi	t3,t5,0
   123f4:	00878613          	addi	a2,a5,8
   123f8:	01813783          	ld	a5,24(sp)
   123fc:	00c13c23          	sd	a2,24(sp)
   12400:	0007b783          	ld	a5,0(a5)
   12404:	00078713          	addi	a4,a5,0
   12408:	f607d2e3          	bge	a5,zero,1236c <_vfprintf_r+0x8ac>
   1240c:	02d00793          	addi	a5,zero,45
   12410:	0af103a3          	sb	a5,167(sp)
   12414:	40e00733          	sub	a4,zero,a4
   12418:	000ac463          	blt	s5,zero,12420 <_vfprintf_r+0x960>
   1241c:	f7fe7e13          	andi	t3,t3,-129
   12420:	00900793          	addi	a5,zero,9
   12424:	14e7e863          	bltu	a5,a4,12574 <_vfprintf_r+0xab4>
   12428:	0307071b          	addiw	a4,a4,48
   1242c:	14e10da3          	sb	a4,347(sp)
   12430:	000a881b          	addiw	a6,s5,0
   12434:	75505ae3          	bge	zero,s5,13388 <_vfprintf_r+0x18c8>
   12438:	0a714503          	lbu	a0,167(sp)
   1243c:	00000493          	addi	s1,zero,0
   12440:	00100b13          	addi	s6,zero,1
   12444:	15b10d93          	addi	s11,sp,347
   12448:	02013023          	sd	zero,32(sp)
   1244c:	f4050ce3          	beq	a0,zero,123a4 <_vfprintf_r+0x8e4>
   12450:	0018081b          	addiw	a6,a6,1
   12454:	f51ff06f          	jal	zero,123a4 <_vfprintf_r+0x8e4>
   12458:	01813783          	ld	a5,24(sp)
   1245c:	0007ad03          	lw	s10,0(a5)
   12460:	620d56e3          	bge	s10,zero,1328c <_vfprintf_r+0x17cc>
   12464:	01813783          	ld	a5,24(sp)
   12468:	41a00d3b          	subw	s10,zero,s10
   1246c:	00878793          	addi	a5,a5,8
   12470:	00f13c23          	sd	a5,24(sp)
   12474:	000cc303          	lbu	t1,0(s9)
   12478:	0044e493          	ori	s1,s1,4
   1247c:	ff8ff06f          	jal	zero,11c74 <_vfprintf_r+0x1b4>
   12480:	02b00793          	addi	a5,zero,43
   12484:	000cc303          	lbu	t1,0(s9)
   12488:	0af103a3          	sb	a5,167(sp)
   1248c:	fe8ff06f          	jal	zero,11c74 <_vfprintf_r+0x1b4>
   12490:	000cc303          	lbu	t1,0(s9)
   12494:	0804e493          	ori	s1,s1,128
   12498:	fdcff06f          	jal	zero,11c74 <_vfprintf_r+0x1b4>
   1249c:	000cc303          	lbu	t1,0(s9)
   124a0:	02a00793          	addi	a5,zero,42
   124a4:	001c8613          	addi	a2,s9,1
   124a8:	00f31463          	bne	t1,a5,124b0 <_vfprintf_r+0x9f0>
   124ac:	2a80206f          	jal	zero,14754 <_vfprintf_r+0x2c94>
   124b0:	fd03071b          	addiw	a4,t1,-48
   124b4:	00900593          	addi	a1,zero,9
   124b8:	00000693          	addi	a3,zero,0
   124bc:	00060c93          	addi	s9,a2,0
   124c0:	00000a93          	addi	s5,zero,0
   124c4:	fae5ec63          	bltu	a1,a4,11c7c <_vfprintf_r+0x1bc>
   124c8:	0026979b          	slliw	a5,a3,0x2
   124cc:	00064303          	lbu	t1,0(a2)
   124d0:	00d787bb          	addw	a5,a5,a3
   124d4:	0017979b          	slliw	a5,a5,0x1
   124d8:	00e786bb          	addw	a3,a5,a4
   124dc:	fd03071b          	addiw	a4,t1,-48
   124e0:	00160613          	addi	a2,a2,1
   124e4:	fee5f2e3          	bgeu	a1,a4,124c8 <_vfprintf_r+0xa08>
   124e8:	00068a9b          	addiw	s5,a3,0
   124ec:	7806cae3          	blt	a3,zero,13480 <_vfprintf_r+0x19c0>
   124f0:	00060c93          	addi	s9,a2,0
   124f4:	f88ff06f          	jal	zero,11c7c <_vfprintf_r+0x1bc>
   124f8:	0204f793          	andi	a5,s1,32
   124fc:	0104ef13          	ori	t5,s1,16
   12500:	04079263          	bne	a5,zero,12544 <_vfprintf_r+0xa84>
   12504:	01813783          	ld	a5,24(sp)
   12508:	01813703          	ld	a4,24(sp)
   1250c:	0a0103a3          	sb	zero,167(sp)
   12510:	00878793          	addi	a5,a5,8
   12514:	00073703          	ld	a4,0(a4)
   12518:	680ac4e3          	blt	s5,zero,133a0 <_vfprintf_r+0x18e0>
   1251c:	00f13c23          	sd	a5,24(sp)
   12520:	f7ff7e13          	andi	t3,t5,-129
   12524:	ee071ee3          	bne	a4,zero,12420 <_vfprintf_r+0x960>
   12528:	ee0a9ce3          	bne	s5,zero,12420 <_vfprintf_r+0x960>
   1252c:	00000493          	addi	s1,zero,0
   12530:	4b00006f          	jal	zero,129e0 <_vfprintf_r+0xf20>
   12534:	0204f793          	andi	a5,s1,32
   12538:	00048e13          	addi	t3,s1,0
   1253c:	5e0782e3          	beq	a5,zero,13320 <_vfprintf_r+0x1860>
   12540:	00048f13          	addi	t5,s1,0
   12544:	01813783          	ld	a5,24(sp)
   12548:	01813703          	ld	a4,24(sp)
   1254c:	0a0103a3          	sb	zero,167(sp)
   12550:	00878793          	addi	a5,a5,8
   12554:	00073703          	ld	a4,0(a4)
   12558:	640ac4e3          	blt	s5,zero,133a0 <_vfprintf_r+0x18e0>
   1255c:	00f13c23          	sd	a5,24(sp)
   12560:	f7ff7e13          	andi	t3,t5,-129
   12564:	ea0a9ee3          	bne	s5,zero,12420 <_vfprintf_r+0x960>
   12568:	ea071ce3          	bne	a4,zero,12420 <_vfprintf_r+0x960>
   1256c:	00000493          	addi	s1,zero,0
   12570:	4700006f          	jal	zero,129e0 <_vfprintf_r+0xf20>
   12574:	15c10b13          	addi	s6,sp,348
   12578:	000b0913          	addi	s2,s6,0
   1257c:	05513023          	sd	s5,64(sp)
   12580:	07613823          	sd	s6,112(sp)
   12584:	400e7c13          	andi	s8,t3,1024
   12588:	06813b03          	ld	s6,104(sp)
   1258c:	00000493          	addi	s1,zero,0
   12590:	03713023          	sd	s7,32(sp)
   12594:	02613823          	sd	t1,48(sp)
   12598:	03c13c23          	sd	t3,56(sp)
   1259c:	00070a93          	addi	s5,a4,0
   125a0:	0240006f          	jal	zero,125c4 <_vfprintf_r+0xb04>
   125a4:	000a8513          	addi	a0,s5,0
   125a8:	00a00593          	addi	a1,zero,10
   125ac:	3b10b0ef          	jal	ra,1e15c <__hidden___udivdi3>
   125b0:	000a8b93          	addi	s7,s5,0
   125b4:	00900793          	addi	a5,zero,9
   125b8:	000d8913          	addi	s2,s11,0
   125bc:	00050a93          	addi	s5,a0,0
   125c0:	0577f063          	bgeu	a5,s7,12600 <_vfprintf_r+0xb40>
   125c4:	00a00593          	addi	a1,zero,10
   125c8:	000a8513          	addi	a0,s5,0
   125cc:	3d90b0ef          	jal	ra,1e1a4 <__umoddi3>
   125d0:	0305051b          	addiw	a0,a0,48
   125d4:	fea90fa3          	sb	a0,-1(s2)
   125d8:	fff90d93          	addi	s11,s2,-1
   125dc:	0014849b          	addiw	s1,s1,1
   125e0:	fc0c02e3          	beq	s8,zero,125a4 <_vfprintf_r+0xae4>
   125e4:	000b4783          	lbu	a5,0(s6)
   125e8:	f0178713          	addi	a4,a5,-255
   125ec:	fa070ce3          	beq	a4,zero,125a4 <_vfprintf_r+0xae4>
   125f0:	fa979ae3          	bne	a5,s1,125a4 <_vfprintf_r+0xae4>
   125f4:	00900793          	addi	a5,zero,9
   125f8:	0157f463          	bgeu	a5,s5,12600 <_vfprintf_r+0xb40>
   125fc:	52d0106f          	jal	zero,14328 <_vfprintf_r+0x2868>
   12600:	07613423          	sd	s6,104(sp)
   12604:	07013b03          	ld	s6,112(sp)
   12608:	04013a83          	ld	s5,64(sp)
   1260c:	03013303          	ld	t1,48(sp)
   12610:	41bb0b3b          	subw	s6,s6,s11
   12614:	02913823          	sd	s1,48(sp)
   12618:	02013b83          	ld	s7,32(sp)
   1261c:	03813e03          	ld	t3,56(sp)
   12620:	000a881b          	addiw	a6,s5,0
   12624:	016ad463          	bge	s5,s6,1262c <_vfprintf_r+0xb6c>
   12628:	000b081b          	addiw	a6,s6,0
   1262c:	0a714503          	lbu	a0,167(sp)
   12630:	00000493          	addi	s1,zero,0
   12634:	02013023          	sd	zero,32(sp)
   12638:	e15ff06f          	jal	zero,1244c <_vfprintf_r+0x98c>
   1263c:	00013b03          	ld	s6,0(sp)
   12640:	000b0513          	addi	a0,s6,0
   12644:	7c5020ef          	jal	ra,15608 <_localeconv_r>
   12648:	00853783          	ld	a5,8(a0)
   1264c:	00078513          	addi	a0,a5,0
   12650:	06f13023          	sd	a5,96(sp)
   12654:	2cc030ef          	jal	ra,15920 <strlen>
   12658:	00050793          	addi	a5,a0,0
   1265c:	000b0513          	addi	a0,s6,0
   12660:	08f13023          	sd	a5,128(sp)
   12664:	00078b13          	addi	s6,a5,0
   12668:	7a1020ef          	jal	ra,15608 <_localeconv_r>
   1266c:	01053703          	ld	a4,16(a0)
   12670:	000cc303          	lbu	t1,0(s9)
   12674:	06e13423          	sd	a4,104(sp)
   12678:	de0b0e63          	beq	s6,zero,11c74 <_vfprintf_r+0x1b4>
   1267c:	de070c63          	beq	a4,zero,11c74 <_vfprintf_r+0x1b4>
   12680:	00074783          	lbu	a5,0(a4)
   12684:	de078863          	beq	a5,zero,11c74 <_vfprintf_r+0x1b4>
   12688:	4004e493          	ori	s1,s1,1024
   1268c:	de8ff06f          	jal	zero,11c74 <_vfprintf_r+0x1b4>
   12690:	000cc303          	lbu	t1,0(s9)
   12694:	0014e493          	ori	s1,s1,1
   12698:	ddcff06f          	jal	zero,11c74 <_vfprintf_r+0x1b4>
   1269c:	0a714783          	lbu	a5,167(sp)
   126a0:	000cc303          	lbu	t1,0(s9)
   126a4:	dc079863          	bne	a5,zero,11c74 <_vfprintf_r+0x1b4>
   126a8:	02000793          	addi	a5,zero,32
   126ac:	0af103a3          	sb	a5,167(sp)
   126b0:	dc4ff06f          	jal	zero,11c74 <_vfprintf_r+0x1b4>
   126b4:	000cc303          	lbu	t1,0(s9)
   126b8:	0084e493          	ori	s1,s1,8
   126bc:	db8ff06f          	jal	zero,11c74 <_vfprintf_r+0x1b4>
   126c0:	01813783          	ld	a5,24(sp)
   126c4:	0104e813          	ori	a6,s1,16
   126c8:	00878613          	addi	a2,a5,8
   126cc:	01813783          	ld	a5,24(sp)
   126d0:	0007b683          	ld	a3,0(a5)
   126d4:	00c13c23          	sd	a2,24(sp)
   126d8:	0a0103a3          	sb	zero,167(sp)
   126dc:	bff87e13          	andi	t3,a6,-1025
   126e0:	780ace63          	blt	s5,zero,12e7c <_vfprintf_r+0x13bc>
   126e4:	b7f87e13          	andi	t3,a6,-1153
   126e8:	780a9a63          	bne	s5,zero,12e7c <_vfprintf_r+0x13bc>
   126ec:	78069863          	bne	a3,zero,12e7c <_vfprintf_r+0x13bc>
   126f0:	00187813          	andi	a6,a6,1
   126f4:	280804e3          	beq	a6,zero,1317c <_vfprintf_r+0x16bc>
   126f8:	0f013903          	ld	s2,240(sp)
   126fc:	03000793          	addi	a5,zero,48
   12700:	14f10da3          	sb	a5,347(sp)
   12704:	02013023          	sd	zero,32(sp)
   12708:	04013023          	sd	zero,64(sp)
   1270c:	02013c23          	sd	zero,56(sp)
   12710:	084e7293          	andi	t0,t3,132
   12714:	00080b13          	addi	s6,a6,0
   12718:	00000a93          	addi	s5,zero,0
   1271c:	00000493          	addi	s1,zero,0
   12720:	15b10d93          	addi	s11,sp,347
   12724:	00090593          	addi	a1,s2,0
   12728:	de029863          	bne	t0,zero,11d18 <_vfprintf_r+0x258>
   1272c:	410d073b          	subw	a4,s10,a6
   12730:	22e04ee3          	blt	zero,a4,1316c <_vfprintf_r+0x16ac>
   12734:	0a714703          	lbu	a4,167(sp)
   12738:	de071463          	bne	a4,zero,11d20 <_vfprintf_r+0x260>
   1273c:	416a8abb          	subw	s5,s5,s6
   12740:	e5505e63          	bge	zero,s5,11d9c <_vfprintf_r+0x2dc>
   12744:	0001e6b7          	lui	a3,0x1e
   12748:	0e812603          	lw	a2,232(sp)
   1274c:	57068693          	addi	a3,a3,1392 # 1e570 <zeroes.0>
   12750:	0b545463          	bge	s0,s5,127f8 <_vfprintf_r+0xd38>
   12754:	00048593          	addi	a1,s1,0
   12758:	000b8793          	addi	a5,s7,0
   1275c:	000a8493          	addi	s1,s5,0
   12760:	00090693          	addi	a3,s2,0
   12764:	00700713          	addi	a4,zero,7
   12768:	00030c13          	addi	s8,t1,0
   1276c:	07c13823          	sd	t3,112(sp)
   12770:	000a0b93          	addi	s7,s4,0
   12774:	00080913          	addi	s2,a6,0
   12778:	00058a93          	addi	s5,a1,0
   1277c:	00c0006f          	jal	zero,12788 <_vfprintf_r+0xcc8>
   12780:	ff04849b          	addiw	s1,s1,-16
   12784:	04945863          	bge	s0,s1,127d4 <_vfprintf_r+0xd14>
   12788:	01068693          	addi	a3,a3,16
   1278c:	0016061b          	addiw	a2,a2,1
   12790:	0147b023          	sd	s4,0(a5)
   12794:	0087b423          	sd	s0,8(a5)
   12798:	0ed13823          	sd	a3,240(sp)
   1279c:	0ec12423          	sw	a2,232(sp)
   127a0:	01078793          	addi	a5,a5,16
   127a4:	fcc75ee3          	bge	a4,a2,12780 <_vfprintf_r+0xcc0>
   127a8:	00813583          	ld	a1,8(sp)
   127ac:	00013503          	ld	a0,0(sp)
   127b0:	0e010613          	addi	a2,sp,224
   127b4:	1ec020ef          	jal	ra,149a0 <__sprint_r>
   127b8:	40051663          	bne	a0,zero,12bc4 <_vfprintf_r+0x1104>
   127bc:	ff04849b          	addiw	s1,s1,-16
   127c0:	0f013683          	ld	a3,240(sp)
   127c4:	0e812603          	lw	a2,232(sp)
   127c8:	00098793          	addi	a5,s3,0
   127cc:	00700713          	addi	a4,zero,7
   127d0:	fa944ce3          	blt	s0,s1,12788 <_vfprintf_r+0xcc8>
   127d4:	07013e03          	ld	t3,112(sp)
   127d8:	000a8713          	addi	a4,s5,0
   127dc:	00090813          	addi	a6,s2,0
   127e0:	00048a93          	addi	s5,s1,0
   127e4:	00068913          	addi	s2,a3,0
   127e8:	000c0313          	addi	t1,s8,0
   127ec:	000b8693          	addi	a3,s7,0
   127f0:	00070493          	addi	s1,a4,0
   127f4:	00078b93          	addi	s7,a5,0
   127f8:	01590933          	add	s2,s2,s5
   127fc:	0016061b          	addiw	a2,a2,1
   12800:	00dbb023          	sd	a3,0(s7)
   12804:	015bb423          	sd	s5,8(s7)
   12808:	0f213823          	sd	s2,240(sp)
   1280c:	0ec12423          	sw	a2,232(sp)
   12810:	00700713          	addi	a4,zero,7
   12814:	010b8b93          	addi	s7,s7,16
   12818:	d8c75263          	bge	a4,a2,11d9c <_vfprintf_r+0x2dc>
   1281c:	00813583          	ld	a1,8(sp)
   12820:	00013503          	ld	a0,0(sp)
   12824:	0e010613          	addi	a2,sp,224
   12828:	09013423          	sd	a6,136(sp)
   1282c:	07c13c23          	sd	t3,120(sp)
   12830:	06613823          	sd	t1,112(sp)
   12834:	16c020ef          	jal	ra,149a0 <__sprint_r>
   12838:	38051663          	bne	a0,zero,12bc4 <_vfprintf_r+0x1104>
   1283c:	07813e03          	ld	t3,120(sp)
   12840:	0f013903          	ld	s2,240(sp)
   12844:	08813803          	ld	a6,136(sp)
   12848:	100e7713          	andi	a4,t3,256
   1284c:	07013303          	ld	t1,112(sp)
   12850:	00098b93          	addi	s7,s3,0
   12854:	d4070863          	beq	a4,zero,11da4 <_vfprintf_r+0x2e4>
   12858:	06500713          	addi	a4,zero,101
   1285c:	3e675663          	bge	a4,t1,12c48 <_vfprintf_r+0x1188>
   12860:	0d013503          	ld	a0,208(sp)
   12864:	0d813583          	ld	a1,216(sp)
   12868:	00000613          	addi	a2,zero,0
   1286c:	00000693          	addi	a3,zero,0
   12870:	07013c23          	sd	a6,120(sp)
   12874:	07c13823          	sd	t3,112(sp)
   12878:	5100a0ef          	jal	ra,1cd88 <__eqtf2>
   1287c:	07013e03          	ld	t3,112(sp)
   12880:	07813803          	ld	a6,120(sp)
   12884:	64051863          	bne	a0,zero,12ed4 <_vfprintf_r+0x1414>
   12888:	0e812783          	lw	a5,232(sp)
   1288c:	0001e737          	lui	a4,0x1e
   12890:	2c870713          	addi	a4,a4,712 # 1e2c8 <__clzdi2+0xb4>
   12894:	00ebb023          	sd	a4,0(s7)
   12898:	00190913          	addi	s2,s2,1
   1289c:	00100713          	addi	a4,zero,1
   128a0:	0017879b          	addiw	a5,a5,1
   128a4:	00ebb423          	sd	a4,8(s7)
   128a8:	0f213823          	sd	s2,240(sp)
   128ac:	0ef12423          	sw	a5,232(sp)
   128b0:	00700713          	addi	a4,zero,7
   128b4:	010b8b93          	addi	s7,s7,16
   128b8:	6af746e3          	blt	a4,a5,13764 <_vfprintf_r+0x1ca4>
   128bc:	0b012783          	lw	a5,176(sp)
   128c0:	03013703          	ld	a4,48(sp)
   128c4:	1ae7dce3          	bge	a5,a4,1327c <_vfprintf_r+0x17bc>
   128c8:	04813703          	ld	a4,72(sp)
   128cc:	0e812783          	lw	a5,232(sp)
   128d0:	010b8b93          	addi	s7,s7,16
   128d4:	00e90933          	add	s2,s2,a4
   128d8:	05013703          	ld	a4,80(sp)
   128dc:	0017879b          	addiw	a5,a5,1
   128e0:	0f213823          	sd	s2,240(sp)
   128e4:	feebb823          	sd	a4,-16(s7)
   128e8:	04813703          	ld	a4,72(sp)
   128ec:	0ef12423          	sw	a5,232(sp)
   128f0:	feebbc23          	sd	a4,-8(s7)
   128f4:	00700713          	addi	a4,zero,7
   128f8:	3af742e3          	blt	a4,a5,1349c <_vfprintf_r+0x19dc>
   128fc:	03013783          	ld	a5,48(sp)
   12900:	fff78a9b          	addiw	s5,a5,-1
   12904:	cd505463          	bge	zero,s5,11dcc <_vfprintf_r+0x30c>
   12908:	01000b13          	addi	s6,zero,16
   1290c:	0e812783          	lw	a5,232(sp)
   12910:	0001e6b7          	lui	a3,0x1e
   12914:	015b4463          	blt	s6,s5,1291c <_vfprintf_r+0xe5c>
   12918:	0690106f          	jal	zero,14180 <_vfprintf_r+0x26c0>
   1291c:	000a8493          	addi	s1,s5,0
   12920:	00090713          	addi	a4,s2,0
   12924:	00700d93          	addi	s11,zero,7
   12928:	00080a93          	addi	s5,a6,0
   1292c:	000e0913          	addi	s2,t3,0
   12930:	57068c13          	addi	s8,a3,1392 # 1e570 <zeroes.0>
   12934:	00c0006f          	jal	zero,12940 <_vfprintf_r+0xe80>
   12938:	ff04849b          	addiw	s1,s1,-16
   1293c:	669b50e3          	bge	s6,s1,1379c <_vfprintf_r+0x1cdc>
   12940:	01070713          	addi	a4,a4,16
   12944:	0017879b          	addiw	a5,a5,1
   12948:	018bb023          	sd	s8,0(s7)
   1294c:	016bb423          	sd	s6,8(s7)
   12950:	0ee13823          	sd	a4,240(sp)
   12954:	0ef12423          	sw	a5,232(sp)
   12958:	010b8b93          	addi	s7,s7,16
   1295c:	fcfddee3          	bge	s11,a5,12938 <_vfprintf_r+0xe78>
   12960:	00813583          	ld	a1,8(sp)
   12964:	00013503          	ld	a0,0(sp)
   12968:	0e010613          	addi	a2,sp,224
   1296c:	034020ef          	jal	ra,149a0 <__sprint_r>
   12970:	24051a63          	bne	a0,zero,12bc4 <_vfprintf_r+0x1104>
   12974:	0f013703          	ld	a4,240(sp)
   12978:	0e812783          	lw	a5,232(sp)
   1297c:	00098b93          	addi	s7,s3,0
   12980:	fb9ff06f          	jal	zero,12938 <_vfprintf_r+0xe78>
   12984:	000cc303          	lbu	t1,0(s9)
   12988:	06800793          	addi	a5,zero,104
   1298c:	34f300e3          	beq	t1,a5,134cc <_vfprintf_r+0x1a0c>
   12990:	0404e493          	ori	s1,s1,64
   12994:	ae0ff06f          	jal	zero,11c74 <_vfprintf_r+0x1b4>
   12998:	000cc303          	lbu	t1,0(s9)
   1299c:	0204e493          	ori	s1,s1,32
   129a0:	ad4ff06f          	jal	zero,11c74 <_vfprintf_r+0x1b4>
   129a4:	000087b7          	lui	a5,0x8
   129a8:	83078793          	addi	a5,a5,-2000 # 7830 <exit-0x88f0>
   129ac:	0af11423          	sh	a5,168(sp)
   129b0:	01813783          	ld	a5,24(sp)
   129b4:	0a0103a3          	sb	zero,167(sp)
   129b8:	0007b703          	ld	a4,0(a5)
   129bc:	00878593          	addi	a1,a5,8
   129c0:	1e0acee3          	blt	s5,zero,133bc <_vfprintf_r+0x18fc>
   129c4:	f7f4ff13          	andi	t5,s1,-129
   129c8:	002f6e13          	ori	t3,t5,2
   129cc:	640a9ee3          	bne	s5,zero,13828 <_vfprintf_r+0x1d68>
   129d0:	64071ce3          	bne	a4,zero,13828 <_vfprintf_r+0x1d68>
   129d4:	00b13c23          	sd	a1,24(sp)
   129d8:	00200493          	addi	s1,zero,2
   129dc:	07800313          	addi	t1,zero,120
   129e0:	0a714503          	lbu	a0,167(sp)
   129e4:	00000a93          	addi	s5,zero,0
   129e8:	00000813          	addi	a6,zero,0
   129ec:	00000b13          	addi	s6,zero,0
   129f0:	15c10d93          	addi	s11,sp,348
   129f4:	02013023          	sd	zero,32(sp)
   129f8:	a55ff06f          	jal	zero,1244c <_vfprintf_r+0x98c>
   129fc:	01813703          	ld	a4,24(sp)
   12a00:	0204f793          	andi	a5,s1,32
   12a04:	00048e13          	addi	t3,s1,0
   12a08:	00870613          	addi	a2,a4,8
   12a0c:	0a079ee3          	bne	a5,zero,132c8 <_vfprintf_r+0x1808>
   12a10:	0104f793          	andi	a5,s1,16
   12a14:	0a079ae3          	bne	a5,zero,132c8 <_vfprintf_r+0x1808>
   12a18:	01813703          	ld	a4,24(sp)
   12a1c:	0404f793          	andi	a5,s1,64
   12a20:	00072683          	lw	a3,0(a4)
   12a24:	6a078ce3          	beq	a5,zero,138dc <_vfprintf_r+0x1e1c>
   12a28:	03069693          	slli	a3,a3,0x30
   12a2c:	0306d693          	srli	a3,a3,0x30
   12a30:	00c13c23          	sd	a2,24(sp)
   12a34:	00048813          	addi	a6,s1,0
   12a38:	ca1ff06f          	jal	zero,126d8 <_vfprintf_r+0xc18>
   12a3c:	01813683          	ld	a3,24(sp)
   12a40:	01813703          	ld	a4,24(sp)
   12a44:	0204f793          	andi	a5,s1,32
   12a48:	00868693          	addi	a3,a3,8
   12a4c:	00d13c23          	sd	a3,24(sp)
   12a50:	00073703          	ld	a4,0(a4)
   12a54:	060794e3          	bne	a5,zero,132bc <_vfprintf_r+0x17fc>
   12a58:	0104f793          	andi	a5,s1,16
   12a5c:	060790e3          	bne	a5,zero,132bc <_vfprintf_r+0x17fc>
   12a60:	0404f793          	andi	a5,s1,64
   12a64:	00078463          	beq	a5,zero,12a6c <_vfprintf_r+0xfac>
   12a68:	2cc0106f          	jal	zero,13d34 <_vfprintf_r+0x2274>
   12a6c:	2004ff13          	andi	t5,s1,512
   12a70:	01013783          	ld	a5,16(sp)
   12a74:	000f1463          	bne	t5,zero,12a7c <_vfprintf_r+0xfbc>
   12a78:	2ed0106f          	jal	zero,14564 <_vfprintf_r+0x2aa4>
   12a7c:	00f70023          	sb	a5,0(a4)
   12a80:	958ff06f          	jal	zero,11bd8 <_vfprintf_r+0x118>
   12a84:	000cc303          	lbu	t1,0(s9)
   12a88:	06c00793          	addi	a5,zero,108
   12a8c:	20f300e3          	beq	t1,a5,1348c <_vfprintf_r+0x19cc>
   12a90:	0104e493          	ori	s1,s1,16
   12a94:	9e0ff06f          	jal	zero,11c74 <_vfprintf_r+0x1b4>
   12a98:	410d073b          	subw	a4,s10,a6
   12a9c:	aee05c63          	bge	zero,a4,11d94 <_vfprintf_r+0x2d4>
   12aa0:	01000293          	addi	t0,zero,16
   12aa4:	0e812603          	lw	a2,232(sp)
   12aa8:	0001e6b7          	lui	a3,0x1e
   12aac:	00e2c463          	blt	t0,a4,12ab4 <_vfprintf_r+0xff4>
   12ab0:	20d0106f          	jal	zero,144bc <_vfprintf_r+0x29fc>
   12ab4:	000b8793          	addi	a5,s7,0
   12ab8:	00090593          	addi	a1,s2,0
   12abc:	00048b93          	addi	s7,s1,0
   12ac0:	00700393          	addi	t2,zero,7
   12ac4:	00030c13          	addi	s8,t1,0
   12ac8:	07c13823          	sd	t3,112(sp)
   12acc:	07013c23          	sd	a6,120(sp)
   12ad0:	00070493          	addi	s1,a4,0
   12ad4:	57068913          	addi	s2,a3,1392 # 1e570 <zeroes.0>
   12ad8:	00c0006f          	jal	zero,12ae4 <_vfprintf_r+0x1024>
   12adc:	ff04849b          	addiw	s1,s1,-16
   12ae0:	0492da63          	bge	t0,s1,12b34 <_vfprintf_r+0x1074>
   12ae4:	01058593          	addi	a1,a1,16
   12ae8:	0016061b          	addiw	a2,a2,1
   12aec:	0127b023          	sd	s2,0(a5)
   12af0:	0057b423          	sd	t0,8(a5)
   12af4:	0eb13823          	sd	a1,240(sp)
   12af8:	0ec12423          	sw	a2,232(sp)
   12afc:	01078793          	addi	a5,a5,16
   12b00:	fcc3dee3          	bge	t2,a2,12adc <_vfprintf_r+0x101c>
   12b04:	00813583          	ld	a1,8(sp)
   12b08:	00013503          	ld	a0,0(sp)
   12b0c:	0e010613          	addi	a2,sp,224
   12b10:	691010ef          	jal	ra,149a0 <__sprint_r>
   12b14:	0a051863          	bne	a0,zero,12bc4 <_vfprintf_r+0x1104>
   12b18:	01000293          	addi	t0,zero,16
   12b1c:	ff04849b          	addiw	s1,s1,-16
   12b20:	0f013583          	ld	a1,240(sp)
   12b24:	0e812603          	lw	a2,232(sp)
   12b28:	00098793          	addi	a5,s3,0
   12b2c:	00700393          	addi	t2,zero,7
   12b30:	fa92cae3          	blt	t0,s1,12ae4 <_vfprintf_r+0x1024>
   12b34:	07013e03          	ld	t3,112(sp)
   12b38:	07813803          	ld	a6,120(sp)
   12b3c:	00048713          	addi	a4,s1,0
   12b40:	00090693          	addi	a3,s2,0
   12b44:	000b8493          	addi	s1,s7,0
   12b48:	000c0313          	addi	t1,s8,0
   12b4c:	00078b93          	addi	s7,a5,0
   12b50:	00058913          	addi	s2,a1,0
   12b54:	00e90933          	add	s2,s2,a4
   12b58:	0016061b          	addiw	a2,a2,1
   12b5c:	00ebb423          	sd	a4,8(s7)
   12b60:	00dbb023          	sd	a3,0(s7)
   12b64:	0f213823          	sd	s2,240(sp)
   12b68:	0ec12423          	sw	a2,232(sp)
   12b6c:	00700713          	addi	a4,zero,7
   12b70:	010b8b93          	addi	s7,s7,16
   12b74:	a2c75063          	bge	a4,a2,11d94 <_vfprintf_r+0x2d4>
   12b78:	00813583          	ld	a1,8(sp)
   12b7c:	00013503          	ld	a0,0(sp)
   12b80:	0e010613          	addi	a2,sp,224
   12b84:	09013423          	sd	a6,136(sp)
   12b88:	07c13c23          	sd	t3,120(sp)
   12b8c:	06613823          	sd	t1,112(sp)
   12b90:	611010ef          	jal	ra,149a0 <__sprint_r>
   12b94:	02051863          	bne	a0,zero,12bc4 <_vfprintf_r+0x1104>
   12b98:	0f013903          	ld	s2,240(sp)
   12b9c:	07013303          	ld	t1,112(sp)
   12ba0:	07813e03          	ld	t3,120(sp)
   12ba4:	08813803          	ld	a6,136(sp)
   12ba8:	00098b93          	addi	s7,s3,0
   12bac:	9e8ff06f          	jal	zero,11d94 <_vfprintf_r+0x2d4>
   12bb0:	00813583          	ld	a1,8(sp)
   12bb4:	00013503          	ld	a0,0(sp)
   12bb8:	0e010613          	addi	a2,sp,224
   12bbc:	5e5010ef          	jal	ra,149a0 <__sprint_r>
   12bc0:	a2050e63          	beq	a0,zero,11dfc <_vfprintf_r+0x33c>
   12bc4:	00813483          	ld	s1,8(sp)
   12bc8:	02013783          	ld	a5,32(sp)
   12bcc:	00078863          	beq	a5,zero,12bdc <_vfprintf_r+0x111c>
   12bd0:	00013503          	ld	a0,0(sp)
   12bd4:	00078593          	addi	a1,a5,0
   12bd8:	af8fe0ef          	jal	ra,10ed0 <_free_r>
   12bdc:	0104d783          	lhu	a5,16(s1)
   12be0:	23013903          	ld	s2,560(sp)
   12be4:	22813983          	ld	s3,552(sp)
   12be8:	0407f793          	andi	a5,a5,64
   12bec:	22013a03          	ld	s4,544(sp)
   12bf0:	21813a83          	ld	s5,536(sp)
   12bf4:	20813b83          	ld	s7,520(sp)
   12bf8:	20013c03          	ld	s8,512(sp)
   12bfc:	1f813c83          	ld	s9,504(sp)
   12c00:	1f013d03          	ld	s10,496(sp)
   12c04:	1e813d83          	ld	s11,488(sp)
   12c08:	a8079663          	bne	a5,zero,11e94 <_vfprintf_r+0x3d4>
   12c0c:	24813083          	ld	ra,584(sp)
   12c10:	24013403          	ld	s0,576(sp)
   12c14:	01013503          	ld	a0,16(sp)
   12c18:	23813483          	ld	s1,568(sp)
   12c1c:	21013b03          	ld	s6,528(sp)
   12c20:	25010113          	addi	sp,sp,592
   12c24:	00008067          	jalr	zero,0(ra)
   12c28:	410d073b          	subw	a4,s10,a6
   12c2c:	04013023          	sd	zero,64(sp)
   12c30:	02013c23          	sd	zero,56(sp)
   12c34:	42e04a63          	blt	zero,a4,13068 <_vfprintf_r+0x15a8>
   12c38:	00000493          	addi	s1,zero,0
   12c3c:	92050063          	beq	a0,zero,11d5c <_vfprintf_r+0x29c>
   12c40:	00200393          	addi	t2,zero,2
   12c44:	8e4ff06f          	jal	zero,11d28 <_vfprintf_r+0x268>
   12c48:	0e812a83          	lw	s5,232(sp)
   12c4c:	03013783          	ld	a5,48(sp)
   12c50:	00100693          	addi	a3,zero,1
   12c54:	001a8a9b          	addiw	s5,s5,1
   12c58:	00d90933          	add	s2,s2,a3
   12c5c:	000a8713          	addi	a4,s5,0
   12c60:	010b8b13          	addi	s6,s7,16
   12c64:	52f6dc63          	bge	a3,a5,1319c <_vfprintf_r+0x16dc>
   12c68:	00100693          	addi	a3,zero,1
   12c6c:	00dbb423          	sd	a3,8(s7)
   12c70:	01bbb023          	sd	s11,0(s7)
   12c74:	0f213823          	sd	s2,240(sp)
   12c78:	0ee12423          	sw	a4,232(sp)
   12c7c:	00700693          	addi	a3,zero,7
   12c80:	1ae6c8e3          	blt	a3,a4,13630 <_vfprintf_r+0x1b70>
   12c84:	04813783          	ld	a5,72(sp)
   12c88:	001a8a9b          	addiw	s5,s5,1
   12c8c:	0f512423          	sw	s5,232(sp)
   12c90:	00f90933          	add	s2,s2,a5
   12c94:	05013783          	ld	a5,80(sp)
   12c98:	0f213823          	sd	s2,240(sp)
   12c9c:	00700713          	addi	a4,zero,7
   12ca0:	00fb3023          	sd	a5,0(s6)
   12ca4:	04813783          	ld	a5,72(sp)
   12ca8:	010b0b13          	addi	s6,s6,16
   12cac:	fefb3c23          	sd	a5,-8(s6)
   12cb0:	1b574ae3          	blt	a4,s5,13664 <_vfprintf_r+0x1ba4>
   12cb4:	03013783          	ld	a5,48(sp)
   12cb8:	0d013503          	ld	a0,208(sp)
   12cbc:	0d813583          	ld	a1,216(sp)
   12cc0:	00000613          	addi	a2,zero,0
   12cc4:	00000693          	addi	a3,zero,0
   12cc8:	05013023          	sd	a6,64(sp)
   12ccc:	03c13c23          	sd	t3,56(sp)
   12cd0:	fff78b9b          	addiw	s7,a5,-1
   12cd4:	0b40a0ef          	jal	ra,1cd88 <__eqtf2>
   12cd8:	03813e03          	ld	t3,56(sp)
   12cdc:	04013803          	ld	a6,64(sp)
   12ce0:	50050863          	beq	a0,zero,131f0 <_vfprintf_r+0x1730>
   12ce4:	001a8a9b          	addiw	s5,s5,1
   12ce8:	01790933          	add	s2,s2,s7
   12cec:	001d8793          	addi	a5,s11,1
   12cf0:	0f512423          	sw	s5,232(sp)
   12cf4:	0f213823          	sd	s2,240(sp)
   12cf8:	00fb3023          	sd	a5,0(s6)
   12cfc:	017b3423          	sd	s7,8(s6)
   12d00:	00700793          	addi	a5,zero,7
   12d04:	7557c463          	blt	a5,s5,1344c <_vfprintf_r+0x198c>
   12d08:	010b0b13          	addi	s6,s6,16
   12d0c:	05813783          	ld	a5,88(sp)
   12d10:	05813703          	ld	a4,88(sp)
   12d14:	001a8a9b          	addiw	s5,s5,1
   12d18:	01278933          	add	s2,a5,s2
   12d1c:	0b810793          	addi	a5,sp,184
   12d20:	00fb3023          	sd	a5,0(s6)
   12d24:	0f213823          	sd	s2,240(sp)
   12d28:	0f512423          	sw	s5,232(sp)
   12d2c:	00eb3423          	sd	a4,8(s6)
   12d30:	00700793          	addi	a5,zero,7
   12d34:	010b0b93          	addi	s7,s6,16
   12d38:	8957da63          	bge	a5,s5,11dcc <_vfprintf_r+0x30c>
   12d3c:	00813583          	ld	a1,8(sp)
   12d40:	00013503          	ld	a0,0(sp)
   12d44:	0e010613          	addi	a2,sp,224
   12d48:	05013023          	sd	a6,64(sp)
   12d4c:	03c13c23          	sd	t3,56(sp)
   12d50:	451010ef          	jal	ra,149a0 <__sprint_r>
   12d54:	e60518e3          	bne	a0,zero,12bc4 <_vfprintf_r+0x1104>
   12d58:	0f013903          	ld	s2,240(sp)
   12d5c:	04013803          	ld	a6,64(sp)
   12d60:	03813e03          	ld	t3,56(sp)
   12d64:	00098b93          	addi	s7,s3,0
   12d68:	864ff06f          	jal	zero,11dcc <_vfprintf_r+0x30c>
   12d6c:	00813583          	ld	a1,8(sp)
   12d70:	00013503          	ld	a0,0(sp)
   12d74:	0e010613          	addi	a2,sp,224
   12d78:	09013823          	sd	a6,144(sp)
   12d7c:	09c13423          	sd	t3,136(sp)
   12d80:	06613c23          	sd	t1,120(sp)
   12d84:	06513823          	sd	t0,112(sp)
   12d88:	419010ef          	jal	ra,149a0 <__sprint_r>
   12d8c:	e2051ce3          	bne	a0,zero,12bc4 <_vfprintf_r+0x1104>
   12d90:	0f013903          	ld	s2,240(sp)
   12d94:	09013803          	ld	a6,144(sp)
   12d98:	08813e03          	ld	t3,136(sp)
   12d9c:	07813303          	ld	t1,120(sp)
   12da0:	07013283          	ld	t0,112(sp)
   12da4:	00098b93          	addi	s7,s3,0
   12da8:	fe5fe06f          	jal	zero,11d8c <_vfprintf_r+0x2cc>
   12dac:	01000b13          	addi	s6,zero,16
   12db0:	0e812783          	lw	a5,232(sp)
   12db4:	0001e6b7          	lui	a3,0x1e
   12db8:	015b4463          	blt	s6,s5,12dc0 <_vfprintf_r+0x1300>
   12dbc:	60c0106f          	jal	zero,143c8 <_vfprintf_r+0x2908>
   12dc0:	00090713          	addi	a4,s2,0
   12dc4:	00813c03          	ld	s8,8(sp)
   12dc8:	00700d93          	addi	s11,zero,7
   12dcc:	00080913          	addi	s2,a6,0
   12dd0:	58068493          	addi	s1,a3,1408 # 1e580 <blanks.1>
   12dd4:	00c0006f          	jal	zero,12de0 <_vfprintf_r+0x1320>
   12dd8:	ff0a8a9b          	addiw	s5,s5,-16
   12ddc:	055b5663          	bge	s6,s5,12e28 <_vfprintf_r+0x1368>
   12de0:	01070713          	addi	a4,a4,16
   12de4:	0017879b          	addiw	a5,a5,1
   12de8:	009bb023          	sd	s1,0(s7)
   12dec:	016bb423          	sd	s6,8(s7)
   12df0:	0ee13823          	sd	a4,240(sp)
   12df4:	0ef12423          	sw	a5,232(sp)
   12df8:	010b8b93          	addi	s7,s7,16
   12dfc:	fcfddee3          	bge	s11,a5,12dd8 <_vfprintf_r+0x1318>
   12e00:	00013503          	ld	a0,0(sp)
   12e04:	0e010613          	addi	a2,sp,224
   12e08:	000c0593          	addi	a1,s8,0
   12e0c:	395010ef          	jal	ra,149a0 <__sprint_r>
   12e10:	180512e3          	bne	a0,zero,13794 <_vfprintf_r+0x1cd4>
   12e14:	ff0a8a9b          	addiw	s5,s5,-16
   12e18:	0f013703          	ld	a4,240(sp)
   12e1c:	0e812783          	lw	a5,232(sp)
   12e20:	00098b93          	addi	s7,s3,0
   12e24:	fb5b4ee3          	blt	s6,s5,12de0 <_vfprintf_r+0x1320>
   12e28:	00090813          	addi	a6,s2,0
   12e2c:	00048693          	addi	a3,s1,0
   12e30:	00070913          	addi	s2,a4,0
   12e34:	01590933          	add	s2,s2,s5
   12e38:	0017879b          	addiw	a5,a5,1
   12e3c:	0f213823          	sd	s2,240(sp)
   12e40:	0ef12423          	sw	a5,232(sp)
   12e44:	00dbb023          	sd	a3,0(s7)
   12e48:	015bb423          	sd	s5,8(s7)
   12e4c:	00700713          	addi	a4,zero,7
   12e50:	00f74463          	blt	a4,a5,12e58 <_vfprintf_r+0x1398>
   12e54:	f8dfe06f          	jal	zero,11de0 <_vfprintf_r+0x320>
   12e58:	00813583          	ld	a1,8(sp)
   12e5c:	00013503          	ld	a0,0(sp)
   12e60:	0e010613          	addi	a2,sp,224
   12e64:	03013c23          	sd	a6,56(sp)
   12e68:	339010ef          	jal	ra,149a0 <__sprint_r>
   12e6c:	d4051ce3          	bne	a0,zero,12bc4 <_vfprintf_r+0x1104>
   12e70:	0f013903          	ld	s2,240(sp)
   12e74:	03813803          	ld	a6,56(sp)
   12e78:	f69fe06f          	jal	zero,11de0 <_vfprintf_r+0x320>
   12e7c:	15c10b13          	addi	s6,sp,348
   12e80:	000b0d93          	addi	s11,s6,0
   12e84:	0076f713          	andi	a4,a3,7
   12e88:	000d8613          	addi	a2,s11,0
   12e8c:	03070713          	addi	a4,a4,48
   12e90:	0036d693          	srli	a3,a3,0x3
   12e94:	feed8fa3          	sb	a4,-1(s11)
   12e98:	fffd8d93          	addi	s11,s11,-1
   12e9c:	fe0694e3          	bne	a3,zero,12e84 <_vfprintf_r+0x13c4>
   12ea0:	fd070713          	addi	a4,a4,-48
   12ea4:	03000693          	addi	a3,zero,48
   12ea8:	00070663          	beq	a4,zero,12eb4 <_vfprintf_r+0x13f4>
   12eac:	001e7713          	andi	a4,t3,1
   12eb0:	42071063          	bne	a4,zero,132d0 <_vfprintf_r+0x1810>
   12eb4:	41bb0b3b          	subw	s6,s6,s11
   12eb8:	000a881b          	addiw	a6,s5,0
   12ebc:	3f6ac463          	blt	s5,s6,132a4 <_vfprintf_r+0x17e4>
   12ec0:	02013023          	sd	zero,32(sp)
   12ec4:	04013023          	sd	zero,64(sp)
   12ec8:	02013c23          	sd	zero,56(sp)
   12ecc:	00000493          	addi	s1,zero,0
   12ed0:	e39fe06f          	jal	zero,11d08 <_vfprintf_r+0x248>
   12ed4:	0b012603          	lw	a2,176(sp)
   12ed8:	acc05863          	bge	zero,a2,121a8 <_vfprintf_r+0x6e8>
   12edc:	03013783          	ld	a5,48(sp)
   12ee0:	00048713          	addi	a4,s1,0
   12ee4:	4c97c463          	blt	a5,s1,133ac <_vfprintf_r+0x18ec>
   12ee8:	00070b1b          	addiw	s6,a4,0
   12eec:	03605663          	bge	zero,s6,12f18 <_vfprintf_r+0x1458>
   12ef0:	0e812703          	lw	a4,232(sp)
   12ef4:	01690933          	add	s2,s2,s6
   12ef8:	01bbb023          	sd	s11,0(s7)
   12efc:	0017071b          	addiw	a4,a4,1
   12f00:	016bb423          	sd	s6,8(s7)
   12f04:	0f213823          	sd	s2,240(sp)
   12f08:	0ee12423          	sw	a4,232(sp)
   12f0c:	00700693          	addi	a3,zero,7
   12f10:	010b8b93          	addi	s7,s7,16
   12f14:	52e6cce3          	blt	a3,a4,13c4c <_vfprintf_r+0x218c>
   12f18:	000b0a93          	addi	s5,s6,0
   12f1c:	600b4863          	blt	s6,zero,1352c <_vfprintf_r+0x1a6c>
   12f20:	41548abb          	subw	s5,s1,s5
   12f24:	65504a63          	blt	zero,s5,13578 <_vfprintf_r+0x1ab8>
   12f28:	400e7713          	andi	a4,t3,1024
   12f2c:	009d8fb3          	add	t6,s11,s1
   12f30:	2e071ce3          	bne	a4,zero,13a28 <_vfprintf_r+0x1f68>
   12f34:	0b012a83          	lw	s5,176(sp)
   12f38:	03013783          	ld	a5,48(sp)
   12f3c:	00fac663          	blt	s5,a5,12f48 <_vfprintf_r+0x1488>
   12f40:	001e7713          	andi	a4,t3,1
   12f44:	5a070ae3          	beq	a4,zero,13cf8 <_vfprintf_r+0x2238>
   12f48:	04813783          	ld	a5,72(sp)
   12f4c:	0e812703          	lw	a4,232(sp)
   12f50:	00700693          	addi	a3,zero,7
   12f54:	00f90933          	add	s2,s2,a5
   12f58:	05013783          	ld	a5,80(sp)
   12f5c:	0017071b          	addiw	a4,a4,1
   12f60:	0f213823          	sd	s2,240(sp)
   12f64:	00fbb023          	sd	a5,0(s7)
   12f68:	04813783          	ld	a5,72(sp)
   12f6c:	0ee12423          	sw	a4,232(sp)
   12f70:	010b8b93          	addi	s7,s7,16
   12f74:	fefbbc23          	sd	a5,-8(s7)
   12f78:	00e6d463          	bge	a3,a4,12f80 <_vfprintf_r+0x14c0>
   12f7c:	3400106f          	jal	zero,142bc <_vfprintf_r+0x27fc>
   12f80:	03013783          	ld	a5,48(sp)
   12f84:	00fd87b3          	add	a5,s11,a5
   12f88:	41f78b33          	sub	s6,a5,t6
   12f8c:	03013783          	ld	a5,48(sp)
   12f90:	41578abb          	subw	s5,a5,s5
   12f94:	000b079b          	addiw	a5,s6,0
   12f98:	00fad463          	bge	s5,a5,12fa0 <_vfprintf_r+0x14e0>
   12f9c:	000a8b13          	addi	s6,s5,0
   12fa0:	000b0b1b          	addiw	s6,s6,0
   12fa4:	03605863          	bge	zero,s6,12fd4 <_vfprintf_r+0x1514>
   12fa8:	0e812783          	lw	a5,232(sp)
   12fac:	01690933          	add	s2,s2,s6
   12fb0:	01fbb023          	sd	t6,0(s7)
   12fb4:	0017879b          	addiw	a5,a5,1
   12fb8:	016bb423          	sd	s6,8(s7)
   12fbc:	0f213823          	sd	s2,240(sp)
   12fc0:	0ef12423          	sw	a5,232(sp)
   12fc4:	00700713          	addi	a4,zero,7
   12fc8:	010b8b93          	addi	s7,s7,16
   12fcc:	00f75463          	bge	a4,a5,12fd4 <_vfprintf_r+0x1514>
   12fd0:	3b80106f          	jal	zero,14388 <_vfprintf_r+0x28c8>
   12fd4:	000b0793          	addi	a5,s6,0
   12fd8:	000b5463          	bge	s6,zero,12fe0 <_vfprintf_r+0x1520>
   12fdc:	00000793          	addi	a5,zero,0
   12fe0:	40fa8abb          	subw	s5,s5,a5
   12fe4:	01504463          	blt	zero,s5,12fec <_vfprintf_r+0x152c>
   12fe8:	de5fe06f          	jal	zero,11dcc <_vfprintf_r+0x30c>
   12fec:	01000b13          	addi	s6,zero,16
   12ff0:	0e812783          	lw	a5,232(sp)
   12ff4:	0001e6b7          	lui	a3,0x1e
   12ff8:	015b4463          	blt	s6,s5,13000 <_vfprintf_r+0x1540>
   12ffc:	1840106f          	jal	zero,14180 <_vfprintf_r+0x26c0>
   13000:	000a8493          	addi	s1,s5,0
   13004:	00090713          	addi	a4,s2,0
   13008:	00700d93          	addi	s11,zero,7
   1300c:	00080a93          	addi	s5,a6,0
   13010:	000e0913          	addi	s2,t3,0
   13014:	57068c13          	addi	s8,a3,1392 # 1e570 <zeroes.0>
   13018:	00c0006f          	jal	zero,13024 <_vfprintf_r+0x1564>
   1301c:	ff04849b          	addiw	s1,s1,-16
   13020:	769b5e63          	bge	s6,s1,1379c <_vfprintf_r+0x1cdc>
   13024:	01070713          	addi	a4,a4,16
   13028:	0017879b          	addiw	a5,a5,1
   1302c:	018bb023          	sd	s8,0(s7)
   13030:	016bb423          	sd	s6,8(s7)
   13034:	0ee13823          	sd	a4,240(sp)
   13038:	0ef12423          	sw	a5,232(sp)
   1303c:	010b8b93          	addi	s7,s7,16
   13040:	fcfddee3          	bge	s11,a5,1301c <_vfprintf_r+0x155c>
   13044:	00813583          	ld	a1,8(sp)
   13048:	00013503          	ld	a0,0(sp)
   1304c:	0e010613          	addi	a2,sp,224
   13050:	151010ef          	jal	ra,149a0 <__sprint_r>
   13054:	b60518e3          	bne	a0,zero,12bc4 <_vfprintf_r+0x1104>
   13058:	0f013703          	ld	a4,240(sp)
   1305c:	0e812783          	lw	a5,232(sp)
   13060:	00098b93          	addi	s7,s3,0
   13064:	fb9ff06f          	jal	zero,1301c <_vfprintf_r+0x155c>
   13068:	00200393          	addi	t2,zero,2
   1306c:	01000913          	addi	s2,zero,16
   13070:	00068613          	addi	a2,a3,0
   13074:	0001e6b7          	lui	a3,0x1e
   13078:	00e94463          	blt	s2,a4,13080 <_vfprintf_r+0x15c0>
   1307c:	2a40106f          	jal	zero,14320 <_vfprintf_r+0x2860>
   13080:	000b8793          	addi	a5,s7,0
   13084:	09513823          	sd	s5,144(sp)
   13088:	000b0b93          	addi	s7,s6,0
   1308c:	00700f93          	addi	t6,zero,7
   13090:	00070493          	addi	s1,a4,0
   13094:	06713823          	sd	t2,112(sp)
   13098:	06513c23          	sd	t0,120(sp)
   1309c:	08613423          	sd	t1,136(sp)
   130a0:	000e0c13          	addi	s8,t3,0
   130a4:	00080b13          	addi	s6,a6,0
   130a8:	58068a93          	addi	s5,a3,1408 # 1e580 <blanks.1>
   130ac:	00c0006f          	jal	zero,130b8 <_vfprintf_r+0x15f8>
   130b0:	ff04849b          	addiw	s1,s1,-16
   130b4:	04995863          	bge	s2,s1,13104 <_vfprintf_r+0x1644>
   130b8:	01058593          	addi	a1,a1,16
   130bc:	0016061b          	addiw	a2,a2,1
   130c0:	0157b023          	sd	s5,0(a5)
   130c4:	0127b423          	sd	s2,8(a5)
   130c8:	0eb13823          	sd	a1,240(sp)
   130cc:	0ec12423          	sw	a2,232(sp)
   130d0:	01078793          	addi	a5,a5,16
   130d4:	fccfdee3          	bge	t6,a2,130b0 <_vfprintf_r+0x15f0>
   130d8:	00813583          	ld	a1,8(sp)
   130dc:	00013503          	ld	a0,0(sp)
   130e0:	0e010613          	addi	a2,sp,224
   130e4:	0bd010ef          	jal	ra,149a0 <__sprint_r>
   130e8:	ac051ee3          	bne	a0,zero,12bc4 <_vfprintf_r+0x1104>
   130ec:	ff04849b          	addiw	s1,s1,-16
   130f0:	0f013583          	ld	a1,240(sp)
   130f4:	0e812603          	lw	a2,232(sp)
   130f8:	00098793          	addi	a5,s3,0
   130fc:	00700f93          	addi	t6,zero,7
   13100:	fa994ce3          	blt	s2,s1,130b8 <_vfprintf_r+0x15f8>
   13104:	000a8693          	addi	a3,s5,0
   13108:	07013383          	ld	t2,112(sp)
   1310c:	07813283          	ld	t0,120(sp)
   13110:	08813303          	ld	t1,136(sp)
   13114:	09013a83          	ld	s5,144(sp)
   13118:	000b0813          	addi	a6,s6,0
   1311c:	00048713          	addi	a4,s1,0
   13120:	000b8b13          	addi	s6,s7,0
   13124:	000c0e13          	addi	t3,s8,0
   13128:	00078b93          	addi	s7,a5,0
   1312c:	00b70933          	add	s2,a4,a1
   13130:	0016061b          	addiw	a2,a2,1
   13134:	00ebb423          	sd	a4,8(s7)
   13138:	0f213823          	sd	s2,240(sp)
   1313c:	0ec12423          	sw	a2,232(sp)
   13140:	00dbb023          	sd	a3,0(s7)
   13144:	00700713          	addi	a4,zero,7
   13148:	56c74263          	blt	a4,a2,136ac <_vfprintf_r+0x1bec>
   1314c:	0a714703          	lbu	a4,167(sp)
   13150:	010b8b93          	addi	s7,s7,16
   13154:	00028493          	addi	s1,t0,0
   13158:	14071263          	bne	a4,zero,1329c <_vfprintf_r+0x17dc>
   1315c:	00039463          	bne	t2,zero,13164 <_vfprintf_r+0x16a4>
   13160:	c35fe06f          	jal	zero,11d94 <_vfprintf_r+0x2d4>
   13164:	00000293          	addi	t0,zero,0
   13168:	bf5fe06f          	jal	zero,11d5c <_vfprintf_r+0x29c>
   1316c:	0e812683          	lw	a3,232(sp)
   13170:	00048293          	addi	t0,s1,0
   13174:	00000393          	addi	t2,zero,0
   13178:	ef5ff06f          	jal	zero,1306c <_vfprintf_r+0x15ac>
   1317c:	00000b13          	addi	s6,zero,0
   13180:	00000a93          	addi	s5,zero,0
   13184:	04013023          	sd	zero,64(sp)
   13188:	02013c23          	sd	zero,56(sp)
   1318c:	00000493          	addi	s1,zero,0
   13190:	02013023          	sd	zero,32(sp)
   13194:	15c10d93          	addi	s11,sp,348
   13198:	b71fe06f          	jal	zero,11d08 <_vfprintf_r+0x248>
   1319c:	00de7633          	and	a2,t3,a3
   131a0:	ac0614e3          	bne	a2,zero,12c68 <_vfprintf_r+0x11a8>
   131a4:	01bbb023          	sd	s11,0(s7)
   131a8:	00dbb423          	sd	a3,8(s7)
   131ac:	0f213823          	sd	s2,240(sp)
   131b0:	0f512423          	sw	s5,232(sp)
   131b4:	00700793          	addi	a5,zero,7
   131b8:	b557dae3          	bge	a5,s5,12d0c <_vfprintf_r+0x124c>
   131bc:	00813583          	ld	a1,8(sp)
   131c0:	00013503          	ld	a0,0(sp)
   131c4:	0e010613          	addi	a2,sp,224
   131c8:	05013023          	sd	a6,64(sp)
   131cc:	03c13c23          	sd	t3,56(sp)
   131d0:	7d0010ef          	jal	ra,149a0 <__sprint_r>
   131d4:	9e0518e3          	bne	a0,zero,12bc4 <_vfprintf_r+0x1104>
   131d8:	0f013903          	ld	s2,240(sp)
   131dc:	0e812a83          	lw	s5,232(sp)
   131e0:	04013803          	ld	a6,64(sp)
   131e4:	03813e03          	ld	t3,56(sp)
   131e8:	00098b13          	addi	s6,s3,0
   131ec:	b21ff06f          	jal	zero,12d0c <_vfprintf_r+0x124c>
   131f0:	03013703          	ld	a4,48(sp)
   131f4:	00100793          	addi	a5,zero,1
   131f8:	b0e7dae3          	bge	a5,a4,12d0c <_vfprintf_r+0x124c>
   131fc:	01100793          	addi	a5,zero,17
   13200:	0001e6b7          	lui	a3,0x1e
   13204:	00e7c463          	blt	a5,a4,1320c <_vfprintf_r+0x174c>
   13208:	5780106f          	jal	zero,14780 <_vfprintf_r+0x2cc0>
   1320c:	00090713          	addi	a4,s2,0
   13210:	000b8493          	addi	s1,s7,0
   13214:	01000d93          	addi	s11,zero,16
   13218:	00700793          	addi	a5,zero,7
   1321c:	000e0913          	addi	s2,t3,0
   13220:	00080b93          	addi	s7,a6,0
   13224:	57068c13          	addi	s8,a3,1392 # 1e570 <zeroes.0>
   13228:	00c0006f          	jal	zero,13234 <_vfprintf_r+0x1774>
   1322c:	ff04849b          	addiw	s1,s1,-16
   13230:	1e9dd463          	bge	s11,s1,13418 <_vfprintf_r+0x1958>
   13234:	01070713          	addi	a4,a4,16
   13238:	001a8a9b          	addiw	s5,s5,1
   1323c:	018b3023          	sd	s8,0(s6)
   13240:	01bb3423          	sd	s11,8(s6)
   13244:	0ee13823          	sd	a4,240(sp)
   13248:	0f512423          	sw	s5,232(sp)
   1324c:	010b0b13          	addi	s6,s6,16
   13250:	fd57dee3          	bge	a5,s5,1322c <_vfprintf_r+0x176c>
   13254:	00813583          	ld	a1,8(sp)
   13258:	00013503          	ld	a0,0(sp)
   1325c:	0e010613          	addi	a2,sp,224
   13260:	740010ef          	jal	ra,149a0 <__sprint_r>
   13264:	960510e3          	bne	a0,zero,12bc4 <_vfprintf_r+0x1104>
   13268:	0f013703          	ld	a4,240(sp)
   1326c:	0e812a83          	lw	s5,232(sp)
   13270:	00098b13          	addi	s6,s3,0
   13274:	00700793          	addi	a5,zero,7
   13278:	fb5ff06f          	jal	zero,1322c <_vfprintf_r+0x176c>
   1327c:	001e7793          	andi	a5,t3,1
   13280:	00079463          	bne	a5,zero,13288 <_vfprintf_r+0x17c8>
   13284:	b49fe06f          	jal	zero,11dcc <_vfprintf_r+0x30c>
   13288:	e40ff06f          	jal	zero,128c8 <_vfprintf_r+0xe08>
   1328c:	00878793          	addi	a5,a5,8
   13290:	000cc303          	lbu	t1,0(s9)
   13294:	00f13c23          	sd	a5,24(sp)
   13298:	9ddfe06f          	jal	zero,11c74 <_vfprintf_r+0x1b4>
   1329c:	00000293          	addi	t0,zero,0
   132a0:	a89fe06f          	jal	zero,11d28 <_vfprintf_r+0x268>
   132a4:	000b081b          	addiw	a6,s6,0
   132a8:	02013023          	sd	zero,32(sp)
   132ac:	04013023          	sd	zero,64(sp)
   132b0:	02013c23          	sd	zero,56(sp)
   132b4:	00000493          	addi	s1,zero,0
   132b8:	a51fe06f          	jal	zero,11d08 <_vfprintf_r+0x248>
   132bc:	01013783          	ld	a5,16(sp)
   132c0:	00f73023          	sd	a5,0(a4)
   132c4:	915fe06f          	jal	zero,11bd8 <_vfprintf_r+0x118>
   132c8:	000e0813          	addi	a6,t3,0
   132cc:	c00ff06f          	jal	zero,126cc <_vfprintf_r+0xc0c>
   132d0:	ffe60613          	addi	a2,a2,-2
   132d4:	40cb0b3b          	subw	s6,s6,a2
   132d8:	fedd8fa3          	sb	a3,-1(s11)
   132dc:	000a881b          	addiw	a6,s5,0
   132e0:	016ad463          	bge	s5,s6,132e8 <_vfprintf_r+0x1828>
   132e4:	000b081b          	addiw	a6,s6,0
   132e8:	00060d93          	addi	s11,a2,0
   132ec:	02013023          	sd	zero,32(sp)
   132f0:	04013023          	sd	zero,64(sp)
   132f4:	02013c23          	sd	zero,56(sp)
   132f8:	00000493          	addi	s1,zero,0
   132fc:	a0dfe06f          	jal	zero,11d08 <_vfprintf_r+0x248>
   13300:	01813783          	ld	a5,24(sp)
   13304:	00878613          	addi	a2,a5,8
   13308:	01813783          	ld	a5,24(sp)
   1330c:	000f0e13          	addi	t3,t5,0
   13310:	00c13c23          	sd	a2,24(sp)
   13314:	0007b783          	ld	a5,0(a5)
   13318:	00078713          	addi	a4,a5,0
   1331c:	84cff06f          	jal	zero,12368 <_vfprintf_r+0x8a8>
   13320:	0104f793          	andi	a5,s1,16
   13324:	00078463          	beq	a5,zero,1332c <_vfprintf_r+0x186c>
   13328:	1240106f          	jal	zero,1444c <_vfprintf_r+0x298c>
   1332c:	01813703          	ld	a4,24(sp)
   13330:	0404f793          	andi	a5,s1,64
   13334:	00870693          	addi	a3,a4,8
   13338:	00072703          	lw	a4,0(a4)
   1333c:	2c078263          	beq	a5,zero,13600 <_vfprintf_r+0x1b40>
   13340:	03071713          	slli	a4,a4,0x30
   13344:	0a0103a3          	sb	zero,167(sp)
   13348:	03075713          	srli	a4,a4,0x30
   1334c:	2c0ac463          	blt	s5,zero,13614 <_vfprintf_r+0x1b54>
   13350:	00eaefb3          	or	t6,s5,a4
   13354:	000f849b          	addiw	s1,t6,0
   13358:	00d13c23          	sd	a3,24(sp)
   1335c:	f7fe7e13          	andi	t3,t3,-129
   13360:	8c049063          	bne	s1,zero,12420 <_vfprintf_r+0x960>
   13364:	e7cff06f          	jal	zero,129e0 <_vfprintf_r+0xf20>
   13368:	01813783          	ld	a5,24(sp)
   1336c:	00f78793          	addi	a5,a5,15
   13370:	ff07f793          	andi	a5,a5,-16
   13374:	01078713          	addi	a4,a5,16
   13378:	0007b503          	ld	a0,0(a5)
   1337c:	0087b583          	ld	a1,8(a5)
   13380:	00e13c23          	sd	a4,24(sp)
   13384:	b55fe06f          	jal	zero,11ed8 <_vfprintf_r+0x418>
   13388:	0a714503          	lbu	a0,167(sp)
   1338c:	00100813          	addi	a6,zero,1
   13390:	00000493          	addi	s1,zero,0
   13394:	00100b13          	addi	s6,zero,1
   13398:	15b10d93          	addi	s11,sp,347
   1339c:	8acff06f          	jal	zero,12448 <_vfprintf_r+0x988>
   133a0:	00f13c23          	sd	a5,24(sp)
   133a4:	000f0e13          	addi	t3,t5,0
   133a8:	878ff06f          	jal	zero,12420 <_vfprintf_r+0x960>
   133ac:	03012703          	lw	a4,48(sp)
   133b0:	00070b1b          	addiw	s6,a4,0
   133b4:	b3604ee3          	blt	zero,s6,12ef0 <_vfprintf_r+0x1430>
   133b8:	b61ff06f          	jal	zero,12f18 <_vfprintf_r+0x1458>
   133bc:	0001e637          	lui	a2,0x1e
   133c0:	0024ee13          	ori	t3,s1,2
   133c4:	00b13c23          	sd	a1,24(sp)
   133c8:	29060613          	addi	a2,a2,656 # 1e290 <__clzdi2+0x7c>
   133cc:	00200493          	addi	s1,zero,2
   133d0:	00000513          	addi	a0,zero,0
   133d4:	07800313          	addi	t1,zero,120
   133d8:	15c10b13          	addi	s6,sp,348
   133dc:	000b0d93          	addi	s11,s6,0
   133e0:	00f77793          	andi	a5,a4,15
   133e4:	00f607b3          	add	a5,a2,a5
   133e8:	0007c783          	lbu	a5,0(a5)
   133ec:	00475713          	srli	a4,a4,0x4
   133f0:	fffd8d93          	addi	s11,s11,-1
   133f4:	00fd8023          	sb	a5,0(s11)
   133f8:	fe0714e3          	bne	a4,zero,133e0 <_vfprintf_r+0x1920>
   133fc:	41bb0b3b          	subw	s6,s6,s11
   13400:	000a881b          	addiw	a6,s5,0
   13404:	016ac463          	blt	s5,s6,1340c <_vfprintf_r+0x194c>
   13408:	840ff06f          	jal	zero,12448 <_vfprintf_r+0x988>
   1340c:	000b081b          	addiw	a6,s6,0
   13410:	02013023          	sd	zero,32(sp)
   13414:	838ff06f          	jal	zero,1244c <_vfprintf_r+0x98c>
   13418:	00090e13          	addi	t3,s2,0
   1341c:	000b8813          	addi	a6,s7,0
   13420:	00070913          	addi	s2,a4,0
   13424:	00048b93          	addi	s7,s1,0
   13428:	000c0693          	addi	a3,s8,0
   1342c:	01790933          	add	s2,s2,s7
   13430:	001a8a9b          	addiw	s5,s5,1
   13434:	0f213823          	sd	s2,240(sp)
   13438:	0f512423          	sw	s5,232(sp)
   1343c:	00db3023          	sd	a3,0(s6)
   13440:	017b3423          	sd	s7,8(s6)
   13444:	00700793          	addi	a5,zero,7
   13448:	8d57d0e3          	bge	a5,s5,12d08 <_vfprintf_r+0x1248>
   1344c:	00813583          	ld	a1,8(sp)
   13450:	00013503          	ld	a0,0(sp)
   13454:	0e010613          	addi	a2,sp,224
   13458:	05013023          	sd	a6,64(sp)
   1345c:	03c13c23          	sd	t3,56(sp)
   13460:	540010ef          	jal	ra,149a0 <__sprint_r>
   13464:	f6051063          	bne	a0,zero,12bc4 <_vfprintf_r+0x1104>
   13468:	0f013903          	ld	s2,240(sp)
   1346c:	0e812a83          	lw	s5,232(sp)
   13470:	03813e03          	ld	t3,56(sp)
   13474:	04013803          	ld	a6,64(sp)
   13478:	00098b13          	addi	s6,s3,0
   1347c:	891ff06f          	jal	zero,12d0c <_vfprintf_r+0x124c>
   13480:	fff00a93          	addi	s5,zero,-1
   13484:	00060c93          	addi	s9,a2,0
   13488:	ff4fe06f          	jal	zero,11c7c <_vfprintf_r+0x1bc>
   1348c:	001cc303          	lbu	t1,1(s9)
   13490:	0204e493          	ori	s1,s1,32
   13494:	001c8c93          	addi	s9,s9,1
   13498:	fdcfe06f          	jal	zero,11c74 <_vfprintf_r+0x1b4>
   1349c:	00813583          	ld	a1,8(sp)
   134a0:	00013503          	ld	a0,0(sp)
   134a4:	0e010613          	addi	a2,sp,224
   134a8:	05013023          	sd	a6,64(sp)
   134ac:	03c13c23          	sd	t3,56(sp)
   134b0:	4f0010ef          	jal	ra,149a0 <__sprint_r>
   134b4:	f0051863          	bne	a0,zero,12bc4 <_vfprintf_r+0x1104>
   134b8:	0f013903          	ld	s2,240(sp)
   134bc:	04013803          	ld	a6,64(sp)
   134c0:	03813e03          	ld	t3,56(sp)
   134c4:	00098b93          	addi	s7,s3,0
   134c8:	c34ff06f          	jal	zero,128fc <_vfprintf_r+0xe3c>
   134cc:	001cc303          	lbu	t1,1(s9)
   134d0:	2004e493          	ori	s1,s1,512
   134d4:	001c8c93          	addi	s9,s9,1
   134d8:	f9cfe06f          	jal	zero,11c74 <_vfprintf_r+0x1b4>
   134dc:	0001e637          	lui	a2,0x1e
   134e0:	00048e13          	addi	t3,s1,0
   134e4:	2a860613          	addi	a2,a2,680 # 1e2a8 <__clzdi2+0x94>
   134e8:	01813703          	ld	a4,24(sp)
   134ec:	020e7793          	andi	a5,t3,32
   134f0:	00870593          	addi	a1,a4,8
   134f4:	12078463          	beq	a5,zero,1361c <_vfprintf_r+0x1b5c>
   134f8:	00073703          	ld	a4,0(a4)
   134fc:	001e7793          	andi	a5,t3,1
   13500:	00e036b3          	sltu	a3,zero,a4
   13504:	00078463          	beq	a5,zero,1350c <_vfprintf_r+0x1a4c>
   13508:	20069e63          	bne	a3,zero,13724 <_vfprintf_r+0x1c64>
   1350c:	0a0103a3          	sb	zero,167(sp)
   13510:	180ac463          	blt	s5,zero,13698 <_vfprintf_r+0x1bd8>
   13514:	b7fe7e13          	andi	t3,t3,-1153
   13518:	220a9c63          	bne	s5,zero,13750 <_vfprintf_r+0x1c90>
   1351c:	22069a63          	bne	a3,zero,13750 <_vfprintf_r+0x1c90>
   13520:	00b13c23          	sd	a1,24(sp)
   13524:	00000493          	addi	s1,zero,0
   13528:	cb8ff06f          	jal	zero,129e0 <_vfprintf_r+0xf20>
   1352c:	00000a93          	addi	s5,zero,0
   13530:	9f1ff06f          	jal	zero,12f20 <_vfprintf_r+0x1460>
   13534:	0001e637          	lui	a2,0x1e
   13538:	00048e13          	addi	t3,s1,0
   1353c:	29060613          	addi	a2,a2,656 # 1e290 <__clzdi2+0x7c>
   13540:	fa9ff06f          	jal	zero,134e8 <_vfprintf_r+0x1a28>
   13544:	00600793          	addi	a5,zero,6
   13548:	000a881b          	addiw	a6,s5,0
   1354c:	6f57ec63          	bltu	a5,s5,13c44 <_vfprintf_r+0x2184>
   13550:	0001e7b7          	lui	a5,0x1e
   13554:	00913c23          	sd	s1,24(sp)
   13558:	00080b13          	addi	s6,a6,0
   1355c:	2c078d93          	addi	s11,a5,704 # 1e2c0 <__clzdi2+0xac>
   13560:	02013023          	sd	zero,32(sp)
   13564:	00000a93          	addi	s5,zero,0
   13568:	04013023          	sd	zero,64(sp)
   1356c:	02013c23          	sd	zero,56(sp)
   13570:	00000493          	addi	s1,zero,0
   13574:	f94fe06f          	jal	zero,11d08 <_vfprintf_r+0x248>
   13578:	01000893          	addi	a7,zero,16
   1357c:	0e812703          	lw	a4,232(sp)
   13580:	0001e6b7          	lui	a3,0x1e
   13584:	0158c463          	blt	a7,s5,1358c <_vfprintf_r+0x1acc>
   13588:	2940106f          	jal	zero,1481c <_vfprintf_r+0x2d5c>
   1358c:	000b8793          	addi	a5,s7,0
   13590:	00090613          	addi	a2,s2,0
   13594:	00048b93          	addi	s7,s1,0
   13598:	00700b13          	addi	s6,zero,7
   1359c:	000a8493          	addi	s1,s5,0
   135a0:	000e0913          	addi	s2,t3,0
   135a4:	00080a93          	addi	s5,a6,0
   135a8:	57068c13          	addi	s8,a3,1392 # 1e570 <zeroes.0>
   135ac:	00c0006f          	jal	zero,135b8 <_vfprintf_r+0x1af8>
   135b0:	ff04849b          	addiw	s1,s1,-16
   135b4:	4098d263          	bge	a7,s1,139b8 <_vfprintf_r+0x1ef8>
   135b8:	01060613          	addi	a2,a2,16
   135bc:	0017071b          	addiw	a4,a4,1
   135c0:	0187b023          	sd	s8,0(a5)
   135c4:	0117b423          	sd	a7,8(a5)
   135c8:	0ec13823          	sd	a2,240(sp)
   135cc:	0ee12423          	sw	a4,232(sp)
   135d0:	01078793          	addi	a5,a5,16
   135d4:	fceb5ee3          	bge	s6,a4,135b0 <_vfprintf_r+0x1af0>
   135d8:	00813583          	ld	a1,8(sp)
   135dc:	00013503          	ld	a0,0(sp)
   135e0:	0e010613          	addi	a2,sp,224
   135e4:	3bc010ef          	jal	ra,149a0 <__sprint_r>
   135e8:	dc051e63          	bne	a0,zero,12bc4 <_vfprintf_r+0x1104>
   135ec:	0f013603          	ld	a2,240(sp)
   135f0:	0e812703          	lw	a4,232(sp)
   135f4:	00098793          	addi	a5,s3,0
   135f8:	01000893          	addi	a7,zero,16
   135fc:	fb5ff06f          	jal	zero,135b0 <_vfprintf_r+0x1af0>
   13600:	2004f493          	andi	s1,s1,512
   13604:	0a0103a3          	sb	zero,167(sp)
   13608:	74048863          	beq	s1,zero,13d58 <_vfprintf_r+0x2298>
   1360c:	0ff77713          	andi	a4,a4,255
   13610:	d40ad0e3          	bge	s5,zero,13350 <_vfprintf_r+0x1890>
   13614:	00d13c23          	sd	a3,24(sp)
   13618:	e09fe06f          	jal	zero,12420 <_vfprintf_r+0x960>
   1361c:	010e7793          	andi	a5,t3,16
   13620:	0e078463          	beq	a5,zero,13708 <_vfprintf_r+0x1c48>
   13624:	01813783          	ld	a5,24(sp)
   13628:	0007b703          	ld	a4,0(a5)
   1362c:	ed1ff06f          	jal	zero,134fc <_vfprintf_r+0x1a3c>
   13630:	00813583          	ld	a1,8(sp)
   13634:	00013503          	ld	a0,0(sp)
   13638:	0e010613          	addi	a2,sp,224
   1363c:	05013023          	sd	a6,64(sp)
   13640:	03c13c23          	sd	t3,56(sp)
   13644:	35c010ef          	jal	ra,149a0 <__sprint_r>
   13648:	d6051e63          	bne	a0,zero,12bc4 <_vfprintf_r+0x1104>
   1364c:	0f013903          	ld	s2,240(sp)
   13650:	0e812a83          	lw	s5,232(sp)
   13654:	04013803          	ld	a6,64(sp)
   13658:	03813e03          	ld	t3,56(sp)
   1365c:	00098b13          	addi	s6,s3,0
   13660:	e24ff06f          	jal	zero,12c84 <_vfprintf_r+0x11c4>
   13664:	00813583          	ld	a1,8(sp)
   13668:	00013503          	ld	a0,0(sp)
   1366c:	0e010613          	addi	a2,sp,224
   13670:	05013023          	sd	a6,64(sp)
   13674:	03c13c23          	sd	t3,56(sp)
   13678:	328010ef          	jal	ra,149a0 <__sprint_r>
   1367c:	d4051463          	bne	a0,zero,12bc4 <_vfprintf_r+0x1104>
   13680:	0f013903          	ld	s2,240(sp)
   13684:	0e812a83          	lw	s5,232(sp)
   13688:	04013803          	ld	a6,64(sp)
   1368c:	03813e03          	ld	t3,56(sp)
   13690:	00098b13          	addi	s6,s3,0
   13694:	e20ff06f          	jal	zero,12cb4 <_vfprintf_r+0x11f4>
   13698:	bffe7e13          	andi	t3,t3,-1025
   1369c:	00b13c23          	sd	a1,24(sp)
   136a0:	00000493          	addi	s1,zero,0
   136a4:	00000513          	addi	a0,zero,0
   136a8:	d31ff06f          	jal	zero,133d8 <_vfprintf_r+0x1918>
   136ac:	00813583          	ld	a1,8(sp)
   136b0:	00013503          	ld	a0,0(sp)
   136b4:	0e010613          	addi	a2,sp,224
   136b8:	09013c23          	sd	a6,152(sp)
   136bc:	09c13823          	sd	t3,144(sp)
   136c0:	08613423          	sd	t1,136(sp)
   136c4:	06513c23          	sd	t0,120(sp)
   136c8:	06713823          	sd	t2,112(sp)
   136cc:	2d4010ef          	jal	ra,149a0 <__sprint_r>
   136d0:	ce051a63          	bne	a0,zero,12bc4 <_vfprintf_r+0x1104>
   136d4:	07813283          	ld	t0,120(sp)
   136d8:	0a714703          	lbu	a4,167(sp)
   136dc:	0f013903          	ld	s2,240(sp)
   136e0:	07013383          	ld	t2,112(sp)
   136e4:	08813303          	ld	t1,136(sp)
   136e8:	09013e03          	ld	t3,144(sp)
   136ec:	09813803          	ld	a6,152(sp)
   136f0:	00028493          	addi	s1,t0,0
   136f4:	1a070463          	beq	a4,zero,1389c <_vfprintf_r+0x1ddc>
   136f8:	0e812603          	lw	a2,232(sp)
   136fc:	00000293          	addi	t0,zero,0
   13700:	00098b93          	addi	s7,s3,0
   13704:	e24fe06f          	jal	zero,11d28 <_vfprintf_r+0x268>
   13708:	01813703          	ld	a4,24(sp)
   1370c:	040e7793          	andi	a5,t3,64
   13710:	00072703          	lw	a4,0(a4)
   13714:	1a078c63          	beq	a5,zero,138cc <_vfprintf_r+0x1e0c>
   13718:	03071713          	slli	a4,a4,0x30
   1371c:	03075713          	srli	a4,a4,0x30
   13720:	dddff06f          	jal	zero,134fc <_vfprintf_r+0x1a3c>
   13724:	03000793          	addi	a5,zero,48
   13728:	0a6104a3          	sb	t1,169(sp)
   1372c:	0a0103a3          	sb	zero,167(sp)
   13730:	0af10423          	sb	a5,168(sp)
   13734:	260ac663          	blt	s5,zero,139a0 <_vfprintf_r+0x1ee0>
   13738:	b7fe7f13          	andi	t5,t3,-1153
   1373c:	002f6e13          	ori	t3,t5,2
   13740:	00200493          	addi	s1,zero,2
   13744:	0a714503          	lbu	a0,167(sp)
   13748:	00b13c23          	sd	a1,24(sp)
   1374c:	c8dff06f          	jal	zero,133d8 <_vfprintf_r+0x1918>
   13750:	00000493          	addi	s1,zero,0
   13754:	ff1ff06f          	jal	zero,13744 <_vfprintf_r+0x1c84>
   13758:	00013503          	ld	a0,0(sp)
   1375c:	e05fc0ef          	jal	ra,10560 <__sinit>
   13760:	bb8fe06f          	jal	zero,11b18 <_vfprintf_r+0x58>
   13764:	00813583          	ld	a1,8(sp)
   13768:	00013503          	ld	a0,0(sp)
   1376c:	0e010613          	addi	a2,sp,224
   13770:	05013023          	sd	a6,64(sp)
   13774:	03c13c23          	sd	t3,56(sp)
   13778:	228010ef          	jal	ra,149a0 <__sprint_r>
   1377c:	c4051463          	bne	a0,zero,12bc4 <_vfprintf_r+0x1104>
   13780:	0f013903          	ld	s2,240(sp)
   13784:	04013803          	ld	a6,64(sp)
   13788:	03813e03          	ld	t3,56(sp)
   1378c:	00098b93          	addi	s7,s3,0
   13790:	92cff06f          	jal	zero,128bc <_vfprintf_r+0xdfc>
   13794:	000c0493          	addi	s1,s8,0
   13798:	c30ff06f          	jal	zero,12bc8 <_vfprintf_r+0x1108>
   1379c:	00090e13          	addi	t3,s2,0
   137a0:	000a8813          	addi	a6,s5,0
   137a4:	00070913          	addi	s2,a4,0
   137a8:	00048a93          	addi	s5,s1,0
   137ac:	000c0693          	addi	a3,s8,0
   137b0:	01590933          	add	s2,s2,s5
   137b4:	0017879b          	addiw	a5,a5,1
   137b8:	0f213823          	sd	s2,240(sp)
   137bc:	0ef12423          	sw	a5,232(sp)
   137c0:	00dbb023          	sd	a3,0(s7)
   137c4:	015bb423          	sd	s5,8(s7)
   137c8:	00700713          	addi	a4,zero,7
   137cc:	00f74463          	blt	a4,a5,137d4 <_vfprintf_r+0x1d14>
   137d0:	df8fe06f          	jal	zero,11dc8 <_vfprintf_r+0x308>
   137d4:	a81fe06f          	jal	zero,12254 <_vfprintf_r+0x794>
   137d8:	0d013503          	ld	a0,208(sp)
   137dc:	0d813583          	ld	a1,216(sp)
   137e0:	f7fe7e13          	andi	t3,t3,-129
   137e4:	00000613          	addi	a2,zero,0
   137e8:	00000693          	addi	a3,zero,0
   137ec:	02613c23          	sd	t1,56(sp)
   137f0:	03c13023          	sd	t3,32(sp)
   137f4:	71c090ef          	jal	ra,1cf10 <__letf2>
   137f8:	02013e03          	ld	t3,32(sp)
   137fc:	03813303          	ld	t1,56(sp)
   13800:	260544e3          	blt	a0,zero,14268 <_vfprintf_r+0x27a8>
   13804:	04700793          	addi	a5,zero,71
   13808:	0a714703          	lbu	a4,167(sp)
   1380c:	5a67cc63          	blt	a5,t1,13dc4 <_vfprintf_r+0x2304>
   13810:	0001e7b7          	lui	a5,0x1e
   13814:	27078d93          	addi	s11,a5,624 # 1e270 <__clzdi2+0x5c>
   13818:	16071463          	bne	a4,zero,13980 <_vfprintf_r+0x1ec0>
   1381c:	00300b13          	addi	s6,zero,3
   13820:	000b0813          	addi	a6,s6,0
   13824:	d3dff06f          	jal	zero,13560 <_vfprintf_r+0x1aa0>
   13828:	0001e637          	lui	a2,0x1e
   1382c:	29060613          	addi	a2,a2,656 # 1e290 <__clzdi2+0x7c>
   13830:	00200493          	addi	s1,zero,2
   13834:	07800313          	addi	t1,zero,120
   13838:	f0dff06f          	jal	zero,13744 <_vfprintf_r+0x1c84>
   1383c:	0f013783          	ld	a5,240(sp)
   13840:	00813483          	ld	s1,8(sp)
   13844:	b8078c63          	beq	a5,zero,12bdc <_vfprintf_r+0x111c>
   13848:	00013503          	ld	a0,0(sp)
   1384c:	0e010613          	addi	a2,sp,224
   13850:	00048593          	addi	a1,s1,0
   13854:	14c010ef          	jal	ra,149a0 <__sprint_r>
   13858:	b84ff06f          	jal	zero,12bdc <_vfprintf_r+0x111c>
   1385c:	000d8513          	addi	a0,s11,0
   13860:	03c13023          	sd	t3,32(sp)
   13864:	00613c23          	sd	t1,24(sp)
   13868:	0b8020ef          	jal	ra,15920 <strlen>
   1386c:	00050b1b          	addiw	s6,a0,0
   13870:	01813303          	ld	t1,24(sp)
   13874:	02013e03          	ld	t3,32(sp)
   13878:	000b0713          	addi	a4,s6,0
   1387c:	500b4263          	blt	s6,zero,13d80 <_vfprintf_r+0x22c0>
   13880:	0a714683          	lbu	a3,167(sp)
   13884:	0007081b          	addiw	a6,a4,0
   13888:	00069463          	bne	a3,zero,13890 <_vfprintf_r+0x1dd0>
   1388c:	a91fe06f          	jal	zero,1231c <_vfprintf_r+0x85c>
   13890:	0017081b          	addiw	a6,a4,1
   13894:	00913c23          	sd	s1,24(sp)
   13898:	cc9ff06f          	jal	zero,13560 <_vfprintf_r+0x1aa0>
   1389c:	46038e63          	beq	t2,zero,13d18 <_vfprintf_r+0x2258>
   138a0:	0e812603          	lw	a2,232(sp)
   138a4:	00000293          	addi	t0,zero,0
   138a8:	00098b93          	addi	s7,s3,0
   138ac:	cb0fe06f          	jal	zero,11d5c <_vfprintf_r+0x29c>
   138b0:	2004f793          	andi	a5,s1,512
   138b4:	48078c63          	beq	a5,zero,13d4c <_vfprintf_r+0x228c>
   138b8:	0187171b          	slliw	a4,a4,0x18
   138bc:	4187571b          	sraiw	a4,a4,0x18
   138c0:	00c13c23          	sd	a2,24(sp)
   138c4:	00070793          	addi	a5,a4,0
   138c8:	aa1fe06f          	jal	zero,12368 <_vfprintf_r+0x8a8>
   138cc:	200e7793          	andi	a5,t3,512
   138d0:	46078863          	beq	a5,zero,13d40 <_vfprintf_r+0x2280>
   138d4:	0ff77713          	andi	a4,a4,255
   138d8:	c25ff06f          	jal	zero,134fc <_vfprintf_r+0x1a3c>
   138dc:	2004f793          	andi	a5,s1,512
   138e0:	44078063          	beq	a5,zero,13d20 <_vfprintf_r+0x2260>
   138e4:	0ff6f693          	andi	a3,a3,255
   138e8:	00c13c23          	sd	a2,24(sp)
   138ec:	00048813          	addi	a6,s1,0
   138f0:	de9fe06f          	jal	zero,126d8 <_vfprintf_r+0xc18>
   138f4:	02013023          	sd	zero,32(sp)
   138f8:	00000b13          	addi	s6,zero,0
   138fc:	04013023          	sd	zero,64(sp)
   13900:	02013c23          	sd	zero,56(sp)
   13904:	00000493          	addi	s1,zero,0
   13908:	15c10d93          	addi	s11,sp,348
   1390c:	00000813          	addi	a6,zero,0
   13910:	bf8fe06f          	jal	zero,11d08 <_vfprintf_r+0x248>
   13914:	100e6713          	ori	a4,t3,256
   13918:	fff00793          	addi	a5,zero,-1
   1391c:	02e13023          	sd	a4,32(sp)
   13920:	0d013483          	ld	s1,208(sp)
   13924:	0d813b03          	ld	s6,216(sp)
   13928:	4afa8463          	beq	s5,a5,13dd0 <_vfprintf_r+0x2310>
   1392c:	06013823          	sd	zero,112(sp)
   13930:	000a9663          	bne	s5,zero,1393c <_vfprintf_r+0x1e7c>
   13934:	fb990713          	addi	a4,s2,-71
   13938:	64070a63          	beq	a4,zero,13f8c <_vfprintf_r+0x24cc>
   1393c:	4a0b5063          	bge	s6,zero,13ddc <_vfprintf_r+0x231c>
   13940:	fff00793          	addi	a5,zero,-1
   13944:	03f79793          	slli	a5,a5,0x3f
   13948:	00fb4b33          	xor	s6,s6,a5
   1394c:	02d00793          	addi	a5,zero,45
   13950:	06f13823          	sd	a5,112(sp)
   13954:	4880006f          	jal	zero,13ddc <_vfprintf_r+0x231c>
   13958:	0d813783          	ld	a5,216(sp)
   1395c:	f7fe7e13          	andi	t3,t3,-129
   13960:	03f7d493          	srli	s1,a5,0x3f
   13964:	4207d663          	bge	a5,zero,13d90 <_vfprintf_r+0x22d0>
   13968:	02d00793          	addi	a5,zero,45
   1396c:	0af103a3          	sb	a5,167(sp)
   13970:	04700793          	addi	a5,zero,71
   13974:	4867d6e3          	bge	a5,t1,14600 <_vfprintf_r+0x2b40>
   13978:	0001e7b7          	lui	a5,0x1e
   1397c:	28878d93          	addi	s11,a5,648 # 1e288 <__clzdi2+0x74>
   13980:	02013023          	sd	zero,32(sp)
   13984:	00300b13          	addi	s6,zero,3
   13988:	00000a93          	addi	s5,zero,0
   1398c:	04013023          	sd	zero,64(sp)
   13990:	02013c23          	sd	zero,56(sp)
   13994:	00000493          	addi	s1,zero,0
   13998:	00400813          	addi	a6,zero,4
   1399c:	b6cfe06f          	jal	zero,11d08 <_vfprintf_r+0x248>
   139a0:	bffe7f13          	andi	t5,t3,-1025
   139a4:	002f6e13          	ori	t3,t5,2
   139a8:	00b13c23          	sd	a1,24(sp)
   139ac:	00200493          	addi	s1,zero,2
   139b0:	00000513          	addi	a0,zero,0
   139b4:	a25ff06f          	jal	zero,133d8 <_vfprintf_r+0x1918>
   139b8:	00090e13          	addi	t3,s2,0
   139bc:	000a8813          	addi	a6,s5,0
   139c0:	00060913          	addi	s2,a2,0
   139c4:	00048a93          	addi	s5,s1,0
   139c8:	000c0693          	addi	a3,s8,0
   139cc:	000b8493          	addi	s1,s7,0
   139d0:	00078b93          	addi	s7,a5,0
   139d4:	01590933          	add	s2,s2,s5
   139d8:	0017071b          	addiw	a4,a4,1
   139dc:	00dbb023          	sd	a3,0(s7)
   139e0:	015bb423          	sd	s5,8(s7)
   139e4:	0f213823          	sd	s2,240(sp)
   139e8:	0ee12423          	sw	a4,232(sp)
   139ec:	00700693          	addi	a3,zero,7
   139f0:	010b8b93          	addi	s7,s7,16
   139f4:	d2e6da63          	bge	a3,a4,12f28 <_vfprintf_r+0x1468>
   139f8:	00813583          	ld	a1,8(sp)
   139fc:	00013503          	ld	a0,0(sp)
   13a00:	0e010613          	addi	a2,sp,224
   13a04:	07013c23          	sd	a6,120(sp)
   13a08:	07c13823          	sd	t3,112(sp)
   13a0c:	795000ef          	jal	ra,149a0 <__sprint_r>
   13a10:	9a051a63          	bne	a0,zero,12bc4 <_vfprintf_r+0x1104>
   13a14:	0f013903          	ld	s2,240(sp)
   13a18:	07813803          	ld	a6,120(sp)
   13a1c:	07013e03          	ld	t3,112(sp)
   13a20:	00098b93          	addi	s7,s3,0
   13a24:	d04ff06f          	jal	zero,12f28 <_vfprintf_r+0x1468>
   13a28:	03813783          	ld	a5,56(sp)
   13a2c:	04013703          	ld	a4,64(sp)
   13a30:	00e7e733          	or	a4,a5,a4
   13a34:	640706e3          	beq	a4,zero,14880 <_vfprintf_r+0x2dc0>
   13a38:	03013783          	ld	a5,48(sp)
   13a3c:	07a13823          	sd	s10,112(sp)
   13a40:	07b13c23          	sd	s11,120(sp)
   13a44:	00fd8333          	add	t1,s11,a5
   13a48:	00090713          	addi	a4,s2,0
   13a4c:	09913c23          	sd	s9,152(sp)
   13a50:	06813d03          	ld	s10,104(sp)
   13a54:	04013d83          	ld	s11,64(sp)
   13a58:	03813903          	ld	s2,56(sp)
   13a5c:	08013c83          	ld	s9,128(sp)
   13a60:	00813a83          	ld	s5,8(sp)
   13a64:	0001e8b7          	lui	a7,0x1e
   13a68:	000b8793          	addi	a5,s7,0
   13a6c:	57088893          	addi	a7,a7,1392 # 1e570 <zeroes.0>
   13a70:	00700693          	addi	a3,zero,7
   13a74:	01000b13          	addi	s6,zero,16
   13a78:	000f8c13          	addi	s8,t6,0
   13a7c:	09c13423          	sd	t3,136(sp)
   13a80:	09013823          	sd	a6,144(sp)
   13a84:	00030b93          	addi	s7,t1,0
   13a88:	0bb04263          	blt	zero,s11,13b2c <_vfprintf_r+0x206c>
   13a8c:	fffd0d13          	addi	s10,s10,-1
   13a90:	fff9091b          	addiw	s2,s2,-1
   13a94:	0e812603          	lw	a2,232(sp)
   13a98:	06013583          	ld	a1,96(sp)
   13a9c:	01970733          	add	a4,a4,s9
   13aa0:	0016061b          	addiw	a2,a2,1
   13aa4:	00b7b023          	sd	a1,0(a5)
   13aa8:	0197b423          	sd	s9,8(a5)
   13aac:	0ee13823          	sd	a4,240(sp)
   13ab0:	0ec12423          	sw	a2,232(sp)
   13ab4:	01078793          	addi	a5,a5,16
   13ab8:	12c6c263          	blt	a3,a2,13bdc <_vfprintf_r+0x211c>
   13abc:	000d4603          	lbu	a2,0(s10)
   13ac0:	418b83b3          	sub	t2,s7,s8
   13ac4:	0003859b          	addiw	a1,t2,0
   13ac8:	0006081b          	addiw	a6,a2,0
   13acc:	000b8293          	addi	t0,s7,0
   13ad0:	00b65463          	bge	a2,a1,13ad8 <_vfprintf_r+0x2018>
   13ad4:	00080393          	addi	t2,a6,0
   13ad8:	0003849b          	addiw	s1,t2,0
   13adc:	02905863          	bge	zero,s1,13b0c <_vfprintf_r+0x204c>
   13ae0:	0e812603          	lw	a2,232(sp)
   13ae4:	00970733          	add	a4,a4,s1
   13ae8:	0ee13823          	sd	a4,240(sp)
   13aec:	0016061b          	addiw	a2,a2,1
   13af0:	0187b023          	sd	s8,0(a5)
   13af4:	0097b423          	sd	s1,8(a5)
   13af8:	0ec12423          	sw	a2,232(sp)
   13afc:	10c6c663          	blt	a3,a2,13c08 <_vfprintf_r+0x2148>
   13b00:	000d4603          	lbu	a2,0(s10)
   13b04:	01078793          	addi	a5,a5,16
   13b08:	0006081b          	addiw	a6,a2,0
   13b0c:	00048593          	addi	a1,s1,0
   13b10:	0004d463          	bge	s1,zero,13b18 <_vfprintf_r+0x2058>
   13b14:	00000593          	addi	a1,zero,0
   13b18:	40b804bb          	subw	s1,a6,a1
   13b1c:	00904c63          	blt	zero,s1,13b34 <_vfprintf_r+0x2074>
   13b20:	00cc0c33          	add	s8,s8,a2
   13b24:	f72042e3          	blt	zero,s2,13a88 <_vfprintf_r+0x1fc8>
   13b28:	43b05663          	bge	zero,s11,13f54 <_vfprintf_r+0x2494>
   13b2c:	fffd8d9b          	addiw	s11,s11,-1
   13b30:	f65ff06f          	jal	zero,13a94 <_vfprintf_r+0x1fd4>
   13b34:	0001e5b7          	lui	a1,0x1e
   13b38:	0e812603          	lw	a2,232(sp)
   13b3c:	57058593          	addi	a1,a1,1392 # 1e570 <zeroes.0>
   13b40:	069b5a63          	bge	s6,s1,13bb4 <_vfprintf_r+0x20f4>
   13b44:	02513c23          	sd	t0,56(sp)
   13b48:	05113023          	sd	a7,64(sp)
   13b4c:	00c0006f          	jal	zero,13b58 <_vfprintf_r+0x2098>
   13b50:	ff04849b          	addiw	s1,s1,-16
   13b54:	049b5c63          	bge	s6,s1,13bac <_vfprintf_r+0x20ec>
   13b58:	01070713          	addi	a4,a4,16
   13b5c:	0016061b          	addiw	a2,a2,1
   13b60:	0117b023          	sd	a7,0(a5)
   13b64:	0167b423          	sd	s6,8(a5)
   13b68:	0ee13823          	sd	a4,240(sp)
   13b6c:	0ec12423          	sw	a2,232(sp)
   13b70:	01078793          	addi	a5,a5,16
   13b74:	fcc6dee3          	bge	a3,a2,13b50 <_vfprintf_r+0x2090>
   13b78:	00013503          	ld	a0,0(sp)
   13b7c:	0e010613          	addi	a2,sp,224
   13b80:	000a8593          	addi	a1,s5,0
   13b84:	61d000ef          	jal	ra,149a0 <__sprint_r>
   13b88:	62051c63          	bne	a0,zero,141c0 <_vfprintf_r+0x2700>
   13b8c:	0001e6b7          	lui	a3,0x1e
   13b90:	ff04849b          	addiw	s1,s1,-16
   13b94:	57068893          	addi	a7,a3,1392 # 1e570 <zeroes.0>
   13b98:	0f013703          	ld	a4,240(sp)
   13b9c:	0e812603          	lw	a2,232(sp)
   13ba0:	00098793          	addi	a5,s3,0
   13ba4:	00700693          	addi	a3,zero,7
   13ba8:	fa9b48e3          	blt	s6,s1,13b58 <_vfprintf_r+0x2098>
   13bac:	03813283          	ld	t0,56(sp)
   13bb0:	04013583          	ld	a1,64(sp)
   13bb4:	00970733          	add	a4,a4,s1
   13bb8:	0016061b          	addiw	a2,a2,1
   13bbc:	0ee13823          	sd	a4,240(sp)
   13bc0:	0ec12423          	sw	a2,232(sp)
   13bc4:	00b7b023          	sd	a1,0(a5)
   13bc8:	0097b423          	sd	s1,8(a5)
   13bcc:	6ac6cc63          	blt	a3,a2,14284 <_vfprintf_r+0x27c4>
   13bd0:	000d4603          	lbu	a2,0(s10)
   13bd4:	01078793          	addi	a5,a5,16
   13bd8:	f49ff06f          	jal	zero,13b20 <_vfprintf_r+0x2060>
   13bdc:	00013503          	ld	a0,0(sp)
   13be0:	0e010613          	addi	a2,sp,224
   13be4:	000a8593          	addi	a1,s5,0
   13be8:	5b9000ef          	jal	ra,149a0 <__sprint_r>
   13bec:	5c051a63          	bne	a0,zero,141c0 <_vfprintf_r+0x2700>
   13bf0:	0001e6b7          	lui	a3,0x1e
   13bf4:	57068893          	addi	a7,a3,1392 # 1e570 <zeroes.0>
   13bf8:	0f013703          	ld	a4,240(sp)
   13bfc:	00098793          	addi	a5,s3,0
   13c00:	00700693          	addi	a3,zero,7
   13c04:	eb9ff06f          	jal	zero,13abc <_vfprintf_r+0x1ffc>
   13c08:	00013503          	ld	a0,0(sp)
   13c0c:	0e010613          	addi	a2,sp,224
   13c10:	000a8593          	addi	a1,s5,0
   13c14:	02513c23          	sd	t0,56(sp)
   13c18:	589000ef          	jal	ra,149a0 <__sprint_r>
   13c1c:	5a051263          	bne	a0,zero,141c0 <_vfprintf_r+0x2700>
   13c20:	000d4603          	lbu	a2,0(s10)
   13c24:	0001e6b7          	lui	a3,0x1e
   13c28:	57068893          	addi	a7,a3,1392 # 1e570 <zeroes.0>
   13c2c:	0f013703          	ld	a4,240(sp)
   13c30:	03813283          	ld	t0,56(sp)
   13c34:	00098793          	addi	a5,s3,0
   13c38:	0006081b          	addiw	a6,a2,0
   13c3c:	00700693          	addi	a3,zero,7
   13c40:	ecdff06f          	jal	zero,13b0c <_vfprintf_r+0x204c>
   13c44:	0007881b          	addiw	a6,a5,0
   13c48:	909ff06f          	jal	zero,13550 <_vfprintf_r+0x1a90>
   13c4c:	00813583          	ld	a1,8(sp)
   13c50:	00013503          	ld	a0,0(sp)
   13c54:	0e010613          	addi	a2,sp,224
   13c58:	07013c23          	sd	a6,120(sp)
   13c5c:	07c13823          	sd	t3,112(sp)
   13c60:	541000ef          	jal	ra,149a0 <__sprint_r>
   13c64:	00050463          	beq	a0,zero,13c6c <_vfprintf_r+0x21ac>
   13c68:	f5dfe06f          	jal	zero,12bc4 <_vfprintf_r+0x1104>
   13c6c:	0f013903          	ld	s2,240(sp)
   13c70:	07813803          	ld	a6,120(sp)
   13c74:	07013e03          	ld	t3,112(sp)
   13c78:	00098b93          	addi	s7,s3,0
   13c7c:	a9cff06f          	jal	zero,12f18 <_vfprintf_r+0x1458>
   13c80:	001e7713          	andi	a4,t3,1
   13c84:	00071463          	bne	a4,zero,13c8c <_vfprintf_r+0x21cc>
   13c88:	944fe06f          	jal	zero,11dcc <_vfprintf_r+0x30c>
   13c8c:	04813783          	ld	a5,72(sp)
   13c90:	0e812703          	lw	a4,232(sp)
   13c94:	00700693          	addi	a3,zero,7
   13c98:	01278933          	add	s2,a5,s2
   13c9c:	05013783          	ld	a5,80(sp)
   13ca0:	0017071b          	addiw	a4,a4,1
   13ca4:	0f213823          	sd	s2,240(sp)
   13ca8:	00fbb023          	sd	a5,0(s7)
   13cac:	04813783          	ld	a5,72(sp)
   13cb0:	0ee12423          	sw	a4,232(sp)
   13cb4:	00fbb423          	sd	a5,8(s7)
   13cb8:	50e6d863          	bge	a3,a4,141c8 <_vfprintf_r+0x2708>
   13cbc:	00813583          	ld	a1,8(sp)
   13cc0:	00013503          	ld	a0,0(sp)
   13cc4:	0e010613          	addi	a2,sp,224
   13cc8:	05013023          	sd	a6,64(sp)
   13ccc:	03c13c23          	sd	t3,56(sp)
   13cd0:	4d1000ef          	jal	ra,149a0 <__sprint_r>
   13cd4:	00050463          	beq	a0,zero,13cdc <_vfprintf_r+0x221c>
   13cd8:	eedfe06f          	jal	zero,12bc4 <_vfprintf_r+0x1104>
   13cdc:	0b012603          	lw	a2,176(sp)
   13ce0:	0f013903          	ld	s2,240(sp)
   13ce4:	0e812703          	lw	a4,232(sp)
   13ce8:	04013803          	ld	a6,64(sp)
   13cec:	03813e03          	ld	t3,56(sp)
   13cf0:	00098b93          	addi	s7,s3,0
   13cf4:	d34fe06f          	jal	zero,12228 <_vfprintf_r+0x768>
   13cf8:	00fd8b33          	add	s6,s11,a5
   13cfc:	41fb0b33          	sub	s6,s6,t6
   13d00:	41578abb          	subw	s5,a5,s5
   13d04:	000b079b          	addiw	a5,s6,0
   13d08:	00fad463          	bge	s5,a5,13d10 <_vfprintf_r+0x2250>
   13d0c:	000a8b13          	addi	s6,s5,0
   13d10:	000b0b1b          	addiw	s6,s6,0
   13d14:	ac0ff06f          	jal	zero,12fd4 <_vfprintf_r+0x1514>
   13d18:	00098b93          	addi	s7,s3,0
   13d1c:	878fe06f          	jal	zero,11d94 <_vfprintf_r+0x2d4>
   13d20:	02069693          	slli	a3,a3,0x20
   13d24:	0206d693          	srli	a3,a3,0x20
   13d28:	00c13c23          	sd	a2,24(sp)
   13d2c:	00048813          	addi	a6,s1,0
   13d30:	9a9fe06f          	jal	zero,126d8 <_vfprintf_r+0xc18>
   13d34:	01013783          	ld	a5,16(sp)
   13d38:	00f71023          	sh	a5,0(a4)
   13d3c:	e9dfd06f          	jal	zero,11bd8 <_vfprintf_r+0x118>
   13d40:	02071713          	slli	a4,a4,0x20
   13d44:	02075713          	srli	a4,a4,0x20
   13d48:	fb4ff06f          	jal	zero,134fc <_vfprintf_r+0x1a3c>
   13d4c:	00c13c23          	sd	a2,24(sp)
   13d50:	00070793          	addi	a5,a4,0
   13d54:	e14fe06f          	jal	zero,12368 <_vfprintf_r+0x8a8>
   13d58:	02071713          	slli	a4,a4,0x20
   13d5c:	02075713          	srli	a4,a4,0x20
   13d60:	8a0acae3          	blt	s5,zero,13614 <_vfprintf_r+0x1b54>
   13d64:	00d13c23          	sd	a3,24(sp)
   13d68:	f7fe7e13          	andi	t3,t3,-129
   13d6c:	000a8463          	beq	s5,zero,13d74 <_vfprintf_r+0x22b4>
   13d70:	eb0fe06f          	jal	zero,12420 <_vfprintf_r+0x960>
   13d74:	00071463          	bne	a4,zero,13d7c <_vfprintf_r+0x22bc>
   13d78:	c69fe06f          	jal	zero,129e0 <_vfprintf_r+0xf20>
   13d7c:	ea4fe06f          	jal	zero,12420 <_vfprintf_r+0x960>
   13d80:	00000713          	addi	a4,zero,0
   13d84:	afdff06f          	jal	zero,13880 <_vfprintf_r+0x1dc0>
   13d88:	00000693          	addi	a3,zero,0
   13d8c:	d84fe06f          	jal	zero,12310 <_vfprintf_r+0x850>
   13d90:	04700793          	addi	a5,zero,71
   13d94:	0a714703          	lbu	a4,167(sp)
   13d98:	0667dae3          	bge	a5,t1,1460c <_vfprintf_r+0x2b4c>
   13d9c:	0001e7b7          	lui	a5,0x1e
   13da0:	28878d93          	addi	s11,a5,648 # 1e288 <__clzdi2+0x74>
   13da4:	2a071ae3          	bne	a4,zero,14858 <_vfprintf_r+0x2d98>
   13da8:	00300b13          	addi	s6,zero,3
   13dac:	000b0813          	addi	a6,s6,0
   13db0:	00000a93          	addi	s5,zero,0
   13db4:	04013023          	sd	zero,64(sp)
   13db8:	02013c23          	sd	zero,56(sp)
   13dbc:	02013023          	sd	zero,32(sp)
   13dc0:	f49fd06f          	jal	zero,11d08 <_vfprintf_r+0x248>
   13dc4:	0001e7b7          	lui	a5,0x1e
   13dc8:	27878d93          	addi	s11,a5,632 # 1e278 <__clzdi2+0x64>
   13dcc:	a4dff06f          	jal	zero,13818 <_vfprintf_r+0x1d58>
   13dd0:	1a0b4ce3          	blt	s6,zero,14788 <_vfprintf_r+0x2cc8>
   13dd4:	06013823          	sd	zero,112(sp)
   13dd8:	00600a93          	addi	s5,zero,6
   13ddc:	04600793          	addi	a5,zero,70
   13de0:	3ef91863          	bne	s2,a5,141d0 <_vfprintf_r+0x2710>
   13de4:	00013503          	ld	a0,0(sp)
   13de8:	000a8713          	addi	a4,s5,0
   13dec:	00300693          	addi	a3,zero,3
   13df0:	000b0613          	addi	a2,s6,0
   13df4:	0c810893          	addi	a7,sp,200
   13df8:	0b410813          	addi	a6,sp,180
   13dfc:	0b010793          	addi	a5,sp,176
   13e00:	00048593          	addi	a1,s1,0
   13e04:	03c13c23          	sd	t3,56(sp)
   13e08:	02613823          	sd	t1,48(sp)
   13e0c:	589010ef          	jal	ra,15b94 <_ldtoa_r>
   13e10:	00054603          	lbu	a2,0(a0)
   13e14:	03000693          	addi	a3,zero,48
   13e18:	03013303          	ld	t1,48(sp)
   13e1c:	03813e03          	ld	t3,56(sp)
   13e20:	00050d93          	addi	s11,a0,0
   13e24:	01550733          	add	a4,a0,s5
   13e28:	00d608e3          	beq	a2,a3,14638 <_vfprintf_r+0x2b78>
   13e2c:	0b012783          	lw	a5,176(sp)
   13e30:	00048513          	addi	a0,s1,0
   13e34:	000b0593          	addi	a1,s6,0
   13e38:	00000613          	addi	a2,zero,0
   13e3c:	00000693          	addi	a3,zero,0
   13e40:	03c13c23          	sd	t3,56(sp)
   13e44:	02613823          	sd	t1,48(sp)
   13e48:	00f70c33          	add	s8,a4,a5
   13e4c:	73d080ef          	jal	ra,1cd88 <__eqtf2>
   13e50:	03013303          	ld	t1,48(sp)
   13e54:	03813e03          	ld	t3,56(sp)
   13e58:	78050c63          	beq	a0,zero,145f0 <_vfprintf_r+0x2b30>
   13e5c:	0c813883          	ld	a7,200(sp)
   13e60:	2588f2e3          	bgeu	a7,s8,148a4 <_vfprintf_r+0x2de4>
   13e64:	03000693          	addi	a3,zero,48
   13e68:	00188793          	addi	a5,a7,1
   13e6c:	0cf13423          	sd	a5,200(sp)
   13e70:	00d88023          	sb	a3,0(a7)
   13e74:	0c813883          	ld	a7,200(sp)
   13e78:	ff88e8e3          	bltu	a7,s8,13e68 <_vfprintf_r+0x23a8>
   13e7c:	41b888b3          	sub	a7,a7,s11
   13e80:	0008879b          	addiw	a5,a7,0
   13e84:	04700713          	addi	a4,zero,71
   13e88:	02f13823          	sd	a5,48(sp)
   13e8c:	0b012483          	lw	s1,176(sp)
   13e90:	16e90663          	beq	s2,a4,13ffc <_vfprintf_r+0x253c>
   13e94:	04600713          	addi	a4,zero,70
   13e98:	16e91a63          	bne	s2,a4,1400c <_vfprintf_r+0x254c>
   13e9c:	001e7713          	andi	a4,t3,1
   13ea0:	00eae733          	or	a4,s5,a4
   13ea4:	0007071b          	addiw	a4,a4,0
   13ea8:	109054e3          	bge	zero,s1,147b0 <_vfprintf_r+0x2cf0>
   13eac:	76071663          	bne	a4,zero,14618 <_vfprintf_r+0x2b58>
   13eb0:	00048b13          	addi	s6,s1,0
   13eb4:	06600313          	addi	t1,zero,102
   13eb8:	400e7f13          	andi	t5,t3,1024
   13ebc:	6c0f1e63          	bne	t5,zero,14598 <_vfprintf_r+0x2ad8>
   13ec0:	000b081b          	addiw	a6,s6,0
   13ec4:	000b5463          	bge	s6,zero,13ecc <_vfprintf_r+0x240c>
   13ec8:	00000813          	addi	a6,zero,0
   13ecc:	07013783          	ld	a5,112(sp)
   13ed0:	4a078463          	beq	a5,zero,14378 <_vfprintf_r+0x28b8>
   13ed4:	02d00713          	addi	a4,zero,45
   13ed8:	0ae103a3          	sb	a4,167(sp)
   13edc:	0018081b          	addiw	a6,a6,1
   13ee0:	02013e03          	ld	t3,32(sp)
   13ee4:	00000a93          	addi	s5,zero,0
   13ee8:	02013023          	sd	zero,32(sp)
   13eec:	04013023          	sd	zero,64(sp)
   13ef0:	02013c23          	sd	zero,56(sp)
   13ef4:	e15fd06f          	jal	zero,11d08 <_vfprintf_r+0x248>
   13ef8:	07800793          	addi	a5,zero,120
   13efc:	840fe06f          	jal	zero,11f3c <_vfprintf_r+0x47c>
   13f00:	00013503          	ld	a0,0(sp)
   13f04:	001a859b          	addiw	a1,s5,1
   13f08:	03c13823          	sd	t3,48(sp)
   13f0c:	02613023          	sd	t1,32(sp)
   13f10:	ac4fd0ef          	jal	ra,111d4 <_malloc_r>
   13f14:	02013303          	ld	t1,32(sp)
   13f18:	03013e03          	ld	t3,48(sp)
   13f1c:	00050d93          	addi	s11,a0,0
   13f20:	18050ae3          	beq	a0,zero,148b4 <_vfprintf_r+0x2df4>
   13f24:	0d813583          	ld	a1,216(sp)
   13f28:	03b13023          	sd	s11,32(sp)
   13f2c:	06013823          	sd	zero,112(sp)
   13f30:	0d013503          	ld	a0,208(sp)
   13f34:	0005c463          	blt	a1,zero,13f3c <_vfprintf_r+0x247c>
   13f38:	830fe06f          	jal	zero,11f68 <_vfprintf_r+0x4a8>
   13f3c:	fff00713          	addi	a4,zero,-1
   13f40:	03f71713          	slli	a4,a4,0x3f
   13f44:	02d00793          	addi	a5,zero,45
   13f48:	00e5c5b3          	xor	a1,a1,a4
   13f4c:	06f13823          	sd	a5,112(sp)
   13f50:	818fe06f          	jal	zero,11f68 <_vfprintf_r+0x4a8>
   13f54:	07a13423          	sd	s10,104(sp)
   13f58:	07813d83          	ld	s11,120(sp)
   13f5c:	08813e03          	ld	t3,136(sp)
   13f60:	07013d03          	ld	s10,112(sp)
   13f64:	09013803          	ld	a6,144(sp)
   13f68:	09813c83          	ld	s9,152(sp)
   13f6c:	000c0f93          	addi	t6,s8,0
   13f70:	00078b93          	addi	s7,a5,0
   13f74:	00028c13          	addi	s8,t0,0
   13f78:	00070913          	addi	s2,a4,0
   13f7c:	01fc6463          	bltu	s8,t6,13f84 <_vfprintf_r+0x24c4>
   13f80:	fb5fe06f          	jal	zero,12f34 <_vfprintf_r+0x1474>
   13f84:	000c0f93          	addi	t6,s8,0
   13f88:	fadfe06f          	jal	zero,12f34 <_vfprintf_r+0x1474>
   13f8c:	000b5a63          	bge	s6,zero,13fa0 <_vfprintf_r+0x24e0>
   13f90:	03f79793          	slli	a5,a5,0x3f
   13f94:	00fb4b33          	xor	s6,s6,a5
   13f98:	02d00793          	addi	a5,zero,45
   13f9c:	06f13823          	sd	a5,112(sp)
   13fa0:	00013503          	ld	a0,0(sp)
   13fa4:	0c810893          	addi	a7,sp,200
   13fa8:	0b410813          	addi	a6,sp,180
   13fac:	0b010793          	addi	a5,sp,176
   13fb0:	00100713          	addi	a4,zero,1
   13fb4:	00200693          	addi	a3,zero,2
   13fb8:	00048593          	addi	a1,s1,0
   13fbc:	000b0613          	addi	a2,s6,0
   13fc0:	05c13023          	sd	t3,64(sp)
   13fc4:	02613c23          	sd	t1,56(sp)
   13fc8:	3cd010ef          	jal	ra,15b94 <_ldtoa_r>
   13fcc:	03813303          	ld	t1,56(sp)
   13fd0:	04013e03          	ld	t3,64(sp)
   13fd4:	00100a93          	addi	s5,zero,1
   13fd8:	00050d93          	addi	s11,a0,0
   13fdc:	03513823          	sd	s5,48(sp)
   13fe0:	001e7713          	andi	a4,t3,1
   13fe4:	46071c63          	bne	a4,zero,1445c <_vfprintf_r+0x299c>
   13fe8:	0c813883          	ld	a7,200(sp)
   13fec:	0b012483          	lw	s1,176(sp)
   13ff0:	41b888b3          	sub	a7,a7,s11
   13ff4:	0008879b          	addiw	a5,a7,0
   13ff8:	02f13823          	sd	a5,48(sp)
   13ffc:	ffd4a713          	slti	a4,s1,-3
   14000:	00071463          	bne	a4,zero,14008 <_vfprintf_r+0x2548>
   14004:	109adc63          	bge	s5,s1,1411c <_vfprintf_r+0x265c>
   14008:	ffe3031b          	addiw	t1,t1,-2
   1400c:	fff48a9b          	addiw	s5,s1,-1
   14010:	0a610c23          	sb	t1,184(sp)
   14014:	0b512823          	sw	s5,176(sp)
   14018:	660ac263          	blt	s5,zero,1467c <_vfprintf_r+0x2bbc>
   1401c:	02b00713          	addi	a4,zero,43
   14020:	0ae10ca3          	sb	a4,185(sp)
   14024:	00900713          	addi	a4,zero,9
   14028:	67575663          	bge	a4,s5,14694 <_vfprintf_r+0x2bd4>
   1402c:	03c13c23          	sd	t3,56(sp)
   14030:	02013023          	sd	zero,32(sp)
   14034:	0c710913          	addi	s2,sp,199
   14038:	00090b13          	addi	s6,s2,0
   1403c:	04613023          	sd	t1,64(sp)
   14040:	00a00593          	addi	a1,zero,10
   14044:	000a8513          	addi	a0,s5,0
   14048:	1900a0ef          	jal	ra,1e1d8 <__moddi3>
   1404c:	0305079b          	addiw	a5,a0,48
   14050:	000b0c13          	addi	s8,s6,0
   14054:	fefc0fa3          	sb	a5,-1(s8)
   14058:	000a8513          	addi	a0,s5,0
   1405c:	00a00593          	addi	a1,zero,10
   14060:	0f40a0ef          	jal	ra,1e154 <__divdi3>
   14064:	000a8493          	addi	s1,s5,0
   14068:	06300793          	addi	a5,zero,99
   1406c:	fffb0b13          	addi	s6,s6,-1
   14070:	00050a9b          	addiw	s5,a0,0
   14074:	fc97c6e3          	blt	a5,s1,14040 <_vfprintf_r+0x2580>
   14078:	030a869b          	addiw	a3,s5,48
   1407c:	fedb0fa3          	sb	a3,-1(s6)
   14080:	ffec0713          	addi	a4,s8,-2
   14084:	04013303          	ld	t1,64(sp)
   14088:	7b277663          	bgeu	a4,s2,14834 <_vfprintf_r+0x2d74>
   1408c:	0ba10513          	addi	a0,sp,186
   14090:	00050693          	addi	a3,a0,0
   14094:	00074783          	lbu	a5,0(a4)
   14098:	00170713          	addi	a4,a4,1
   1409c:	00168693          	addi	a3,a3,1
   140a0:	fef68fa3          	sb	a5,-1(a3)
   140a4:	ff2718e3          	bne	a4,s2,14094 <_vfprintf_r+0x25d4>
   140a8:	00a70733          	add	a4,a4,a0
   140ac:	00270713          	addi	a4,a4,2
   140b0:	41870733          	sub	a4,a4,s8
   140b4:	0b810693          	addi	a3,sp,184
   140b8:	40d707bb          	subw	a5,a4,a3
   140bc:	04f13c23          	sd	a5,88(sp)
   140c0:	03013783          	ld	a5,48(sp)
   140c4:	05813703          	ld	a4,88(sp)
   140c8:	00100693          	addi	a3,zero,1
   140cc:	00e7873b          	addw	a4,a5,a4
   140d0:	00070b13          	addi	s6,a4,0
   140d4:	40f6dc63          	bge	a3,a5,144ec <_vfprintf_r+0x2a2c>
   140d8:	04813783          	ld	a5,72(sp)
   140dc:	00e78b3b          	addw	s6,a5,a4
   140e0:	03813783          	ld	a5,56(sp)
   140e4:	000b081b          	addiw	a6,s6,0
   140e8:	bff7ff13          	andi	t5,a5,-1025
   140ec:	100f6e13          	ori	t3,t5,256
   140f0:	000b5463          	bge	s6,zero,140f8 <_vfprintf_r+0x2638>
   140f4:	00000813          	addi	a6,zero,0
   140f8:	03813783          	ld	a5,56(sp)
   140fc:	0027f493          	andi	s1,a5,2
   14100:	07013783          	ld	a5,112(sp)
   14104:	3a078263          	beq	a5,zero,144a8 <_vfprintf_r+0x29e8>
   14108:	02d00513          	addi	a0,zero,45
   1410c:	0aa103a3          	sb	a0,167(sp)
   14110:	00000a93          	addi	s5,zero,0
   14114:	0018081b          	addiw	a6,a6,1
   14118:	a8cfe06f          	jal	zero,123a4 <_vfprintf_r+0x8e4>
   1411c:	03013783          	ld	a5,48(sp)
   14120:	02f4ca63          	blt	s1,a5,14154 <_vfprintf_r+0x2694>
   14124:	001e7713          	andi	a4,t3,1
   14128:	00048b13          	addi	s6,s1,0
   1412c:	00070663          	beq	a4,zero,14138 <_vfprintf_r+0x2678>
   14130:	04813783          	ld	a5,72(sp)
   14134:	00978b3b          	addw	s6,a5,s1
   14138:	400e7f13          	andi	t5,t3,1024
   1413c:	000f0463          	beq	t5,zero,14144 <_vfprintf_r+0x2684>
   14140:	44904a63          	blt	zero,s1,14594 <_vfprintf_r+0x2ad4>
   14144:	000b081b          	addiw	a6,s6,0
   14148:	020b4663          	blt	s6,zero,14174 <_vfprintf_r+0x26b4>
   1414c:	06700313          	addi	t1,zero,103
   14150:	d7dff06f          	jal	zero,13ecc <_vfprintf_r+0x240c>
   14154:	04813783          	ld	a5,72(sp)
   14158:	06700313          	addi	t1,zero,103
   1415c:	01178b3b          	addw	s6,a5,a7
   14160:	d4904ce3          	blt	zero,s1,13eb8 <_vfprintf_r+0x23f8>
   14164:	409b08bb          	subw	a7,s6,s1
   14168:	00188b1b          	addiw	s6,a7,1
   1416c:	000b081b          	addiw	a6,s6,0
   14170:	fc0b5ee3          	bge	s6,zero,1414c <_vfprintf_r+0x268c>
   14174:	00000813          	addi	a6,zero,0
   14178:	06700313          	addi	t1,zero,103
   1417c:	d51ff06f          	jal	zero,13ecc <_vfprintf_r+0x240c>
   14180:	57068693          	addi	a3,a3,1392
   14184:	e2cff06f          	jal	zero,137b0 <_vfprintf_r+0x1cf0>
   14188:	00813583          	ld	a1,8(sp)
   1418c:	00013503          	ld	a0,0(sp)
   14190:	0e010613          	addi	a2,sp,224
   14194:	05013023          	sd	a6,64(sp)
   14198:	03c13c23          	sd	t3,56(sp)
   1419c:	005000ef          	jal	ra,149a0 <__sprint_r>
   141a0:	00050463          	beq	a0,zero,141a8 <_vfprintf_r+0x26e8>
   141a4:	a21fe06f          	jal	zero,12bc4 <_vfprintf_r+0x1104>
   141a8:	0b012603          	lw	a2,176(sp)
   141ac:	0f013903          	ld	s2,240(sp)
   141b0:	04013803          	ld	a6,64(sp)
   141b4:	03813e03          	ld	t3,56(sp)
   141b8:	00098b93          	addi	s7,s3,0
   141bc:	824fe06f          	jal	zero,121e0 <_vfprintf_r+0x720>
   141c0:	000a8493          	addi	s1,s5,0
   141c4:	a05fe06f          	jal	zero,12bc8 <_vfprintf_r+0x1108>
   141c8:	010b8b93          	addi	s7,s7,16
   141cc:	864fe06f          	jal	zero,12230 <_vfprintf_r+0x770>
   141d0:	fbb90793          	addi	a5,s2,-69
   141d4:	00013503          	ld	a0,0(sp)
   141d8:	0017b793          	sltiu	a5,a5,1
   141dc:	015787bb          	addw	a5,a5,s5
   141e0:	00078713          	addi	a4,a5,0
   141e4:	02f13823          	sd	a5,48(sp)
   141e8:	0c810893          	addi	a7,sp,200
   141ec:	0b410813          	addi	a6,sp,180
   141f0:	0b010793          	addi	a5,sp,176
   141f4:	00200693          	addi	a3,zero,2
   141f8:	00048593          	addi	a1,s1,0
   141fc:	000b0613          	addi	a2,s6,0
   14200:	05c13023          	sd	t3,64(sp)
   14204:	02613c23          	sd	t1,56(sp)
   14208:	18d010ef          	jal	ra,15b94 <_ldtoa_r>
   1420c:	04700713          	addi	a4,zero,71
   14210:	03813303          	ld	t1,56(sp)
   14214:	04013e03          	ld	t3,64(sp)
   14218:	00050d93          	addi	s11,a0,0
   1421c:	dce902e3          	beq	s2,a4,13fe0 <_vfprintf_r+0x2520>
   14220:	00048513          	addi	a0,s1,0
   14224:	000b0593          	addi	a1,s6,0
   14228:	00000613          	addi	a2,zero,0
   1422c:	00000693          	addi	a3,zero,0
   14230:	05c13023          	sd	t3,64(sp)
   14234:	02613c23          	sd	t1,56(sp)
   14238:	351080ef          	jal	ra,1cd88 <__eqtf2>
   1423c:	03813303          	ld	t1,56(sp)
   14240:	04013e03          	ld	t3,64(sp)
   14244:	64050463          	beq	a0,zero,1488c <_vfprintf_r+0x2dcc>
   14248:	03013783          	ld	a5,48(sp)
   1424c:	0c813883          	ld	a7,200(sp)
   14250:	00fd8c33          	add	s8,s11,a5
   14254:	c188e8e3          	bltu	a7,s8,13e64 <_vfprintf_r+0x23a4>
   14258:	41b887bb          	subw	a5,a7,s11
   1425c:	0b012483          	lw	s1,176(sp)
   14260:	02f13823          	sd	a5,48(sp)
   14264:	da9ff06f          	jal	zero,1400c <_vfprintf_r+0x254c>
   14268:	02d00793          	addi	a5,zero,45
   1426c:	0af103a3          	sb	a5,167(sp)
   14270:	04700793          	addi	a5,zero,71
   14274:	2467d863          	bge	a5,t1,144c4 <_vfprintf_r+0x2a04>
   14278:	0001e7b7          	lui	a5,0x1e
   1427c:	27878d93          	addi	s11,a5,632 # 1e278 <__clzdi2+0x64>
   14280:	f00ff06f          	jal	zero,13980 <_vfprintf_r+0x1ec0>
   14284:	00013503          	ld	a0,0(sp)
   14288:	0e010613          	addi	a2,sp,224
   1428c:	000a8593          	addi	a1,s5,0
   14290:	02513c23          	sd	t0,56(sp)
   14294:	70c000ef          	jal	ra,149a0 <__sprint_r>
   14298:	f20514e3          	bne	a0,zero,141c0 <_vfprintf_r+0x2700>
   1429c:	0001e6b7          	lui	a3,0x1e
   142a0:	57068893          	addi	a7,a3,1392 # 1e570 <zeroes.0>
   142a4:	000d4603          	lbu	a2,0(s10)
   142a8:	0f013703          	ld	a4,240(sp)
   142ac:	03813283          	ld	t0,56(sp)
   142b0:	00098793          	addi	a5,s3,0
   142b4:	00700693          	addi	a3,zero,7
   142b8:	869ff06f          	jal	zero,13b20 <_vfprintf_r+0x2060>
   142bc:	00813583          	ld	a1,8(sp)
   142c0:	00013503          	ld	a0,0(sp)
   142c4:	0e010613          	addi	a2,sp,224
   142c8:	07013823          	sd	a6,112(sp)
   142cc:	05c13023          	sd	t3,64(sp)
   142d0:	03f13c23          	sd	t6,56(sp)
   142d4:	6cc000ef          	jal	ra,149a0 <__sprint_r>
   142d8:	00050463          	beq	a0,zero,142e0 <_vfprintf_r+0x2820>
   142dc:	8e9fe06f          	jal	zero,12bc4 <_vfprintf_r+0x1104>
   142e0:	0b012a83          	lw	s5,176(sp)
   142e4:	0f013903          	ld	s2,240(sp)
   142e8:	07013803          	ld	a6,112(sp)
   142ec:	04013e03          	ld	t3,64(sp)
   142f0:	03813f83          	ld	t6,56(sp)
   142f4:	00098b93          	addi	s7,s3,0
   142f8:	c89fe06f          	jal	zero,12f80 <_vfprintf_r+0x14c0>
   142fc:	00913c23          	sd	s1,24(sp)
   14300:	1c070863          	beq	a4,zero,144d0 <_vfprintf_r+0x2a10>
   14304:	001a881b          	addiw	a6,s5,1
   14308:	000a8b13          	addi	s6,s5,0
   1430c:	04013023          	sd	zero,64(sp)
   14310:	00000a93          	addi	s5,zero,0
   14314:	02013c23          	sd	zero,56(sp)
   14318:	00000493          	addi	s1,zero,0
   1431c:	9edfd06f          	jal	zero,11d08 <_vfprintf_r+0x248>
   14320:	58068693          	addi	a3,a3,1408
   14324:	e09fe06f          	jal	zero,1312c <_vfprintf_r+0x166c>
   14328:	08013783          	ld	a5,128(sp)
   1432c:	06013583          	ld	a1,96(sp)
   14330:	40fd84b3          	sub	s1,s11,a5
   14334:	00078613          	addi	a2,a5,0
   14338:	00048513          	addi	a0,s1,0
   1433c:	208010ef          	jal	ra,15544 <strncpy>
   14340:	001b4783          	lbu	a5,1(s6)
   14344:	000a8513          	addi	a0,s5,0
   14348:	00a00593          	addi	a1,zero,10
   1434c:	00f037b3          	sltu	a5,zero,a5
   14350:	00fb0b33          	add	s6,s6,a5
   14354:	609090ef          	jal	ra,1e15c <__hidden___udivdi3>
   14358:	00a00593          	addi	a1,zero,10
   1435c:	00050a93          	addi	s5,a0,0
   14360:	645090ef          	jal	ra,1e1a4 <__umoddi3>
   14364:	0305079b          	addiw	a5,a0,48
   14368:	fff48d93          	addi	s11,s1,-1
   1436c:	fef48fa3          	sb	a5,-1(s1)
   14370:	00100493          	addi	s1,zero,1
   14374:	a70fe06f          	jal	zero,125e4 <_vfprintf_r+0xb24>
   14378:	0a714703          	lbu	a4,167(sp)
   1437c:	b60702e3          	beq	a4,zero,13ee0 <_vfprintf_r+0x2420>
   14380:	0018081b          	addiw	a6,a6,1
   14384:	b5dff06f          	jal	zero,13ee0 <_vfprintf_r+0x2420>
   14388:	00813583          	ld	a1,8(sp)
   1438c:	00013503          	ld	a0,0(sp)
   14390:	0e010613          	addi	a2,sp,224
   14394:	05013023          	sd	a6,64(sp)
   14398:	03c13c23          	sd	t3,56(sp)
   1439c:	604000ef          	jal	ra,149a0 <__sprint_r>
   143a0:	00050463          	beq	a0,zero,143a8 <_vfprintf_r+0x28e8>
   143a4:	821fe06f          	jal	zero,12bc4 <_vfprintf_r+0x1104>
   143a8:	0b012a83          	lw	s5,176(sp)
   143ac:	03013783          	ld	a5,48(sp)
   143b0:	0f013903          	ld	s2,240(sp)
   143b4:	04013803          	ld	a6,64(sp)
   143b8:	03813e03          	ld	t3,56(sp)
   143bc:	00098b93          	addi	s7,s3,0
   143c0:	41578abb          	subw	s5,a5,s5
   143c4:	c11fe06f          	jal	zero,12fd4 <_vfprintf_r+0x1514>
   143c8:	58068693          	addi	a3,a3,1408
   143cc:	a69fe06f          	jal	zero,12e34 <_vfprintf_r+0x1374>
   143d0:	ff000693          	addi	a3,zero,-16
   143d4:	40c00abb          	subw	s5,zero,a2
   143d8:	46d65a63          	bge	a2,a3,1484c <_vfprintf_r+0x2d8c>
   143dc:	0001e6b7          	lui	a3,0x1e
   143e0:	00090793          	addi	a5,s2,0
   143e4:	01000b13          	addi	s6,zero,16
   143e8:	00700493          	addi	s1,zero,7
   143ec:	000e0c13          	addi	s8,t3,0
   143f0:	03013c23          	sd	a6,56(sp)
   143f4:	57068913          	addi	s2,a3,1392 # 1e570 <zeroes.0>
   143f8:	00c0006f          	jal	zero,14404 <_vfprintf_r+0x2944>
   143fc:	ff0a8a9b          	addiw	s5,s5,-16
   14400:	0f5b5e63          	bge	s6,s5,144fc <_vfprintf_r+0x2a3c>
   14404:	01078793          	addi	a5,a5,16
   14408:	0017071b          	addiw	a4,a4,1
   1440c:	012bb023          	sd	s2,0(s7)
   14410:	016bb423          	sd	s6,8(s7)
   14414:	0ef13823          	sd	a5,240(sp)
   14418:	0ee12423          	sw	a4,232(sp)
   1441c:	010b8b93          	addi	s7,s7,16
   14420:	fce4dee3          	bge	s1,a4,143fc <_vfprintf_r+0x293c>
   14424:	00813583          	ld	a1,8(sp)
   14428:	00013503          	ld	a0,0(sp)
   1442c:	0e010613          	addi	a2,sp,224
   14430:	570000ef          	jal	ra,149a0 <__sprint_r>
   14434:	00050463          	beq	a0,zero,1443c <_vfprintf_r+0x297c>
   14438:	f8cfe06f          	jal	zero,12bc4 <_vfprintf_r+0x1104>
   1443c:	0f013783          	ld	a5,240(sp)
   14440:	0e812703          	lw	a4,232(sp)
   14444:	00098b93          	addi	s7,s3,0
   14448:	fb5ff06f          	jal	zero,143fc <_vfprintf_r+0x293c>
   1444c:	00048f13          	addi	t5,s1,0
   14450:	8b4fe06f          	jal	zero,12504 <_vfprintf_r+0xa44>
   14454:	00048f13          	addi	t5,s1,0
   14458:	eb1fe06f          	jal	zero,13308 <_vfprintf_r+0x1848>
   1445c:	00048513          	addi	a0,s1,0
   14460:	000b0593          	addi	a1,s6,0
   14464:	00000613          	addi	a2,zero,0
   14468:	00000693          	addi	a3,zero,0
   1446c:	05c13023          	sd	t3,64(sp)
   14470:	02613c23          	sd	t1,56(sp)
   14474:	115080ef          	jal	ra,1cd88 <__eqtf2>
   14478:	03813303          	ld	t1,56(sp)
   1447c:	04013e03          	ld	t3,64(sp)
   14480:	1a050663          	beq	a0,zero,1462c <_vfprintf_r+0x2b6c>
   14484:	03013783          	ld	a5,48(sp)
   14488:	0c813883          	ld	a7,200(sp)
   1448c:	00fd8c33          	add	s8,s11,a5
   14490:	9d88eae3          	bltu	a7,s8,13e64 <_vfprintf_r+0x23a4>
   14494:	41b888b3          	sub	a7,a7,s11
   14498:	0008879b          	addiw	a5,a7,0
   1449c:	0b012483          	lw	s1,176(sp)
   144a0:	02f13823          	sd	a5,48(sp)
   144a4:	b59ff06f          	jal	zero,13ffc <_vfprintf_r+0x253c>
   144a8:	0a714503          	lbu	a0,167(sp)
   144ac:	00000a93          	addi	s5,zero,0
   144b0:	00050463          	beq	a0,zero,144b8 <_vfprintf_r+0x29f8>
   144b4:	f9dfd06f          	jal	zero,12450 <_vfprintf_r+0x990>
   144b8:	eedfd06f          	jal	zero,123a4 <_vfprintf_r+0x8e4>
   144bc:	57068693          	addi	a3,a3,1392
   144c0:	e94fe06f          	jal	zero,12b54 <_vfprintf_r+0x1094>
   144c4:	0001e7b7          	lui	a5,0x1e
   144c8:	27078d93          	addi	s11,a5,624 # 1e270 <__clzdi2+0x5c>
   144cc:	cb4ff06f          	jal	zero,13980 <_vfprintf_r+0x1ec0>
   144d0:	000a8b13          	addi	s6,s5,0
   144d4:	000a8813          	addi	a6,s5,0
   144d8:	04013023          	sd	zero,64(sp)
   144dc:	00000a93          	addi	s5,zero,0
   144e0:	02013c23          	sd	zero,56(sp)
   144e4:	00000493          	addi	s1,zero,0
   144e8:	821fd06f          	jal	zero,11d08 <_vfprintf_r+0x248>
   144ec:	03813783          	ld	a5,56(sp)
   144f0:	00d7f6b3          	and	a3,a5,a3
   144f4:	be0686e3          	beq	a3,zero,140e0 <_vfprintf_r+0x2620>
   144f8:	be1ff06f          	jal	zero,140d8 <_vfprintf_r+0x2618>
   144fc:	03813803          	ld	a6,56(sp)
   14500:	00090693          	addi	a3,s2,0
   14504:	000c0e13          	addi	t3,s8,0
   14508:	00078913          	addi	s2,a5,0
   1450c:	01590933          	add	s2,s2,s5
   14510:	0017071b          	addiw	a4,a4,1
   14514:	00dbb023          	sd	a3,0(s7)
   14518:	0f213823          	sd	s2,240(sp)
   1451c:	0ee12423          	sw	a4,232(sp)
   14520:	015bb423          	sd	s5,8(s7)
   14524:	00700693          	addi	a3,zero,7
   14528:	cae6d0e3          	bge	a3,a4,141c8 <_vfprintf_r+0x2708>
   1452c:	00813583          	ld	a1,8(sp)
   14530:	00013503          	ld	a0,0(sp)
   14534:	0e010613          	addi	a2,sp,224
   14538:	05013023          	sd	a6,64(sp)
   1453c:	03c13c23          	sd	t3,56(sp)
   14540:	460000ef          	jal	ra,149a0 <__sprint_r>
   14544:	00050463          	beq	a0,zero,1454c <_vfprintf_r+0x2a8c>
   14548:	e7cfe06f          	jal	zero,12bc4 <_vfprintf_r+0x1104>
   1454c:	0f013903          	ld	s2,240(sp)
   14550:	0e812703          	lw	a4,232(sp)
   14554:	04013803          	ld	a6,64(sp)
   14558:	03813e03          	ld	t3,56(sp)
   1455c:	00098b93          	addi	s7,s3,0
   14560:	cd1fd06f          	jal	zero,12230 <_vfprintf_r+0x770>
   14564:	00f72023          	sw	a5,0(a4)
   14568:	e70fd06f          	jal	zero,11bd8 <_vfprintf_r+0x118>
   1456c:	fff00793          	addi	a5,zero,-1
   14570:	03f79793          	slli	a5,a5,0x3f
   14574:	00f5c5b3          	xor	a1,a1,a5
   14578:	02d00793          	addi	a5,zero,45
   1457c:	06f13823          	sd	a5,112(sp)
   14580:	02013023          	sd	zero,32(sp)
   14584:	0f810d93          	addi	s11,sp,248
   14588:	9e1fd06f          	jal	zero,11f68 <_vfprintf_r+0x4a8>
   1458c:	00813483          	ld	s1,8(sp)
   14590:	e4cfe06f          	jal	zero,12bdc <_vfprintf_r+0x111c>
   14594:	06700313          	addi	t1,zero,103
   14598:	06813783          	ld	a5,104(sp)
   1459c:	0007c703          	lbu	a4,0(a5)
   145a0:	f0170693          	addi	a3,a4,-255
   145a4:	2e068863          	beq	a3,zero,14894 <_vfprintf_r+0x2dd4>
   145a8:	2e975663          	bge	a4,s1,14894 <_vfprintf_r+0x2dd4>
   145ac:	08012583          	lw	a1,128(sp)
   145b0:	00000813          	addi	a6,zero,0
   145b4:	00000513          	addi	a0,zero,0
   145b8:	00078693          	addi	a3,a5,0
   145bc:	01c0006f          	jal	zero,145d8 <_vfprintf_r+0x2b18>
   145c0:	0015051b          	addiw	a0,a0,1
   145c4:	00168693          	addi	a3,a3,1
   145c8:	f0178613          	addi	a2,a5,-255
   145cc:	0007871b          	addiw	a4,a5,0
   145d0:	0c060e63          	beq	a2,zero,146ac <_vfprintf_r+0x2bec>
   145d4:	0c975c63          	bge	a4,s1,146ac <_vfprintf_r+0x2bec>
   145d8:	0016c783          	lbu	a5,1(a3)
   145dc:	40e484bb          	subw	s1,s1,a4
   145e0:	fe0790e3          	bne	a5,zero,145c0 <_vfprintf_r+0x2b00>
   145e4:	0006c783          	lbu	a5,0(a3)
   145e8:	0018081b          	addiw	a6,a6,1
   145ec:	fddff06f          	jal	zero,145c8 <_vfprintf_r+0x2b08>
   145f0:	41bc07bb          	subw	a5,s8,s11
   145f4:	0b012483          	lw	s1,176(sp)
   145f8:	02f13823          	sd	a5,48(sp)
   145fc:	8a1ff06f          	jal	zero,13e9c <_vfprintf_r+0x23dc>
   14600:	0001e7b7          	lui	a5,0x1e
   14604:	28078d93          	addi	s11,a5,640 # 1e280 <__clzdi2+0x6c>
   14608:	b78ff06f          	jal	zero,13980 <_vfprintf_r+0x1ec0>
   1460c:	0001e7b7          	lui	a5,0x1e
   14610:	28078d93          	addi	s11,a5,640 # 1e280 <__clzdi2+0x6c>
   14614:	f90ff06f          	jal	zero,13da4 <_vfprintf_r+0x22e4>
   14618:	04813783          	ld	a5,72(sp)
   1461c:	009a88bb          	addw	a7,s5,s1
   14620:	06600313          	addi	t1,zero,102
   14624:	00f88b3b          	addw	s6,a7,a5
   14628:	891ff06f          	jal	zero,13eb8 <_vfprintf_r+0x23f8>
   1462c:	0b012483          	lw	s1,176(sp)
   14630:	03013883          	ld	a7,48(sp)
   14634:	9c9ff06f          	jal	zero,13ffc <_vfprintf_r+0x253c>
   14638:	00000613          	addi	a2,zero,0
   1463c:	00000693          	addi	a3,zero,0
   14640:	00048513          	addi	a0,s1,0
   14644:	000b0593          	addi	a1,s6,0
   14648:	05c13023          	sd	t3,64(sp)
   1464c:	02613c23          	sd	t1,56(sp)
   14650:	02e13823          	sd	a4,48(sp)
   14654:	734080ef          	jal	ra,1cd88 <__eqtf2>
   14658:	03013703          	ld	a4,48(sp)
   1465c:	03813303          	ld	t1,56(sp)
   14660:	04013e03          	ld	t3,64(sp)
   14664:	12051e63          	bne	a0,zero,147a0 <_vfprintf_r+0x2ce0>
   14668:	0b012483          	lw	s1,176(sp)
   1466c:	00970733          	add	a4,a4,s1
   14670:	41b707bb          	subw	a5,a4,s11
   14674:	02f13823          	sd	a5,48(sp)
   14678:	81dff06f          	jal	zero,13e94 <_vfprintf_r+0x23d4>
   1467c:	02d00713          	addi	a4,zero,45
   14680:	0ae10ca3          	sb	a4,185(sp)
   14684:	00100693          	addi	a3,zero,1
   14688:	ff800713          	addi	a4,zero,-8
   1468c:	40968abb          	subw	s5,a3,s1
   14690:	98e4cee3          	blt	s1,a4,1402c <_vfprintf_r+0x256c>
   14694:	03000713          	addi	a4,zero,48
   14698:	0ae10d23          	sb	a4,186(sp)
   1469c:	03c13c23          	sd	t3,56(sp)
   146a0:	02013023          	sd	zero,32(sp)
   146a4:	0bb10713          	addi	a4,sp,187
   146a8:	a9dfd06f          	jal	zero,12144 <_vfprintf_r+0x684>
   146ac:	02a13c23          	sd	a0,56(sp)
   146b0:	00a8053b          	addw	a0,a6,a0
   146b4:	06613c23          	sd	t1,120(sp)
   146b8:	06d13423          	sd	a3,104(sp)
   146bc:	05013023          	sd	a6,64(sp)
   146c0:	231090ef          	jal	ra,1e0f0 <__muldi3>
   146c4:	07813303          	ld	t1,120(sp)
   146c8:	0005071b          	addiw	a4,a0,0
   146cc:	00eb0b3b          	addw	s6,s6,a4
   146d0:	000b0713          	addi	a4,s6,0
   146d4:	000b5463          	bge	s6,zero,146dc <_vfprintf_r+0x2c1c>
   146d8:	00000713          	addi	a4,zero,0
   146dc:	07013783          	ld	a5,112(sp)
   146e0:	0007081b          	addiw	a6,a4,0
   146e4:	10078e63          	beq	a5,zero,14800 <_vfprintf_r+0x2d40>
   146e8:	02d00693          	addi	a3,zero,45
   146ec:	02013e03          	ld	t3,32(sp)
   146f0:	0ad103a3          	sb	a3,167(sp)
   146f4:	0017081b          	addiw	a6,a4,1
   146f8:	02013023          	sd	zero,32(sp)
   146fc:	00000a93          	addi	s5,zero,0
   14700:	e08fd06f          	jal	zero,11d08 <_vfprintf_r+0x248>
   14704:	000b0c13          	addi	s8,s6,0
   14708:	fffa8b1b          	addiw	s6,s5,-1
   1470c:	000c8313          	addi	t1,s9,0
   14710:	04013b83          	ld	s7,64(sp)
   14714:	05813c83          	ld	s9,88(sp)
   14718:	015c0ab3          	add	s5,s8,s5
   1471c:	000c0713          	addi	a4,s8,0
   14720:	03000693          	addi	a3,zero,48
   14724:	000b5463          	bge	s6,zero,1472c <_vfprintf_r+0x2c6c>
   14728:	9e1fd06f          	jal	zero,12108 <_vfprintf_r+0x648>
   1472c:	00170713          	addi	a4,a4,1
   14730:	fed70fa3          	sb	a3,-1(a4)
   14734:	feea9ce3          	bne	s5,a4,1472c <_vfprintf_r+0x2c6c>
   14738:	001c0813          	addi	a6,s8,1
   1473c:	01680c33          	add	s8,a6,s6
   14740:	9c9fd06f          	jal	zero,12108 <_vfprintf_r+0x648>
   14744:	0001e737          	lui	a4,0x1e
   14748:	29070793          	addi	a5,a4,656 # 1e290 <__clzdi2+0x7c>
   1474c:	02f13823          	sd	a5,48(sp)
   14750:	879fd06f          	jal	zero,11fc8 <_vfprintf_r+0x508>
   14754:	01813783          	ld	a5,24(sp)
   14758:	01813703          	ld	a4,24(sp)
   1475c:	0007a783          	lw	a5,0(a5)
   14760:	00870713          	addi	a4,a4,8
   14764:	00078a9b          	addiw	s5,a5,0
   14768:	0007d463          	bge	a5,zero,14770 <_vfprintf_r+0x2cb0>
   1476c:	fff00a93          	addi	s5,zero,-1
   14770:	001cc303          	lbu	t1,1(s9)
   14774:	00e13c23          	sd	a4,24(sp)
   14778:	00060c93          	addi	s9,a2,0
   1477c:	cf8fd06f          	jal	zero,11c74 <_vfprintf_r+0x1b4>
   14780:	57068693          	addi	a3,a3,1392
   14784:	ca9fe06f          	jal	zero,1342c <_vfprintf_r+0x196c>
   14788:	03fa9a93          	slli	s5,s5,0x3f
   1478c:	02d00793          	addi	a5,zero,45
   14790:	015b4b33          	xor	s6,s6,s5
   14794:	06f13823          	sd	a5,112(sp)
   14798:	00600a93          	addi	s5,zero,6
   1479c:	e40ff06f          	jal	zero,13ddc <_vfprintf_r+0x231c>
   147a0:	00100793          	addi	a5,zero,1
   147a4:	415787bb          	subw	a5,a5,s5
   147a8:	0af12823          	sw	a5,176(sp)
   147ac:	e84ff06f          	jal	zero,13e30 <_vfprintf_r+0x2370>
   147b0:	00071a63          	bne	a4,zero,147c4 <_vfprintf_r+0x2d04>
   147b4:	00100813          	addi	a6,zero,1
   147b8:	00080b13          	addi	s6,a6,0
   147bc:	06600313          	addi	t1,zero,102
   147c0:	f0cff06f          	jal	zero,13ecc <_vfprintf_r+0x240c>
   147c4:	04813783          	ld	a5,72(sp)
   147c8:	0017889b          	addiw	a7,a5,1
   147cc:	01588b3b          	addw	s6,a7,s5
   147d0:	000b081b          	addiw	a6,s6,0
   147d4:	fe0b54e3          	bge	s6,zero,147bc <_vfprintf_r+0x2cfc>
   147d8:	00000813          	addi	a6,zero,0
   147dc:	06600313          	addi	t1,zero,102
   147e0:	eecff06f          	jal	zero,13ecc <_vfprintf_r+0x240c>
   147e4:	02d00693          	addi	a3,zero,45
   147e8:	0ad10ca3          	sb	a3,185(sp)
   147ec:	ff800613          	addi	a2,zero,-8
   147f0:	00100693          	addi	a3,zero,1
   147f4:	40e68abb          	subw	s5,a3,a4
   147f8:	82c74ee3          	blt	a4,a2,14034 <_vfprintf_r+0x2574>
   147fc:	945fd06f          	jal	zero,12140 <_vfprintf_r+0x680>
   14800:	0a714683          	lbu	a3,167(sp)
   14804:	02068063          	beq	a3,zero,14824 <_vfprintf_r+0x2d64>
   14808:	02013e03          	ld	t3,32(sp)
   1480c:	0017081b          	addiw	a6,a4,1
   14810:	02013023          	sd	zero,32(sp)
   14814:	00000a93          	addi	s5,zero,0
   14818:	cf0fd06f          	jal	zero,11d08 <_vfprintf_r+0x248>
   1481c:	57068693          	addi	a3,a3,1392
   14820:	9b4ff06f          	jal	zero,139d4 <_vfprintf_r+0x1f14>
   14824:	02013e03          	ld	t3,32(sp)
   14828:	00000a93          	addi	s5,zero,0
   1482c:	02013023          	sd	zero,32(sp)
   14830:	cd8fd06f          	jal	zero,11d08 <_vfprintf_r+0x248>
   14834:	00200793          	addi	a5,zero,2
   14838:	04f13c23          	sd	a5,88(sp)
   1483c:	885ff06f          	jal	zero,140c0 <_vfprintf_r+0x2600>
   14840:	03013783          	ld	a5,48(sp)
   14844:	00a7c683          	lbu	a3,10(a5)
   14848:	8bdfd06f          	jal	zero,12104 <_vfprintf_r+0x644>
   1484c:	0001e6b7          	lui	a3,0x1e
   14850:	57068693          	addi	a3,a3,1392 # 1e570 <zeroes.0>
   14854:	cb9ff06f          	jal	zero,1450c <_vfprintf_r+0x2a4c>
   14858:	00000a93          	addi	s5,zero,0
   1485c:	04013023          	sd	zero,64(sp)
   14860:	02013c23          	sd	zero,56(sp)
   14864:	02013023          	sd	zero,32(sp)
   14868:	00300b13          	addi	s6,zero,3
   1486c:	00400813          	addi	a6,zero,4
   14870:	c98fd06f          	jal	zero,11d08 <_vfprintf_r+0x248>
   14874:	04013023          	sd	zero,64(sp)
   14878:	02013c23          	sd	zero,56(sp)
   1487c:	c8cfd06f          	jal	zero,11d08 <_vfprintf_r+0x248>
   14880:	03013783          	ld	a5,48(sp)
   14884:	00fd8c33          	add	s8,s11,a5
   14888:	ef4ff06f          	jal	zero,13f7c <_vfprintf_r+0x24bc>
   1488c:	0b012483          	lw	s1,176(sp)
   14890:	f7cff06f          	jal	zero,1400c <_vfprintf_r+0x254c>
   14894:	00000713          	addi	a4,zero,0
   14898:	04013023          	sd	zero,64(sp)
   1489c:	02013c23          	sd	zero,56(sp)
   148a0:	e2dff06f          	jal	zero,146cc <_vfprintf_r+0x2c0c>
   148a4:	41b887bb          	subw	a5,a7,s11
   148a8:	0b012483          	lw	s1,176(sp)
   148ac:	02f13823          	sd	a5,48(sp)
   148b0:	de4ff06f          	jal	zero,13e94 <_vfprintf_r+0x23d4>
   148b4:	00813483          	ld	s1,8(sp)
   148b8:	0104d783          	lhu	a5,16(s1)
   148bc:	0407e793          	ori	a5,a5,64
   148c0:	00f49823          	sh	a5,16(s1)
   148c4:	b18fe06f          	jal	zero,12bdc <_vfprintf_r+0x111c>

00000000000148c8 <vfprintf>:
   148c8:	00050713          	addi	a4,a0,0
   148cc:	2201b503          	ld	a0,544(gp) # 20668 <_impure_ptr>
   148d0:	00060693          	addi	a3,a2,0
   148d4:	00058613          	addi	a2,a1,0
   148d8:	00070593          	addi	a1,a4,0
   148dc:	9e4fd06f          	jal	zero,11ac0 <_vfprintf_r>

00000000000148e0 <__sbprintf>:
   148e0:	0105d783          	lhu	a5,16(a1)
   148e4:	0ac5ae83          	lw	t4,172(a1)
   148e8:	0125de03          	lhu	t3,18(a1)
   148ec:	0305b303          	ld	t1,48(a1)
   148f0:	0405b883          	ld	a7,64(a1)
   148f4:	b2010113          	addi	sp,sp,-1248
   148f8:	ffd7f793          	andi	a5,a5,-3
   148fc:	0c010813          	addi	a6,sp,192
   14900:	40000713          	addi	a4,zero,1024
   14904:	4c813823          	sd	s0,1232(sp)
   14908:	00058413          	addi	s0,a1,0
   1490c:	01010593          	addi	a1,sp,16
   14910:	4c913423          	sd	s1,1224(sp)
   14914:	02f11023          	sh	a5,32(sp)
   14918:	4c113c23          	sd	ra,1240(sp)
   1491c:	02012c23          	sw	zero,56(sp)
   14920:	0bd12e23          	sw	t4,188(sp)
   14924:	03c11123          	sh	t3,34(sp)
   14928:	04613023          	sd	t1,64(sp)
   1492c:	05113823          	sd	a7,80(sp)
   14930:	01013823          	sd	a6,16(sp)
   14934:	03013423          	sd	a6,40(sp)
   14938:	00e12e23          	sw	a4,28(sp)
   1493c:	02e12823          	sw	a4,48(sp)
   14940:	00050493          	addi	s1,a0,0
   14944:	97cfd0ef          	jal	ra,11ac0 <_vfprintf_r>
   14948:	00050793          	addi	a5,a0,0
   1494c:	02055a63          	bge	a0,zero,14980 <__sbprintf+0xa0>
   14950:	02015703          	lhu	a4,32(sp)
   14954:	04077713          	andi	a4,a4,64
   14958:	00070863          	beq	a4,zero,14968 <__sbprintf+0x88>
   1495c:	01045703          	lhu	a4,16(s0)
   14960:	04076713          	ori	a4,a4,64
   14964:	00e41823          	sh	a4,16(s0)
   14968:	4d813083          	ld	ra,1240(sp)
   1496c:	4d013403          	ld	s0,1232(sp)
   14970:	4c813483          	ld	s1,1224(sp)
   14974:	00078513          	addi	a0,a5,0
   14978:	4e010113          	addi	sp,sp,1248
   1497c:	00008067          	jalr	zero,0(ra)
   14980:	00a13423          	sd	a0,8(sp)
   14984:	01010593          	addi	a1,sp,16
   14988:	00048513          	addi	a0,s1,0
   1498c:	3c0000ef          	jal	ra,14d4c <_fflush_r>
   14990:	00813783          	ld	a5,8(sp)
   14994:	fa050ee3          	beq	a0,zero,14950 <__sbprintf+0x70>
   14998:	fff00793          	addi	a5,zero,-1
   1499c:	fb5ff06f          	jal	zero,14950 <__sbprintf+0x70>

00000000000149a0 <__sprint_r>:
   149a0:	01063703          	ld	a4,16(a2)
   149a4:	00071863          	bne	a4,zero,149b4 <__sprint_r+0x14>
   149a8:	00000513          	addi	a0,zero,0
   149ac:	00062423          	sw	zero,8(a2)
   149b0:	00008067          	jalr	zero,0(ra)
   149b4:	fe010113          	addi	sp,sp,-32
   149b8:	00113c23          	sd	ra,24(sp)
   149bc:	00c13423          	sd	a2,8(sp)
   149c0:	480000ef          	jal	ra,14e40 <__sfvwrite_r>
   149c4:	00813783          	ld	a5,8(sp)
   149c8:	01813083          	ld	ra,24(sp)
   149cc:	0007b823          	sd	zero,16(a5)
   149d0:	0007a423          	sw	zero,8(a5)
   149d4:	02010113          	addi	sp,sp,32
   149d8:	00008067          	jalr	zero,0(ra)

00000000000149dc <_fclose_r>:
   149dc:	fe010113          	addi	sp,sp,-32
   149e0:	00113c23          	sd	ra,24(sp)
   149e4:	01213023          	sd	s2,0(sp)
   149e8:	02058863          	beq	a1,zero,14a18 <_fclose_r+0x3c>
   149ec:	00813823          	sd	s0,16(sp)
   149f0:	00913423          	sd	s1,8(sp)
   149f4:	00058413          	addi	s0,a1,0
   149f8:	00050493          	addi	s1,a0,0
   149fc:	00050663          	beq	a0,zero,14a08 <_fclose_r+0x2c>
   14a00:	04853783          	ld	a5,72(a0)
   14a04:	0c078c63          	beq	a5,zero,14adc <_fclose_r+0x100>
   14a08:	01041783          	lh	a5,16(s0)
   14a0c:	02079263          	bne	a5,zero,14a30 <_fclose_r+0x54>
   14a10:	01013403          	ld	s0,16(sp)
   14a14:	00813483          	ld	s1,8(sp)
   14a18:	01813083          	ld	ra,24(sp)
   14a1c:	00000913          	addi	s2,zero,0
   14a20:	00090513          	addi	a0,s2,0
   14a24:	00013903          	ld	s2,0(sp)
   14a28:	02010113          	addi	sp,sp,32
   14a2c:	00008067          	jalr	zero,0(ra)
   14a30:	00040593          	addi	a1,s0,0
   14a34:	00048513          	addi	a0,s1,0
   14a38:	0b8000ef          	jal	ra,14af0 <__sflush_r>
   14a3c:	05043783          	ld	a5,80(s0)
   14a40:	00050913          	addi	s2,a0,0
   14a44:	00078a63          	beq	a5,zero,14a58 <_fclose_r+0x7c>
   14a48:	03043583          	ld	a1,48(s0)
   14a4c:	00048513          	addi	a0,s1,0
   14a50:	000780e7          	jalr	ra,0(a5)
   14a54:	06054463          	blt	a0,zero,14abc <_fclose_r+0xe0>
   14a58:	01045783          	lhu	a5,16(s0)
   14a5c:	0807f793          	andi	a5,a5,128
   14a60:	06079663          	bne	a5,zero,14acc <_fclose_r+0xf0>
   14a64:	05843583          	ld	a1,88(s0)
   14a68:	00058c63          	beq	a1,zero,14a80 <_fclose_r+0xa4>
   14a6c:	07440793          	addi	a5,s0,116
   14a70:	00f58663          	beq	a1,a5,14a7c <_fclose_r+0xa0>
   14a74:	00048513          	addi	a0,s1,0
   14a78:	c58fc0ef          	jal	ra,10ed0 <_free_r>
   14a7c:	04043c23          	sd	zero,88(s0)
   14a80:	07843583          	ld	a1,120(s0)
   14a84:	00058863          	beq	a1,zero,14a94 <_fclose_r+0xb8>
   14a88:	00048513          	addi	a0,s1,0
   14a8c:	c44fc0ef          	jal	ra,10ed0 <_free_r>
   14a90:	06043c23          	sd	zero,120(s0)
   14a94:	af1fb0ef          	jal	ra,10584 <__sfp_lock_acquire>
   14a98:	00041823          	sh	zero,16(s0)
   14a9c:	aedfb0ef          	jal	ra,10588 <__sfp_lock_release>
   14aa0:	01813083          	ld	ra,24(sp)
   14aa4:	01013403          	ld	s0,16(sp)
   14aa8:	00813483          	ld	s1,8(sp)
   14aac:	00090513          	addi	a0,s2,0
   14ab0:	00013903          	ld	s2,0(sp)
   14ab4:	02010113          	addi	sp,sp,32
   14ab8:	00008067          	jalr	zero,0(ra)
   14abc:	01045783          	lhu	a5,16(s0)
   14ac0:	fff00913          	addi	s2,zero,-1
   14ac4:	0807f793          	andi	a5,a5,128
   14ac8:	f8078ee3          	beq	a5,zero,14a64 <_fclose_r+0x88>
   14acc:	01843583          	ld	a1,24(s0)
   14ad0:	00048513          	addi	a0,s1,0
   14ad4:	bfcfc0ef          	jal	ra,10ed0 <_free_r>
   14ad8:	f8dff06f          	jal	zero,14a64 <_fclose_r+0x88>
   14adc:	a85fb0ef          	jal	ra,10560 <__sinit>
   14ae0:	f29ff06f          	jal	zero,14a08 <_fclose_r+0x2c>

0000000000014ae4 <fclose>:
   14ae4:	00050593          	addi	a1,a0,0
   14ae8:	2201b503          	ld	a0,544(gp) # 20668 <_impure_ptr>
   14aec:	ef1ff06f          	jal	zero,149dc <_fclose_r>

0000000000014af0 <__sflush_r>:
   14af0:	01059703          	lh	a4,16(a1)
   14af4:	fd010113          	addi	sp,sp,-48
   14af8:	02813023          	sd	s0,32(sp)
   14afc:	01313423          	sd	s3,8(sp)
   14b00:	02113423          	sd	ra,40(sp)
   14b04:	00877793          	andi	a5,a4,8
   14b08:	00058413          	addi	s0,a1,0
   14b0c:	00050993          	addi	s3,a0,0
   14b10:	12079263          	bne	a5,zero,14c34 <__sflush_r+0x144>
   14b14:	000017b7          	lui	a5,0x1
   14b18:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   14b1c:	0085a683          	lw	a3,8(a1)
   14b20:	00f767b3          	or	a5,a4,a5
   14b24:	00f59823          	sh	a5,16(a1)
   14b28:	18d05c63          	bge	zero,a3,14cc0 <__sflush_r+0x1d0>
   14b2c:	04843803          	ld	a6,72(s0)
   14b30:	0e080663          	beq	a6,zero,14c1c <__sflush_r+0x12c>
   14b34:	00913c23          	sd	s1,24(sp)
   14b38:	03371693          	slli	a3,a4,0x33
   14b3c:	0009a483          	lw	s1,0(s3)
   14b40:	0009a023          	sw	zero,0(s3)
   14b44:	1806ca63          	blt	a3,zero,14cd8 <__sflush_r+0x1e8>
   14b48:	03043583          	ld	a1,48(s0)
   14b4c:	00000613          	addi	a2,zero,0
   14b50:	00100693          	addi	a3,zero,1
   14b54:	00098513          	addi	a0,s3,0
   14b58:	000800e7          	jalr	ra,0(a6)
   14b5c:	fff00793          	addi	a5,zero,-1
   14b60:	00050613          	addi	a2,a0,0
   14b64:	1af50c63          	beq	a0,a5,14d1c <__sflush_r+0x22c>
   14b68:	01041783          	lh	a5,16(s0)
   14b6c:	04843803          	ld	a6,72(s0)
   14b70:	0047f793          	andi	a5,a5,4
   14b74:	00078e63          	beq	a5,zero,14b90 <__sflush_r+0xa0>
   14b78:	00842703          	lw	a4,8(s0)
   14b7c:	05843783          	ld	a5,88(s0)
   14b80:	40e60633          	sub	a2,a2,a4
   14b84:	00078663          	beq	a5,zero,14b90 <__sflush_r+0xa0>
   14b88:	07042783          	lw	a5,112(s0)
   14b8c:	40f60633          	sub	a2,a2,a5
   14b90:	03043583          	ld	a1,48(s0)
   14b94:	00000693          	addi	a3,zero,0
   14b98:	00098513          	addi	a0,s3,0
   14b9c:	000800e7          	jalr	ra,0(a6)
   14ba0:	fff00713          	addi	a4,zero,-1
   14ba4:	01041783          	lh	a5,16(s0)
   14ba8:	12e51c63          	bne	a0,a4,14ce0 <__sflush_r+0x1f0>
   14bac:	0009a683          	lw	a3,0(s3)
   14bb0:	01d00713          	addi	a4,zero,29
   14bb4:	18d76263          	bltu	a4,a3,14d38 <__sflush_r+0x248>
   14bb8:	20400737          	lui	a4,0x20400
   14bbc:	00170713          	addi	a4,a4,1 # 20400001 <__BSS_END__+0x203df3b9>
   14bc0:	00d75733          	srl	a4,a4,a3
   14bc4:	00177713          	andi	a4,a4,1
   14bc8:	16070863          	beq	a4,zero,14d38 <__sflush_r+0x248>
   14bcc:	01843683          	ld	a3,24(s0)
   14bd0:	fffff737          	lui	a4,0xfffff
   14bd4:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdebb7>
   14bd8:	00e7f733          	and	a4,a5,a4
   14bdc:	00e41823          	sh	a4,16(s0)
   14be0:	00042423          	sw	zero,8(s0)
   14be4:	00d43023          	sd	a3,0(s0)
   14be8:	03379713          	slli	a4,a5,0x33
   14bec:	00075663          	bge	a4,zero,14bf8 <__sflush_r+0x108>
   14bf0:	0009a783          	lw	a5,0(s3)
   14bf4:	10078863          	beq	a5,zero,14d04 <__sflush_r+0x214>
   14bf8:	05843583          	ld	a1,88(s0)
   14bfc:	0099a023          	sw	s1,0(s3)
   14c00:	10058a63          	beq	a1,zero,14d14 <__sflush_r+0x224>
   14c04:	07440793          	addi	a5,s0,116
   14c08:	00f58663          	beq	a1,a5,14c14 <__sflush_r+0x124>
   14c0c:	00098513          	addi	a0,s3,0
   14c10:	ac0fc0ef          	jal	ra,10ed0 <_free_r>
   14c14:	01813483          	ld	s1,24(sp)
   14c18:	04043c23          	sd	zero,88(s0)
   14c1c:	02813083          	ld	ra,40(sp)
   14c20:	02013403          	ld	s0,32(sp)
   14c24:	00813983          	ld	s3,8(sp)
   14c28:	00000513          	addi	a0,zero,0
   14c2c:	03010113          	addi	sp,sp,48
   14c30:	00008067          	jalr	zero,0(ra)
   14c34:	01213823          	sd	s2,16(sp)
   14c38:	0185b903          	ld	s2,24(a1)
   14c3c:	08090a63          	beq	s2,zero,14cd0 <__sflush_r+0x1e0>
   14c40:	00913c23          	sd	s1,24(sp)
   14c44:	0005b483          	ld	s1,0(a1)
   14c48:	00377713          	andi	a4,a4,3
   14c4c:	0125b023          	sd	s2,0(a1)
   14c50:	412484bb          	subw	s1,s1,s2
   14c54:	00000793          	addi	a5,zero,0
   14c58:	00071463          	bne	a4,zero,14c60 <__sflush_r+0x170>
   14c5c:	0205a783          	lw	a5,32(a1)
   14c60:	00f42623          	sw	a5,12(s0)
   14c64:	00904863          	blt	zero,s1,14c74 <__sflush_r+0x184>
   14c68:	0640006f          	jal	zero,14ccc <__sflush_r+0x1dc>
   14c6c:	00a90933          	add	s2,s2,a0
   14c70:	04905e63          	bge	zero,s1,14ccc <__sflush_r+0x1dc>
   14c74:	04043783          	ld	a5,64(s0)
   14c78:	03043583          	ld	a1,48(s0)
   14c7c:	00048693          	addi	a3,s1,0
   14c80:	00090613          	addi	a2,s2,0
   14c84:	00098513          	addi	a0,s3,0
   14c88:	000780e7          	jalr	ra,0(a5)
   14c8c:	40a484bb          	subw	s1,s1,a0
   14c90:	fca04ee3          	blt	zero,a0,14c6c <__sflush_r+0x17c>
   14c94:	01045783          	lhu	a5,16(s0)
   14c98:	01013903          	ld	s2,16(sp)
   14c9c:	0407e793          	ori	a5,a5,64
   14ca0:	02813083          	ld	ra,40(sp)
   14ca4:	00f41823          	sh	a5,16(s0)
   14ca8:	02013403          	ld	s0,32(sp)
   14cac:	01813483          	ld	s1,24(sp)
   14cb0:	00813983          	ld	s3,8(sp)
   14cb4:	fff00513          	addi	a0,zero,-1
   14cb8:	03010113          	addi	sp,sp,48
   14cbc:	00008067          	jalr	zero,0(ra)
   14cc0:	0705a683          	lw	a3,112(a1)
   14cc4:	e6d044e3          	blt	zero,a3,14b2c <__sflush_r+0x3c>
   14cc8:	f55ff06f          	jal	zero,14c1c <__sflush_r+0x12c>
   14ccc:	01813483          	ld	s1,24(sp)
   14cd0:	01013903          	ld	s2,16(sp)
   14cd4:	f49ff06f          	jal	zero,14c1c <__sflush_r+0x12c>
   14cd8:	09043603          	ld	a2,144(s0)
   14cdc:	e95ff06f          	jal	zero,14b70 <__sflush_r+0x80>
   14ce0:	01843683          	ld	a3,24(s0)
   14ce4:	fffff737          	lui	a4,0xfffff
   14ce8:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffdebb7>
   14cec:	00e7f733          	and	a4,a5,a4
   14cf0:	00e41823          	sh	a4,16(s0)
   14cf4:	00042423          	sw	zero,8(s0)
   14cf8:	00d43023          	sd	a3,0(s0)
   14cfc:	03379713          	slli	a4,a5,0x33
   14d00:	ee075ce3          	bge	a4,zero,14bf8 <__sflush_r+0x108>
   14d04:	05843583          	ld	a1,88(s0)
   14d08:	08a43823          	sd	a0,144(s0)
   14d0c:	0099a023          	sw	s1,0(s3)
   14d10:	ee059ae3          	bne	a1,zero,14c04 <__sflush_r+0x114>
   14d14:	01813483          	ld	s1,24(sp)
   14d18:	f05ff06f          	jal	zero,14c1c <__sflush_r+0x12c>
   14d1c:	0009a783          	lw	a5,0(s3)
   14d20:	e40784e3          	beq	a5,zero,14b68 <__sflush_r+0x78>
   14d24:	fe378713          	addi	a4,a5,-29
   14d28:	00070c63          	beq	a4,zero,14d40 <__sflush_r+0x250>
   14d2c:	fea78793          	addi	a5,a5,-22
   14d30:	00078863          	beq	a5,zero,14d40 <__sflush_r+0x250>
   14d34:	01045783          	lhu	a5,16(s0)
   14d38:	0407e793          	ori	a5,a5,64
   14d3c:	f65ff06f          	jal	zero,14ca0 <__sflush_r+0x1b0>
   14d40:	0099a023          	sw	s1,0(s3)
   14d44:	01813483          	ld	s1,24(sp)
   14d48:	ed5ff06f          	jal	zero,14c1c <__sflush_r+0x12c>

0000000000014d4c <_fflush_r>:
   14d4c:	00050793          	addi	a5,a0,0
   14d50:	00050663          	beq	a0,zero,14d5c <_fflush_r+0x10>
   14d54:	04853703          	ld	a4,72(a0)
   14d58:	00070e63          	beq	a4,zero,14d74 <_fflush_r+0x28>
   14d5c:	01059703          	lh	a4,16(a1)
   14d60:	00071663          	bne	a4,zero,14d6c <_fflush_r+0x20>
   14d64:	00000513          	addi	a0,zero,0
   14d68:	00008067          	jalr	zero,0(ra)
   14d6c:	00078513          	addi	a0,a5,0
   14d70:	d81ff06f          	jal	zero,14af0 <__sflush_r>
   14d74:	fe010113          	addi	sp,sp,-32
   14d78:	00b13423          	sd	a1,8(sp)
   14d7c:	00113c23          	sd	ra,24(sp)
   14d80:	00a13023          	sd	a0,0(sp)
   14d84:	fdcfb0ef          	jal	ra,10560 <__sinit>
   14d88:	00813583          	ld	a1,8(sp)
   14d8c:	00013783          	ld	a5,0(sp)
   14d90:	01059703          	lh	a4,16(a1)
   14d94:	00070a63          	beq	a4,zero,14da8 <_fflush_r+0x5c>
   14d98:	01813083          	ld	ra,24(sp)
   14d9c:	00078513          	addi	a0,a5,0
   14da0:	02010113          	addi	sp,sp,32
   14da4:	d4dff06f          	jal	zero,14af0 <__sflush_r>
   14da8:	01813083          	ld	ra,24(sp)
   14dac:	00000513          	addi	a0,zero,0
   14db0:	02010113          	addi	sp,sp,32
   14db4:	00008067          	jalr	zero,0(ra)

0000000000014db8 <fflush>:
   14db8:	06050063          	beq	a0,zero,14e18 <fflush+0x60>
   14dbc:	00050593          	addi	a1,a0,0
   14dc0:	2201b503          	ld	a0,544(gp) # 20668 <_impure_ptr>
   14dc4:	00050663          	beq	a0,zero,14dd0 <fflush+0x18>
   14dc8:	04853783          	ld	a5,72(a0)
   14dcc:	00078c63          	beq	a5,zero,14de4 <fflush+0x2c>
   14dd0:	01059783          	lh	a5,16(a1)
   14dd4:	00079663          	bne	a5,zero,14de0 <fflush+0x28>
   14dd8:	00000513          	addi	a0,zero,0
   14ddc:	00008067          	jalr	zero,0(ra)
   14de0:	d11ff06f          	jal	zero,14af0 <__sflush_r>
   14de4:	fe010113          	addi	sp,sp,-32
   14de8:	00b13423          	sd	a1,8(sp)
   14dec:	00a13023          	sd	a0,0(sp)
   14df0:	00113c23          	sd	ra,24(sp)
   14df4:	f6cfb0ef          	jal	ra,10560 <__sinit>
   14df8:	00813583          	ld	a1,8(sp)
   14dfc:	00013503          	ld	a0,0(sp)
   14e00:	01059783          	lh	a5,16(a1)
   14e04:	02079863          	bne	a5,zero,14e34 <fflush+0x7c>
   14e08:	01813083          	ld	ra,24(sp)
   14e0c:	00000513          	addi	a0,zero,0
   14e10:	02010113          	addi	sp,sp,32
   14e14:	00008067          	jalr	zero,0(ra)
   14e18:	00020637          	lui	a2,0x20
   14e1c:	000155b7          	lui	a1,0x15
   14e20:	00020537          	lui	a0,0x20
   14e24:	ad060613          	addi	a2,a2,-1328 # 1fad0 <__sglue>
   14e28:	d4c58593          	addi	a1,a1,-692 # 14d4c <_fflush_r>
   14e2c:	ae850513          	addi	a0,a0,-1304 # 1fae8 <_impure_data>
   14e30:	f8cfb06f          	jal	zero,105bc <_fwalk_sglue>
   14e34:	01813083          	ld	ra,24(sp)
   14e38:	02010113          	addi	sp,sp,32
   14e3c:	cb5ff06f          	jal	zero,14af0 <__sflush_r>

0000000000014e40 <__sfvwrite_r>:
   14e40:	01063783          	ld	a5,16(a2)
   14e44:	22078e63          	beq	a5,zero,15080 <__sfvwrite_r+0x240>
   14e48:	01059683          	lh	a3,16(a1)
   14e4c:	fa010113          	addi	sp,sp,-96
   14e50:	04813823          	sd	s0,80(sp)
   14e54:	03413823          	sd	s4,48(sp)
   14e58:	03513423          	sd	s5,40(sp)
   14e5c:	04113c23          	sd	ra,88(sp)
   14e60:	0086f793          	andi	a5,a3,8
   14e64:	00058413          	addi	s0,a1,0
   14e68:	00050a93          	addi	s5,a0,0
   14e6c:	00060a13          	addi	s4,a2,0
   14e70:	0a078663          	beq	a5,zero,14f1c <__sfvwrite_r+0xdc>
   14e74:	0185b783          	ld	a5,24(a1)
   14e78:	0a078263          	beq	a5,zero,14f1c <__sfvwrite_r+0xdc>
   14e7c:	04913423          	sd	s1,72(sp)
   14e80:	05213023          	sd	s2,64(sp)
   14e84:	03313c23          	sd	s3,56(sp)
   14e88:	03613023          	sd	s6,32(sp)
   14e8c:	0026f793          	andi	a5,a3,2
   14e90:	000a3483          	ld	s1,0(s4)
   14e94:	0a078c63          	beq	a5,zero,14f4c <__sfvwrite_r+0x10c>
   14e98:	80000b37          	lui	s6,0x80000
   14e9c:	c00b4b13          	xori	s6,s6,-1024
   14ea0:	00000993          	addi	s3,zero,0
   14ea4:	00000913          	addi	s2,zero,0
   14ea8:	00098613          	addi	a2,s3,0
   14eac:	000a8513          	addi	a0,s5,0
   14eb0:	1c090063          	beq	s2,zero,15070 <__sfvwrite_r+0x230>
   14eb4:	00090693          	addi	a3,s2,0
   14eb8:	012b7663          	bgeu	s6,s2,14ec4 <__sfvwrite_r+0x84>
   14ebc:	800006b7          	lui	a3,0x80000
   14ec0:	c006c693          	xori	a3,a3,-1024
   14ec4:	04043783          	ld	a5,64(s0)
   14ec8:	03043583          	ld	a1,48(s0)
   14ecc:	0006869b          	addiw	a3,a3,0 # ffffffff80000000 <__BSS_END__+0xffffffff7ffdf3b8>
   14ed0:	000780e7          	jalr	ra,0(a5)
   14ed4:	42a05463          	bge	zero,a0,152fc <__sfvwrite_r+0x4bc>
   14ed8:	010a3783          	ld	a5,16(s4)
   14edc:	00a989b3          	add	s3,s3,a0
   14ee0:	40a90933          	sub	s2,s2,a0
   14ee4:	40a787b3          	sub	a5,a5,a0
   14ee8:	00fa3823          	sd	a5,16(s4)
   14eec:	fa079ee3          	bne	a5,zero,14ea8 <__sfvwrite_r+0x68>
   14ef0:	04813483          	ld	s1,72(sp)
   14ef4:	04013903          	ld	s2,64(sp)
   14ef8:	03813983          	ld	s3,56(sp)
   14efc:	02013b03          	ld	s6,32(sp)
   14f00:	00000513          	addi	a0,zero,0
   14f04:	05813083          	ld	ra,88(sp)
   14f08:	05013403          	ld	s0,80(sp)
   14f0c:	03013a03          	ld	s4,48(sp)
   14f10:	02813a83          	ld	s5,40(sp)
   14f14:	06010113          	addi	sp,sp,96
   14f18:	00008067          	jalr	zero,0(ra)
   14f1c:	00040593          	addi	a1,s0,0
   14f20:	000a8513          	addi	a0,s5,0
   14f24:	3fc000ef          	jal	ra,15320 <__swsetup_r>
   14f28:	28051c63          	bne	a0,zero,151c0 <__sfvwrite_r+0x380>
   14f2c:	01041683          	lh	a3,16(s0)
   14f30:	04913423          	sd	s1,72(sp)
   14f34:	05213023          	sd	s2,64(sp)
   14f38:	03313c23          	sd	s3,56(sp)
   14f3c:	03613023          	sd	s6,32(sp)
   14f40:	0026f793          	andi	a5,a3,2
   14f44:	000a3483          	ld	s1,0(s4)
   14f48:	f40798e3          	bne	a5,zero,14e98 <__sfvwrite_r+0x58>
   14f4c:	01713c23          	sd	s7,24(sp)
   14f50:	01813823          	sd	s8,16(sp)
   14f54:	01913423          	sd	s9,8(sp)
   14f58:	0016f793          	andi	a5,a3,1
   14f5c:	12079663          	bne	a5,zero,15088 <__sfvwrite_r+0x248>
   14f60:	00043783          	ld	a5,0(s0)
   14f64:	80000737          	lui	a4,0x80000
   14f68:	fff74c13          	xori	s8,a4,-1
   14f6c:	00000b13          	addi	s6,zero,0
   14f70:	00000993          	addi	s3,zero,0
   14f74:	0e098663          	beq	s3,zero,15060 <__sfvwrite_r+0x220>
   14f78:	2006f713          	andi	a4,a3,512
   14f7c:	00c42903          	lw	s2,12(s0)
   14f80:	00078513          	addi	a0,a5,0
   14f84:	24070263          	beq	a4,zero,151c8 <__sfvwrite_r+0x388>
   14f88:	0929ec63          	bltu	s3,s2,15020 <__sfvwrite_r+0x1e0>
   14f8c:	4806f713          	andi	a4,a3,1152
   14f90:	00090b93          	addi	s7,s2,0
   14f94:	08070a63          	beq	a4,zero,15028 <__sfvwrite_r+0x1e8>
   14f98:	02042603          	lw	a2,32(s0)
   14f9c:	01843583          	ld	a1,24(s0)
   14fa0:	0016171b          	slliw	a4,a2,0x1
   14fa4:	00c7073b          	addw	a4,a4,a2
   14fa8:	40b787b3          	sub	a5,a5,a1
   14fac:	01f7591b          	srliw	s2,a4,0x1f
   14fb0:	00078b9b          	addiw	s7,a5,0
   14fb4:	00e9093b          	addw	s2,s2,a4
   14fb8:	001b8713          	addi	a4,s7,1
   14fbc:	4019591b          	sraiw	s2,s2,0x1
   14fc0:	01370733          	add	a4,a4,s3
   14fc4:	00e97663          	bgeu	s2,a4,14fd0 <__sfvwrite_r+0x190>
   14fc8:	0017879b          	addiw	a5,a5,1
   14fcc:	0137893b          	addw	s2,a5,s3
   14fd0:	4006f693          	andi	a3,a3,1024
   14fd4:	2c068863          	beq	a3,zero,152a4 <__sfvwrite_r+0x464>
   14fd8:	00090593          	addi	a1,s2,0
   14fdc:	000a8513          	addi	a0,s5,0
   14fe0:	9f4fc0ef          	jal	ra,111d4 <_malloc_r>
   14fe4:	00050c93          	addi	s9,a0,0
   14fe8:	30050e63          	beq	a0,zero,15304 <__sfvwrite_r+0x4c4>
   14fec:	01843583          	ld	a1,24(s0)
   14ff0:	000b8613          	addi	a2,s7,0
   14ff4:	005000ef          	jal	ra,157f8 <memcpy>
   14ff8:	01045703          	lhu	a4,16(s0)
   14ffc:	b7f77713          	andi	a4,a4,-1153
   15000:	08076713          	ori	a4,a4,128
   15004:	00e41823          	sh	a4,16(s0)
   15008:	017c8533          	add	a0,s9,s7
   1500c:	41790bbb          	subw	s7,s2,s7
   15010:	01943c23          	sd	s9,24(s0)
   15014:	00a43023          	sd	a0,0(s0)
   15018:	01742623          	sw	s7,12(s0)
   1501c:	03242023          	sw	s2,32(s0)
   15020:	00098b93          	addi	s7,s3,0
   15024:	00098913          	addi	s2,s3,0
   15028:	000b0593          	addi	a1,s6,0 # ffffffff80000000 <__BSS_END__+0xffffffff7ffdf3b8>
   1502c:	00090613          	addi	a2,s2,0
   15030:	6a0000ef          	jal	ra,156d0 <memmove>
   15034:	00c42683          	lw	a3,12(s0)
   15038:	00043783          	ld	a5,0(s0)
   1503c:	010a3703          	ld	a4,16(s4)
   15040:	417686bb          	subw	a3,a3,s7
   15044:	012787b3          	add	a5,a5,s2
   15048:	00d42623          	sw	a3,12(s0)
   1504c:	00f43023          	sd	a5,0(s0)
   15050:	41370733          	sub	a4,a4,s3
   15054:	00ea3823          	sd	a4,16(s4)
   15058:	28070a63          	beq	a4,zero,152ec <__sfvwrite_r+0x4ac>
   1505c:	01041683          	lh	a3,16(s0)
   15060:	0004bb03          	ld	s6,0(s1)
   15064:	0084b983          	ld	s3,8(s1)
   15068:	01048493          	addi	s1,s1,16
   1506c:	f09ff06f          	jal	zero,14f74 <__sfvwrite_r+0x134>
   15070:	0004b983          	ld	s3,0(s1)
   15074:	0084b903          	ld	s2,8(s1)
   15078:	01048493          	addi	s1,s1,16
   1507c:	e2dff06f          	jal	zero,14ea8 <__sfvwrite_r+0x68>
   15080:	00000513          	addi	a0,zero,0
   15084:	00008067          	jalr	zero,0(ra)
   15088:	00000b93          	addi	s7,zero,0
   1508c:	00000c13          	addi	s8,zero,0
   15090:	00000513          	addi	a0,zero,0
   15094:	00000c93          	addi	s9,zero,0
   15098:	080b8063          	beq	s7,zero,15118 <__sfvwrite_r+0x2d8>
   1509c:	08050863          	beq	a0,zero,1512c <__sfvwrite_r+0x2ec>
   150a0:	000c0b13          	addi	s6,s8,0
   150a4:	018bf463          	bgeu	s7,s8,150ac <__sfvwrite_r+0x26c>
   150a8:	000b8b13          	addi	s6,s7,0
   150ac:	02042683          	lw	a3,32(s0)
   150b0:	00c42783          	lw	a5,12(s0)
   150b4:	00043503          	ld	a0,0(s0)
   150b8:	01843703          	ld	a4,24(s0)
   150bc:	00d789bb          	addw	s3,a5,a3
   150c0:	000b0913          	addi	s2,s6,0
   150c4:	00a77463          	bgeu	a4,a0,150cc <__sfvwrite_r+0x28c>
   150c8:	0969c263          	blt	s3,s6,1514c <__sfvwrite_r+0x30c>
   150cc:	1adb4663          	blt	s6,a3,15278 <__sfvwrite_r+0x438>
   150d0:	04043783          	ld	a5,64(s0)
   150d4:	03043583          	ld	a1,48(s0)
   150d8:	000c8613          	addi	a2,s9,0
   150dc:	000a8513          	addi	a0,s5,0
   150e0:	000780e7          	jalr	ra,0(a5)
   150e4:	00050913          	addi	s2,a0,0
   150e8:	0aa05863          	bge	zero,a0,15198 <__sfvwrite_r+0x358>
   150ec:	0005079b          	addiw	a5,a0,0
   150f0:	40fc0c3b          	subw	s8,s8,a5
   150f4:	00100513          	addi	a0,zero,1
   150f8:	080c0863          	beq	s8,zero,15188 <__sfvwrite_r+0x348>
   150fc:	010a3783          	ld	a5,16(s4)
   15100:	412787b3          	sub	a5,a5,s2
   15104:	00fa3823          	sd	a5,16(s4)
   15108:	1e078263          	beq	a5,zero,152ec <__sfvwrite_r+0x4ac>
   1510c:	412b8bb3          	sub	s7,s7,s2
   15110:	012c8cb3          	add	s9,s9,s2
   15114:	f80b94e3          	bne	s7,zero,1509c <__sfvwrite_r+0x25c>
   15118:	0084bb83          	ld	s7,8(s1)
   1511c:	00048793          	addi	a5,s1,0
   15120:	01048493          	addi	s1,s1,16
   15124:	fe0b8ae3          	beq	s7,zero,15118 <__sfvwrite_r+0x2d8>
   15128:	0007bc83          	ld	s9,0(a5)
   1512c:	000b8613          	addi	a2,s7,0
   15130:	00a00593          	addi	a1,zero,10
   15134:	000c8513          	addi	a0,s9,0
   15138:	34c000ef          	jal	ra,15484 <memchr>
   1513c:	1a050463          	beq	a0,zero,152e4 <__sfvwrite_r+0x4a4>
   15140:	00150513          	addi	a0,a0,1
   15144:	41950c3b          	subw	s8,a0,s9
   15148:	f59ff06f          	jal	zero,150a0 <__sfvwrite_r+0x260>
   1514c:	000c8593          	addi	a1,s9,0
   15150:	00098613          	addi	a2,s3,0
   15154:	57c000ef          	jal	ra,156d0 <memmove>
   15158:	00043783          	ld	a5,0(s0)
   1515c:	00040593          	addi	a1,s0,0
   15160:	000a8513          	addi	a0,s5,0
   15164:	013787b3          	add	a5,a5,s3
   15168:	00f43023          	sd	a5,0(s0)
   1516c:	be1ff0ef          	jal	ra,14d4c <_fflush_r>
   15170:	02051463          	bne	a0,zero,15198 <__sfvwrite_r+0x358>
   15174:	00098793          	addi	a5,s3,0
   15178:	40fc0c3b          	subw	s8,s8,a5
   1517c:	00098913          	addi	s2,s3,0
   15180:	00100513          	addi	a0,zero,1
   15184:	f60c1ce3          	bne	s8,zero,150fc <__sfvwrite_r+0x2bc>
   15188:	00040593          	addi	a1,s0,0
   1518c:	000a8513          	addi	a0,s5,0
   15190:	bbdff0ef          	jal	ra,14d4c <_fflush_r>
   15194:	f60504e3          	beq	a0,zero,150fc <__sfvwrite_r+0x2bc>
   15198:	01041783          	lh	a5,16(s0)
   1519c:	01813b83          	ld	s7,24(sp)
   151a0:	01013c03          	ld	s8,16(sp)
   151a4:	00813c83          	ld	s9,8(sp)
   151a8:	04813483          	ld	s1,72(sp)
   151ac:	04013903          	ld	s2,64(sp)
   151b0:	03813983          	ld	s3,56(sp)
   151b4:	02013b03          	ld	s6,32(sp)
   151b8:	0407e793          	ori	a5,a5,64
   151bc:	00f41823          	sh	a5,16(s0)
   151c0:	fff00513          	addi	a0,zero,-1
   151c4:	d41ff06f          	jal	zero,14f04 <__sfvwrite_r+0xc4>
   151c8:	01843703          	ld	a4,24(s0)
   151cc:	06f76263          	bltu	a4,a5,15230 <__sfvwrite_r+0x3f0>
   151d0:	02042583          	lw	a1,32(s0)
   151d4:	04b9ee63          	bltu	s3,a1,15230 <__sfvwrite_r+0x3f0>
   151d8:	00098913          	addi	s2,s3,0
   151dc:	013c7463          	bgeu	s8,s3,151e4 <__sfvwrite_r+0x3a4>
   151e0:	000c0913          	addi	s2,s8,0
   151e4:	0009051b          	addiw	a0,s2,0
   151e8:	7f1080ef          	jal	ra,1e1d8 <__moddi3>
   151ec:	04043783          	ld	a5,64(s0)
   151f0:	03043583          	ld	a1,48(s0)
   151f4:	40a906bb          	subw	a3,s2,a0
   151f8:	000b0613          	addi	a2,s6,0
   151fc:	000a8513          	addi	a0,s5,0
   15200:	000780e7          	jalr	ra,0(a5)
   15204:	f8a05ae3          	bge	zero,a0,15198 <__sfvwrite_r+0x358>
   15208:	00050913          	addi	s2,a0,0
   1520c:	010a3783          	ld	a5,16(s4)
   15210:	412989b3          	sub	s3,s3,s2
   15214:	412787b3          	sub	a5,a5,s2
   15218:	00fa3823          	sd	a5,16(s4)
   1521c:	0c078863          	beq	a5,zero,152ec <__sfvwrite_r+0x4ac>
   15220:	01041683          	lh	a3,16(s0)
   15224:	00043783          	ld	a5,0(s0)
   15228:	012b0b33          	add	s6,s6,s2
   1522c:	d49ff06f          	jal	zero,14f74 <__sfvwrite_r+0x134>
   15230:	0129f463          	bgeu	s3,s2,15238 <__sfvwrite_r+0x3f8>
   15234:	00098913          	addi	s2,s3,0
   15238:	00078513          	addi	a0,a5,0
   1523c:	00090613          	addi	a2,s2,0
   15240:	000b0593          	addi	a1,s6,0
   15244:	48c000ef          	jal	ra,156d0 <memmove>
   15248:	00043783          	ld	a5,0(s0)
   1524c:	00c42703          	lw	a4,12(s0)
   15250:	012787b3          	add	a5,a5,s2
   15254:	4127073b          	subw	a4,a4,s2
   15258:	00f43023          	sd	a5,0(s0)
   1525c:	00e42623          	sw	a4,12(s0)
   15260:	fa0716e3          	bne	a4,zero,1520c <__sfvwrite_r+0x3cc>
   15264:	00040593          	addi	a1,s0,0
   15268:	000a8513          	addi	a0,s5,0
   1526c:	ae1ff0ef          	jal	ra,14d4c <_fflush_r>
   15270:	f8050ee3          	beq	a0,zero,1520c <__sfvwrite_r+0x3cc>
   15274:	f25ff06f          	jal	zero,15198 <__sfvwrite_r+0x358>
   15278:	000b0613          	addi	a2,s6,0
   1527c:	000c8593          	addi	a1,s9,0
   15280:	450000ef          	jal	ra,156d0 <memmove>
   15284:	00c42683          	lw	a3,12(s0)
   15288:	00043703          	ld	a4,0(s0)
   1528c:	000b079b          	addiw	a5,s6,0
   15290:	416686bb          	subw	a3,a3,s6
   15294:	01670733          	add	a4,a4,s6
   15298:	00d42623          	sw	a3,12(s0)
   1529c:	00e43023          	sd	a4,0(s0)
   152a0:	e51ff06f          	jal	zero,150f0 <__sfvwrite_r+0x2b0>
   152a4:	00090613          	addi	a2,s2,0
   152a8:	000a8513          	addi	a0,s5,0
   152ac:	789030ef          	jal	ra,19234 <_realloc_r>
   152b0:	00050c93          	addi	s9,a0,0
   152b4:	d4051ae3          	bne	a0,zero,15008 <__sfvwrite_r+0x1c8>
   152b8:	01843583          	ld	a1,24(s0)
   152bc:	000a8513          	addi	a0,s5,0
   152c0:	c11fb0ef          	jal	ra,10ed0 <_free_r>
   152c4:	01045783          	lhu	a5,16(s0)
   152c8:	00c00713          	addi	a4,zero,12
   152cc:	01813b83          	ld	s7,24(sp)
   152d0:	01013c03          	ld	s8,16(sp)
   152d4:	00813c83          	ld	s9,8(sp)
   152d8:	00eaa023          	sw	a4,0(s5)
   152dc:	f7f7f793          	andi	a5,a5,-129
   152e0:	ec9ff06f          	jal	zero,151a8 <__sfvwrite_r+0x368>
   152e4:	001b8c1b          	addiw	s8,s7,1
   152e8:	db9ff06f          	jal	zero,150a0 <__sfvwrite_r+0x260>
   152ec:	01813b83          	ld	s7,24(sp)
   152f0:	01013c03          	ld	s8,16(sp)
   152f4:	00813c83          	ld	s9,8(sp)
   152f8:	bf9ff06f          	jal	zero,14ef0 <__sfvwrite_r+0xb0>
   152fc:	01041783          	lh	a5,16(s0)
   15300:	ea9ff06f          	jal	zero,151a8 <__sfvwrite_r+0x368>
   15304:	00c00793          	addi	a5,zero,12
   15308:	00faa023          	sw	a5,0(s5)
   1530c:	01813b83          	ld	s7,24(sp)
   15310:	01041783          	lh	a5,16(s0)
   15314:	01013c03          	ld	s8,16(sp)
   15318:	00813c83          	ld	s9,8(sp)
   1531c:	e8dff06f          	jal	zero,151a8 <__sfvwrite_r+0x368>

0000000000015320 <__swsetup_r>:
   15320:	2201b703          	ld	a4,544(gp) # 20668 <_impure_ptr>
   15324:	fe010113          	addi	sp,sp,-32
   15328:	00113c23          	sd	ra,24(sp)
   1532c:	00050613          	addi	a2,a0,0
   15330:	00058793          	addi	a5,a1,0
   15334:	00070663          	beq	a4,zero,15340 <__swsetup_r+0x20>
   15338:	04873683          	ld	a3,72(a4) # ffffffff80000048 <__BSS_END__+0xffffffff7ffdf400>
   1533c:	10068a63          	beq	a3,zero,15450 <__swsetup_r+0x130>
   15340:	01079703          	lh	a4,16(a5)
   15344:	00877693          	andi	a3,a4,8
   15348:	02068e63          	beq	a3,zero,15384 <__swsetup_r+0x64>
   1534c:	0187b683          	ld	a3,24(a5)
   15350:	04068a63          	beq	a3,zero,153a4 <__swsetup_r+0x84>
   15354:	01079703          	lh	a4,16(a5)
   15358:	00177613          	andi	a2,a4,1
   1535c:	06060e63          	beq	a2,zero,153d8 <__swsetup_r+0xb8>
   15360:	0207a603          	lw	a2,32(a5)
   15364:	0007a623          	sw	zero,12(a5)
   15368:	00000513          	addi	a0,zero,0
   1536c:	40c0063b          	subw	a2,zero,a2
   15370:	02c7a423          	sw	a2,40(a5)
   15374:	08068063          	beq	a3,zero,153f4 <__swsetup_r+0xd4>
   15378:	01813083          	ld	ra,24(sp)
   1537c:	02010113          	addi	sp,sp,32
   15380:	00008067          	jalr	zero,0(ra)
   15384:	01077693          	andi	a3,a4,16
   15388:	0e068263          	beq	a3,zero,1546c <__swsetup_r+0x14c>
   1538c:	00477693          	andi	a3,a4,4
   15390:	06069e63          	bne	a3,zero,1540c <__swsetup_r+0xec>
   15394:	0187b683          	ld	a3,24(a5)
   15398:	00876713          	ori	a4,a4,8
   1539c:	00e79823          	sh	a4,16(a5)
   153a0:	fa069ae3          	bne	a3,zero,15354 <__swsetup_r+0x34>
   153a4:	0107b703          	ld	a4,16(a5)
   153a8:	20000593          	addi	a1,zero,512
   153ac:	28077713          	andi	a4,a4,640
   153b0:	fab702e3          	beq	a4,a1,15354 <__swsetup_r+0x34>
   153b4:	00060513          	addi	a0,a2,0
   153b8:	00078593          	addi	a1,a5,0
   153bc:	00f13023          	sd	a5,0(sp)
   153c0:	4a8040ef          	jal	ra,19868 <__smakebuf_r>
   153c4:	00013783          	ld	a5,0(sp)
   153c8:	01079703          	lh	a4,16(a5)
   153cc:	0187b683          	ld	a3,24(a5)
   153d0:	00177613          	andi	a2,a4,1
   153d4:	f80616e3          	bne	a2,zero,15360 <__swsetup_r+0x40>
   153d8:	00277613          	andi	a2,a4,2
   153dc:	00000593          	addi	a1,zero,0
   153e0:	00061463          	bne	a2,zero,153e8 <__swsetup_r+0xc8>
   153e4:	0207a583          	lw	a1,32(a5)
   153e8:	00b7a623          	sw	a1,12(a5)
   153ec:	00000513          	addi	a0,zero,0
   153f0:	f80694e3          	bne	a3,zero,15378 <__swsetup_r+0x58>
   153f4:	08077693          	andi	a3,a4,128
   153f8:	f80680e3          	beq	a3,zero,15378 <__swsetup_r+0x58>
   153fc:	04076713          	ori	a4,a4,64
   15400:	00e79823          	sh	a4,16(a5)
   15404:	fff00513          	addi	a0,zero,-1
   15408:	f71ff06f          	jal	zero,15378 <__swsetup_r+0x58>
   1540c:	0587b583          	ld	a1,88(a5)
   15410:	02058663          	beq	a1,zero,1543c <__swsetup_r+0x11c>
   15414:	07478693          	addi	a3,a5,116
   15418:	02d58063          	beq	a1,a3,15438 <__swsetup_r+0x118>
   1541c:	00060513          	addi	a0,a2,0
   15420:	00f13423          	sd	a5,8(sp)
   15424:	00c13023          	sd	a2,0(sp)
   15428:	aa9fb0ef          	jal	ra,10ed0 <_free_r>
   1542c:	00813783          	ld	a5,8(sp)
   15430:	00013603          	ld	a2,0(sp)
   15434:	01079703          	lh	a4,16(a5)
   15438:	0407bc23          	sd	zero,88(a5)
   1543c:	0187b683          	ld	a3,24(a5)
   15440:	fdb77713          	andi	a4,a4,-37
   15444:	0007a423          	sw	zero,8(a5)
   15448:	00d7b023          	sd	a3,0(a5)
   1544c:	f4dff06f          	jal	zero,15398 <__swsetup_r+0x78>
   15450:	00a13023          	sd	a0,0(sp)
   15454:	00070513          	addi	a0,a4,0
   15458:	00b13423          	sd	a1,8(sp)
   1545c:	904fb0ef          	jal	ra,10560 <__sinit>
   15460:	00813783          	ld	a5,8(sp)
   15464:	00013603          	ld	a2,0(sp)
   15468:	ed9ff06f          	jal	zero,15340 <__swsetup_r+0x20>
   1546c:	00900693          	addi	a3,zero,9
   15470:	04076713          	ori	a4,a4,64
   15474:	00d62023          	sw	a3,0(a2)
   15478:	00e79823          	sh	a4,16(a5)
   1547c:	fff00513          	addi	a0,zero,-1
   15480:	ef9ff06f          	jal	zero,15378 <__swsetup_r+0x58>

0000000000015484 <memchr>:
   15484:	00757793          	andi	a5,a0,7
   15488:	0ff5f313          	andi	t1,a1,255
   1548c:	02078063          	beq	a5,zero,154ac <memchr+0x28>
   15490:	0a060663          	beq	a2,zero,1553c <memchr+0xb8>
   15494:	00054783          	lbu	a5,0(a0)
   15498:	fff60613          	addi	a2,a2,-1
   1549c:	08678e63          	beq	a5,t1,15538 <memchr+0xb4>
   154a0:	00150513          	addi	a0,a0,1
   154a4:	00757793          	andi	a5,a0,7
   154a8:	fe0794e3          	bne	a5,zero,15490 <memchr+0xc>
   154ac:	00700813          	addi	a6,zero,7
   154b0:	06c87663          	bgeu	a6,a2,1551c <memchr+0x98>
   154b4:	0ff5f593          	andi	a1,a1,255
   154b8:	0085979b          	slliw	a5,a1,0x8
   154bc:	00b787b3          	add	a5,a5,a1
   154c0:	01079693          	slli	a3,a5,0x10
   154c4:	7f7f8737          	lui	a4,0x7f7f8
   154c8:	00f686b3          	add	a3,a3,a5
   154cc:	f7f70713          	addi	a4,a4,-129 # 7f7f7f7f <__BSS_END__+0x7f7d7337>
   154d0:	feff07b7          	lui	a5,0xfeff0
   154d4:	eff78793          	addi	a5,a5,-257 # fffffffffefefeff <__BSS_END__+0xfffffffffefcf2b7>
   154d8:	02071593          	slli	a1,a4,0x20
   154dc:	02069e13          	slli	t3,a3,0x20
   154e0:	00e585b3          	add	a1,a1,a4
   154e4:	02079893          	slli	a7,a5,0x20
   154e8:	01c686b3          	add	a3,a3,t3
   154ec:	fff5c593          	xori	a1,a1,-1
   154f0:	00f888b3          	add	a7,a7,a5
   154f4:	00053783          	ld	a5,0(a0)
   154f8:	00f6c7b3          	xor	a5,a3,a5
   154fc:	01178733          	add	a4,a5,a7
   15500:	fff7c793          	xori	a5,a5,-1
   15504:	00f777b3          	and	a5,a4,a5
   15508:	00b7f7b3          	and	a5,a5,a1
   1550c:	00079a63          	bne	a5,zero,15520 <memchr+0x9c>
   15510:	ff860613          	addi	a2,a2,-8
   15514:	00850513          	addi	a0,a0,8
   15518:	fcc86ee3          	bltu	a6,a2,154f4 <memchr+0x70>
   1551c:	02060063          	beq	a2,zero,1553c <memchr+0xb8>
   15520:	00c50633          	add	a2,a0,a2
   15524:	00c0006f          	jal	zero,15530 <memchr+0xac>
   15528:	00150513          	addi	a0,a0,1
   1552c:	00c50863          	beq	a0,a2,1553c <memchr+0xb8>
   15530:	00054783          	lbu	a5,0(a0)
   15534:	fe679ae3          	bne	a5,t1,15528 <memchr+0xa4>
   15538:	00008067          	jalr	zero,0(ra)
   1553c:	00000513          	addi	a0,zero,0
   15540:	00008067          	jalr	zero,0(ra)

0000000000015544 <strncpy>:
   15544:	00a5e7b3          	or	a5,a1,a0
   15548:	0077f793          	andi	a5,a5,7
   1554c:	00079663          	bne	a5,zero,15558 <strncpy+0x14>
   15550:	00863793          	sltiu	a5,a2,8
   15554:	04078663          	beq	a5,zero,155a0 <strncpy+0x5c>
   15558:	00050713          	addi	a4,a0,0
   1555c:	01c0006f          	jal	zero,15578 <strncpy+0x34>
   15560:	fff5c683          	lbu	a3,-1(a1)
   15564:	fff60813          	addi	a6,a2,-1
   15568:	fed78fa3          	sb	a3,-1(a5)
   1556c:	00068e63          	beq	a3,zero,15588 <strncpy+0x44>
   15570:	00078713          	addi	a4,a5,0
   15574:	00080613          	addi	a2,a6,0
   15578:	00158593          	addi	a1,a1,1
   1557c:	00170793          	addi	a5,a4,1
   15580:	fe0610e3          	bne	a2,zero,15560 <strncpy+0x1c>
   15584:	00008067          	jalr	zero,0(ra)
   15588:	00c70733          	add	a4,a4,a2
   1558c:	06080863          	beq	a6,zero,155fc <strncpy+0xb8>
   15590:	00178793          	addi	a5,a5,1
   15594:	fe078fa3          	sb	zero,-1(a5)
   15598:	fee79ce3          	bne	a5,a4,15590 <strncpy+0x4c>
   1559c:	00008067          	jalr	zero,0(ra)
   155a0:	7f7f8737          	lui	a4,0x7f7f8
   155a4:	f7f70713          	addi	a4,a4,-129 # 7f7f7f7f <__BSS_END__+0x7f7d7337>
   155a8:	feff07b7          	lui	a5,0xfeff0
   155ac:	02071893          	slli	a7,a4,0x20
   155b0:	eff78793          	addi	a5,a5,-257 # fffffffffefefeff <__BSS_END__+0xfffffffffefcf2b7>
   155b4:	00e888b3          	add	a7,a7,a4
   155b8:	02079313          	slli	t1,a5,0x20
   155bc:	00f30333          	add	t1,t1,a5
   155c0:	fff8c893          	xori	a7,a7,-1
   155c4:	00050713          	addi	a4,a0,0
   155c8:	00700e13          	addi	t3,zero,7
   155cc:	0005b683          	ld	a3,0(a1)
   155d0:	006687b3          	add	a5,a3,t1
   155d4:	fff6c813          	xori	a6,a3,-1
   155d8:	0107f7b3          	and	a5,a5,a6
   155dc:	0117f7b3          	and	a5,a5,a7
   155e0:	f8079ce3          	bne	a5,zero,15578 <strncpy+0x34>
   155e4:	ff860613          	addi	a2,a2,-8
   155e8:	00d73023          	sd	a3,0(a4)
   155ec:	00870713          	addi	a4,a4,8
   155f0:	00858593          	addi	a1,a1,8
   155f4:	fcce6ce3          	bltu	t3,a2,155cc <strncpy+0x88>
   155f8:	f81ff06f          	jal	zero,15578 <strncpy+0x34>
   155fc:	00008067          	jalr	zero,0(ra)

0000000000015600 <__localeconv_l>:
   15600:	10050513          	addi	a0,a0,256
   15604:	00008067          	jalr	zero,0(ra)

0000000000015608 <_localeconv_r>:
   15608:	10818513          	addi	a0,gp,264 # 20550 <__global_locale+0x100>
   1560c:	00008067          	jalr	zero,0(ra)

0000000000015610 <localeconv>:
   15610:	10818513          	addi	a0,gp,264 # 20550 <__global_locale+0x100>
   15614:	00008067          	jalr	zero,0(ra)

0000000000015618 <_sbrk_r>:
   15618:	fe010113          	addi	sp,sp,-32
   1561c:	00813823          	sd	s0,16(sp)
   15620:	00913423          	sd	s1,8(sp)
   15624:	00050493          	addi	s1,a0,0
   15628:	00058513          	addi	a0,a1,0
   1562c:	00113c23          	sd	ra,24(sp)
   15630:	2401a023          	sw	zero,576(gp) # 20688 <errno>
   15634:	3c8060ef          	jal	ra,1b9fc <_sbrk>
   15638:	fff00793          	addi	a5,zero,-1
   1563c:	00f50c63          	beq	a0,a5,15654 <_sbrk_r+0x3c>
   15640:	01813083          	ld	ra,24(sp)
   15644:	01013403          	ld	s0,16(sp)
   15648:	00813483          	ld	s1,8(sp)
   1564c:	02010113          	addi	sp,sp,32
   15650:	00008067          	jalr	zero,0(ra)
   15654:	2401a783          	lw	a5,576(gp) # 20688 <errno>
   15658:	fe0784e3          	beq	a5,zero,15640 <_sbrk_r+0x28>
   1565c:	01813083          	ld	ra,24(sp)
   15660:	01013403          	ld	s0,16(sp)
   15664:	00f4a023          	sw	a5,0(s1)
   15668:	00813483          	ld	s1,8(sp)
   1566c:	02010113          	addi	sp,sp,32
   15670:	00008067          	jalr	zero,0(ra)

0000000000015674 <__libc_fini_array>:
   15674:	fe010113          	addi	sp,sp,-32
   15678:	00813823          	sd	s0,16(sp)
   1567c:	000207b7          	lui	a5,0x20
   15680:	00020437          	lui	s0,0x20
   15684:	ad078793          	addi	a5,a5,-1328 # 1fad0 <__sglue>
   15688:	ac840413          	addi	s0,s0,-1336 # 1fac8 <__do_global_dtors_aux_fini_array_entry>
   1568c:	408787b3          	sub	a5,a5,s0
   15690:	00913423          	sd	s1,8(sp)
   15694:	00113c23          	sd	ra,24(sp)
   15698:	4037d493          	srai	s1,a5,0x3
   1569c:	02048063          	beq	s1,zero,156bc <__libc_fini_array+0x48>
   156a0:	ff840413          	addi	s0,s0,-8
   156a4:	00f40433          	add	s0,s0,a5
   156a8:	00043783          	ld	a5,0(s0)
   156ac:	fff48493          	addi	s1,s1,-1
   156b0:	ff840413          	addi	s0,s0,-8
   156b4:	000780e7          	jalr	ra,0(a5)
   156b8:	fe0498e3          	bne	s1,zero,156a8 <__libc_fini_array+0x34>
   156bc:	01813083          	ld	ra,24(sp)
   156c0:	01013403          	ld	s0,16(sp)
   156c4:	00813483          	ld	s1,8(sp)
   156c8:	02010113          	addi	sp,sp,32
   156cc:	00008067          	jalr	zero,0(ra)

00000000000156d0 <memmove>:
   156d0:	02a5f663          	bgeu	a1,a0,156fc <memmove+0x2c>
   156d4:	00c587b3          	add	a5,a1,a2
   156d8:	02f57263          	bgeu	a0,a5,156fc <memmove+0x2c>
   156dc:	04060863          	beq	a2,zero,1572c <memmove+0x5c>
   156e0:	00c50633          	add	a2,a0,a2
   156e4:	fff7c703          	lbu	a4,-1(a5)
   156e8:	fff60613          	addi	a2,a2,-1
   156ec:	fff78793          	addi	a5,a5,-1
   156f0:	00e60023          	sb	a4,0(a2)
   156f4:	fec518e3          	bne	a0,a2,156e4 <memmove+0x14>
   156f8:	00008067          	jalr	zero,0(ra)
   156fc:	01f00793          	addi	a5,zero,31
   15700:	02c7e863          	bltu	a5,a2,15730 <memmove+0x60>
   15704:	00050793          	addi	a5,a0,0
   15708:	fff60693          	addi	a3,a2,-1
   1570c:	0e060063          	beq	a2,zero,157ec <memmove+0x11c>
   15710:	00168693          	addi	a3,a3,1
   15714:	00d786b3          	add	a3,a5,a3
   15718:	0005c703          	lbu	a4,0(a1)
   1571c:	00178793          	addi	a5,a5,1
   15720:	00158593          	addi	a1,a1,1
   15724:	fee78fa3          	sb	a4,-1(a5)
   15728:	fed798e3          	bne	a5,a3,15718 <memmove+0x48>
   1572c:	00008067          	jalr	zero,0(ra)
   15730:	00b567b3          	or	a5,a0,a1
   15734:	0077f793          	andi	a5,a5,7
   15738:	00058893          	addi	a7,a1,0
   1573c:	0a079263          	bne	a5,zero,157e0 <memmove+0x110>
   15740:	00565793          	srli	a5,a2,0x5
   15744:	00579813          	slli	a6,a5,0x5
   15748:	01050833          	add	a6,a0,a6
   1574c:	fff78793          	addi	a5,a5,-1
   15750:	00050713          	addi	a4,a0,0
   15754:	0005b683          	ld	a3,0(a1)
   15758:	02058593          	addi	a1,a1,32
   1575c:	02070713          	addi	a4,a4,32
   15760:	fed73023          	sd	a3,-32(a4)
   15764:	fe85b683          	ld	a3,-24(a1)
   15768:	fed73423          	sd	a3,-24(a4)
   1576c:	ff05b683          	ld	a3,-16(a1)
   15770:	fed73823          	sd	a3,-16(a4)
   15774:	ff85b683          	ld	a3,-8(a1)
   15778:	fed73c23          	sd	a3,-8(a4)
   1577c:	fd071ce3          	bne	a4,a6,15754 <memmove+0x84>
   15780:	00579793          	slli	a5,a5,0x5
   15784:	01178733          	add	a4,a5,a7
   15788:	02070593          	addi	a1,a4,32
   1578c:	00f507b3          	add	a5,a0,a5
   15790:	01867813          	andi	a6,a2,24
   15794:	02078793          	addi	a5,a5,32
   15798:	00058e13          	addi	t3,a1,0
   1579c:	01f67693          	andi	a3,a2,31
   157a0:	04080863          	beq	a6,zero,157f0 <memmove+0x120>
   157a4:	ff868693          	addi	a3,a3,-8
   157a8:	ff86f693          	andi	a3,a3,-8
   157ac:	00d70733          	add	a4,a4,a3
   157b0:	02870713          	addi	a4,a4,40
   157b4:	41150833          	sub	a6,a0,a7
   157b8:	0005b303          	ld	t1,0(a1)
   157bc:	010588b3          	add	a7,a1,a6
   157c0:	00858593          	addi	a1,a1,8
   157c4:	0068b023          	sd	t1,0(a7)
   157c8:	fee598e3          	bne	a1,a4,157b8 <memmove+0xe8>
   157cc:	00868713          	addi	a4,a3,8
   157d0:	01c705b3          	add	a1,a4,t3
   157d4:	00f707b3          	add	a5,a4,a5
   157d8:	00767613          	andi	a2,a2,7
   157dc:	f2dff06f          	jal	zero,15708 <memmove+0x38>
   157e0:	fff60693          	addi	a3,a2,-1
   157e4:	00050793          	addi	a5,a0,0
   157e8:	f29ff06f          	jal	zero,15710 <memmove+0x40>
   157ec:	00008067          	jalr	zero,0(ra)
   157f0:	00068613          	addi	a2,a3,0
   157f4:	f15ff06f          	jal	zero,15708 <memmove+0x38>

00000000000157f8 <memcpy>:
   157f8:	00a5c7b3          	xor	a5,a1,a0
   157fc:	0077f793          	andi	a5,a5,7
   15800:	00c508b3          	add	a7,a0,a2
   15804:	06079663          	bne	a5,zero,15870 <memcpy+0x78>
   15808:	00863613          	sltiu	a2,a2,8
   1580c:	06061263          	bne	a2,zero,15870 <memcpy+0x78>
   15810:	00757793          	andi	a5,a0,7
   15814:	00050713          	addi	a4,a0,0
   15818:	0c079a63          	bne	a5,zero,158ec <memcpy+0xf4>
   1581c:	ff88f613          	andi	a2,a7,-8
   15820:	40e606b3          	sub	a3,a2,a4
   15824:	04000793          	addi	a5,zero,64
   15828:	06d7c463          	blt	a5,a3,15890 <memcpy+0x98>
   1582c:	00058693          	addi	a3,a1,0
   15830:	00070793          	addi	a5,a4,0
   15834:	02c77a63          	bgeu	a4,a2,15868 <memcpy+0x70>
   15838:	0006b803          	ld	a6,0(a3)
   1583c:	00878793          	addi	a5,a5,8
   15840:	00868693          	addi	a3,a3,8
   15844:	ff07bc23          	sd	a6,-8(a5)
   15848:	fec7e8e3          	bltu	a5,a2,15838 <memcpy+0x40>
   1584c:	fff60613          	addi	a2,a2,-1
   15850:	40e60633          	sub	a2,a2,a4
   15854:	ff867613          	andi	a2,a2,-8
   15858:	00858593          	addi	a1,a1,8
   1585c:	00870713          	addi	a4,a4,8
   15860:	00c585b3          	add	a1,a1,a2
   15864:	00c70733          	add	a4,a4,a2
   15868:	01176863          	bltu	a4,a7,15878 <memcpy+0x80>
   1586c:	00008067          	jalr	zero,0(ra)
   15870:	00050713          	addi	a4,a0,0
   15874:	ff157ce3          	bgeu	a0,a7,1586c <memcpy+0x74>
   15878:	0005c783          	lbu	a5,0(a1)
   1587c:	00170713          	addi	a4,a4,1
   15880:	00158593          	addi	a1,a1,1
   15884:	fef70fa3          	sb	a5,-1(a4)
   15888:	fee898e3          	bne	a7,a4,15878 <memcpy+0x80>
   1588c:	00008067          	jalr	zero,0(ra)
   15890:	0005b683          	ld	a3,0(a1)
   15894:	0085b283          	ld	t0,8(a1)
   15898:	0105bf83          	ld	t6,16(a1)
   1589c:	0185bf03          	ld	t5,24(a1)
   158a0:	0205be83          	ld	t4,32(a1)
   158a4:	0285be03          	ld	t3,40(a1)
   158a8:	0305b303          	ld	t1,48(a1)
   158ac:	0385b803          	ld	a6,56(a1)
   158b0:	00d73023          	sd	a3,0(a4)
   158b4:	0405b683          	ld	a3,64(a1)
   158b8:	04870713          	addi	a4,a4,72
   158bc:	fc573023          	sd	t0,-64(a4)
   158c0:	fed73c23          	sd	a3,-8(a4)
   158c4:	fdf73423          	sd	t6,-56(a4)
   158c8:	40e606b3          	sub	a3,a2,a4
   158cc:	fde73823          	sd	t5,-48(a4)
   158d0:	fdd73c23          	sd	t4,-40(a4)
   158d4:	ffc73023          	sd	t3,-32(a4)
   158d8:	fe673423          	sd	t1,-24(a4)
   158dc:	ff073823          	sd	a6,-16(a4)
   158e0:	04858593          	addi	a1,a1,72
   158e4:	fad7c6e3          	blt	a5,a3,15890 <memcpy+0x98>
   158e8:	f45ff06f          	jal	zero,1582c <memcpy+0x34>
   158ec:	0005c683          	lbu	a3,0(a1)
   158f0:	00170713          	addi	a4,a4,1
   158f4:	00777793          	andi	a5,a4,7
   158f8:	fed70fa3          	sb	a3,-1(a4)
   158fc:	00158593          	addi	a1,a1,1
   15900:	f0078ee3          	beq	a5,zero,1581c <memcpy+0x24>
   15904:	0005c683          	lbu	a3,0(a1)
   15908:	00170713          	addi	a4,a4,1
   1590c:	00777793          	andi	a5,a4,7
   15910:	fed70fa3          	sb	a3,-1(a4)
   15914:	00158593          	addi	a1,a1,1
   15918:	fc079ae3          	bne	a5,zero,158ec <memcpy+0xf4>
   1591c:	f01ff06f          	jal	zero,1581c <memcpy+0x24>

0000000000015920 <strlen>:
   15920:	00757793          	andi	a5,a0,7
   15924:	00050713          	addi	a4,a0,0
   15928:	08079063          	bne	a5,zero,159a8 <strlen+0x88>
   1592c:	7f7f87b7          	lui	a5,0x7f7f8
   15930:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <__BSS_END__+0x7f7d7337>
   15934:	02079693          	slli	a3,a5,0x20
   15938:	00f686b3          	add	a3,a3,a5
   1593c:	fff00593          	addi	a1,zero,-1
   15940:	00073603          	ld	a2,0(a4)
   15944:	00870713          	addi	a4,a4,8
   15948:	00d677b3          	and	a5,a2,a3
   1594c:	00d787b3          	add	a5,a5,a3
   15950:	00c7e7b3          	or	a5,a5,a2
   15954:	00d7e7b3          	or	a5,a5,a3
   15958:	feb784e3          	beq	a5,a1,15940 <strlen+0x20>
   1595c:	ff874783          	lbu	a5,-8(a4)
   15960:	40a706b3          	sub	a3,a4,a0
   15964:	06078463          	beq	a5,zero,159cc <strlen+0xac>
   15968:	ff974783          	lbu	a5,-7(a4)
   1596c:	04078c63          	beq	a5,zero,159c4 <strlen+0xa4>
   15970:	ffa74783          	lbu	a5,-6(a4)
   15974:	06078463          	beq	a5,zero,159dc <strlen+0xbc>
   15978:	ffb74783          	lbu	a5,-5(a4)
   1597c:	04078c63          	beq	a5,zero,159d4 <strlen+0xb4>
   15980:	ffc74783          	lbu	a5,-4(a4)
   15984:	06078063          	beq	a5,zero,159e4 <strlen+0xc4>
   15988:	ffd74783          	lbu	a5,-3(a4)
   1598c:	06078063          	beq	a5,zero,159ec <strlen+0xcc>
   15990:	ffe74783          	lbu	a5,-2(a4)
   15994:	00f03533          	sltu	a0,zero,a5
   15998:	00d50533          	add	a0,a0,a3
   1599c:	ffe50513          	addi	a0,a0,-2
   159a0:	00008067          	jalr	zero,0(ra)
   159a4:	f80684e3          	beq	a3,zero,1592c <strlen+0xc>
   159a8:	00074783          	lbu	a5,0(a4)
   159ac:	00170713          	addi	a4,a4,1
   159b0:	00777693          	andi	a3,a4,7
   159b4:	fe0798e3          	bne	a5,zero,159a4 <strlen+0x84>
   159b8:	40a70733          	sub	a4,a4,a0
   159bc:	fff70513          	addi	a0,a4,-1
   159c0:	00008067          	jalr	zero,0(ra)
   159c4:	ff968513          	addi	a0,a3,-7
   159c8:	00008067          	jalr	zero,0(ra)
   159cc:	ff868513          	addi	a0,a3,-8
   159d0:	00008067          	jalr	zero,0(ra)
   159d4:	ffb68513          	addi	a0,a3,-5
   159d8:	00008067          	jalr	zero,0(ra)
   159dc:	ffa68513          	addi	a0,a3,-6
   159e0:	00008067          	jalr	zero,0(ra)
   159e4:	ffc68513          	addi	a0,a3,-4
   159e8:	00008067          	jalr	zero,0(ra)
   159ec:	ffd68513          	addi	a0,a3,-3
   159f0:	00008067          	jalr	zero,0(ra)

00000000000159f4 <frexpl>:
   159f4:	fb010113          	addi	sp,sp,-80
   159f8:	02913c23          	sd	s1,56(sp)
   159fc:	000084b7          	lui	s1,0x8
   15a00:	04113423          	sd	ra,72(sp)
   15a04:	0305d793          	srli	a5,a1,0x30
   15a08:	fff48493          	addi	s1,s1,-1 # 7fff <exit-0x8121>
   15a0c:	00062023          	sw	zero,0(a2)
   15a10:	0097f7b3          	and	a5,a5,s1
   15a14:	00058713          	addi	a4,a1,0
   15a18:	00050313          	addi	t1,a0,0
   15a1c:	0c978063          	beq	a5,s1,15adc <frexpl+0xe8>
   15a20:	04813023          	sd	s0,64(sp)
   15a24:	00000693          	addi	a3,zero,0
   15a28:	00060413          	addi	s0,a2,0
   15a2c:	00000613          	addi	a2,zero,0
   15a30:	00b13823          	sd	a1,16(sp)
   15a34:	00a13423          	sd	a0,8(sp)
   15a38:	00f13c23          	sd	a5,24(sp)
   15a3c:	02a13023          	sd	a0,32(sp)
   15a40:	02b13423          	sd	a1,40(sp)
   15a44:	344070ef          	jal	ra,1cd88 <__eqtf2>
   15a48:	00813303          	ld	t1,8(sp)
   15a4c:	01013703          	ld	a4,16(sp)
   15a50:	08050463          	beq	a0,zero,15ad8 <frexpl+0xe4>
   15a54:	01813783          	ld	a5,24(sp)
   15a58:	00000613          	addi	a2,zero,0
   15a5c:	00030893          	addi	a7,t1,0
   15a60:	00070813          	addi	a6,a4,0
   15a64:	02079663          	bne	a5,zero,15a90 <frexpl+0x9c>
   15a68:	040716b7          	lui	a3,0x4071
   15a6c:	00030513          	addi	a0,t1,0
   15a70:	00070593          	addi	a1,a4,0
   15a74:	02469693          	slli	a3,a3,0x24
   15a78:	584070ef          	jal	ra,1cffc <__multf3>
   15a7c:	0305d793          	srli	a5,a1,0x30
   15a80:	00058813          	addi	a6,a1,0
   15a84:	00050893          	addi	a7,a0,0
   15a88:	0097f7b3          	and	a5,a5,s1
   15a8c:	f8e00613          	addi	a2,zero,-114
   15a90:	ffffc737          	lui	a4,0xffffc
   15a94:	0027071b          	addiw	a4,a4,2 # ffffffffffffc002 <__BSS_END__+0xfffffffffffdb3ba>
   15a98:	00e787bb          	addw	a5,a5,a4
   15a9c:	f80016b7          	lui	a3,0xf8001
   15aa0:	00c787bb          	addw	a5,a5,a2
   15aa4:	04813083          	ld	ra,72(sp)
   15aa8:	00f42023          	sw	a5,0(s0)
   15aac:	02469693          	slli	a3,a3,0x24
   15ab0:	04013403          	ld	s0,64(sp)
   15ab4:	fff68693          	addi	a3,a3,-1 # fffffffff8000fff <__BSS_END__+0xfffffffff7fe03b7>
   15ab8:	01fff737          	lui	a4,0x1fff
   15abc:	00d87833          	and	a6,a6,a3
   15ac0:	02571713          	slli	a4,a4,0x25
   15ac4:	03813483          	ld	s1,56(sp)
   15ac8:	00088513          	addi	a0,a7,0
   15acc:	00e865b3          	or	a1,a6,a4
   15ad0:	05010113          	addi	sp,sp,80
   15ad4:	00008067          	jalr	zero,0(ra)
   15ad8:	04013403          	ld	s0,64(sp)
   15adc:	04813083          	ld	ra,72(sp)
   15ae0:	03813483          	ld	s1,56(sp)
   15ae4:	00030513          	addi	a0,t1,0
   15ae8:	00070593          	addi	a1,a4,0 # 1fff000 <__BSS_END__+0x1fde3b8>
   15aec:	05010113          	addi	sp,sp,80
   15af0:	00008067          	jalr	zero,0(ra)

0000000000015af4 <__register_exitproc>:
   15af4:	2481b783          	ld	a5,584(gp) # 20690 <__atexit>
   15af8:	04078e63          	beq	a5,zero,15b54 <__register_exitproc+0x60>
   15afc:	0087a703          	lw	a4,8(a5)
   15b00:	01f00813          	addi	a6,zero,31
   15b04:	08e84463          	blt	a6,a4,15b8c <__register_exitproc+0x98>
   15b08:	02050863          	beq	a0,zero,15b38 <__register_exitproc+0x44>
   15b0c:	00371813          	slli	a6,a4,0x3
   15b10:	01078833          	add	a6,a5,a6
   15b14:	10c83823          	sd	a2,272(a6)
   15b18:	3107a883          	lw	a7,784(a5)
   15b1c:	00100613          	addi	a2,zero,1
   15b20:	00e6163b          	sllw	a2,a2,a4
   15b24:	00c8e8b3          	or	a7,a7,a2
   15b28:	3117a823          	sw	a7,784(a5)
   15b2c:	20d83823          	sd	a3,528(a6)
   15b30:	00200693          	addi	a3,zero,2
   15b34:	02d50863          	beq	a0,a3,15b64 <__register_exitproc+0x70>
   15b38:	0017069b          	addiw	a3,a4,1
   15b3c:	00371713          	slli	a4,a4,0x3
   15b40:	00d7a423          	sw	a3,8(a5)
   15b44:	00e787b3          	add	a5,a5,a4
   15b48:	00b7b823          	sd	a1,16(a5)
   15b4c:	00000513          	addi	a0,zero,0
   15b50:	00008067          	jalr	zero,0(ra)
   15b54:	000217b7          	lui	a5,0x21
   15b58:	93078793          	addi	a5,a5,-1744 # 20930 <__atexit0>
   15b5c:	24f1b423          	sd	a5,584(gp) # 20690 <__atexit>
   15b60:	f9dff06f          	jal	zero,15afc <__register_exitproc+0x8>
   15b64:	3147a683          	lw	a3,788(a5)
   15b68:	00000513          	addi	a0,zero,0
   15b6c:	00d66633          	or	a2,a2,a3
   15b70:	0017069b          	addiw	a3,a4,1
   15b74:	00371713          	slli	a4,a4,0x3
   15b78:	30c7aa23          	sw	a2,788(a5)
   15b7c:	00d7a423          	sw	a3,8(a5)
   15b80:	00e787b3          	add	a5,a5,a4
   15b84:	00b7b823          	sd	a1,16(a5)
   15b88:	00008067          	jalr	zero,0(ra)
   15b8c:	fff00513          	addi	a0,zero,-1
   15b90:	00008067          	jalr	zero,0(ra)

0000000000015b94 <_ldtoa_r>:
   15b94:	0001e337          	lui	t1,0x1e
   15b98:	5a030313          	addi	t1,t1,1440 # 1e5a0 <blanks.1+0x20>
   15b9c:	00033f03          	ld	t5,0(t1)
   15ba0:	00833e83          	ld	t4,8(t1)
   15ba4:	01032e03          	lw	t3,16(t1)
   15ba8:	05053303          	ld	t1,80(a0)
   15bac:	f5010113          	addi	sp,sp,-176
   15bb0:	08913c23          	sd	s1,152(sp)
   15bb4:	09213823          	sd	s2,144(sp)
   15bb8:	09413023          	sd	s4,128(sp)
   15bbc:	07513c23          	sd	s5,120(sp)
   15bc0:	07613823          	sd	s6,112(sp)
   15bc4:	05913c23          	sd	s9,88(sp)
   15bc8:	05a13823          	sd	s10,80(sp)
   15bcc:	05b13423          	sd	s11,72(sp)
   15bd0:	0a113423          	sd	ra,168(sp)
   15bd4:	0a813023          	sd	s0,160(sp)
   15bd8:	09313423          	sd	s3,136(sp)
   15bdc:	07713423          	sd	s7,104(sp)
   15be0:	07813023          	sd	s8,96(sp)
   15be4:	03e13423          	sd	t5,40(sp)
   15be8:	03d13823          	sd	t4,48(sp)
   15bec:	03c12c23          	sw	t3,56(sp)
   15bf0:	00050a13          	addi	s4,a0,0
   15bf4:	00058913          	addi	s2,a1,0
   15bf8:	00060493          	addi	s1,a2,0
   15bfc:	00068c93          	addi	s9,a3,0
   15c00:	00070d13          	addi	s10,a4,0
   15c04:	00078a93          	addi	s5,a5,0
   15c08:	00080b13          	addi	s6,a6,0
   15c0c:	00088d93          	addi	s11,a7,0
   15c10:	00030863          	beq	t1,zero,15c20 <_ldtoa_r+0x8c>
   15c14:	00030593          	addi	a1,t1,0
   15c18:	699010ef          	jal	ra,17ab0 <__freedtoa>
   15c1c:	040a3823          	sd	zero,80(s4)
   15c20:	03412703          	lw	a4,52(sp)
   15c24:	0004a793          	slti	a5,s1,0
   15c28:	fff00993          	addi	s3,zero,-1
   15c2c:	4017569b          	sraiw	a3,a4,0x1
   15c30:	00d7f7b3          	and	a5,a5,a3
   15c34:	00f74733          	xor	a4,a4,a5
   15c38:	02e12a23          	sw	a4,52(sp)
   15c3c:	0004a713          	slti	a4,s1,0
   15c40:	00eb2023          	sw	a4,0(s6)
   15c44:	0019d413          	srli	s0,s3,0x1
   15c48:	00149713          	slli	a4,s1,0x1
   15c4c:	0084f433          	and	s0,s1,s0
   15c50:	03175b93          	srli	s7,a4,0x31
   15c54:	ffffc7b7          	lui	a5,0xffffc
   15c58:	01049713          	slli	a4,s1,0x10
   15c5c:	f917879b          	addiw	a5,a5,-111 # ffffffffffffbf91 <__BSS_END__+0xfffffffffffdb349>
   15c60:	03075b13          	srli	s6,a4,0x30
   15c64:	00040693          	addi	a3,s0,0
   15c68:	00040593          	addi	a1,s0,0
   15c6c:	00090613          	addi	a2,s2,0
   15c70:	00090513          	addi	a0,s2,0
   15c74:	01213c23          	sd	s2,24(sp)
   15c78:	02912023          	sw	s1,32(sp)
   15c7c:	00fb8c3b          	addw	s8,s7,a5
   15c80:	03612223          	sw	s6,36(sp)
   15c84:	234080ef          	jal	ra,1deb8 <__unordtf2>
   15c88:	12051a63          	bne	a0,zero,15dbc <_ldtoa_r+0x228>
   15c8c:	07fff6b7          	lui	a3,0x7fff
   15c90:	02469693          	slli	a3,a3,0x24
   15c94:	013686b3          	add	a3,a3,s3
   15c98:	00098613          	addi	a2,s3,0
   15c9c:	00090513          	addi	a0,s2,0
   15ca0:	00040593          	addi	a1,s0,0
   15ca4:	214080ef          	jal	ra,1deb8 <__unordtf2>
   15ca8:	0a051463          	bne	a0,zero,15d50 <_ldtoa_r+0x1bc>
   15cac:	07fff6b7          	lui	a3,0x7fff
   15cb0:	02469693          	slli	a3,a3,0x24
   15cb4:	00098613          	addi	a2,s3,0
   15cb8:	013686b3          	add	a3,a3,s3
   15cbc:	00090513          	addi	a0,s2,0
   15cc0:	00040593          	addi	a1,s0,0
   15cc4:	24c070ef          	jal	ra,1cf10 <__letf2>
   15cc8:	08a05463          	bge	zero,a0,15d50 <_ldtoa_r+0x1bc>
   15ccc:	00300793          	addi	a5,zero,3
   15cd0:	00f12a23          	sw	a5,20(sp)
   15cd4:	000c8793          	addi	a5,s9,0
   15cd8:	01410713          	addi	a4,sp,20
   15cdc:	01b13023          	sd	s11,0(sp)
   15ce0:	000d0813          	addi	a6,s10,0
   15ce4:	000c0613          	addi	a2,s8,0
   15ce8:	000a0513          	addi	a0,s4,0
   15cec:	000a8893          	addi	a7,s5,0
   15cf0:	01810693          	addi	a3,sp,24
   15cf4:	02810593          	addi	a1,sp,40
   15cf8:	1a4000ef          	jal	ra,15e9c <__gdtoa>
   15cfc:	000aa703          	lw	a4,0(s5)
   15d00:	ffff87b7          	lui	a5,0xffff8
   15d04:	00f71863          	bne	a4,a5,15d14 <_ldtoa_r+0x180>
   15d08:	800007b7          	lui	a5,0x80000
   15d0c:	fff78793          	addi	a5,a5,-1 # ffffffff7fffffff <__BSS_END__+0xffffffff7ffdf3b7>
   15d10:	00faa023          	sw	a5,0(s5)
   15d14:	0a813083          	ld	ra,168(sp)
   15d18:	0a013403          	ld	s0,160(sp)
   15d1c:	09813483          	ld	s1,152(sp)
   15d20:	09013903          	ld	s2,144(sp)
   15d24:	08813983          	ld	s3,136(sp)
   15d28:	08013a03          	ld	s4,128(sp)
   15d2c:	07813a83          	ld	s5,120(sp)
   15d30:	07013b03          	ld	s6,112(sp)
   15d34:	06813b83          	ld	s7,104(sp)
   15d38:	06013c03          	ld	s8,96(sp)
   15d3c:	05813c83          	ld	s9,88(sp)
   15d40:	05013d03          	ld	s10,80(sp)
   15d44:	04813d83          	ld	s11,72(sp)
   15d48:	0b010113          	addi	sp,sp,176
   15d4c:	00008067          	jalr	zero,0(ra)
   15d50:	0001e7b7          	lui	a5,0x1e
   15d54:	5987b683          	ld	a3,1432(a5) # 1e598 <blanks.1+0x18>
   15d58:	00040593          	addi	a1,s0,0
   15d5c:	00000613          	addi	a2,zero,0
   15d60:	00090513          	addi	a0,s2,0
   15d64:	0c0070ef          	jal	ra,1ce24 <__getf2>
   15d68:	00054e63          	blt	a0,zero,15d84 <_ldtoa_r+0x1f0>
   15d6c:	000107b7          	lui	a5,0x10
   15d70:	0167e7b3          	or	a5,a5,s6
   15d74:	00100713          	addi	a4,zero,1
   15d78:	02f12223          	sw	a5,36(sp)
   15d7c:	00e12a23          	sw	a4,20(sp)
   15d80:	f55ff06f          	jal	zero,15cd4 <_ldtoa_r+0x140>
   15d84:	00090513          	addi	a0,s2,0
   15d88:	00048593          	addi	a1,s1,0
   15d8c:	00000613          	addi	a2,zero,0
   15d90:	00000693          	addi	a3,zero,0
   15d94:	7f5060ef          	jal	ra,1cd88 <__eqtf2>
   15d98:	00051663          	bne	a0,zero,15da4 <_ldtoa_r+0x210>
   15d9c:	00012a23          	sw	zero,20(sp)
   15da0:	f35ff06f          	jal	zero,15cd4 <_ldtoa_r+0x140>
   15da4:	ffffc7b7          	lui	a5,0xffffc
   15da8:	f927879b          	addiw	a5,a5,-110 # ffffffffffffbf92 <__BSS_END__+0xfffffffffffdb34a>
   15dac:	00200713          	addi	a4,zero,2
   15db0:	00fb8c3b          	addw	s8,s7,a5
   15db4:	00e12a23          	sw	a4,20(sp)
   15db8:	f1dff06f          	jal	zero,15cd4 <_ldtoa_r+0x140>
   15dbc:	00400793          	addi	a5,zero,4
   15dc0:	00f12a23          	sw	a5,20(sp)
   15dc4:	f11ff06f          	jal	zero,15cd4 <_ldtoa_r+0x140>

0000000000015dc8 <_ldcheck>:
   15dc8:	fd010113          	addi	sp,sp,-48
   15dcc:	00913c23          	sd	s1,24(sp)
   15dd0:	00853483          	ld	s1,8(a0)
   15dd4:	01213823          	sd	s2,16(sp)
   15dd8:	01313423          	sd	s3,8(sp)
   15ddc:	00053903          	ld	s2,0(a0)
   15de0:	fff00993          	addi	s3,zero,-1
   15de4:	0019d793          	srli	a5,s3,0x1
   15de8:	00f4f4b3          	and	s1,s1,a5
   15dec:	00048693          	addi	a3,s1,0
   15df0:	00048593          	addi	a1,s1,0
   15df4:	00090613          	addi	a2,s2,0
   15df8:	00090513          	addi	a0,s2,0
   15dfc:	02113423          	sd	ra,40(sp)
   15e00:	0b8080ef          	jal	ra,1deb8 <__unordtf2>
   15e04:	06051e63          	bne	a0,zero,15e80 <_ldcheck+0xb8>
   15e08:	07fff6b7          	lui	a3,0x7fff
   15e0c:	02469693          	slli	a3,a3,0x24
   15e10:	013686b3          	add	a3,a3,s3
   15e14:	00098613          	addi	a2,s3,0
   15e18:	00090513          	addi	a0,s2,0
   15e1c:	00048593          	addi	a1,s1,0
   15e20:	02813023          	sd	s0,32(sp)
   15e24:	00100413          	addi	s0,zero,1
   15e28:	090080ef          	jal	ra,1deb8 <__unordtf2>
   15e2c:	02050663          	beq	a0,zero,15e58 <_ldcheck+0x90>
   15e30:	02813083          	ld	ra,40(sp)
   15e34:	00144513          	xori	a0,s0,1
   15e38:	02013403          	ld	s0,32(sp)
   15e3c:	0ff57513          	andi	a0,a0,255
   15e40:	01813483          	ld	s1,24(sp)
   15e44:	01013903          	ld	s2,16(sp)
   15e48:	00813983          	ld	s3,8(sp)
   15e4c:	0015151b          	slliw	a0,a0,0x1
   15e50:	03010113          	addi	sp,sp,48
   15e54:	00008067          	jalr	zero,0(ra)
   15e58:	07fff7b7          	lui	a5,0x7fff
   15e5c:	02479793          	slli	a5,a5,0x24
   15e60:	00098613          	addi	a2,s3,0
   15e64:	013786b3          	add	a3,a5,s3
   15e68:	00090513          	addi	a0,s2,0
   15e6c:	00048593          	addi	a1,s1,0
   15e70:	0a0070ef          	jal	ra,1cf10 <__letf2>
   15e74:	faa05ee3          	bge	zero,a0,15e30 <_ldcheck+0x68>
   15e78:	00000413          	addi	s0,zero,0
   15e7c:	fb5ff06f          	jal	zero,15e30 <_ldcheck+0x68>
   15e80:	02813083          	ld	ra,40(sp)
   15e84:	01813483          	ld	s1,24(sp)
   15e88:	01013903          	ld	s2,16(sp)
   15e8c:	00813983          	ld	s3,8(sp)
   15e90:	00100513          	addi	a0,zero,1
   15e94:	03010113          	addi	sp,sp,48
   15e98:	00008067          	jalr	zero,0(ra)

0000000000015e9c <__gdtoa>:
   15e9c:	ec010113          	addi	sp,sp,-320
   15ea0:	13213023          	sd	s2,288(sp)
   15ea4:	00072903          	lw	s2,0(a4)
   15ea8:	11613023          	sd	s6,256(sp)
   15eac:	12113c23          	sd	ra,312(sp)
   15eb0:	fcf97313          	andi	t1,s2,-49
   15eb4:	00672023          	sw	t1,0(a4)
   15eb8:	00300e13          	addi	t3,zero,3
   15ebc:	00f97313          	andi	t1,s2,15
   15ec0:	14013b03          	ld	s6,320(sp)
   15ec4:	39c30e63          	beq	t1,t3,16260 <__gdtoa+0x3c4>
   15ec8:	0f713c23          	sd	s7,248(sp)
   15ecc:	0fa13023          	sd	s10,224(sp)
   15ed0:	00080d13          	addi	s10,a6,0
   15ed4:	00c97813          	andi	a6,s2,12
   15ed8:	00080b93          	addi	s7,a6,0
   15edc:	2a081463          	bne	a6,zero,16184 <__gdtoa+0x2e8>
   15ee0:	0f813823          	sd	s8,240(sp)
   15ee4:	0db13c23          	sd	s11,216(sp)
   15ee8:	01113823          	sd	a7,16(sp)
   15eec:	00c13c23          	sd	a2,24(sp)
   15ef0:	02b13823          	sd	a1,48(sp)
   15ef4:	02e13423          	sd	a4,40(sp)
   15ef8:	00050c13          	addi	s8,a0,0
   15efc:	00068d93          	addi	s11,a3,0 # 7fff000 <__BSS_END__+0x7fde3b8>
   15f00:	30030a63          	beq	t1,zero,16214 <__gdtoa+0x378>
   15f04:	11313c23          	sd	s3,280(sp)
   15f08:	0005a983          	lw	s3,0(a1)
   15f0c:	0f913423          	sd	s9,232(sp)
   15f10:	12813823          	sd	s0,304(sp)
   15f14:	00078c93          	addi	s9,a5,0 # 7fff000 <__BSS_END__+0x7fde3b8>
   15f18:	02000793          	addi	a5,zero,32
   15f1c:	00000593          	addi	a1,zero,0
   15f20:	0137d863          	bge	a5,s3,15f30 <__gdtoa+0x94>
   15f24:	0017979b          	slliw	a5,a5,0x1
   15f28:	0015859b          	addiw	a1,a1,1
   15f2c:	ff37cce3          	blt	a5,s3,15f24 <__gdtoa+0x88>
   15f30:	000c0513          	addi	a0,s8,0
   15f34:	769010ef          	jal	ra,17e9c <_Balloc>
   15f38:	00050413          	addi	s0,a0,0
   15f3c:	28050263          	beq	a0,zero,161c0 <__gdtoa+0x324>
   15f40:	fff9879b          	addiw	a5,s3,-1
   15f44:	4057d79b          	sraiw	a5,a5,0x5
   15f48:	00279793          	slli	a5,a5,0x2
   15f4c:	12913423          	sd	s1,296(sp)
   15f50:	000d8713          	addi	a4,s11,0
   15f54:	00fd85b3          	add	a1,s11,a5
   15f58:	01850693          	addi	a3,a0,24
   15f5c:	00072603          	lw	a2,0(a4)
   15f60:	00470713          	addi	a4,a4,4
   15f64:	00468693          	addi	a3,a3,4
   15f68:	fec6ae23          	sw	a2,-4(a3)
   15f6c:	fee5f8e3          	bgeu	a1,a4,15f5c <__gdtoa+0xc0>
   15f70:	00158593          	addi	a1,a1,1
   15f74:	001d8713          	addi	a4,s11,1
   15f78:	00e5b5b3          	sltu	a1,a1,a4
   15f7c:	fff58593          	addi	a1,a1,-1
   15f80:	00b7f7b3          	and	a5,a5,a1
   15f84:	00478793          	addi	a5,a5,4
   15f88:	4027d493          	srai	s1,a5,0x2
   15f8c:	00f407b3          	add	a5,s0,a5
   15f90:	00c0006f          	jal	zero,15f9c <__gdtoa+0x100>
   15f94:	ffc78793          	addi	a5,a5,-4
   15f98:	2e048a63          	beq	s1,zero,1628c <__gdtoa+0x3f0>
   15f9c:	0147a703          	lw	a4,20(a5)
   15fa0:	00048693          	addi	a3,s1,0
   15fa4:	fff4849b          	addiw	s1,s1,-1
   15fa8:	fe0706e3          	beq	a4,zero,15f94 <__gdtoa+0xf8>
   15fac:	00249493          	slli	s1,s1,0x2
   15fb0:	009404b3          	add	s1,s0,s1
   15fb4:	0184a503          	lw	a0,24(s1)
   15fb8:	00d42a23          	sw	a3,20(s0)
   15fbc:	00d13423          	sd	a3,8(sp)
   15fc0:	278020ef          	jal	ra,18238 <__hi0bits>
   15fc4:	00813683          	ld	a3,8(sp)
   15fc8:	0056969b          	slliw	a3,a3,0x5
   15fcc:	40a684bb          	subw	s1,a3,a0
   15fd0:	00040513          	addi	a0,s0,0
   15fd4:	65d010ef          	jal	ra,17e30 <__trailz_D2A>
   15fd8:	01813783          	ld	a5,24(sp)
   15fdc:	0ca12623          	sw	a0,204(sp)
   15fe0:	04f13023          	sd	a5,64(sp)
   15fe4:	62051263          	bne	a0,zero,16608 <__gdtoa+0x76c>
   15fe8:	01442783          	lw	a5,20(s0)
   15fec:	20078663          	beq	a5,zero,161f8 <__gdtoa+0x35c>
   15ff0:	0cc10593          	addi	a1,sp,204
   15ff4:	00040513          	addi	a0,s0,0
   15ff8:	11413823          	sd	s4,272(sp)
   15ffc:	11513423          	sd	s5,264(sp)
   16000:	5c1020ef          	jal	ra,18dc0 <__b2d>
   16004:	00c51793          	slli	a5,a0,0xc
   16008:	3ff00737          	lui	a4,0x3ff00
   1600c:	02051613          	slli	a2,a0,0x20
   16010:	02c7d513          	srli	a0,a5,0x2c
   16014:	00e567b3          	or	a5,a0,a4
   16018:	02065613          	srli	a2,a2,0x20
   1601c:	04f13423          	sd	a5,72(sp)
   16020:	02079793          	slli	a5,a5,0x20
   16024:	00f667b3          	or	a5,a2,a5
   16028:	02f13c23          	sd	a5,56(sp)
   1602c:	04013783          	ld	a5,64(sp)
   16030:	1b01b583          	ld	a1,432(gp) # 205f8 <__SDATA_BEGIN__>
   16034:	03813503          	ld	a0,56(sp)
   16038:	009787bb          	addw	a5,a5,s1
   1603c:	04f13c23          	sd	a5,88(sp)
   16040:	fff7879b          	addiw	a5,a5,-1
   16044:	02f13023          	sd	a5,32(sp)
   16048:	005060ef          	jal	ra,1c84c <__subdf3>
   1604c:	1b81b583          	ld	a1,440(gp) # 20600 <__SDATA_BEGIN__+0x8>
   16050:	48c060ef          	jal	ra,1c4dc <__muldf3>
   16054:	1c01b583          	ld	a1,448(gp) # 20608 <__SDATA_BEGIN__+0x10>
   16058:	2c9050ef          	jal	ra,1bb20 <__adddf3>
   1605c:	02013a03          	ld	s4,32(sp)
   16060:	00050a93          	addi	s5,a0,0
   16064:	000a0513          	addi	a0,s4,0
   16068:	4a1060ef          	jal	ra,1cd08 <__floatsidf>
   1606c:	1c81b583          	ld	a1,456(gp) # 20610 <__SDATA_BEGIN__+0x18>
   16070:	46c060ef          	jal	ra,1c4dc <__muldf3>
   16074:	00050593          	addi	a1,a0,0
   16078:	000a8513          	addi	a0,s5,0
   1607c:	2a5050ef          	jal	ra,1bb20 <__adddf3>
   16080:	00050a93          	addi	s5,a0,0
   16084:	000a0793          	addi	a5,s4,0
   16088:	000a5863          	bge	s4,zero,16098 <__gdtoa+0x1fc>
   1608c:	05813783          	ld	a5,88(sp)
   16090:	00100513          	addi	a0,zero,1
   16094:	40f507bb          	subw	a5,a0,a5
   16098:	bcb7851b          	addiw	a0,a5,-1077
   1609c:	02a05063          	bge	zero,a0,160bc <__gdtoa+0x220>
   160a0:	469060ef          	jal	ra,1cd08 <__floatsidf>
   160a4:	1d01b583          	ld	a1,464(gp) # 20618 <__SDATA_BEGIN__+0x20>
   160a8:	434060ef          	jal	ra,1c4dc <__muldf3>
   160ac:	00050593          	addi	a1,a0,0
   160b0:	000a8513          	addi	a0,s5,0
   160b4:	26d050ef          	jal	ra,1bb20 <__adddf3>
   160b8:	00050a93          	addi	s5,a0,0
   160bc:	000a8513          	addi	a0,s5,0
   160c0:	000a8a13          	addi	s4,s5,0
   160c4:	3e1060ef          	jal	ra,1cca4 <__fixdfsi>
   160c8:	0005071b          	addiw	a4,a0,0
   160cc:	00000593          	addi	a1,zero,0
   160d0:	000a0513          	addi	a0,s4,0
   160d4:	00070a93          	addi	s5,a4,0 # 3ff00000 <__BSS_END__+0x3fedf3b8>
   160d8:	00e13423          	sd	a4,8(sp)
   160dc:	350060ef          	jal	ra,1c42c <__ledf2>
   160e0:	70054a63          	blt	a0,zero,167f4 <__gdtoa+0x958>
   160e4:	02013783          	ld	a5,32(sp)
   160e8:	04813683          	ld	a3,72(sp)
   160ec:	03816703          	lwu	a4,56(sp)
   160f0:	0147979b          	slliw	a5,a5,0x14
   160f4:	00d787bb          	addw	a5,a5,a3
   160f8:	02013683          	ld	a3,32(sp)
   160fc:	02079793          	slli	a5,a5,0x20
   16100:	00f767b3          	or	a5,a4,a5
   16104:	40d4863b          	subw	a2,s1,a3
   16108:	00813683          	ld	a3,8(sp)
   1610c:	02f13c23          	sd	a5,56(sp)
   16110:	fff6079b          	addiw	a5,a2,-1
   16114:	04f13423          	sd	a5,72(sp)
   16118:	fff60a1b          	addiw	s4,a2,-1
   1611c:	01600793          	addi	a5,zero,22
   16120:	000a0713          	addi	a4,s4,0
   16124:	16d7e863          	bltu	a5,a3,16294 <__gdtoa+0x3f8>
   16128:	02c13023          	sd	a2,32(sp)
   1612c:	00813603          	ld	a2,8(sp)
   16130:	0001e6b7          	lui	a3,0x1e
   16134:	61868693          	addi	a3,a3,1560 # 1e618 <__mprec_tens>
   16138:	00361793          	slli	a5,a2,0x3
   1613c:	00f687b3          	add	a5,a3,a5
   16140:	0007b503          	ld	a0,0(a5)
   16144:	03813583          	ld	a1,56(sp)
   16148:	05413823          	sd	s4,80(sp)
   1614c:	230060ef          	jal	ra,1c37c <__gedf2>
   16150:	02013603          	ld	a2,32(sp)
   16154:	000a0713          	addi	a4,s4,0
   16158:	50a04263          	blt	zero,a0,1665c <__gdtoa+0x7c0>
   1615c:	00c04463          	blt	zero,a2,16164 <__gdtoa+0x2c8>
   16160:	7ad0006f          	jal	zero,1710c <__gdtoa+0x1270>
   16164:	00813683          	ld	a3,8(sp)
   16168:	06013823          	sd	zero,112(sp)
   1616c:	04013823          	sd	zero,80(sp)
   16170:	014687bb          	addw	a5,a3,s4
   16174:	04f13423          	sd	a5,72(sp)
   16178:	06d13423          	sd	a3,104(sp)
   1617c:	06013023          	sd	zero,96(sp)
   16180:	1480006f          	jal	zero,162c8 <__gdtoa+0x42c>
   16184:	00400793          	addi	a5,zero,4
   16188:	04f31663          	bne	t1,a5,161d4 <__gdtoa+0x338>
   1618c:	0f813b83          	ld	s7,248(sp)
   16190:	0e013d03          	ld	s10,224(sp)
   16194:	13813083          	ld	ra,312(sp)
   16198:	12013903          	ld	s2,288(sp)
   1619c:	ffff87b7          	lui	a5,0xffff8
   161a0:	000b0613          	addi	a2,s6,0
   161a4:	10013b03          	ld	s6,256(sp)
   161a8:	0001e5b7          	lui	a1,0x1e
   161ac:	00f8a023          	sw	a5,0(a7)
   161b0:	000e0693          	addi	a3,t3,0
   161b4:	2e058593          	addi	a1,a1,736 # 1e2e0 <__clzdi2+0xcc>
   161b8:	14010113          	addi	sp,sp,320
   161bc:	0410106f          	jal	zero,179fc <__nrv_alloc_D2A>
   161c0:	13013403          	ld	s0,304(sp)
   161c4:	11813983          	ld	s3,280(sp)
   161c8:	0f013c03          	ld	s8,240(sp)
   161cc:	0e813c83          	ld	s9,232(sp)
   161d0:	0d813d83          	ld	s11,216(sp)
   161d4:	00000793          	addi	a5,zero,0
   161d8:	13813083          	ld	ra,312(sp)
   161dc:	0f813b83          	ld	s7,248(sp)
   161e0:	0e013d03          	ld	s10,224(sp)
   161e4:	12013903          	ld	s2,288(sp)
   161e8:	10013b03          	ld	s6,256(sp)
   161ec:	00078513          	addi	a0,a5,0 # ffffffffffff8000 <__BSS_END__+0xfffffffffffd73b8>
   161f0:	14010113          	addi	sp,sp,320
   161f4:	00008067          	jalr	zero,0(ra)
   161f8:	00040593          	addi	a1,s0,0
   161fc:	000c0513          	addi	a0,s8,0
   16200:	549010ef          	jal	ra,17f48 <_Bfree>
   16204:	13013403          	ld	s0,304(sp)
   16208:	12813483          	ld	s1,296(sp)
   1620c:	11813983          	ld	s3,280(sp)
   16210:	0e813c83          	ld	s9,232(sp)
   16214:	01013783          	ld	a5,16(sp)
   16218:	00100693          	addi	a3,zero,1
   1621c:	0001e5b7          	lui	a1,0x1e
   16220:	000b0613          	addi	a2,s6,0
   16224:	000c0513          	addi	a0,s8,0
   16228:	00d7a023          	sw	a3,0(a5)
   1622c:	2c858593          	addi	a1,a1,712 # 1e2c8 <__clzdi2+0xb4>
   16230:	7cc010ef          	jal	ra,179fc <__nrv_alloc_D2A>
   16234:	13813083          	ld	ra,312(sp)
   16238:	00050793          	addi	a5,a0,0
   1623c:	0f013c03          	ld	s8,240(sp)
   16240:	0d813d83          	ld	s11,216(sp)
   16244:	0f813b83          	ld	s7,248(sp)
   16248:	0e013d03          	ld	s10,224(sp)
   1624c:	12013903          	ld	s2,288(sp)
   16250:	10013b03          	ld	s6,256(sp)
   16254:	00078513          	addi	a0,a5,0
   16258:	14010113          	addi	sp,sp,320
   1625c:	00008067          	jalr	zero,0(ra)
   16260:	13813083          	ld	ra,312(sp)
   16264:	12013903          	ld	s2,288(sp)
   16268:	ffff87b7          	lui	a5,0xffff8
   1626c:	000b0613          	addi	a2,s6,0
   16270:	10013b03          	ld	s6,256(sp)
   16274:	0001e5b7          	lui	a1,0x1e
   16278:	00f8a023          	sw	a5,0(a7)
   1627c:	2d058593          	addi	a1,a1,720 # 1e2d0 <__clzdi2+0xbc>
   16280:	00800693          	addi	a3,zero,8
   16284:	14010113          	addi	sp,sp,320
   16288:	7740106f          	jal	zero,179fc <__nrv_alloc_D2A>
   1628c:	00042a23          	sw	zero,20(s0)
   16290:	d41ff06f          	jal	zero,15fd0 <__gdtoa+0x134>
   16294:	00100793          	addi	a5,zero,1
   16298:	06f13823          	sd	a5,112(sp)
   1629c:	04013823          	sd	zero,80(sp)
   162a0:	3a074463          	blt	a4,zero,16648 <__gdtoa+0x7ac>
   162a4:	00813783          	ld	a5,8(sp)
   162a8:	3807d263          	bge	a5,zero,1662c <__gdtoa+0x790>
   162ac:	05013783          	ld	a5,80(sp)
   162b0:	00813703          	ld	a4,8(sp)
   162b4:	06013423          	sd	zero,104(sp)
   162b8:	40e787bb          	subw	a5,a5,a4
   162bc:	04f13823          	sd	a5,80(sp)
   162c0:	40e007bb          	subw	a5,zero,a4
   162c4:	06f13023          	sd	a5,96(sp)
   162c8:	00900793          	addi	a5,zero,9
   162cc:	4d97ee63          	bltu	a5,s9,167a8 <__gdtoa+0x90c>
   162d0:	00500713          	addi	a4,zero,5
   162d4:	01975ee3          	bge	a4,s9,16af0 <__gdtoa+0xc54>
   162d8:	ffcc8c9b          	addiw	s9,s9,-4
   162dc:	00400793          	addi	a5,zero,4
   162e0:	52fc8a63          	beq	s9,a5,16814 <__gdtoa+0x978>
   162e4:	52ec8ce3          	beq	s9,a4,1701c <__gdtoa+0x1180>
   162e8:	00200793          	addi	a5,zero,2
   162ec:	06013c23          	sd	zero,120(sp)
   162f0:	00000a13          	addi	s4,zero,0
   162f4:	52fc8663          	beq	s9,a5,16820 <__gdtoa+0x984>
   162f8:	00300c93          	addi	s9,zero,3
   162fc:	00813703          	ld	a4,8(sp)
   16300:	00ed07bb          	addw	a5,s10,a4
   16304:	04f13c23          	sd	a5,88(sp)
   16308:	0017879b          	addiw	a5,a5,1 # ffffffffffff8001 <__BSS_END__+0xfffffffffffd73b9>
   1630c:	02f13023          	sd	a5,32(sp)
   16310:	36f05063          	bge	zero,a5,16670 <__gdtoa+0x7d4>
   16314:	00078593          	addi	a1,a5,0
   16318:	000c0513          	addi	a0,s8,0
   1631c:	0cf12623          	sw	a5,204(sp)
   16320:	670010ef          	jal	ra,17990 <__rv_alloc_D2A>
   16324:	00050793          	addi	a5,a0,0
   16328:	7a050263          	beq	a0,zero,16acc <__gdtoa+0xc30>
   1632c:	03013703          	ld	a4,48(sp)
   16330:	00c72703          	lw	a4,12(a4)
   16334:	fff7071b          	addiw	a4,a4,-1
   16338:	00070e63          	beq	a4,zero,16354 <__gdtoa+0x4b8>
   1633c:	00075463          	bge	a4,zero,16344 <__gdtoa+0x4a8>
   16340:	00200713          	addi	a4,zero,2
   16344:	10097913          	andi	s2,s2,256
   16348:	3c090263          	beq	s2,zero,1670c <__gdtoa+0x870>
   1634c:	00300693          	addi	a3,zero,3
   16350:	40e6873b          	subw	a4,a3,a4
   16354:	02013683          	ld	a3,32(sp)
   16358:	00f6b693          	sltiu	a3,a3,15
   1635c:	3a068863          	beq	a3,zero,1670c <__gdtoa+0x870>
   16360:	3a0a0663          	beq	s4,zero,1670c <__gdtoa+0x870>
   16364:	00813683          	ld	a3,8(sp)
   16368:	00d766b3          	or	a3,a4,a3
   1636c:	3a069063          	bne	a3,zero,1670c <__gdtoa+0x870>
   16370:	03813903          	ld	s2,56(sp)
   16374:	07013703          	ld	a4,112(sp)
   16378:	0c012623          	sw	zero,204(sp)
   1637c:	09213023          	sd	s2,128(sp)
   16380:	00070e63          	beq	a4,zero,1639c <__gdtoa+0x500>
   16384:	1e01b583          	ld	a1,480(gp) # 20628 <__SDATA_BEGIN__+0x30>
   16388:	00090513          	addi	a0,s2,0
   1638c:	08f13423          	sd	a5,136(sp)
   16390:	09c060ef          	jal	ra,1c42c <__ledf2>
   16394:	08813783          	ld	a5,136(sp)
   16398:	2e054063          	blt	a0,zero,16678 <__gdtoa+0x7dc>
   1639c:	08013583          	ld	a1,128(sp)
   163a0:	08f13423          	sd	a5,136(sp)
   163a4:	00058513          	addi	a0,a1,0
   163a8:	778050ef          	jal	ra,1bb20 <__adddf3>
   163ac:	1e81b583          	ld	a1,488(gp) # 20630 <__SDATA_BEGIN__+0x38>
   163b0:	770050ef          	jal	ra,1bb20 <__adddf3>
   163b4:	fcc006b7          	lui	a3,0xfcc00
   163b8:	02055713          	srli	a4,a0,0x20
   163bc:	02051613          	slli	a2,a0,0x20
   163c0:	00d7073b          	addw	a4,a4,a3
   163c4:	02071713          	slli	a4,a4,0x20
   163c8:	02065613          	srli	a2,a2,0x20
   163cc:	00e66633          	or	a2,a2,a4
   163d0:	02013703          	ld	a4,32(sp)
   163d4:	08813783          	ld	a5,136(sp)
   163d8:	2c070e63          	beq	a4,zero,166b4 <__gdtoa+0x818>
   163dc:	08013703          	ld	a4,128(sp)
   163e0:	08013c23          	sd	zero,152(sp)
   163e4:	08e13823          	sd	a4,144(sp)
   163e8:	02013703          	ld	a4,32(sp)
   163ec:	08e13423          	sd	a4,136(sp)
   163f0:	08813703          	ld	a4,136(sp)
   163f4:	0001e6b7          	lui	a3,0x1e
   163f8:	61868693          	addi	a3,a3,1560 # 1e618 <__mprec_tens>
   163fc:	fff7071b          	addiw	a4,a4,-1
   16400:	00371713          	slli	a4,a4,0x3
   16404:	00e68733          	add	a4,a3,a4
   16408:	00073583          	ld	a1,0(a4)
   1640c:	07813703          	ld	a4,120(sp)
   16410:	0ad13423          	sd	a3,168(sp)
   16414:	70070663          	beq	a4,zero,16b20 <__gdtoa+0xc84>
   16418:	09013a03          	ld	s4,144(sp)
   1641c:	00178913          	addi	s2,a5,1
   16420:	08f13823          	sd	a5,144(sp)
   16424:	000a0513          	addi	a0,s4,0
   16428:	0ac13023          	sd	a2,160(sp)
   1642c:	08b13023          	sd	a1,128(sp)
   16430:	075060ef          	jal	ra,1cca4 <__fixdfsi>
   16434:	00050a9b          	addiw	s5,a0,0
   16438:	08013583          	ld	a1,128(sp)
   1643c:	2081b503          	ld	a0,520(gp) # 20650 <__SDATA_BEGIN__+0x58>
   16440:	09512023          	sw	s5,128(sp)
   16444:	325050ef          	jal	ra,1bf68 <__divdf3>
   16448:	0a013583          	ld	a1,160(sp)
   1644c:	400060ef          	jal	ra,1c84c <__subdf3>
   16450:	00050613          	addi	a2,a0,0
   16454:	000a8513          	addi	a0,s5,0
   16458:	00060a93          	addi	s5,a2,0
   1645c:	0ad060ef          	jal	ra,1cd08 <__floatsidf>
   16460:	00050593          	addi	a1,a0,0
   16464:	000a0513          	addi	a0,s4,0
   16468:	3e4060ef          	jal	ra,1c84c <__subdf3>
   1646c:	00050a13          	addi	s4,a0,0
   16470:	08012703          	lw	a4,128(sp)
   16474:	09013783          	ld	a5,144(sp)
   16478:	000a8513          	addi	a0,s5,0
   1647c:	000a0593          	addi	a1,s4,0
   16480:	0307071b          	addiw	a4,a4,48
   16484:	00e78023          	sb	a4,0(a5)
   16488:	08f13023          	sd	a5,128(sp)
   1648c:	0b413823          	sd	s4,176(sp)
   16490:	6ed050ef          	jal	ra,1c37c <__gedf2>
   16494:	08013783          	ld	a5,128(sp)
   16498:	00a05463          	bge	zero,a0,164a0 <__gdtoa+0x604>
   1649c:	0e40106f          	jal	zero,17580 <__gdtoa+0x16e4>
   164a0:	1e01b703          	ld	a4,480(gp) # 20628 <__SDATA_BEGIN__+0x30>
   164a4:	0a813023          	sd	s0,160(sp)
   164a8:	08e13823          	sd	a4,144(sp)
   164ac:	1f01b703          	ld	a4,496(gp) # 20638 <__SDATA_BEGIN__+0x40>
   164b0:	0b313823          	sd	s3,176(sp)
   164b4:	0a913c23          	sd	s1,184(sp)
   164b8:	000a0993          	addi	s3,s4,0
   164bc:	000a8493          	addi	s1,s5,0
   164c0:	08e13023          	sd	a4,128(sp)
   164c4:	0a813a83          	ld	s5,168(sp)
   164c8:	00090413          	addi	s0,s2,0
   164cc:	00078a13          	addi	s4,a5,0
   164d0:	0700006f          	jal	zero,16540 <__gdtoa+0x6a4>
   164d4:	0cc12783          	lw	a5,204(sp)
   164d8:	08813703          	ld	a4,136(sp)
   164dc:	0017879b          	addiw	a5,a5,1
   164e0:	0cf12623          	sw	a5,204(sp)
   164e4:	00e7c463          	blt	a5,a4,164ec <__gdtoa+0x650>
   164e8:	13c0106f          	jal	zero,17624 <__gdtoa+0x1788>
   164ec:	7f1050ef          	jal	ra,1c4dc <__muldf3>
   164f0:	08013583          	ld	a1,128(sp)
   164f4:	00050493          	addi	s1,a0,0
   164f8:	00098513          	addi	a0,s3,0
   164fc:	00140413          	addi	s0,s0,1
   16500:	7dd050ef          	jal	ra,1c4dc <__muldf3>
   16504:	00050993          	addi	s3,a0,0
   16508:	79c060ef          	jal	ra,1cca4 <__fixdfsi>
   1650c:	00050913          	addi	s2,a0,0
   16510:	0005051b          	addiw	a0,a0,0
   16514:	7f4060ef          	jal	ra,1cd08 <__floatsidf>
   16518:	00050593          	addi	a1,a0,0
   1651c:	00098513          	addi	a0,s3,0
   16520:	0309091b          	addiw	s2,s2,48
   16524:	328060ef          	jal	ra,1c84c <__subdf3>
   16528:	00048593          	addi	a1,s1,0
   1652c:	ff240fa3          	sb	s2,-1(s0)
   16530:	00050993          	addi	s3,a0,0
   16534:	6f9050ef          	jal	ra,1c42c <__ledf2>
   16538:	00055463          	bge	a0,zero,16540 <__gdtoa+0x6a4>
   1653c:	0340106f          	jal	zero,17570 <__gdtoa+0x16d4>
   16540:	00098593          	addi	a1,s3,0
   16544:	09013503          	ld	a0,144(sp)
   16548:	304060ef          	jal	ra,1c84c <__subdf3>
   1654c:	00048593          	addi	a1,s1,0
   16550:	6dd050ef          	jal	ra,1c42c <__ledf2>
   16554:	00050793          	addi	a5,a0,0
   16558:	08013583          	ld	a1,128(sp)
   1655c:	00048513          	addi	a0,s1,0
   16560:	f607dae3          	bge	a5,zero,164d4 <__gdtoa+0x638>
   16564:	00040913          	addi	s2,s0,0
   16568:	fff94603          	lbu	a2,-1(s2)
   1656c:	0a013403          	ld	s0,160(sp)
   16570:	000a0793          	addi	a5,s4,0
   16574:	03900693          	addi	a3,zero,57
   16578:	0140006f          	jal	zero,1658c <__gdtoa+0x6f0>
   1657c:	00e79463          	bne	a5,a4,16584 <__gdtoa+0x6e8>
   16580:	6c50006f          	jal	zero,17444 <__gdtoa+0x15a8>
   16584:	fff74603          	lbu	a2,-1(a4)
   16588:	00070913          	addi	s2,a4,0
   1658c:	fff90713          	addi	a4,s2,-1
   16590:	fed606e3          	beq	a2,a3,1657c <__gdtoa+0x6e0>
   16594:	00160993          	addi	s3,a2,1
   16598:	01370023          	sb	s3,0(a4)
   1659c:	09813703          	ld	a4,152(sp)
   165a0:	02000b93          	addi	s7,zero,32
   165a4:	00170c9b          	addiw	s9,a4,1
   165a8:	00040593          	addi	a1,s0,0
   165ac:	000c0513          	addi	a0,s8,0
   165b0:	00f13423          	sd	a5,8(sp)
   165b4:	195010ef          	jal	ra,17f48 <_Bfree>
   165b8:	01013783          	ld	a5,16(sp)
   165bc:	00090023          	sb	zero,0(s2)
   165c0:	0197a023          	sw	s9,0(a5)
   165c4:	00813783          	ld	a5,8(sp)
   165c8:	000b0463          	beq	s6,zero,165d0 <__gdtoa+0x734>
   165cc:	012b3023          	sd	s2,0(s6)
   165d0:	02813703          	ld	a4,40(sp)
   165d4:	02813683          	ld	a3,40(sp)
   165d8:	13013403          	ld	s0,304(sp)
   165dc:	00072703          	lw	a4,0(a4)
   165e0:	12813483          	ld	s1,296(sp)
   165e4:	11813983          	ld	s3,280(sp)
   165e8:	00ebe733          	or	a4,s7,a4
   165ec:	11013a03          	ld	s4,272(sp)
   165f0:	10813a83          	ld	s5,264(sp)
   165f4:	0f013c03          	ld	s8,240(sp)
   165f8:	0e813c83          	ld	s9,232(sp)
   165fc:	0d813d83          	ld	s11,216(sp)
   16600:	00e6a023          	sw	a4,0(a3)
   16604:	bd5ff06f          	jal	zero,161d8 <__gdtoa+0x33c>
   16608:	00050593          	addi	a1,a0,0
   1660c:	00040513          	addi	a0,s0,0
   16610:	734010ef          	jal	ra,17d44 <__rshift_D2A>
   16614:	0cc12783          	lw	a5,204(sp)
   16618:	01813703          	ld	a4,24(sp)
   1661c:	40f484bb          	subw	s1,s1,a5
   16620:	00e787bb          	addw	a5,a5,a4
   16624:	04f13023          	sd	a5,64(sp)
   16628:	9c1ff06f          	jal	zero,15fe8 <__gdtoa+0x14c>
   1662c:	04813703          	ld	a4,72(sp)
   16630:	06013023          	sd	zero,96(sp)
   16634:	00e787bb          	addw	a5,a5,a4
   16638:	04f13423          	sd	a5,72(sp)
   1663c:	00813783          	ld	a5,8(sp)
   16640:	06f13423          	sd	a5,104(sp)
   16644:	c85ff06f          	jal	zero,162c8 <__gdtoa+0x42c>
   16648:	00100793          	addi	a5,zero,1
   1664c:	40c787bb          	subw	a5,a5,a2
   16650:	04f13823          	sd	a5,80(sp)
   16654:	04013423          	sd	zero,72(sp)
   16658:	c4dff06f          	jal	zero,162a4 <__gdtoa+0x408>
   1665c:	00813783          	ld	a5,8(sp)
   16660:	06013823          	sd	zero,112(sp)
   16664:	fff7879b          	addiw	a5,a5,-1
   16668:	00f13423          	sd	a5,8(sp)
   1666c:	c31ff06f          	jal	zero,1629c <__gdtoa+0x400>
   16670:	00100793          	addi	a5,zero,1
   16674:	ca1ff06f          	jal	zero,16314 <__gdtoa+0x478>
   16678:	02013703          	ld	a4,32(sp)
   1667c:	68071ae3          	bne	a4,zero,17510 <__gdtoa+0x1674>
   16680:	00090593          	addi	a1,s2,0
   16684:	00090513          	addi	a0,s2,0
   16688:	498050ef          	jal	ra,1bb20 <__adddf3>
   1668c:	1e81b583          	ld	a1,488(gp) # 20630 <__SDATA_BEGIN__+0x38>
   16690:	490050ef          	jal	ra,1bb20 <__adddf3>
   16694:	fcc006b7          	lui	a3,0xfcc00
   16698:	02055713          	srli	a4,a0,0x20
   1669c:	02051613          	slli	a2,a0,0x20
   166a0:	00d7073b          	addw	a4,a4,a3
   166a4:	08813783          	ld	a5,136(sp)
   166a8:	02065613          	srli	a2,a2,0x20
   166ac:	02071713          	slli	a4,a4,0x20
   166b0:	00e66633          	or	a2,a2,a4
   166b4:	2001b583          	ld	a1,512(gp) # 20648 <__SDATA_BEGIN__+0x50>
   166b8:	08013503          	ld	a0,128(sp)
   166bc:	08f13823          	sd	a5,144(sp)
   166c0:	08c13423          	sd	a2,136(sp)
   166c4:	188060ef          	jal	ra,1c84c <__subdf3>
   166c8:	08813603          	ld	a2,136(sp)
   166cc:	00050913          	addi	s2,a0,0
   166d0:	00060593          	addi	a1,a2,0
   166d4:	08c13023          	sd	a2,128(sp)
   166d8:	4a5050ef          	jal	ra,1c37c <__gedf2>
   166dc:	09013783          	ld	a5,144(sp)
   166e0:	52a04ce3          	blt	zero,a0,17418 <__gdtoa+0x157c>
   166e4:	08013603          	ld	a2,128(sp)
   166e8:	00090513          	addi	a0,s2,0
   166ec:	fff00593          	addi	a1,zero,-1
   166f0:	03f59593          	slli	a1,a1,0x3f
   166f4:	00b645b3          	xor	a1,a2,a1
   166f8:	08f13423          	sd	a5,136(sp)
   166fc:	531050ef          	jal	ra,1c42c <__ledf2>
   16700:	08813783          	ld	a5,136(sp)
   16704:	0a0546e3          	blt	a0,zero,16fb0 <__gdtoa+0x1114>
   16708:	00000713          	addi	a4,zero,0
   1670c:	04013683          	ld	a3,64(sp)
   16710:	fff6c693          	xori	a3,a3,-1
   16714:	01f6d69b          	srliw	a3,a3,0x1f
   16718:	12068463          	beq	a3,zero,16840 <__gdtoa+0x9a4>
   1671c:	00813683          	ld	a3,8(sp)
   16720:	00f6a693          	slti	a3,a3,15
   16724:	10068e63          	beq	a3,zero,16840 <__gdtoa+0x9a4>
   16728:	0001e6b7          	lui	a3,0x1e
   1672c:	61868693          	addi	a3,a3,1560 # 1e618 <__mprec_tens>
   16730:	00813603          	ld	a2,8(sp)
   16734:	00361613          	slli	a2,a2,0x3
   16738:	00c68633          	add	a2,a3,a2
   1673c:	00063603          	ld	a2,0(a2)
   16740:	01fd569b          	srliw	a3,s10,0x1f
   16744:	00060a13          	addi	s4,a2,0
   16748:	52068463          	beq	a3,zero,16c70 <__gdtoa+0xdd4>
   1674c:	02013683          	ld	a3,32(sp)
   16750:	52d04063          	blt	zero,a3,16c70 <__gdtoa+0xdd4>
   16754:	04069ee3          	bne	a3,zero,16fb0 <__gdtoa+0x1114>
   16758:	2001b583          	ld	a1,512(gp) # 20648 <__SDATA_BEGIN__+0x50>
   1675c:	00060513          	addi	a0,a2,0
   16760:	00f13c23          	sd	a5,24(sp)
   16764:	579050ef          	jal	ra,1c4dc <__muldf3>
   16768:	03813583          	ld	a1,56(sp)
   1676c:	411050ef          	jal	ra,1c37c <__gedf2>
   16770:	01813783          	ld	a5,24(sp)
   16774:	02055ee3          	bge	a0,zero,16fb0 <__gdtoa+0x1114>
   16778:	03100713          	addi	a4,zero,49
   1677c:	00e78023          	sb	a4,0(a5)
   16780:	00000593          	addi	a1,zero,0
   16784:	000c0513          	addi	a0,s8,0
   16788:	00178913          	addi	s2,a5,1
   1678c:	00f13c23          	sd	a5,24(sp)
   16790:	7b8010ef          	jal	ra,17f48 <_Bfree>
   16794:	00813783          	ld	a5,8(sp)
   16798:	02000b93          	addi	s7,zero,32
   1679c:	00278c9b          	addiw	s9,a5,2
   167a0:	01813783          	ld	a5,24(sp)
   167a4:	e05ff06f          	jal	zero,165a8 <__gdtoa+0x70c>
   167a8:	05813783          	ld	a5,88(sp)
   167ac:	00000c93          	addi	s9,zero,0
   167b0:	3fd7879b          	addiw	a5,a5,1021
   167b4:	7f87ba13          	sltiu	s4,a5,2040
   167b8:	00098513          	addi	a0,s3,0
   167bc:	54c060ef          	jal	ra,1cd08 <__floatsidf>
   167c0:	1d81b583          	ld	a1,472(gp) # 20620 <__SDATA_BEGIN__+0x28>
   167c4:	00000d13          	addi	s10,zero,0
   167c8:	515050ef          	jal	ra,1c4dc <__muldf3>
   167cc:	4d8060ef          	jal	ra,1cca4 <__fixdfsi>
   167d0:	fff00713          	addi	a4,zero,-1
   167d4:	fff00793          	addi	a5,zero,-1
   167d8:	0035059b          	addiw	a1,a0,3
   167dc:	02e13023          	sd	a4,32(sp)
   167e0:	00100713          	addi	a4,zero,1
   167e4:	04f13c23          	sd	a5,88(sp)
   167e8:	06e13c23          	sd	a4,120(sp)
   167ec:	00058793          	addi	a5,a1,0
   167f0:	b29ff06f          	jal	zero,16318 <__gdtoa+0x47c>
   167f4:	000a851b          	addiw	a0,s5,0
   167f8:	510060ef          	jal	ra,1cd08 <__floatsidf>
   167fc:	000a0593          	addi	a1,s4,0
   16800:	301050ef          	jal	ra,1c300 <__eqdf2>
   16804:	8e0500e3          	beq	a0,zero,160e4 <__gdtoa+0x248>
   16808:	fffa879b          	addiw	a5,s5,-1
   1680c:	00f13423          	sd	a5,8(sp)
   16810:	8d5ff06f          	jal	zero,160e4 <__gdtoa+0x248>
   16814:	00100793          	addi	a5,zero,1
   16818:	00000a13          	addi	s4,zero,0
   1681c:	06f13c23          	sd	a5,120(sp)
   16820:	000d059b          	addiw	a1,s10,0
   16824:	01a04463          	blt	zero,s10,1682c <__gdtoa+0x990>
   16828:	00100593          	addi	a1,zero,1
   1682c:	00058793          	addi	a5,a1,0
   16830:	04b13c23          	sd	a1,88(sp)
   16834:	02b13023          	sd	a1,32(sp)
   16838:	00058d13          	addi	s10,a1,0
   1683c:	addff06f          	jal	zero,16318 <__gdtoa+0x47c>
   16840:	07813683          	ld	a3,120(sp)
   16844:	3c068e63          	beq	a3,zero,16c20 <__gdtoa+0xd84>
   16848:	03013683          	ld	a3,48(sp)
   1684c:	04013583          	ld	a1,64(sp)
   16850:	409989bb          	subw	s3,s3,s1
   16854:	0046a603          	lw	a2,4(a3)
   16858:	0019869b          	addiw	a3,s3,1
   1685c:	0cd12623          	sw	a3,204(sp)
   16860:	413589bb          	subw	s3,a1,s3
   16864:	7cc9d663          	bge	s3,a2,17030 <__gdtoa+0x1194>
   16868:	ffdc869b          	addiw	a3,s9,-3
   1686c:	ffd6f693          	andi	a3,a3,-3
   16870:	7c068463          	beq	a3,zero,17038 <__gdtoa+0x119c>
   16874:	40c586bb          	subw	a3,a1,a2
   16878:	02013583          	ld	a1,32(sp)
   1687c:	00100613          	addi	a2,zero,1
   16880:	0016869b          	addiw	a3,a3,1
   16884:	01962633          	slt	a2,a2,s9
   16888:	00b025b3          	slt	a1,zero,a1
   1688c:	0cd12623          	sw	a3,204(sp)
   16890:	00b67633          	and	a2,a2,a1
   16894:	00060863          	beq	a2,zero,168a4 <__gdtoa+0xa08>
   16898:	02013603          	ld	a2,32(sp)
   1689c:	00d65463          	bge	a2,a3,168a4 <__gdtoa+0xa08>
   168a0:	7a50006f          	jal	zero,17844 <__gdtoa+0x19a8>
   168a4:	04813603          	ld	a2,72(sp)
   168a8:	06013a03          	ld	s4,96(sp)
   168ac:	00c6863b          	addw	a2,a3,a2
   168b0:	04c13423          	sd	a2,72(sp)
   168b4:	05013603          	ld	a2,80(sp)
   168b8:	00c6893b          	addw	s2,a3,a2
   168bc:	00100593          	addi	a1,zero,1
   168c0:	000c0513          	addi	a0,s8,0
   168c4:	04f13023          	sd	a5,64(sp)
   168c8:	02e13c23          	sd	a4,56(sp)
   168cc:	311010ef          	jal	ra,183dc <__i2b>
   168d0:	00050993          	addi	s3,a0,0
   168d4:	1e050c63          	beq	a0,zero,16acc <__gdtoa+0xc30>
   168d8:	05013683          	ld	a3,80(sp)
   168dc:	03813703          	ld	a4,56(sp)
   168e0:	04013783          	ld	a5,64(sp)
   168e4:	04068063          	beq	a3,zero,16924 <__gdtoa+0xa88>
   168e8:	04813683          	ld	a3,72(sp)
   168ec:	02d05c63          	bge	zero,a3,16924 <__gdtoa+0xa88>
   168f0:	05013603          	ld	a2,80(sp)
   168f4:	04813583          	ld	a1,72(sp)
   168f8:	00060693          	addi	a3,a2,0
   168fc:	00c5d463          	bge	a1,a2,16904 <__gdtoa+0xa68>
   16900:	04812683          	lw	a3,72(sp)
   16904:	05013603          	ld	a2,80(sp)
   16908:	0cd12623          	sw	a3,204(sp)
   1690c:	40d9093b          	subw	s2,s2,a3
   16910:	40d6063b          	subw	a2,a2,a3
   16914:	04c13823          	sd	a2,80(sp)
   16918:	04813603          	ld	a2,72(sp)
   1691c:	40d606bb          	subw	a3,a2,a3
   16920:	04d13423          	sd	a3,72(sp)
   16924:	06013683          	ld	a3,96(sp)
   16928:	02068863          	beq	a3,zero,16958 <__gdtoa+0xabc>
   1692c:	200a14e3          	bne	s4,zero,17334 <__gdtoa+0x1498>
   16930:	06013603          	ld	a2,96(sp)
   16934:	00040593          	addi	a1,s0,0
   16938:	000c0513          	addi	a0,s8,0
   1693c:	04f13023          	sd	a5,64(sp)
   16940:	02e13c23          	sd	a4,56(sp)
   16944:	64d010ef          	jal	ra,18790 <__pow5mult>
   16948:	03813703          	ld	a4,56(sp)
   1694c:	04013783          	ld	a5,64(sp)
   16950:	00050413          	addi	s0,a0,0
   16954:	16050c63          	beq	a0,zero,16acc <__gdtoa+0xc30>
   16958:	00100593          	addi	a1,zero,1
   1695c:	000c0513          	addi	a0,s8,0
   16960:	04f13023          	sd	a5,64(sp)
   16964:	02e13c23          	sd	a4,56(sp)
   16968:	275010ef          	jal	ra,183dc <__i2b>
   1696c:	00050893          	addi	a7,a0,0
   16970:	14050e63          	beq	a0,zero,16acc <__gdtoa+0xc30>
   16974:	06813683          	ld	a3,104(sp)
   16978:	03813703          	ld	a4,56(sp)
   1697c:	04013783          	ld	a5,64(sp)
   16980:	6e069a63          	bne	a3,zero,17074 <__gdtoa+0x11d8>
   16984:	002ca693          	slti	a3,s9,2
   16988:	00068663          	beq	a3,zero,16994 <__gdtoa+0xaf8>
   1698c:	fff48493          	addi	s1,s1,-1
   16990:	0e048463          	beq	s1,zero,16a78 <__gdtoa+0xbdc>
   16994:	01f00513          	addi	a0,zero,31
   16998:	04813683          	ld	a3,72(sp)
   1699c:	40d504bb          	subw	s1,a0,a3
   169a0:	ffc4849b          	addiw	s1,s1,-4
   169a4:	01f4f493          	andi	s1,s1,31
   169a8:	0c912623          	sw	s1,204(sp)
   169ac:	0124863b          	addw	a2,s1,s2
   169b0:	00048693          	addi	a3,s1,0
   169b4:	62c04a63          	blt	zero,a2,16fe8 <__gdtoa+0x114c>
   169b8:	04813603          	ld	a2,72(sp)
   169bc:	00d6063b          	addw	a2,a2,a3
   169c0:	0ec04463          	blt	zero,a2,16aa8 <__gdtoa+0xc0c>
   169c4:	07013683          	ld	a3,112(sp)
   169c8:	7a069463          	bne	a3,zero,17170 <__gdtoa+0x12d4>
   169cc:	02013683          	ld	a3,32(sp)
   169d0:	3cd04863          	blt	zero,a3,16da0 <__gdtoa+0xf04>
   169d4:	00200693          	addi	a3,zero,2
   169d8:	3d96d463          	bge	a3,s9,16da0 <__gdtoa+0xf04>
   169dc:	00088593          	addi	a1,a7,0
   169e0:	00000693          	addi	a3,zero,0
   169e4:	00500613          	addi	a2,zero,5
   169e8:	000c0513          	addi	a0,s8,0
   169ec:	00f13c23          	sd	a5,24(sp)
   169f0:	57c010ef          	jal	ra,17f6c <__multadd>
   169f4:	00050593          	addi	a1,a0,0
   169f8:	0c050a63          	beq	a0,zero,16acc <__gdtoa+0xc30>
   169fc:	02013703          	ld	a4,32(sp)
   16a00:	01813783          	ld	a5,24(sp)
   16a04:	0c0714e3          	bne	a4,zero,172cc <__gdtoa+0x1430>
   16a08:	00a13c23          	sd	a0,24(sp)
   16a0c:	00040513          	addi	a0,s0,0
   16a10:	02f13023          	sd	a5,32(sp)
   16a14:	078020ef          	jal	ra,18a8c <__mcmp>
   16a18:	01813583          	ld	a1,24(sp)
   16a1c:	02013783          	ld	a5,32(sp)
   16a20:	0aa056e3          	bge	zero,a0,172cc <__gdtoa+0x1430>
   16a24:	03100713          	addi	a4,zero,49
   16a28:	00e78023          	sb	a4,0(a5)
   16a2c:	00813703          	ld	a4,8(sp)
   16a30:	00178913          	addi	s2,a5,1
   16a34:	02000b93          	addi	s7,zero,32
   16a38:	0017071b          	addiw	a4,a4,1
   16a3c:	00e13423          	sd	a4,8(sp)
   16a40:	000c0513          	addi	a0,s8,0
   16a44:	00f13c23          	sd	a5,24(sp)
   16a48:	500010ef          	jal	ra,17f48 <_Bfree>
   16a4c:	01813783          	ld	a5,24(sp)
   16a50:	00099463          	bne	s3,zero,16a58 <__gdtoa+0xbbc>
   16a54:	70d0006f          	jal	zero,17960 <__gdtoa+0x1ac4>
   16a58:	00098593          	addi	a1,s3,0
   16a5c:	000c0513          	addi	a0,s8,0
   16a60:	00f13c23          	sd	a5,24(sp)
   16a64:	4e4010ef          	jal	ra,17f48 <_Bfree>
   16a68:	00813783          	ld	a5,8(sp)
   16a6c:	00178c9b          	addiw	s9,a5,1
   16a70:	01813783          	ld	a5,24(sp)
   16a74:	b35ff06f          	jal	zero,165a8 <__gdtoa+0x70c>
   16a78:	03013683          	ld	a3,48(sp)
   16a7c:	01813603          	ld	a2,24(sp)
   16a80:	0046a683          	lw	a3,4(a3)
   16a84:	0016869b          	addiw	a3,a3,1
   16a88:	f0c6d6e3          	bge	a3,a2,16994 <__gdtoa+0xaf8>
   16a8c:	04813683          	ld	a3,72(sp)
   16a90:	0019091b          	addiw	s2,s2,1
   16a94:	0016869b          	addiw	a3,a3,1
   16a98:	04d13423          	sd	a3,72(sp)
   16a9c:	00100693          	addi	a3,zero,1
   16aa0:	06d13423          	sd	a3,104(sp)
   16aa4:	ef1ff06f          	jal	zero,16994 <__gdtoa+0xaf8>
   16aa8:	00088593          	addi	a1,a7,0
   16aac:	000c0513          	addi	a0,s8,0
   16ab0:	02f13823          	sd	a5,48(sp)
   16ab4:	00e13c23          	sd	a4,24(sp)
   16ab8:	645010ef          	jal	ra,188fc <__lshift>
   16abc:	01813703          	ld	a4,24(sp)
   16ac0:	03013783          	ld	a5,48(sp)
   16ac4:	00050893          	addi	a7,a0,0
   16ac8:	ee051ee3          	bne	a0,zero,169c4 <__gdtoa+0xb28>
   16acc:	13013403          	ld	s0,304(sp)
   16ad0:	12813483          	ld	s1,296(sp)
   16ad4:	11813983          	ld	s3,280(sp)
   16ad8:	11013a03          	ld	s4,272(sp)
   16adc:	10813a83          	ld	s5,264(sp)
   16ae0:	0f013c03          	ld	s8,240(sp)
   16ae4:	0e813c83          	ld	s9,232(sp)
   16ae8:	0d813d83          	ld	s11,216(sp)
   16aec:	ee8ff06f          	jal	zero,161d4 <__gdtoa+0x338>
   16af0:	05813783          	ld	a5,88(sp)
   16af4:	00400693          	addi	a3,zero,4
   16af8:	3fd7879b          	addiw	a5,a5,1021
   16afc:	7f87ba13          	sltiu	s4,a5,2040
   16b00:	7edc8463          	beq	s9,a3,172e8 <__gdtoa+0x144c>
   16b04:	50ec8e63          	beq	s9,a4,17020 <__gdtoa+0x1184>
   16b08:	00200793          	addi	a5,zero,2
   16b0c:	7cfc8a63          	beq	s9,a5,172e0 <__gdtoa+0x1444>
   16b10:	00300793          	addi	a5,zero,3
   16b14:	06013c23          	sd	zero,120(sp)
   16b18:	fefc8263          	beq	s9,a5,162fc <__gdtoa+0x460>
   16b1c:	c9dff06f          	jal	zero,167b8 <__gdtoa+0x91c>
   16b20:	00060513          	addi	a0,a2,0
   16b24:	02f13c23          	sd	a5,56(sp)
   16b28:	00100993          	addi	s3,zero,1
   16b2c:	1b1050ef          	jal	ra,1c4dc <__muldf3>
   16b30:	03813783          	ld	a5,56(sp)
   16b34:	02813c23          	sd	s0,56(sp)
   16b38:	0a913023          	sd	s1,160(sp)
   16b3c:	00050a93          	addi	s5,a0,0
   16b40:	08813483          	ld	s1,136(sp)
   16b44:	1f01ba03          	ld	s4,496(gp) # 20638 <__SDATA_BEGIN__+0x40>
   16b48:	09013403          	ld	s0,144(sp)
   16b4c:	00078913          	addi	s2,a5,0
   16b50:	08f13423          	sd	a5,136(sp)
   16b54:	00c0006f          	jal	zero,16b60 <__gdtoa+0xcc4>
   16b58:	185050ef          	jal	ra,1c4dc <__muldf3>
   16b5c:	00050413          	addi	s0,a0,0
   16b60:	00040513          	addi	a0,s0,0
   16b64:	0d312623          	sw	s3,204(sp)
   16b68:	13c060ef          	jal	ra,1cca4 <__fixdfsi>
   16b6c:	00050993          	addi	s3,a0,0
   16b70:	0005051b          	addiw	a0,a0,0
   16b74:	00050c63          	beq	a0,zero,16b8c <__gdtoa+0xcf0>
   16b78:	190060ef          	jal	ra,1cd08 <__floatsidf>
   16b7c:	00050593          	addi	a1,a0,0
   16b80:	00040513          	addi	a0,s0,0
   16b84:	4c9050ef          	jal	ra,1c84c <__subdf3>
   16b88:	00050413          	addi	s0,a0,0
   16b8c:	0309899b          	addiw	s3,s3,48
   16b90:	0ff9f613          	andi	a2,s3,255
   16b94:	00c90023          	sb	a2,0(s2)
   16b98:	0cc12783          	lw	a5,204(sp)
   16b9c:	00190913          	addi	s2,s2,1
   16ba0:	000a0593          	addi	a1,s4,0
   16ba4:	00040513          	addi	a0,s0,0
   16ba8:	0017899b          	addiw	s3,a5,1
   16bac:	fa9796e3          	bne	a5,s1,16b58 <__gdtoa+0xcbc>
   16bb0:	08813783          	ld	a5,136(sp)
   16bb4:	0a813683          	ld	a3,168(sp)
   16bb8:	2081b583          	ld	a1,520(gp) # 20650 <__SDATA_BEGIN__+0x58>
   16bbc:	000a8513          	addi	a0,s5,0
   16bc0:	00040a13          	addi	s4,s0,0
   16bc4:	08813823          	sd	s0,144(sp)
   16bc8:	08d13423          	sd	a3,136(sp)
   16bcc:	0a013483          	ld	s1,160(sp)
   16bd0:	03813403          	ld	s0,56(sp)
   16bd4:	0ac13023          	sd	a2,160(sp)
   16bd8:	02f13c23          	sd	a5,56(sp)
   16bdc:	745040ef          	jal	ra,1bb20 <__adddf3>
   16be0:	000a0593          	addi	a1,s4,0
   16be4:	049050ef          	jal	ra,1c42c <__ledf2>
   16be8:	03813783          	ld	a5,56(sp)
   16bec:	0a013603          	ld	a2,160(sp)
   16bf0:	980542e3          	blt	a0,zero,16574 <__gdtoa+0x6d8>
   16bf4:	000a8593          	addi	a1,s5,0
   16bf8:	2081b503          	ld	a0,520(gp) # 20650 <__SDATA_BEGIN__+0x58>
   16bfc:	451050ef          	jal	ra,1c84c <__subdf3>
   16c00:	000a0593          	addi	a1,s4,0
   16c04:	778050ef          	jal	ra,1c37c <__gedf2>
   16c08:	03813783          	ld	a5,56(sp)
   16c0c:	08813683          	ld	a3,136(sp)
   16c10:	2ea04ce3          	blt	zero,a0,17708 <__gdtoa+0x186c>
   16c14:	04013703          	ld	a4,64(sp)
   16c18:	340752e3          	bge	a4,zero,1775c <__gdtoa+0x18c0>
   16c1c:	00000713          	addi	a4,zero,0
   16c20:	05013683          	ld	a3,80(sp)
   16c24:	50068663          	beq	a3,zero,17130 <__gdtoa+0x1294>
   16c28:	04813683          	ld	a3,72(sp)
   16c2c:	50068263          	beq	a3,zero,17130 <__gdtoa+0x1294>
   16c30:	05013603          	ld	a2,80(sp)
   16c34:	04813583          	ld	a1,72(sp)
   16c38:	00060693          	addi	a3,a2,0
   16c3c:	00c5d463          	bge	a1,a2,16c44 <__gdtoa+0xda8>
   16c40:	04812683          	lw	a3,72(sp)
   16c44:	05013603          	ld	a2,80(sp)
   16c48:	0cd12623          	sw	a3,204(sp)
   16c4c:	40d6093b          	subw	s2,a2,a3
   16c50:	04813603          	ld	a2,72(sp)
   16c54:	40d606bb          	subw	a3,a2,a3
   16c58:	04d13423          	sd	a3,72(sp)
   16c5c:	06013683          	ld	a3,96(sp)
   16c60:	4c069e63          	bne	a3,zero,1713c <__gdtoa+0x12a0>
   16c64:	05213823          	sd	s2,80(sp)
   16c68:	00000993          	addi	s3,zero,0
   16c6c:	cedff06f          	jal	zero,16958 <__gdtoa+0xabc>
   16c70:	03813683          	ld	a3,56(sp)
   16c74:	08d13023          	sd	a3,128(sp)
   16c78:	08013903          	ld	s2,128(sp)
   16c7c:	000a0593          	addi	a1,s4,0
   16c80:	00100693          	addi	a3,zero,1
   16c84:	00090513          	addi	a0,s2,0
   16c88:	00f13c23          	sd	a5,24(sp)
   16c8c:	02e13823          	sd	a4,48(sp)
   16c90:	0cd12623          	sw	a3,204(sp)
   16c94:	2d4050ef          	jal	ra,1bf68 <__divdf3>
   16c98:	00c060ef          	jal	ra,1cca4 <__fixdfsi>
   16c9c:	0005099b          	addiw	s3,a0,0
   16ca0:	00098513          	addi	a0,s3,0
   16ca4:	064060ef          	jal	ra,1cd08 <__floatsidf>
   16ca8:	000a0593          	addi	a1,s4,0
   16cac:	031050ef          	jal	ra,1c4dc <__muldf3>
   16cb0:	00050593          	addi	a1,a0,0
   16cb4:	00090513          	addi	a0,s2,0
   16cb8:	395050ef          	jal	ra,1c84c <__subdf3>
   16cbc:	01813783          	ld	a5,24(sp)
   16cc0:	0309869b          	addiw	a3,s3,48
   16cc4:	00000593          	addi	a1,zero,0
   16cc8:	00d78023          	sb	a3,0(a5)
   16ccc:	00178913          	addi	s2,a5,1
   16cd0:	00813783          	ld	a5,8(sp)
   16cd4:	00050493          	addi	s1,a0,0
   16cd8:	00178c9b          	addiw	s9,a5,1
   16cdc:	624050ef          	jal	ra,1c300 <__eqdf2>
   16ce0:	01813783          	ld	a5,24(sp)
   16ce4:	8c0502e3          	beq	a0,zero,165a8 <__gdtoa+0x70c>
   16ce8:	03013703          	ld	a4,48(sp)
   16cec:	00040d13          	addi	s10,s0,0
   16cf0:	1f01ba83          	ld	s5,496(gp) # 20638 <__SDATA_BEGIN__+0x40>
   16cf4:	00e13c23          	sd	a4,24(sp)
   16cf8:	00098413          	addi	s0,s3,0
   16cfc:	00078d93          	addi	s11,a5,0
   16d00:	0580006f          	jal	zero,16d58 <__gdtoa+0xebc>
   16d04:	0ce12623          	sw	a4,204(sp)
   16d08:	7d4050ef          	jal	ra,1c4dc <__muldf3>
   16d0c:	000a0593          	addi	a1,s4,0
   16d10:	00050993          	addi	s3,a0,0
   16d14:	00190913          	addi	s2,s2,1
   16d18:	250050ef          	jal	ra,1bf68 <__divdf3>
   16d1c:	789050ef          	jal	ra,1cca4 <__fixdfsi>
   16d20:	0005041b          	addiw	s0,a0,0
   16d24:	0305049b          	addiw	s1,a0,48
   16d28:	00040513          	addi	a0,s0,0
   16d2c:	7dd050ef          	jal	ra,1cd08 <__floatsidf>
   16d30:	000a0593          	addi	a1,s4,0
   16d34:	7a8050ef          	jal	ra,1c4dc <__muldf3>
   16d38:	00050593          	addi	a1,a0,0
   16d3c:	00098513          	addi	a0,s3,0
   16d40:	30d050ef          	jal	ra,1c84c <__subdf3>
   16d44:	00000593          	addi	a1,zero,0
   16d48:	fe990fa3          	sb	s1,-1(s2)
   16d4c:	00050493          	addi	s1,a0,0
   16d50:	5b0050ef          	jal	ra,1c300 <__eqdf2>
   16d54:	56050663          	beq	a0,zero,172c0 <__gdtoa+0x1424>
   16d58:	0cc12783          	lw	a5,204(sp)
   16d5c:	02013683          	ld	a3,32(sp)
   16d60:	000a8593          	addi	a1,s5,0
   16d64:	00048513          	addi	a0,s1,0
   16d68:	0017871b          	addiw	a4,a5,1
   16d6c:	f8d79ce3          	bne	a5,a3,16d04 <__gdtoa+0xe68>
   16d70:	01813703          	ld	a4,24(sp)
   16d74:	00040993          	addi	s3,s0,0
   16d78:	000d8793          	addi	a5,s11,0
   16d7c:	000d0413          	addi	s0,s10,0
   16d80:	6c070c63          	beq	a4,zero,17458 <__gdtoa+0x15bc>
   16d84:	00100693          	addi	a3,zero,1
   16d88:	01000b93          	addi	s7,zero,16
   16d8c:	80d71ee3          	bne	a4,a3,165a8 <__gdtoa+0x70c>
   16d90:	00813703          	ld	a4,8(sp)
   16d94:	08e13c23          	sd	a4,152(sp)
   16d98:	fff94603          	lbu	a2,-1(s2)
   16d9c:	fd8ff06f          	jal	zero,16574 <__gdtoa+0x6d8>
   16da0:	07813683          	ld	a3,120(sp)
   16da4:	46068063          	beq	a3,zero,17204 <__gdtoa+0x1368>
   16da8:	05013683          	ld	a3,80(sp)
   16dac:	00d4863b          	addw	a2,s1,a3
   16db0:	62c04c63          	blt	zero,a2,173e8 <__gdtoa+0x154c>
   16db4:	06813683          	ld	a3,104(sp)
   16db8:	00098a13          	addi	s4,s3,0
   16dbc:	6e069a63          	bne	a3,zero,174b0 <__gdtoa+0x1614>
   16dc0:	ffe70693          	addi	a3,a4,-2
   16dc4:	04d13823          	sd	a3,80(sp)
   16dc8:	04e13023          	sd	a4,64(sp)
   16dcc:	00100693          	addi	a3,zero,1
   16dd0:	000a0913          	addi	s2,s4,0
   16dd4:	00078d13          	addi	s10,a5,0
   16dd8:	03113823          	sd	a7,48(sp)
   16ddc:	04f13c23          	sd	a5,88(sp)
   16de0:	03013a03          	ld	s4,48(sp)
   16de4:	00040513          	addi	a0,s0,0
   16de8:	0cd12623          	sw	a3,204(sp)
   16dec:	000a0593          	addi	a1,s4,0
   16df0:	4d9000ef          	jal	ra,17ac8 <__quorem_D2A>
   16df4:	02a13c23          	sd	a0,56(sp)
   16df8:	00098593          	addi	a1,s3,0
   16dfc:	00050a93          	addi	s5,a0,0
   16e00:	00040513          	addi	a0,s0,0
   16e04:	489010ef          	jal	ra,18a8c <__mcmp>
   16e08:	000a0593          	addi	a1,s4,0
   16e0c:	00050493          	addi	s1,a0,0
   16e10:	00090613          	addi	a2,s2,0
   16e14:	000c0513          	addi	a0,s8,0
   16e18:	4cd010ef          	jal	ra,18ae4 <__mdiff>
   16e1c:	00050593          	addi	a1,a0,0
   16e20:	ca0506e3          	beq	a0,zero,16acc <__gdtoa+0xc30>
   16e24:	01052783          	lw	a5,16(a0)
   16e28:	030a871b          	addiw	a4,s5,48
   16e2c:	00070a93          	addi	s5,a4,0
   16e30:	0c078063          	beq	a5,zero,16ef0 <__gdtoa+0x1054>
   16e34:	000c0513          	addi	a0,s8,0
   16e38:	00e13c23          	sd	a4,24(sp)
   16e3c:	10c010ef          	jal	ra,17f48 <_Bfree>
   16e40:	01813703          	ld	a4,24(sp)
   16e44:	00100593          	addi	a1,zero,1
   16e48:	0004c0e3          	blt	s1,zero,17648 <__gdtoa+0x17ac>
   16e4c:	0194e4b3          	or	s1,s1,s9
   16e50:	0004849b          	addiw	s1,s1,0
   16e54:	00049863          	bne	s1,zero,16e64 <__gdtoa+0xfc8>
   16e58:	000da783          	lw	a5,0(s11)
   16e5c:	0017f793          	andi	a5,a5,1
   16e60:	7e078463          	beq	a5,zero,17648 <__gdtoa+0x17ac>
   16e64:	001d0493          	addi	s1,s10,1
   16e68:	00048693          	addi	a3,s1,0
   16e6c:	00b05663          	bge	zero,a1,16e78 <__gdtoa+0xfdc>
   16e70:	05013783          	ld	a5,80(sp)
   16e74:	0e079ce3          	bne	a5,zero,1776c <__gdtoa+0x18d0>
   16e78:	ff548fa3          	sb	s5,-1(s1)
   16e7c:	0cc12783          	lw	a5,204(sp)
   16e80:	02013603          	ld	a2,32(sp)
   16e84:	12c780e3          	beq	a5,a2,177a4 <__gdtoa+0x1908>
   16e88:	00040593          	addi	a1,s0,0
   16e8c:	00000693          	addi	a3,zero,0
   16e90:	00a00613          	addi	a2,zero,10
   16e94:	000c0513          	addi	a0,s8,0
   16e98:	0d4010ef          	jal	ra,17f6c <__multadd>
   16e9c:	00050413          	addi	s0,a0,0
   16ea0:	c20506e3          	beq	a0,zero,16acc <__gdtoa+0xc30>
   16ea4:	00098593          	addi	a1,s3,0
   16ea8:	00000693          	addi	a3,zero,0
   16eac:	00a00613          	addi	a2,zero,10
   16eb0:	000c0513          	addi	a0,s8,0
   16eb4:	13298063          	beq	s3,s2,16fd4 <__gdtoa+0x1138>
   16eb8:	0b4010ef          	jal	ra,17f6c <__multadd>
   16ebc:	00050993          	addi	s3,a0,0
   16ec0:	c00506e3          	beq	a0,zero,16acc <__gdtoa+0xc30>
   16ec4:	00090593          	addi	a1,s2,0
   16ec8:	00000693          	addi	a3,zero,0
   16ecc:	00a00613          	addi	a2,zero,10
   16ed0:	000c0513          	addi	a0,s8,0
   16ed4:	098010ef          	jal	ra,17f6c <__multadd>
   16ed8:	00050913          	addi	s2,a0,0
   16edc:	be0508e3          	beq	a0,zero,16acc <__gdtoa+0xc30>
   16ee0:	0cc12683          	lw	a3,204(sp)
   16ee4:	00048d13          	addi	s10,s1,0
   16ee8:	0016869b          	addiw	a3,a3,1
   16eec:	ef5ff06f          	jal	zero,16de0 <__gdtoa+0xf44>
   16ef0:	00a13c23          	sd	a0,24(sp)
   16ef4:	00040513          	addi	a0,s0,0
   16ef8:	04e13423          	sd	a4,72(sp)
   16efc:	391010ef          	jal	ra,18a8c <__mcmp>
   16f00:	01813583          	ld	a1,24(sp)
   16f04:	00050a13          	addi	s4,a0,0
   16f08:	000c0513          	addi	a0,s8,0
   16f0c:	03c010ef          	jal	ra,17f48 <_Bfree>
   16f10:	019a65b3          	or	a1,s4,s9
   16f14:	0005859b          	addiw	a1,a1,0
   16f18:	04813703          	ld	a4,72(sp)
   16f1c:	4c059263          	bne	a1,zero,173e0 <__gdtoa+0x1544>
   16f20:	000da783          	lw	a5,0(s11)
   16f24:	04013683          	ld	a3,64(sp)
   16f28:	0017f793          	andi	a5,a5,1
   16f2c:	00d7e7b3          	or	a5,a5,a3
   16f30:	f0079ce3          	bne	a5,zero,16e48 <__gdtoa+0xfac>
   16f34:	00090a13          	addi	s4,s2,0
   16f38:	00070913          	addi	s2,a4,0
   16f3c:	03900713          	addi	a4,zero,57
   16f40:	03013883          	ld	a7,48(sp)
   16f44:	05813783          	ld	a5,88(sp)
   16f48:	000d0813          	addi	a6,s10,0
   16f4c:	44e90863          	beq	s2,a4,1739c <__gdtoa+0x1500>
   16f50:	1e9058e3          	bge	zero,s1,17940 <__gdtoa+0x1aa4>
   16f54:	03813703          	ld	a4,56(sp)
   16f58:	02000b93          	addi	s7,zero,32
   16f5c:	0317091b          	addiw	s2,a4,49
   16f60:	00098693          	addi	a3,s3,0
   16f64:	01280023          	sb	s2,0(a6)
   16f68:	000a0993          	addi	s3,s4,0
   16f6c:	00180913          	addi	s2,a6,1
   16f70:	00088593          	addi	a1,a7,0
   16f74:	000c0513          	addi	a0,s8,0
   16f78:	02f13023          	sd	a5,32(sp)
   16f7c:	00d13c23          	sd	a3,24(sp)
   16f80:	7c9000ef          	jal	ra,17f48 <_Bfree>
   16f84:	01813683          	ld	a3,24(sp)
   16f88:	02013783          	ld	a5,32(sp)
   16f8c:	1c098ae3          	beq	s3,zero,17960 <__gdtoa+0x1ac4>
   16f90:	ac0684e3          	beq	a3,zero,16a58 <__gdtoa+0xbbc>
   16f94:	ad3682e3          	beq	a3,s3,16a58 <__gdtoa+0xbbc>
   16f98:	00068593          	addi	a1,a3,0
   16f9c:	000c0513          	addi	a0,s8,0
   16fa0:	00f13c23          	sd	a5,24(sp)
   16fa4:	7a5000ef          	jal	ra,17f48 <_Bfree>
   16fa8:	01813783          	ld	a5,24(sp)
   16fac:	aadff06f          	jal	zero,16a58 <__gdtoa+0xbbc>
   16fb0:	00000593          	addi	a1,zero,0
   16fb4:	000c0513          	addi	a0,s8,0
   16fb8:	00f13423          	sd	a5,8(sp)
   16fbc:	78d000ef          	jal	ra,17f48 <_Bfree>
   16fc0:	00813783          	ld	a5,8(sp)
   16fc4:	41a00cbb          	subw	s9,zero,s10
   16fc8:	01000b93          	addi	s7,zero,16
   16fcc:	00078913          	addi	s2,a5,0
   16fd0:	dd8ff06f          	jal	zero,165a8 <__gdtoa+0x70c>
   16fd4:	799000ef          	jal	ra,17f6c <__multadd>
   16fd8:	00050993          	addi	s3,a0,0
   16fdc:	ae0508e3          	beq	a0,zero,16acc <__gdtoa+0xc30>
   16fe0:	00050913          	addi	s2,a0,0
   16fe4:	efdff06f          	jal	zero,16ee0 <__gdtoa+0x1044>
   16fe8:	00040593          	addi	a1,s0,0
   16fec:	000c0513          	addi	a0,s8,0
   16ff0:	02f13c23          	sd	a5,56(sp)
   16ff4:	03113823          	sd	a7,48(sp)
   16ff8:	00e13c23          	sd	a4,24(sp)
   16ffc:	101010ef          	jal	ra,188fc <__lshift>
   17000:	00050413          	addi	s0,a0,0
   17004:	ac0504e3          	beq	a0,zero,16acc <__gdtoa+0xc30>
   17008:	0cc12683          	lw	a3,204(sp)
   1700c:	03813783          	ld	a5,56(sp)
   17010:	03013883          	ld	a7,48(sp)
   17014:	01813703          	ld	a4,24(sp)
   17018:	9a1ff06f          	jal	zero,169b8 <__gdtoa+0xb1c>
   1701c:	00000a13          	addi	s4,zero,0
   17020:	00100793          	addi	a5,zero,1
   17024:	00500c93          	addi	s9,zero,5
   17028:	06f13c23          	sd	a5,120(sp)
   1702c:	ad0ff06f          	jal	zero,162fc <__gdtoa+0x460>
   17030:	00100613          	addi	a2,zero,1
   17034:	879658e3          	bge	a2,s9,168a4 <__gdtoa+0xa08>
   17038:	02013683          	ld	a3,32(sp)
   1703c:	06013583          	ld	a1,96(sp)
   17040:	fff6869b          	addiw	a3,a3,-1
   17044:	00068613          	addi	a2,a3,0
   17048:	2ad5c663          	blt	a1,a3,172f4 <__gdtoa+0x1458>
   1704c:	40d58a3b          	subw	s4,a1,a3
   17050:	02013683          	ld	a3,32(sp)
   17054:	0606dce3          	bge	a3,zero,178cc <__gdtoa+0x1a30>
   17058:	05013683          	ld	a3,80(sp)
   1705c:	02013603          	ld	a2,32(sp)
   17060:	0c012623          	sw	zero,204(sp)
   17064:	00068913          	addi	s2,a3,0
   17068:	40c686bb          	subw	a3,a3,a2
   1706c:	04d13823          	sd	a3,80(sp)
   17070:	84dff06f          	jal	zero,168bc <__gdtoa+0xa20>
   17074:	00050593          	addi	a1,a0,0
   17078:	00068613          	addi	a2,a3,0
   1707c:	000c0513          	addi	a0,s8,0
   17080:	710010ef          	jal	ra,18790 <__pow5mult>
   17084:	00050893          	addi	a7,a0,0
   17088:	a40502e3          	beq	a0,zero,16acc <__gdtoa+0xc30>
   1708c:	002ca693          	slti	a3,s9,2
   17090:	03813703          	ld	a4,56(sp)
   17094:	04013783          	ld	a5,64(sp)
   17098:	00068663          	beq	a3,zero,170a4 <__gdtoa+0x1208>
   1709c:	fff48493          	addi	s1,s1,-1
   170a0:	02048e63          	beq	s1,zero,170dc <__gdtoa+0x1240>
   170a4:	06013423          	sd	zero,104(sp)
   170a8:	0148a683          	lw	a3,20(a7)
   170ac:	02f13c23          	sd	a5,56(sp)
   170b0:	02e13823          	sd	a4,48(sp)
   170b4:	fff6869b          	addiw	a3,a3,-1
   170b8:	00269693          	slli	a3,a3,0x2
   170bc:	00d886b3          	add	a3,a7,a3
   170c0:	0186a503          	lw	a0,24(a3)
   170c4:	01113c23          	sd	a7,24(sp)
   170c8:	170010ef          	jal	ra,18238 <__hi0bits>
   170cc:	03813783          	ld	a5,56(sp)
   170d0:	03013703          	ld	a4,48(sp)
   170d4:	01813883          	ld	a7,24(sp)
   170d8:	8c1ff06f          	jal	zero,16998 <__gdtoa+0xafc>
   170dc:	03013683          	ld	a3,48(sp)
   170e0:	01813603          	ld	a2,24(sp)
   170e4:	0046a683          	lw	a3,4(a3)
   170e8:	0016869b          	addiw	a3,a3,1
   170ec:	fac6dce3          	bge	a3,a2,170a4 <__gdtoa+0x1208>
   170f0:	04813683          	ld	a3,72(sp)
   170f4:	0019091b          	addiw	s2,s2,1
   170f8:	0016869b          	addiw	a3,a3,1
   170fc:	04d13423          	sd	a3,72(sp)
   17100:	00100693          	addi	a3,zero,1
   17104:	06d13423          	sd	a3,104(sp)
   17108:	fa1ff06f          	jal	zero,170a8 <__gdtoa+0x120c>
   1710c:	00100793          	addi	a5,zero,1
   17110:	40c787bb          	subw	a5,a5,a2
   17114:	04f13823          	sd	a5,80(sp)
   17118:	00813783          	ld	a5,8(sp)
   1711c:	06013823          	sd	zero,112(sp)
   17120:	06013023          	sd	zero,96(sp)
   17124:	04f13423          	sd	a5,72(sp)
   17128:	06f13423          	sd	a5,104(sp)
   1712c:	99cff06f          	jal	zero,162c8 <__gdtoa+0x42c>
   17130:	06013683          	ld	a3,96(sp)
   17134:	05013903          	ld	s2,80(sp)
   17138:	b20688e3          	beq	a3,zero,16c68 <__gdtoa+0xdcc>
   1713c:	06013603          	ld	a2,96(sp)
   17140:	00040593          	addi	a1,s0,0
   17144:	000c0513          	addi	a0,s8,0
   17148:	04f13023          	sd	a5,64(sp)
   1714c:	02e13c23          	sd	a4,56(sp)
   17150:	640010ef          	jal	ra,18790 <__pow5mult>
   17154:	00050413          	addi	s0,a0,0
   17158:	96050ae3          	beq	a0,zero,16acc <__gdtoa+0xc30>
   1715c:	04013783          	ld	a5,64(sp)
   17160:	03813703          	ld	a4,56(sp)
   17164:	05213823          	sd	s2,80(sp)
   17168:	00000993          	addi	s3,zero,0
   1716c:	fecff06f          	jal	zero,16958 <__gdtoa+0xabc>
   17170:	00088593          	addi	a1,a7,0
   17174:	00040513          	addi	a0,s0,0
   17178:	02f13c23          	sd	a5,56(sp)
   1717c:	02e13823          	sd	a4,48(sp)
   17180:	01113c23          	sd	a7,24(sp)
   17184:	109010ef          	jal	ra,18a8c <__mcmp>
   17188:	01813883          	ld	a7,24(sp)
   1718c:	03013703          	ld	a4,48(sp)
   17190:	03813783          	ld	a5,56(sp)
   17194:	82055ce3          	bge	a0,zero,169cc <__gdtoa+0xb30>
   17198:	00040593          	addi	a1,s0,0
   1719c:	00000693          	addi	a3,zero,0
   171a0:	00a00613          	addi	a2,zero,10
   171a4:	000c0513          	addi	a0,s8,0
   171a8:	02f13823          	sd	a5,48(sp)
   171ac:	03113023          	sd	a7,32(sp)
   171b0:	00e13c23          	sd	a4,24(sp)
   171b4:	5b9000ef          	jal	ra,17f6c <__multadd>
   171b8:	00050413          	addi	s0,a0,0
   171bc:	900508e3          	beq	a0,zero,16acc <__gdtoa+0xc30>
   171c0:	00813783          	ld	a5,8(sp)
   171c4:	07813683          	ld	a3,120(sp)
   171c8:	01813703          	ld	a4,24(sp)
   171cc:	fff7879b          	addiw	a5,a5,-1
   171d0:	00f13423          	sd	a5,8(sp)
   171d4:	02013883          	ld	a7,32(sp)
   171d8:	03013783          	ld	a5,48(sp)
   171dc:	6a069663          	bne	a3,zero,17888 <__gdtoa+0x19ec>
   171e0:	05813683          	ld	a3,88(sp)
   171e4:	00d04c63          	blt	zero,a3,171fc <__gdtoa+0x1360>
   171e8:	00200693          	addi	a3,zero,2
   171ec:	0196d863          	bge	a3,s9,171fc <__gdtoa+0x1360>
   171f0:	05813703          	ld	a4,88(sp)
   171f4:	02e13023          	sd	a4,32(sp)
   171f8:	fe4ff06f          	jal	zero,169dc <__gdtoa+0xb40>
   171fc:	05813683          	ld	a3,88(sp)
   17200:	02d13023          	sd	a3,32(sp)
   17204:	00098b93          	addi	s7,s3,0
   17208:	00078493          	addi	s1,a5,0
   1720c:	02013983          	ld	s3,32(sp)
   17210:	00100693          	addi	a3,zero,1
   17214:	00070a93          	addi	s5,a4,0
   17218:	00088a13          	addi	s4,a7,0
   1721c:	00078c93          	addi	s9,a5,0
   17220:	0200006f          	jal	zero,17240 <__gdtoa+0x13a4>
   17224:	00040593          	addi	a1,s0,0
   17228:	000c0513          	addi	a0,s8,0
   1722c:	541000ef          	jal	ra,17f6c <__multadd>
   17230:	00050413          	addi	s0,a0,0
   17234:	88050ce3          	beq	a0,zero,16acc <__gdtoa+0xc30>
   17238:	0cc12683          	lw	a3,204(sp)
   1723c:	0016869b          	addiw	a3,a3,1
   17240:	000a0593          	addi	a1,s4,0
   17244:	00040513          	addi	a0,s0,0
   17248:	0cd12623          	sw	a3,204(sp)
   1724c:	07d000ef          	jal	ra,17ac8 <__quorem_D2A>
   17250:	00148493          	addi	s1,s1,1
   17254:	0305091b          	addiw	s2,a0,48
   17258:	ff248fa3          	sb	s2,-1(s1)
   1725c:	0cc12783          	lw	a5,204(sp)
   17260:	00000693          	addi	a3,zero,0
   17264:	00a00613          	addi	a2,zero,10
   17268:	fb37cee3          	blt	a5,s3,17224 <__gdtoa+0x1388>
   1726c:	000a8713          	addi	a4,s5,0
   17270:	000b8993          	addi	s3,s7,0
   17274:	000a0893          	addi	a7,s4,0
   17278:	000c8793          	addi	a5,s9,0
   1727c:	00000693          	addi	a3,zero,0
   17280:	32070463          	beq	a4,zero,175a8 <__gdtoa+0x170c>
   17284:	00200613          	addi	a2,zero,2
   17288:	36c70463          	beq	a4,a2,175f0 <__gdtoa+0x1754>
   1728c:	01442603          	lw	a2,20(s0)
   17290:	00100713          	addi	a4,zero,1
   17294:	12c74063          	blt	a4,a2,173b4 <__gdtoa+0x1518>
   17298:	01842703          	lw	a4,24(s0)
   1729c:	10071c63          	bne	a4,zero,173b4 <__gdtoa+0x1518>
   172a0:	00e03733          	sltu	a4,zero,a4
   172a4:	00471b9b          	slliw	s7,a4,0x4
   172a8:	03000613          	addi	a2,zero,48
   172ac:	00048913          	addi	s2,s1,0
   172b0:	fff4c703          	lbu	a4,-1(s1)
   172b4:	fff48493          	addi	s1,s1,-1
   172b8:	fec70ae3          	beq	a4,a2,172ac <__gdtoa+0x1410>
   172bc:	cb5ff06f          	jal	zero,16f70 <__gdtoa+0x10d4>
   172c0:	000d0413          	addi	s0,s10,0
   172c4:	000d8793          	addi	a5,s11,0
   172c8:	ae0ff06f          	jal	zero,165a8 <__gdtoa+0x70c>
   172cc:	fffd4713          	xori	a4,s10,-1
   172d0:	00e13423          	sd	a4,8(sp)
   172d4:	00078913          	addi	s2,a5,0
   172d8:	01000b93          	addi	s7,zero,16
   172dc:	f64ff06f          	jal	zero,16a40 <__gdtoa+0xba4>
   172e0:	06013c23          	sd	zero,120(sp)
   172e4:	d3cff06f          	jal	zero,16820 <__gdtoa+0x984>
   172e8:	00100793          	addi	a5,zero,1
   172ec:	06f13c23          	sd	a5,120(sp)
   172f0:	d30ff06f          	jal	zero,16820 <__gdtoa+0x984>
   172f4:	06013683          	ld	a3,96(sp)
   172f8:	06813583          	ld	a1,104(sp)
   172fc:	06c13023          	sd	a2,96(sp)
   17300:	40d606bb          	subw	a3,a2,a3
   17304:	00b686bb          	addw	a3,a3,a1
   17308:	06d13423          	sd	a3,104(sp)
   1730c:	04813583          	ld	a1,72(sp)
   17310:	02013683          	ld	a3,32(sp)
   17314:	02013603          	ld	a2,32(sp)
   17318:	00000a13          	addi	s4,zero,0
   1731c:	0cd12623          	sw	a3,204(sp)
   17320:	00b686bb          	addw	a3,a3,a1
   17324:	04d13423          	sd	a3,72(sp)
   17328:	05013683          	ld	a3,80(sp)
   1732c:	00c6893b          	addw	s2,a3,a2
   17330:	d8cff06f          	jal	zero,168bc <__gdtoa+0xa20>
   17334:	00098593          	addi	a1,s3,0
   17338:	000a0613          	addi	a2,s4,0
   1733c:	000c0513          	addi	a0,s8,0
   17340:	04f13023          	sd	a5,64(sp)
   17344:	02e13c23          	sd	a4,56(sp)
   17348:	448010ef          	jal	ra,18790 <__pow5mult>
   1734c:	00050993          	addi	s3,a0,0
   17350:	f6050e63          	beq	a0,zero,16acc <__gdtoa+0xc30>
   17354:	00050593          	addi	a1,a0,0
   17358:	00040613          	addi	a2,s0,0
   1735c:	000c0513          	addi	a0,s8,0
   17360:	14c010ef          	jal	ra,184ac <__multiply>
   17364:	f6050463          	beq	a0,zero,16acc <__gdtoa+0xc30>
   17368:	00040593          	addi	a1,s0,0
   1736c:	08a13023          	sd	a0,128(sp)
   17370:	000c0513          	addi	a0,s8,0
   17374:	3d5000ef          	jal	ra,17f48 <_Bfree>
   17378:	06013703          	ld	a4,96(sp)
   1737c:	08013403          	ld	s0,128(sp)
   17380:	414707bb          	subw	a5,a4,s4
   17384:	06f13023          	sd	a5,96(sp)
   17388:	00078693          	addi	a3,a5,0
   1738c:	03813703          	ld	a4,56(sp)
   17390:	04013783          	ld	a5,64(sp)
   17394:	dc068263          	beq	a3,zero,16958 <__gdtoa+0xabc>
   17398:	d98ff06f          	jal	zero,16930 <__gdtoa+0xa94>
   1739c:	00180613          	addi	a2,a6,1
   173a0:	03900713          	addi	a4,zero,57
   173a4:	00098693          	addi	a3,s3,0
   173a8:	00060493          	addi	s1,a2,0
   173ac:	000a0993          	addi	s3,s4,0
   173b0:	00e80023          	sb	a4,0(a6)
   173b4:	03900613          	addi	a2,zero,57
   173b8:	0080006f          	jal	zero,173c0 <__gdtoa+0x1524>
   173bc:	24978663          	beq	a5,s1,17608 <__gdtoa+0x176c>
   173c0:	fff4c703          	lbu	a4,-1(s1)
   173c4:	00048913          	addi	s2,s1,0
   173c8:	fff48493          	addi	s1,s1,-1
   173cc:	fec708e3          	beq	a4,a2,173bc <__gdtoa+0x1520>
   173d0:	0017071b          	addiw	a4,a4,1
   173d4:	00e48023          	sb	a4,0(s1)
   173d8:	02000b93          	addi	s7,zero,32
   173dc:	b95ff06f          	jal	zero,16f70 <__gdtoa+0x10d4>
   173e0:	000a0593          	addi	a1,s4,0
   173e4:	a65ff06f          	jal	zero,16e48 <__gdtoa+0xfac>
   173e8:	00098593          	addi	a1,s3,0
   173ec:	000c0513          	addi	a0,s8,0
   173f0:	02f13c23          	sd	a5,56(sp)
   173f4:	03113823          	sd	a7,48(sp)
   173f8:	00e13c23          	sd	a4,24(sp)
   173fc:	500010ef          	jal	ra,188fc <__lshift>
   17400:	01813703          	ld	a4,24(sp)
   17404:	03013883          	ld	a7,48(sp)
   17408:	03813783          	ld	a5,56(sp)
   1740c:	00050993          	addi	s3,a0,0
   17410:	9a0512e3          	bne	a0,zero,16db4 <__gdtoa+0xf18>
   17414:	eb8ff06f          	jal	zero,16acc <__gdtoa+0xc30>
   17418:	03100713          	addi	a4,zero,49
   1741c:	00e78023          	sb	a4,0(a5)
   17420:	00000593          	addi	a1,zero,0
   17424:	000c0513          	addi	a0,s8,0
   17428:	00178913          	addi	s2,a5,1
   1742c:	00f13423          	sd	a5,8(sp)
   17430:	319000ef          	jal	ra,17f48 <_Bfree>
   17434:	00813783          	ld	a5,8(sp)
   17438:	00200c93          	addi	s9,zero,2
   1743c:	02000b93          	addi	s7,zero,32
   17440:	968ff06f          	jal	zero,165a8 <__gdtoa+0x70c>
   17444:	09813683          	ld	a3,152(sp)
   17448:	03100993          	addi	s3,zero,49
   1744c:	0016869b          	addiw	a3,a3,1
   17450:	08d13c23          	sd	a3,152(sp)
   17454:	944ff06f          	jal	zero,16598 <__gdtoa+0x6fc>
   17458:	00048593          	addi	a1,s1,0
   1745c:	03b13023          	sd	s11,32(sp)
   17460:	6c0040ef          	jal	ra,1bb20 <__adddf3>
   17464:	fff94603          	lbu	a2,-1(s2)
   17468:	000a0593          	addi	a1,s4,0
   1746c:	00050493          	addi	s1,a0,0
   17470:	00c13c23          	sd	a2,24(sp)
   17474:	709040ef          	jal	ra,1c37c <__gedf2>
   17478:	01813603          	ld	a2,24(sp)
   1747c:	02013783          	ld	a5,32(sp)
   17480:	26a04e63          	blt	zero,a0,176fc <__gdtoa+0x1860>
   17484:	000a0593          	addi	a1,s4,0
   17488:	00048513          	addi	a0,s1,0
   1748c:	675040ef          	jal	ra,1c300 <__eqdf2>
   17490:	02013783          	ld	a5,32(sp)
   17494:	2a051a63          	bne	a0,zero,17748 <__gdtoa+0x18ac>
   17498:	0019f713          	andi	a4,s3,1
   1749c:	2a070663          	beq	a4,zero,17748 <__gdtoa+0x18ac>
   174a0:	00813703          	ld	a4,8(sp)
   174a4:	01813603          	ld	a2,24(sp)
   174a8:	08e13c23          	sd	a4,152(sp)
   174ac:	8c8ff06f          	jal	zero,16574 <__gdtoa+0x6d8>
   174b0:	0089a583          	lw	a1,8(s3)
   174b4:	000c0513          	addi	a0,s8,0
   174b8:	02f13c23          	sd	a5,56(sp)
   174bc:	03113823          	sd	a7,48(sp)
   174c0:	00e13c23          	sd	a4,24(sp)
   174c4:	1d9000ef          	jal	ra,17e9c <_Balloc>
   174c8:	00050493          	addi	s1,a0,0
   174cc:	e0050063          	beq	a0,zero,16acc <__gdtoa+0xc30>
   174d0:	0149a603          	lw	a2,20(s3)
   174d4:	01098593          	addi	a1,s3,16
   174d8:	01050513          	addi	a0,a0,16
   174dc:	00261613          	slli	a2,a2,0x2
   174e0:	00860613          	addi	a2,a2,8
   174e4:	b14fe0ef          	jal	ra,157f8 <memcpy>
   174e8:	00048593          	addi	a1,s1,0
   174ec:	000c0513          	addi	a0,s8,0
   174f0:	00100613          	addi	a2,zero,1
   174f4:	408010ef          	jal	ra,188fc <__lshift>
   174f8:	01813703          	ld	a4,24(sp)
   174fc:	03013883          	ld	a7,48(sp)
   17500:	03813783          	ld	a5,56(sp)
   17504:	00050a13          	addi	s4,a0,0
   17508:	8a051ce3          	bne	a0,zero,16dc0 <__gdtoa+0xf24>
   1750c:	dc0ff06f          	jal	zero,16acc <__gdtoa+0xc30>
   17510:	05813703          	ld	a4,88(sp)
   17514:	9ee05a63          	bge	zero,a4,16708 <__gdtoa+0x86c>
   17518:	1f01b583          	ld	a1,496(gp) # 20638 <__SDATA_BEGIN__+0x40>
   1751c:	03813503          	ld	a0,56(sp)
   17520:	0af13023          	sd	a5,160(sp)
   17524:	7b9040ef          	jal	ra,1c4dc <__muldf3>
   17528:	1f81b583          	ld	a1,504(gp) # 20640 <__SDATA_BEGIN__+0x48>
   1752c:	08a13823          	sd	a0,144(sp)
   17530:	7ad040ef          	jal	ra,1c4dc <__muldf3>
   17534:	1e81b583          	ld	a1,488(gp) # 20630 <__SDATA_BEGIN__+0x38>
   17538:	5e8040ef          	jal	ra,1bb20 <__adddf3>
   1753c:	05813783          	ld	a5,88(sp)
   17540:	fcc006b7          	lui	a3,0xfcc00
   17544:	02055713          	srli	a4,a0,0x20
   17548:	02051613          	slli	a2,a0,0x20
   1754c:	00d7073b          	addw	a4,a4,a3
   17550:	08f13423          	sd	a5,136(sp)
   17554:	02065613          	srli	a2,a2,0x20
   17558:	fff00793          	addi	a5,zero,-1
   1755c:	02071713          	slli	a4,a4,0x20
   17560:	08f13c23          	sd	a5,152(sp)
   17564:	00e66633          	or	a2,a2,a4
   17568:	0a013783          	ld	a5,160(sp)
   1756c:	e85fe06f          	jal	zero,163f0 <__gdtoa+0x554>
   17570:	00040913          	addi	s2,s0,0
   17574:	0a013403          	ld	s0,160(sp)
   17578:	0b313823          	sd	s3,176(sp)
   1757c:	000a0793          	addi	a5,s4,0
   17580:	0b013503          	ld	a0,176(sp)
   17584:	00000593          	addi	a1,zero,0
   17588:	00f13423          	sd	a5,8(sp)
   1758c:	575040ef          	jal	ra,1c300 <__eqdf2>
   17590:	09813783          	ld	a5,152(sp)
   17594:	00a03733          	sltu	a4,zero,a0
   17598:	00471b9b          	slliw	s7,a4,0x4
   1759c:	00178c9b          	addiw	s9,a5,1
   175a0:	00813783          	ld	a5,8(sp)
   175a4:	804ff06f          	jal	zero,165a8 <__gdtoa+0x70c>
   175a8:	00040593          	addi	a1,s0,0
   175ac:	00100613          	addi	a2,zero,1
   175b0:	000c0513          	addi	a0,s8,0
   175b4:	02f13823          	sd	a5,48(sp)
   175b8:	01113c23          	sd	a7,24(sp)
   175bc:	02d13023          	sd	a3,32(sp)
   175c0:	33c010ef          	jal	ra,188fc <__lshift>
   175c4:	00050413          	addi	s0,a0,0
   175c8:	d0050263          	beq	a0,zero,16acc <__gdtoa+0xc30>
   175cc:	01813583          	ld	a1,24(sp)
   175d0:	4bc010ef          	jal	ra,18a8c <__mcmp>
   175d4:	01813883          	ld	a7,24(sp)
   175d8:	02013683          	ld	a3,32(sp)
   175dc:	03013783          	ld	a5,48(sp)
   175e0:	dca04ae3          	blt	zero,a0,173b4 <__gdtoa+0x1518>
   175e4:	00051663          	bne	a0,zero,175f0 <__gdtoa+0x1754>
   175e8:	00197913          	andi	s2,s2,1
   175ec:	dc0914e3          	bne	s2,zero,173b4 <__gdtoa+0x1518>
   175f0:	01442603          	lw	a2,20(s0)
   175f4:	00100713          	addi	a4,zero,1
   175f8:	01000b93          	addi	s7,zero,16
   175fc:	cac746e3          	blt	a4,a2,172a8 <__gdtoa+0x140c>
   17600:	01842703          	lw	a4,24(s0)
   17604:	c9dff06f          	jal	zero,172a0 <__gdtoa+0x1404>
   17608:	00813603          	ld	a2,8(sp)
   1760c:	03100713          	addi	a4,zero,49
   17610:	00e78023          	sb	a4,0(a5)
   17614:	0016061b          	addiw	a2,a2,1
   17618:	00c13423          	sd	a2,8(sp)
   1761c:	02000b93          	addi	s7,zero,32
   17620:	951ff06f          	jal	zero,16f70 <__gdtoa+0x10d4>
   17624:	04013703          	ld	a4,64(sp)
   17628:	0a013403          	ld	s0,160(sp)
   1762c:	0b013983          	ld	s3,176(sp)
   17630:	0b813483          	ld	s1,184(sp)
   17634:	000a0793          	addi	a5,s4,0
   17638:	000a8693          	addi	a3,s5,0
   1763c:	18075663          	bge	a4,zero,177c8 <__gdtoa+0x192c>
   17640:	00000713          	addi	a4,zero,0
   17644:	a04ff06f          	jal	zero,16848 <__gdtoa+0x9ac>
   17648:	00090a13          	addi	s4,s2,0
   1764c:	00070913          	addi	s2,a4,0
   17650:	04013703          	ld	a4,64(sp)
   17654:	03013883          	ld	a7,48(sp)
   17658:	05813783          	ld	a5,88(sp)
   1765c:	000d0813          	addi	a6,s10,0
   17660:	16070863          	beq	a4,zero,177d0 <__gdtoa+0x1934>
   17664:	01442603          	lw	a2,20(s0)
   17668:	00100693          	addi	a3,zero,1
   1766c:	28c6d063          	bge	a3,a2,178ec <__gdtoa+0x1a50>
   17670:	00200693          	addi	a3,zero,2
   17674:	2ad70863          	beq	a4,a3,17924 <__gdtoa+0x1a88>
   17678:	00098b93          	addi	s7,s3,0
   1767c:	000a0493          	addi	s1,s4,0
   17680:	00080993          	addi	s3,a6,0
   17684:	00088a93          	addi	s5,a7,0
   17688:	00078c93          	addi	s9,a5,0
   1768c:	0240006f          	jal	zero,176b0 <__gdtoa+0x1814>
   17690:	0dd000ef          	jal	ra,17f6c <__multadd>
   17694:	000a8593          	addi	a1,s5,0
   17698:	00050413          	addi	s0,a0,0
   1769c:	00198993          	addi	s3,s3,1
   176a0:	c2050663          	beq	a0,zero,16acc <__gdtoa+0xc30>
   176a4:	424000ef          	jal	ra,17ac8 <__quorem_D2A>
   176a8:	00090493          	addi	s1,s2,0
   176ac:	0305091b          	addiw	s2,a0,48
   176b0:	00048593          	addi	a1,s1,0
   176b4:	000a8513          	addi	a0,s5,0
   176b8:	3d4010ef          	jal	ra,18a8c <__mcmp>
   176bc:	00000693          	addi	a3,zero,0
   176c0:	00a00613          	addi	a2,zero,10
   176c4:	22a05c63          	bge	zero,a0,178fc <__gdtoa+0x1a60>
   176c8:	01298023          	sb	s2,0(s3)
   176cc:	00048593          	addi	a1,s1,0
   176d0:	000c0513          	addi	a0,s8,0
   176d4:	099000ef          	jal	ra,17f6c <__multadd>
   176d8:	00050913          	addi	s2,a0,0
   176dc:	00000693          	addi	a3,zero,0
   176e0:	00a00613          	addi	a2,zero,10
   176e4:	00040593          	addi	a1,s0,0
   176e8:	000c0513          	addi	a0,s8,0
   176ec:	be090063          	beq	s2,zero,16acc <__gdtoa+0xc30>
   176f0:	fa9b90e3          	bne	s7,s1,17690 <__gdtoa+0x17f4>
   176f4:	00090b93          	addi	s7,s2,0
   176f8:	f99ff06f          	jal	zero,17690 <__gdtoa+0x17f4>
   176fc:	00813703          	ld	a4,8(sp)
   17700:	08e13c23          	sd	a4,152(sp)
   17704:	e71fe06f          	jal	zero,16574 <__gdtoa+0x6d8>
   17708:	000a0513          	addi	a0,s4,0
   1770c:	00000593          	addi	a1,zero,0
   17710:	00f13423          	sd	a5,8(sp)
   17714:	3ed040ef          	jal	ra,1c300 <__eqdf2>
   17718:	00813783          	ld	a5,8(sp)
   1771c:	00a036b3          	sltu	a3,zero,a0
   17720:	00090713          	addi	a4,s2,0
   17724:	00469b9b          	slliw	s7,a3,0x4
   17728:	03000613          	addi	a2,zero,48
   1772c:	fff74683          	lbu	a3,-1(a4)
   17730:	00070913          	addi	s2,a4,0
   17734:	fff70713          	addi	a4,a4,-1
   17738:	fec68ae3          	beq	a3,a2,1772c <__gdtoa+0x1890>
   1773c:	09813703          	ld	a4,152(sp)
   17740:	00170c9b          	addiw	s9,a4,1
   17744:	e65fe06f          	jal	zero,165a8 <__gdtoa+0x70c>
   17748:	00813683          	ld	a3,8(sp)
   1774c:	00090713          	addi	a4,s2,0
   17750:	01000b93          	addi	s7,zero,16
   17754:	08d13c23          	sd	a3,152(sp)
   17758:	fd1ff06f          	jal	zero,17728 <__gdtoa+0x188c>
   1775c:	0006b703          	ld	a4,0(a3) # fffffffffcc00000 <__BSS_END__+0xfffffffffcbdf3b8>
   17760:	00070a13          	addi	s4,a4,0
   17764:	00000713          	addi	a4,zero,0
   17768:	d10ff06f          	jal	zero,16c78 <__gdtoa+0xddc>
   1776c:	03900713          	addi	a4,zero,57
   17770:	03013883          	ld	a7,48(sp)
   17774:	05813783          	ld	a5,88(sp)
   17778:	00090a13          	addi	s4,s2,0
   1777c:	000d0813          	addi	a6,s10,0
   17780:	00048613          	addi	a2,s1,0
   17784:	c0ea8ee3          	beq	s5,a4,173a0 <__gdtoa+0x1504>
   17788:	001a871b          	addiw	a4,s5,1
   1778c:	00098693          	addi	a3,s3,0
   17790:	00ed0023          	sb	a4,0(s10)
   17794:	00048913          	addi	s2,s1,0
   17798:	000a0993          	addi	s3,s4,0
   1779c:	02000b93          	addi	s7,zero,32
   177a0:	fd0ff06f          	jal	zero,16f70 <__gdtoa+0x10d4>
   177a4:	00090613          	addi	a2,s2,0
   177a8:	00068493          	addi	s1,a3,0
   177ac:	00070913          	addi	s2,a4,0
   177b0:	00098693          	addi	a3,s3,0
   177b4:	04013703          	ld	a4,64(sp)
   177b8:	03013883          	ld	a7,48(sp)
   177bc:	05813783          	ld	a5,88(sp)
   177c0:	00060993          	addi	s3,a2,0
   177c4:	abdff06f          	jal	zero,17280 <__gdtoa+0x13e4>
   177c8:	00000713          	addi	a4,zero,0
   177cc:	f65fe06f          	jal	zero,16730 <__gdtoa+0x894>
   177d0:	04b05a63          	bge	zero,a1,17824 <__gdtoa+0x1988>
   177d4:	00040593          	addi	a1,s0,0
   177d8:	00100613          	addi	a2,zero,1
   177dc:	000c0513          	addi	a0,s8,0
   177e0:	02f13823          	sd	a5,48(sp)
   177e4:	01113c23          	sd	a7,24(sp)
   177e8:	03013023          	sd	a6,32(sp)
   177ec:	110010ef          	jal	ra,188fc <__lshift>
   177f0:	00050413          	addi	s0,a0,0
   177f4:	ac050c63          	beq	a0,zero,16acc <__gdtoa+0xc30>
   177f8:	01813583          	ld	a1,24(sp)
   177fc:	290010ef          	jal	ra,18a8c <__mcmp>
   17800:	01813883          	ld	a7,24(sp)
   17804:	02013803          	ld	a6,32(sp)
   17808:	03013783          	ld	a5,48(sp)
   1780c:	12a05063          	bge	zero,a0,1792c <__gdtoa+0x1a90>
   17810:	03900713          	addi	a4,zero,57
   17814:	b8ea84e3          	beq	s5,a4,1739c <__gdtoa+0x1500>
   17818:	03813703          	ld	a4,56(sp)
   1781c:	0317091b          	addiw	s2,a4,49
   17820:	02000713          	addi	a4,zero,32
   17824:	01442603          	lw	a2,20(s0)
   17828:	00100693          	addi	a3,zero,1
   1782c:	01000b93          	addi	s7,zero,16
   17830:	f2c6c863          	blt	a3,a2,16f60 <__gdtoa+0x10c4>
   17834:	01842683          	lw	a3,24(s0)
   17838:	f2069463          	bne	a3,zero,16f60 <__gdtoa+0x10c4>
   1783c:	00070b93          	addi	s7,a4,0
   17840:	f20ff06f          	jal	zero,16f60 <__gdtoa+0x10c4>
   17844:	02013683          	ld	a3,32(sp)
   17848:	06013583          	ld	a1,96(sp)
   1784c:	fff6869b          	addiw	a3,a3,-1
   17850:	00068613          	addi	a2,a3,0
   17854:	aad5c0e3          	blt	a1,a3,172f4 <__gdtoa+0x1458>
   17858:	04813583          	ld	a1,72(sp)
   1785c:	02013603          	ld	a2,32(sp)
   17860:	00b6063b          	addw	a2,a2,a1
   17864:	04c13423          	sd	a2,72(sp)
   17868:	06013603          	ld	a2,96(sp)
   1786c:	40d60a3b          	subw	s4,a2,a3
   17870:	02013683          	ld	a3,32(sp)
   17874:	02013603          	ld	a2,32(sp)
   17878:	0cd12623          	sw	a3,204(sp)
   1787c:	05013683          	ld	a3,80(sp)
   17880:	00c6893b          	addw	s2,a3,a2
   17884:	838ff06f          	jal	zero,168bc <__gdtoa+0xa20>
   17888:	00098593          	addi	a1,s3,0
   1788c:	00000693          	addi	a3,zero,0
   17890:	00a00613          	addi	a2,zero,10
   17894:	000c0513          	addi	a0,s8,0
   17898:	6d4000ef          	jal	ra,17f6c <__multadd>
   1789c:	00050993          	addi	s3,a0,0
   178a0:	a2050663          	beq	a0,zero,16acc <__gdtoa+0xc30>
   178a4:	05813683          	ld	a3,88(sp)
   178a8:	01813703          	ld	a4,24(sp)
   178ac:	02013883          	ld	a7,32(sp)
   178b0:	03013783          	ld	a5,48(sp)
   178b4:	00d04663          	blt	zero,a3,178c0 <__gdtoa+0x1a24>
   178b8:	00200693          	addi	a3,zero,2
   178bc:	9396cae3          	blt	a3,s9,171f0 <__gdtoa+0x1354>
   178c0:	05813683          	ld	a3,88(sp)
   178c4:	02d13023          	sd	a3,32(sp)
   178c8:	ce0ff06f          	jal	zero,16da8 <__gdtoa+0xf0c>
   178cc:	04813603          	ld	a2,72(sp)
   178d0:	0cd12623          	sw	a3,204(sp)
   178d4:	00c686bb          	addw	a3,a3,a2
   178d8:	04d13423          	sd	a3,72(sp)
   178dc:	02013603          	ld	a2,32(sp)
   178e0:	05013683          	ld	a3,80(sp)
   178e4:	00c6893b          	addw	s2,a3,a2
   178e8:	fd5fe06f          	jal	zero,168bc <__gdtoa+0xa20>
   178ec:	01842683          	lw	a3,24(s0)
   178f0:	d80690e3          	bne	a3,zero,17670 <__gdtoa+0x17d4>
   178f4:	eeb040e3          	blt	zero,a1,177d4 <__gdtoa+0x1938>
   178f8:	e68ff06f          	jal	zero,16f60 <__gdtoa+0x10c4>
   178fc:	03900713          	addi	a4,zero,57
   17900:	00098813          	addi	a6,s3,0
   17904:	00048a13          	addi	s4,s1,0
   17908:	000b8993          	addi	s3,s7,0
   1790c:	000a8893          	addi	a7,s5,0
   17910:	000c8793          	addi	a5,s9,0
   17914:	a8e904e3          	beq	s2,a4,1739c <__gdtoa+0x1500>
   17918:	0019091b          	addiw	s2,s2,1
   1791c:	02000b93          	addi	s7,zero,32
   17920:	e40ff06f          	jal	zero,16f60 <__gdtoa+0x10c4>
   17924:	01000b93          	addi	s7,zero,16
   17928:	e38ff06f          	jal	zero,16f60 <__gdtoa+0x10c4>
   1792c:	00051663          	bne	a0,zero,17938 <__gdtoa+0x1a9c>
   17930:	001af713          	andi	a4,s5,1
   17934:	ec071ee3          	bne	a4,zero,17810 <__gdtoa+0x1974>
   17938:	02000713          	addi	a4,zero,32
   1793c:	ee9ff06f          	jal	zero,17824 <__gdtoa+0x1988>
   17940:	01442683          	lw	a3,20(s0)
   17944:	00100713          	addi	a4,zero,1
   17948:	01000b93          	addi	s7,zero,16
   1794c:	e0d74a63          	blt	a4,a3,16f60 <__gdtoa+0x10c4>
   17950:	01842703          	lw	a4,24(s0)
   17954:	00e03733          	sltu	a4,zero,a4
   17958:	00471b9b          	slliw	s7,a4,0x4
   1795c:	e04ff06f          	jal	zero,16f60 <__gdtoa+0x10c4>
   17960:	00813703          	ld	a4,8(sp)
   17964:	00170c9b          	addiw	s9,a4,1
   17968:	c41fe06f          	jal	zero,165a8 <__gdtoa+0x70c>

000000000001796c <__rv_alloc_D2A.part.0>:
   1796c:	0001e6b7          	lui	a3,0x1e
   17970:	0001e537          	lui	a0,0x1e
   17974:	ff010113          	addi	sp,sp,-16
   17978:	2e868693          	addi	a3,a3,744 # 1e2e8 <__clzdi2+0xd4>
   1797c:	30050513          	addi	a0,a0,768 # 1e300 <__clzdi2+0xec>
   17980:	00000613          	addi	a2,zero,0
   17984:	03900593          	addi	a1,zero,57
   17988:	00113423          	sd	ra,8(sp)
   1798c:	444020ef          	jal	ra,19dd0 <__assert_func>

0000000000017990 <__rv_alloc_D2A>:
   17990:	ff010113          	addi	sp,sp,-16
   17994:	00813023          	sd	s0,0(sp)
   17998:	00113423          	sd	ra,8(sp)
   1799c:	01f00693          	addi	a3,zero,31
   179a0:	00050413          	addi	s0,a0,0
   179a4:	00100713          	addi	a4,zero,1
   179a8:	00400793          	addi	a5,zero,4
   179ac:	04b6f063          	bgeu	a3,a1,179ec <__rv_alloc_D2A+0x5c>
   179b0:	0017979b          	slliw	a5,a5,0x1
   179b4:	01c78693          	addi	a3,a5,28
   179b8:	00070613          	addi	a2,a4,0
   179bc:	0017071b          	addiw	a4,a4,1
   179c0:	fed5f8e3          	bgeu	a1,a3,179b0 <__rv_alloc_D2A+0x20>
   179c4:	00060593          	addi	a1,a2,0
   179c8:	04c42c23          	sw	a2,88(s0)
   179cc:	00040513          	addi	a0,s0,0
   179d0:	4cc000ef          	jal	ra,17e9c <_Balloc>
   179d4:	02050263          	beq	a0,zero,179f8 <__rv_alloc_D2A+0x68>
   179d8:	00813083          	ld	ra,8(sp)
   179dc:	04a43823          	sd	a0,80(s0)
   179e0:	00013403          	ld	s0,0(sp)
   179e4:	01010113          	addi	sp,sp,16
   179e8:	00008067          	jalr	zero,0(ra)
   179ec:	04052c23          	sw	zero,88(a0)
   179f0:	00000593          	addi	a1,zero,0
   179f4:	fd9ff06f          	jal	zero,179cc <__rv_alloc_D2A+0x3c>
   179f8:	f75ff0ef          	jal	ra,1796c <__rv_alloc_D2A.part.0>

00000000000179fc <__nrv_alloc_D2A>:
   179fc:	fd010113          	addi	sp,sp,-48
   17a00:	02813023          	sd	s0,32(sp)
   17a04:	00913c23          	sd	s1,24(sp)
   17a08:	02113423          	sd	ra,40(sp)
   17a0c:	01f00813          	addi	a6,zero,31
   17a10:	00050493          	addi	s1,a0,0
   17a14:	00058413          	addi	s0,a1,0
   17a18:	00100713          	addi	a4,zero,1
   17a1c:	00400793          	addi	a5,zero,4
   17a20:	06d87c63          	bgeu	a6,a3,17a98 <__nrv_alloc_D2A+0x9c>
   17a24:	0017979b          	slliw	a5,a5,0x1
   17a28:	01c78513          	addi	a0,a5,28
   17a2c:	00070593          	addi	a1,a4,0
   17a30:	0017071b          	addiw	a4,a4,1
   17a34:	fea6f8e3          	bgeu	a3,a0,17a24 <__nrv_alloc_D2A+0x28>
   17a38:	04b4ac23          	sw	a1,88(s1)
   17a3c:	00048513          	addi	a0,s1,0
   17a40:	00c13423          	sd	a2,8(sp)
   17a44:	458000ef          	jal	ra,17e9c <_Balloc>
   17a48:	00813603          	ld	a2,8(sp)
   17a4c:	06050063          	beq	a0,zero,17aac <__nrv_alloc_D2A+0xb0>
   17a50:	04a4b823          	sd	a0,80(s1)
   17a54:	00044783          	lbu	a5,0(s0)
   17a58:	00f50023          	sb	a5,0(a0)
   17a5c:	04078463          	beq	a5,zero,17aa4 <__nrv_alloc_D2A+0xa8>
   17a60:	00140593          	addi	a1,s0,1
   17a64:	00050793          	addi	a5,a0,0
   17a68:	0005c703          	lbu	a4,0(a1)
   17a6c:	00158593          	addi	a1,a1,1
   17a70:	00178793          	addi	a5,a5,1
   17a74:	00e78023          	sb	a4,0(a5)
   17a78:	fe0718e3          	bne	a4,zero,17a68 <__nrv_alloc_D2A+0x6c>
   17a7c:	00060463          	beq	a2,zero,17a84 <__nrv_alloc_D2A+0x88>
   17a80:	00f63023          	sd	a5,0(a2)
   17a84:	02813083          	ld	ra,40(sp)
   17a88:	02013403          	ld	s0,32(sp)
   17a8c:	01813483          	ld	s1,24(sp)
   17a90:	03010113          	addi	sp,sp,48
   17a94:	00008067          	jalr	zero,0(ra)
   17a98:	04052c23          	sw	zero,88(a0)
   17a9c:	00000593          	addi	a1,zero,0
   17aa0:	f9dff06f          	jal	zero,17a3c <__nrv_alloc_D2A+0x40>
   17aa4:	00050793          	addi	a5,a0,0
   17aa8:	fd5ff06f          	jal	zero,17a7c <__nrv_alloc_D2A+0x80>
   17aac:	ec1ff0ef          	jal	ra,1796c <__rv_alloc_D2A.part.0>

0000000000017ab0 <__freedtoa>:
   17ab0:	05852703          	lw	a4,88(a0)
   17ab4:	00100793          	addi	a5,zero,1
   17ab8:	00e797bb          	sllw	a5,a5,a4
   17abc:	00f5a623          	sw	a5,12(a1)
   17ac0:	00e5a423          	sw	a4,8(a1)
   17ac4:	4840006f          	jal	zero,17f48 <_Bfree>

0000000000017ac8 <__quorem_D2A>:
   17ac8:	f8010113          	addi	sp,sp,-128
   17acc:	06913423          	sd	s1,104(sp)
   17ad0:	01452783          	lw	a5,20(a0)
   17ad4:	0145a483          	lw	s1,20(a1)
   17ad8:	06113c23          	sd	ra,120(sp)
   17adc:	2297ca63          	blt	a5,s1,17d10 <__quorem_D2A+0x248>
   17ae0:	fff4849b          	addiw	s1,s1,-1
   17ae4:	05613023          	sd	s6,64(sp)
   17ae8:	03713c23          	sd	s7,56(sp)
   17aec:	00249b13          	slli	s6,s1,0x2
   17af0:	01858b93          	addi	s7,a1,24
   17af4:	07213023          	sd	s2,96(sp)
   17af8:	05313c23          	sd	s3,88(sp)
   17afc:	016b8933          	add	s2,s7,s6
   17b00:	01850993          	addi	s3,a0,24
   17b04:	05513423          	sd	s5,72(sp)
   17b08:	01698b33          	add	s6,s3,s6
   17b0c:	00092a83          	lw	s5,0(s2)
   17b10:	03813823          	sd	s8,48(sp)
   17b14:	000b2c03          	lw	s8,0(s6)
   17b18:	001a8a9b          	addiw	s5,s5,1
   17b1c:	05413823          	sd	s4,80(sp)
   17b20:	00b13423          	sd	a1,8(sp)
   17b24:	00050a13          	addi	s4,a0,0
   17b28:	020a9593          	slli	a1,s5,0x20
   17b2c:	020c1513          	slli	a0,s8,0x20
   17b30:	0205d593          	srli	a1,a1,0x20
   17b34:	02055513          	srli	a0,a0,0x20
   17b38:	06813823          	sd	s0,112(sp)
   17b3c:	620060ef          	jal	ra,1e15c <__hidden___udivdi3>
   17b40:	0005041b          	addiw	s0,a0,0
   17b44:	0f5c6463          	bltu	s8,s5,17c2c <__quorem_D2A+0x164>
   17b48:	03913423          	sd	s9,40(sp)
   17b4c:	01b13c23          	sd	s11,24(sp)
   17b50:	03a13023          	sd	s10,32(sp)
   17b54:	000b8c93          	addi	s9,s7,0
   17b58:	00098c13          	addi	s8,s3,0
   17b5c:	00000a93          	addi	s5,zero,0
   17b60:	00000d93          	addi	s11,zero,0
   17b64:	000cad03          	lw	s10,0(s9)
   17b68:	00040593          	addi	a1,s0,0
   17b6c:	004c0c13          	addi	s8,s8,4
   17b70:	030d1513          	slli	a0,s10,0x30
   17b74:	03055513          	srli	a0,a0,0x30
   17b78:	578060ef          	jal	ra,1e0f0 <__muldi3>
   17b7c:	01550abb          	addw	s5,a0,s5
   17b80:	00040593          	addi	a1,s0,0
   17b84:	010d551b          	srliw	a0,s10,0x10
   17b88:	568060ef          	jal	ra,1e0f0 <__muldi3>
   17b8c:	ffcc2783          	lw	a5,-4(s8)
   17b90:	030a9693          	slli	a3,s5,0x30
   17b94:	0306d693          	srli	a3,a3,0x30
   17b98:	03079713          	slli	a4,a5,0x30
   17b9c:	03075713          	srli	a4,a4,0x30
   17ba0:	010ada9b          	srliw	s5,s5,0x10
   17ba4:	40d7073b          	subw	a4,a4,a3
   17ba8:	41b7073b          	subw	a4,a4,s11
   17bac:	00aa853b          	addw	a0,s5,a0
   17bb0:	02f71593          	slli	a1,a4,0x2f
   17bb4:	03051613          	slli	a2,a0,0x30
   17bb8:	03065613          	srli	a2,a2,0x30
   17bbc:	03f5d693          	srli	a3,a1,0x3f
   17bc0:	00c686b3          	add	a3,a3,a2
   17bc4:	0107d79b          	srliw	a5,a5,0x10
   17bc8:	40d787bb          	subw	a5,a5,a3
   17bcc:	03071713          	slli	a4,a4,0x30
   17bd0:	0107969b          	slliw	a3,a5,0x10
   17bd4:	03075713          	srli	a4,a4,0x30
   17bd8:	00e6e733          	or	a4,a3,a4
   17bdc:	004c8c93          	addi	s9,s9,4
   17be0:	0107d79b          	srliw	a5,a5,0x10
   17be4:	feec2e23          	sw	a4,-4(s8)
   17be8:	01055a9b          	srliw	s5,a0,0x10
   17bec:	0017fd93          	andi	s11,a5,1
   17bf0:	f7997ae3          	bgeu	s2,s9,17b64 <__quorem_D2A+0x9c>
   17bf4:	000b2783          	lw	a5,0(s6)
   17bf8:	12079663          	bne	a5,zero,17d24 <__quorem_D2A+0x25c>
   17bfc:	ffcb0b13          	addi	s6,s6,-4
   17c00:	0169e863          	bltu	s3,s6,17c10 <__quorem_D2A+0x148>
   17c04:	0180006f          	jal	zero,17c1c <__quorem_D2A+0x154>
   17c08:	fff4849b          	addiw	s1,s1,-1
   17c0c:	0169f863          	bgeu	s3,s6,17c1c <__quorem_D2A+0x154>
   17c10:	000b2783          	lw	a5,0(s6)
   17c14:	ffcb0b13          	addi	s6,s6,-4
   17c18:	fe0788e3          	beq	a5,zero,17c08 <__quorem_D2A+0x140>
   17c1c:	02813c83          	ld	s9,40(sp)
   17c20:	02013d03          	ld	s10,32(sp)
   17c24:	01813d83          	ld	s11,24(sp)
   17c28:	009a2a23          	sw	s1,20(s4)
   17c2c:	00813583          	ld	a1,8(sp)
   17c30:	000a0513          	addi	a0,s4,0
   17c34:	659000ef          	jal	ra,18a8c <__mcmp>
   17c38:	0a054263          	blt	a0,zero,17cdc <__quorem_D2A+0x214>
   17c3c:	0014041b          	addiw	s0,s0,1
   17c40:	00098613          	addi	a2,s3,0
   17c44:	00000593          	addi	a1,zero,0
   17c48:	00062783          	lw	a5,0(a2)
   17c4c:	000ba683          	lw	a3,0(s7)
   17c50:	00460613          	addi	a2,a2,4
   17c54:	03079713          	slli	a4,a5,0x30
   17c58:	03069513          	slli	a0,a3,0x30
   17c5c:	03055513          	srli	a0,a0,0x30
   17c60:	03075713          	srli	a4,a4,0x30
   17c64:	40a7073b          	subw	a4,a4,a0
   17c68:	40b7073b          	subw	a4,a4,a1
   17c6c:	02f71513          	slli	a0,a4,0x2f
   17c70:	03f55593          	srli	a1,a0,0x3f
   17c74:	0106d69b          	srliw	a3,a3,0x10
   17c78:	00d586b3          	add	a3,a1,a3
   17c7c:	0107d79b          	srliw	a5,a5,0x10
   17c80:	40d787bb          	subw	a5,a5,a3
   17c84:	03071713          	slli	a4,a4,0x30
   17c88:	0107969b          	slliw	a3,a5,0x10
   17c8c:	03075713          	srli	a4,a4,0x30
   17c90:	00e6e733          	or	a4,a3,a4
   17c94:	004b8b93          	addi	s7,s7,4
   17c98:	0107d79b          	srliw	a5,a5,0x10
   17c9c:	fee62e23          	sw	a4,-4(a2)
   17ca0:	0017f593          	andi	a1,a5,1
   17ca4:	fb7972e3          	bgeu	s2,s7,17c48 <__quorem_D2A+0x180>
   17ca8:	00249793          	slli	a5,s1,0x2
   17cac:	00f987b3          	add	a5,s3,a5
   17cb0:	0007a703          	lw	a4,0(a5)
   17cb4:	02071463          	bne	a4,zero,17cdc <__quorem_D2A+0x214>
   17cb8:	ffc78793          	addi	a5,a5,-4
   17cbc:	00f9e863          	bltu	s3,a5,17ccc <__quorem_D2A+0x204>
   17cc0:	0180006f          	jal	zero,17cd8 <__quorem_D2A+0x210>
   17cc4:	fff4849b          	addiw	s1,s1,-1
   17cc8:	00f9f863          	bgeu	s3,a5,17cd8 <__quorem_D2A+0x210>
   17ccc:	0007a703          	lw	a4,0(a5)
   17cd0:	ffc78793          	addi	a5,a5,-4
   17cd4:	fe0708e3          	beq	a4,zero,17cc4 <__quorem_D2A+0x1fc>
   17cd8:	009a2a23          	sw	s1,20(s4)
   17cdc:	07813083          	ld	ra,120(sp)
   17ce0:	00040513          	addi	a0,s0,0
   17ce4:	07013403          	ld	s0,112(sp)
   17ce8:	06013903          	ld	s2,96(sp)
   17cec:	05813983          	ld	s3,88(sp)
   17cf0:	05013a03          	ld	s4,80(sp)
   17cf4:	04813a83          	ld	s5,72(sp)
   17cf8:	04013b03          	ld	s6,64(sp)
   17cfc:	03813b83          	ld	s7,56(sp)
   17d00:	03013c03          	ld	s8,48(sp)
   17d04:	06813483          	ld	s1,104(sp)
   17d08:	08010113          	addi	sp,sp,128
   17d0c:	00008067          	jalr	zero,0(ra)
   17d10:	07813083          	ld	ra,120(sp)
   17d14:	06813483          	ld	s1,104(sp)
   17d18:	00000513          	addi	a0,zero,0
   17d1c:	08010113          	addi	sp,sp,128
   17d20:	00008067          	jalr	zero,0(ra)
   17d24:	00813583          	ld	a1,8(sp)
   17d28:	000a0513          	addi	a0,s4,0
   17d2c:	02813c83          	ld	s9,40(sp)
   17d30:	02013d03          	ld	s10,32(sp)
   17d34:	01813d83          	ld	s11,24(sp)
   17d38:	555000ef          	jal	ra,18a8c <__mcmp>
   17d3c:	f00550e3          	bge	a0,zero,17c3c <__quorem_D2A+0x174>
   17d40:	f9dff06f          	jal	zero,17cdc <__quorem_D2A+0x214>

0000000000017d44 <__rshift_D2A>:
   17d44:	01452683          	lw	a3,20(a0)
   17d48:	4055d31b          	sraiw	t1,a1,0x5
   17d4c:	00d34863          	blt	t1,a3,17d5c <__rshift_D2A+0x18>
   17d50:	00052a23          	sw	zero,20(a0)
   17d54:	00052c23          	sw	zero,24(a0)
   17d58:	00008067          	jalr	zero,0(ra)
   17d5c:	01850e13          	addi	t3,a0,24
   17d60:	00269813          	slli	a6,a3,0x2
   17d64:	00231793          	slli	a5,t1,0x2
   17d68:	01f5f593          	andi	a1,a1,31
   17d6c:	010e0833          	add	a6,t3,a6
   17d70:	00fe07b3          	add	a5,t3,a5
   17d74:	06058463          	beq	a1,zero,17ddc <__rshift_D2A+0x98>
   17d78:	0007a603          	lw	a2,0(a5)
   17d7c:	00478793          	addi	a5,a5,4
   17d80:	00b6563b          	srlw	a2,a2,a1
   17d84:	0907fc63          	bgeu	a5,a6,17e1c <__rshift_D2A+0xd8>
   17d88:	02000e93          	addi	t4,zero,32
   17d8c:	40be8ebb          	subw	t4,t4,a1
   17d90:	000e0893          	addi	a7,t3,0
   17d94:	0007a703          	lw	a4,0(a5)
   17d98:	00488893          	addi	a7,a7,4
   17d9c:	00478793          	addi	a5,a5,4
   17da0:	01d7173b          	sllw	a4,a4,t4
   17da4:	00c76733          	or	a4,a4,a2
   17da8:	fee8ae23          	sw	a4,-4(a7)
   17dac:	ffc7a603          	lw	a2,-4(a5)
   17db0:	00b6563b          	srlw	a2,a2,a1
   17db4:	ff07e0e3          	bltu	a5,a6,17d94 <__rshift_D2A+0x50>
   17db8:	406687b3          	sub	a5,a3,t1
   17dbc:	00279793          	slli	a5,a5,0x2
   17dc0:	ff878793          	addi	a5,a5,-8
   17dc4:	004e0713          	addi	a4,t3,4
   17dc8:	00e787b3          	add	a5,a5,a4
   17dcc:	00c7a023          	sw	a2,0(a5)
   17dd0:	02060a63          	beq	a2,zero,17e04 <__rshift_D2A+0xc0>
   17dd4:	00478793          	addi	a5,a5,4
   17dd8:	02c0006f          	jal	zero,17e04 <__rshift_D2A+0xc0>
   17ddc:	000e0713          	addi	a4,t3,0
   17de0:	f707f8e3          	bgeu	a5,a6,17d50 <__rshift_D2A+0xc>
   17de4:	0007a603          	lw	a2,0(a5)
   17de8:	00478793          	addi	a5,a5,4
   17dec:	00470713          	addi	a4,a4,4
   17df0:	fec72e23          	sw	a2,-4(a4)
   17df4:	ff07e8e3          	bltu	a5,a6,17de4 <__rshift_D2A+0xa0>
   17df8:	406687b3          	sub	a5,a3,t1
   17dfc:	00279793          	slli	a5,a5,0x2
   17e00:	01c787b3          	add	a5,a5,t3
   17e04:	41c787b3          	sub	a5,a5,t3
   17e08:	4027d793          	srai	a5,a5,0x2
   17e0c:	0007879b          	addiw	a5,a5,0
   17e10:	00f52a23          	sw	a5,20(a0)
   17e14:	f40780e3          	beq	a5,zero,17d54 <__rshift_D2A+0x10>
   17e18:	00008067          	jalr	zero,0(ra)
   17e1c:	00c52c23          	sw	a2,24(a0)
   17e20:	000e0793          	addi	a5,t3,0
   17e24:	f20606e3          	beq	a2,zero,17d50 <__rshift_D2A+0xc>
   17e28:	00478793          	addi	a5,a5,4
   17e2c:	fd9ff06f          	jal	zero,17e04 <__rshift_D2A+0xc0>

0000000000017e30 <__trailz_D2A>:
   17e30:	01452683          	lw	a3,20(a0)
   17e34:	01850513          	addi	a0,a0,24
   17e38:	00000793          	addi	a5,zero,0
   17e3c:	00269693          	slli	a3,a3,0x2
   17e40:	00d506b3          	add	a3,a0,a3
   17e44:	00d56a63          	bltu	a0,a3,17e58 <__trailz_D2A+0x28>
   17e48:	04c0006f          	jal	zero,17e94 <__trailz_D2A+0x64>
   17e4c:	00450513          	addi	a0,a0,4
   17e50:	0207879b          	addiw	a5,a5,32
   17e54:	04d57063          	bgeu	a0,a3,17e94 <__trailz_D2A+0x64>
   17e58:	00052703          	lw	a4,0(a0)
   17e5c:	fe0708e3          	beq	a4,zero,17e4c <__trailz_D2A+0x1c>
   17e60:	02d57a63          	bgeu	a0,a3,17e94 <__trailz_D2A+0x64>
   17e64:	fd010113          	addi	sp,sp,-48
   17e68:	01c10513          	addi	a0,sp,28
   17e6c:	02113423          	sd	ra,40(sp)
   17e70:	00f13423          	sd	a5,8(sp)
   17e74:	00e12e23          	sw	a4,28(sp)
   17e78:	448000ef          	jal	ra,182c0 <__lo0bits>
   17e7c:	00813783          	ld	a5,8(sp)
   17e80:	02813083          	ld	ra,40(sp)
   17e84:	00f507bb          	addw	a5,a0,a5
   17e88:	00078513          	addi	a0,a5,0
   17e8c:	03010113          	addi	sp,sp,48
   17e90:	00008067          	jalr	zero,0(ra)
   17e94:	00078513          	addi	a0,a5,0
   17e98:	00008067          	jalr	zero,0(ra)

0000000000017e9c <_Balloc>:
   17e9c:	06853783          	ld	a5,104(a0)
   17ea0:	fe010113          	addi	sp,sp,-32
   17ea4:	00113c23          	sd	ra,24(sp)
   17ea8:	00050713          	addi	a4,a0,0
   17eac:	00058693          	addi	a3,a1,0
   17eb0:	02078663          	beq	a5,zero,17edc <_Balloc+0x40>
   17eb4:	00369613          	slli	a2,a3,0x3
   17eb8:	00c787b3          	add	a5,a5,a2
   17ebc:	0007b503          	ld	a0,0(a5)
   17ec0:	04050663          	beq	a0,zero,17f0c <_Balloc+0x70>
   17ec4:	00053703          	ld	a4,0(a0)
   17ec8:	00e7b023          	sd	a4,0(a5)
   17ecc:	00053823          	sd	zero,16(a0)
   17ed0:	01813083          	ld	ra,24(sp)
   17ed4:	02010113          	addi	sp,sp,32
   17ed8:	00008067          	jalr	zero,0(ra)
   17edc:	00b13423          	sd	a1,8(sp)
   17ee0:	04100613          	addi	a2,zero,65
   17ee4:	00800593          	addi	a1,zero,8
   17ee8:	00a13023          	sd	a0,0(sp)
   17eec:	749010ef          	jal	ra,19e34 <_calloc_r>
   17ef0:	00013703          	ld	a4,0(sp)
   17ef4:	00813683          	ld	a3,8(sp)
   17ef8:	00050793          	addi	a5,a0,0
   17efc:	06a73423          	sd	a0,104(a4)
   17f00:	fa051ae3          	bne	a0,zero,17eb4 <_Balloc+0x18>
   17f04:	00000513          	addi	a0,zero,0
   17f08:	fc9ff06f          	jal	zero,17ed0 <_Balloc+0x34>
   17f0c:	00100793          	addi	a5,zero,1
   17f10:	00d797bb          	sllw	a5,a5,a3
   17f14:	00279613          	slli	a2,a5,0x2
   17f18:	00070513          	addi	a0,a4,0
   17f1c:	01c60613          	addi	a2,a2,28
   17f20:	00100593          	addi	a1,zero,1
   17f24:	00d13423          	sd	a3,8(sp)
   17f28:	00f13023          	sd	a5,0(sp)
   17f2c:	709010ef          	jal	ra,19e34 <_calloc_r>
   17f30:	fc050ae3          	beq	a0,zero,17f04 <_Balloc+0x68>
   17f34:	00813683          	ld	a3,8(sp)
   17f38:	00013783          	ld	a5,0(sp)
   17f3c:	00d52423          	sw	a3,8(a0)
   17f40:	00f52623          	sw	a5,12(a0)
   17f44:	f89ff06f          	jal	zero,17ecc <_Balloc+0x30>

0000000000017f48 <_Bfree>:
   17f48:	02058063          	beq	a1,zero,17f68 <_Bfree+0x20>
   17f4c:	0085a703          	lw	a4,8(a1)
   17f50:	06853783          	ld	a5,104(a0)
   17f54:	00371713          	slli	a4,a4,0x3
   17f58:	00e787b3          	add	a5,a5,a4
   17f5c:	0007b703          	ld	a4,0(a5)
   17f60:	00e5b023          	sd	a4,0(a1)
   17f64:	00b7b023          	sd	a1,0(a5)
   17f68:	00008067          	jalr	zero,0(ra)

0000000000017f6c <__multadd>:
   17f6c:	fb010113          	addi	sp,sp,-80
   17f70:	03313423          	sd	s3,40(sp)
   17f74:	0145a983          	lw	s3,20(a1)
   17f78:	04813023          	sd	s0,64(sp)
   17f7c:	02913c23          	sd	s1,56(sp)
   17f80:	03213823          	sd	s2,48(sp)
   17f84:	03413023          	sd	s4,32(sp)
   17f88:	01513c23          	sd	s5,24(sp)
   17f8c:	01713423          	sd	s7,8(sp)
   17f90:	04113423          	sd	ra,72(sp)
   17f94:	01613823          	sd	s6,16(sp)
   17f98:	00058a13          	addi	s4,a1,0
   17f9c:	00068413          	addi	s0,a3,0
   17fa0:	00050b93          	addi	s7,a0,0
   17fa4:	00060913          	addi	s2,a2,0
   17fa8:	01858493          	addi	s1,a1,24
   17fac:	00000a93          	addi	s5,zero,0
   17fb0:	0004ab03          	lw	s6,0(s1)
   17fb4:	00090593          	addi	a1,s2,0
   17fb8:	00448493          	addi	s1,s1,4
   17fbc:	030b1513          	slli	a0,s6,0x30
   17fc0:	03055513          	srli	a0,a0,0x30
   17fc4:	12c060ef          	jal	ra,1e0f0 <__muldi3>
   17fc8:	0085043b          	addw	s0,a0,s0
   17fcc:	00090593          	addi	a1,s2,0
   17fd0:	010b551b          	srliw	a0,s6,0x10
   17fd4:	11c060ef          	jal	ra,1e0f0 <__muldi3>
   17fd8:	0104569b          	srliw	a3,s0,0x10
   17fdc:	00a6853b          	addw	a0,a3,a0
   17fe0:	03041413          	slli	s0,s0,0x30
   17fe4:	03045413          	srli	s0,s0,0x30
   17fe8:	0105179b          	slliw	a5,a0,0x10
   17fec:	008787bb          	addw	a5,a5,s0
   17ff0:	001a8a9b          	addiw	s5,s5,1
   17ff4:	fef4ae23          	sw	a5,-4(s1)
   17ff8:	0105541b          	srliw	s0,a0,0x10
   17ffc:	fb3acae3          	blt	s5,s3,17fb0 <__multadd+0x44>
   18000:	02040063          	beq	s0,zero,18020 <__multadd+0xb4>
   18004:	00ca2783          	lw	a5,12(s4)
   18008:	04f9d463          	bge	s3,a5,18050 <__multadd+0xe4>
   1800c:	00299793          	slli	a5,s3,0x2
   18010:	00fa07b3          	add	a5,s4,a5
   18014:	0087ac23          	sw	s0,24(a5)
   18018:	0019899b          	addiw	s3,s3,1
   1801c:	013a2a23          	sw	s3,20(s4)
   18020:	04813083          	ld	ra,72(sp)
   18024:	04013403          	ld	s0,64(sp)
   18028:	03813483          	ld	s1,56(sp)
   1802c:	03013903          	ld	s2,48(sp)
   18030:	02813983          	ld	s3,40(sp)
   18034:	01813a83          	ld	s5,24(sp)
   18038:	01013b03          	ld	s6,16(sp)
   1803c:	00813b83          	ld	s7,8(sp)
   18040:	000a0513          	addi	a0,s4,0
   18044:	02013a03          	ld	s4,32(sp)
   18048:	05010113          	addi	sp,sp,80
   1804c:	00008067          	jalr	zero,0(ra)
   18050:	008a2583          	lw	a1,8(s4)
   18054:	000b8513          	addi	a0,s7,0
   18058:	0015859b          	addiw	a1,a1,1
   1805c:	e41ff0ef          	jal	ra,17e9c <_Balloc>
   18060:	00050493          	addi	s1,a0,0
   18064:	04050a63          	beq	a0,zero,180b8 <__multadd+0x14c>
   18068:	014a2603          	lw	a2,20(s4)
   1806c:	010a0593          	addi	a1,s4,16
   18070:	01050513          	addi	a0,a0,16
   18074:	00261613          	slli	a2,a2,0x2
   18078:	00860613          	addi	a2,a2,8
   1807c:	f7cfd0ef          	jal	ra,157f8 <memcpy>
   18080:	008a2703          	lw	a4,8(s4)
   18084:	068bb783          	ld	a5,104(s7)
   18088:	00371713          	slli	a4,a4,0x3
   1808c:	00e787b3          	add	a5,a5,a4
   18090:	0007b703          	ld	a4,0(a5)
   18094:	00ea3023          	sd	a4,0(s4)
   18098:	0147b023          	sd	s4,0(a5)
   1809c:	00048a13          	addi	s4,s1,0
   180a0:	00299793          	slli	a5,s3,0x2
   180a4:	00fa07b3          	add	a5,s4,a5
   180a8:	0087ac23          	sw	s0,24(a5)
   180ac:	0019899b          	addiw	s3,s3,1
   180b0:	013a2a23          	sw	s3,20(s4)
   180b4:	f6dff06f          	jal	zero,18020 <__multadd+0xb4>
   180b8:	0001e6b7          	lui	a3,0x1e
   180bc:	0001e537          	lui	a0,0x1e
   180c0:	2e868693          	addi	a3,a3,744 # 1e2e8 <__clzdi2+0xd4>
   180c4:	35850513          	addi	a0,a0,856 # 1e358 <__clzdi2+0x144>
   180c8:	00000613          	addi	a2,zero,0
   180cc:	0ba00593          	addi	a1,zero,186
   180d0:	501010ef          	jal	ra,19dd0 <__assert_func>

00000000000180d4 <__s2b>:
   180d4:	fc010113          	addi	sp,sp,-64
   180d8:	02813823          	sd	s0,48(sp)
   180dc:	03213023          	sd	s2,32(sp)
   180e0:	01313c23          	sd	s3,24(sp)
   180e4:	01413823          	sd	s4,16(sp)
   180e8:	01513423          	sd	s5,8(sp)
   180ec:	02113c23          	sd	ra,56(sp)
   180f0:	00900793          	addi	a5,zero,9
   180f4:	00068993          	addi	s3,a3,0
   180f8:	00060a13          	addi	s4,a2,0
   180fc:	00050913          	addi	s2,a0,0
   18100:	00058a93          	addi	s5,a1,0
   18104:	00070413          	addi	s0,a4,0
   18108:	10d7d463          	bge	a5,a3,18210 <__s2b+0x13c>
   1810c:	00078593          	addi	a1,a5,0
   18110:	0086851b          	addiw	a0,a3,8
   18114:	040060ef          	jal	ra,1e154 <__divdi3>
   18118:	0005051b          	addiw	a0,a0,0
   1811c:	00100793          	addi	a5,zero,1
   18120:	00000593          	addi	a1,zero,0
   18124:	0017979b          	slliw	a5,a5,0x1
   18128:	0015859b          	addiw	a1,a1,1
   1812c:	fea7cce3          	blt	a5,a0,18124 <__s2b+0x50>
   18130:	00090513          	addi	a0,s2,0
   18134:	d69ff0ef          	jal	ra,17e9c <_Balloc>
   18138:	02913423          	sd	s1,40(sp)
   1813c:	00050593          	addi	a1,a0,0
   18140:	0c050c63          	beq	a0,zero,18218 <__s2b+0x144>
   18144:	00100793          	addi	a5,zero,1
   18148:	00f52a23          	sw	a5,20(a0)
   1814c:	00852c23          	sw	s0,24(a0)
   18150:	00900793          	addi	a5,zero,9
   18154:	0b47d863          	bge	a5,s4,18204 <__s2b+0x130>
   18158:	ff6a071b          	addiw	a4,s4,-10
   1815c:	020a1793          	slli	a5,s4,0x20
   18160:	009a8413          	addi	s0,s5,9
   18164:	01613023          	sd	s6,0(sp)
   18168:	0207d793          	srli	a5,a5,0x20
   1816c:	02071b13          	slli	s6,a4,0x20
   18170:	020b5b13          	srli	s6,s6,0x20
   18174:	00fa8ab3          	add	s5,s5,a5
   18178:	00040493          	addi	s1,s0,0
   1817c:	0004c683          	lbu	a3,0(s1)
   18180:	00a00613          	addi	a2,zero,10
   18184:	00090513          	addi	a0,s2,0
   18188:	fd06869b          	addiw	a3,a3,-48
   1818c:	00148493          	addi	s1,s1,1
   18190:	dddff0ef          	jal	ra,17f6c <__multadd>
   18194:	00050593          	addi	a1,a0,0
   18198:	fe9a92e3          	bne	s5,s1,1817c <__s2b+0xa8>
   1819c:	01640433          	add	s0,s0,s6
   181a0:	00013b03          	ld	s6,0(sp)
   181a4:	00240413          	addi	s0,s0,2
   181a8:	033a5a63          	bge	s4,s3,181dc <__s2b+0x108>
   181ac:	414984bb          	subw	s1,s3,s4
   181b0:	02049493          	slli	s1,s1,0x20
   181b4:	0204d493          	srli	s1,s1,0x20
   181b8:	009404b3          	add	s1,s0,s1
   181bc:	00044683          	lbu	a3,0(s0)
   181c0:	00a00613          	addi	a2,zero,10
   181c4:	00090513          	addi	a0,s2,0
   181c8:	fd06869b          	addiw	a3,a3,-48
   181cc:	00140413          	addi	s0,s0,1
   181d0:	d9dff0ef          	jal	ra,17f6c <__multadd>
   181d4:	00050593          	addi	a1,a0,0
   181d8:	fe9412e3          	bne	s0,s1,181bc <__s2b+0xe8>
   181dc:	03813083          	ld	ra,56(sp)
   181e0:	03013403          	ld	s0,48(sp)
   181e4:	02813483          	ld	s1,40(sp)
   181e8:	02013903          	ld	s2,32(sp)
   181ec:	01813983          	ld	s3,24(sp)
   181f0:	01013a03          	ld	s4,16(sp)
   181f4:	00813a83          	ld	s5,8(sp)
   181f8:	00058513          	addi	a0,a1,0
   181fc:	04010113          	addi	sp,sp,64
   18200:	00008067          	jalr	zero,0(ra)
   18204:	00aa8413          	addi	s0,s5,10
   18208:	00078a13          	addi	s4,a5,0
   1820c:	f9dff06f          	jal	zero,181a8 <__s2b+0xd4>
   18210:	00000593          	addi	a1,zero,0
   18214:	f1dff06f          	jal	zero,18130 <__s2b+0x5c>
   18218:	0001e6b7          	lui	a3,0x1e
   1821c:	0001e537          	lui	a0,0x1e
   18220:	2e868693          	addi	a3,a3,744 # 1e2e8 <__clzdi2+0xd4>
   18224:	35850513          	addi	a0,a0,856 # 1e358 <__clzdi2+0x144>
   18228:	00000613          	addi	a2,zero,0
   1822c:	0d300593          	addi	a1,zero,211
   18230:	01613023          	sd	s6,0(sp)
   18234:	39d010ef          	jal	ra,19dd0 <__assert_func>

0000000000018238 <__hi0bits>:
   18238:	00050793          	addi	a5,a0,0
   1823c:	00010737          	lui	a4,0x10
   18240:	00000513          	addi	a0,zero,0
   18244:	00e7f663          	bgeu	a5,a4,18250 <__hi0bits+0x18>
   18248:	0107979b          	slliw	a5,a5,0x10
   1824c:	01000513          	addi	a0,zero,16
   18250:	01000737          	lui	a4,0x1000
   18254:	00e7f663          	bgeu	a5,a4,18260 <__hi0bits+0x28>
   18258:	0085051b          	addiw	a0,a0,8
   1825c:	0087979b          	slliw	a5,a5,0x8
   18260:	10000737          	lui	a4,0x10000
   18264:	00e7ee63          	bltu	a5,a4,18280 <__hi0bits+0x48>
   18268:	40000737          	lui	a4,0x40000
   1826c:	02e7fe63          	bgeu	a5,a4,182a8 <__hi0bits+0x70>
   18270:	02279713          	slli	a4,a5,0x22
   18274:	04074263          	blt	a4,zero,182b8 <__hi0bits+0x80>
   18278:	0035051b          	addiw	a0,a0,3
   1827c:	00008067          	jalr	zero,0(ra)
   18280:	0047971b          	slliw	a4,a5,0x4
   18284:	400006b7          	lui	a3,0x40000
   18288:	0045051b          	addiw	a0,a0,4
   1828c:	02d77063          	bgeu	a4,a3,182ac <__hi0bits+0x74>
   18290:	0067979b          	slliw	a5,a5,0x6
   18294:	0207c263          	blt	a5,zero,182b8 <__hi0bits+0x80>
   18298:	00d7f7b3          	and	a5,a5,a3
   1829c:	fc079ee3          	bne	a5,zero,18278 <__hi0bits+0x40>
   182a0:	02000513          	addi	a0,zero,32
   182a4:	00008067          	jalr	zero,0(ra)
   182a8:	00078713          	addi	a4,a5,0
   182ac:	fe074ce3          	blt	a4,zero,182a4 <__hi0bits+0x6c>
   182b0:	0015051b          	addiw	a0,a0,1
   182b4:	00008067          	jalr	zero,0(ra)
   182b8:	0025051b          	addiw	a0,a0,2
   182bc:	00008067          	jalr	zero,0(ra)

00000000000182c0 <__lo0bits>:
   182c0:	00052783          	lw	a5,0(a0)
   182c4:	0077f713          	andi	a4,a5,7
   182c8:	00078693          	addi	a3,a5,0
   182cc:	02070663          	beq	a4,zero,182f8 <__lo0bits+0x38>
   182d0:	0017f693          	andi	a3,a5,1
   182d4:	00000713          	addi	a4,zero,0
   182d8:	00069c63          	bne	a3,zero,182f0 <__lo0bits+0x30>
   182dc:	0027f713          	andi	a4,a5,2
   182e0:	0a070e63          	beq	a4,zero,1839c <__lo0bits+0xdc>
   182e4:	0017d79b          	srliw	a5,a5,0x1
   182e8:	00f52023          	sw	a5,0(a0)
   182ec:	00100713          	addi	a4,zero,1
   182f0:	00070513          	addi	a0,a4,0 # 40000000 <__BSS_END__+0x3ffdf3b8>
   182f4:	00008067          	jalr	zero,0(ra)
   182f8:	03079713          	slli	a4,a5,0x30
   182fc:	03075713          	srli	a4,a4,0x30
   18300:	04071463          	bne	a4,zero,18348 <__lo0bits+0x88>
   18304:	0107d79b          	srliw	a5,a5,0x10
   18308:	0ff7f693          	andi	a3,a5,255
   1830c:	01000713          	addi	a4,zero,16
   18310:	00069663          	bne	a3,zero,1831c <__lo0bits+0x5c>
   18314:	01800713          	addi	a4,zero,24
   18318:	0087d79b          	srliw	a5,a5,0x8
   1831c:	00f7f693          	andi	a3,a5,15
   18320:	06068263          	beq	a3,zero,18384 <__lo0bits+0xc4>
   18324:	0037f693          	andi	a3,a5,3
   18328:	04068063          	beq	a3,zero,18368 <__lo0bits+0xa8>
   1832c:	0017f693          	andi	a3,a5,1
   18330:	00069663          	bne	a3,zero,1833c <__lo0bits+0x7c>
   18334:	0017071b          	addiw	a4,a4,1
   18338:	0017d79b          	srliw	a5,a5,0x1
   1833c:	00f52023          	sw	a5,0(a0)
   18340:	00070513          	addi	a0,a4,0
   18344:	00008067          	jalr	zero,0(ra)
   18348:	0ff7f713          	andi	a4,a5,255
   1834c:	04070263          	beq	a4,zero,18390 <__lo0bits+0xd0>
   18350:	00f6f693          	andi	a3,a3,15
   18354:	06069663          	bne	a3,zero,183c0 <__lo0bits+0x100>
   18358:	00400713          	addi	a4,zero,4
   1835c:	0047d79b          	srliw	a5,a5,0x4
   18360:	0037f693          	andi	a3,a5,3
   18364:	fc0694e3          	bne	a3,zero,1832c <__lo0bits+0x6c>
   18368:	0027d69b          	srliw	a3,a5,0x2
   1836c:	0016f613          	andi	a2,a3,1
   18370:	04060063          	beq	a2,zero,183b0 <__lo0bits+0xf0>
   18374:	00068793          	addi	a5,a3,0 # 40000000 <__BSS_END__+0x3ffdf3b8>
   18378:	0027071b          	addiw	a4,a4,2
   1837c:	00f52023          	sw	a5,0(a0)
   18380:	fc1ff06f          	jal	zero,18340 <__lo0bits+0x80>
   18384:	0047071b          	addiw	a4,a4,4
   18388:	0047d79b          	srliw	a5,a5,0x4
   1838c:	fd5ff06f          	jal	zero,18360 <__lo0bits+0xa0>
   18390:	00800713          	addi	a4,zero,8
   18394:	0087d79b          	srliw	a5,a5,0x8
   18398:	f85ff06f          	jal	zero,1831c <__lo0bits+0x5c>
   1839c:	0027d79b          	srliw	a5,a5,0x2
   183a0:	00200713          	addi	a4,zero,2
   183a4:	00f52023          	sw	a5,0(a0)
   183a8:	00070513          	addi	a0,a4,0
   183ac:	00008067          	jalr	zero,0(ra)
   183b0:	0037d79b          	srliw	a5,a5,0x3
   183b4:	00079e63          	bne	a5,zero,183d0 <__lo0bits+0x110>
   183b8:	02000713          	addi	a4,zero,32
   183bc:	f35ff06f          	jal	zero,182f0 <__lo0bits+0x30>
   183c0:	0037d79b          	srliw	a5,a5,0x3
   183c4:	00300713          	addi	a4,zero,3
   183c8:	00f52023          	sw	a5,0(a0)
   183cc:	f75ff06f          	jal	zero,18340 <__lo0bits+0x80>
   183d0:	0037071b          	addiw	a4,a4,3
   183d4:	00f52023          	sw	a5,0(a0)
   183d8:	f69ff06f          	jal	zero,18340 <__lo0bits+0x80>

00000000000183dc <__i2b>:
   183dc:	06853783          	ld	a5,104(a0)
   183e0:	fe010113          	addi	sp,sp,-32
   183e4:	00113c23          	sd	ra,24(sp)
   183e8:	00050713          	addi	a4,a0,0
   183ec:	00058693          	addi	a3,a1,0
   183f0:	02078863          	beq	a5,zero,18420 <__i2b+0x44>
   183f4:	0087b503          	ld	a0,8(a5)
   183f8:	06050663          	beq	a0,zero,18464 <__i2b+0x88>
   183fc:	00053703          	ld	a4,0(a0)
   18400:	01813083          	ld	ra,24(sp)
   18404:	00e7b423          	sd	a4,8(a5)
   18408:	00100793          	addi	a5,zero,1
   1840c:	02079793          	slli	a5,a5,0x20
   18410:	00d52c23          	sw	a3,24(a0)
   18414:	00f53823          	sd	a5,16(a0)
   18418:	02010113          	addi	sp,sp,32
   1841c:	00008067          	jalr	zero,0(ra)
   18420:	00b13423          	sd	a1,8(sp)
   18424:	04100613          	addi	a2,zero,65
   18428:	00800593          	addi	a1,zero,8
   1842c:	00a13023          	sd	a0,0(sp)
   18430:	205010ef          	jal	ra,19e34 <_calloc_r>
   18434:	00013703          	ld	a4,0(sp)
   18438:	00813683          	ld	a3,8(sp)
   1843c:	00050793          	addi	a5,a0,0
   18440:	06a73423          	sd	a0,104(a4)
   18444:	fa0518e3          	bne	a0,zero,183f4 <__i2b+0x18>
   18448:	0001e6b7          	lui	a3,0x1e
   1844c:	0001e537          	lui	a0,0x1e
   18450:	2e868693          	addi	a3,a3,744 # 1e2e8 <__clzdi2+0xd4>
   18454:	35850513          	addi	a0,a0,856 # 1e358 <__clzdi2+0x144>
   18458:	00000613          	addi	a2,zero,0
   1845c:	14500593          	addi	a1,zero,325
   18460:	171010ef          	jal	ra,19dd0 <__assert_func>
   18464:	00070513          	addi	a0,a4,0
   18468:	02400613          	addi	a2,zero,36
   1846c:	00100593          	addi	a1,zero,1
   18470:	00d13023          	sd	a3,0(sp)
   18474:	1c1010ef          	jal	ra,19e34 <_calloc_r>
   18478:	fc0508e3          	beq	a0,zero,18448 <__i2b+0x6c>
   1847c:	00100793          	addi	a5,zero,1
   18480:	02179793          	slli	a5,a5,0x21
   18484:	00013683          	ld	a3,0(sp)
   18488:	00178793          	addi	a5,a5,1
   1848c:	01813083          	ld	ra,24(sp)
   18490:	00f53423          	sd	a5,8(a0)
   18494:	00100793          	addi	a5,zero,1
   18498:	02079793          	slli	a5,a5,0x20
   1849c:	00d52c23          	sw	a3,24(a0)
   184a0:	00f53823          	sd	a5,16(a0)
   184a4:	02010113          	addi	sp,sp,32
   184a8:	00008067          	jalr	zero,0(ra)

00000000000184ac <__multiply>:
   184ac:	f6010113          	addi	sp,sp,-160
   184b0:	08913423          	sd	s1,136(sp)
   184b4:	07613023          	sd	s6,96(sp)
   184b8:	01462483          	lw	s1,20(a2)
   184bc:	0145ab03          	lw	s6,20(a1)
   184c0:	08813823          	sd	s0,144(sp)
   184c4:	09213023          	sd	s2,128(sp)
   184c8:	08113c23          	sd	ra,152(sp)
   184cc:	07513423          	sd	s5,104(sp)
   184d0:	00058913          	addi	s2,a1,0
   184d4:	00060413          	addi	s0,a2,0
   184d8:	009b4c63          	blt	s6,s1,184f0 <__multiply+0x44>
   184dc:	00048713          	addi	a4,s1,0
   184e0:	00058413          	addi	s0,a1,0
   184e4:	000b0493          	addi	s1,s6,0
   184e8:	00060913          	addi	s2,a2,0
   184ec:	00070b13          	addi	s6,a4,0
   184f0:	00c42783          	lw	a5,12(s0)
   184f4:	0164873b          	addw	a4,s1,s6
   184f8:	02e13423          	sd	a4,40(sp)
   184fc:	00842583          	lw	a1,8(s0)
   18500:	00070a93          	addi	s5,a4,0
   18504:	00e7d463          	bge	a5,a4,1850c <__multiply+0x60>
   18508:	0015859b          	addiw	a1,a1,1
   1850c:	991ff0ef          	jal	ra,17e9c <_Balloc>
   18510:	00a13c23          	sd	a0,24(sp)
   18514:	07313c23          	sd	s3,120(sp)
   18518:	07413823          	sd	s4,112(sp)
   1851c:	24050263          	beq	a0,zero,18760 <__multiply+0x2b4>
   18520:	01813783          	ld	a5,24(sp)
   18524:	01878a13          	addi	s4,a5,24
   18528:	016487bb          	addw	a5,s1,s6
   1852c:	00279993          	slli	s3,a5,0x2
   18530:	013a09b3          	add	s3,s4,s3
   18534:	000a0793          	addi	a5,s4,0
   18538:	013a7863          	bgeu	s4,s3,18548 <__multiply+0x9c>
   1853c:	0007a023          	sw	zero,0(a5)
   18540:	00478793          	addi	a5,a5,4
   18544:	ff37ece3          	bltu	a5,s3,1853c <__multiply+0x90>
   18548:	01890913          	addi	s2,s2,24
   1854c:	002b1b13          	slli	s6,s6,0x2
   18550:	01690b33          	add	s6,s2,s6
   18554:	1b697c63          	bgeu	s2,s6,1870c <__multiply+0x260>
   18558:	01840793          	addi	a5,s0,24
   1855c:	00249493          	slli	s1,s1,0x2
   18560:	009784b3          	add	s1,a5,s1
   18564:	05713c23          	sd	s7,88(sp)
   18568:	01940b93          	addi	s7,s0,25
   1856c:	0174bbb3          	sltu	s7,s1,s7
   18570:	00f13423          	sd	a5,8(sp)
   18574:	40848433          	sub	s0,s1,s0
   18578:	001bc793          	xori	a5,s7,1
   1857c:	00f13823          	sd	a5,16(sp)
   18580:	fe740793          	addi	a5,s0,-25
   18584:	05813823          	sd	s8,80(sp)
   18588:	05913423          	sd	s9,72(sp)
   1858c:	05a13023          	sd	s10,64(sp)
   18590:	03b13c23          	sd	s11,56(sp)
   18594:	02f13023          	sd	a5,32(sp)
   18598:	0180006f          	jal	zero,185b0 <__multiply+0x104>
   1859c:	0104541b          	srliw	s0,s0,0x10
   185a0:	0a041e63          	bne	s0,zero,1865c <__multiply+0x1b0>
   185a4:	00490913          	addi	s2,s2,4
   185a8:	004a0a13          	addi	s4,s4,4
   185ac:	15697663          	bgeu	s2,s6,186f8 <__multiply+0x24c>
   185b0:	00092403          	lw	s0,0(s2)
   185b4:	03041d93          	slli	s11,s0,0x30
   185b8:	030ddd93          	srli	s11,s11,0x30
   185bc:	fe0d80e3          	beq	s11,zero,1859c <__multiply+0xf0>
   185c0:	00813c03          	ld	s8,8(sp)
   185c4:	000a0c93          	addi	s9,s4,0
   185c8:	00000b93          	addi	s7,zero,0
   185cc:	000c2d03          	lw	s10,0(s8)
   185d0:	000ca403          	lw	s0,0(s9)
   185d4:	000d8593          	addi	a1,s11,0
   185d8:	030d1513          	slli	a0,s10,0x30
   185dc:	03055513          	srli	a0,a0,0x30
   185e0:	311050ef          	jal	ra,1e0f0 <__muldi3>
   185e4:	03041893          	slli	a7,s0,0x30
   185e8:	0308d893          	srli	a7,a7,0x30
   185ec:	011507bb          	addw	a5,a0,a7
   185f0:	000d8593          	addi	a1,s11,0
   185f4:	010d551b          	srliw	a0,s10,0x10
   185f8:	01778bbb          	addw	s7,a5,s7
   185fc:	0104541b          	srliw	s0,s0,0x10
   18600:	2f1050ef          	jal	ra,1e0f0 <__muldi3>
   18604:	010bd71b          	srliw	a4,s7,0x10
   18608:	00a4043b          	addw	s0,s0,a0
   1860c:	030b9793          	slli	a5,s7,0x30
   18610:	0087073b          	addw	a4,a4,s0
   18614:	0307d793          	srli	a5,a5,0x30
   18618:	0107159b          	slliw	a1,a4,0x10
   1861c:	004c8c93          	addi	s9,s9,4
   18620:	00f5e7b3          	or	a5,a1,a5
   18624:	004c0c13          	addi	s8,s8,4
   18628:	fefcae23          	sw	a5,-4(s9)
   1862c:	01075b9b          	srliw	s7,a4,0x10
   18630:	f89c6ee3          	bltu	s8,s1,185cc <__multiply+0x120>
   18634:	01013703          	ld	a4,16(sp)
   18638:	00000793          	addi	a5,zero,0
   1863c:	00070663          	beq	a4,zero,18648 <__multiply+0x19c>
   18640:	02013783          	ld	a5,32(sp)
   18644:	ffc7f793          	andi	a5,a5,-4
   18648:	00fa07b3          	add	a5,s4,a5
   1864c:	0177a223          	sw	s7,4(a5)
   18650:	00092403          	lw	s0,0(s2)
   18654:	0104541b          	srliw	s0,s0,0x10
   18658:	f40406e3          	beq	s0,zero,185a4 <__multiply+0xf8>
   1865c:	000a2c83          	lw	s9,0(s4)
   18660:	00813b83          	ld	s7,8(sp)
   18664:	000a0c13          	addi	s8,s4,0
   18668:	000c8d93          	addi	s11,s9,0
   1866c:	00000d13          	addi	s10,zero,0
   18670:	000bd503          	lhu	a0,0(s7)
   18674:	00040593          	addi	a1,s0,0
   18678:	004c0c13          	addi	s8,s8,4
   1867c:	275050ef          	jal	ra,1e0f0 <__muldi3>
   18680:	010dd71b          	srliw	a4,s11,0x10
   18684:	01a5053b          	addw	a0,a0,s10
   18688:	00a70d3b          	addw	s10,a4,a0
   1868c:	030c9793          	slli	a5,s9,0x30
   18690:	010d159b          	slliw	a1,s10,0x10
   18694:	0307d793          	srli	a5,a5,0x30
   18698:	00f5e7b3          	or	a5,a1,a5
   1869c:	fefc2e23          	sw	a5,-4(s8)
   186a0:	002bd503          	lhu	a0,2(s7)
   186a4:	000c2d83          	lw	s11,0(s8)
   186a8:	00040593          	addi	a1,s0,0
   186ac:	245050ef          	jal	ra,1e0f0 <__muldi3>
   186b0:	030d9793          	slli	a5,s11,0x30
   186b4:	0307d793          	srli	a5,a5,0x30
   186b8:	010d571b          	srliw	a4,s10,0x10
   186bc:	00f507bb          	addw	a5,a0,a5
   186c0:	004b8b93          	addi	s7,s7,4
   186c4:	00f70cbb          	addw	s9,a4,a5
   186c8:	010cdd1b          	srliw	s10,s9,0x10
   186cc:	fa9be2e3          	bltu	s7,s1,18670 <__multiply+0x1c4>
   186d0:	01013783          	ld	a5,16(sp)
   186d4:	00000713          	addi	a4,zero,0
   186d8:	00078663          	beq	a5,zero,186e4 <__multiply+0x238>
   186dc:	02013783          	ld	a5,32(sp)
   186e0:	ffc7f713          	andi	a4,a5,-4
   186e4:	00ea0733          	add	a4,s4,a4
   186e8:	01972223          	sw	s9,4(a4)
   186ec:	00490913          	addi	s2,s2,4
   186f0:	004a0a13          	addi	s4,s4,4
   186f4:	eb696ee3          	bltu	s2,s6,185b0 <__multiply+0x104>
   186f8:	05813b83          	ld	s7,88(sp)
   186fc:	05013c03          	ld	s8,80(sp)
   18700:	04813c83          	ld	s9,72(sp)
   18704:	04013d03          	ld	s10,64(sp)
   18708:	03813d83          	ld	s11,56(sp)
   1870c:	02813783          	ld	a5,40(sp)
   18710:	00f04863          	blt	zero,a5,18720 <__multiply+0x274>
   18714:	0180006f          	jal	zero,1872c <__multiply+0x280>
   18718:	fffa8a9b          	addiw	s5,s5,-1
   1871c:	000a8863          	beq	s5,zero,1872c <__multiply+0x280>
   18720:	ffc9a783          	lw	a5,-4(s3)
   18724:	ffc98993          	addi	s3,s3,-4
   18728:	fe0788e3          	beq	a5,zero,18718 <__multiply+0x26c>
   1872c:	01813783          	ld	a5,24(sp)
   18730:	09813083          	ld	ra,152(sp)
   18734:	09013403          	ld	s0,144(sp)
   18738:	0157aa23          	sw	s5,20(a5)
   1873c:	07813983          	ld	s3,120(sp)
   18740:	07013a03          	ld	s4,112(sp)
   18744:	08813483          	ld	s1,136(sp)
   18748:	08013903          	ld	s2,128(sp)
   1874c:	06813a83          	ld	s5,104(sp)
   18750:	06013b03          	ld	s6,96(sp)
   18754:	00078513          	addi	a0,a5,0
   18758:	0a010113          	addi	sp,sp,160
   1875c:	00008067          	jalr	zero,0(ra)
   18760:	0001e6b7          	lui	a3,0x1e
   18764:	0001e537          	lui	a0,0x1e
   18768:	2e868693          	addi	a3,a3,744 # 1e2e8 <__clzdi2+0xd4>
   1876c:	35850513          	addi	a0,a0,856 # 1e358 <__clzdi2+0x144>
   18770:	00000613          	addi	a2,zero,0
   18774:	16200593          	addi	a1,zero,354
   18778:	05713c23          	sd	s7,88(sp)
   1877c:	05813823          	sd	s8,80(sp)
   18780:	05913423          	sd	s9,72(sp)
   18784:	05a13023          	sd	s10,64(sp)
   18788:	03b13c23          	sd	s11,56(sp)
   1878c:	644010ef          	jal	ra,19dd0 <__assert_func>

0000000000018790 <__pow5mult>:
   18790:	fd010113          	addi	sp,sp,-48
   18794:	02813023          	sd	s0,32(sp)
   18798:	01213823          	sd	s2,16(sp)
   1879c:	01313423          	sd	s3,8(sp)
   187a0:	02113423          	sd	ra,40(sp)
   187a4:	00367793          	andi	a5,a2,3
   187a8:	00060413          	addi	s0,a2,0
   187ac:	00050993          	addi	s3,a0,0
   187b0:	00058913          	addi	s2,a1,0
   187b4:	0c079a63          	bne	a5,zero,18888 <__pow5mult+0xf8>
   187b8:	4024541b          	sraiw	s0,s0,0x2
   187bc:	0a040863          	beq	s0,zero,1886c <__pow5mult+0xdc>
   187c0:	00913c23          	sd	s1,24(sp)
   187c4:	0609b483          	ld	s1,96(s3)
   187c8:	0e048463          	beq	s1,zero,188b0 <__pow5mult+0x120>
   187cc:	00147793          	andi	a5,s0,1
   187d0:	4014541b          	sraiw	s0,s0,0x1
   187d4:	00079e63          	bne	a5,zero,187f0 <__pow5mult+0x60>
   187d8:	0004b503          	ld	a0,0(s1)
   187dc:	04050a63          	beq	a0,zero,18830 <__pow5mult+0xa0>
   187e0:	00050493          	addi	s1,a0,0
   187e4:	00147793          	andi	a5,s0,1
   187e8:	4014541b          	sraiw	s0,s0,0x1
   187ec:	fe0786e3          	beq	a5,zero,187d8 <__pow5mult+0x48>
   187f0:	00048613          	addi	a2,s1,0
   187f4:	00090593          	addi	a1,s2,0
   187f8:	00098513          	addi	a0,s3,0
   187fc:	cb1ff0ef          	jal	ra,184ac <__multiply>
   18800:	02090063          	beq	s2,zero,18820 <__pow5mult+0x90>
   18804:	00892703          	lw	a4,8(s2)
   18808:	0689b783          	ld	a5,104(s3)
   1880c:	00371713          	slli	a4,a4,0x3
   18810:	00e787b3          	add	a5,a5,a4
   18814:	0007b703          	ld	a4,0(a5)
   18818:	00e93023          	sd	a4,0(s2)
   1881c:	0127b023          	sd	s2,0(a5)
   18820:	02040863          	beq	s0,zero,18850 <__pow5mult+0xc0>
   18824:	00050913          	addi	s2,a0,0
   18828:	0004b503          	ld	a0,0(s1)
   1882c:	fa051ae3          	bne	a0,zero,187e0 <__pow5mult+0x50>
   18830:	00048613          	addi	a2,s1,0
   18834:	00048593          	addi	a1,s1,0
   18838:	00098513          	addi	a0,s3,0
   1883c:	c71ff0ef          	jal	ra,184ac <__multiply>
   18840:	00a4b023          	sd	a0,0(s1)
   18844:	00053023          	sd	zero,0(a0)
   18848:	00050493          	addi	s1,a0,0
   1884c:	f99ff06f          	jal	zero,187e4 <__pow5mult+0x54>
   18850:	02813083          	ld	ra,40(sp)
   18854:	02013403          	ld	s0,32(sp)
   18858:	01813483          	ld	s1,24(sp)
   1885c:	01013903          	ld	s2,16(sp)
   18860:	00813983          	ld	s3,8(sp)
   18864:	03010113          	addi	sp,sp,48
   18868:	00008067          	jalr	zero,0(ra)
   1886c:	02813083          	ld	ra,40(sp)
   18870:	02013403          	ld	s0,32(sp)
   18874:	00813983          	ld	s3,8(sp)
   18878:	00090513          	addi	a0,s2,0
   1887c:	01013903          	ld	s2,16(sp)
   18880:	03010113          	addi	sp,sp,48
   18884:	00008067          	jalr	zero,0(ra)
   18888:	fff7879b          	addiw	a5,a5,-1
   1888c:	0001e737          	lui	a4,0x1e
   18890:	5b870713          	addi	a4,a4,1464 # 1e5b8 <p05.0>
   18894:	00279793          	slli	a5,a5,0x2
   18898:	00f707b3          	add	a5,a4,a5
   1889c:	0007a603          	lw	a2,0(a5)
   188a0:	00000693          	addi	a3,zero,0
   188a4:	ec8ff0ef          	jal	ra,17f6c <__multadd>
   188a8:	00050913          	addi	s2,a0,0
   188ac:	f0dff06f          	jal	zero,187b8 <__pow5mult+0x28>
   188b0:	00100593          	addi	a1,zero,1
   188b4:	00098513          	addi	a0,s3,0
   188b8:	de4ff0ef          	jal	ra,17e9c <_Balloc>
   188bc:	00050493          	addi	s1,a0,0
   188c0:	02050063          	beq	a0,zero,188e0 <__pow5mult+0x150>
   188c4:	27100713          	addi	a4,zero,625
   188c8:	00100793          	addi	a5,zero,1
   188cc:	00e52c23          	sw	a4,24(a0)
   188d0:	00f52a23          	sw	a5,20(a0)
   188d4:	06a9b023          	sd	a0,96(s3)
   188d8:	00053023          	sd	zero,0(a0)
   188dc:	ef1ff06f          	jal	zero,187cc <__pow5mult+0x3c>
   188e0:	0001e6b7          	lui	a3,0x1e
   188e4:	0001e537          	lui	a0,0x1e
   188e8:	2e868693          	addi	a3,a3,744 # 1e2e8 <__clzdi2+0xd4>
   188ec:	35850513          	addi	a0,a0,856 # 1e358 <__clzdi2+0x144>
   188f0:	00000613          	addi	a2,zero,0
   188f4:	14500593          	addi	a1,zero,325
   188f8:	4d8010ef          	jal	ra,19dd0 <__assert_func>

00000000000188fc <__lshift>:
   188fc:	fc010113          	addi	sp,sp,-64
   18900:	02913423          	sd	s1,40(sp)
   18904:	0145a483          	lw	s1,20(a1)
   18908:	00c5a783          	lw	a5,12(a1)
   1890c:	01413823          	sd	s4,16(sp)
   18910:	40565a1b          	sraiw	s4,a2,0x5
   18914:	014484bb          	addw	s1,s1,s4
   18918:	02813823          	sd	s0,48(sp)
   1891c:	03213023          	sd	s2,32(sp)
   18920:	01313c23          	sd	s3,24(sp)
   18924:	0014871b          	addiw	a4,s1,1
   18928:	02113c23          	sd	ra,56(sp)
   1892c:	00058413          	addi	s0,a1,0
   18930:	00050913          	addi	s2,a0,0
   18934:	0085a583          	lw	a1,8(a1)
   18938:	00070993          	addi	s3,a4,0
   1893c:	00e7d863          	bge	a5,a4,1894c <__lshift+0x50>
   18940:	0017979b          	slliw	a5,a5,0x1
   18944:	0015859b          	addiw	a1,a1,1
   18948:	fee7cce3          	blt	a5,a4,18940 <__lshift+0x44>
   1894c:	00090513          	addi	a0,s2,0
   18950:	00c13423          	sd	a2,8(sp)
   18954:	d48ff0ef          	jal	ra,17e9c <_Balloc>
   18958:	00813603          	ld	a2,8(sp)
   1895c:	10050a63          	beq	a0,zero,18a70 <__lshift+0x174>
   18960:	01850593          	addi	a1,a0,24
   18964:	03405663          	bge	zero,s4,18990 <__lshift+0x94>
   18968:	006a071b          	addiw	a4,s4,6
   1896c:	00271713          	slli	a4,a4,0x2
   18970:	00e50733          	add	a4,a0,a4
   18974:	00058793          	addi	a5,a1,0
   18978:	00478793          	addi	a5,a5,4
   1897c:	fe07ae23          	sw	zero,-4(a5)
   18980:	fef71ce3          	bne	a4,a5,18978 <__lshift+0x7c>
   18984:	020a1793          	slli	a5,s4,0x20
   18988:	01e7da13          	srli	s4,a5,0x1e
   1898c:	014585b3          	add	a1,a1,s4
   18990:	01442803          	lw	a6,20(s0)
   18994:	01840793          	addi	a5,s0,24
   18998:	01f67613          	andi	a2,a2,31
   1899c:	00281813          	slli	a6,a6,0x2
   189a0:	01078833          	add	a6,a5,a6
   189a4:	0a060063          	beq	a2,zero,18a44 <__lshift+0x148>
   189a8:	02000313          	addi	t1,zero,32
   189ac:	40c3033b          	subw	t1,t1,a2
   189b0:	00058893          	addi	a7,a1,0
   189b4:	00000693          	addi	a3,zero,0
   189b8:	0007a703          	lw	a4,0(a5)
   189bc:	00488893          	addi	a7,a7,4
   189c0:	00478793          	addi	a5,a5,4
   189c4:	00c7173b          	sllw	a4,a4,a2
   189c8:	00d76733          	or	a4,a4,a3
   189cc:	fee8ae23          	sw	a4,-4(a7)
   189d0:	ffc7a683          	lw	a3,-4(a5)
   189d4:	0066d6bb          	srlw	a3,a3,t1
   189d8:	ff07e0e3          	bltu	a5,a6,189b8 <__lshift+0xbc>
   189dc:	01940793          	addi	a5,s0,25
   189e0:	00000713          	addi	a4,zero,0
   189e4:	00f86863          	bltu	a6,a5,189f4 <__lshift+0xf8>
   189e8:	40880833          	sub	a6,a6,s0
   189ec:	fe780813          	addi	a6,a6,-25
   189f0:	ffc87713          	andi	a4,a6,-4
   189f4:	00e585b3          	add	a1,a1,a4
   189f8:	00d5a223          	sw	a3,4(a1)
   189fc:	00069463          	bne	a3,zero,18a04 <__lshift+0x108>
   18a00:	00048993          	addi	s3,s1,0
   18a04:	00842703          	lw	a4,8(s0)
   18a08:	06893783          	ld	a5,104(s2)
   18a0c:	01352a23          	sw	s3,20(a0)
   18a10:	00371713          	slli	a4,a4,0x3
   18a14:	00e787b3          	add	a5,a5,a4
   18a18:	0007b703          	ld	a4,0(a5)
   18a1c:	03813083          	ld	ra,56(sp)
   18a20:	02813483          	ld	s1,40(sp)
   18a24:	00e43023          	sd	a4,0(s0)
   18a28:	0087b023          	sd	s0,0(a5)
   18a2c:	03013403          	ld	s0,48(sp)
   18a30:	02013903          	ld	s2,32(sp)
   18a34:	01813983          	ld	s3,24(sp)
   18a38:	01013a03          	ld	s4,16(sp)
   18a3c:	04010113          	addi	sp,sp,64
   18a40:	00008067          	jalr	zero,0(ra)
   18a44:	0007a703          	lw	a4,0(a5)
   18a48:	00478793          	addi	a5,a5,4
   18a4c:	00458593          	addi	a1,a1,4
   18a50:	fee5ae23          	sw	a4,-4(a1)
   18a54:	fb07f6e3          	bgeu	a5,a6,18a00 <__lshift+0x104>
   18a58:	0007a703          	lw	a4,0(a5)
   18a5c:	00478793          	addi	a5,a5,4
   18a60:	00458593          	addi	a1,a1,4
   18a64:	fee5ae23          	sw	a4,-4(a1)
   18a68:	fd07eee3          	bltu	a5,a6,18a44 <__lshift+0x148>
   18a6c:	f95ff06f          	jal	zero,18a00 <__lshift+0x104>
   18a70:	0001e6b7          	lui	a3,0x1e
   18a74:	0001e537          	lui	a0,0x1e
   18a78:	2e868693          	addi	a3,a3,744 # 1e2e8 <__clzdi2+0xd4>
   18a7c:	35850513          	addi	a0,a0,856 # 1e358 <__clzdi2+0x144>
   18a80:	00000613          	addi	a2,zero,0
   18a84:	1de00593          	addi	a1,zero,478
   18a88:	348010ef          	jal	ra,19dd0 <__assert_func>

0000000000018a8c <__mcmp>:
   18a8c:	0145a783          	lw	a5,20(a1)
   18a90:	00050613          	addi	a2,a0,0
   18a94:	01452503          	lw	a0,20(a0)
   18a98:	40f5053b          	subw	a0,a0,a5
   18a9c:	04051263          	bne	a0,zero,18ae0 <__mcmp+0x54>
   18aa0:	00279793          	slli	a5,a5,0x2
   18aa4:	01860613          	addi	a2,a2,24
   18aa8:	01858593          	addi	a1,a1,24
   18aac:	00f585b3          	add	a1,a1,a5
   18ab0:	00f607b3          	add	a5,a2,a5
   18ab4:	0080006f          	jal	zero,18abc <__mcmp+0x30>
   18ab8:	02f67463          	bgeu	a2,a5,18ae0 <__mcmp+0x54>
   18abc:	ffc7a683          	lw	a3,-4(a5)
   18ac0:	ffc5a703          	lw	a4,-4(a1)
   18ac4:	ffc78793          	addi	a5,a5,-4
   18ac8:	ffc58593          	addi	a1,a1,-4
   18acc:	fee686e3          	beq	a3,a4,18ab8 <__mcmp+0x2c>
   18ad0:	00100513          	addi	a0,zero,1
   18ad4:	00e6f663          	bgeu	a3,a4,18ae0 <__mcmp+0x54>
   18ad8:	fff00513          	addi	a0,zero,-1
   18adc:	00008067          	jalr	zero,0(ra)
   18ae0:	00008067          	jalr	zero,0(ra)

0000000000018ae4 <__mdiff>:
   18ae4:	0145a883          	lw	a7,20(a1)
   18ae8:	01462783          	lw	a5,20(a2)
   18aec:	fd010113          	addi	sp,sp,-48
   18af0:	02113423          	sd	ra,40(sp)
   18af4:	40f888bb          	subw	a7,a7,a5
   18af8:	00058f13          	addi	t5,a1,0
   18afc:	18089863          	bne	a7,zero,18c8c <__mdiff+0x1a8>
   18b00:	00279693          	slli	a3,a5,0x2
   18b04:	01858813          	addi	a6,a1,24
   18b08:	01860713          	addi	a4,a2,24
   18b0c:	00d807b3          	add	a5,a6,a3
   18b10:	00d70733          	add	a4,a4,a3
   18b14:	0080006f          	jal	zero,18b1c <__mdiff+0x38>
   18b18:	1af87263          	bgeu	a6,a5,18cbc <__mdiff+0x1d8>
   18b1c:	ffc7a583          	lw	a1,-4(a5)
   18b20:	ffc72683          	lw	a3,-4(a4)
   18b24:	ffc78793          	addi	a5,a5,-4
   18b28:	ffc70713          	addi	a4,a4,-4
   18b2c:	fed586e3          	beq	a1,a3,18b18 <__mdiff+0x34>
   18b30:	1ad5f863          	bgeu	a1,a3,18ce0 <__mdiff+0x1fc>
   18b34:	00100893          	addi	a7,zero,1
   18b38:	00862583          	lw	a1,8(a2)
   18b3c:	01e13c23          	sd	t5,24(sp)
   18b40:	01113823          	sd	a7,16(sp)
   18b44:	00c13423          	sd	a2,8(sp)
   18b48:	b54ff0ef          	jal	ra,17e9c <_Balloc>
   18b4c:	00813603          	ld	a2,8(sp)
   18b50:	01013883          	ld	a7,16(sp)
   18b54:	01813f03          	ld	t5,24(sp)
   18b58:	1a050063          	beq	a0,zero,18cf8 <__mdiff+0x214>
   18b5c:	014f2f83          	lw	t6,20(t5)
   18b60:	01152823          	sw	a7,16(a0)
   18b64:	01462883          	lw	a7,20(a2)
   18b68:	01860293          	addi	t0,a2,24
   18b6c:	002f9f93          	slli	t6,t6,0x2
   18b70:	00289813          	slli	a6,a7,0x2
   18b74:	018f0313          	addi	t1,t5,24
   18b78:	01850393          	addi	t2,a0,24
   18b7c:	01028833          	add	a6,t0,a6
   18b80:	01f30fb3          	add	t6,t1,t6
   18b84:	00028e93          	addi	t4,t0,0
   18b88:	00038e13          	addi	t3,t2,0
   18b8c:	00000793          	addi	a5,zero,0
   18b90:	000ea683          	lw	a3,0(t4)
   18b94:	00032603          	lw	a2,0(t1)
   18b98:	004e0e13          	addi	t3,t3,4
   18b9c:	03069713          	slli	a4,a3,0x30
   18ba0:	03061593          	slli	a1,a2,0x30
   18ba4:	03075713          	srli	a4,a4,0x30
   18ba8:	0305d593          	srli	a1,a1,0x30
   18bac:	40b7073b          	subw	a4,a4,a1
   18bb0:	00f7073b          	addw	a4,a4,a5
   18bb4:	0106d69b          	srliw	a3,a3,0x10
   18bb8:	0106561b          	srliw	a2,a2,0x10
   18bbc:	40c686bb          	subw	a3,a3,a2
   18bc0:	4107579b          	sraiw	a5,a4,0x10
   18bc4:	00d787bb          	addw	a5,a5,a3
   18bc8:	03071713          	slli	a4,a4,0x30
   18bcc:	0107969b          	slliw	a3,a5,0x10
   18bd0:	03075713          	srli	a4,a4,0x30
   18bd4:	00e6e6b3          	or	a3,a3,a4
   18bd8:	00430313          	addi	t1,t1,4
   18bdc:	fede2e23          	sw	a3,-4(t3)
   18be0:	004e8e93          	addi	t4,t4,4
   18be4:	4107d79b          	sraiw	a5,a5,0x10
   18be8:	fbf364e3          	bltu	t1,t6,18b90 <__mdiff+0xac>
   18bec:	019f0613          	addi	a2,t5,25
   18bf0:	00000713          	addi	a4,zero,0
   18bf4:	0acffc63          	bgeu	t6,a2,18cac <__mdiff+0x1c8>
   18bf8:	00e28eb3          	add	t4,t0,a4
   18bfc:	004e8e93          	addi	t4,t4,4
   18c00:	00770733          	add	a4,a4,t2
   18c04:	40538e33          	sub	t3,t2,t0
   18c08:	000e8613          	addi	a2,t4,0
   18c0c:	00470f13          	addi	t5,a4,4
   18c10:	0f0ef063          	bgeu	t4,a6,18cf0 <__mdiff+0x20c>
   18c14:	00062703          	lw	a4,0(a2)
   18c18:	01c60333          	add	t1,a2,t3
   18c1c:	00460613          	addi	a2,a2,4
   18c20:	03071693          	slli	a3,a4,0x30
   18c24:	0306d693          	srli	a3,a3,0x30
   18c28:	00f705bb          	addw	a1,a4,a5
   18c2c:	00f687bb          	addw	a5,a3,a5
   18c30:	4107d79b          	sraiw	a5,a5,0x10
   18c34:	0107571b          	srliw	a4,a4,0x10
   18c38:	00f7073b          	addw	a4,a4,a5
   18c3c:	03059593          	slli	a1,a1,0x30
   18c40:	0305d593          	srli	a1,a1,0x30
   18c44:	0107169b          	slliw	a3,a4,0x10
   18c48:	00b6e6b3          	or	a3,a3,a1
   18c4c:	00d32023          	sw	a3,0(t1)
   18c50:	4107579b          	sraiw	a5,a4,0x10
   18c54:	fd0660e3          	bltu	a2,a6,18c14 <__mdiff+0x130>
   18c58:	fff80793          	addi	a5,a6,-1
   18c5c:	41d787b3          	sub	a5,a5,t4
   18c60:	ffc7f793          	andi	a5,a5,-4
   18c64:	01e787b3          	add	a5,a5,t5
   18c68:	00069a63          	bne	a3,zero,18c7c <__mdiff+0x198>
   18c6c:	ffc7a703          	lw	a4,-4(a5)
   18c70:	ffc78793          	addi	a5,a5,-4
   18c74:	fff8889b          	addiw	a7,a7,-1
   18c78:	fe070ae3          	beq	a4,zero,18c6c <__mdiff+0x188>
   18c7c:	02813083          	ld	ra,40(sp)
   18c80:	01152a23          	sw	a7,20(a0)
   18c84:	03010113          	addi	sp,sp,48
   18c88:	00008067          	jalr	zero,0(ra)
   18c8c:	00088713          	addi	a4,a7,0
   18c90:	00100893          	addi	a7,zero,1
   18c94:	ea0742e3          	blt	a4,zero,18b38 <__mdiff+0x54>
   18c98:	00060793          	addi	a5,a2,0
   18c9c:	00000893          	addi	a7,zero,0
   18ca0:	00058613          	addi	a2,a1,0
   18ca4:	00078f13          	addi	t5,a5,0
   18ca8:	e91ff06f          	jal	zero,18b38 <__mdiff+0x54>
   18cac:	41ef8fb3          	sub	t6,t6,t5
   18cb0:	fe7f8f93          	addi	t6,t6,-25
   18cb4:	ffcff713          	andi	a4,t6,-4
   18cb8:	f41ff06f          	jal	zero,18bf8 <__mdiff+0x114>
   18cbc:	00000593          	addi	a1,zero,0
   18cc0:	9dcff0ef          	jal	ra,17e9c <_Balloc>
   18cc4:	04050863          	beq	a0,zero,18d14 <__mdiff+0x230>
   18cc8:	02813083          	ld	ra,40(sp)
   18ccc:	00100793          	addi	a5,zero,1
   18cd0:	00052c23          	sw	zero,24(a0)
   18cd4:	00f52a23          	sw	a5,20(a0)
   18cd8:	03010113          	addi	sp,sp,48
   18cdc:	00008067          	jalr	zero,0(ra)
   18ce0:	00060793          	addi	a5,a2,0
   18ce4:	000f0613          	addi	a2,t5,0
   18ce8:	00078f13          	addi	t5,a5,0
   18cec:	e4dff06f          	jal	zero,18b38 <__mdiff+0x54>
   18cf0:	00070793          	addi	a5,a4,0
   18cf4:	f75ff06f          	jal	zero,18c68 <__mdiff+0x184>
   18cf8:	0001e6b7          	lui	a3,0x1e
   18cfc:	0001e537          	lui	a0,0x1e
   18d00:	2e868693          	addi	a3,a3,744 # 1e2e8 <__clzdi2+0xd4>
   18d04:	35850513          	addi	a0,a0,856 # 1e358 <__clzdi2+0x144>
   18d08:	00000613          	addi	a2,zero,0
   18d0c:	24500593          	addi	a1,zero,581
   18d10:	0c0010ef          	jal	ra,19dd0 <__assert_func>
   18d14:	0001e6b7          	lui	a3,0x1e
   18d18:	0001e537          	lui	a0,0x1e
   18d1c:	2e868693          	addi	a3,a3,744 # 1e2e8 <__clzdi2+0xd4>
   18d20:	35850513          	addi	a0,a0,856 # 1e358 <__clzdi2+0x144>
   18d24:	00000613          	addi	a2,zero,0
   18d28:	23700593          	addi	a1,zero,567
   18d2c:	0a4010ef          	jal	ra,19dd0 <__assert_func>

0000000000018d30 <__ulp>:
   18d30:	02055793          	srli	a5,a0,0x20
   18d34:	7ff006b7          	lui	a3,0x7ff00
   18d38:	fcc00737          	lui	a4,0xfcc00
   18d3c:	00d7f7b3          	and	a5,a5,a3
   18d40:	00e787bb          	addw	a5,a5,a4
   18d44:	00000513          	addi	a0,zero,0
   18d48:	00f05c63          	bge	zero,a5,18d60 <__ulp+0x30>
   18d4c:	02051513          	slli	a0,a0,0x20
   18d50:	02079793          	slli	a5,a5,0x20
   18d54:	02055513          	srli	a0,a0,0x20
   18d58:	00a7e533          	or	a0,a5,a0
   18d5c:	00008067          	jalr	zero,0(ra)
   18d60:	40f007bb          	subw	a5,zero,a5
   18d64:	4147d79b          	sraiw	a5,a5,0x14
   18d68:	01300713          	addi	a4,zero,19
   18d6c:	02f74263          	blt	a4,a5,18d90 <__ulp+0x60>
   18d70:	00080737          	lui	a4,0x80
   18d74:	00000513          	addi	a0,zero,0
   18d78:	40f757bb          	sraw	a5,a4,a5
   18d7c:	02051513          	slli	a0,a0,0x20
   18d80:	02079793          	slli	a5,a5,0x20
   18d84:	02055513          	srli	a0,a0,0x20
   18d88:	00a7e533          	or	a0,a5,a0
   18d8c:	00008067          	jalr	zero,0(ra)
   18d90:	fec7879b          	addiw	a5,a5,-20
   18d94:	01e00713          	addi	a4,zero,30
   18d98:	00100513          	addi	a0,zero,1
   18d9c:	00f74663          	blt	a4,a5,18da8 <__ulp+0x78>
   18da0:	80000537          	lui	a0,0x80000
   18da4:	00f5553b          	srlw	a0,a0,a5
   18da8:	00000793          	addi	a5,zero,0
   18dac:	02051513          	slli	a0,a0,0x20
   18db0:	02079793          	slli	a5,a5,0x20
   18db4:	02055513          	srli	a0,a0,0x20
   18db8:	00a7e533          	or	a0,a5,a0
   18dbc:	00008067          	jalr	zero,0(ra)

0000000000018dc0 <__b2d>:
   18dc0:	fc010113          	addi	sp,sp,-64
   18dc4:	02813823          	sd	s0,48(sp)
   18dc8:	01452403          	lw	s0,20(a0) # ffffffff80000014 <__BSS_END__+0xffffffff7ffdf3cc>
   18dcc:	03213023          	sd	s2,32(sp)
   18dd0:	01850913          	addi	s2,a0,24
   18dd4:	00241413          	slli	s0,s0,0x2
   18dd8:	00890433          	add	s0,s2,s0
   18ddc:	02913423          	sd	s1,40(sp)
   18de0:	ffc42483          	lw	s1,-4(s0)
   18de4:	01313c23          	sd	s3,24(sp)
   18de8:	00b13423          	sd	a1,8(sp)
   18dec:	00048513          	addi	a0,s1,0
   18df0:	02113c23          	sd	ra,56(sp)
   18df4:	c44ff0ef          	jal	ra,18238 <__hi0bits>
   18df8:	00813583          	ld	a1,8(sp)
   18dfc:	02000793          	addi	a5,zero,32
   18e00:	40a7873b          	subw	a4,a5,a0
   18e04:	00e5a023          	sw	a4,0(a1)
   18e08:	00a00713          	addi	a4,zero,10
   18e0c:	ffc40993          	addi	s3,s0,-4
   18e10:	08a75c63          	bge	a4,a0,18ea8 <__b2d+0xe8>
   18e14:	ff55061b          	addiw	a2,a0,-11
   18e18:	05397263          	bgeu	s2,s3,18e5c <__b2d+0x9c>
   18e1c:	ff842703          	lw	a4,-8(s0)
   18e20:	04060463          	beq	a2,zero,18e68 <__b2d+0xa8>
   18e24:	40c786bb          	subw	a3,a5,a2
   18e28:	00d757bb          	srlw	a5,a4,a3
   18e2c:	00c494bb          	sllw	s1,s1,a2
   18e30:	00f4e4b3          	or	s1,s1,a5
   18e34:	3ff007b7          	lui	a5,0x3ff00
   18e38:	00f4e4b3          	or	s1,s1,a5
   18e3c:	00c7173b          	sllw	a4,a4,a2
   18e40:	ff840613          	addi	a2,s0,-8
   18e44:	02049793          	slli	a5,s1,0x20
   18e48:	02c97663          	bgeu	s2,a2,18e74 <__b2d+0xb4>
   18e4c:	ff442603          	lw	a2,-12(s0)
   18e50:	00d656bb          	srlw	a3,a2,a3
   18e54:	00e6e733          	or	a4,a3,a4
   18e58:	01c0006f          	jal	zero,18e74 <__b2d+0xb4>
   18e5c:	00b00793          	addi	a5,zero,11
   18e60:	00000713          	addi	a4,zero,0
   18e64:	06f51e63          	bne	a0,a5,18ee0 <__b2d+0x120>
   18e68:	3ff007b7          	lui	a5,0x3ff00
   18e6c:	00f4e4b3          	or	s1,s1,a5
   18e70:	02049793          	slli	a5,s1,0x20
   18e74:	03813083          	ld	ra,56(sp)
   18e78:	03013403          	ld	s0,48(sp)
   18e7c:	02071713          	slli	a4,a4,0x20
   18e80:	0207d793          	srli	a5,a5,0x20
   18e84:	02075713          	srli	a4,a4,0x20
   18e88:	02079793          	slli	a5,a5,0x20
   18e8c:	00e7e7b3          	or	a5,a5,a4
   18e90:	02813483          	ld	s1,40(sp)
   18e94:	02013903          	ld	s2,32(sp)
   18e98:	01813983          	ld	s3,24(sp)
   18e9c:	00078513          	addi	a0,a5,0 # 3ff00000 <__BSS_END__+0x3fedf3b8>
   18ea0:	04010113          	addi	sp,sp,64
   18ea4:	00008067          	jalr	zero,0(ra)
   18ea8:	00b00693          	addi	a3,zero,11
   18eac:	40a686bb          	subw	a3,a3,a0
   18eb0:	3ff00737          	lui	a4,0x3ff00
   18eb4:	00d4d7bb          	srlw	a5,s1,a3
   18eb8:	00e7e7b3          	or	a5,a5,a4
   18ebc:	02079793          	slli	a5,a5,0x20
   18ec0:	00000713          	addi	a4,zero,0
   18ec4:	01397663          	bgeu	s2,s3,18ed0 <__b2d+0x110>
   18ec8:	ff842703          	lw	a4,-8(s0)
   18ecc:	00d7573b          	srlw	a4,a4,a3
   18ed0:	0155051b          	addiw	a0,a0,21
   18ed4:	00a494bb          	sllw	s1,s1,a0
   18ed8:	00e4e733          	or	a4,s1,a4
   18edc:	f99ff06f          	jal	zero,18e74 <__b2d+0xb4>
   18ee0:	3ff007b7          	lui	a5,0x3ff00
   18ee4:	00c494bb          	sllw	s1,s1,a2
   18ee8:	00f4e4b3          	or	s1,s1,a5
   18eec:	02049793          	slli	a5,s1,0x20
   18ef0:	00000713          	addi	a4,zero,0
   18ef4:	f81ff06f          	jal	zero,18e74 <__b2d+0xb4>

0000000000018ef8 <__d2b>:
   18ef8:	fc010113          	addi	sp,sp,-64
   18efc:	02813823          	sd	s0,48(sp)
   18f00:	00058413          	addi	s0,a1,0
   18f04:	00100593          	addi	a1,zero,1
   18f08:	01313c23          	sd	s3,24(sp)
   18f0c:	01413823          	sd	s4,16(sp)
   18f10:	02113c23          	sd	ra,56(sp)
   18f14:	02913423          	sd	s1,40(sp)
   18f18:	03213023          	sd	s2,32(sp)
   18f1c:	00060a13          	addi	s4,a2,0
   18f20:	00068993          	addi	s3,a3,0 # 7ff00000 <__BSS_END__+0x7fedf3b8>
   18f24:	f79fe0ef          	jal	ra,17e9c <_Balloc>
   18f28:	0e050e63          	beq	a0,zero,19024 <__d2b+0x12c>
   18f2c:	02045793          	srli	a5,s0,0x20
   18f30:	00100737          	lui	a4,0x100
   18f34:	0147d49b          	srliw	s1,a5,0x14
   18f38:	fff70693          	addi	a3,a4,-1 # fffff <__BSS_END__+0xdf3b7>
   18f3c:	00d7f7b3          	and	a5,a5,a3
   18f40:	7ff4f493          	andi	s1,s1,2047
   18f44:	00050913          	addi	s2,a0,0
   18f48:	0007879b          	addiw	a5,a5,0 # 3ff00000 <__BSS_END__+0x3fedf3b8>
   18f4c:	00048463          	beq	s1,zero,18f54 <__d2b+0x5c>
   18f50:	00e7e7b3          	or	a5,a5,a4
   18f54:	0004041b          	addiw	s0,s0,0
   18f58:	00f12623          	sw	a5,12(sp)
   18f5c:	06041063          	bne	s0,zero,18fbc <__d2b+0xc4>
   18f60:	00c10513          	addi	a0,sp,12
   18f64:	b5cff0ef          	jal	ra,182c0 <__lo0bits>
   18f68:	00c12703          	lw	a4,12(sp)
   18f6c:	00100413          	addi	s0,zero,1
   18f70:	00892a23          	sw	s0,20(s2)
   18f74:	00e92c23          	sw	a4,24(s2)
   18f78:	0205051b          	addiw	a0,a0,32
   18f7c:	08048263          	beq	s1,zero,19000 <__d2b+0x108>
   18f80:	bcd4849b          	addiw	s1,s1,-1075
   18f84:	00a484bb          	addw	s1,s1,a0
   18f88:	03500793          	addi	a5,zero,53
   18f8c:	009a2023          	sw	s1,0(s4)
   18f90:	40a7853b          	subw	a0,a5,a0
   18f94:	03813083          	ld	ra,56(sp)
   18f98:	03013403          	ld	s0,48(sp)
   18f9c:	00a9a023          	sw	a0,0(s3)
   18fa0:	02813483          	ld	s1,40(sp)
   18fa4:	01813983          	ld	s3,24(sp)
   18fa8:	01013a03          	ld	s4,16(sp)
   18fac:	00090513          	addi	a0,s2,0
   18fb0:	02013903          	ld	s2,32(sp)
   18fb4:	04010113          	addi	sp,sp,64
   18fb8:	00008067          	jalr	zero,0(ra)
   18fbc:	00810513          	addi	a0,sp,8
   18fc0:	00812423          	sw	s0,8(sp)
   18fc4:	afcff0ef          	jal	ra,182c0 <__lo0bits>
   18fc8:	00c12703          	lw	a4,12(sp)
   18fcc:	00812683          	lw	a3,8(sp)
   18fd0:	00050c63          	beq	a0,zero,18fe8 <__d2b+0xf0>
   18fd4:	02000793          	addi	a5,zero,32
   18fd8:	40a787bb          	subw	a5,a5,a0
   18fdc:	00f717bb          	sllw	a5,a4,a5
   18fe0:	00d7e6b3          	or	a3,a5,a3
   18fe4:	00a7573b          	srlw	a4,a4,a0
   18fe8:	00e03433          	sltu	s0,zero,a4
   18fec:	00140413          	addi	s0,s0,1
   18ff0:	00d92c23          	sw	a3,24(s2)
   18ff4:	00e92e23          	sw	a4,28(s2)
   18ff8:	00892a23          	sw	s0,20(s2)
   18ffc:	f80492e3          	bne	s1,zero,18f80 <__d2b+0x88>
   19000:	bce5051b          	addiw	a0,a0,-1074
   19004:	00241713          	slli	a4,s0,0x2
   19008:	00aa2023          	sw	a0,0(s4)
   1900c:	00e90733          	add	a4,s2,a4
   19010:	01472503          	lw	a0,20(a4)
   19014:	a24ff0ef          	jal	ra,18238 <__hi0bits>
   19018:	0054179b          	slliw	a5,s0,0x5
   1901c:	40a7853b          	subw	a0,a5,a0
   19020:	f75ff06f          	jal	zero,18f94 <__d2b+0x9c>
   19024:	0001e6b7          	lui	a3,0x1e
   19028:	0001e537          	lui	a0,0x1e
   1902c:	2e868693          	addi	a3,a3,744 # 1e2e8 <__clzdi2+0xd4>
   19030:	35850513          	addi	a0,a0,856 # 1e358 <__clzdi2+0x144>
   19034:	00000613          	addi	a2,zero,0
   19038:	30f00593          	addi	a1,zero,783
   1903c:	595000ef          	jal	ra,19dd0 <__assert_func>

0000000000019040 <__ratio>:
   19040:	fc010113          	addi	sp,sp,-64
   19044:	02913423          	sd	s1,40(sp)
   19048:	00058493          	addi	s1,a1,0
   1904c:	00810593          	addi	a1,sp,8
   19050:	02113c23          	sd	ra,56(sp)
   19054:	02813823          	sd	s0,48(sp)
   19058:	03213023          	sd	s2,32(sp)
   1905c:	00050913          	addi	s2,a0,0
   19060:	d61ff0ef          	jal	ra,18dc0 <__b2d>
   19064:	00c10593          	addi	a1,sp,12
   19068:	00050413          	addi	s0,a0,0
   1906c:	00048513          	addi	a0,s1,0
   19070:	d51ff0ef          	jal	ra,18dc0 <__b2d>
   19074:	01492703          	lw	a4,20(s2)
   19078:	0144a603          	lw	a2,20(s1)
   1907c:	00812783          	lw	a5,8(sp)
   19080:	00c12683          	lw	a3,12(sp)
   19084:	40c7073b          	subw	a4,a4,a2
   19088:	0057171b          	slliw	a4,a4,0x5
   1908c:	40d787bb          	subw	a5,a5,a3
   19090:	00e787bb          	addw	a5,a5,a4
   19094:	00050593          	addi	a1,a0,0
   19098:	04f05063          	bge	zero,a5,190d8 <__ratio+0x98>
   1909c:	02041713          	slli	a4,s0,0x20
   190a0:	0147979b          	slliw	a5,a5,0x14
   190a4:	02045413          	srli	s0,s0,0x20
   190a8:	008787bb          	addw	a5,a5,s0
   190ac:	02075713          	srli	a4,a4,0x20
   190b0:	02079793          	slli	a5,a5,0x20
   190b4:	00f76433          	or	s0,a4,a5
   190b8:	00040513          	addi	a0,s0,0
   190bc:	6ad020ef          	jal	ra,1bf68 <__divdf3>
   190c0:	03813083          	ld	ra,56(sp)
   190c4:	03013403          	ld	s0,48(sp)
   190c8:	02813483          	ld	s1,40(sp)
   190cc:	02013903          	ld	s2,32(sp)
   190d0:	04010113          	addi	sp,sp,64
   190d4:	00008067          	jalr	zero,0(ra)
   190d8:	40f007bb          	subw	a5,zero,a5
   190dc:	02055593          	srli	a1,a0,0x20
   190e0:	0147979b          	slliw	a5,a5,0x14
   190e4:	00b787bb          	addw	a5,a5,a1
   190e8:	02051713          	slli	a4,a0,0x20
   190ec:	02075713          	srli	a4,a4,0x20
   190f0:	02079793          	slli	a5,a5,0x20
   190f4:	00f765b3          	or	a1,a4,a5
   190f8:	fc1ff06f          	jal	zero,190b8 <__ratio+0x78>

00000000000190fc <_mprec_log10>:
   190fc:	fe010113          	addi	sp,sp,-32
   19100:	00813823          	sd	s0,16(sp)
   19104:	00113c23          	sd	ra,24(sp)
   19108:	01700793          	addi	a5,zero,23
   1910c:	00050413          	addi	s0,a0,0
   19110:	02a7da63          	bge	a5,a0,19144 <_mprec_log10+0x48>
   19114:	00913423          	sd	s1,8(sp)
   19118:	1e01b503          	ld	a0,480(gp) # 20628 <__SDATA_BEGIN__+0x30>
   1911c:	1f01b483          	ld	s1,496(gp) # 20638 <__SDATA_BEGIN__+0x40>
   19120:	00048593          	addi	a1,s1,0
   19124:	fff4041b          	addiw	s0,s0,-1
   19128:	3b4030ef          	jal	ra,1c4dc <__muldf3>
   1912c:	fe041ae3          	bne	s0,zero,19120 <_mprec_log10+0x24>
   19130:	01813083          	ld	ra,24(sp)
   19134:	01013403          	ld	s0,16(sp)
   19138:	00813483          	ld	s1,8(sp)
   1913c:	02010113          	addi	sp,sp,32
   19140:	00008067          	jalr	zero,0(ra)
   19144:	0001e7b7          	lui	a5,0x1e
   19148:	00351413          	slli	s0,a0,0x3
   1914c:	61878793          	addi	a5,a5,1560 # 1e618 <__mprec_tens>
   19150:	01813083          	ld	ra,24(sp)
   19154:	008787b3          	add	a5,a5,s0
   19158:	01013403          	ld	s0,16(sp)
   1915c:	0007b503          	ld	a0,0(a5)
   19160:	02010113          	addi	sp,sp,32
   19164:	00008067          	jalr	zero,0(ra)

0000000000019168 <__copybits>:
   19168:	01462683          	lw	a3,20(a2)
   1916c:	fff5859b          	addiw	a1,a1,-1
   19170:	4055d59b          	sraiw	a1,a1,0x5
   19174:	0015859b          	addiw	a1,a1,1
   19178:	00269693          	slli	a3,a3,0x2
   1917c:	01860793          	addi	a5,a2,24
   19180:	00259593          	slli	a1,a1,0x2
   19184:	00d786b3          	add	a3,a5,a3
   19188:	00b505b3          	add	a1,a0,a1
   1918c:	02d7f863          	bgeu	a5,a3,191bc <__copybits+0x54>
   19190:	00050713          	addi	a4,a0,0
   19194:	0007a803          	lw	a6,0(a5)
   19198:	00478793          	addi	a5,a5,4
   1919c:	00470713          	addi	a4,a4,4
   191a0:	ff072e23          	sw	a6,-4(a4)
   191a4:	fed7e8e3          	bltu	a5,a3,19194 <__copybits+0x2c>
   191a8:	40c686b3          	sub	a3,a3,a2
   191ac:	fe768693          	addi	a3,a3,-25
   191b0:	ffc6f693          	andi	a3,a3,-4
   191b4:	00450513          	addi	a0,a0,4
   191b8:	00a68533          	add	a0,a3,a0
   191bc:	00b57863          	bgeu	a0,a1,191cc <__copybits+0x64>
   191c0:	00450513          	addi	a0,a0,4
   191c4:	fe052e23          	sw	zero,-4(a0)
   191c8:	feb56ce3          	bltu	a0,a1,191c0 <__copybits+0x58>
   191cc:	00008067          	jalr	zero,0(ra)

00000000000191d0 <__any_on>:
   191d0:	01452703          	lw	a4,20(a0)
   191d4:	4055d61b          	sraiw	a2,a1,0x5
   191d8:	01850693          	addi	a3,a0,24
   191dc:	02c75263          	bge	a4,a2,19200 <__any_on+0x30>
   191e0:	00271713          	slli	a4,a4,0x2
   191e4:	00e687b3          	add	a5,a3,a4
   191e8:	04f6f263          	bgeu	a3,a5,1922c <__any_on+0x5c>
   191ec:	ffc7a703          	lw	a4,-4(a5)
   191f0:	ffc78793          	addi	a5,a5,-4
   191f4:	fe070ae3          	beq	a4,zero,191e8 <__any_on+0x18>
   191f8:	00100513          	addi	a0,zero,1
   191fc:	00008067          	jalr	zero,0(ra)
   19200:	00261793          	slli	a5,a2,0x2
   19204:	00f687b3          	add	a5,a3,a5
   19208:	fee650e3          	bge	a2,a4,191e8 <__any_on+0x18>
   1920c:	01f5f593          	andi	a1,a1,31
   19210:	fc058ce3          	beq	a1,zero,191e8 <__any_on+0x18>
   19214:	0007a603          	lw	a2,0(a5)
   19218:	00100513          	addi	a0,zero,1
   1921c:	00b6573b          	srlw	a4,a2,a1
   19220:	00b7173b          	sllw	a4,a4,a1
   19224:	fcc702e3          	beq	a4,a2,191e8 <__any_on+0x18>
   19228:	00008067          	jalr	zero,0(ra)
   1922c:	00000513          	addi	a0,zero,0
   19230:	00008067          	jalr	zero,0(ra)

0000000000019234 <_realloc_r>:
   19234:	1e058a63          	beq	a1,zero,19428 <_realloc_r+0x1f4>
   19238:	fc010113          	addi	sp,sp,-64
   1923c:	02813823          	sd	s0,48(sp)
   19240:	02913423          	sd	s1,40(sp)
   19244:	00058413          	addi	s0,a1,0
   19248:	02113c23          	sd	ra,56(sp)
   1924c:	00050493          	addi	s1,a0,0
   19250:	00c13023          	sd	a2,0(sp)
   19254:	865f80ef          	jal	ra,11ab8 <__malloc_lock>
   19258:	00013583          	ld	a1,0(sp)
   1925c:	02e00713          	addi	a4,zero,46
   19260:	01758793          	addi	a5,a1,23
   19264:	12f77c63          	bgeu	a4,a5,1939c <_realloc_r+0x168>
   19268:	00100713          	addi	a4,zero,1
   1926c:	ff07f793          	andi	a5,a5,-16
   19270:	01f71713          	slli	a4,a4,0x1f
   19274:	00e7b733          	sltu	a4,a5,a4
   19278:	00174713          	xori	a4,a4,1
   1927c:	1eb7e263          	bltu	a5,a1,19460 <_realloc_r+0x22c>
   19280:	1e071063          	bne	a4,zero,19460 <_realloc_r+0x22c>
   19284:	ff843683          	ld	a3,-8(s0)
   19288:	ff040613          	addi	a2,s0,-16
   1928c:	ffc6f713          	andi	a4,a3,-4
   19290:	12f75663          	bge	a4,a5,193bc <_realloc_r+0x188>
   19294:	00020537          	lui	a0,0x20
   19298:	c4050e93          	addi	t4,a0,-960 # 1fc40 <__malloc_av_>
   1929c:	010eb883          	ld	a7,16(t4)
   192a0:	00e60833          	add	a6,a2,a4
   192a4:	00883503          	ld	a0,8(a6)
   192a8:	1d088e63          	beq	a7,a6,19484 <_realloc_r+0x250>
   192ac:	ffe57893          	andi	a7,a0,-2
   192b0:	011808b3          	add	a7,a6,a7
   192b4:	0088b883          	ld	a7,8(a7)
   192b8:	0018f893          	andi	a7,a7,1
   192bc:	14089863          	bne	a7,zero,1940c <_realloc_r+0x1d8>
   192c0:	ffc57513          	andi	a0,a0,-4
   192c4:	00a708b3          	add	a7,a4,a0
   192c8:	0ef8d063          	bge	a7,a5,193a8 <_realloc_r+0x174>
   192cc:	0016f693          	andi	a3,a3,1
   192d0:	02069463          	bne	a3,zero,192f8 <_realloc_r+0xc4>
   192d4:	ff043303          	ld	t1,-16(s0)
   192d8:	40660333          	sub	t1,a2,t1
   192dc:	00833883          	ld	a7,8(t1)
   192e0:	ffc8f893          	andi	a7,a7,-4
   192e4:	01150533          	add	a0,a0,a7
   192e8:	00e506b3          	add	a3,a0,a4
   192ec:	32f6d263          	bge	a3,a5,19610 <_realloc_r+0x3dc>
   192f0:	011708b3          	add	a7,a4,a7
   192f4:	28f8da63          	bge	a7,a5,19588 <_realloc_r+0x354>
   192f8:	00048513          	addi	a0,s1,0
   192fc:	00e13823          	sd	a4,16(sp)
   19300:	00c13423          	sd	a2,8(sp)
   19304:	00f13023          	sd	a5,0(sp)
   19308:	ecdf70ef          	jal	ra,111d4 <_malloc_r>
   1930c:	00013783          	ld	a5,0(sp)
   19310:	00813603          	ld	a2,8(sp)
   19314:	01013703          	ld	a4,16(sp)
   19318:	00050693          	addi	a3,a0,0
   1931c:	44050663          	beq	a0,zero,19768 <_realloc_r+0x534>
   19320:	ff843583          	ld	a1,-8(s0)
   19324:	ff050813          	addi	a6,a0,-16
   19328:	ffe5f593          	andi	a1,a1,-2
   1932c:	00b605b3          	add	a1,a2,a1
   19330:	23058263          	beq	a1,a6,19554 <_realloc_r+0x320>
   19334:	ff870613          	addi	a2,a4,-8
   19338:	04800793          	addi	a5,zero,72
   1933c:	2cc7e063          	bltu	a5,a2,195fc <_realloc_r+0x3c8>
   19340:	02700713          	addi	a4,zero,39
   19344:	22c76063          	bltu	a4,a2,19564 <_realloc_r+0x330>
   19348:	00050793          	addi	a5,a0,0
   1934c:	00040713          	addi	a4,s0,0
   19350:	00073603          	ld	a2,0(a4)
   19354:	00c7b023          	sd	a2,0(a5)
   19358:	00873603          	ld	a2,8(a4)
   1935c:	00c7b423          	sd	a2,8(a5)
   19360:	01073703          	ld	a4,16(a4)
   19364:	00e7b823          	sd	a4,16(a5)
   19368:	00040593          	addi	a1,s0,0
   1936c:	00048513          	addi	a0,s1,0
   19370:	00d13023          	sd	a3,0(sp)
   19374:	b5df70ef          	jal	ra,10ed0 <_free_r>
   19378:	00048513          	addi	a0,s1,0
   1937c:	f40f80ef          	jal	ra,11abc <__malloc_unlock>
   19380:	00013683          	ld	a3,0(sp)
   19384:	03813083          	ld	ra,56(sp)
   19388:	03013403          	ld	s0,48(sp)
   1938c:	02813483          	ld	s1,40(sp)
   19390:	00068513          	addi	a0,a3,0
   19394:	04010113          	addi	sp,sp,64
   19398:	00008067          	jalr	zero,0(ra)
   1939c:	00000713          	addi	a4,zero,0
   193a0:	02000793          	addi	a5,zero,32
   193a4:	ed9ff06f          	jal	zero,1927c <_realloc_r+0x48>
   193a8:	01883683          	ld	a3,24(a6)
   193ac:	01083583          	ld	a1,16(a6)
   193b0:	00088713          	addi	a4,a7,0
   193b4:	00d5bc23          	sd	a3,24(a1)
   193b8:	00b6b823          	sd	a1,16(a3)
   193bc:	00863683          	ld	a3,8(a2)
   193c0:	40f70533          	sub	a0,a4,a5
   193c4:	01f00593          	addi	a1,zero,31
   193c8:	0016f693          	andi	a3,a3,1
   193cc:	00e60833          	add	a6,a2,a4
   193d0:	06a5e063          	bltu	a1,a0,19430 <_realloc_r+0x1fc>
   193d4:	00d766b3          	or	a3,a4,a3
   193d8:	00d63423          	sd	a3,8(a2)
   193dc:	00883783          	ld	a5,8(a6)
   193e0:	0017e793          	ori	a5,a5,1
   193e4:	00f83423          	sd	a5,8(a6)
   193e8:	00048513          	addi	a0,s1,0
   193ec:	ed0f80ef          	jal	ra,11abc <__malloc_unlock>
   193f0:	00040693          	addi	a3,s0,0
   193f4:	03813083          	ld	ra,56(sp)
   193f8:	03013403          	ld	s0,48(sp)
   193fc:	02813483          	ld	s1,40(sp)
   19400:	00068513          	addi	a0,a3,0
   19404:	04010113          	addi	sp,sp,64
   19408:	00008067          	jalr	zero,0(ra)
   1940c:	0016f693          	andi	a3,a3,1
   19410:	ee0694e3          	bne	a3,zero,192f8 <_realloc_r+0xc4>
   19414:	ff043303          	ld	t1,-16(s0)
   19418:	40660333          	sub	t1,a2,t1
   1941c:	00833883          	ld	a7,8(t1)
   19420:	ffc8f893          	andi	a7,a7,-4
   19424:	ecdff06f          	jal	zero,192f0 <_realloc_r+0xbc>
   19428:	00060593          	addi	a1,a2,0
   1942c:	da9f706f          	jal	zero,111d4 <_malloc_r>
   19430:	00d7e6b3          	or	a3,a5,a3
   19434:	00d63423          	sd	a3,8(a2)
   19438:	00156513          	ori	a0,a0,1
   1943c:	00f60633          	add	a2,a2,a5
   19440:	00a63423          	sd	a0,8(a2)
   19444:	00883783          	ld	a5,8(a6)
   19448:	01060593          	addi	a1,a2,16
   1944c:	00048513          	addi	a0,s1,0
   19450:	0017e793          	ori	a5,a5,1
   19454:	00f83423          	sd	a5,8(a6)
   19458:	a79f70ef          	jal	ra,10ed0 <_free_r>
   1945c:	f8dff06f          	jal	zero,193e8 <_realloc_r+0x1b4>
   19460:	00c00793          	addi	a5,zero,12
   19464:	00f4a023          	sw	a5,0(s1)
   19468:	00000693          	addi	a3,zero,0
   1946c:	03813083          	ld	ra,56(sp)
   19470:	03013403          	ld	s0,48(sp)
   19474:	02813483          	ld	s1,40(sp)
   19478:	00068513          	addi	a0,a3,0
   1947c:	04010113          	addi	sp,sp,64
   19480:	00008067          	jalr	zero,0(ra)
   19484:	ffc57513          	andi	a0,a0,-4
   19488:	00e50833          	add	a6,a0,a4
   1948c:	02078e13          	addi	t3,a5,32
   19490:	25c85a63          	bge	a6,t3,196e4 <_realloc_r+0x4b0>
   19494:	0016f693          	andi	a3,a3,1
   19498:	e60690e3          	bne	a3,zero,192f8 <_realloc_r+0xc4>
   1949c:	ff043303          	ld	t1,-16(s0)
   194a0:	40660333          	sub	t1,a2,t1
   194a4:	00833883          	ld	a7,8(t1)
   194a8:	ffc8f893          	andi	a7,a7,-4
   194ac:	01150533          	add	a0,a0,a7
   194b0:	00e50833          	add	a6,a0,a4
   194b4:	e3c84ee3          	blt	a6,t3,192f0 <_realloc_r+0xbc>
   194b8:	01833683          	ld	a3,24(t1)
   194bc:	01033583          	ld	a1,16(t1)
   194c0:	ff870613          	addi	a2,a4,-8
   194c4:	04800713          	addi	a4,zero,72
   194c8:	00d5bc23          	sd	a3,24(a1)
   194cc:	00b6b823          	sd	a1,16(a3)
   194d0:	01030693          	addi	a3,t1,16
   194d4:	2ec76263          	bltu	a4,a2,197b8 <_realloc_r+0x584>
   194d8:	02700593          	addi	a1,zero,39
   194dc:	00068713          	addi	a4,a3,0
   194e0:	02c5f263          	bgeu	a1,a2,19504 <_realloc_r+0x2d0>
   194e4:	00043583          	ld	a1,0(s0)
   194e8:	03700713          	addi	a4,zero,55
   194ec:	00b33823          	sd	a1,16(t1)
   194f0:	00843583          	ld	a1,8(s0)
   194f4:	00b33c23          	sd	a1,24(t1)
   194f8:	30c76a63          	bltu	a4,a2,1980c <_realloc_r+0x5d8>
   194fc:	01040413          	addi	s0,s0,16
   19500:	02030713          	addi	a4,t1,32
   19504:	00043603          	ld	a2,0(s0)
   19508:	00c73023          	sd	a2,0(a4)
   1950c:	00843603          	ld	a2,8(s0)
   19510:	00c73423          	sd	a2,8(a4)
   19514:	01043603          	ld	a2,16(s0)
   19518:	00c73823          	sd	a2,16(a4)
   1951c:	00f30633          	add	a2,t1,a5
   19520:	40f80733          	sub	a4,a6,a5
   19524:	00ceb823          	sd	a2,16(t4)
   19528:	00176713          	ori	a4,a4,1
   1952c:	00e63423          	sd	a4,8(a2)
   19530:	00833703          	ld	a4,8(t1)
   19534:	00048513          	addi	a0,s1,0
   19538:	00d13023          	sd	a3,0(sp)
   1953c:	00177713          	andi	a4,a4,1
   19540:	00f767b3          	or	a5,a4,a5
   19544:	00f33423          	sd	a5,8(t1)
   19548:	d74f80ef          	jal	ra,11abc <__malloc_unlock>
   1954c:	00013683          	ld	a3,0(sp)
   19550:	ea5ff06f          	jal	zero,193f4 <_realloc_r+0x1c0>
   19554:	ff853683          	ld	a3,-8(a0)
   19558:	ffc6f693          	andi	a3,a3,-4
   1955c:	00d70733          	add	a4,a4,a3
   19560:	e5dff06f          	jal	zero,193bc <_realloc_r+0x188>
   19564:	00043583          	ld	a1,0(s0)
   19568:	03700713          	addi	a4,zero,55
   1956c:	00b53023          	sd	a1,0(a0)
   19570:	00843583          	ld	a1,8(s0)
   19574:	00b53423          	sd	a1,8(a0)
   19578:	10c76e63          	bltu	a4,a2,19694 <_realloc_r+0x460>
   1957c:	01040713          	addi	a4,s0,16
   19580:	01050793          	addi	a5,a0,16
   19584:	dcdff06f          	jal	zero,19350 <_realloc_r+0x11c>
   19588:	01833683          	ld	a3,24(t1)
   1958c:	01033583          	ld	a1,16(t1)
   19590:	ff870613          	addi	a2,a4,-8
   19594:	04800513          	addi	a0,zero,72
   19598:	00d5bc23          	sd	a3,24(a1)
   1959c:	00b6b823          	sd	a1,16(a3)
   195a0:	01030693          	addi	a3,t1,16
   195a4:	10c56863          	bltu	a0,a2,196b4 <_realloc_r+0x480>
   195a8:	02700593          	addi	a1,zero,39
   195ac:	00068713          	addi	a4,a3,0
   195b0:	02c5f263          	bgeu	a1,a2,195d4 <_realloc_r+0x3a0>
   195b4:	00043583          	ld	a1,0(s0)
   195b8:	03700713          	addi	a4,zero,55
   195bc:	00b33823          	sd	a1,16(t1)
   195c0:	00843583          	ld	a1,8(s0)
   195c4:	00b33c23          	sd	a1,24(t1)
   195c8:	18c76063          	bltu	a4,a2,19748 <_realloc_r+0x514>
   195cc:	01040413          	addi	s0,s0,16
   195d0:	02030713          	addi	a4,t1,32
   195d4:	00043603          	ld	a2,0(s0)
   195d8:	00c73023          	sd	a2,0(a4)
   195dc:	00843603          	ld	a2,8(s0)
   195e0:	00c73423          	sd	a2,8(a4)
   195e4:	01043603          	ld	a2,16(s0)
   195e8:	00c73823          	sd	a2,16(a4)
   195ec:	00068413          	addi	s0,a3,0
   195f0:	00088713          	addi	a4,a7,0
   195f4:	00030613          	addi	a2,t1,0
   195f8:	dc5ff06f          	jal	zero,193bc <_realloc_r+0x188>
   195fc:	00040593          	addi	a1,s0,0
   19600:	00a13023          	sd	a0,0(sp)
   19604:	8ccfc0ef          	jal	ra,156d0 <memmove>
   19608:	00013683          	ld	a3,0(sp)
   1960c:	d5dff06f          	jal	zero,19368 <_realloc_r+0x134>
   19610:	01883583          	ld	a1,24(a6)
   19614:	01083503          	ld	a0,16(a6)
   19618:	ff870613          	addi	a2,a4,-8
   1961c:	04800893          	addi	a7,zero,72
   19620:	00b53c23          	sd	a1,24(a0)
   19624:	00a5b823          	sd	a0,16(a1)
   19628:	01833703          	ld	a4,24(t1)
   1962c:	01033583          	ld	a1,16(t1)
   19630:	01030813          	addi	a6,t1,16
   19634:	00e5bc23          	sd	a4,24(a1)
   19638:	00b73823          	sd	a1,16(a4)
   1963c:	0cc8ee63          	bltu	a7,a2,19718 <_realloc_r+0x4e4>
   19640:	02700593          	addi	a1,zero,39
   19644:	00080713          	addi	a4,a6,0
   19648:	02c5f263          	bgeu	a1,a2,1966c <_realloc_r+0x438>
   1964c:	00043583          	ld	a1,0(s0)
   19650:	03700713          	addi	a4,zero,55
   19654:	00b33823          	sd	a1,16(t1)
   19658:	00843583          	ld	a1,8(s0)
   1965c:	00b33c23          	sd	a1,24(t1)
   19660:	12c76a63          	bltu	a4,a2,19794 <_realloc_r+0x560>
   19664:	01040413          	addi	s0,s0,16
   19668:	02030713          	addi	a4,t1,32
   1966c:	00043603          	ld	a2,0(s0)
   19670:	00c73023          	sd	a2,0(a4)
   19674:	00843603          	ld	a2,8(s0)
   19678:	00c73423          	sd	a2,8(a4)
   1967c:	01043603          	ld	a2,16(s0)
   19680:	00c73823          	sd	a2,16(a4)
   19684:	00080413          	addi	s0,a6,0
   19688:	00068713          	addi	a4,a3,0
   1968c:	00030613          	addi	a2,t1,0
   19690:	d2dff06f          	jal	zero,193bc <_realloc_r+0x188>
   19694:	01043703          	ld	a4,16(s0)
   19698:	00e53823          	sd	a4,16(a0)
   1969c:	01843703          	ld	a4,24(s0)
   196a0:	00e53c23          	sd	a4,24(a0)
   196a4:	0cf60a63          	beq	a2,a5,19778 <_realloc_r+0x544>
   196a8:	02040713          	addi	a4,s0,32
   196ac:	02050793          	addi	a5,a0,32
   196b0:	ca1ff06f          	jal	zero,19350 <_realloc_r+0x11c>
   196b4:	00068513          	addi	a0,a3,0
   196b8:	00040593          	addi	a1,s0,0
   196bc:	00613c23          	sd	t1,24(sp)
   196c0:	00f13823          	sd	a5,16(sp)
   196c4:	01113423          	sd	a7,8(sp)
   196c8:	00d13023          	sd	a3,0(sp)
   196cc:	804fc0ef          	jal	ra,156d0 <memmove>
   196d0:	01813303          	ld	t1,24(sp)
   196d4:	01013783          	ld	a5,16(sp)
   196d8:	00813883          	ld	a7,8(sp)
   196dc:	00013683          	ld	a3,0(sp)
   196e0:	f0dff06f          	jal	zero,195ec <_realloc_r+0x3b8>
   196e4:	00f60633          	add	a2,a2,a5
   196e8:	40f80733          	sub	a4,a6,a5
   196ec:	00ceb823          	sd	a2,16(t4)
   196f0:	00176713          	ori	a4,a4,1
   196f4:	00e63423          	sd	a4,8(a2)
   196f8:	ff843703          	ld	a4,-8(s0)
   196fc:	00048513          	addi	a0,s1,0
   19700:	00177713          	andi	a4,a4,1
   19704:	00f767b3          	or	a5,a4,a5
   19708:	fef43c23          	sd	a5,-8(s0)
   1970c:	bb0f80ef          	jal	ra,11abc <__malloc_unlock>
   19710:	00040693          	addi	a3,s0,0
   19714:	ce1ff06f          	jal	zero,193f4 <_realloc_r+0x1c0>
   19718:	00080513          	addi	a0,a6,0
   1971c:	00040593          	addi	a1,s0,0
   19720:	00613c23          	sd	t1,24(sp)
   19724:	00f13823          	sd	a5,16(sp)
   19728:	00d13423          	sd	a3,8(sp)
   1972c:	01013023          	sd	a6,0(sp)
   19730:	fa1fb0ef          	jal	ra,156d0 <memmove>
   19734:	00013803          	ld	a6,0(sp)
   19738:	00813683          	ld	a3,8(sp)
   1973c:	01013783          	ld	a5,16(sp)
   19740:	01813303          	ld	t1,24(sp)
   19744:	f41ff06f          	jal	zero,19684 <_realloc_r+0x450>
   19748:	01043703          	ld	a4,16(s0)
   1974c:	02e33023          	sd	a4,32(t1)
   19750:	01843703          	ld	a4,24(s0)
   19754:	02e33423          	sd	a4,40(t1)
   19758:	08a60c63          	beq	a2,a0,197f0 <_realloc_r+0x5bc>
   1975c:	02040413          	addi	s0,s0,32
   19760:	03030713          	addi	a4,t1,48
   19764:	e71ff06f          	jal	zero,195d4 <_realloc_r+0x3a0>
   19768:	00048513          	addi	a0,s1,0
   1976c:	b50f80ef          	jal	ra,11abc <__malloc_unlock>
   19770:	00000693          	addi	a3,zero,0
   19774:	cf9ff06f          	jal	zero,1946c <_realloc_r+0x238>
   19778:	02043603          	ld	a2,32(s0)
   1977c:	03040713          	addi	a4,s0,48
   19780:	03050793          	addi	a5,a0,48
   19784:	02c53023          	sd	a2,32(a0)
   19788:	02843603          	ld	a2,40(s0)
   1978c:	02c53423          	sd	a2,40(a0)
   19790:	bc1ff06f          	jal	zero,19350 <_realloc_r+0x11c>
   19794:	01043583          	ld	a1,16(s0)
   19798:	04800713          	addi	a4,zero,72
   1979c:	02b33023          	sd	a1,32(t1)
   197a0:	01843583          	ld	a1,24(s0)
   197a4:	02b33423          	sd	a1,40(t1)
   197a8:	08e60463          	beq	a2,a4,19830 <_realloc_r+0x5fc>
   197ac:	02040413          	addi	s0,s0,32
   197b0:	03030713          	addi	a4,t1,48
   197b4:	eb9ff06f          	jal	zero,1966c <_realloc_r+0x438>
   197b8:	00068513          	addi	a0,a3,0
   197bc:	00040593          	addi	a1,s0,0
   197c0:	00613c23          	sd	t1,24(sp)
   197c4:	00f13823          	sd	a5,16(sp)
   197c8:	01013423          	sd	a6,8(sp)
   197cc:	00d13023          	sd	a3,0(sp)
   197d0:	f01fb0ef          	jal	ra,156d0 <memmove>
   197d4:	000207b7          	lui	a5,0x20
   197d8:	c4078e93          	addi	t4,a5,-960 # 1fc40 <__malloc_av_>
   197dc:	01813303          	ld	t1,24(sp)
   197e0:	01013783          	ld	a5,16(sp)
   197e4:	00813803          	ld	a6,8(sp)
   197e8:	00013683          	ld	a3,0(sp)
   197ec:	d31ff06f          	jal	zero,1951c <_realloc_r+0x2e8>
   197f0:	02043603          	ld	a2,32(s0)
   197f4:	04030713          	addi	a4,t1,64
   197f8:	03040413          	addi	s0,s0,48
   197fc:	02c33823          	sd	a2,48(t1)
   19800:	ff843603          	ld	a2,-8(s0)
   19804:	02c33c23          	sd	a2,56(t1)
   19808:	dcdff06f          	jal	zero,195d4 <_realloc_r+0x3a0>
   1980c:	01043583          	ld	a1,16(s0)
   19810:	04800713          	addi	a4,zero,72
   19814:	02b33023          	sd	a1,32(t1)
   19818:	01843583          	ld	a1,24(s0)
   1981c:	02b33423          	sd	a1,40(t1)
   19820:	02e60663          	beq	a2,a4,1984c <_realloc_r+0x618>
   19824:	02040413          	addi	s0,s0,32
   19828:	03030713          	addi	a4,t1,48
   1982c:	cd9ff06f          	jal	zero,19504 <_realloc_r+0x2d0>
   19830:	02043603          	ld	a2,32(s0)
   19834:	04030713          	addi	a4,t1,64
   19838:	03040413          	addi	s0,s0,48
   1983c:	02c33823          	sd	a2,48(t1)
   19840:	ff843603          	ld	a2,-8(s0)
   19844:	02c33c23          	sd	a2,56(t1)
   19848:	e25ff06f          	jal	zero,1966c <_realloc_r+0x438>
   1984c:	02043603          	ld	a2,32(s0)
   19850:	04030713          	addi	a4,t1,64
   19854:	03040413          	addi	s0,s0,48
   19858:	02c33823          	sd	a2,48(t1)
   1985c:	ff843603          	ld	a2,-8(s0)
   19860:	02c33c23          	sd	a2,56(t1)
   19864:	ca1ff06f          	jal	zero,19504 <_realloc_r+0x2d0>

0000000000019868 <__smakebuf_r>:
   19868:	01059703          	lh	a4,16(a1)
   1986c:	00277793          	andi	a5,a4,2
   19870:	00078e63          	beq	a5,zero,1988c <__smakebuf_r+0x24>
   19874:	07758793          	addi	a5,a1,119
   19878:	00100713          	addi	a4,zero,1
   1987c:	00f5b023          	sd	a5,0(a1)
   19880:	00f5bc23          	sd	a5,24(a1)
   19884:	02e5a023          	sw	a4,32(a1)
   19888:	00008067          	jalr	zero,0(ra)
   1988c:	00058793          	addi	a5,a1,0
   19890:	01259583          	lh	a1,18(a1)
   19894:	f6010113          	addi	sp,sp,-160
   19898:	08813823          	sd	s0,144(sp)
   1989c:	08113c23          	sd	ra,152(sp)
   198a0:	00050413          	addi	s0,a0,0
   198a4:	0805ce63          	blt	a1,zero,19940 <__smakebuf_r+0xd8>
   198a8:	01810613          	addi	a2,sp,24
   198ac:	00f13023          	sd	a5,0(sp)
   198b0:	334000ef          	jal	ra,19be4 <_fstat_r>
   198b4:	00013783          	ld	a5,0(sp)
   198b8:	08054263          	blt	a0,zero,1993c <__smakebuf_r+0xd4>
   198bc:	40000593          	addi	a1,zero,1024
   198c0:	00040513          	addi	a0,s0,0
   198c4:	08913423          	sd	s1,136(sp)
   198c8:	00f13023          	sd	a5,0(sp)
   198cc:	01c12483          	lw	s1,28(sp)
   198d0:	905f70ef          	jal	ra,111d4 <_malloc_r>
   198d4:	00013783          	ld	a5,0(sp)
   198d8:	01079703          	lh	a4,16(a5)
   198dc:	0c050263          	beq	a0,zero,199a0 <__smakebuf_r+0x138>
   198e0:	40000693          	addi	a3,zero,1024
   198e4:	08076713          	ori	a4,a4,128
   198e8:	02d7a023          	sw	a3,32(a5)
   198ec:	40c4d693          	srai	a3,s1,0xc
   198f0:	00e79823          	sh	a4,16(a5)
   198f4:	00a7b023          	sd	a0,0(a5)
   198f8:	00a7bc23          	sd	a0,24(a5)
   198fc:	00f6f693          	andi	a3,a3,15
   19900:	00200613          	addi	a2,zero,2
   19904:	0cc69663          	bne	a3,a2,199d0 <__smakebuf_r+0x168>
   19908:	01279583          	lh	a1,18(a5)
   1990c:	00040513          	addi	a0,s0,0
   19910:	00f13023          	sd	a5,0(sp)
   19914:	334000ef          	jal	ra,19c48 <_isatty_r>
   19918:	00013783          	ld	a5,0(sp)
   1991c:	01079703          	lh	a4,16(a5)
   19920:	0a050863          	beq	a0,zero,199d0 <__smakebuf_r+0x168>
   19924:	ffc77713          	andi	a4,a4,-4
   19928:	000016b7          	lui	a3,0x1
   1992c:	08813483          	ld	s1,136(sp)
   19930:	00176713          	ori	a4,a4,1
   19934:	80068693          	addi	a3,a3,-2048 # 800 <exit-0xf920>
   19938:	0480006f          	jal	zero,19980 <__smakebuf_r+0x118>
   1993c:	01079703          	lh	a4,16(a5)
   19940:	08077713          	andi	a4,a4,128
   19944:	40000593          	addi	a1,zero,1024
   19948:	04071863          	bne	a4,zero,19998 <__smakebuf_r+0x130>
   1994c:	00040513          	addi	a0,s0,0
   19950:	00f13423          	sd	a5,8(sp)
   19954:	00b13023          	sd	a1,0(sp)
   19958:	87df70ef          	jal	ra,111d4 <_malloc_r>
   1995c:	00813783          	ld	a5,8(sp)
   19960:	00013583          	ld	a1,0(sp)
   19964:	01079703          	lh	a4,16(a5)
   19968:	02050e63          	beq	a0,zero,199a4 <__smakebuf_r+0x13c>
   1996c:	08076713          	ori	a4,a4,128
   19970:	00a7b023          	sd	a0,0(a5)
   19974:	00a7bc23          	sd	a0,24(a5)
   19978:	02b7a023          	sw	a1,32(a5)
   1997c:	00000693          	addi	a3,zero,0
   19980:	00d76733          	or	a4,a4,a3
   19984:	00e79823          	sh	a4,16(a5)
   19988:	09813083          	ld	ra,152(sp)
   1998c:	09013403          	ld	s0,144(sp)
   19990:	0a010113          	addi	sp,sp,160
   19994:	00008067          	jalr	zero,0(ra)
   19998:	04000593          	addi	a1,zero,64
   1999c:	fb1ff06f          	jal	zero,1994c <__smakebuf_r+0xe4>
   199a0:	08813483          	ld	s1,136(sp)
   199a4:	20077693          	andi	a3,a4,512
   199a8:	fe0690e3          	bne	a3,zero,19988 <__smakebuf_r+0x120>
   199ac:	ffc77713          	andi	a4,a4,-4
   199b0:	07778693          	addi	a3,a5,119
   199b4:	00276713          	ori	a4,a4,2
   199b8:	00100613          	addi	a2,zero,1
   199bc:	00e79823          	sh	a4,16(a5)
   199c0:	00d7b023          	sd	a3,0(a5)
   199c4:	00d7bc23          	sd	a3,24(a5)
   199c8:	02c7a023          	sw	a2,32(a5)
   199cc:	fbdff06f          	jal	zero,19988 <__smakebuf_r+0x120>
   199d0:	000016b7          	lui	a3,0x1
   199d4:	08813483          	ld	s1,136(sp)
   199d8:	80068693          	addi	a3,a3,-2048 # 800 <exit-0xf920>
   199dc:	fa5ff06f          	jal	zero,19980 <__smakebuf_r+0x118>

00000000000199e0 <__swhatbuf_r>:
   199e0:	00058793          	addi	a5,a1,0
   199e4:	01259583          	lh	a1,18(a1)
   199e8:	00060713          	addi	a4,a2,0
   199ec:	0805ca63          	blt	a1,zero,19a80 <__swhatbuf_r+0xa0>
   199f0:	f6010113          	addi	sp,sp,-160
   199f4:	00c13823          	sd	a2,16(sp)
   199f8:	02810613          	addi	a2,sp,40
   199fc:	00d13c23          	sd	a3,24(sp)
   19a00:	00f13423          	sd	a5,8(sp)
   19a04:	08113c23          	sd	ra,152(sp)
   19a08:	1dc000ef          	jal	ra,19be4 <_fstat_r>
   19a0c:	00813783          	ld	a5,8(sp)
   19a10:	01013703          	ld	a4,16(sp)
   19a14:	01813683          	ld	a3,24(sp)
   19a18:	02054e63          	blt	a0,zero,19a54 <__swhatbuf_r+0x74>
   19a1c:	02c12783          	lw	a5,44(sp)
   19a20:	0000f5b7          	lui	a1,0xf
   19a24:	00002637          	lui	a2,0x2
   19a28:	00b7f7b3          	and	a5,a5,a1
   19a2c:	40c787b3          	sub	a5,a5,a2
   19a30:	09813083          	ld	ra,152(sp)
   19a34:	0017b793          	sltiu	a5,a5,1
   19a38:	00f6a023          	sw	a5,0(a3)
   19a3c:	40000613          	addi	a2,zero,1024
   19a40:	00001537          	lui	a0,0x1
   19a44:	00c73023          	sd	a2,0(a4)
   19a48:	80050513          	addi	a0,a0,-2048 # 800 <exit-0xf920>
   19a4c:	0a010113          	addi	sp,sp,160
   19a50:	00008067          	jalr	zero,0(ra)
   19a54:	0107d783          	lhu	a5,16(a5)
   19a58:	0807f793          	andi	a5,a5,128
   19a5c:	04078263          	beq	a5,zero,19aa0 <__swhatbuf_r+0xc0>
   19a60:	09813083          	ld	ra,152(sp)
   19a64:	00000793          	addi	a5,zero,0
   19a68:	00f6a023          	sw	a5,0(a3)
   19a6c:	04000613          	addi	a2,zero,64
   19a70:	00c73023          	sd	a2,0(a4)
   19a74:	00000513          	addi	a0,zero,0
   19a78:	0a010113          	addi	sp,sp,160
   19a7c:	00008067          	jalr	zero,0(ra)
   19a80:	0107d783          	lhu	a5,16(a5)
   19a84:	0807f793          	andi	a5,a5,128
   19a88:	02079a63          	bne	a5,zero,19abc <__swhatbuf_r+0xdc>
   19a8c:	40000613          	addi	a2,zero,1024
   19a90:	00f6a023          	sw	a5,0(a3)
   19a94:	00000513          	addi	a0,zero,0
   19a98:	00c73023          	sd	a2,0(a4)
   19a9c:	00008067          	jalr	zero,0(ra)
   19aa0:	09813083          	ld	ra,152(sp)
   19aa4:	00f6a023          	sw	a5,0(a3)
   19aa8:	40000613          	addi	a2,zero,1024
   19aac:	00c73023          	sd	a2,0(a4)
   19ab0:	00000513          	addi	a0,zero,0
   19ab4:	0a010113          	addi	sp,sp,160
   19ab8:	00008067          	jalr	zero,0(ra)
   19abc:	00000793          	addi	a5,zero,0
   19ac0:	04000613          	addi	a2,zero,64
   19ac4:	00f6a023          	sw	a5,0(a3)
   19ac8:	00000513          	addi	a0,zero,0
   19acc:	00c73023          	sd	a2,0(a4)
   19ad0:	00008067          	jalr	zero,0(ra)

0000000000019ad4 <_setlocale_r>:
   19ad4:	04060063          	beq	a2,zero,19b14 <_setlocale_r+0x40>
   19ad8:	0001e5b7          	lui	a1,0x1e
   19adc:	fe010113          	addi	sp,sp,-32
   19ae0:	3b058593          	addi	a1,a1,944 # 1e3b0 <__clzdi2+0x19c>
   19ae4:	00060513          	addi	a0,a2,0 # 2000 <exit-0xe120>
   19ae8:	00813823          	sd	s0,16(sp)
   19aec:	00113c23          	sd	ra,24(sp)
   19af0:	00060413          	addi	s0,a2,0
   19af4:	1b0000ef          	jal	ra,19ca4 <strcmp>
   19af8:	0001e7b7          	lui	a5,0x1e
   19afc:	02051263          	bne	a0,zero,19b20 <_setlocale_r+0x4c>
   19b00:	3a878513          	addi	a0,a5,936 # 1e3a8 <__clzdi2+0x194>
   19b04:	01813083          	ld	ra,24(sp)
   19b08:	01013403          	ld	s0,16(sp)
   19b0c:	02010113          	addi	sp,sp,32
   19b10:	00008067          	jalr	zero,0(ra)
   19b14:	0001e7b7          	lui	a5,0x1e
   19b18:	3a878513          	addi	a0,a5,936 # 1e3a8 <__clzdi2+0x194>
   19b1c:	00008067          	jalr	zero,0(ra)
   19b20:	3a878593          	addi	a1,a5,936
   19b24:	00040513          	addi	a0,s0,0
   19b28:	00f13423          	sd	a5,8(sp)
   19b2c:	178000ef          	jal	ra,19ca4 <strcmp>
   19b30:	00813783          	ld	a5,8(sp)
   19b34:	fc0506e3          	beq	a0,zero,19b00 <_setlocale_r+0x2c>
   19b38:	0001e5b7          	lui	a1,0x1e
   19b3c:	00040513          	addi	a0,s0,0
   19b40:	2b858593          	addi	a1,a1,696 # 1e2b8 <__clzdi2+0xa4>
   19b44:	160000ef          	jal	ra,19ca4 <strcmp>
   19b48:	00813783          	ld	a5,8(sp)
   19b4c:	fa050ae3          	beq	a0,zero,19b00 <_setlocale_r+0x2c>
   19b50:	00000513          	addi	a0,zero,0
   19b54:	fb1ff06f          	jal	zero,19b04 <_setlocale_r+0x30>

0000000000019b58 <__locale_mb_cur_max>:
   19b58:	1681c503          	lbu	a0,360(gp) # 205b0 <__global_locale+0x160>
   19b5c:	00008067          	jalr	zero,0(ra)

0000000000019b60 <setlocale>:
   19b60:	04058063          	beq	a1,zero,19ba0 <setlocale+0x40>
   19b64:	fe010113          	addi	sp,sp,-32
   19b68:	00813823          	sd	s0,16(sp)
   19b6c:	00058513          	addi	a0,a1,0
   19b70:	00058413          	addi	s0,a1,0
   19b74:	0001e5b7          	lui	a1,0x1e
   19b78:	3b058593          	addi	a1,a1,944 # 1e3b0 <__clzdi2+0x19c>
   19b7c:	00113c23          	sd	ra,24(sp)
   19b80:	124000ef          	jal	ra,19ca4 <strcmp>
   19b84:	0001e7b7          	lui	a5,0x1e
   19b88:	02051263          	bne	a0,zero,19bac <setlocale+0x4c>
   19b8c:	3a878513          	addi	a0,a5,936 # 1e3a8 <__clzdi2+0x194>
   19b90:	01813083          	ld	ra,24(sp)
   19b94:	01013403          	ld	s0,16(sp)
   19b98:	02010113          	addi	sp,sp,32
   19b9c:	00008067          	jalr	zero,0(ra)
   19ba0:	0001e7b7          	lui	a5,0x1e
   19ba4:	3a878513          	addi	a0,a5,936 # 1e3a8 <__clzdi2+0x194>
   19ba8:	00008067          	jalr	zero,0(ra)
   19bac:	3a878593          	addi	a1,a5,936
   19bb0:	00040513          	addi	a0,s0,0
   19bb4:	00f13423          	sd	a5,8(sp)
   19bb8:	0ec000ef          	jal	ra,19ca4 <strcmp>
   19bbc:	00813783          	ld	a5,8(sp)
   19bc0:	fc0506e3          	beq	a0,zero,19b8c <setlocale+0x2c>
   19bc4:	0001e5b7          	lui	a1,0x1e
   19bc8:	00040513          	addi	a0,s0,0
   19bcc:	2b858593          	addi	a1,a1,696 # 1e2b8 <__clzdi2+0xa4>
   19bd0:	0d4000ef          	jal	ra,19ca4 <strcmp>
   19bd4:	00813783          	ld	a5,8(sp)
   19bd8:	fa050ae3          	beq	a0,zero,19b8c <setlocale+0x2c>
   19bdc:	00000513          	addi	a0,zero,0
   19be0:	fb1ff06f          	jal	zero,19b90 <setlocale+0x30>

0000000000019be4 <_fstat_r>:
   19be4:	fe010113          	addi	sp,sp,-32
   19be8:	00058793          	addi	a5,a1,0
   19bec:	00813823          	sd	s0,16(sp)
   19bf0:	00913423          	sd	s1,8(sp)
   19bf4:	00060593          	addi	a1,a2,0
   19bf8:	00050493          	addi	s1,a0,0
   19bfc:	00078513          	addi	a0,a5,0
   19c00:	00113c23          	sd	ra,24(sp)
   19c04:	2401a023          	sw	zero,576(gp) # 20688 <errno>
   19c08:	4a1010ef          	jal	ra,1b8a8 <_fstat>
   19c0c:	fff00793          	addi	a5,zero,-1
   19c10:	00f50c63          	beq	a0,a5,19c28 <_fstat_r+0x44>
   19c14:	01813083          	ld	ra,24(sp)
   19c18:	01013403          	ld	s0,16(sp)
   19c1c:	00813483          	ld	s1,8(sp)
   19c20:	02010113          	addi	sp,sp,32
   19c24:	00008067          	jalr	zero,0(ra)
   19c28:	2401a783          	lw	a5,576(gp) # 20688 <errno>
   19c2c:	fe0784e3          	beq	a5,zero,19c14 <_fstat_r+0x30>
   19c30:	01813083          	ld	ra,24(sp)
   19c34:	01013403          	ld	s0,16(sp)
   19c38:	00f4a023          	sw	a5,0(s1)
   19c3c:	00813483          	ld	s1,8(sp)
   19c40:	02010113          	addi	sp,sp,32
   19c44:	00008067          	jalr	zero,0(ra)

0000000000019c48 <_isatty_r>:
   19c48:	fe010113          	addi	sp,sp,-32
   19c4c:	00813823          	sd	s0,16(sp)
   19c50:	00913423          	sd	s1,8(sp)
   19c54:	00050493          	addi	s1,a0,0
   19c58:	00058513          	addi	a0,a1,0
   19c5c:	00113c23          	sd	ra,24(sp)
   19c60:	2401a023          	sw	zero,576(gp) # 20688 <errno>
   19c64:	4b5010ef          	jal	ra,1b918 <_isatty>
   19c68:	fff00793          	addi	a5,zero,-1
   19c6c:	00f50c63          	beq	a0,a5,19c84 <_isatty_r+0x3c>
   19c70:	01813083          	ld	ra,24(sp)
   19c74:	01013403          	ld	s0,16(sp)
   19c78:	00813483          	ld	s1,8(sp)
   19c7c:	02010113          	addi	sp,sp,32
   19c80:	00008067          	jalr	zero,0(ra)
   19c84:	2401a783          	lw	a5,576(gp) # 20688 <errno>
   19c88:	fe0784e3          	beq	a5,zero,19c70 <_isatty_r+0x28>
   19c8c:	01813083          	ld	ra,24(sp)
   19c90:	01013403          	ld	s0,16(sp)
   19c94:	00f4a023          	sw	a5,0(s1)
   19c98:	00813483          	ld	s1,8(sp)
   19c9c:	02010113          	addi	sp,sp,32
   19ca0:	00008067          	jalr	zero,0(ra)

0000000000019ca4 <strcmp>:
   19ca4:	00b56733          	or	a4,a0,a1
   19ca8:	fff00393          	addi	t2,zero,-1
   19cac:	00777713          	andi	a4,a4,7
   19cb0:	0c071c63          	bne	a4,zero,19d88 <strcmp+0xe4>
   19cb4:	00007797          	auipc	a5,0x7
   19cb8:	9a47b783          	ld	a5,-1628(a5) # 20658 <mask>
   19cbc:	00053603          	ld	a2,0(a0)
   19cc0:	0005b683          	ld	a3,0(a1)
   19cc4:	00f672b3          	and	t0,a2,a5
   19cc8:	00f66333          	or	t1,a2,a5
   19ccc:	00f282b3          	add	t0,t0,a5
   19cd0:	0062e2b3          	or	t0,t0,t1
   19cd4:	0c729e63          	bne	t0,t2,19db0 <strcmp+0x10c>
   19cd8:	04d61663          	bne	a2,a3,19d24 <strcmp+0x80>
   19cdc:	00853603          	ld	a2,8(a0)
   19ce0:	0085b683          	ld	a3,8(a1)
   19ce4:	00f672b3          	and	t0,a2,a5
   19ce8:	00f66333          	or	t1,a2,a5
   19cec:	00f282b3          	add	t0,t0,a5
   19cf0:	0062e2b3          	or	t0,t0,t1
   19cf4:	0a729a63          	bne	t0,t2,19da8 <strcmp+0x104>
   19cf8:	02d61663          	bne	a2,a3,19d24 <strcmp+0x80>
   19cfc:	01053603          	ld	a2,16(a0)
   19d00:	0105b683          	ld	a3,16(a1)
   19d04:	00f672b3          	and	t0,a2,a5
   19d08:	00f66333          	or	t1,a2,a5
   19d0c:	00f282b3          	add	t0,t0,a5
   19d10:	0062e2b3          	or	t0,t0,t1
   19d14:	0a729463          	bne	t0,t2,19dbc <strcmp+0x118>
   19d18:	01850513          	addi	a0,a0,24
   19d1c:	01858593          	addi	a1,a1,24
   19d20:	f8d60ee3          	beq	a2,a3,19cbc <strcmp+0x18>
   19d24:	03061713          	slli	a4,a2,0x30
   19d28:	03069793          	slli	a5,a3,0x30
   19d2c:	02f71a63          	bne	a4,a5,19d60 <strcmp+0xbc>
   19d30:	02061713          	slli	a4,a2,0x20
   19d34:	02069793          	slli	a5,a3,0x20
   19d38:	02f71463          	bne	a4,a5,19d60 <strcmp+0xbc>
   19d3c:	01061713          	slli	a4,a2,0x10
   19d40:	01069793          	slli	a5,a3,0x10
   19d44:	00f71e63          	bne	a4,a5,19d60 <strcmp+0xbc>
   19d48:	03065713          	srli	a4,a2,0x30
   19d4c:	0306d793          	srli	a5,a3,0x30
   19d50:	40f70533          	sub	a0,a4,a5
   19d54:	0ff57593          	andi	a1,a0,255
   19d58:	02059063          	bne	a1,zero,19d78 <strcmp+0xd4>
   19d5c:	00008067          	jalr	zero,0(ra)
   19d60:	03075713          	srli	a4,a4,0x30
   19d64:	0307d793          	srli	a5,a5,0x30
   19d68:	40f70533          	sub	a0,a4,a5
   19d6c:	0ff57593          	andi	a1,a0,255
   19d70:	00059463          	bne	a1,zero,19d78 <strcmp+0xd4>
   19d74:	00008067          	jalr	zero,0(ra)
   19d78:	0ff77713          	andi	a4,a4,255
   19d7c:	0ff7f793          	andi	a5,a5,255
   19d80:	40f70533          	sub	a0,a4,a5
   19d84:	00008067          	jalr	zero,0(ra)
   19d88:	00054603          	lbu	a2,0(a0)
   19d8c:	0005c683          	lbu	a3,0(a1)
   19d90:	00150513          	addi	a0,a0,1
   19d94:	00158593          	addi	a1,a1,1
   19d98:	00d61463          	bne	a2,a3,19da0 <strcmp+0xfc>
   19d9c:	fe0616e3          	bne	a2,zero,19d88 <strcmp+0xe4>
   19da0:	40d60533          	sub	a0,a2,a3
   19da4:	00008067          	jalr	zero,0(ra)
   19da8:	00850513          	addi	a0,a0,8
   19dac:	00858593          	addi	a1,a1,8
   19db0:	fcd61ce3          	bne	a2,a3,19d88 <strcmp+0xe4>
   19db4:	00000513          	addi	a0,zero,0
   19db8:	00008067          	jalr	zero,0(ra)
   19dbc:	01050513          	addi	a0,a0,16
   19dc0:	01058593          	addi	a1,a1,16
   19dc4:	fcd612e3          	bne	a2,a3,19d88 <strcmp+0xe4>
   19dc8:	00000513          	addi	a0,zero,0
   19dcc:	00008067          	jalr	zero,0(ra)

0000000000019dd0 <__assert_func>:
   19dd0:	2201b783          	ld	a5,544(gp) # 20668 <_impure_ptr>
   19dd4:	ff010113          	addi	sp,sp,-16
   19dd8:	00060813          	addi	a6,a2,0
   19ddc:	00113423          	sd	ra,8(sp)
   19de0:	00050313          	addi	t1,a0,0
   19de4:	00058713          	addi	a4,a1,0
   19de8:	0187b503          	ld	a0,24(a5)
   19dec:	00068613          	addi	a2,a3,0
   19df0:	02080063          	beq	a6,zero,19e10 <__assert_func+0x40>
   19df4:	0001e7b7          	lui	a5,0x1e
   19df8:	3c078793          	addi	a5,a5,960 # 1e3c0 <__clzdi2+0x1ac>
   19dfc:	0001e5b7          	lui	a1,0x1e
   19e00:	00030693          	addi	a3,t1,0
   19e04:	3d058593          	addi	a1,a1,976 # 1e3d0 <__clzdi2+0x1bc>
   19e08:	2a4000ef          	jal	ra,1a0ac <fiprintf>
   19e0c:	4c4010ef          	jal	ra,1b2d0 <abort>
   19e10:	0001e7b7          	lui	a5,0x1e
   19e14:	2b878793          	addi	a5,a5,696 # 1e2b8 <__clzdi2+0xa4>
   19e18:	00078813          	addi	a6,a5,0
   19e1c:	fe1ff06f          	jal	zero,19dfc <__assert_func+0x2c>

0000000000019e20 <__assert>:
   19e20:	ff010113          	addi	sp,sp,-16
   19e24:	00060693          	addi	a3,a2,0
   19e28:	00000613          	addi	a2,zero,0
   19e2c:	00113423          	sd	ra,8(sp)
   19e30:	fa1ff0ef          	jal	ra,19dd0 <__assert_func>

0000000000019e34 <_calloc_r>:
   19e34:	fe010113          	addi	sp,sp,-32
   19e38:	00813823          	sd	s0,16(sp)
   19e3c:	00113c23          	sd	ra,24(sp)
   19e40:	4205d693          	srai	a3,a1,0x20
   19e44:	00058793          	addi	a5,a1,0
   19e48:	00050413          	addi	s0,a0,0
   19e4c:	02065713          	srli	a4,a2,0x20
   19e50:	0c069463          	bne	a3,zero,19f18 <_calloc_r+0xe4>
   19e54:	14071663          	bne	a4,zero,19fa0 <_calloc_r+0x16c>
   19e58:	02079513          	slli	a0,a5,0x20
   19e5c:	02061593          	slli	a1,a2,0x20
   19e60:	0205d593          	srli	a1,a1,0x20
   19e64:	02055513          	srli	a0,a0,0x20
   19e68:	288040ef          	jal	ra,1e0f0 <__muldi3>
   19e6c:	00050593          	addi	a1,a0,0
   19e70:	00040513          	addi	a0,s0,0
   19e74:	b60f70ef          	jal	ra,111d4 <_malloc_r>
   19e78:	00050793          	addi	a5,a0,0
   19e7c:	10050663          	beq	a0,zero,19f88 <_calloc_r+0x154>
   19e80:	ff853603          	ld	a2,-8(a0)
   19e84:	04800693          	addi	a3,zero,72
   19e88:	ffc67613          	andi	a2,a2,-4
   19e8c:	ff860613          	addi	a2,a2,-8
   19e90:	04c6e863          	bltu	a3,a2,19ee0 <_calloc_r+0xac>
   19e94:	02700593          	addi	a1,zero,39
   19e98:	00050713          	addi	a4,a0,0
   19e9c:	02c5f263          	bgeu	a1,a2,19ec0 <_calloc_r+0x8c>
   19ea0:	00053023          	sd	zero,0(a0)
   19ea4:	00053423          	sd	zero,8(a0)
   19ea8:	03700713          	addi	a4,zero,55
   19eac:	04c77c63          	bgeu	a4,a2,19f04 <_calloc_r+0xd0>
   19eb0:	00053823          	sd	zero,16(a0)
   19eb4:	00053c23          	sd	zero,24(a0)
   19eb8:	02050713          	addi	a4,a0,32
   19ebc:	0ed60663          	beq	a2,a3,19fa8 <_calloc_r+0x174>
   19ec0:	00073023          	sd	zero,0(a4)
   19ec4:	00073423          	sd	zero,8(a4)
   19ec8:	00073823          	sd	zero,16(a4)
   19ecc:	01813083          	ld	ra,24(sp)
   19ed0:	01013403          	ld	s0,16(sp)
   19ed4:	00078513          	addi	a0,a5,0
   19ed8:	02010113          	addi	sp,sp,32
   19edc:	00008067          	jalr	zero,0(ra)
   19ee0:	00000593          	addi	a1,zero,0
   19ee4:	00a13023          	sd	a0,0(sp)
   19ee8:	c9df60ef          	jal	ra,10b84 <memset>
   19eec:	00013783          	ld	a5,0(sp)
   19ef0:	01813083          	ld	ra,24(sp)
   19ef4:	01013403          	ld	s0,16(sp)
   19ef8:	00078513          	addi	a0,a5,0
   19efc:	02010113          	addi	sp,sp,32
   19f00:	00008067          	jalr	zero,0(ra)
   19f04:	01050713          	addi	a4,a0,16
   19f08:	00073023          	sd	zero,0(a4)
   19f0c:	00073423          	sd	zero,8(a4)
   19f10:	00073823          	sd	zero,16(a4)
   19f14:	fb9ff06f          	jal	zero,19ecc <_calloc_r+0x98>
   19f18:	0a071063          	bne	a4,zero,19fb8 <_calloc_r+0x184>
   19f1c:	0205d593          	srli	a1,a1,0x20
   19f20:	00058713          	addi	a4,a1,0
   19f24:	00060693          	addi	a3,a2,0
   19f28:	02079513          	slli	a0,a5,0x20
   19f2c:	02061593          	slli	a1,a2,0x20
   19f30:	0205d593          	srli	a1,a1,0x20
   19f34:	02055513          	srli	a0,a0,0x20
   19f38:	00e12423          	sw	a4,8(sp)
   19f3c:	00d12623          	sw	a3,12(sp)
   19f40:	1b0040ef          	jal	ra,1e0f0 <__muldi3>
   19f44:	00a13023          	sd	a0,0(sp)
   19f48:	00816583          	lwu	a1,8(sp)
   19f4c:	00c16503          	lwu	a0,12(sp)
   19f50:	1a0040ef          	jal	ra,1e0f0 <__muldi3>
   19f54:	00013783          	ld	a5,0(sp)
   19f58:	0207d713          	srli	a4,a5,0x20
   19f5c:	00e50533          	add	a0,a0,a4
   19f60:	42055713          	srai	a4,a0,0x20
   19f64:	04071a63          	bne	a4,zero,19fb8 <_calloc_r+0x184>
   19f68:	02079793          	slli	a5,a5,0x20
   19f6c:	0207d793          	srli	a5,a5,0x20
   19f70:	02051593          	slli	a1,a0,0x20
   19f74:	00f5e5b3          	or	a1,a1,a5
   19f78:	00040513          	addi	a0,s0,0
   19f7c:	a58f70ef          	jal	ra,111d4 <_malloc_r>
   19f80:	00050793          	addi	a5,a0,0
   19f84:	ee051ee3          	bne	a0,zero,19e80 <_calloc_r+0x4c>
   19f88:	00000793          	addi	a5,zero,0
   19f8c:	01813083          	ld	ra,24(sp)
   19f90:	01013403          	ld	s0,16(sp)
   19f94:	00078513          	addi	a0,a5,0
   19f98:	02010113          	addi	sp,sp,32
   19f9c:	00008067          	jalr	zero,0(ra)
   19fa0:	00058693          	addi	a3,a1,0
   19fa4:	f85ff06f          	jal	zero,19f28 <_calloc_r+0xf4>
   19fa8:	02053023          	sd	zero,32(a0)
   19fac:	02053423          	sd	zero,40(a0)
   19fb0:	03050713          	addi	a4,a0,48
   19fb4:	f0dff06f          	jal	zero,19ec0 <_calloc_r+0x8c>
   19fb8:	310010ef          	jal	ra,1b2c8 <__errno>
   19fbc:	00c00793          	addi	a5,zero,12
   19fc0:	00f52023          	sw	a5,0(a0)
   19fc4:	00000793          	addi	a5,zero,0
   19fc8:	fc5ff06f          	jal	zero,19f8c <_calloc_r+0x158>

0000000000019fcc <_mbtowc_r>:
   19fcc:	0f01b783          	ld	a5,240(gp) # 20538 <__global_locale+0xe8>
   19fd0:	00078067          	jalr	zero,0(a5)

0000000000019fd4 <__ascii_mbtowc>:
   19fd4:	02058063          	beq	a1,zero,19ff4 <__ascii_mbtowc+0x20>
   19fd8:	04060263          	beq	a2,zero,1a01c <__ascii_mbtowc+0x48>
   19fdc:	04068863          	beq	a3,zero,1a02c <__ascii_mbtowc+0x58>
   19fe0:	00064783          	lbu	a5,0(a2)
   19fe4:	00f5a023          	sw	a5,0(a1)
   19fe8:	00064503          	lbu	a0,0(a2)
   19fec:	00a03533          	sltu	a0,zero,a0
   19ff0:	00008067          	jalr	zero,0(ra)
   19ff4:	ff010113          	addi	sp,sp,-16
   19ff8:	00c10593          	addi	a1,sp,12
   19ffc:	02060463          	beq	a2,zero,1a024 <__ascii_mbtowc+0x50>
   1a000:	02068a63          	beq	a3,zero,1a034 <__ascii_mbtowc+0x60>
   1a004:	00064783          	lbu	a5,0(a2)
   1a008:	00f5a023          	sw	a5,0(a1)
   1a00c:	00064503          	lbu	a0,0(a2)
   1a010:	00a03533          	sltu	a0,zero,a0
   1a014:	01010113          	addi	sp,sp,16
   1a018:	00008067          	jalr	zero,0(ra)
   1a01c:	00000513          	addi	a0,zero,0
   1a020:	00008067          	jalr	zero,0(ra)
   1a024:	00000513          	addi	a0,zero,0
   1a028:	fedff06f          	jal	zero,1a014 <__ascii_mbtowc+0x40>
   1a02c:	ffe00513          	addi	a0,zero,-2
   1a030:	00008067          	jalr	zero,0(ra)
   1a034:	ffe00513          	addi	a0,zero,-2
   1a038:	fddff06f          	jal	zero,1a014 <__ascii_mbtowc+0x40>

000000000001a03c <_wctomb_r>:
   1a03c:	0e81b783          	ld	a5,232(gp) # 20530 <__global_locale+0xe0>
   1a040:	00078067          	jalr	zero,0(a5)

000000000001a044 <__ascii_wctomb>:
   1a044:	02058463          	beq	a1,zero,1a06c <__ascii_wctomb+0x28>
   1a048:	0ff00793          	addi	a5,zero,255
   1a04c:	00c7e863          	bltu	a5,a2,1a05c <__ascii_wctomb+0x18>
   1a050:	00c58023          	sb	a2,0(a1)
   1a054:	00100513          	addi	a0,zero,1
   1a058:	00008067          	jalr	zero,0(ra)
   1a05c:	08a00793          	addi	a5,zero,138
   1a060:	00f52023          	sw	a5,0(a0)
   1a064:	fff00513          	addi	a0,zero,-1
   1a068:	00008067          	jalr	zero,0(ra)
   1a06c:	00000513          	addi	a0,zero,0
   1a070:	00008067          	jalr	zero,0(ra)

000000000001a074 <_fiprintf_r>:
   1a074:	fb010113          	addi	sp,sp,-80
   1a078:	02810313          	addi	t1,sp,40
   1a07c:	02d13423          	sd	a3,40(sp)
   1a080:	00030693          	addi	a3,t1,0
   1a084:	00113c23          	sd	ra,24(sp)
   1a088:	02e13823          	sd	a4,48(sp)
   1a08c:	02f13c23          	sd	a5,56(sp)
   1a090:	05013023          	sd	a6,64(sp)
   1a094:	05113423          	sd	a7,72(sp)
   1a098:	00613423          	sd	t1,8(sp)
   1a09c:	060000ef          	jal	ra,1a0fc <_vfiprintf_r>
   1a0a0:	01813083          	ld	ra,24(sp)
   1a0a4:	05010113          	addi	sp,sp,80
   1a0a8:	00008067          	jalr	zero,0(ra)

000000000001a0ac <fiprintf>:
   1a0ac:	fb010113          	addi	sp,sp,-80
   1a0b0:	00050e93          	addi	t4,a0,0
   1a0b4:	2201b503          	ld	a0,544(gp) # 20668 <_impure_ptr>
   1a0b8:	00058e13          	addi	t3,a1,0
   1a0bc:	02010313          	addi	t1,sp,32
   1a0c0:	02c13023          	sd	a2,32(sp)
   1a0c4:	02d13423          	sd	a3,40(sp)
   1a0c8:	000e8593          	addi	a1,t4,0
   1a0cc:	000e0613          	addi	a2,t3,0
   1a0d0:	00030693          	addi	a3,t1,0
   1a0d4:	00113c23          	sd	ra,24(sp)
   1a0d8:	02e13823          	sd	a4,48(sp)
   1a0dc:	02f13c23          	sd	a5,56(sp)
   1a0e0:	05013023          	sd	a6,64(sp)
   1a0e4:	05113423          	sd	a7,72(sp)
   1a0e8:	00613423          	sd	t1,8(sp)
   1a0ec:	010000ef          	jal	ra,1a0fc <_vfiprintf_r>
   1a0f0:	01813083          	ld	ra,24(sp)
   1a0f4:	05010113          	addi	sp,sp,80
   1a0f8:	00008067          	jalr	zero,0(ra)

000000000001a0fc <_vfiprintf_r>:
   1a0fc:	e3010113          	addi	sp,sp,-464
   1a100:	1b413023          	sd	s4,416(sp)
   1a104:	17a13823          	sd	s10,368(sp)
   1a108:	17b13423          	sd	s11,360(sp)
   1a10c:	1c113423          	sd	ra,456(sp)
   1a110:	00a13023          	sd	a0,0(sp)
   1a114:	00060d93          	addi	s11,a2,0
   1a118:	00068d13          	addi	s10,a3,0
   1a11c:	00058a13          	addi	s4,a1,0
   1a120:	00050663          	beq	a0,zero,1a12c <_vfiprintf_r+0x30>
   1a124:	04853783          	ld	a5,72(a0)
   1a128:	6c0784e3          	beq	a5,zero,1aff0 <_vfiprintf_r+0xef4>
   1a12c:	010a1783          	lh	a5,16(s4)
   1a130:	0aca2703          	lw	a4,172(s4)
   1a134:	00002637          	lui	a2,0x2
   1a138:	03279693          	slli	a3,a5,0x32
   1a13c:	3606ce63          	blt	a3,zero,1a4b8 <_vfiprintf_r+0x3bc>
   1a140:	ffffe6b7          	lui	a3,0xffffe
   1a144:	00c7e7b3          	or	a5,a5,a2
   1a148:	fff68693          	addi	a3,a3,-1 # ffffffffffffdfff <__BSS_END__+0xfffffffffffdd3b7>
   1a14c:	00d77733          	and	a4,a4,a3
   1a150:	00fa1823          	sh	a5,16(s4)
   1a154:	0107979b          	slliw	a5,a5,0x10
   1a158:	4107d79b          	sraiw	a5,a5,0x10
   1a15c:	0aea2623          	sw	a4,172(s4)
   1a160:	0087f713          	andi	a4,a5,8
   1a164:	28070a63          	beq	a4,zero,1a3f8 <_vfiprintf_r+0x2fc>
   1a168:	018a3703          	ld	a4,24(s4)
   1a16c:	28070663          	beq	a4,zero,1a3f8 <_vfiprintf_r+0x2fc>
   1a170:	01a7f793          	andi	a5,a5,26
   1a174:	00a00713          	addi	a4,zero,10
   1a178:	2ae78063          	beq	a5,a4,1a418 <_vfiprintf_r+0x31c>
   1a17c:	0001e737          	lui	a4,0x1e
   1a180:	19713423          	sd	s7,392(sp)
   1a184:	19813023          	sd	s8,384(sp)
   1a188:	0e010b93          	addi	s7,sp,224
   1a18c:	0001fc37          	lui	s8,0x1f
   1a190:	7e470713          	addi	a4,a4,2020 # 1e7e4 <_ctype_+0x104>
   1a194:	1b213823          	sd	s2,432(sp)
   1a198:	1c813023          	sd	s0,448(sp)
   1a19c:	1a913c23          	sd	s1,440(sp)
   1a1a0:	1b313423          	sd	s3,424(sp)
   1a1a4:	19513c23          	sd	s5,408(sp)
   1a1a8:	19613823          	sd	s6,400(sp)
   1a1ac:	17913c23          	sd	s9,376(sp)
   1a1b0:	06013823          	sd	zero,112(sp)
   1a1b4:	06012423          	sw	zero,104(sp)
   1a1b8:	07713023          	sd	s7,96(sp)
   1a1bc:	000b8793          	addi	a5,s7,0
   1a1c0:	00e13c23          	sd	a4,24(sp)
   1a1c4:	950c0c13          	addi	s8,s8,-1712 # 1e950 <zeroes.0>
   1a1c8:	02013823          	sd	zero,48(sp)
   1a1cc:	04013023          	sd	zero,64(sp)
   1a1d0:	02013c23          	sd	zero,56(sp)
   1a1d4:	00013423          	sd	zero,8(sp)
   1a1d8:	01000913          	addi	s2,zero,16
   1a1dc:	000dc683          	lbu	a3,0(s11)
   1a1e0:	000d8413          	addi	s0,s11,0
   1a1e4:	fdb68713          	addi	a4,a3,-37
   1a1e8:	0006861b          	addiw	a2,a3,0
   1a1ec:	06070463          	beq	a4,zero,1a254 <_vfiprintf_r+0x158>
   1a1f0:	06060263          	beq	a2,zero,1a254 <_vfiprintf_r+0x158>
   1a1f4:	00040493          	addi	s1,s0,0
   1a1f8:	00144683          	lbu	a3,1(s0)
   1a1fc:	00140413          	addi	s0,s0,1
   1a200:	0006871b          	addiw	a4,a3,0
   1a204:	00068663          	beq	a3,zero,1a210 <_vfiprintf_r+0x114>
   1a208:	fdb70713          	addi	a4,a4,-37
   1a20c:	fe0714e3          	bne	a4,zero,1a1f4 <_vfiprintf_r+0xf8>
   1a210:	41b409bb          	subw	s3,s0,s11
   1a214:	04098063          	beq	s3,zero,1a254 <_vfiprintf_r+0x158>
   1a218:	07013683          	ld	a3,112(sp)
   1a21c:	06812703          	lw	a4,104(sp)
   1a220:	01b7b023          	sd	s11,0(a5)
   1a224:	013686b3          	add	a3,a3,s3
   1a228:	0017071b          	addiw	a4,a4,1
   1a22c:	0137b423          	sd	s3,8(a5)
   1a230:	06d13823          	sd	a3,112(sp)
   1a234:	06e12423          	sw	a4,104(sp)
   1a238:	00700693          	addi	a3,zero,7
   1a23c:	01078793          	addi	a5,a5,16
   1a240:	20e6c463          	blt	a3,a4,1a448 <_vfiprintf_r+0x34c>
   1a244:	00813703          	ld	a4,8(sp)
   1a248:	0014c683          	lbu	a3,1(s1)
   1a24c:	0137073b          	addw	a4,a4,s3
   1a250:	00e13423          	sd	a4,8(sp)
   1a254:	20068863          	beq	a3,zero,1a464 <_vfiprintf_r+0x368>
   1a258:	00144703          	lbu	a4,1(s0)
   1a25c:	00140d93          	addi	s11,s0,1
   1a260:	04010ba3          	sb	zero,87(sp)
   1a264:	fff00413          	addi	s0,zero,-1
   1a268:	00000993          	addi	s3,zero,0
   1a26c:	00000493          	addi	s1,zero,0
   1a270:	05a00a93          	addi	s5,zero,90
   1a274:	001d8d93          	addi	s11,s11,1
   1a278:	0007071b          	addiw	a4,a4,0
   1a27c:	fe07069b          	addiw	a3,a4,-32
   1a280:	04daea63          	bltu	s5,a3,1a2d4 <_vfiprintf_r+0x1d8>
   1a284:	02069613          	slli	a2,a3,0x20
   1a288:	01e65693          	srli	a3,a2,0x1e
   1a28c:	01813603          	ld	a2,24(sp)
   1a290:	00c686b3          	add	a3,a3,a2
   1a294:	0006a683          	lw	a3,0(a3)
   1a298:	00068067          	jalr	zero,0(a3)
   1a29c:	00000993          	addi	s3,zero,0
   1a2a0:	00900513          	addi	a0,zero,9
   1a2a4:	000dc603          	lbu	a2,0(s11)
   1a2a8:	0029969b          	slliw	a3,s3,0x2
   1a2ac:	013686bb          	addw	a3,a3,s3
   1a2b0:	fd07071b          	addiw	a4,a4,-48
   1a2b4:	0016969b          	slliw	a3,a3,0x1
   1a2b8:	fd06059b          	addiw	a1,a2,-48 # 1fd0 <exit-0xe150>
   1a2bc:	001d8d93          	addi	s11,s11,1
   1a2c0:	00d709bb          	addw	s3,a4,a3
   1a2c4:	0006071b          	addiw	a4,a2,0
   1a2c8:	fcb57ee3          	bgeu	a0,a1,1a2a4 <_vfiprintf_r+0x1a8>
   1a2cc:	fe07069b          	addiw	a3,a4,-32
   1a2d0:	fadafae3          	bgeu	s5,a3,1a284 <_vfiprintf_r+0x188>
   1a2d4:	18070863          	beq	a4,zero,1a464 <_vfiprintf_r+0x368>
   1a2d8:	00100c93          	addi	s9,zero,1
   1a2dc:	06e10c23          	sb	a4,120(sp)
   1a2e0:	04010ba3          	sb	zero,87(sp)
   1a2e4:	000c8a93          	addi	s5,s9,0
   1a2e8:	00000413          	addi	s0,zero,0
   1a2ec:	07810b13          	addi	s6,sp,120
   1a2f0:	07013583          	ld	a1,112(sp)
   1a2f4:	06812603          	lw	a2,104(sp)
   1a2f8:	0844f313          	andi	t1,s1,132
   1a2fc:	00058693          	addi	a3,a1,0
   1a300:	00060713          	addi	a4,a2,0
   1a304:	06031e63          	bne	t1,zero,1a380 <_vfiprintf_r+0x284>
   1a308:	41598ebb          	subw	t4,s3,s5
   1a30c:	1fd048e3          	blt	zero,t4,1acfc <_vfiprintf_r+0xc00>
   1a310:	05714603          	lbu	a2,87(sp)
   1a314:	06060a63          	beq	a2,zero,1a388 <_vfiprintf_r+0x28c>
   1a318:	00000313          	addi	t1,zero,0
   1a31c:	02013423          	sd	zero,40(sp)
   1a320:	05710613          	addi	a2,sp,87
   1a324:	00c7b023          	sd	a2,0(a5)
   1a328:	00168693          	addi	a3,a3,1
   1a32c:	00100613          	addi	a2,zero,1
   1a330:	0017071b          	addiw	a4,a4,1
   1a334:	00c7b423          	sd	a2,8(a5)
   1a338:	06d13823          	sd	a3,112(sp)
   1a33c:	06e12423          	sw	a4,104(sp)
   1a340:	00700613          	addi	a2,zero,7
   1a344:	01078793          	addi	a5,a5,16
   1a348:	08e646e3          	blt	a2,a4,1abd4 <_vfiprintf_r+0xad8>
   1a34c:	02813603          	ld	a2,40(sp)
   1a350:	02060863          	beq	a2,zero,1a380 <_vfiprintf_r+0x284>
   1a354:	05810613          	addi	a2,sp,88
   1a358:	00c7b023          	sd	a2,0(a5)
   1a35c:	00268693          	addi	a3,a3,2
   1a360:	00200613          	addi	a2,zero,2
   1a364:	0017071b          	addiw	a4,a4,1
   1a368:	00c7b423          	sd	a2,8(a5)
   1a36c:	06d13823          	sd	a3,112(sp)
   1a370:	06e12423          	sw	a4,104(sp)
   1a374:	00700613          	addi	a2,zero,7
   1a378:	01078793          	addi	a5,a5,16
   1a37c:	02e646e3          	blt	a2,a4,1aba8 <_vfiprintf_r+0xaac>
   1a380:	08000613          	addi	a2,zero,128
   1a384:	66c30263          	beq	t1,a2,1a9e8 <_vfiprintf_r+0x8ec>
   1a388:	4194043b          	subw	s0,s0,s9
   1a38c:	72804a63          	blt	zero,s0,1aac0 <_vfiprintf_r+0x9c4>
   1a390:	00dc86b3          	add	a3,s9,a3
   1a394:	0017071b          	addiw	a4,a4,1
   1a398:	0167b023          	sd	s6,0(a5)
   1a39c:	0197b423          	sd	s9,8(a5)
   1a3a0:	06d13823          	sd	a3,112(sp)
   1a3a4:	06e12423          	sw	a4,104(sp)
   1a3a8:	00700613          	addi	a2,zero,7
   1a3ac:	01078793          	addi	a5,a5,16
   1a3b0:	7ce64063          	blt	a2,a4,1ab70 <_vfiprintf_r+0xa74>
   1a3b4:	0044f493          	andi	s1,s1,4
   1a3b8:	00048663          	beq	s1,zero,1a3c4 <_vfiprintf_r+0x2c8>
   1a3bc:	4159843b          	subw	s0,s3,s5
   1a3c0:	048040e3          	blt	zero,s0,1ac00 <_vfiprintf_r+0xb04>
   1a3c4:	00098793          	addi	a5,s3,0
   1a3c8:	0159d463          	bge	s3,s5,1a3d0 <_vfiprintf_r+0x2d4>
   1a3cc:	000a8793          	addi	a5,s5,0
   1a3d0:	00813703          	ld	a4,8(sp)
   1a3d4:	00e787bb          	addw	a5,a5,a4
   1a3d8:	00f13423          	sd	a5,8(sp)
   1a3dc:	7a069a63          	bne	a3,zero,1ab90 <_vfiprintf_r+0xa94>
   1a3e0:	06012423          	sw	zero,104(sp)
   1a3e4:	000b8793          	addi	a5,s7,0
   1a3e8:	df5ff06f          	jal	zero,1a1dc <_vfiprintf_r+0xe0>
   1a3ec:	000dc703          	lbu	a4,0(s11)
   1a3f0:	0104e493          	ori	s1,s1,16
   1a3f4:	e81ff06f          	jal	zero,1a274 <_vfiprintf_r+0x178>
   1a3f8:	00013503          	ld	a0,0(sp)
   1a3fc:	000a0593          	addi	a1,s4,0
   1a400:	f21fa0ef          	jal	ra,15320 <__swsetup_r>
   1a404:	0a051e63          	bne	a0,zero,1a4c0 <_vfiprintf_r+0x3c4>
   1a408:	010a1783          	lh	a5,16(s4)
   1a40c:	00a00713          	addi	a4,zero,10
   1a410:	01a7f793          	andi	a5,a5,26
   1a414:	d6e794e3          	bne	a5,a4,1a17c <_vfiprintf_r+0x80>
   1a418:	012a1783          	lh	a5,18(s4)
   1a41c:	d607c0e3          	blt	a5,zero,1a17c <_vfiprintf_r+0x80>
   1a420:	00013503          	ld	a0,0(sp)
   1a424:	1c813083          	ld	ra,456(sp)
   1a428:	000d0693          	addi	a3,s10,0
   1a42c:	000d8613          	addi	a2,s11,0
   1a430:	17013d03          	ld	s10,368(sp)
   1a434:	16813d83          	ld	s11,360(sp)
   1a438:	000a0593          	addi	a1,s4,0
   1a43c:	1a013a03          	ld	s4,416(sp)
   1a440:	1d010113          	addi	sp,sp,464
   1a444:	5c50006f          	jal	zero,1b208 <__sbprintf>
   1a448:	00013503          	ld	a0,0(sp)
   1a44c:	06010613          	addi	a2,sp,96
   1a450:	000a0593          	addi	a1,s4,0
   1a454:	d4cfa0ef          	jal	ra,149a0 <__sprint_r>
   1a458:	00051a63          	bne	a0,zero,1a46c <_vfiprintf_r+0x370>
   1a45c:	000b8793          	addi	a5,s7,0
   1a460:	de5ff06f          	jal	zero,1a244 <_vfiprintf_r+0x148>
   1a464:	07013783          	ld	a5,112(sp)
   1a468:	4a0798e3          	bne	a5,zero,1b118 <_vfiprintf_r+0x101c>
   1a46c:	010a5783          	lhu	a5,16(s4)
   1a470:	1c013403          	ld	s0,448(sp)
   1a474:	1b813483          	ld	s1,440(sp)
   1a478:	0407f793          	andi	a5,a5,64
   1a47c:	1b013903          	ld	s2,432(sp)
   1a480:	1a813983          	ld	s3,424(sp)
   1a484:	19813a83          	ld	s5,408(sp)
   1a488:	19013b03          	ld	s6,400(sp)
   1a48c:	18813b83          	ld	s7,392(sp)
   1a490:	18013c03          	ld	s8,384(sp)
   1a494:	17813c83          	ld	s9,376(sp)
   1a498:	02079463          	bne	a5,zero,1a4c0 <_vfiprintf_r+0x3c4>
   1a49c:	1c813083          	ld	ra,456(sp)
   1a4a0:	00813503          	ld	a0,8(sp)
   1a4a4:	1a013a03          	ld	s4,416(sp)
   1a4a8:	17013d03          	ld	s10,368(sp)
   1a4ac:	16813d83          	ld	s11,360(sp)
   1a4b0:	1d010113          	addi	sp,sp,464
   1a4b4:	00008067          	jalr	zero,0(ra)
   1a4b8:	03271693          	slli	a3,a4,0x32
   1a4bc:	ca06d2e3          	bge	a3,zero,1a160 <_vfiprintf_r+0x64>
   1a4c0:	fff00793          	addi	a5,zero,-1
   1a4c4:	00f13423          	sd	a5,8(sp)
   1a4c8:	fd5ff06f          	jal	zero,1a49c <_vfiprintf_r+0x3a0>
   1a4cc:	0204f713          	andi	a4,s1,32
   1a4d0:	008d0613          	addi	a2,s10,8
   1a4d4:	0e071c63          	bne	a4,zero,1a5cc <_vfiprintf_r+0x4d0>
   1a4d8:	0104f713          	andi	a4,s1,16
   1a4dc:	0e071863          	bne	a4,zero,1a5cc <_vfiprintf_r+0x4d0>
   1a4e0:	0404f693          	andi	a3,s1,64
   1a4e4:	000d2703          	lw	a4,0(s10)
   1a4e8:	340688e3          	beq	a3,zero,1b038 <_vfiprintf_r+0xf3c>
   1a4ec:	0107171b          	slliw	a4,a4,0x10
   1a4f0:	4107571b          	sraiw	a4,a4,0x10
   1a4f4:	00060d13          	addi	s10,a2,0
   1a4f8:	00070693          	addi	a3,a4,0
   1a4fc:	0e06c063          	blt	a3,zero,1a5dc <_vfiprintf_r+0x4e0>
   1a500:	26044a63          	blt	s0,zero,1a774 <_vfiprintf_r+0x678>
   1a504:	f7f4f493          	andi	s1,s1,-129
   1a508:	26041663          	bne	s0,zero,1a774 <_vfiprintf_r+0x678>
   1a50c:	26071463          	bne	a4,zero,1a774 <_vfiprintf_r+0x678>
   1a510:	05714703          	lbu	a4,87(sp)
   1a514:	00000c93          	addi	s9,zero,0
   1a518:	00000413          	addi	s0,zero,0
   1a51c:	0dc10b13          	addi	s6,sp,220
   1a520:	24070463          	beq	a4,zero,1a768 <_vfiprintf_r+0x66c>
   1a524:	00100a93          	addi	s5,zero,1
   1a528:	07013683          	ld	a3,112(sp)
   1a52c:	06812703          	lw	a4,104(sp)
   1a530:	0844f313          	andi	t1,s1,132
   1a534:	00068593          	addi	a1,a3,0
   1a538:	00070613          	addi	a2,a4,0
   1a53c:	dc0306e3          	beq	t1,zero,1a308 <_vfiprintf_r+0x20c>
   1a540:	02013423          	sd	zero,40(sp)
   1a544:	dddff06f          	jal	zero,1a320 <_vfiprintf_r+0x224>
   1a548:	000d3b03          	ld	s6,0(s10)
   1a54c:	04010ba3          	sb	zero,87(sp)
   1a550:	008d0d13          	addi	s10,s10,8
   1a554:	2c0b02e3          	beq	s6,zero,1b018 <_vfiprintf_r+0xf1c>
   1a558:	00f13823          	sd	a5,16(sp)
   1a55c:	1e0440e3          	blt	s0,zero,1af3c <_vfiprintf_r+0xe40>
   1a560:	00040613          	addi	a2,s0,0
   1a564:	00000593          	addi	a1,zero,0
   1a568:	000b0513          	addi	a0,s6,0
   1a56c:	f19fa0ef          	jal	ra,15484 <memchr>
   1a570:	05714703          	lbu	a4,87(sp)
   1a574:	01013783          	ld	a5,16(sp)
   1a578:	420500e3          	beq	a0,zero,1b198 <_vfiprintf_r+0x109c>
   1a57c:	41650cbb          	subw	s9,a0,s6
   1a580:	000c8693          	addi	a3,s9,0
   1a584:	000cd463          	bge	s9,zero,1a58c <_vfiprintf_r+0x490>
   1a588:	00000693          	addi	a3,zero,0
   1a58c:	00068a9b          	addiw	s5,a3,0
   1a590:	1e0704e3          	beq	a4,zero,1af78 <_vfiprintf_r+0xe7c>
   1a594:	00168a9b          	addiw	s5,a3,1
   1a598:	00000413          	addi	s0,zero,0
   1a59c:	f8dff06f          	jal	zero,1a528 <_vfiprintf_r+0x42c>
   1a5a0:	000d2703          	lw	a4,0(s10)
   1a5a4:	00100c93          	addi	s9,zero,1
   1a5a8:	04010ba3          	sb	zero,87(sp)
   1a5ac:	06e10c23          	sb	a4,120(sp)
   1a5b0:	008d0d13          	addi	s10,s10,8
   1a5b4:	000c8a93          	addi	s5,s9,0
   1a5b8:	00000413          	addi	s0,zero,0
   1a5bc:	07810b13          	addi	s6,sp,120
   1a5c0:	d31ff06f          	jal	zero,1a2f0 <_vfiprintf_r+0x1f4>
   1a5c4:	0104e493          	ori	s1,s1,16
   1a5c8:	008d0613          	addi	a2,s10,8
   1a5cc:	000d3683          	ld	a3,0(s10)
   1a5d0:	00060d13          	addi	s10,a2,0
   1a5d4:	00068713          	addi	a4,a3,0
   1a5d8:	f206d4e3          	bge	a3,zero,1a500 <_vfiprintf_r+0x404>
   1a5dc:	02d00693          	addi	a3,zero,45
   1a5e0:	04d10ba3          	sb	a3,87(sp)
   1a5e4:	40e00733          	sub	a4,zero,a4
   1a5e8:	18044663          	blt	s0,zero,1a774 <_vfiprintf_r+0x678>
   1a5ec:	00900693          	addi	a3,zero,9
   1a5f0:	f7f4f493          	andi	s1,s1,-129
   1a5f4:	18e6f463          	bgeu	a3,a4,1a77c <_vfiprintf_r+0x680>
   1a5f8:	0dc10c93          	addi	s9,sp,220
   1a5fc:	4004f693          	andi	a3,s1,1024
   1a600:	000c8a93          	addi	s5,s9,0
   1a604:	04d13423          	sd	a3,72(sp)
   1a608:	00013823          	sd	zero,16(sp)
   1a60c:	0300006f          	jal	zero,1a63c <_vfiprintf_r+0x540>
   1a610:	00070513          	addi	a0,a4,0
   1a614:	00a00593          	addi	a1,zero,10
   1a618:	02e13423          	sd	a4,40(sp)
   1a61c:	02f13023          	sd	a5,32(sp)
   1a620:	33d030ef          	jal	ra,1e15c <__hidden___udivdi3>
   1a624:	02813683          	ld	a3,40(sp)
   1a628:	00900613          	addi	a2,zero,9
   1a62c:	02013783          	ld	a5,32(sp)
   1a630:	000b0a93          	addi	s5,s6,0
   1a634:	00050713          	addi	a4,a0,0
   1a638:	06d67063          	bgeu	a2,a3,1a698 <_vfiprintf_r+0x59c>
   1a63c:	00070513          	addi	a0,a4,0
   1a640:	00a00593          	addi	a1,zero,10
   1a644:	02f13423          	sd	a5,40(sp)
   1a648:	02e13023          	sd	a4,32(sp)
   1a64c:	359030ef          	jal	ra,1e1a4 <__umoddi3>
   1a650:	01013783          	ld	a5,16(sp)
   1a654:	04813683          	ld	a3,72(sp)
   1a658:	0305051b          	addiw	a0,a0,48
   1a65c:	0017879b          	addiw	a5,a5,1
   1a660:	00f13823          	sd	a5,16(sp)
   1a664:	feaa8fa3          	sb	a0,-1(s5)
   1a668:	02013703          	ld	a4,32(sp)
   1a66c:	02813783          	ld	a5,40(sp)
   1a670:	fffa8b13          	addi	s6,s5,-1
   1a674:	f8068ee3          	beq	a3,zero,1a610 <_vfiprintf_r+0x514>
   1a678:	03013683          	ld	a3,48(sp)
   1a67c:	01013603          	ld	a2,16(sp)
   1a680:	0006c683          	lbu	a3,0(a3)
   1a684:	f8c696e3          	bne	a3,a2,1a610 <_vfiprintf_r+0x514>
   1a688:	f0168693          	addi	a3,a3,-255
   1a68c:	f80682e3          	beq	a3,zero,1a610 <_vfiprintf_r+0x514>
   1a690:	00900693          	addi	a3,zero,9
   1a694:	28e6ece3          	bltu	a3,a4,1b12c <_vfiprintf_r+0x1030>
   1a698:	416c8cbb          	subw	s9,s9,s6
   1a69c:	05714703          	lbu	a4,87(sp)
   1a6a0:	00040a9b          	addiw	s5,s0,0
   1a6a4:	01945463          	bge	s0,s9,1a6ac <_vfiprintf_r+0x5b0>
   1a6a8:	000c8a9b          	addiw	s5,s9,0
   1a6ac:	040706e3          	beq	a4,zero,1aef8 <_vfiprintf_r+0xdfc>
   1a6b0:	001a8a9b          	addiw	s5,s5,1
   1a6b4:	0450006f          	jal	zero,1aef8 <_vfiprintf_r+0xdfc>
   1a6b8:	000d2983          	lw	s3,0(s10)
   1a6bc:	7009d463          	bge	s3,zero,1adc4 <_vfiprintf_r+0xcc8>
   1a6c0:	413009bb          	subw	s3,zero,s3
   1a6c4:	008d0d13          	addi	s10,s10,8
   1a6c8:	000dc703          	lbu	a4,0(s11)
   1a6cc:	0044e493          	ori	s1,s1,4
   1a6d0:	ba5ff06f          	jal	zero,1a274 <_vfiprintf_r+0x178>
   1a6d4:	02b00713          	addi	a4,zero,43
   1a6d8:	04e10ba3          	sb	a4,87(sp)
   1a6dc:	000dc703          	lbu	a4,0(s11)
   1a6e0:	b95ff06f          	jal	zero,1a274 <_vfiprintf_r+0x178>
   1a6e4:	0204f713          	andi	a4,s1,32
   1a6e8:	04071c63          	bne	a4,zero,1a740 <_vfiprintf_r+0x644>
   1a6ec:	0104fa93          	andi	s5,s1,16
   1a6f0:	008d0613          	addi	a2,s10,8
   1a6f4:	720a9263          	bne	s5,zero,1ae18 <_vfiprintf_r+0xd1c>
   1a6f8:	0404f693          	andi	a3,s1,64
   1a6fc:	000d2703          	lw	a4,0(s10)
   1a700:	14068ae3          	beq	a3,zero,1b054 <_vfiprintf_r+0xf58>
   1a704:	03071713          	slli	a4,a4,0x30
   1a708:	04010ba3          	sb	zero,87(sp)
   1a70c:	03075713          	srli	a4,a4,0x30
   1a710:	70044c63          	blt	s0,zero,1ae28 <_vfiprintf_r+0xd2c>
   1a714:	f7f4f493          	andi	s1,s1,-129
   1a718:	70071863          	bne	a4,zero,1ae28 <_vfiprintf_r+0xd2c>
   1a71c:	70041663          	bne	s0,zero,1ae28 <_vfiprintf_r+0xd2c>
   1a720:	00060d13          	addi	s10,a2,0
   1a724:	00000c93          	addi	s9,zero,0
   1a728:	0dc10b13          	addi	s6,sp,220
   1a72c:	bc5ff06f          	jal	zero,1a2f0 <_vfiprintf_r+0x1f4>
   1a730:	0204f713          	andi	a4,s1,32
   1a734:	008d0613          	addi	a2,s10,8
   1a738:	0104e493          	ori	s1,s1,16
   1a73c:	6c070e63          	beq	a4,zero,1ae18 <_vfiprintf_r+0xd1c>
   1a740:	04010ba3          	sb	zero,87(sp)
   1a744:	000d3703          	ld	a4,0(s10)
   1a748:	008d0693          	addi	a3,s10,8
   1a74c:	02044263          	blt	s0,zero,1a770 <_vfiprintf_r+0x674>
   1a750:	f7f4f493          	andi	s1,s1,-129
   1a754:	00041e63          	bne	s0,zero,1a770 <_vfiprintf_r+0x674>
   1a758:	00071c63          	bne	a4,zero,1a770 <_vfiprintf_r+0x674>
   1a75c:	00068d13          	addi	s10,a3,0
   1a760:	00000c93          	addi	s9,zero,0
   1a764:	0dc10b13          	addi	s6,sp,220
   1a768:	00000a93          	addi	s5,zero,0
   1a76c:	b85ff06f          	jal	zero,1a2f0 <_vfiprintf_r+0x1f4>
   1a770:	00068d13          	addi	s10,a3,0
   1a774:	00900693          	addi	a3,zero,9
   1a778:	e8e6e0e3          	bltu	a3,a4,1a5f8 <_vfiprintf_r+0x4fc>
   1a77c:	0307071b          	addiw	a4,a4,48
   1a780:	0ce10da3          	sb	a4,219(sp)
   1a784:	00040713          	addi	a4,s0,0
   1a788:	00804463          	blt	zero,s0,1a790 <_vfiprintf_r+0x694>
   1a78c:	00100713          	addi	a4,zero,1
   1a790:	05714683          	lbu	a3,87(sp)
   1a794:	00070a9b          	addiw	s5,a4,0
   1a798:	64069463          	bne	a3,zero,1ade0 <_vfiprintf_r+0xce4>
   1a79c:	00100c93          	addi	s9,zero,1
   1a7a0:	0db10b13          	addi	s6,sp,219
   1a7a4:	b4dff06f          	jal	zero,1a2f0 <_vfiprintf_r+0x1f4>
   1a7a8:	0104ea93          	ori	s5,s1,16
   1a7ac:	008d0613          	addi	a2,s10,8
   1a7b0:	000d3683          	ld	a3,0(s10)
   1a7b4:	00060d13          	addi	s10,a2,0
   1a7b8:	04010ba3          	sb	zero,87(sp)
   1a7bc:	bffaf493          	andi	s1,s5,-1025
   1a7c0:	4e044863          	blt	s0,zero,1acb0 <_vfiprintf_r+0xbb4>
   1a7c4:	b7faf493          	andi	s1,s5,-1153
   1a7c8:	4e069463          	bne	a3,zero,1acb0 <_vfiprintf_r+0xbb4>
   1a7cc:	4e041263          	bne	s0,zero,1acb0 <_vfiprintf_r+0xbb4>
   1a7d0:	001afa93          	andi	s5,s5,1
   1a7d4:	5e0a8e63          	beq	s5,zero,1add0 <_vfiprintf_r+0xcd4>
   1a7d8:	03000713          	addi	a4,zero,48
   1a7dc:	0ce10da3          	sb	a4,219(sp)
   1a7e0:	000a8c93          	addi	s9,s5,0
   1a7e4:	0db10b13          	addi	s6,sp,219
   1a7e8:	b09ff06f          	jal	zero,1a2f0 <_vfiprintf_r+0x1f4>
   1a7ec:	000dc703          	lbu	a4,0(s11)
   1a7f0:	06800693          	addi	a3,zero,104
   1a7f4:	00d702e3          	beq	a4,a3,1aff8 <_vfiprintf_r+0xefc>
   1a7f8:	0404e493          	ori	s1,s1,64
   1a7fc:	a79ff06f          	jal	zero,1a274 <_vfiprintf_r+0x178>
   1a800:	00013b03          	ld	s6,0(sp)
   1a804:	00f13823          	sd	a5,16(sp)
   1a808:	000b0513          	addi	a0,s6,0
   1a80c:	dfdfa0ef          	jal	ra,15608 <_localeconv_r>
   1a810:	00853783          	ld	a5,8(a0)
   1a814:	00078513          	addi	a0,a5,0
   1a818:	02f13c23          	sd	a5,56(sp)
   1a81c:	904fb0ef          	jal	ra,15920 <strlen>
   1a820:	00050713          	addi	a4,a0,0
   1a824:	000b0513          	addi	a0,s6,0
   1a828:	04e13023          	sd	a4,64(sp)
   1a82c:	00070b13          	addi	s6,a4,0
   1a830:	dd9fa0ef          	jal	ra,15608 <_localeconv_r>
   1a834:	01053783          	ld	a5,16(a0)
   1a838:	000dc703          	lbu	a4,0(s11)
   1a83c:	02f13823          	sd	a5,48(sp)
   1a840:	01013783          	ld	a5,16(sp)
   1a844:	a20b08e3          	beq	s6,zero,1a274 <_vfiprintf_r+0x178>
   1a848:	03013683          	ld	a3,48(sp)
   1a84c:	a20684e3          	beq	a3,zero,1a274 <_vfiprintf_r+0x178>
   1a850:	0006c683          	lbu	a3,0(a3)
   1a854:	a20680e3          	beq	a3,zero,1a274 <_vfiprintf_r+0x178>
   1a858:	4004e493          	ori	s1,s1,1024
   1a85c:	a19ff06f          	jal	zero,1a274 <_vfiprintf_r+0x178>
   1a860:	000dc703          	lbu	a4,0(s11)
   1a864:	0804e493          	ori	s1,s1,128
   1a868:	a0dff06f          	jal	zero,1a274 <_vfiprintf_r+0x178>
   1a86c:	000dc703          	lbu	a4,0(s11)
   1a870:	02a00693          	addi	a3,zero,42
   1a874:	001d8893          	addi	a7,s11,1
   1a878:	12d70ee3          	beq	a4,a3,1b1b4 <_vfiprintf_r+0x10b8>
   1a87c:	fd07061b          	addiw	a2,a4,-48
   1a880:	00900513          	addi	a0,zero,9
   1a884:	00000593          	addi	a1,zero,0
   1a888:	00088d93          	addi	s11,a7,0
   1a88c:	00000413          	addi	s0,zero,0
   1a890:	9ec566e3          	bltu	a0,a2,1a27c <_vfiprintf_r+0x180>
   1a894:	0025969b          	slliw	a3,a1,0x2
   1a898:	0008c703          	lbu	a4,0(a7)
   1a89c:	00b686bb          	addw	a3,a3,a1
   1a8a0:	0016969b          	slliw	a3,a3,0x1
   1a8a4:	00c685bb          	addw	a1,a3,a2
   1a8a8:	fd07061b          	addiw	a2,a4,-48
   1a8ac:	00188893          	addi	a7,a7,1
   1a8b0:	fec572e3          	bgeu	a0,a2,1a894 <_vfiprintf_r+0x798>
   1a8b4:	0005841b          	addiw	s0,a1,0
   1a8b8:	5c05c863          	blt	a1,zero,1ae88 <_vfiprintf_r+0xd8c>
   1a8bc:	00088d93          	addi	s11,a7,0
   1a8c0:	9bdff06f          	jal	zero,1a27c <_vfiprintf_r+0x180>
   1a8c4:	000dc703          	lbu	a4,0(s11)
   1a8c8:	0014e493          	ori	s1,s1,1
   1a8cc:	9a9ff06f          	jal	zero,1a274 <_vfiprintf_r+0x178>
   1a8d0:	05714683          	lbu	a3,87(sp)
   1a8d4:	000dc703          	lbu	a4,0(s11)
   1a8d8:	98069ee3          	bne	a3,zero,1a274 <_vfiprintf_r+0x178>
   1a8dc:	02000693          	addi	a3,zero,32
   1a8e0:	04d10ba3          	sb	a3,87(sp)
   1a8e4:	991ff06f          	jal	zero,1a274 <_vfiprintf_r+0x178>
   1a8e8:	00008737          	lui	a4,0x8
   1a8ec:	83070713          	addi	a4,a4,-2000 # 7830 <exit-0x88f0>
   1a8f0:	04e11c23          	sh	a4,88(sp)
   1a8f4:	04010ba3          	sb	zero,87(sp)
   1a8f8:	000d3683          	ld	a3,0(s10)
   1a8fc:	008d0713          	addi	a4,s10,8
   1a900:	52044c63          	blt	s0,zero,1ae38 <_vfiprintf_r+0xd3c>
   1a904:	f7f4f493          	andi	s1,s1,-129
   1a908:	0024e493          	ori	s1,s1,2
   1a90c:	0c0698e3          	bne	a3,zero,1b1dc <_vfiprintf_r+0x10e0>
   1a910:	0c0416e3          	bne	s0,zero,1b1dc <_vfiprintf_r+0x10e0>
   1a914:	00070d13          	addi	s10,a4,0
   1a918:	00000c93          	addi	s9,zero,0
   1a91c:	00000a93          	addi	s5,zero,0
   1a920:	0dc10b13          	addi	s6,sp,220
   1a924:	07013583          	ld	a1,112(sp)
   1a928:	06812603          	lw	a2,104(sp)
   1a92c:	0844f313          	andi	t1,s1,132
   1a930:	002a8a9b          	addiw	s5,s5,2
   1a934:	00058693          	addi	a3,a1,0
   1a938:	00060713          	addi	a4,a2,0
   1a93c:	a0031ce3          	bne	t1,zero,1a354 <_vfiprintf_r+0x258>
   1a940:	41598ebb          	subw	t4,s3,s5
   1a944:	a1d058e3          	bge	zero,t4,1a354 <_vfiprintf_r+0x258>
   1a948:	00200713          	addi	a4,zero,2
   1a94c:	02e13423          	sd	a4,40(sp)
   1a950:	3b00006f          	jal	zero,1ad00 <_vfiprintf_r+0xc04>
   1a954:	0204f713          	andi	a4,s1,32
   1a958:	008d0613          	addi	a2,s10,8
   1a95c:	4c071a63          	bne	a4,zero,1ae30 <_vfiprintf_r+0xd34>
   1a960:	0104f713          	andi	a4,s1,16
   1a964:	4c071663          	bne	a4,zero,1ae30 <_vfiprintf_r+0xd34>
   1a968:	0404f713          	andi	a4,s1,64
   1a96c:	000d2683          	lw	a3,0(s10)
   1a970:	70070063          	beq	a4,zero,1b070 <_vfiprintf_r+0xf74>
   1a974:	03069693          	slli	a3,a3,0x30
   1a978:	0306d693          	srli	a3,a3,0x30
   1a97c:	00060d13          	addi	s10,a2,0
   1a980:	00048a93          	addi	s5,s1,0
   1a984:	e35ff06f          	jal	zero,1a7b8 <_vfiprintf_r+0x6bc>
   1a988:	0204f713          	andi	a4,s1,32
   1a98c:	000d3683          	ld	a3,0(s10)
   1a990:	008d0d13          	addi	s10,s10,8
   1a994:	02071463          	bne	a4,zero,1a9bc <_vfiprintf_r+0x8c0>
   1a998:	0104f713          	andi	a4,s1,16
   1a99c:	02071063          	bne	a4,zero,1a9bc <_vfiprintf_r+0x8c0>
   1a9a0:	0404f713          	andi	a4,s1,64
   1a9a4:	72071a63          	bne	a4,zero,1b0d8 <_vfiprintf_r+0xfdc>
   1a9a8:	2004f493          	andi	s1,s1,512
   1a9ac:	00813703          	ld	a4,8(sp)
   1a9b0:	7e048e63          	beq	s1,zero,1b1ac <_vfiprintf_r+0x10b0>
   1a9b4:	00e68023          	sb	a4,0(a3)
   1a9b8:	825ff06f          	jal	zero,1a1dc <_vfiprintf_r+0xe0>
   1a9bc:	00813703          	ld	a4,8(sp)
   1a9c0:	00e6b023          	sd	a4,0(a3)
   1a9c4:	819ff06f          	jal	zero,1a1dc <_vfiprintf_r+0xe0>
   1a9c8:	000dc703          	lbu	a4,0(s11)
   1a9cc:	06c00693          	addi	a3,zero,108
   1a9d0:	62d70c63          	beq	a4,a3,1b008 <_vfiprintf_r+0xf0c>
   1a9d4:	0104e493          	ori	s1,s1,16
   1a9d8:	89dff06f          	jal	zero,1a274 <_vfiprintf_r+0x178>
   1a9dc:	000dc703          	lbu	a4,0(s11)
   1a9e0:	0204e493          	ori	s1,s1,32
   1a9e4:	891ff06f          	jal	zero,1a274 <_vfiprintf_r+0x178>
   1a9e8:	4159833b          	subw	t1,s3,s5
   1a9ec:	98605ee3          	bge	zero,t1,1a388 <_vfiprintf_r+0x28c>
   1a9f0:	0001f637          	lui	a2,0x1f
   1a9f4:	95060613          	addi	a2,a2,-1712 # 1e950 <zeroes.0>
   1a9f8:	01000e13          	addi	t3,zero,16
   1a9fc:	00c13823          	sd	a2,16(sp)
   1aa00:	00700e93          	addi	t4,zero,7
   1aa04:	006e4863          	blt	t3,t1,1aa14 <_vfiprintf_r+0x918>
   1aa08:	0680006f          	jal	zero,1aa70 <_vfiprintf_r+0x974>
   1aa0c:	ff03031b          	addiw	t1,t1,-16
   1aa10:	066e5063          	bge	t3,t1,1aa70 <_vfiprintf_r+0x974>
   1aa14:	01013603          	ld	a2,16(sp)
   1aa18:	01068693          	addi	a3,a3,16
   1aa1c:	0017071b          	addiw	a4,a4,1
   1aa20:	00c7b023          	sd	a2,0(a5)
   1aa24:	01c7b423          	sd	t3,8(a5)
   1aa28:	06d13823          	sd	a3,112(sp)
   1aa2c:	06e12423          	sw	a4,104(sp)
   1aa30:	01078793          	addi	a5,a5,16
   1aa34:	fceedce3          	bge	t4,a4,1aa0c <_vfiprintf_r+0x910>
   1aa38:	00013503          	ld	a0,0(sp)
   1aa3c:	06010613          	addi	a2,sp,96
   1aa40:	000a0593          	addi	a1,s4,0
   1aa44:	02613023          	sd	t1,32(sp)
   1aa48:	f59f90ef          	jal	ra,149a0 <__sprint_r>
   1aa4c:	a20510e3          	bne	a0,zero,1a46c <_vfiprintf_r+0x370>
   1aa50:	02013303          	ld	t1,32(sp)
   1aa54:	01000e13          	addi	t3,zero,16
   1aa58:	07013683          	ld	a3,112(sp)
   1aa5c:	ff03031b          	addiw	t1,t1,-16
   1aa60:	06812703          	lw	a4,104(sp)
   1aa64:	000b8793          	addi	a5,s7,0
   1aa68:	00700e93          	addi	t4,zero,7
   1aa6c:	fa6e44e3          	blt	t3,t1,1aa14 <_vfiprintf_r+0x918>
   1aa70:	01013603          	ld	a2,16(sp)
   1aa74:	006686b3          	add	a3,a3,t1
   1aa78:	0017071b          	addiw	a4,a4,1
   1aa7c:	00c7b023          	sd	a2,0(a5)
   1aa80:	0067b423          	sd	t1,8(a5)
   1aa84:	06d13823          	sd	a3,112(sp)
   1aa88:	06e12423          	sw	a4,104(sp)
   1aa8c:	00700613          	addi	a2,zero,7
   1aa90:	01078793          	addi	a5,a5,16
   1aa94:	8ee65ae3          	bge	a2,a4,1a388 <_vfiprintf_r+0x28c>
   1aa98:	00013503          	ld	a0,0(sp)
   1aa9c:	06010613          	addi	a2,sp,96
   1aaa0:	000a0593          	addi	a1,s4,0
   1aaa4:	efdf90ef          	jal	ra,149a0 <__sprint_r>
   1aaa8:	9c0512e3          	bne	a0,zero,1a46c <_vfiprintf_r+0x370>
   1aaac:	07013683          	ld	a3,112(sp)
   1aab0:	06812703          	lw	a4,104(sp)
   1aab4:	4194043b          	subw	s0,s0,s9
   1aab8:	000b8793          	addi	a5,s7,0
   1aabc:	8c805ae3          	bge	zero,s0,1a390 <_vfiprintf_r+0x294>
   1aac0:	5e895a63          	bge	s2,s0,1b0b4 <_vfiprintf_r+0xfb8>
   1aac4:	01813823          	sd	s8,16(sp)
   1aac8:	00700313          	addi	t1,zero,7
   1aacc:	00c0006f          	jal	zero,1aad8 <_vfiprintf_r+0x9dc>
   1aad0:	ff04041b          	addiw	s0,s0,-16
   1aad4:	04895863          	bge	s2,s0,1ab24 <_vfiprintf_r+0xa28>
   1aad8:	01068693          	addi	a3,a3,16
   1aadc:	0017071b          	addiw	a4,a4,1
   1aae0:	0187b023          	sd	s8,0(a5)
   1aae4:	0127b423          	sd	s2,8(a5)
   1aae8:	06d13823          	sd	a3,112(sp)
   1aaec:	06e12423          	sw	a4,104(sp)
   1aaf0:	01078793          	addi	a5,a5,16
   1aaf4:	fce35ee3          	bge	t1,a4,1aad0 <_vfiprintf_r+0x9d4>
   1aaf8:	00013503          	ld	a0,0(sp)
   1aafc:	06010613          	addi	a2,sp,96
   1ab00:	000a0593          	addi	a1,s4,0
   1ab04:	e9df90ef          	jal	ra,149a0 <__sprint_r>
   1ab08:	960512e3          	bne	a0,zero,1a46c <_vfiprintf_r+0x370>
   1ab0c:	ff04041b          	addiw	s0,s0,-16
   1ab10:	07013683          	ld	a3,112(sp)
   1ab14:	06812703          	lw	a4,104(sp)
   1ab18:	000b8793          	addi	a5,s7,0
   1ab1c:	00700313          	addi	t1,zero,7
   1ab20:	fa894ce3          	blt	s2,s0,1aad8 <_vfiprintf_r+0x9dc>
   1ab24:	01013603          	ld	a2,16(sp)
   1ab28:	008686b3          	add	a3,a3,s0
   1ab2c:	0017071b          	addiw	a4,a4,1
   1ab30:	00c7b023          	sd	a2,0(a5)
   1ab34:	0087b423          	sd	s0,8(a5)
   1ab38:	06d13823          	sd	a3,112(sp)
   1ab3c:	06e12423          	sw	a4,104(sp)
   1ab40:	00700613          	addi	a2,zero,7
   1ab44:	01078793          	addi	a5,a5,16
   1ab48:	84e654e3          	bge	a2,a4,1a390 <_vfiprintf_r+0x294>
   1ab4c:	00013503          	ld	a0,0(sp)
   1ab50:	06010613          	addi	a2,sp,96
   1ab54:	000a0593          	addi	a1,s4,0
   1ab58:	e49f90ef          	jal	ra,149a0 <__sprint_r>
   1ab5c:	900518e3          	bne	a0,zero,1a46c <_vfiprintf_r+0x370>
   1ab60:	07013683          	ld	a3,112(sp)
   1ab64:	06812703          	lw	a4,104(sp)
   1ab68:	000b8793          	addi	a5,s7,0
   1ab6c:	825ff06f          	jal	zero,1a390 <_vfiprintf_r+0x294>
   1ab70:	00013503          	ld	a0,0(sp)
   1ab74:	06010613          	addi	a2,sp,96
   1ab78:	000a0593          	addi	a1,s4,0
   1ab7c:	e25f90ef          	jal	ra,149a0 <__sprint_r>
   1ab80:	8e0516e3          	bne	a0,zero,1a46c <_vfiprintf_r+0x370>
   1ab84:	07013683          	ld	a3,112(sp)
   1ab88:	000b8793          	addi	a5,s7,0
   1ab8c:	829ff06f          	jal	zero,1a3b4 <_vfiprintf_r+0x2b8>
   1ab90:	00013503          	ld	a0,0(sp)
   1ab94:	06010613          	addi	a2,sp,96
   1ab98:	000a0593          	addi	a1,s4,0
   1ab9c:	e05f90ef          	jal	ra,149a0 <__sprint_r>
   1aba0:	840500e3          	beq	a0,zero,1a3e0 <_vfiprintf_r+0x2e4>
   1aba4:	8c9ff06f          	jal	zero,1a46c <_vfiprintf_r+0x370>
   1aba8:	00013503          	ld	a0,0(sp)
   1abac:	06010613          	addi	a2,sp,96
   1abb0:	000a0593          	addi	a1,s4,0
   1abb4:	00613823          	sd	t1,16(sp)
   1abb8:	de9f90ef          	jal	ra,149a0 <__sprint_r>
   1abbc:	8a0518e3          	bne	a0,zero,1a46c <_vfiprintf_r+0x370>
   1abc0:	07013683          	ld	a3,112(sp)
   1abc4:	06812703          	lw	a4,104(sp)
   1abc8:	01013303          	ld	t1,16(sp)
   1abcc:	000b8793          	addi	a5,s7,0
   1abd0:	fb0ff06f          	jal	zero,1a380 <_vfiprintf_r+0x284>
   1abd4:	00013503          	ld	a0,0(sp)
   1abd8:	06010613          	addi	a2,sp,96
   1abdc:	000a0593          	addi	a1,s4,0
   1abe0:	00613823          	sd	t1,16(sp)
   1abe4:	dbdf90ef          	jal	ra,149a0 <__sprint_r>
   1abe8:	880512e3          	bne	a0,zero,1a46c <_vfiprintf_r+0x370>
   1abec:	07013683          	ld	a3,112(sp)
   1abf0:	06812703          	lw	a4,104(sp)
   1abf4:	01013303          	ld	t1,16(sp)
   1abf8:	000b8793          	addi	a5,s7,0
   1abfc:	f50ff06f          	jal	zero,1a34c <_vfiprintf_r+0x250>
   1ac00:	0001f337          	lui	t1,0x1f
   1ac04:	01000493          	addi	s1,zero,16
   1ac08:	06812703          	lw	a4,104(sp)
   1ac0c:	96030313          	addi	t1,t1,-1696 # 1e960 <blanks.1>
   1ac10:	00700c93          	addi	s9,zero,7
   1ac14:	0084c863          	blt	s1,s0,1ac24 <_vfiprintf_r+0xb28>
   1ac18:	05c0006f          	jal	zero,1ac74 <_vfiprintf_r+0xb78>
   1ac1c:	ff04041b          	addiw	s0,s0,-16
   1ac20:	0484da63          	bge	s1,s0,1ac74 <_vfiprintf_r+0xb78>
   1ac24:	01068693          	addi	a3,a3,16
   1ac28:	0017071b          	addiw	a4,a4,1
   1ac2c:	0067b023          	sd	t1,0(a5)
   1ac30:	0097b423          	sd	s1,8(a5)
   1ac34:	06d13823          	sd	a3,112(sp)
   1ac38:	06e12423          	sw	a4,104(sp)
   1ac3c:	01078793          	addi	a5,a5,16
   1ac40:	fcecdee3          	bge	s9,a4,1ac1c <_vfiprintf_r+0xb20>
   1ac44:	00013503          	ld	a0,0(sp)
   1ac48:	06010613          	addi	a2,sp,96
   1ac4c:	000a0593          	addi	a1,s4,0
   1ac50:	00613823          	sd	t1,16(sp)
   1ac54:	d4df90ef          	jal	ra,149a0 <__sprint_r>
   1ac58:	80051ae3          	bne	a0,zero,1a46c <_vfiprintf_r+0x370>
   1ac5c:	ff04041b          	addiw	s0,s0,-16
   1ac60:	07013683          	ld	a3,112(sp)
   1ac64:	06812703          	lw	a4,104(sp)
   1ac68:	01013303          	ld	t1,16(sp)
   1ac6c:	000b8793          	addi	a5,s7,0
   1ac70:	fa84cae3          	blt	s1,s0,1ac24 <_vfiprintf_r+0xb28>
   1ac74:	008686b3          	add	a3,a3,s0
   1ac78:	0017071b          	addiw	a4,a4,1
   1ac7c:	0067b023          	sd	t1,0(a5)
   1ac80:	0087b423          	sd	s0,8(a5)
   1ac84:	06d13823          	sd	a3,112(sp)
   1ac88:	06e12423          	sw	a4,104(sp)
   1ac8c:	00700793          	addi	a5,zero,7
   1ac90:	f2e7da63          	bge	a5,a4,1a3c4 <_vfiprintf_r+0x2c8>
   1ac94:	00013503          	ld	a0,0(sp)
   1ac98:	06010613          	addi	a2,sp,96
   1ac9c:	000a0593          	addi	a1,s4,0
   1aca0:	d01f90ef          	jal	ra,149a0 <__sprint_r>
   1aca4:	fc051463          	bne	a0,zero,1a46c <_vfiprintf_r+0x370>
   1aca8:	07013683          	ld	a3,112(sp)
   1acac:	f18ff06f          	jal	zero,1a3c4 <_vfiprintf_r+0x2c8>
   1acb0:	0dc10c93          	addi	s9,sp,220
   1acb4:	000c8b13          	addi	s6,s9,0
   1acb8:	0076f713          	andi	a4,a3,7
   1acbc:	000b0613          	addi	a2,s6,0
   1acc0:	03070713          	addi	a4,a4,48
   1acc4:	0036d693          	srli	a3,a3,0x3
   1acc8:	feeb0fa3          	sb	a4,-1(s6)
   1accc:	fffb0b13          	addi	s6,s6,-1
   1acd0:	fe0694e3          	bne	a3,zero,1acb8 <_vfiprintf_r+0xbbc>
   1acd4:	fd070713          	addi	a4,a4,-48
   1acd8:	03000693          	addi	a3,zero,48
   1acdc:	00070663          	beq	a4,zero,1ace8 <_vfiprintf_r+0xbec>
   1ace0:	0014f713          	andi	a4,s1,1
   1ace4:	10071a63          	bne	a4,zero,1adf8 <_vfiprintf_r+0xcfc>
   1ace8:	416c8cbb          	subw	s9,s9,s6
   1acec:	00040a9b          	addiw	s5,s0,0
   1acf0:	e1945063          	bge	s0,s9,1a2f0 <_vfiprintf_r+0x1f4>
   1acf4:	000c8a9b          	addiw	s5,s9,0
   1acf8:	df8ff06f          	jal	zero,1a2f0 <_vfiprintf_r+0x1f4>
   1acfc:	02013423          	sd	zero,40(sp)
   1ad00:	0001f337          	lui	t1,0x1f
   1ad04:	01000e13          	addi	t3,zero,16
   1ad08:	00058693          	addi	a3,a1,0
   1ad0c:	00060713          	addi	a4,a2,0
   1ad10:	96030313          	addi	t1,t1,-1696 # 1e960 <blanks.1>
   1ad14:	00700f13          	addi	t5,zero,7
   1ad18:	01de4863          	blt	t3,t4,1ad28 <_vfiprintf_r+0xc2c>
   1ad1c:	06c0006f          	jal	zero,1ad88 <_vfiprintf_r+0xc8c>
   1ad20:	ff0e8e9b          	addiw	t4,t4,-16
   1ad24:	07de5263          	bge	t3,t4,1ad88 <_vfiprintf_r+0xc8c>
   1ad28:	01068693          	addi	a3,a3,16
   1ad2c:	0017071b          	addiw	a4,a4,1
   1ad30:	0067b023          	sd	t1,0(a5)
   1ad34:	01c7b423          	sd	t3,8(a5)
   1ad38:	06d13823          	sd	a3,112(sp)
   1ad3c:	06e12423          	sw	a4,104(sp)
   1ad40:	01078793          	addi	a5,a5,16
   1ad44:	fcef5ee3          	bge	t5,a4,1ad20 <_vfiprintf_r+0xc24>
   1ad48:	00013503          	ld	a0,0(sp)
   1ad4c:	06010613          	addi	a2,sp,96
   1ad50:	000a0593          	addi	a1,s4,0
   1ad54:	02613023          	sd	t1,32(sp)
   1ad58:	01d13823          	sd	t4,16(sp)
   1ad5c:	c45f90ef          	jal	ra,149a0 <__sprint_r>
   1ad60:	f0051663          	bne	a0,zero,1a46c <_vfiprintf_r+0x370>
   1ad64:	01013e83          	ld	t4,16(sp)
   1ad68:	01000e13          	addi	t3,zero,16
   1ad6c:	07013683          	ld	a3,112(sp)
   1ad70:	ff0e8e9b          	addiw	t4,t4,-16
   1ad74:	06812703          	lw	a4,104(sp)
   1ad78:	02013303          	ld	t1,32(sp)
   1ad7c:	000b8793          	addi	a5,s7,0
   1ad80:	00700f13          	addi	t5,zero,7
   1ad84:	fbde42e3          	blt	t3,t4,1ad28 <_vfiprintf_r+0xc2c>
   1ad88:	00de86b3          	add	a3,t4,a3
   1ad8c:	0017071b          	addiw	a4,a4,1
   1ad90:	06d13823          	sd	a3,112(sp)
   1ad94:	06e12423          	sw	a4,104(sp)
   1ad98:	0067b023          	sd	t1,0(a5)
   1ad9c:	01d7b423          	sd	t4,8(a5)
   1ada0:	00700613          	addi	a2,zero,7
   1ada4:	1ee64663          	blt	a2,a4,1af90 <_vfiprintf_r+0xe94>
   1ada8:	05714603          	lbu	a2,87(sp)
   1adac:	01078793          	addi	a5,a5,16
   1adb0:	04061063          	bne	a2,zero,1adf0 <_vfiprintf_r+0xcf4>
   1adb4:	02813603          	ld	a2,40(sp)
   1adb8:	dc060863          	beq	a2,zero,1a388 <_vfiprintf_r+0x28c>
   1adbc:	00000313          	addi	t1,zero,0
   1adc0:	d94ff06f          	jal	zero,1a354 <_vfiprintf_r+0x258>
   1adc4:	000dc703          	lbu	a4,0(s11)
   1adc8:	008d0d13          	addi	s10,s10,8
   1adcc:	ca8ff06f          	jal	zero,1a274 <_vfiprintf_r+0x178>
   1add0:	00000c93          	addi	s9,zero,0
   1add4:	00000413          	addi	s0,zero,0
   1add8:	0dc10b13          	addi	s6,sp,220
   1addc:	d14ff06f          	jal	zero,1a2f0 <_vfiprintf_r+0x1f4>
   1ade0:	00170a9b          	addiw	s5,a4,1
   1ade4:	00100c93          	addi	s9,zero,1
   1ade8:	0db10b13          	addi	s6,sp,219
   1adec:	f3cff06f          	jal	zero,1a528 <_vfiprintf_r+0x42c>
   1adf0:	00000313          	addi	t1,zero,0
   1adf4:	d2cff06f          	jal	zero,1a320 <_vfiprintf_r+0x224>
   1adf8:	ffe60613          	addi	a2,a2,-2
   1adfc:	40cc8cbb          	subw	s9,s9,a2
   1ae00:	fedb0fa3          	sb	a3,-1(s6)
   1ae04:	000c8a9b          	addiw	s5,s9,0
   1ae08:	008cd463          	bge	s9,s0,1ae10 <_vfiprintf_r+0xd14>
   1ae0c:	00040a9b          	addiw	s5,s0,0
   1ae10:	00060b13          	addi	s6,a2,0
   1ae14:	cdcff06f          	jal	zero,1a2f0 <_vfiprintf_r+0x1f4>
   1ae18:	04010ba3          	sb	zero,87(sp)
   1ae1c:	000d3703          	ld	a4,0(s10)
   1ae20:	00060693          	addi	a3,a2,0
   1ae24:	920456e3          	bge	s0,zero,1a750 <_vfiprintf_r+0x654>
   1ae28:	00060d13          	addi	s10,a2,0
   1ae2c:	949ff06f          	jal	zero,1a774 <_vfiprintf_r+0x678>
   1ae30:	00048a93          	addi	s5,s1,0
   1ae34:	97dff06f          	jal	zero,1a7b0 <_vfiprintf_r+0x6b4>
   1ae38:	0001e5b7          	lui	a1,0x1e
   1ae3c:	0024e493          	ori	s1,s1,2
   1ae40:	00070d13          	addi	s10,a4,0
   1ae44:	29058593          	addi	a1,a1,656 # 1e290 <__clzdi2+0x7c>
   1ae48:	00200613          	addi	a2,zero,2
   1ae4c:	0dc10c93          	addi	s9,sp,220
   1ae50:	000c8b13          	addi	s6,s9,0
   1ae54:	00f6f713          	andi	a4,a3,15
   1ae58:	00e58733          	add	a4,a1,a4
   1ae5c:	00074703          	lbu	a4,0(a4)
   1ae60:	0046d693          	srli	a3,a3,0x4
   1ae64:	fffb0b13          	addi	s6,s6,-1
   1ae68:	00eb0023          	sb	a4,0(s6)
   1ae6c:	fe0694e3          	bne	a3,zero,1ae54 <_vfiprintf_r+0xd58>
   1ae70:	416c8cbb          	subw	s9,s9,s6
   1ae74:	00040a9b          	addiw	s5,s0,0
   1ae78:	01945463          	bge	s0,s9,1ae80 <_vfiprintf_r+0xd84>
   1ae7c:	000c8a9b          	addiw	s5,s9,0
   1ae80:	aa0612e3          	bne	a2,zero,1a924 <_vfiprintf_r+0x828>
   1ae84:	0740006f          	jal	zero,1aef8 <_vfiprintf_r+0xdfc>
   1ae88:	fff00413          	addi	s0,zero,-1
   1ae8c:	00088d93          	addi	s11,a7,0
   1ae90:	becff06f          	jal	zero,1a27c <_vfiprintf_r+0x180>
   1ae94:	0001e5b7          	lui	a1,0x1e
   1ae98:	0204f693          	andi	a3,s1,32
   1ae9c:	2a858593          	addi	a1,a1,680 # 1e2a8 <__clzdi2+0x94>
   1aea0:	008d0893          	addi	a7,s10,8
   1aea4:	08069863          	bne	a3,zero,1af34 <_vfiprintf_r+0xe38>
   1aea8:	0104f693          	andi	a3,s1,16
   1aeac:	08069463          	bne	a3,zero,1af34 <_vfiprintf_r+0xe38>
   1aeb0:	0404f613          	andi	a2,s1,64
   1aeb4:	000d2683          	lw	a3,0(s10)
   1aeb8:	1c060863          	beq	a2,zero,1b088 <_vfiprintf_r+0xf8c>
   1aebc:	03069693          	slli	a3,a3,0x30
   1aec0:	0306d693          	srli	a3,a3,0x30
   1aec4:	0014f613          	andi	a2,s1,1
   1aec8:	00d03533          	sltu	a0,zero,a3
   1aecc:	00060463          	beq	a2,zero,1aed4 <_vfiprintf_r+0xdd8>
   1aed0:	0e051c63          	bne	a0,zero,1afc8 <_vfiprintf_r+0xecc>
   1aed4:	04010ba3          	sb	zero,87(sp)
   1aed8:	0a044463          	blt	s0,zero,1af80 <_vfiprintf_r+0xe84>
   1aedc:	b7f4f493          	andi	s1,s1,-1153
   1aee0:	00088d13          	addi	s10,a7,0
   1aee4:	2e041863          	bne	s0,zero,1b1d4 <_vfiprintf_r+0x10d8>
   1aee8:	2e051663          	bne	a0,zero,1b1d4 <_vfiprintf_r+0x10d8>
   1aeec:	00000c93          	addi	s9,zero,0
   1aef0:	0dc10b13          	addi	s6,sp,220
   1aef4:	00000a93          	addi	s5,zero,0
   1aef8:	07013683          	ld	a3,112(sp)
   1aefc:	06812703          	lw	a4,104(sp)
   1af00:	0844f313          	andi	t1,s1,132
   1af04:	00068593          	addi	a1,a3,0
   1af08:	00070613          	addi	a2,a4,0
   1af0c:	be030e63          	beq	t1,zero,1a308 <_vfiprintf_r+0x20c>
   1af10:	05714603          	lbu	a2,87(sp)
   1af14:	02013423          	sd	zero,40(sp)
   1af18:	c0061463          	bne	a2,zero,1a320 <_vfiprintf_r+0x224>
   1af1c:	c64ff06f          	jal	zero,1a380 <_vfiprintf_r+0x284>
   1af20:	0001e5b7          	lui	a1,0x1e
   1af24:	0204f693          	andi	a3,s1,32
   1af28:	29058593          	addi	a1,a1,656 # 1e290 <__clzdi2+0x7c>
   1af2c:	008d0893          	addi	a7,s10,8
   1af30:	f6068ce3          	beq	a3,zero,1aea8 <_vfiprintf_r+0xdac>
   1af34:	000d3683          	ld	a3,0(s10)
   1af38:	f8dff06f          	jal	zero,1aec4 <_vfiprintf_r+0xdc8>
   1af3c:	000b0513          	addi	a0,s6,0
   1af40:	9e1fa0ef          	jal	ra,15920 <strlen>
   1af44:	00050c9b          	addiw	s9,a0,0
   1af48:	01013783          	ld	a5,16(sp)
   1af4c:	000c8713          	addi	a4,s9,0
   1af50:	000cd463          	bge	s9,zero,1af58 <_vfiprintf_r+0xe5c>
   1af54:	00000713          	addi	a4,zero,0
   1af58:	05714683          	lbu	a3,87(sp)
   1af5c:	00070a9b          	addiw	s5,a4,0
   1af60:	00068c63          	beq	a3,zero,1af78 <_vfiprintf_r+0xe7c>
   1af64:	00170a9b          	addiw	s5,a4,1
   1af68:	00000413          	addi	s0,zero,0
   1af6c:	dbcff06f          	jal	zero,1a528 <_vfiprintf_r+0x42c>
   1af70:	00040c93          	addi	s9,s0,0
   1af74:	00040a93          	addi	s5,s0,0
   1af78:	00000413          	addi	s0,zero,0
   1af7c:	b74ff06f          	jal	zero,1a2f0 <_vfiprintf_r+0x1f4>
   1af80:	bff4f493          	andi	s1,s1,-1025
   1af84:	00088d13          	addi	s10,a7,0
   1af88:	00000613          	addi	a2,zero,0
   1af8c:	ec1ff06f          	jal	zero,1ae4c <_vfiprintf_r+0xd50>
   1af90:	00013503          	ld	a0,0(sp)
   1af94:	06010613          	addi	a2,sp,96
   1af98:	000a0593          	addi	a1,s4,0
   1af9c:	a05f90ef          	jal	ra,149a0 <__sprint_r>
   1afa0:	00050313          	addi	t1,a0,0
   1afa4:	cc051463          	bne	a0,zero,1a46c <_vfiprintf_r+0x370>
   1afa8:	05714783          	lbu	a5,87(sp)
   1afac:	07013683          	ld	a3,112(sp)
   1afb0:	06812703          	lw	a4,104(sp)
   1afb4:	0e079263          	bne	a5,zero,1b098 <_vfiprintf_r+0xf9c>
   1afb8:	02813783          	ld	a5,40(sp)
   1afbc:	ae078ce3          	beq	a5,zero,1aab4 <_vfiprintf_r+0x9b8>
   1afc0:	000b8793          	addi	a5,s7,0
   1afc4:	b90ff06f          	jal	zero,1a354 <_vfiprintf_r+0x258>
   1afc8:	04e10ca3          	sb	a4,89(sp)
   1afcc:	03000713          	addi	a4,zero,48
   1afd0:	04010ba3          	sb	zero,87(sp)
   1afd4:	04e10c23          	sb	a4,88(sp)
   1afd8:	0c044463          	blt	s0,zero,1b0a0 <_vfiprintf_r+0xfa4>
   1afdc:	b7f4f493          	andi	s1,s1,-1153
   1afe0:	0024e493          	ori	s1,s1,2
   1afe4:	00088d13          	addi	s10,a7,0
   1afe8:	00200613          	addi	a2,zero,2
   1afec:	e61ff06f          	jal	zero,1ae4c <_vfiprintf_r+0xd50>
   1aff0:	d70f50ef          	jal	ra,10560 <__sinit>
   1aff4:	938ff06f          	jal	zero,1a12c <_vfiprintf_r+0x30>
   1aff8:	001dc703          	lbu	a4,1(s11)
   1affc:	2004e493          	ori	s1,s1,512
   1b000:	001d8d93          	addi	s11,s11,1
   1b004:	a70ff06f          	jal	zero,1a274 <_vfiprintf_r+0x178>
   1b008:	001dc703          	lbu	a4,1(s11)
   1b00c:	0204e493          	ori	s1,s1,32
   1b010:	001d8d93          	addi	s11,s11,1
   1b014:	a60ff06f          	jal	zero,1a274 <_vfiprintf_r+0x178>
   1b018:	00600713          	addi	a4,zero,6
   1b01c:	00040a9b          	addiw	s5,s0,0
   1b020:	0a876263          	bltu	a4,s0,1b0c4 <_vfiprintf_r+0xfc8>
   1b024:	0001e8b7          	lui	a7,0x1e
   1b028:	000a8c93          	addi	s9,s5,0
   1b02c:	2c088b13          	addi	s6,a7,704 # 1e2c0 <__clzdi2+0xac>
   1b030:	00000413          	addi	s0,zero,0
   1b034:	abcff06f          	jal	zero,1a2f0 <_vfiprintf_r+0x1f4>
   1b038:	2004f693          	andi	a3,s1,512
   1b03c:	0c068863          	beq	a3,zero,1b10c <_vfiprintf_r+0x1010>
   1b040:	0187171b          	slliw	a4,a4,0x18
   1b044:	4187571b          	sraiw	a4,a4,0x18
   1b048:	00060d13          	addi	s10,a2,0
   1b04c:	00070693          	addi	a3,a4,0
   1b050:	cacff06f          	jal	zero,1a4fc <_vfiprintf_r+0x400>
   1b054:	2004f693          	andi	a3,s1,512
   1b058:	04010ba3          	sb	zero,87(sp)
   1b05c:	08068e63          	beq	a3,zero,1b0f8 <_vfiprintf_r+0xffc>
   1b060:	0ff77713          	andi	a4,a4,255
   1b064:	ea045863          	bge	s0,zero,1a714 <_vfiprintf_r+0x618>
   1b068:	00060d13          	addi	s10,a2,0
   1b06c:	f08ff06f          	jal	zero,1a774 <_vfiprintf_r+0x678>
   1b070:	2004f713          	andi	a4,s1,512
   1b074:	06070863          	beq	a4,zero,1b0e4 <_vfiprintf_r+0xfe8>
   1b078:	0ff6f693          	andi	a3,a3,255
   1b07c:	00060d13          	addi	s10,a2,0
   1b080:	00048a93          	addi	s5,s1,0
   1b084:	f34ff06f          	jal	zero,1a7b8 <_vfiprintf_r+0x6bc>
   1b088:	2004f613          	andi	a2,s1,512
   1b08c:	04060063          	beq	a2,zero,1b0cc <_vfiprintf_r+0xfd0>
   1b090:	0ff6f693          	andi	a3,a3,255
   1b094:	e31ff06f          	jal	zero,1aec4 <_vfiprintf_r+0xdc8>
   1b098:	000b8793          	addi	a5,s7,0
   1b09c:	a84ff06f          	jal	zero,1a320 <_vfiprintf_r+0x224>
   1b0a0:	bff4f493          	andi	s1,s1,-1025
   1b0a4:	0024e493          	ori	s1,s1,2
   1b0a8:	00088d13          	addi	s10,a7,0
   1b0ac:	00200613          	addi	a2,zero,2
   1b0b0:	d9dff06f          	jal	zero,1ae4c <_vfiprintf_r+0xd50>
   1b0b4:	0001f637          	lui	a2,0x1f
   1b0b8:	95060613          	addi	a2,a2,-1712 # 1e950 <zeroes.0>
   1b0bc:	00c13823          	sd	a2,16(sp)
   1b0c0:	a65ff06f          	jal	zero,1ab24 <_vfiprintf_r+0xa28>
   1b0c4:	00070a9b          	addiw	s5,a4,0
   1b0c8:	f5dff06f          	jal	zero,1b024 <_vfiprintf_r+0xf28>
   1b0cc:	02069693          	slli	a3,a3,0x20
   1b0d0:	0206d693          	srli	a3,a3,0x20
   1b0d4:	df1ff06f          	jal	zero,1aec4 <_vfiprintf_r+0xdc8>
   1b0d8:	00813703          	ld	a4,8(sp)
   1b0dc:	00e69023          	sh	a4,0(a3)
   1b0e0:	8fcff06f          	jal	zero,1a1dc <_vfiprintf_r+0xe0>
   1b0e4:	02069693          	slli	a3,a3,0x20
   1b0e8:	0206d693          	srli	a3,a3,0x20
   1b0ec:	00060d13          	addi	s10,a2,0
   1b0f0:	00048a93          	addi	s5,s1,0
   1b0f4:	ec4ff06f          	jal	zero,1a7b8 <_vfiprintf_r+0x6bc>
   1b0f8:	02071713          	slli	a4,a4,0x20
   1b0fc:	02075713          	srli	a4,a4,0x20
   1b100:	e0045a63          	bge	s0,zero,1a714 <_vfiprintf_r+0x618>
   1b104:	00060d13          	addi	s10,a2,0
   1b108:	e6cff06f          	jal	zero,1a774 <_vfiprintf_r+0x678>
   1b10c:	00060d13          	addi	s10,a2,0
   1b110:	00070693          	addi	a3,a4,0
   1b114:	be8ff06f          	jal	zero,1a4fc <_vfiprintf_r+0x400>
   1b118:	00013503          	ld	a0,0(sp)
   1b11c:	06010613          	addi	a2,sp,96
   1b120:	000a0593          	addi	a1,s4,0
   1b124:	87df90ef          	jal	ra,149a0 <__sprint_r>
   1b128:	b44ff06f          	jal	zero,1a46c <_vfiprintf_r+0x370>
   1b12c:	02f13423          	sd	a5,40(sp)
   1b130:	04013783          	ld	a5,64(sp)
   1b134:	03813583          	ld	a1,56(sp)
   1b138:	00e13823          	sd	a4,16(sp)
   1b13c:	40fb0ab3          	sub	s5,s6,a5
   1b140:	00078613          	addi	a2,a5,0
   1b144:	000a8513          	addi	a0,s5,0
   1b148:	bfcfa0ef          	jal	ra,15544 <strncpy>
   1b14c:	03013783          	ld	a5,48(sp)
   1b150:	01013503          	ld	a0,16(sp)
   1b154:	00a00593          	addi	a1,zero,10
   1b158:	0017c683          	lbu	a3,1(a5)
   1b15c:	fffa8b13          	addi	s6,s5,-1
   1b160:	00d03733          	sltu	a4,zero,a3
   1b164:	00e787b3          	add	a5,a5,a4
   1b168:	02f13823          	sd	a5,48(sp)
   1b16c:	7f1020ef          	jal	ra,1e15c <__hidden___udivdi3>
   1b170:	00a00593          	addi	a1,zero,10
   1b174:	02a13023          	sd	a0,32(sp)
   1b178:	02c030ef          	jal	ra,1e1a4 <__umoddi3>
   1b17c:	00100793          	addi	a5,zero,1
   1b180:	0305069b          	addiw	a3,a0,48
   1b184:	00f13823          	sd	a5,16(sp)
   1b188:	02013703          	ld	a4,32(sp)
   1b18c:	02813783          	ld	a5,40(sp)
   1b190:	feda8fa3          	sb	a3,-1(s5)
   1b194:	ce4ff06f          	jal	zero,1a678 <_vfiprintf_r+0x57c>
   1b198:	dc070ce3          	beq	a4,zero,1af70 <_vfiprintf_r+0xe74>
   1b19c:	00140a9b          	addiw	s5,s0,1
   1b1a0:	00040c93          	addi	s9,s0,0
   1b1a4:	00000413          	addi	s0,zero,0
   1b1a8:	b80ff06f          	jal	zero,1a528 <_vfiprintf_r+0x42c>
   1b1ac:	00e6a023          	sw	a4,0(a3)
   1b1b0:	82cff06f          	jal	zero,1a1dc <_vfiprintf_r+0xe0>
   1b1b4:	000d2703          	lw	a4,0(s10)
   1b1b8:	008d0d13          	addi	s10,s10,8
   1b1bc:	0007041b          	addiw	s0,a4,0
   1b1c0:	00075463          	bge	a4,zero,1b1c8 <_vfiprintf_r+0x10cc>
   1b1c4:	fff00413          	addi	s0,zero,-1
   1b1c8:	001dc703          	lbu	a4,1(s11)
   1b1cc:	00088d93          	addi	s11,a7,0
   1b1d0:	8a4ff06f          	jal	zero,1a274 <_vfiprintf_r+0x178>
   1b1d4:	00000613          	addi	a2,zero,0
   1b1d8:	c75ff06f          	jal	zero,1ae4c <_vfiprintf_r+0xd50>
   1b1dc:	0001e5b7          	lui	a1,0x1e
   1b1e0:	00070d13          	addi	s10,a4,0
   1b1e4:	29058593          	addi	a1,a1,656 # 1e290 <__clzdi2+0x7c>
   1b1e8:	00200613          	addi	a2,zero,2
   1b1ec:	c61ff06f          	jal	zero,1ae4c <_vfiprintf_r+0xd50>

000000000001b1f0 <vfiprintf>:
   1b1f0:	00050713          	addi	a4,a0,0
   1b1f4:	2201b503          	ld	a0,544(gp) # 20668 <_impure_ptr>
   1b1f8:	00060693          	addi	a3,a2,0
   1b1fc:	00058613          	addi	a2,a1,0
   1b200:	00070593          	addi	a1,a4,0
   1b204:	ef9fe06f          	jal	zero,1a0fc <_vfiprintf_r>

000000000001b208 <__sbprintf>:
   1b208:	0105d783          	lhu	a5,16(a1)
   1b20c:	0ac5ae83          	lw	t4,172(a1)
   1b210:	0125de03          	lhu	t3,18(a1)
   1b214:	0305b303          	ld	t1,48(a1)
   1b218:	0405b883          	ld	a7,64(a1)
   1b21c:	b2010113          	addi	sp,sp,-1248
   1b220:	ffd7f793          	andi	a5,a5,-3
   1b224:	0c010813          	addi	a6,sp,192
   1b228:	40000713          	addi	a4,zero,1024
   1b22c:	4c813823          	sd	s0,1232(sp)
   1b230:	00058413          	addi	s0,a1,0
   1b234:	01010593          	addi	a1,sp,16
   1b238:	4c913423          	sd	s1,1224(sp)
   1b23c:	02f11023          	sh	a5,32(sp)
   1b240:	4c113c23          	sd	ra,1240(sp)
   1b244:	02012c23          	sw	zero,56(sp)
   1b248:	0bd12e23          	sw	t4,188(sp)
   1b24c:	03c11123          	sh	t3,34(sp)
   1b250:	04613023          	sd	t1,64(sp)
   1b254:	05113823          	sd	a7,80(sp)
   1b258:	01013823          	sd	a6,16(sp)
   1b25c:	03013423          	sd	a6,40(sp)
   1b260:	00e12e23          	sw	a4,28(sp)
   1b264:	02e12823          	sw	a4,48(sp)
   1b268:	00050493          	addi	s1,a0,0
   1b26c:	e91fe0ef          	jal	ra,1a0fc <_vfiprintf_r>
   1b270:	00050793          	addi	a5,a0,0
   1b274:	02055a63          	bge	a0,zero,1b2a8 <__sbprintf+0xa0>
   1b278:	02015703          	lhu	a4,32(sp)
   1b27c:	04077713          	andi	a4,a4,64
   1b280:	00070863          	beq	a4,zero,1b290 <__sbprintf+0x88>
   1b284:	01045703          	lhu	a4,16(s0)
   1b288:	04076713          	ori	a4,a4,64
   1b28c:	00e41823          	sh	a4,16(s0)
   1b290:	4d813083          	ld	ra,1240(sp)
   1b294:	4d013403          	ld	s0,1232(sp)
   1b298:	4c813483          	ld	s1,1224(sp)
   1b29c:	00078513          	addi	a0,a5,0
   1b2a0:	4e010113          	addi	sp,sp,1248
   1b2a4:	00008067          	jalr	zero,0(ra)
   1b2a8:	00a13423          	sd	a0,8(sp)
   1b2ac:	01010593          	addi	a1,sp,16
   1b2b0:	00048513          	addi	a0,s1,0
   1b2b4:	a99f90ef          	jal	ra,14d4c <_fflush_r>
   1b2b8:	00813783          	ld	a5,8(sp)
   1b2bc:	fa050ee3          	beq	a0,zero,1b278 <__sbprintf+0x70>
   1b2c0:	fff00793          	addi	a5,zero,-1
   1b2c4:	fb5ff06f          	jal	zero,1b278 <__sbprintf+0x70>

000000000001b2c8 <__errno>:
   1b2c8:	2201b503          	ld	a0,544(gp) # 20668 <_impure_ptr>
   1b2cc:	00008067          	jalr	zero,0(ra)

000000000001b2d0 <abort>:
   1b2d0:	ff010113          	addi	sp,sp,-16
   1b2d4:	00600513          	addi	a0,zero,6
   1b2d8:	00113423          	sd	ra,8(sp)
   1b2dc:	274000ef          	jal	ra,1b550 <raise>
   1b2e0:	00100513          	addi	a0,zero,1
   1b2e4:	594000ef          	jal	ra,1b878 <_exit>

000000000001b2e8 <_init_signal_r>:
   1b2e8:	15053703          	ld	a4,336(a0)
   1b2ec:	00070663          	beq	a4,zero,1b2f8 <_init_signal_r+0x10>
   1b2f0:	00000513          	addi	a0,zero,0
   1b2f4:	00008067          	jalr	zero,0(ra)
   1b2f8:	fe010113          	addi	sp,sp,-32
   1b2fc:	10000593          	addi	a1,zero,256
   1b300:	00113c23          	sd	ra,24(sp)
   1b304:	00a13423          	sd	a0,8(sp)
   1b308:	ecdf50ef          	jal	ra,111d4 <_malloc_r>
   1b30c:	00813783          	ld	a5,8(sp)
   1b310:	14a7b823          	sd	a0,336(a5)
   1b314:	02050263          	beq	a0,zero,1b338 <_init_signal_r+0x50>
   1b318:	10050793          	addi	a5,a0,256
   1b31c:	00053023          	sd	zero,0(a0)
   1b320:	00850513          	addi	a0,a0,8
   1b324:	fef51ce3          	bne	a0,a5,1b31c <_init_signal_r+0x34>
   1b328:	00000513          	addi	a0,zero,0
   1b32c:	01813083          	ld	ra,24(sp)
   1b330:	02010113          	addi	sp,sp,32
   1b334:	00008067          	jalr	zero,0(ra)
   1b338:	fff00513          	addi	a0,zero,-1
   1b33c:	ff1ff06f          	jal	zero,1b32c <_init_signal_r+0x44>

000000000001b340 <_signal_r>:
   1b340:	01f00713          	addi	a4,zero,31
   1b344:	02b76063          	bltu	a4,a1,1b364 <_signal_r+0x24>
   1b348:	15053703          	ld	a4,336(a0)
   1b34c:	02070463          	beq	a4,zero,1b374 <_signal_r+0x34>
   1b350:	00359593          	slli	a1,a1,0x3
   1b354:	00b70733          	add	a4,a4,a1
   1b358:	00073503          	ld	a0,0(a4)
   1b35c:	00c73023          	sd	a2,0(a4)
   1b360:	00008067          	jalr	zero,0(ra)
   1b364:	01600713          	addi	a4,zero,22
   1b368:	00e52023          	sw	a4,0(a0)
   1b36c:	fff00513          	addi	a0,zero,-1
   1b370:	00008067          	jalr	zero,0(ra)
   1b374:	fd010113          	addi	sp,sp,-48
   1b378:	00b13423          	sd	a1,8(sp)
   1b37c:	10000593          	addi	a1,zero,256
   1b380:	00c13823          	sd	a2,16(sp)
   1b384:	02113423          	sd	ra,40(sp)
   1b388:	00a13c23          	sd	a0,24(sp)
   1b38c:	e49f50ef          	jal	ra,111d4 <_malloc_r>
   1b390:	01813683          	ld	a3,24(sp)
   1b394:	00050713          	addi	a4,a0,0
   1b398:	10050593          	addi	a1,a0,256
   1b39c:	14a6b823          	sd	a0,336(a3)
   1b3a0:	00813783          	ld	a5,8(sp)
   1b3a4:	00050693          	addi	a3,a0,0
   1b3a8:	01013603          	ld	a2,16(sp)
   1b3ac:	fff00513          	addi	a0,zero,-1
   1b3b0:	02070063          	beq	a4,zero,1b3d0 <_signal_r+0x90>
   1b3b4:	0006b023          	sd	zero,0(a3)
   1b3b8:	00868693          	addi	a3,a3,8
   1b3bc:	feb69ce3          	bne	a3,a1,1b3b4 <_signal_r+0x74>
   1b3c0:	00379593          	slli	a1,a5,0x3
   1b3c4:	00b70733          	add	a4,a4,a1
   1b3c8:	00073503          	ld	a0,0(a4)
   1b3cc:	00c73023          	sd	a2,0(a4)
   1b3d0:	02813083          	ld	ra,40(sp)
   1b3d4:	03010113          	addi	sp,sp,48
   1b3d8:	00008067          	jalr	zero,0(ra)

000000000001b3dc <_raise_r>:
   1b3dc:	01f00793          	addi	a5,zero,31
   1b3e0:	08b7ea63          	bltu	a5,a1,1b474 <_raise_r+0x98>
   1b3e4:	15053783          	ld	a5,336(a0)
   1b3e8:	fe010113          	addi	sp,sp,-32
   1b3ec:	00113c23          	sd	ra,24(sp)
   1b3f0:	00050713          	addi	a4,a0,0
   1b3f4:	00058613          	addi	a2,a1,0
   1b3f8:	04078063          	beq	a5,zero,1b438 <_raise_r+0x5c>
   1b3fc:	00359693          	slli	a3,a1,0x3
   1b400:	00d787b3          	add	a5,a5,a3
   1b404:	0007b683          	ld	a3,0(a5)
   1b408:	02068863          	beq	a3,zero,1b438 <_raise_r+0x5c>
   1b40c:	00100513          	addi	a0,zero,1
   1b410:	00a68c63          	beq	a3,a0,1b428 <_raise_r+0x4c>
   1b414:	fff00593          	addi	a1,zero,-1
   1b418:	04b68463          	beq	a3,a1,1b460 <_raise_r+0x84>
   1b41c:	0007b023          	sd	zero,0(a5)
   1b420:	00060513          	addi	a0,a2,0
   1b424:	000680e7          	jalr	ra,0(a3)
   1b428:	01813083          	ld	ra,24(sp)
   1b42c:	00000513          	addi	a0,zero,0
   1b430:	02010113          	addi	sp,sp,32
   1b434:	00008067          	jalr	zero,0(ra)
   1b438:	00070513          	addi	a0,a4,0
   1b43c:	00c13423          	sd	a2,8(sp)
   1b440:	00e13023          	sd	a4,0(sp)
   1b444:	3f0000ef          	jal	ra,1b834 <_getpid_r>
   1b448:	00813603          	ld	a2,8(sp)
   1b44c:	01813083          	ld	ra,24(sp)
   1b450:	00050593          	addi	a1,a0,0
   1b454:	00013503          	ld	a0,0(sp)
   1b458:	02010113          	addi	sp,sp,32
   1b45c:	3740006f          	jal	zero,1b7d0 <_kill_r>
   1b460:	01813083          	ld	ra,24(sp)
   1b464:	01600793          	addi	a5,zero,22
   1b468:	00f72023          	sw	a5,0(a4)
   1b46c:	02010113          	addi	sp,sp,32
   1b470:	00008067          	jalr	zero,0(ra)
   1b474:	01600793          	addi	a5,zero,22
   1b478:	00f52023          	sw	a5,0(a0)
   1b47c:	fff00513          	addi	a0,zero,-1
   1b480:	00008067          	jalr	zero,0(ra)

000000000001b484 <__sigtramp_r>:
   1b484:	01f00793          	addi	a5,zero,31
   1b488:	0cb7e063          	bltu	a5,a1,1b548 <__sigtramp_r+0xc4>
   1b48c:	15053783          	ld	a5,336(a0)
   1b490:	fe010113          	addi	sp,sp,-32
   1b494:	00113c23          	sd	ra,24(sp)
   1b498:	00058713          	addi	a4,a1,0
   1b49c:	06078463          	beq	a5,zero,1b504 <__sigtramp_r+0x80>
   1b4a0:	00371693          	slli	a3,a4,0x3
   1b4a4:	00d787b3          	add	a5,a5,a3
   1b4a8:	0007b683          	ld	a3,0(a5)
   1b4ac:	02068863          	beq	a3,zero,1b4dc <__sigtramp_r+0x58>
   1b4b0:	fff00613          	addi	a2,zero,-1
   1b4b4:	04c68463          	beq	a3,a2,1b4fc <__sigtramp_r+0x78>
   1b4b8:	00100613          	addi	a2,zero,1
   1b4bc:	02c68863          	beq	a3,a2,1b4ec <__sigtramp_r+0x68>
   1b4c0:	00070513          	addi	a0,a4,0
   1b4c4:	0007b023          	sd	zero,0(a5)
   1b4c8:	000680e7          	jalr	ra,0(a3)
   1b4cc:	00000513          	addi	a0,zero,0
   1b4d0:	01813083          	ld	ra,24(sp)
   1b4d4:	02010113          	addi	sp,sp,32
   1b4d8:	00008067          	jalr	zero,0(ra)
   1b4dc:	01813083          	ld	ra,24(sp)
   1b4e0:	00100513          	addi	a0,zero,1
   1b4e4:	02010113          	addi	sp,sp,32
   1b4e8:	00008067          	jalr	zero,0(ra)
   1b4ec:	01813083          	ld	ra,24(sp)
   1b4f0:	00300513          	addi	a0,zero,3
   1b4f4:	02010113          	addi	sp,sp,32
   1b4f8:	00008067          	jalr	zero,0(ra)
   1b4fc:	00200513          	addi	a0,zero,2
   1b500:	fd1ff06f          	jal	zero,1b4d0 <__sigtramp_r+0x4c>
   1b504:	00b13423          	sd	a1,8(sp)
   1b508:	10000593          	addi	a1,zero,256
   1b50c:	00a13023          	sd	a0,0(sp)
   1b510:	cc5f50ef          	jal	ra,111d4 <_malloc_r>
   1b514:	00013683          	ld	a3,0(sp)
   1b518:	00050793          	addi	a5,a0,0
   1b51c:	14a6b823          	sd	a0,336(a3)
   1b520:	02050063          	beq	a0,zero,1b540 <__sigtramp_r+0xbc>
   1b524:	00813703          	ld	a4,8(sp)
   1b528:	00050693          	addi	a3,a0,0
   1b52c:	10050613          	addi	a2,a0,256
   1b530:	0006b023          	sd	zero,0(a3)
   1b534:	00868693          	addi	a3,a3,8
   1b538:	fec69ce3          	bne	a3,a2,1b530 <__sigtramp_r+0xac>
   1b53c:	f65ff06f          	jal	zero,1b4a0 <__sigtramp_r+0x1c>
   1b540:	fff00513          	addi	a0,zero,-1
   1b544:	f8dff06f          	jal	zero,1b4d0 <__sigtramp_r+0x4c>
   1b548:	fff00513          	addi	a0,zero,-1
   1b54c:	00008067          	jalr	zero,0(ra)

000000000001b550 <raise>:
   1b550:	01f00793          	addi	a5,zero,31
   1b554:	2201b803          	ld	a6,544(gp) # 20668 <_impure_ptr>
   1b558:	08a7e863          	bltu	a5,a0,1b5e8 <raise+0x98>
   1b55c:	15083783          	ld	a5,336(a6)
   1b560:	fe010113          	addi	sp,sp,-32
   1b564:	00113c23          	sd	ra,24(sp)
   1b568:	00050613          	addi	a2,a0,0
   1b56c:	02078e63          	beq	a5,zero,1b5a8 <raise+0x58>
   1b570:	00351713          	slli	a4,a0,0x3
   1b574:	00e787b3          	add	a5,a5,a4
   1b578:	0007b703          	ld	a4,0(a5)
   1b57c:	02070663          	beq	a4,zero,1b5a8 <raise+0x58>
   1b580:	00100693          	addi	a3,zero,1
   1b584:	00d70a63          	beq	a4,a3,1b598 <raise+0x48>
   1b588:	fff00613          	addi	a2,zero,-1
   1b58c:	04c70263          	beq	a4,a2,1b5d0 <raise+0x80>
   1b590:	0007b023          	sd	zero,0(a5)
   1b594:	000700e7          	jalr	ra,0(a4)
   1b598:	01813083          	ld	ra,24(sp)
   1b59c:	00000513          	addi	a0,zero,0
   1b5a0:	02010113          	addi	sp,sp,32
   1b5a4:	00008067          	jalr	zero,0(ra)
   1b5a8:	00080513          	addi	a0,a6,0
   1b5ac:	00c13423          	sd	a2,8(sp)
   1b5b0:	01013023          	sd	a6,0(sp)
   1b5b4:	280000ef          	jal	ra,1b834 <_getpid_r>
   1b5b8:	00813603          	ld	a2,8(sp)
   1b5bc:	01813083          	ld	ra,24(sp)
   1b5c0:	00050593          	addi	a1,a0,0
   1b5c4:	00013503          	ld	a0,0(sp)
   1b5c8:	02010113          	addi	sp,sp,32
   1b5cc:	2040006f          	jal	zero,1b7d0 <_kill_r>
   1b5d0:	01813083          	ld	ra,24(sp)
   1b5d4:	01600793          	addi	a5,zero,22
   1b5d8:	00f82023          	sw	a5,0(a6)
   1b5dc:	00068513          	addi	a0,a3,0
   1b5e0:	02010113          	addi	sp,sp,32
   1b5e4:	00008067          	jalr	zero,0(ra)
   1b5e8:	01600793          	addi	a5,zero,22
   1b5ec:	00f82023          	sw	a5,0(a6)
   1b5f0:	fff00513          	addi	a0,zero,-1
   1b5f4:	00008067          	jalr	zero,0(ra)

000000000001b5f8 <signal>:
   1b5f8:	01f00793          	addi	a5,zero,31
   1b5fc:	2201b603          	ld	a2,544(gp) # 20668 <_impure_ptr>
   1b600:	02a7e063          	bltu	a5,a0,1b620 <signal+0x28>
   1b604:	15063703          	ld	a4,336(a2)
   1b608:	02070463          	beq	a4,zero,1b630 <signal+0x38>
   1b60c:	00351513          	slli	a0,a0,0x3
   1b610:	00a70733          	add	a4,a4,a0
   1b614:	00073503          	ld	a0,0(a4)
   1b618:	00b73023          	sd	a1,0(a4)
   1b61c:	00008067          	jalr	zero,0(ra)
   1b620:	01600793          	addi	a5,zero,22
   1b624:	00f62023          	sw	a5,0(a2)
   1b628:	fff00513          	addi	a0,zero,-1
   1b62c:	00008067          	jalr	zero,0(ra)
   1b630:	fd010113          	addi	sp,sp,-48
   1b634:	00b13c23          	sd	a1,24(sp)
   1b638:	00a13823          	sd	a0,16(sp)
   1b63c:	10000593          	addi	a1,zero,256
   1b640:	00060513          	addi	a0,a2,0
   1b644:	00c13423          	sd	a2,8(sp)
   1b648:	02113423          	sd	ra,40(sp)
   1b64c:	b89f50ef          	jal	ra,111d4 <_malloc_r>
   1b650:	00813603          	ld	a2,8(sp)
   1b654:	00050713          	addi	a4,a0,0
   1b658:	10050593          	addi	a1,a0,256
   1b65c:	14a63823          	sd	a0,336(a2)
   1b660:	01013783          	ld	a5,16(sp)
   1b664:	00050613          	addi	a2,a0,0
   1b668:	01813683          	ld	a3,24(sp)
   1b66c:	fff00513          	addi	a0,zero,-1
   1b670:	02070063          	beq	a4,zero,1b690 <signal+0x98>
   1b674:	00063023          	sd	zero,0(a2)
   1b678:	00860613          	addi	a2,a2,8
   1b67c:	fec59ce3          	bne	a1,a2,1b674 <signal+0x7c>
   1b680:	00379513          	slli	a0,a5,0x3
   1b684:	00a70733          	add	a4,a4,a0
   1b688:	00073503          	ld	a0,0(a4)
   1b68c:	00d73023          	sd	a3,0(a4)
   1b690:	02813083          	ld	ra,40(sp)
   1b694:	03010113          	addi	sp,sp,48
   1b698:	00008067          	jalr	zero,0(ra)

000000000001b69c <_init_signal>:
   1b69c:	2201b783          	ld	a5,544(gp) # 20668 <_impure_ptr>
   1b6a0:	1507b703          	ld	a4,336(a5)
   1b6a4:	00070663          	beq	a4,zero,1b6b0 <_init_signal+0x14>
   1b6a8:	00000513          	addi	a0,zero,0
   1b6ac:	00008067          	jalr	zero,0(ra)
   1b6b0:	fe010113          	addi	sp,sp,-32
   1b6b4:	00078513          	addi	a0,a5,0
   1b6b8:	10000593          	addi	a1,zero,256
   1b6bc:	00f13423          	sd	a5,8(sp)
   1b6c0:	00113c23          	sd	ra,24(sp)
   1b6c4:	b11f50ef          	jal	ra,111d4 <_malloc_r>
   1b6c8:	00813783          	ld	a5,8(sp)
   1b6cc:	14a7b823          	sd	a0,336(a5)
   1b6d0:	02050263          	beq	a0,zero,1b6f4 <_init_signal+0x58>
   1b6d4:	10050793          	addi	a5,a0,256
   1b6d8:	00053023          	sd	zero,0(a0)
   1b6dc:	00850513          	addi	a0,a0,8
   1b6e0:	fef51ce3          	bne	a0,a5,1b6d8 <_init_signal+0x3c>
   1b6e4:	00000513          	addi	a0,zero,0
   1b6e8:	01813083          	ld	ra,24(sp)
   1b6ec:	02010113          	addi	sp,sp,32
   1b6f0:	00008067          	jalr	zero,0(ra)
   1b6f4:	fff00513          	addi	a0,zero,-1
   1b6f8:	ff1ff06f          	jal	zero,1b6e8 <_init_signal+0x4c>

000000000001b6fc <__sigtramp>:
   1b6fc:	01f00793          	addi	a5,zero,31
   1b700:	0ca7e463          	bltu	a5,a0,1b7c8 <__sigtramp+0xcc>
   1b704:	2201b683          	ld	a3,544(gp) # 20668 <_impure_ptr>
   1b708:	fe010113          	addi	sp,sp,-32
   1b70c:	00113c23          	sd	ra,24(sp)
   1b710:	1506b783          	ld	a5,336(a3)
   1b714:	00050713          	addi	a4,a0,0
   1b718:	06078463          	beq	a5,zero,1b780 <__sigtramp+0x84>
   1b71c:	00371693          	slli	a3,a4,0x3
   1b720:	00d787b3          	add	a5,a5,a3
   1b724:	0007b683          	ld	a3,0(a5)
   1b728:	02068863          	beq	a3,zero,1b758 <__sigtramp+0x5c>
   1b72c:	fff00613          	addi	a2,zero,-1
   1b730:	04c68463          	beq	a3,a2,1b778 <__sigtramp+0x7c>
   1b734:	00100613          	addi	a2,zero,1
   1b738:	02c68863          	beq	a3,a2,1b768 <__sigtramp+0x6c>
   1b73c:	00070513          	addi	a0,a4,0
   1b740:	0007b023          	sd	zero,0(a5)
   1b744:	000680e7          	jalr	ra,0(a3)
   1b748:	00000513          	addi	a0,zero,0
   1b74c:	01813083          	ld	ra,24(sp)
   1b750:	02010113          	addi	sp,sp,32
   1b754:	00008067          	jalr	zero,0(ra)
   1b758:	01813083          	ld	ra,24(sp)
   1b75c:	00100513          	addi	a0,zero,1
   1b760:	02010113          	addi	sp,sp,32
   1b764:	00008067          	jalr	zero,0(ra)
   1b768:	01813083          	ld	ra,24(sp)
   1b76c:	00300513          	addi	a0,zero,3
   1b770:	02010113          	addi	sp,sp,32
   1b774:	00008067          	jalr	zero,0(ra)
   1b778:	00200513          	addi	a0,zero,2
   1b77c:	fd1ff06f          	jal	zero,1b74c <__sigtramp+0x50>
   1b780:	00a13423          	sd	a0,8(sp)
   1b784:	10000593          	addi	a1,zero,256
   1b788:	00068513          	addi	a0,a3,0
   1b78c:	00d13023          	sd	a3,0(sp)
   1b790:	a45f50ef          	jal	ra,111d4 <_malloc_r>
   1b794:	00013683          	ld	a3,0(sp)
   1b798:	00050793          	addi	a5,a0,0
   1b79c:	14a6b823          	sd	a0,336(a3)
   1b7a0:	02050063          	beq	a0,zero,1b7c0 <__sigtramp+0xc4>
   1b7a4:	00813703          	ld	a4,8(sp)
   1b7a8:	00050693          	addi	a3,a0,0
   1b7ac:	10050613          	addi	a2,a0,256
   1b7b0:	0006b023          	sd	zero,0(a3)
   1b7b4:	00868693          	addi	a3,a3,8
   1b7b8:	fed61ce3          	bne	a2,a3,1b7b0 <__sigtramp+0xb4>
   1b7bc:	f61ff06f          	jal	zero,1b71c <__sigtramp+0x20>
   1b7c0:	fff00513          	addi	a0,zero,-1
   1b7c4:	f89ff06f          	jal	zero,1b74c <__sigtramp+0x50>
   1b7c8:	fff00513          	addi	a0,zero,-1
   1b7cc:	00008067          	jalr	zero,0(ra)

000000000001b7d0 <_kill_r>:
   1b7d0:	fe010113          	addi	sp,sp,-32
   1b7d4:	00058793          	addi	a5,a1,0
   1b7d8:	00813823          	sd	s0,16(sp)
   1b7dc:	00913423          	sd	s1,8(sp)
   1b7e0:	00060593          	addi	a1,a2,0
   1b7e4:	00050493          	addi	s1,a0,0
   1b7e8:	00078513          	addi	a0,a5,0
   1b7ec:	00113c23          	sd	ra,24(sp)
   1b7f0:	2401a023          	sw	zero,576(gp) # 20688 <errno>
   1b7f4:	164000ef          	jal	ra,1b958 <_kill>
   1b7f8:	fff00793          	addi	a5,zero,-1
   1b7fc:	00f50c63          	beq	a0,a5,1b814 <_kill_r+0x44>
   1b800:	01813083          	ld	ra,24(sp)
   1b804:	01013403          	ld	s0,16(sp)
   1b808:	00813483          	ld	s1,8(sp)
   1b80c:	02010113          	addi	sp,sp,32
   1b810:	00008067          	jalr	zero,0(ra)
   1b814:	2401a783          	lw	a5,576(gp) # 20688 <errno>
   1b818:	fe0784e3          	beq	a5,zero,1b800 <_kill_r+0x30>
   1b81c:	01813083          	ld	ra,24(sp)
   1b820:	01013403          	ld	s0,16(sp)
   1b824:	00f4a023          	sw	a5,0(s1)
   1b828:	00813483          	ld	s1,8(sp)
   1b82c:	02010113          	addi	sp,sp,32
   1b830:	00008067          	jalr	zero,0(ra)

000000000001b834 <_getpid_r>:
   1b834:	0dc0006f          	jal	zero,1b910 <_getpid>

000000000001b838 <_close>:
   1b838:	03900893          	addi	a7,zero,57
   1b83c:	00000073          	ecall
   1b840:	00054663          	blt	a0,zero,1b84c <_close+0x14>
   1b844:	0005051b          	addiw	a0,a0,0
   1b848:	00008067          	jalr	zero,0(ra)
   1b84c:	fe010113          	addi	sp,sp,-32
   1b850:	00113c23          	sd	ra,24(sp)
   1b854:	00a13423          	sd	a0,8(sp)
   1b858:	a71ff0ef          	jal	ra,1b2c8 <__errno>
   1b85c:	00813783          	ld	a5,8(sp)
   1b860:	01813083          	ld	ra,24(sp)
   1b864:	40f007bb          	subw	a5,zero,a5
   1b868:	00f52023          	sw	a5,0(a0)
   1b86c:	fff00513          	addi	a0,zero,-1
   1b870:	02010113          	addi	sp,sp,32
   1b874:	00008067          	jalr	zero,0(ra)

000000000001b878 <_exit>:
   1b878:	05d00893          	addi	a7,zero,93
   1b87c:	00000073          	ecall
   1b880:	00054463          	blt	a0,zero,1b888 <_exit+0x10>
   1b884:	0000006f          	jal	zero,1b884 <_exit+0xc>
   1b888:	fe010113          	addi	sp,sp,-32
   1b88c:	00113c23          	sd	ra,24(sp)
   1b890:	00a13423          	sd	a0,8(sp)
   1b894:	a35ff0ef          	jal	ra,1b2c8 <__errno>
   1b898:	00813783          	ld	a5,8(sp)
   1b89c:	40f007bb          	subw	a5,zero,a5
   1b8a0:	00f52023          	sw	a5,0(a0)
   1b8a4:	0000006f          	jal	zero,1b8a4 <_exit+0x2c>

000000000001b8a8 <_fstat>:
   1b8a8:	f6010113          	addi	sp,sp,-160
   1b8ac:	00058713          	addi	a4,a1,0
   1b8b0:	08113c23          	sd	ra,152(sp)
   1b8b4:	08813823          	sd	s0,144(sp)
   1b8b8:	05000893          	addi	a7,zero,80
   1b8bc:	01010593          	addi	a1,sp,16
   1b8c0:	00000073          	ecall
   1b8c4:	02054463          	blt	a0,zero,1b8ec <_fstat+0x44>
   1b8c8:	0005041b          	addiw	s0,a0,0
   1b8cc:	01010593          	addi	a1,sp,16
   1b8d0:	00070513          	addi	a0,a4,0
   1b8d4:	1e0000ef          	jal	ra,1bab4 <_conv_stat>
   1b8d8:	09813083          	ld	ra,152(sp)
   1b8dc:	00040513          	addi	a0,s0,0
   1b8e0:	09013403          	ld	s0,144(sp)
   1b8e4:	0a010113          	addi	sp,sp,160
   1b8e8:	00008067          	jalr	zero,0(ra)
   1b8ec:	00e13023          	sd	a4,0(sp)
   1b8f0:	00a13423          	sd	a0,8(sp)
   1b8f4:	9d5ff0ef          	jal	ra,1b2c8 <__errno>
   1b8f8:	00813783          	ld	a5,8(sp)
   1b8fc:	00013703          	ld	a4,0(sp)
   1b900:	fff00413          	addi	s0,zero,-1
   1b904:	40f007bb          	subw	a5,zero,a5
   1b908:	00f52023          	sw	a5,0(a0)
   1b90c:	fc1ff06f          	jal	zero,1b8cc <_fstat+0x24>

000000000001b910 <_getpid>:
   1b910:	00100513          	addi	a0,zero,1
   1b914:	00008067          	jalr	zero,0(ra)

000000000001b918 <_isatty>:
   1b918:	f8010113          	addi	sp,sp,-128
   1b91c:	00810593          	addi	a1,sp,8
   1b920:	06113c23          	sd	ra,120(sp)
   1b924:	f85ff0ef          	jal	ra,1b8a8 <_fstat>
   1b928:	fff00793          	addi	a5,zero,-1
   1b92c:	00f50e63          	beq	a0,a5,1b948 <_isatty+0x30>
   1b930:	00c12503          	lw	a0,12(sp)
   1b934:	07813083          	ld	ra,120(sp)
   1b938:	00d5551b          	srliw	a0,a0,0xd
   1b93c:	00157513          	andi	a0,a0,1
   1b940:	08010113          	addi	sp,sp,128
   1b944:	00008067          	jalr	zero,0(ra)
   1b948:	07813083          	ld	ra,120(sp)
   1b94c:	00000513          	addi	a0,zero,0
   1b950:	08010113          	addi	sp,sp,128
   1b954:	00008067          	jalr	zero,0(ra)

000000000001b958 <_kill>:
   1b958:	ff010113          	addi	sp,sp,-16
   1b95c:	00113423          	sd	ra,8(sp)
   1b960:	969ff0ef          	jal	ra,1b2c8 <__errno>
   1b964:	00813083          	ld	ra,8(sp)
   1b968:	01600793          	addi	a5,zero,22
   1b96c:	00f52023          	sw	a5,0(a0)
   1b970:	fff00513          	addi	a0,zero,-1
   1b974:	01010113          	addi	sp,sp,16
   1b978:	00008067          	jalr	zero,0(ra)

000000000001b97c <_lseek>:
   1b97c:	03e00893          	addi	a7,zero,62
   1b980:	00000073          	ecall
   1b984:	00054463          	blt	a0,zero,1b98c <_lseek+0x10>
   1b988:	00008067          	jalr	zero,0(ra)
   1b98c:	fe010113          	addi	sp,sp,-32
   1b990:	00113c23          	sd	ra,24(sp)
   1b994:	00a13423          	sd	a0,8(sp)
   1b998:	931ff0ef          	jal	ra,1b2c8 <__errno>
   1b99c:	00813783          	ld	a5,8(sp)
   1b9a0:	01813083          	ld	ra,24(sp)
   1b9a4:	40f007bb          	subw	a5,zero,a5
   1b9a8:	00f52023          	sw	a5,0(a0)
   1b9ac:	fff00793          	addi	a5,zero,-1
   1b9b0:	00078513          	addi	a0,a5,0
   1b9b4:	02010113          	addi	sp,sp,32
   1b9b8:	00008067          	jalr	zero,0(ra)

000000000001b9bc <_read>:
   1b9bc:	03f00893          	addi	a7,zero,63
   1b9c0:	00000073          	ecall
   1b9c4:	00054463          	blt	a0,zero,1b9cc <_read+0x10>
   1b9c8:	00008067          	jalr	zero,0(ra)
   1b9cc:	fe010113          	addi	sp,sp,-32
   1b9d0:	00113c23          	sd	ra,24(sp)
   1b9d4:	00a13423          	sd	a0,8(sp)
   1b9d8:	8f1ff0ef          	jal	ra,1b2c8 <__errno>
   1b9dc:	00813783          	ld	a5,8(sp)
   1b9e0:	01813083          	ld	ra,24(sp)
   1b9e4:	40f007bb          	subw	a5,zero,a5
   1b9e8:	00f52023          	sw	a5,0(a0)
   1b9ec:	fff00793          	addi	a5,zero,-1
   1b9f0:	00078513          	addi	a0,a5,0
   1b9f4:	02010113          	addi	sp,sp,32
   1b9f8:	00008067          	jalr	zero,0(ra)

000000000001b9fc <_sbrk>:
   1b9fc:	2701b783          	ld	a5,624(gp) # 206b8 <heap_end.0>
   1ba00:	ff010113          	addi	sp,sp,-16
   1ba04:	00113423          	sd	ra,8(sp)
   1ba08:	00050713          	addi	a4,a0,0
   1ba0c:	02079063          	bne	a5,zero,1ba2c <_sbrk+0x30>
   1ba10:	0d600893          	addi	a7,zero,214
   1ba14:	00000513          	addi	a0,zero,0
   1ba18:	00000073          	ecall
   1ba1c:	fff00793          	addi	a5,zero,-1
   1ba20:	02f50c63          	beq	a0,a5,1ba58 <_sbrk+0x5c>
   1ba24:	00050793          	addi	a5,a0,0
   1ba28:	26a1b823          	sd	a0,624(gp) # 206b8 <heap_end.0>
   1ba2c:	00f70533          	add	a0,a4,a5
   1ba30:	0d600893          	addi	a7,zero,214
   1ba34:	00000073          	ecall
   1ba38:	2701b783          	ld	a5,624(gp) # 206b8 <heap_end.0>
   1ba3c:	00f70733          	add	a4,a4,a5
   1ba40:	00e51c63          	bne	a0,a4,1ba58 <_sbrk+0x5c>
   1ba44:	00813083          	ld	ra,8(sp)
   1ba48:	26a1b823          	sd	a0,624(gp) # 206b8 <heap_end.0>
   1ba4c:	00078513          	addi	a0,a5,0
   1ba50:	01010113          	addi	sp,sp,16
   1ba54:	00008067          	jalr	zero,0(ra)
   1ba58:	871ff0ef          	jal	ra,1b2c8 <__errno>
   1ba5c:	00813083          	ld	ra,8(sp)
   1ba60:	00c00793          	addi	a5,zero,12
   1ba64:	00f52023          	sw	a5,0(a0)
   1ba68:	fff00513          	addi	a0,zero,-1
   1ba6c:	01010113          	addi	sp,sp,16
   1ba70:	00008067          	jalr	zero,0(ra)

000000000001ba74 <_write>:
   1ba74:	04000893          	addi	a7,zero,64
   1ba78:	00000073          	ecall
   1ba7c:	00054463          	blt	a0,zero,1ba84 <_write+0x10>
   1ba80:	00008067          	jalr	zero,0(ra)
   1ba84:	fe010113          	addi	sp,sp,-32
   1ba88:	00113c23          	sd	ra,24(sp)
   1ba8c:	00a13423          	sd	a0,8(sp)
   1ba90:	839ff0ef          	jal	ra,1b2c8 <__errno>
   1ba94:	00813783          	ld	a5,8(sp)
   1ba98:	01813083          	ld	ra,24(sp)
   1ba9c:	40f007bb          	subw	a5,zero,a5
   1baa0:	00f52023          	sw	a5,0(a0)
   1baa4:	fff00793          	addi	a5,zero,-1
   1baa8:	00078513          	addi	a0,a5,0
   1baac:	02010113          	addi	sp,sp,32
   1bab0:	00008067          	jalr	zero,0(ra)

000000000001bab4 <_conv_stat>:
   1bab4:	0005b383          	ld	t2,0(a1)
   1bab8:	0085b283          	ld	t0,8(a1)
   1babc:	0105af83          	lw	t6,16(a1)
   1bac0:	0145af03          	lw	t5,20(a1)
   1bac4:	0185ae83          	lw	t4,24(a1)
   1bac8:	01c5ae03          	lw	t3,28(a1)
   1bacc:	0205b303          	ld	t1,32(a1)
   1bad0:	0305b883          	ld	a7,48(a1)
   1bad4:	0405b803          	ld	a6,64(a1)
   1bad8:	0385a603          	lw	a2,56(a1)
   1badc:	0485b683          	ld	a3,72(a1)
   1bae0:	0585b703          	ld	a4,88(a1)
   1bae4:	0685b783          	ld	a5,104(a1)
   1bae8:	00751023          	sh	t2,0(a0)
   1baec:	00551123          	sh	t0,2(a0)
   1baf0:	01f52223          	sw	t6,4(a0)
   1baf4:	01e51423          	sh	t5,8(a0)
   1baf8:	01d51523          	sh	t4,10(a0)
   1bafc:	01c51623          	sh	t3,12(a0)
   1bb00:	00651723          	sh	t1,14(a0)
   1bb04:	01153823          	sd	a7,16(a0)
   1bb08:	05053823          	sd	a6,80(a0)
   1bb0c:	04c53423          	sd	a2,72(a0)
   1bb10:	00d53c23          	sd	a3,24(a0)
   1bb14:	02e53423          	sd	a4,40(a0)
   1bb18:	02f53c23          	sd	a5,56(a0)
   1bb1c:	00008067          	jalr	zero,0(ra)

000000000001bb20 <__adddf3>:
   1bb20:	fe010113          	addi	sp,sp,-32
   1bb24:	fff00713          	addi	a4,zero,-1
   1bb28:	00c75713          	srli	a4,a4,0xc
   1bb2c:	0345d613          	srli	a2,a1,0x34
   1bb30:	01213023          	sd	s2,0(sp)
   1bb34:	03455913          	srli	s2,a0,0x34
   1bb38:	00a777b3          	and	a5,a4,a0
   1bb3c:	00813823          	sd	s0,16(sp)
   1bb40:	00b77733          	and	a4,a4,a1
   1bb44:	7ff97913          	andi	s2,s2,2047
   1bb48:	7ff67613          	andi	a2,a2,2047
   1bb4c:	00113c23          	sd	ra,24(sp)
   1bb50:	00913423          	sd	s1,8(sp)
   1bb54:	03f55413          	srli	s0,a0,0x3f
   1bb58:	03f5d593          	srli	a1,a1,0x3f
   1bb5c:	00379793          	slli	a5,a5,0x3
   1bb60:	00371713          	slli	a4,a4,0x3
   1bb64:	40c906bb          	subw	a3,s2,a2
   1bb68:	1eb41663          	bne	s0,a1,1bd54 <__adddf3+0x234>
   1bb6c:	08d05e63          	bge	zero,a3,1bc08 <__adddf3+0xe8>
   1bb70:	04061c63          	bne	a2,zero,1bbc8 <__adddf3+0xa8>
   1bb74:	04070663          	beq	a4,zero,1bbc0 <__adddf3+0xa0>
   1bb78:	fff6869b          	addiw	a3,a3,-1
   1bb7c:	02069e63          	bne	a3,zero,1bbb8 <__adddf3+0x98>
   1bb80:	00e787b3          	add	a5,a5,a4
   1bb84:	00879713          	slli	a4,a5,0x8
   1bb88:	18075463          	bge	a4,zero,1bd10 <__adddf3+0x1f0>
   1bb8c:	00190913          	addi	s2,s2,1
   1bb90:	7ff00713          	addi	a4,zero,2047
   1bb94:	3ce90663          	beq	s2,a4,1bf60 <__adddf3+0x440>
   1bb98:	1ff00713          	addi	a4,zero,511
   1bb9c:	03671713          	slli	a4,a4,0x36
   1bba0:	0017d693          	srli	a3,a5,0x1
   1bba4:	fff70713          	addi	a4,a4,-1
   1bba8:	00e6f733          	and	a4,a3,a4
   1bbac:	0017f793          	andi	a5,a5,1
   1bbb0:	00f767b3          	or	a5,a4,a5
   1bbb4:	15c0006f          	jal	zero,1bd10 <__adddf3+0x1f0>
   1bbb8:	7ff00613          	addi	a2,zero,2047
   1bbbc:	02c91063          	bne	s2,a2,1bbdc <__adddf3+0xbc>
   1bbc0:	00078713          	addi	a4,a5,0
   1bbc4:	2a40006f          	jal	zero,1be68 <__adddf3+0x348>
   1bbc8:	7ff00613          	addi	a2,zero,2047
   1bbcc:	fec90ae3          	beq	s2,a2,1bbc0 <__adddf3+0xa0>
   1bbd0:	00100613          	addi	a2,zero,1
   1bbd4:	03761613          	slli	a2,a2,0x37
   1bbd8:	00c76733          	or	a4,a4,a2
   1bbdc:	03800593          	addi	a1,zero,56
   1bbe0:	00100613          	addi	a2,zero,1
   1bbe4:	00d5ce63          	blt	a1,a3,1bc00 <__adddf3+0xe0>
   1bbe8:	04000613          	addi	a2,zero,64
   1bbec:	00d755b3          	srl	a1,a4,a3
   1bbf0:	40d606bb          	subw	a3,a2,a3
   1bbf4:	00d71733          	sll	a4,a4,a3
   1bbf8:	00e03733          	sltu	a4,zero,a4
   1bbfc:	00e5e633          	or	a2,a1,a4
   1bc00:	00c787b3          	add	a5,a5,a2
   1bc04:	f81ff06f          	jal	zero,1bb84 <__adddf3+0x64>
   1bc08:	06068a63          	beq	a3,zero,1bc7c <__adddf3+0x15c>
   1bc0c:	02091663          	bne	s2,zero,1bc38 <__adddf3+0x118>
   1bc10:	34078263          	beq	a5,zero,1bf54 <__adddf3+0x434>
   1bc14:	fff6c693          	xori	a3,a3,-1
   1bc18:	00069863          	bne	a3,zero,1bc28 <__adddf3+0x108>
   1bc1c:	00e787b3          	add	a5,a5,a4
   1bc20:	00060913          	addi	s2,a2,0
   1bc24:	f61ff06f          	jal	zero,1bb84 <__adddf3+0x64>
   1bc28:	7ff00593          	addi	a1,zero,2047
   1bc2c:	02b61263          	bne	a2,a1,1bc50 <__adddf3+0x130>
   1bc30:	7ff00913          	addi	s2,zero,2047
   1bc34:	2340006f          	jal	zero,1be68 <__adddf3+0x348>
   1bc38:	7ff00593          	addi	a1,zero,2047
   1bc3c:	feb60ae3          	beq	a2,a1,1bc30 <__adddf3+0x110>
   1bc40:	00100593          	addi	a1,zero,1
   1bc44:	03759593          	slli	a1,a1,0x37
   1bc48:	40d006bb          	subw	a3,zero,a3
   1bc4c:	00b7e7b3          	or	a5,a5,a1
   1bc50:	03800513          	addi	a0,zero,56
   1bc54:	00100593          	addi	a1,zero,1
   1bc58:	00d54e63          	blt	a0,a3,1bc74 <__adddf3+0x154>
   1bc5c:	04000593          	addi	a1,zero,64
   1bc60:	00d7d533          	srl	a0,a5,a3
   1bc64:	40d586bb          	subw	a3,a1,a3
   1bc68:	00d797b3          	sll	a5,a5,a3
   1bc6c:	00f037b3          	sltu	a5,zero,a5
   1bc70:	00f565b3          	or	a1,a0,a5
   1bc74:	00e587b3          	add	a5,a1,a4
   1bc78:	fa9ff06f          	jal	zero,1bc20 <__adddf3+0x100>
   1bc7c:	00190693          	addi	a3,s2,1
   1bc80:	7fe6f613          	andi	a2,a3,2046
   1bc84:	06061c63          	bne	a2,zero,1bcfc <__adddf3+0x1dc>
   1bc88:	06091263          	bne	s2,zero,1bcec <__adddf3+0x1cc>
   1bc8c:	2a078e63          	beq	a5,zero,1bf48 <__adddf3+0x428>
   1bc90:	08070c63          	beq	a4,zero,1bd28 <__adddf3+0x208>
   1bc94:	00f70733          	add	a4,a4,a5
   1bc98:	00871793          	slli	a5,a4,0x8
   1bc9c:	1c07d663          	bge	a5,zero,1be68 <__adddf3+0x348>
   1bca0:	1ff00793          	addi	a5,zero,511
   1bca4:	03479793          	slli	a5,a5,0x34
   1bca8:	00375713          	srli	a4,a4,0x3
   1bcac:	fff78793          	addi	a5,a5,-1
   1bcb0:	00f777b3          	and	a5,a4,a5
   1bcb4:	00100913          	addi	s2,zero,1
   1bcb8:	7ff97513          	andi	a0,s2,2047
   1bcbc:	00c79793          	slli	a5,a5,0xc
   1bcc0:	03451513          	slli	a0,a0,0x34
   1bcc4:	00c7d793          	srli	a5,a5,0xc
   1bcc8:	03f41413          	slli	s0,s0,0x3f
   1bccc:	00f56533          	or	a0,a0,a5
   1bcd0:	01813083          	ld	ra,24(sp)
   1bcd4:	00856533          	or	a0,a0,s0
   1bcd8:	01013403          	ld	s0,16(sp)
   1bcdc:	00813483          	ld	s1,8(sp)
   1bce0:	00013903          	ld	s2,0(sp)
   1bce4:	02010113          	addi	sp,sp,32
   1bce8:	00008067          	jalr	zero,0(ra)
   1bcec:	f40782e3          	beq	a5,zero,1bc30 <__adddf3+0x110>
   1bcf0:	1c071863          	bne	a4,zero,1bec0 <__adddf3+0x3a0>
   1bcf4:	00078713          	addi	a4,a5,0
   1bcf8:	f39ff06f          	jal	zero,1bc30 <__adddf3+0x110>
   1bcfc:	7ff00613          	addi	a2,zero,2047
   1bd00:	24c68e63          	beq	a3,a2,1bf5c <__adddf3+0x43c>
   1bd04:	00e78733          	add	a4,a5,a4
   1bd08:	00175793          	srli	a5,a4,0x1
   1bd0c:	00068913          	addi	s2,a3,0
   1bd10:	0077f713          	andi	a4,a5,7
   1bd14:	00070a63          	beq	a4,zero,1bd28 <__adddf3+0x208>
   1bd18:	00f7f713          	andi	a4,a5,15
   1bd1c:	00400693          	addi	a3,zero,4
   1bd20:	00d70463          	beq	a4,a3,1bd28 <__adddf3+0x208>
   1bd24:	00d787b3          	add	a5,a5,a3
   1bd28:	00879713          	slli	a4,a5,0x8
   1bd2c:	e8075ae3          	bge	a4,zero,1bbc0 <__adddf3+0xa0>
   1bd30:	00190913          	addi	s2,s2,1
   1bd34:	7ff00713          	addi	a4,zero,2047
   1bd38:	22e90463          	beq	s2,a4,1bf60 <__adddf3+0x440>
   1bd3c:	1ff00713          	addi	a4,zero,511
   1bd40:	03471713          	slli	a4,a4,0x34
   1bd44:	0037d793          	srli	a5,a5,0x3
   1bd48:	fff70713          	addi	a4,a4,-1
   1bd4c:	00e7f7b3          	and	a5,a5,a4
   1bd50:	f69ff06f          	jal	zero,1bcb8 <__adddf3+0x198>
   1bd54:	06d05c63          	bge	zero,a3,1bdcc <__adddf3+0x2ac>
   1bd58:	04061e63          	bne	a2,zero,1bdb4 <__adddf3+0x294>
   1bd5c:	e60702e3          	beq	a4,zero,1bbc0 <__adddf3+0xa0>
   1bd60:	fff6869b          	addiw	a3,a3,-1
   1bd64:	00069e63          	bne	a3,zero,1bd80 <__adddf3+0x260>
   1bd68:	40e787b3          	sub	a5,a5,a4
   1bd6c:	00879713          	slli	a4,a5,0x8
   1bd70:	fa0750e3          	bge	a4,zero,1bd10 <__adddf3+0x1f0>
   1bd74:	00979493          	slli	s1,a5,0x9
   1bd78:	0094d493          	srli	s1,s1,0x9
   1bd7c:	16c0006f          	jal	zero,1bee8 <__adddf3+0x3c8>
   1bd80:	7ff00613          	addi	a2,zero,2047
   1bd84:	e2c90ee3          	beq	s2,a2,1bbc0 <__adddf3+0xa0>
   1bd88:	03800593          	addi	a1,zero,56
   1bd8c:	00100613          	addi	a2,zero,1
   1bd90:	00d5ce63          	blt	a1,a3,1bdac <__adddf3+0x28c>
   1bd94:	04000613          	addi	a2,zero,64
   1bd98:	00d755b3          	srl	a1,a4,a3
   1bd9c:	40d606bb          	subw	a3,a2,a3
   1bda0:	00d71733          	sll	a4,a4,a3
   1bda4:	00e03733          	sltu	a4,zero,a4
   1bda8:	00e5e633          	or	a2,a1,a4
   1bdac:	40c787b3          	sub	a5,a5,a2
   1bdb0:	fbdff06f          	jal	zero,1bd6c <__adddf3+0x24c>
   1bdb4:	7ff00613          	addi	a2,zero,2047
   1bdb8:	e0c904e3          	beq	s2,a2,1bbc0 <__adddf3+0xa0>
   1bdbc:	00100613          	addi	a2,zero,1
   1bdc0:	03761613          	slli	a2,a2,0x37
   1bdc4:	00c76733          	or	a4,a4,a2
   1bdc8:	fc1ff06f          	jal	zero,1bd88 <__adddf3+0x268>
   1bdcc:	00068813          	addi	a6,a3,0
   1bdd0:	06068c63          	beq	a3,zero,1be48 <__adddf3+0x328>
   1bdd4:	02091863          	bne	s2,zero,1be04 <__adddf3+0x2e4>
   1bdd8:	16078c63          	beq	a5,zero,1bf50 <__adddf3+0x430>
   1bddc:	fff6c693          	xori	a3,a3,-1
   1bde0:	00069a63          	bne	a3,zero,1bdf4 <__adddf3+0x2d4>
   1bde4:	40f707b3          	sub	a5,a4,a5
   1bde8:	00060913          	addi	s2,a2,0
   1bdec:	00058413          	addi	s0,a1,0
   1bdf0:	f7dff06f          	jal	zero,1bd6c <__adddf3+0x24c>
   1bdf4:	7ff00513          	addi	a0,zero,2047
   1bdf8:	02a61263          	bne	a2,a0,1be1c <__adddf3+0x2fc>
   1bdfc:	00058413          	addi	s0,a1,0
   1be00:	e31ff06f          	jal	zero,1bc30 <__adddf3+0x110>
   1be04:	7ff00693          	addi	a3,zero,2047
   1be08:	fed60ae3          	beq	a2,a3,1bdfc <__adddf3+0x2dc>
   1be0c:	00100513          	addi	a0,zero,1
   1be10:	03751513          	slli	a0,a0,0x37
   1be14:	410006bb          	subw	a3,zero,a6
   1be18:	00a7e7b3          	or	a5,a5,a0
   1be1c:	03800813          	addi	a6,zero,56
   1be20:	00100513          	addi	a0,zero,1
   1be24:	00d84e63          	blt	a6,a3,1be40 <__adddf3+0x320>
   1be28:	04000513          	addi	a0,zero,64
   1be2c:	00d7d833          	srl	a6,a5,a3
   1be30:	40d506bb          	subw	a3,a0,a3
   1be34:	00d797b3          	sll	a5,a5,a3
   1be38:	00f037b3          	sltu	a5,zero,a5
   1be3c:	00f86533          	or	a0,a6,a5
   1be40:	40a707b3          	sub	a5,a4,a0
   1be44:	fa5ff06f          	jal	zero,1bde8 <__adddf3+0x2c8>
   1be48:	00190693          	addi	a3,s2,1
   1be4c:	7fe6f693          	andi	a3,a3,2046
   1be50:	08069263          	bne	a3,zero,1bed4 <__adddf3+0x3b4>
   1be54:	06091463          	bne	s2,zero,1bebc <__adddf3+0x39c>
   1be58:	02079663          	bne	a5,zero,1be84 <__adddf3+0x364>
   1be5c:	00000413          	addi	s0,zero,0
   1be60:	e4070ce3          	beq	a4,zero,1bcb8 <__adddf3+0x198>
   1be64:	00058413          	addi	s0,a1,0
   1be68:	00375793          	srli	a5,a4,0x3
   1be6c:	7ff00713          	addi	a4,zero,2047
   1be70:	e4e914e3          	bne	s2,a4,1bcb8 <__adddf3+0x198>
   1be74:	e40782e3          	beq	a5,zero,1bcb8 <__adddf3+0x198>
   1be78:	00100793          	addi	a5,zero,1
   1be7c:	03379793          	slli	a5,a5,0x33
   1be80:	0340006f          	jal	zero,1beb4 <__adddf3+0x394>
   1be84:	ea0702e3          	beq	a4,zero,1bd28 <__adddf3+0x208>
   1be88:	40e786b3          	sub	a3,a5,a4
   1be8c:	00869613          	slli	a2,a3,0x8
   1be90:	00065c63          	bge	a2,zero,1bea8 <__adddf3+0x388>
   1be94:	40f707b3          	sub	a5,a4,a5
   1be98:	00058413          	addi	s0,a1,0
   1be9c:	00000913          	addi	s2,zero,0
   1bea0:	e0078ce3          	beq	a5,zero,1bcb8 <__adddf3+0x198>
   1bea4:	e6dff06f          	jal	zero,1bd10 <__adddf3+0x1f0>
   1bea8:	00068713          	addi	a4,a3,0
   1beac:	fa069ee3          	bne	a3,zero,1be68 <__adddf3+0x348>
   1beb0:	00000793          	addi	a5,zero,0
   1beb4:	00000413          	addi	s0,zero,0
   1beb8:	e01ff06f          	jal	zero,1bcb8 <__adddf3+0x198>
   1bebc:	e2079ae3          	bne	a5,zero,1bcf0 <__adddf3+0x1d0>
   1bec0:	00100793          	addi	a5,zero,1
   1bec4:	00000413          	addi	s0,zero,0
   1bec8:	7ff00913          	addi	s2,zero,2047
   1becc:	03379793          	slli	a5,a5,0x33
   1bed0:	de9ff06f          	jal	zero,1bcb8 <__adddf3+0x198>
   1bed4:	40e784b3          	sub	s1,a5,a4
   1bed8:	00849693          	slli	a3,s1,0x8
   1bedc:	0406d263          	bge	a3,zero,1bf20 <__adddf3+0x400>
   1bee0:	40f704b3          	sub	s1,a4,a5
   1bee4:	00058413          	addi	s0,a1,0
   1bee8:	00048513          	addi	a0,s1,0
   1beec:	328020ef          	jal	ra,1e214 <__clzdi2>
   1bef0:	ff85051b          	addiw	a0,a0,-8
   1bef4:	00a494b3          	sll	s1,s1,a0
   1bef8:	03254c63          	blt	a0,s2,1bf30 <__adddf3+0x410>
   1befc:	4125053b          	subw	a0,a0,s2
   1bf00:	0015051b          	addiw	a0,a0,1
   1bf04:	04000713          	addi	a4,zero,64
   1bf08:	40a7073b          	subw	a4,a4,a0
   1bf0c:	00a4d7b3          	srl	a5,s1,a0
   1bf10:	00e494b3          	sll	s1,s1,a4
   1bf14:	009034b3          	sltu	s1,zero,s1
   1bf18:	0097e7b3          	or	a5,a5,s1
   1bf1c:	f81ff06f          	jal	zero,1be9c <__adddf3+0x37c>
   1bf20:	fc0494e3          	bne	s1,zero,1bee8 <__adddf3+0x3c8>
   1bf24:	00000793          	addi	a5,zero,0
   1bf28:	00000913          	addi	s2,zero,0
   1bf2c:	f89ff06f          	jal	zero,1beb4 <__adddf3+0x394>
   1bf30:	fff00793          	addi	a5,zero,-1
   1bf34:	03779793          	slli	a5,a5,0x37
   1bf38:	fff78793          	addi	a5,a5,-1
   1bf3c:	40a90933          	sub	s2,s2,a0
   1bf40:	00f4f7b3          	and	a5,s1,a5
   1bf44:	dcdff06f          	jal	zero,1bd10 <__adddf3+0x1f0>
   1bf48:	00070793          	addi	a5,a4,0
   1bf4c:	f51ff06f          	jal	zero,1be9c <__adddf3+0x37c>
   1bf50:	00058413          	addi	s0,a1,0
   1bf54:	00060913          	addi	s2,a2,0
   1bf58:	f11ff06f          	jal	zero,1be68 <__adddf3+0x348>
   1bf5c:	00068913          	addi	s2,a3,0
   1bf60:	00000793          	addi	a5,zero,0
   1bf64:	d55ff06f          	jal	zero,1bcb8 <__adddf3+0x198>

000000000001bf68 <__divdf3>:
   1bf68:	fb010113          	addi	sp,sp,-80
   1bf6c:	02913c23          	sd	s1,56(sp)
   1bf70:	03455493          	srli	s1,a0,0x34
   1bf74:	03413023          	sd	s4,32(sp)
   1bf78:	01513c23          	sd	s5,24(sp)
   1bf7c:	01713423          	sd	s7,8(sp)
   1bf80:	00c51a13          	slli	s4,a0,0xc
   1bf84:	04113423          	sd	ra,72(sp)
   1bf88:	04813023          	sd	s0,64(sp)
   1bf8c:	03213823          	sd	s2,48(sp)
   1bf90:	03313423          	sd	s3,40(sp)
   1bf94:	01613823          	sd	s6,16(sp)
   1bf98:	01813023          	sd	s8,0(sp)
   1bf9c:	7ff4f493          	andi	s1,s1,2047
   1bfa0:	00058b93          	addi	s7,a1,0
   1bfa4:	00ca5a13          	srli	s4,s4,0xc
   1bfa8:	03f55a93          	srli	s5,a0,0x3f
   1bfac:	08048863          	beq	s1,zero,1c03c <__divdf3+0xd4>
   1bfb0:	7ff00793          	addi	a5,zero,2047
   1bfb4:	0af48663          	beq	s1,a5,1c060 <__divdf3+0xf8>
   1bfb8:	00100793          	addi	a5,zero,1
   1bfbc:	003a1a13          	slli	s4,s4,0x3
   1bfc0:	03779793          	slli	a5,a5,0x37
   1bfc4:	00fa6a33          	or	s4,s4,a5
   1bfc8:	c0148493          	addi	s1,s1,-1023
   1bfcc:	00000b13          	addi	s6,zero,0
   1bfd0:	034bd793          	srli	a5,s7,0x34
   1bfd4:	00cb9413          	slli	s0,s7,0xc
   1bfd8:	7ff7f793          	andi	a5,a5,2047
   1bfdc:	00c45413          	srli	s0,s0,0xc
   1bfe0:	03fbdb93          	srli	s7,s7,0x3f
   1bfe4:	08078e63          	beq	a5,zero,1c080 <__divdf3+0x118>
   1bfe8:	7ff00713          	addi	a4,zero,2047
   1bfec:	0ae78c63          	beq	a5,a4,1c0a4 <__divdf3+0x13c>
   1bff0:	00100713          	addi	a4,zero,1
   1bff4:	00341413          	slli	s0,s0,0x3
   1bff8:	03771713          	slli	a4,a4,0x37
   1bffc:	00e46433          	or	s0,s0,a4
   1c000:	c0178793          	addi	a5,a5,-1023
   1c004:	00000713          	addi	a4,zero,0
   1c008:	40f489b3          	sub	s3,s1,a5
   1c00c:	002b1793          	slli	a5,s6,0x2
   1c010:	00e7e7b3          	or	a5,a5,a4
   1c014:	fff78793          	addi	a5,a5,-1
   1c018:	00e00693          	addi	a3,zero,14
   1c01c:	017ac933          	xor	s2,s5,s7
   1c020:	0af6ec63          	bltu	a3,a5,1c0d8 <__divdf3+0x170>
   1c024:	0001f6b7          	lui	a3,0x1f
   1c028:	00279793          	slli	a5,a5,0x2
   1c02c:	97068693          	addi	a3,a3,-1680 # 1e970 <blanks.1+0x10>
   1c030:	00d787b3          	add	a5,a5,a3
   1c034:	0007a783          	lw	a5,0(a5)
   1c038:	00078067          	jalr	zero,0(a5)
   1c03c:	020a0c63          	beq	s4,zero,1c074 <__divdf3+0x10c>
   1c040:	000a0513          	addi	a0,s4,0
   1c044:	1d0020ef          	jal	ra,1e214 <__clzdi2>
   1c048:	0005079b          	addiw	a5,a0,0
   1c04c:	c0d00493          	addi	s1,zero,-1011
   1c050:	ff85051b          	addiw	a0,a0,-8
   1c054:	00aa1a33          	sll	s4,s4,a0
   1c058:	40f484b3          	sub	s1,s1,a5
   1c05c:	f71ff06f          	jal	zero,1bfcc <__divdf3+0x64>
   1c060:	0004849b          	addiw	s1,s1,0
   1c064:	00200b13          	addi	s6,zero,2
   1c068:	f60a04e3          	beq	s4,zero,1bfd0 <__divdf3+0x68>
   1c06c:	00300b13          	addi	s6,zero,3
   1c070:	f61ff06f          	jal	zero,1bfd0 <__divdf3+0x68>
   1c074:	00000493          	addi	s1,zero,0
   1c078:	00100b13          	addi	s6,zero,1
   1c07c:	f55ff06f          	jal	zero,1bfd0 <__divdf3+0x68>
   1c080:	02040c63          	beq	s0,zero,1c0b8 <__divdf3+0x150>
   1c084:	00040513          	addi	a0,s0,0
   1c088:	18c020ef          	jal	ra,1e214 <__clzdi2>
   1c08c:	0005071b          	addiw	a4,a0,0
   1c090:	c0d00793          	addi	a5,zero,-1011
   1c094:	ff85051b          	addiw	a0,a0,-8
   1c098:	00a41433          	sll	s0,s0,a0
   1c09c:	40e787b3          	sub	a5,a5,a4
   1c0a0:	f65ff06f          	jal	zero,1c004 <__divdf3+0x9c>
   1c0a4:	0007879b          	addiw	a5,a5,0
   1c0a8:	00200713          	addi	a4,zero,2
   1c0ac:	f4040ee3          	beq	s0,zero,1c008 <__divdf3+0xa0>
   1c0b0:	00300713          	addi	a4,zero,3
   1c0b4:	f55ff06f          	jal	zero,1c008 <__divdf3+0xa0>
   1c0b8:	00000793          	addi	a5,zero,0
   1c0bc:	00100713          	addi	a4,zero,1
   1c0c0:	f49ff06f          	jal	zero,1c008 <__divdf3+0xa0>
   1c0c4:	00100793          	addi	a5,zero,1
   1c0c8:	03379793          	slli	a5,a5,0x33
   1c0cc:	7ff00513          	addi	a0,zero,2047
   1c0d0:	00000913          	addi	s2,zero,0
   1c0d4:	1180006f          	jal	zero,1c1ec <__divdf3+0x284>
   1c0d8:	00841b13          	slli	s6,s0,0x8
   1c0dc:	148a7c63          	bgeu	s4,s0,1c234 <__divdf3+0x2cc>
   1c0e0:	fff98993          	addi	s3,s3,-1
   1c0e4:	00000413          	addi	s0,zero,0
   1c0e8:	020b5a93          	srli	s5,s6,0x20
   1c0ec:	000a8593          	addi	a1,s5,0
   1c0f0:	020b1c13          	slli	s8,s6,0x20
   1c0f4:	000a0513          	addi	a0,s4,0
   1c0f8:	064020ef          	jal	ra,1e15c <__hidden___udivdi3>
   1c0fc:	020c5c13          	srli	s8,s8,0x20
   1c100:	00050593          	addi	a1,a0,0
   1c104:	00050493          	addi	s1,a0,0
   1c108:	000c0513          	addi	a0,s8,0
   1c10c:	7e5010ef          	jal	ra,1e0f0 <__muldi3>
   1c110:	00050b93          	addi	s7,a0,0
   1c114:	000a8593          	addi	a1,s5,0
   1c118:	000a0513          	addi	a0,s4,0
   1c11c:	088020ef          	jal	ra,1e1a4 <__umoddi3>
   1c120:	02051513          	slli	a0,a0,0x20
   1c124:	02045793          	srli	a5,s0,0x20
   1c128:	00a7e7b3          	or	a5,a5,a0
   1c12c:	0177fa63          	bgeu	a5,s7,1c140 <__divdf3+0x1d8>
   1c130:	00fb07b3          	add	a5,s6,a5
   1c134:	0177f463          	bgeu	a5,s7,1c13c <__divdf3+0x1d4>
   1c138:	1167f463          	bgeu	a5,s6,1c240 <__divdf3+0x2d8>
   1c13c:	fff48493          	addi	s1,s1,-1
   1c140:	41778433          	sub	s0,a5,s7
   1c144:	000a8593          	addi	a1,s5,0
   1c148:	00040513          	addi	a0,s0,0
   1c14c:	010020ef          	jal	ra,1e15c <__hidden___udivdi3>
   1c150:	00050593          	addi	a1,a0,0
   1c154:	00050a13          	addi	s4,a0,0
   1c158:	000c0513          	addi	a0,s8,0
   1c15c:	795010ef          	jal	ra,1e0f0 <__muldi3>
   1c160:	00050b93          	addi	s7,a0,0
   1c164:	000a8593          	addi	a1,s5,0
   1c168:	00040513          	addi	a0,s0,0
   1c16c:	038020ef          	jal	ra,1e1a4 <__umoddi3>
   1c170:	02051793          	slli	a5,a0,0x20
   1c174:	0177fe63          	bgeu	a5,s7,1c190 <__divdf3+0x228>
   1c178:	01678733          	add	a4,a5,s6
   1c17c:	00f736b3          	sltu	a3,a4,a5
   1c180:	00070793          	addi	a5,a4,0
   1c184:	01777463          	bgeu	a4,s7,1c18c <__divdf3+0x224>
   1c188:	0c068263          	beq	a3,zero,1c24c <__divdf3+0x2e4>
   1c18c:	fffa0a13          	addi	s4,s4,-1
   1c190:	02049413          	slli	s0,s1,0x20
   1c194:	417787b3          	sub	a5,a5,s7
   1c198:	01446433          	or	s0,s0,s4
   1c19c:	00f037b3          	sltu	a5,zero,a5
   1c1a0:	00f46433          	or	s0,s0,a5
   1c1a4:	3ff98513          	addi	a0,s3,1023
   1c1a8:	0ea05463          	bge	zero,a0,1c290 <__divdf3+0x328>
   1c1ac:	00747793          	andi	a5,s0,7
   1c1b0:	00078a63          	beq	a5,zero,1c1c4 <__divdf3+0x25c>
   1c1b4:	00f47793          	andi	a5,s0,15
   1c1b8:	00400713          	addi	a4,zero,4
   1c1bc:	00e78463          	beq	a5,a4,1c1c4 <__divdf3+0x25c>
   1c1c0:	00e40433          	add	s0,s0,a4
   1c1c4:	00741793          	slli	a5,s0,0x7
   1c1c8:	0007dc63          	bge	a5,zero,1c1e0 <__divdf3+0x278>
   1c1cc:	fff00793          	addi	a5,zero,-1
   1c1d0:	03879793          	slli	a5,a5,0x38
   1c1d4:	fff78793          	addi	a5,a5,-1
   1c1d8:	00f47433          	and	s0,s0,a5
   1c1dc:	40098513          	addi	a0,s3,1024
   1c1e0:	7fe00793          	addi	a5,zero,2046
   1c1e4:	10a7c863          	blt	a5,a0,1c2f4 <__divdf3+0x38c>
   1c1e8:	00345793          	srli	a5,s0,0x3
   1c1ec:	04813083          	ld	ra,72(sp)
   1c1f0:	04013403          	ld	s0,64(sp)
   1c1f4:	00c79793          	slli	a5,a5,0xc
   1c1f8:	03451513          	slli	a0,a0,0x34
   1c1fc:	00c7d793          	srli	a5,a5,0xc
   1c200:	03f91913          	slli	s2,s2,0x3f
   1c204:	00f56533          	or	a0,a0,a5
   1c208:	03813483          	ld	s1,56(sp)
   1c20c:	02813983          	ld	s3,40(sp)
   1c210:	02013a03          	ld	s4,32(sp)
   1c214:	01813a83          	ld	s5,24(sp)
   1c218:	01013b03          	ld	s6,16(sp)
   1c21c:	00813b83          	ld	s7,8(sp)
   1c220:	00013c03          	ld	s8,0(sp)
   1c224:	01256533          	or	a0,a0,s2
   1c228:	03013903          	ld	s2,48(sp)
   1c22c:	05010113          	addi	sp,sp,80
   1c230:	00008067          	jalr	zero,0(ra)
   1c234:	03fa1413          	slli	s0,s4,0x3f
   1c238:	001a5a13          	srli	s4,s4,0x1
   1c23c:	eadff06f          	jal	zero,1c0e8 <__divdf3+0x180>
   1c240:	ffe48493          	addi	s1,s1,-2
   1c244:	016787b3          	add	a5,a5,s6
   1c248:	ef9ff06f          	jal	zero,1c140 <__divdf3+0x1d8>
   1c24c:	ffea0a13          	addi	s4,s4,-2
   1c250:	016707b3          	add	a5,a4,s6
   1c254:	f3dff06f          	jal	zero,1c190 <__divdf3+0x228>
   1c258:	000b8913          	addi	s2,s7,0
   1c25c:	00200793          	addi	a5,zero,2
   1c260:	08f70a63          	beq	a4,a5,1c2f4 <__divdf3+0x38c>
   1c264:	00300693          	addi	a3,zero,3
   1c268:	00100793          	addi	a5,zero,1
   1c26c:	e4d70ee3          	beq	a4,a3,1c0c8 <__divdf3+0x160>
   1c270:	f2f71ae3          	bne	a4,a5,1c1a4 <__divdf3+0x23c>
   1c274:	00000793          	addi	a5,zero,0
   1c278:	00000513          	addi	a0,zero,0
   1c27c:	f71ff06f          	jal	zero,1c1ec <__divdf3+0x284>
   1c280:	000a8913          	addi	s2,s5,0
   1c284:	000a0413          	addi	s0,s4,0
   1c288:	000b0713          	addi	a4,s6,0
   1c28c:	fd1ff06f          	jal	zero,1c25c <__divdf3+0x2f4>
   1c290:	04050e63          	beq	a0,zero,1c2ec <__divdf3+0x384>
   1c294:	fc900793          	addi	a5,zero,-55
   1c298:	fcf54ee3          	blt	a0,a5,1c274 <__divdf3+0x30c>
   1c29c:	00100713          	addi	a4,zero,1
   1c2a0:	40a70733          	sub	a4,a4,a0
   1c2a4:	04000693          	addi	a3,zero,64
   1c2a8:	00e457b3          	srl	a5,s0,a4
   1c2ac:	40e6873b          	subw	a4,a3,a4
   1c2b0:	00e41433          	sll	s0,s0,a4
   1c2b4:	00803433          	sltu	s0,zero,s0
   1c2b8:	0087e7b3          	or	a5,a5,s0
   1c2bc:	0077f713          	andi	a4,a5,7
   1c2c0:	00070a63          	beq	a4,zero,1c2d4 <__divdf3+0x36c>
   1c2c4:	00f7f713          	andi	a4,a5,15
   1c2c8:	00400693          	addi	a3,zero,4
   1c2cc:	00d70463          	beq	a4,a3,1c2d4 <__divdf3+0x36c>
   1c2d0:	00d787b3          	add	a5,a5,a3
   1c2d4:	00879713          	slli	a4,a5,0x8
   1c2d8:	0037d793          	srli	a5,a5,0x3
   1c2dc:	f8075ee3          	bge	a4,zero,1c278 <__divdf3+0x310>
   1c2e0:	00000793          	addi	a5,zero,0
   1c2e4:	00100513          	addi	a0,zero,1
   1c2e8:	f05ff06f          	jal	zero,1c1ec <__divdf3+0x284>
   1c2ec:	00100713          	addi	a4,zero,1
   1c2f0:	fb5ff06f          	jal	zero,1c2a4 <__divdf3+0x33c>
   1c2f4:	00000793          	addi	a5,zero,0
   1c2f8:	7ff00513          	addi	a0,zero,2047
   1c2fc:	ef1ff06f          	jal	zero,1c1ec <__divdf3+0x284>

000000000001c300 <__eqdf2>:
   1c300:	00050693          	addi	a3,a0,0
   1c304:	fff00793          	addi	a5,zero,-1
   1c308:	00c7d793          	srli	a5,a5,0xc
   1c30c:	00a7f533          	and	a0,a5,a0
   1c310:	0346d613          	srli	a2,a3,0x34
   1c314:	0345d713          	srli	a4,a1,0x34
   1c318:	7ff67613          	andi	a2,a2,2047
   1c31c:	03f6d893          	srli	a7,a3,0x3f
   1c320:	00b7f7b3          	and	a5,a5,a1
   1c324:	7ff77713          	andi	a4,a4,2047
   1c328:	03f5d813          	srli	a6,a1,0x3f
   1c32c:	00050863          	beq	a0,zero,1c33c <__eqdf2+0x3c>
   1c330:	80160613          	addi	a2,a2,-2047
   1c334:	00100513          	addi	a0,zero,1
   1c338:	04060063          	beq	a2,zero,1c378 <__eqdf2+0x78>
   1c33c:	00078863          	beq	a5,zero,1c34c <__eqdf2+0x4c>
   1c340:	80170793          	addi	a5,a4,-2047
   1c344:	00100513          	addi	a0,zero,1
   1c348:	02078863          	beq	a5,zero,1c378 <__eqdf2+0x78>
   1c34c:	fff00713          	addi	a4,zero,-1
   1c350:	00b6c5b3          	xor	a1,a3,a1
   1c354:	00175713          	srli	a4,a4,0x1
   1c358:	00e5f5b3          	and	a1,a1,a4
   1c35c:	00100793          	addi	a5,zero,1
   1c360:	00059a63          	bne	a1,zero,1c374 <__eqdf2+0x74>
   1c364:	00000793          	addi	a5,zero,0
   1c368:	01088663          	beq	a7,a6,1c374 <__eqdf2+0x74>
   1c36c:	00d77733          	and	a4,a4,a3
   1c370:	00e037b3          	sltu	a5,zero,a4
   1c374:	00078513          	addi	a0,a5,0
   1c378:	00008067          	jalr	zero,0(ra)

000000000001c37c <__gedf2>:
   1c37c:	fff00693          	addi	a3,zero,-1
   1c380:	00c6d693          	srli	a3,a3,0xc
   1c384:	00a6f333          	and	t1,a3,a0
   1c388:	03455893          	srli	a7,a0,0x34
   1c38c:	0345d813          	srli	a6,a1,0x34
   1c390:	7ff8f893          	andi	a7,a7,2047
   1c394:	03f55613          	srli	a2,a0,0x3f
   1c398:	00b6f6b3          	and	a3,a3,a1
   1c39c:	7ff87813          	andi	a6,a6,2047
   1c3a0:	03f5de13          	srli	t3,a1,0x3f
   1c3a4:	00030863          	beq	t1,zero,1c3b4 <__gedf2+0x38>
   1c3a8:	80188713          	addi	a4,a7,-2047
   1c3ac:	ffe00793          	addi	a5,zero,-2
   1c3b0:	04070663          	beq	a4,zero,1c3fc <__gedf2+0x80>
   1c3b4:	00068863          	beq	a3,zero,1c3c4 <__gedf2+0x48>
   1c3b8:	80180713          	addi	a4,a6,-2047
   1c3bc:	ffe00793          	addi	a5,zero,-2
   1c3c0:	02070e63          	beq	a4,zero,1c3fc <__gedf2+0x80>
   1c3c4:	fff00713          	addi	a4,zero,-1
   1c3c8:	00175793          	srli	a5,a4,0x1
   1c3cc:	00b7f5b3          	and	a1,a5,a1
   1c3d0:	00a7f7b3          	and	a5,a5,a0
   1c3d4:	00079c63          	bne	a5,zero,1c3ec <__gedf2+0x70>
   1c3d8:	02058263          	beq	a1,zero,1c3fc <__gedf2+0x80>
   1c3dc:	00100793          	addi	a5,zero,1
   1c3e0:	000e1e63          	bne	t3,zero,1c3fc <__gedf2+0x80>
   1c3e4:	00070793          	addi	a5,a4,0
   1c3e8:	0140006f          	jal	zero,1c3fc <__gedf2+0x80>
   1c3ec:	00059c63          	bne	a1,zero,1c404 <__gedf2+0x88>
   1c3f0:	00070793          	addi	a5,a4,0
   1c3f4:	00061463          	bne	a2,zero,1c3fc <__gedf2+0x80>
   1c3f8:	00100793          	addi	a5,zero,1
   1c3fc:	00078513          	addi	a0,a5,0
   1c400:	00008067          	jalr	zero,0(ra)
   1c404:	ffc616e3          	bne	a2,t3,1c3f0 <__gedf2+0x74>
   1c408:	ff1844e3          	blt	a6,a7,1c3f0 <__gedf2+0x74>
   1c40c:	0108d863          	bge	a7,a6,1c41c <__gedf2+0xa0>
   1c410:	00100793          	addi	a5,zero,1
   1c414:	fe0614e3          	bne	a2,zero,1c3fc <__gedf2+0x80>
   1c418:	fcdff06f          	jal	zero,1c3e4 <__gedf2+0x68>
   1c41c:	fc66eae3          	bltu	a3,t1,1c3f0 <__gedf2+0x74>
   1c420:	00000793          	addi	a5,zero,0
   1c424:	fcd37ce3          	bgeu	t1,a3,1c3fc <__gedf2+0x80>
   1c428:	fe9ff06f          	jal	zero,1c410 <__gedf2+0x94>

000000000001c42c <__ledf2>:
   1c42c:	fff00693          	addi	a3,zero,-1
   1c430:	00c6d693          	srli	a3,a3,0xc
   1c434:	00a6f333          	and	t1,a3,a0
   1c438:	03455893          	srli	a7,a0,0x34
   1c43c:	0345d813          	srli	a6,a1,0x34
   1c440:	7ff8f893          	andi	a7,a7,2047
   1c444:	03f55613          	srli	a2,a0,0x3f
   1c448:	00b6f6b3          	and	a3,a3,a1
   1c44c:	7ff87813          	andi	a6,a6,2047
   1c450:	03f5de13          	srli	t3,a1,0x3f
   1c454:	00030863          	beq	t1,zero,1c464 <__ledf2+0x38>
   1c458:	80188713          	addi	a4,a7,-2047
   1c45c:	00200793          	addi	a5,zero,2
   1c460:	04070663          	beq	a4,zero,1c4ac <__ledf2+0x80>
   1c464:	00068863          	beq	a3,zero,1c474 <__ledf2+0x48>
   1c468:	80180713          	addi	a4,a6,-2047
   1c46c:	00200793          	addi	a5,zero,2
   1c470:	02070e63          	beq	a4,zero,1c4ac <__ledf2+0x80>
   1c474:	fff00713          	addi	a4,zero,-1
   1c478:	00175793          	srli	a5,a4,0x1
   1c47c:	00b7f5b3          	and	a1,a5,a1
   1c480:	00a7f7b3          	and	a5,a5,a0
   1c484:	00079c63          	bne	a5,zero,1c49c <__ledf2+0x70>
   1c488:	02058263          	beq	a1,zero,1c4ac <__ledf2+0x80>
   1c48c:	00100793          	addi	a5,zero,1
   1c490:	000e1e63          	bne	t3,zero,1c4ac <__ledf2+0x80>
   1c494:	00070793          	addi	a5,a4,0
   1c498:	0140006f          	jal	zero,1c4ac <__ledf2+0x80>
   1c49c:	00059c63          	bne	a1,zero,1c4b4 <__ledf2+0x88>
   1c4a0:	00070793          	addi	a5,a4,0
   1c4a4:	00061463          	bne	a2,zero,1c4ac <__ledf2+0x80>
   1c4a8:	00100793          	addi	a5,zero,1
   1c4ac:	00078513          	addi	a0,a5,0
   1c4b0:	00008067          	jalr	zero,0(ra)
   1c4b4:	ffc616e3          	bne	a2,t3,1c4a0 <__ledf2+0x74>
   1c4b8:	ff1844e3          	blt	a6,a7,1c4a0 <__ledf2+0x74>
   1c4bc:	0108d863          	bge	a7,a6,1c4cc <__ledf2+0xa0>
   1c4c0:	00100793          	addi	a5,zero,1
   1c4c4:	fe0614e3          	bne	a2,zero,1c4ac <__ledf2+0x80>
   1c4c8:	fcdff06f          	jal	zero,1c494 <__ledf2+0x68>
   1c4cc:	fc66eae3          	bltu	a3,t1,1c4a0 <__ledf2+0x74>
   1c4d0:	00000793          	addi	a5,zero,0
   1c4d4:	fcd37ce3          	bgeu	t1,a3,1c4ac <__ledf2+0x80>
   1c4d8:	fe9ff06f          	jal	zero,1c4c0 <__ledf2+0x94>

000000000001c4dc <__muldf3>:
   1c4dc:	fc010113          	addi	sp,sp,-64
   1c4e0:	03213023          	sd	s2,32(sp)
   1c4e4:	03455913          	srli	s2,a0,0x34
   1c4e8:	02913423          	sd	s1,40(sp)
   1c4ec:	01313c23          	sd	s3,24(sp)
   1c4f0:	01513423          	sd	s5,8(sp)
   1c4f4:	00c51493          	slli	s1,a0,0xc
   1c4f8:	02113c23          	sd	ra,56(sp)
   1c4fc:	02813823          	sd	s0,48(sp)
   1c500:	01413823          	sd	s4,16(sp)
   1c504:	7ff97913          	andi	s2,s2,2047
   1c508:	00058a93          	addi	s5,a1,0
   1c50c:	00c4d493          	srli	s1,s1,0xc
   1c510:	03f55993          	srli	s3,a0,0x3f
   1c514:	1c090263          	beq	s2,zero,1c6d8 <__muldf3+0x1fc>
   1c518:	7ff00793          	addi	a5,zero,2047
   1c51c:	1ef90063          	beq	s2,a5,1c6fc <__muldf3+0x220>
   1c520:	00100793          	addi	a5,zero,1
   1c524:	00349493          	slli	s1,s1,0x3
   1c528:	03779793          	slli	a5,a5,0x37
   1c52c:	00f4e4b3          	or	s1,s1,a5
   1c530:	c0190913          	addi	s2,s2,-1023
   1c534:	00000a13          	addi	s4,zero,0
   1c538:	034ad793          	srli	a5,s5,0x34
   1c53c:	00ca9413          	slli	s0,s5,0xc
   1c540:	7ff7f793          	andi	a5,a5,2047
   1c544:	00c45413          	srli	s0,s0,0xc
   1c548:	03fada93          	srli	s5,s5,0x3f
   1c54c:	1c078863          	beq	a5,zero,1c71c <__muldf3+0x240>
   1c550:	7ff00713          	addi	a4,zero,2047
   1c554:	1ee78663          	beq	a5,a4,1c740 <__muldf3+0x264>
   1c558:	00100713          	addi	a4,zero,1
   1c55c:	00341413          	slli	s0,s0,0x3
   1c560:	03771713          	slli	a4,a4,0x37
   1c564:	00e46433          	or	s0,s0,a4
   1c568:	c0178793          	addi	a5,a5,-1023
   1c56c:	00000693          	addi	a3,zero,0
   1c570:	002a1713          	slli	a4,s4,0x2
   1c574:	00f90933          	add	s2,s2,a5
   1c578:	00d76733          	or	a4,a4,a3
   1c57c:	00a00793          	addi	a5,zero,10
   1c580:	00190813          	addi	a6,s2,1
   1c584:	22e7c063          	blt	a5,a4,1c7a4 <__muldf3+0x2c8>
   1c588:	00200613          	addi	a2,zero,2
   1c58c:	0159c9b3          	xor	s3,s3,s5
   1c590:	00100793          	addi	a5,zero,1
   1c594:	1ce64663          	blt	a2,a4,1c760 <__muldf3+0x284>
   1c598:	fff70713          	addi	a4,a4,-1
   1c59c:	1ee7f263          	bgeu	a5,a4,1c780 <__muldf3+0x2a4>
   1c5a0:	02045793          	srli	a5,s0,0x20
   1c5a4:	02041413          	slli	s0,s0,0x20
   1c5a8:	02049513          	slli	a0,s1,0x20
   1c5ac:	02045413          	srli	s0,s0,0x20
   1c5b0:	0204de13          	srli	t3,s1,0x20
   1c5b4:	02055513          	srli	a0,a0,0x20
   1c5b8:	00040593          	addi	a1,s0,0
   1c5bc:	335010ef          	jal	ra,1e0f0 <__muldi3>
   1c5c0:	00050893          	addi	a7,a0,0
   1c5c4:	02049513          	slli	a0,s1,0x20
   1c5c8:	02055513          	srli	a0,a0,0x20
   1c5cc:	00078593          	addi	a1,a5,0
   1c5d0:	321010ef          	jal	ra,1e0f0 <__muldi3>
   1c5d4:	00050713          	addi	a4,a0,0
   1c5d8:	00040593          	addi	a1,s0,0
   1c5dc:	000e0513          	addi	a0,t3,0
   1c5e0:	311010ef          	jal	ra,1e0f0 <__muldi3>
   1c5e4:	00050313          	addi	t1,a0,0
   1c5e8:	00078593          	addi	a1,a5,0
   1c5ec:	000e0513          	addi	a0,t3,0
   1c5f0:	301010ef          	jal	ra,1e0f0 <__muldi3>
   1c5f4:	0208d793          	srli	a5,a7,0x20
   1c5f8:	00670733          	add	a4,a4,t1
   1c5fc:	00e787b3          	add	a5,a5,a4
   1c600:	0067f863          	bgeu	a5,t1,1c610 <__muldf3+0x134>
   1c604:	00100713          	addi	a4,zero,1
   1c608:	02071713          	slli	a4,a4,0x20
   1c60c:	00e50533          	add	a0,a0,a4
   1c610:	02089893          	slli	a7,a7,0x20
   1c614:	02079713          	slli	a4,a5,0x20
   1c618:	0208d893          	srli	a7,a7,0x20
   1c61c:	01170733          	add	a4,a4,a7
   1c620:	0207d793          	srli	a5,a5,0x20
   1c624:	00971413          	slli	s0,a4,0x9
   1c628:	00a787b3          	add	a5,a5,a0
   1c62c:	03775713          	srli	a4,a4,0x37
   1c630:	00979793          	slli	a5,a5,0x9
   1c634:	00803433          	sltu	s0,zero,s0
   1c638:	00e46433          	or	s0,s0,a4
   1c63c:	00779713          	slli	a4,a5,0x7
   1c640:	0087e433          	or	s0,a5,s0
   1c644:	16075e63          	bge	a4,zero,1c7c0 <__muldf3+0x2e4>
   1c648:	00145793          	srli	a5,s0,0x1
   1c64c:	00147413          	andi	s0,s0,1
   1c650:	0087e433          	or	s0,a5,s0
   1c654:	3ff80513          	addi	a0,a6,1023
   1c658:	16a05863          	bge	zero,a0,1c7c8 <__muldf3+0x2ec>
   1c65c:	00747793          	andi	a5,s0,7
   1c660:	00078a63          	beq	a5,zero,1c674 <__muldf3+0x198>
   1c664:	00f47793          	andi	a5,s0,15
   1c668:	00400713          	addi	a4,zero,4
   1c66c:	00e78463          	beq	a5,a4,1c674 <__muldf3+0x198>
   1c670:	00e40433          	add	s0,s0,a4
   1c674:	00741793          	slli	a5,s0,0x7
   1c678:	0007dc63          	bge	a5,zero,1c690 <__muldf3+0x1b4>
   1c67c:	fff00793          	addi	a5,zero,-1
   1c680:	03879793          	slli	a5,a5,0x38
   1c684:	fff78793          	addi	a5,a5,-1
   1c688:	00f47433          	and	s0,s0,a5
   1c68c:	40080513          	addi	a0,a6,1024
   1c690:	7fe00793          	addi	a5,zero,2046
   1c694:	1aa7c663          	blt	a5,a0,1c840 <__muldf3+0x364>
   1c698:	00345793          	srli	a5,s0,0x3
   1c69c:	03813083          	ld	ra,56(sp)
   1c6a0:	03013403          	ld	s0,48(sp)
   1c6a4:	00c79793          	slli	a5,a5,0xc
   1c6a8:	03451513          	slli	a0,a0,0x34
   1c6ac:	00c7d793          	srli	a5,a5,0xc
   1c6b0:	03f99993          	slli	s3,s3,0x3f
   1c6b4:	00f56533          	or	a0,a0,a5
   1c6b8:	02813483          	ld	s1,40(sp)
   1c6bc:	02013903          	ld	s2,32(sp)
   1c6c0:	01013a03          	ld	s4,16(sp)
   1c6c4:	00813a83          	ld	s5,8(sp)
   1c6c8:	01356533          	or	a0,a0,s3
   1c6cc:	01813983          	ld	s3,24(sp)
   1c6d0:	04010113          	addi	sp,sp,64
   1c6d4:	00008067          	jalr	zero,0(ra)
   1c6d8:	02048c63          	beq	s1,zero,1c710 <__muldf3+0x234>
   1c6dc:	00048513          	addi	a0,s1,0
   1c6e0:	335010ef          	jal	ra,1e214 <__clzdi2>
   1c6e4:	0005079b          	addiw	a5,a0,0
   1c6e8:	c0d00913          	addi	s2,zero,-1011
   1c6ec:	ff85051b          	addiw	a0,a0,-8
   1c6f0:	00a494b3          	sll	s1,s1,a0
   1c6f4:	40f90933          	sub	s2,s2,a5
   1c6f8:	e3dff06f          	jal	zero,1c534 <__muldf3+0x58>
   1c6fc:	0009091b          	addiw	s2,s2,0
   1c700:	00200a13          	addi	s4,zero,2
   1c704:	e2048ae3          	beq	s1,zero,1c538 <__muldf3+0x5c>
   1c708:	00300a13          	addi	s4,zero,3
   1c70c:	e2dff06f          	jal	zero,1c538 <__muldf3+0x5c>
   1c710:	00000913          	addi	s2,zero,0
   1c714:	00100a13          	addi	s4,zero,1
   1c718:	e21ff06f          	jal	zero,1c538 <__muldf3+0x5c>
   1c71c:	02040c63          	beq	s0,zero,1c754 <__muldf3+0x278>
   1c720:	00040513          	addi	a0,s0,0
   1c724:	2f1010ef          	jal	ra,1e214 <__clzdi2>
   1c728:	0005071b          	addiw	a4,a0,0
   1c72c:	c0d00793          	addi	a5,zero,-1011
   1c730:	ff85051b          	addiw	a0,a0,-8
   1c734:	00a41433          	sll	s0,s0,a0
   1c738:	40e787b3          	sub	a5,a5,a4
   1c73c:	e31ff06f          	jal	zero,1c56c <__muldf3+0x90>
   1c740:	0007879b          	addiw	a5,a5,0
   1c744:	00200693          	addi	a3,zero,2
   1c748:	e20404e3          	beq	s0,zero,1c570 <__muldf3+0x94>
   1c74c:	00300693          	addi	a3,zero,3
   1c750:	e21ff06f          	jal	zero,1c570 <__muldf3+0x94>
   1c754:	00000793          	addi	a5,zero,0
   1c758:	00100693          	addi	a3,zero,1
   1c75c:	e15ff06f          	jal	zero,1c570 <__muldf3+0x94>
   1c760:	00e79733          	sll	a4,a5,a4
   1c764:	53077613          	andi	a2,a4,1328
   1c768:	04061663          	bne	a2,zero,1c7b4 <__muldf3+0x2d8>
   1c76c:	24077613          	andi	a2,a4,576
   1c770:	0c061063          	bne	a2,zero,1c830 <__muldf3+0x354>
   1c774:	08877713          	andi	a4,a4,136
   1c778:	e20704e3          	beq	a4,zero,1c5a0 <__muldf3+0xc4>
   1c77c:	000a8993          	addi	s3,s5,0
   1c780:	00200793          	addi	a5,zero,2
   1c784:	0af68e63          	beq	a3,a5,1c840 <__muldf3+0x364>
   1c788:	00300713          	addi	a4,zero,3
   1c78c:	00100793          	addi	a5,zero,1
   1c790:	0ae68063          	beq	a3,a4,1c830 <__muldf3+0x354>
   1c794:	ecf690e3          	bne	a3,a5,1c654 <__muldf3+0x178>
   1c798:	00000793          	addi	a5,zero,0
   1c79c:	00000513          	addi	a0,zero,0
   1c7a0:	efdff06f          	jal	zero,1c69c <__muldf3+0x1c0>
   1c7a4:	00f00793          	addi	a5,zero,15
   1c7a8:	08f70263          	beq	a4,a5,1c82c <__muldf3+0x350>
   1c7ac:	00b00793          	addi	a5,zero,11
   1c7b0:	fcf706e3          	beq	a4,a5,1c77c <__muldf3+0x2a0>
   1c7b4:	00048413          	addi	s0,s1,0
   1c7b8:	000a0693          	addi	a3,s4,0
   1c7bc:	fc5ff06f          	jal	zero,1c780 <__muldf3+0x2a4>
   1c7c0:	00090813          	addi	a6,s2,0
   1c7c4:	e91ff06f          	jal	zero,1c654 <__muldf3+0x178>
   1c7c8:	04050e63          	beq	a0,zero,1c824 <__muldf3+0x348>
   1c7cc:	fc900793          	addi	a5,zero,-55
   1c7d0:	fcf544e3          	blt	a0,a5,1c798 <__muldf3+0x2bc>
   1c7d4:	00100713          	addi	a4,zero,1
   1c7d8:	40a70733          	sub	a4,a4,a0
   1c7dc:	04000693          	addi	a3,zero,64
   1c7e0:	00e457b3          	srl	a5,s0,a4
   1c7e4:	40e6873b          	subw	a4,a3,a4
   1c7e8:	00e41433          	sll	s0,s0,a4
   1c7ec:	00803433          	sltu	s0,zero,s0
   1c7f0:	0087e7b3          	or	a5,a5,s0
   1c7f4:	0077f713          	andi	a4,a5,7
   1c7f8:	00070a63          	beq	a4,zero,1c80c <__muldf3+0x330>
   1c7fc:	00f7f713          	andi	a4,a5,15
   1c800:	00400693          	addi	a3,zero,4
   1c804:	00d70463          	beq	a4,a3,1c80c <__muldf3+0x330>
   1c808:	00d787b3          	add	a5,a5,a3
   1c80c:	00879713          	slli	a4,a5,0x8
   1c810:	0037d793          	srli	a5,a5,0x3
   1c814:	f80754e3          	bge	a4,zero,1c79c <__muldf3+0x2c0>
   1c818:	00000793          	addi	a5,zero,0
   1c81c:	00100513          	addi	a0,zero,1
   1c820:	e7dff06f          	jal	zero,1c69c <__muldf3+0x1c0>
   1c824:	00100713          	addi	a4,zero,1
   1c828:	fb5ff06f          	jal	zero,1c7dc <__muldf3+0x300>
   1c82c:	00100793          	addi	a5,zero,1
   1c830:	03379793          	slli	a5,a5,0x33
   1c834:	7ff00513          	addi	a0,zero,2047
   1c838:	00000993          	addi	s3,zero,0
   1c83c:	e61ff06f          	jal	zero,1c69c <__muldf3+0x1c0>
   1c840:	00000793          	addi	a5,zero,0
   1c844:	7ff00513          	addi	a0,zero,2047
   1c848:	e55ff06f          	jal	zero,1c69c <__muldf3+0x1c0>

000000000001c84c <__subdf3>:
   1c84c:	0345d613          	srli	a2,a1,0x34
   1c850:	fff00713          	addi	a4,zero,-1
   1c854:	fe010113          	addi	sp,sp,-32
   1c858:	00c75713          	srli	a4,a4,0xc
   1c85c:	7ff67613          	andi	a2,a2,2047
   1c860:	00a777b3          	and	a5,a4,a0
   1c864:	00b776b3          	and	a3,a4,a1
   1c868:	00813823          	sd	s0,16(sp)
   1c86c:	00913423          	sd	s1,8(sp)
   1c870:	03455413          	srli	s0,a0,0x34
   1c874:	03f55493          	srli	s1,a0,0x3f
   1c878:	80160513          	addi	a0,a2,-2047
   1c87c:	00369713          	slli	a4,a3,0x3
   1c880:	00a03533          	sltu	a0,zero,a0
   1c884:	0016b693          	sltiu	a3,a3,1
   1c888:	00d566b3          	or	a3,a0,a3
   1c88c:	03f5d593          	srli	a1,a1,0x3f
   1c890:	7ff47413          	andi	s0,s0,2047
   1c894:	00d5c5b3          	xor	a1,a1,a3
   1c898:	00113c23          	sd	ra,24(sp)
   1c89c:	01213023          	sd	s2,0(sp)
   1c8a0:	00379793          	slli	a5,a5,0x3
   1c8a4:	40c406bb          	subw	a3,s0,a2
   1c8a8:	1e959663          	bne	a1,s1,1ca94 <__subdf3+0x248>
   1c8ac:	08d05e63          	bge	zero,a3,1c948 <__subdf3+0xfc>
   1c8b0:	04061c63          	bne	a2,zero,1c908 <__subdf3+0xbc>
   1c8b4:	04070663          	beq	a4,zero,1c900 <__subdf3+0xb4>
   1c8b8:	fff6869b          	addiw	a3,a3,-1
   1c8bc:	02069e63          	bne	a3,zero,1c8f8 <__subdf3+0xac>
   1c8c0:	00e787b3          	add	a5,a5,a4
   1c8c4:	00879713          	slli	a4,a5,0x8
   1c8c8:	18075463          	bge	a4,zero,1ca50 <__subdf3+0x204>
   1c8cc:	00140413          	addi	s0,s0,1
   1c8d0:	7ff00713          	addi	a4,zero,2047
   1c8d4:	3ce40463          	beq	s0,a4,1cc9c <__subdf3+0x450>
   1c8d8:	1ff00713          	addi	a4,zero,511
   1c8dc:	03671713          	slli	a4,a4,0x36
   1c8e0:	0017d693          	srli	a3,a5,0x1
   1c8e4:	fff70713          	addi	a4,a4,-1
   1c8e8:	00e6f733          	and	a4,a3,a4
   1c8ec:	0017f793          	andi	a5,a5,1
   1c8f0:	00f767b3          	or	a5,a4,a5
   1c8f4:	15c0006f          	jal	zero,1ca50 <__subdf3+0x204>
   1c8f8:	7ff00613          	addi	a2,zero,2047
   1c8fc:	02c41063          	bne	s0,a2,1c91c <__subdf3+0xd0>
   1c900:	00078713          	addi	a4,a5,0
   1c904:	3780006f          	jal	zero,1cc7c <__subdf3+0x430>
   1c908:	7ff00613          	addi	a2,zero,2047
   1c90c:	fec40ae3          	beq	s0,a2,1c900 <__subdf3+0xb4>
   1c910:	00100613          	addi	a2,zero,1
   1c914:	03761613          	slli	a2,a2,0x37
   1c918:	00c76733          	or	a4,a4,a2
   1c91c:	03800593          	addi	a1,zero,56
   1c920:	00100613          	addi	a2,zero,1
   1c924:	00d5ce63          	blt	a1,a3,1c940 <__subdf3+0xf4>
   1c928:	04000613          	addi	a2,zero,64
   1c92c:	00d755b3          	srl	a1,a4,a3
   1c930:	40d606bb          	subw	a3,a2,a3
   1c934:	00d71733          	sll	a4,a4,a3
   1c938:	00e03733          	sltu	a4,zero,a4
   1c93c:	00e5e633          	or	a2,a1,a4
   1c940:	00c787b3          	add	a5,a5,a2
   1c944:	f81ff06f          	jal	zero,1c8c4 <__subdf3+0x78>
   1c948:	06068a63          	beq	a3,zero,1c9bc <__subdf3+0x170>
   1c94c:	02041663          	bne	s0,zero,1c978 <__subdf3+0x12c>
   1c950:	32078463          	beq	a5,zero,1cc78 <__subdf3+0x42c>
   1c954:	fff6c693          	xori	a3,a3,-1
   1c958:	00069863          	bne	a3,zero,1c968 <__subdf3+0x11c>
   1c95c:	00e787b3          	add	a5,a5,a4
   1c960:	00060413          	addi	s0,a2,0
   1c964:	f61ff06f          	jal	zero,1c8c4 <__subdf3+0x78>
   1c968:	7ff00593          	addi	a1,zero,2047
   1c96c:	02b61263          	bne	a2,a1,1c990 <__subdf3+0x144>
   1c970:	7ff00413          	addi	s0,zero,2047
   1c974:	3080006f          	jal	zero,1cc7c <__subdf3+0x430>
   1c978:	7ff00593          	addi	a1,zero,2047
   1c97c:	feb60ae3          	beq	a2,a1,1c970 <__subdf3+0x124>
   1c980:	00100593          	addi	a1,zero,1
   1c984:	03759593          	slli	a1,a1,0x37
   1c988:	40d006bb          	subw	a3,zero,a3
   1c98c:	00b7e7b3          	or	a5,a5,a1
   1c990:	03800513          	addi	a0,zero,56
   1c994:	00100593          	addi	a1,zero,1
   1c998:	00d54e63          	blt	a0,a3,1c9b4 <__subdf3+0x168>
   1c99c:	04000593          	addi	a1,zero,64
   1c9a0:	00d7d533          	srl	a0,a5,a3
   1c9a4:	40d586bb          	subw	a3,a1,a3
   1c9a8:	00d797b3          	sll	a5,a5,a3
   1c9ac:	00f037b3          	sltu	a5,zero,a5
   1c9b0:	00f565b3          	or	a1,a0,a5
   1c9b4:	00e587b3          	add	a5,a1,a4
   1c9b8:	fa9ff06f          	jal	zero,1c960 <__subdf3+0x114>
   1c9bc:	00140693          	addi	a3,s0,1
   1c9c0:	7fe6f613          	andi	a2,a3,2046
   1c9c4:	06061c63          	bne	a2,zero,1ca3c <__subdf3+0x1f0>
   1c9c8:	06041263          	bne	s0,zero,1ca2c <__subdf3+0x1e0>
   1c9cc:	2a078263          	beq	a5,zero,1cc70 <__subdf3+0x424>
   1c9d0:	08070c63          	beq	a4,zero,1ca68 <__subdf3+0x21c>
   1c9d4:	00f70733          	add	a4,a4,a5
   1c9d8:	00871793          	slli	a5,a4,0x8
   1c9dc:	2a07d063          	bge	a5,zero,1cc7c <__subdf3+0x430>
   1c9e0:	1ff00793          	addi	a5,zero,511
   1c9e4:	03479793          	slli	a5,a5,0x34
   1c9e8:	00375713          	srli	a4,a4,0x3
   1c9ec:	fff78793          	addi	a5,a5,-1
   1c9f0:	00f777b3          	and	a5,a4,a5
   1c9f4:	00100413          	addi	s0,zero,1
   1c9f8:	7ff47413          	andi	s0,s0,2047
   1c9fc:	00c79793          	slli	a5,a5,0xc
   1ca00:	03441413          	slli	s0,s0,0x34
   1ca04:	00c7d793          	srli	a5,a5,0xc
   1ca08:	00f46433          	or	s0,s0,a5
   1ca0c:	03f49513          	slli	a0,s1,0x3f
   1ca10:	01813083          	ld	ra,24(sp)
   1ca14:	00a46533          	or	a0,s0,a0
   1ca18:	01013403          	ld	s0,16(sp)
   1ca1c:	00813483          	ld	s1,8(sp)
   1ca20:	00013903          	ld	s2,0(sp)
   1ca24:	02010113          	addi	sp,sp,32
   1ca28:	00008067          	jalr	zero,0(ra)
   1ca2c:	f40782e3          	beq	a5,zero,1c970 <__subdf3+0x124>
   1ca30:	1a071c63          	bne	a4,zero,1cbe8 <__subdf3+0x39c>
   1ca34:	00078713          	addi	a4,a5,0
   1ca38:	f39ff06f          	jal	zero,1c970 <__subdf3+0x124>
   1ca3c:	7ff00613          	addi	a2,zero,2047
   1ca40:	24c68c63          	beq	a3,a2,1cc98 <__subdf3+0x44c>
   1ca44:	00e78733          	add	a4,a5,a4
   1ca48:	00175793          	srli	a5,a4,0x1
   1ca4c:	00068413          	addi	s0,a3,0
   1ca50:	0077f713          	andi	a4,a5,7
   1ca54:	00070a63          	beq	a4,zero,1ca68 <__subdf3+0x21c>
   1ca58:	00f7f713          	andi	a4,a5,15
   1ca5c:	00400693          	addi	a3,zero,4
   1ca60:	00d70463          	beq	a4,a3,1ca68 <__subdf3+0x21c>
   1ca64:	00d787b3          	add	a5,a5,a3
   1ca68:	00879713          	slli	a4,a5,0x8
   1ca6c:	e8075ae3          	bge	a4,zero,1c900 <__subdf3+0xb4>
   1ca70:	00140413          	addi	s0,s0,1
   1ca74:	7ff00713          	addi	a4,zero,2047
   1ca78:	22e40263          	beq	s0,a4,1cc9c <__subdf3+0x450>
   1ca7c:	1ff00713          	addi	a4,zero,511
   1ca80:	03471713          	slli	a4,a4,0x34
   1ca84:	0037d793          	srli	a5,a5,0x3
   1ca88:	fff70713          	addi	a4,a4,-1
   1ca8c:	00e7f7b3          	and	a5,a5,a4
   1ca90:	f69ff06f          	jal	zero,1c9f8 <__subdf3+0x1ac>
   1ca94:	06d05c63          	bge	zero,a3,1cb0c <__subdf3+0x2c0>
   1ca98:	04061e63          	bne	a2,zero,1caf4 <__subdf3+0x2a8>
   1ca9c:	e60702e3          	beq	a4,zero,1c900 <__subdf3+0xb4>
   1caa0:	fff6869b          	addiw	a3,a3,-1
   1caa4:	00069e63          	bne	a3,zero,1cac0 <__subdf3+0x274>
   1caa8:	40e787b3          	sub	a5,a5,a4
   1caac:	00879713          	slli	a4,a5,0x8
   1cab0:	fa0750e3          	bge	a4,zero,1ca50 <__subdf3+0x204>
   1cab4:	00979913          	slli	s2,a5,0x9
   1cab8:	00995913          	srli	s2,s2,0x9
   1cabc:	1540006f          	jal	zero,1cc10 <__subdf3+0x3c4>
   1cac0:	7ff00613          	addi	a2,zero,2047
   1cac4:	e2c40ee3          	beq	s0,a2,1c900 <__subdf3+0xb4>
   1cac8:	03800593          	addi	a1,zero,56
   1cacc:	00100613          	addi	a2,zero,1
   1cad0:	00d5ce63          	blt	a1,a3,1caec <__subdf3+0x2a0>
   1cad4:	04000613          	addi	a2,zero,64
   1cad8:	00d755b3          	srl	a1,a4,a3
   1cadc:	40d606bb          	subw	a3,a2,a3
   1cae0:	00d71733          	sll	a4,a4,a3
   1cae4:	00e03733          	sltu	a4,zero,a4
   1cae8:	00e5e633          	or	a2,a1,a4
   1caec:	40c787b3          	sub	a5,a5,a2
   1caf0:	fbdff06f          	jal	zero,1caac <__subdf3+0x260>
   1caf4:	7ff00613          	addi	a2,zero,2047
   1caf8:	e0c404e3          	beq	s0,a2,1c900 <__subdf3+0xb4>
   1cafc:	00100613          	addi	a2,zero,1
   1cb00:	03761613          	slli	a2,a2,0x37
   1cb04:	00c76733          	or	a4,a4,a2
   1cb08:	fc1ff06f          	jal	zero,1cac8 <__subdf3+0x27c>
   1cb0c:	00068513          	addi	a0,a3,0
   1cb10:	06068c63          	beq	a3,zero,1cb88 <__subdf3+0x33c>
   1cb14:	02041863          	bne	s0,zero,1cb44 <__subdf3+0x2f8>
   1cb18:	02078263          	beq	a5,zero,1cb3c <__subdf3+0x2f0>
   1cb1c:	fff6c693          	xori	a3,a3,-1
   1cb20:	00069a63          	bne	a3,zero,1cb34 <__subdf3+0x2e8>
   1cb24:	40f707b3          	sub	a5,a4,a5
   1cb28:	00060413          	addi	s0,a2,0
   1cb2c:	00058493          	addi	s1,a1,0
   1cb30:	f7dff06f          	jal	zero,1caac <__subdf3+0x260>
   1cb34:	7ff00513          	addi	a0,zero,2047
   1cb38:	02a61263          	bne	a2,a0,1cb5c <__subdf3+0x310>
   1cb3c:	00060413          	addi	s0,a2,0
   1cb40:	0640006f          	jal	zero,1cba4 <__subdf3+0x358>
   1cb44:	7ff00693          	addi	a3,zero,2047
   1cb48:	fed60ae3          	beq	a2,a3,1cb3c <__subdf3+0x2f0>
   1cb4c:	40a006bb          	subw	a3,zero,a0
   1cb50:	00100513          	addi	a0,zero,1
   1cb54:	03751513          	slli	a0,a0,0x37
   1cb58:	00a7e7b3          	or	a5,a5,a0
   1cb5c:	03800813          	addi	a6,zero,56
   1cb60:	00100513          	addi	a0,zero,1
   1cb64:	00d84e63          	blt	a6,a3,1cb80 <__subdf3+0x334>
   1cb68:	04000513          	addi	a0,zero,64
   1cb6c:	00d7d833          	srl	a6,a5,a3
   1cb70:	40d506bb          	subw	a3,a0,a3
   1cb74:	00d797b3          	sll	a5,a5,a3
   1cb78:	00f037b3          	sltu	a5,zero,a5
   1cb7c:	00f86533          	or	a0,a6,a5
   1cb80:	40a707b3          	sub	a5,a4,a0
   1cb84:	fa5ff06f          	jal	zero,1cb28 <__subdf3+0x2dc>
   1cb88:	00140693          	addi	a3,s0,1
   1cb8c:	7fe6f693          	andi	a3,a3,2046
   1cb90:	06069663          	bne	a3,zero,1cbfc <__subdf3+0x3b0>
   1cb94:	04041863          	bne	s0,zero,1cbe4 <__subdf3+0x398>
   1cb98:	00079a63          	bne	a5,zero,1cbac <__subdf3+0x360>
   1cb9c:	00000493          	addi	s1,zero,0
   1cba0:	e4070ce3          	beq	a4,zero,1c9f8 <__subdf3+0x1ac>
   1cba4:	00058493          	addi	s1,a1,0
   1cba8:	0d40006f          	jal	zero,1cc7c <__subdf3+0x430>
   1cbac:	ea070ee3          	beq	a4,zero,1ca68 <__subdf3+0x21c>
   1cbb0:	40e786b3          	sub	a3,a5,a4
   1cbb4:	00869613          	slli	a2,a3,0x8
   1cbb8:	00065c63          	bge	a2,zero,1cbd0 <__subdf3+0x384>
   1cbbc:	40f707b3          	sub	a5,a4,a5
   1cbc0:	00058493          	addi	s1,a1,0
   1cbc4:	00000413          	addi	s0,zero,0
   1cbc8:	e20788e3          	beq	a5,zero,1c9f8 <__subdf3+0x1ac>
   1cbcc:	e85ff06f          	jal	zero,1ca50 <__subdf3+0x204>
   1cbd0:	00068713          	addi	a4,a3,0
   1cbd4:	0a069463          	bne	a3,zero,1cc7c <__subdf3+0x430>
   1cbd8:	00000793          	addi	a5,zero,0
   1cbdc:	00000493          	addi	s1,zero,0
   1cbe0:	e19ff06f          	jal	zero,1c9f8 <__subdf3+0x1ac>
   1cbe4:	e40796e3          	bne	a5,zero,1ca30 <__subdf3+0x1e4>
   1cbe8:	00100793          	addi	a5,zero,1
   1cbec:	00000493          	addi	s1,zero,0
   1cbf0:	7ff00413          	addi	s0,zero,2047
   1cbf4:	03379793          	slli	a5,a5,0x33
   1cbf8:	e01ff06f          	jal	zero,1c9f8 <__subdf3+0x1ac>
   1cbfc:	40e78933          	sub	s2,a5,a4
   1cc00:	00891693          	slli	a3,s2,0x8
   1cc04:	0406d263          	bge	a3,zero,1cc48 <__subdf3+0x3fc>
   1cc08:	40f70933          	sub	s2,a4,a5
   1cc0c:	00058493          	addi	s1,a1,0
   1cc10:	00090513          	addi	a0,s2,0
   1cc14:	600010ef          	jal	ra,1e214 <__clzdi2>
   1cc18:	ff85051b          	addiw	a0,a0,-8
   1cc1c:	00a91933          	sll	s2,s2,a0
   1cc20:	02854c63          	blt	a0,s0,1cc58 <__subdf3+0x40c>
   1cc24:	4085053b          	subw	a0,a0,s0
   1cc28:	0015051b          	addiw	a0,a0,1
   1cc2c:	04000713          	addi	a4,zero,64
   1cc30:	40a7073b          	subw	a4,a4,a0
   1cc34:	00a957b3          	srl	a5,s2,a0
   1cc38:	00e91933          	sll	s2,s2,a4
   1cc3c:	01203933          	sltu	s2,zero,s2
   1cc40:	0127e7b3          	or	a5,a5,s2
   1cc44:	f81ff06f          	jal	zero,1cbc4 <__subdf3+0x378>
   1cc48:	fc0914e3          	bne	s2,zero,1cc10 <__subdf3+0x3c4>
   1cc4c:	00000793          	addi	a5,zero,0
   1cc50:	00000413          	addi	s0,zero,0
   1cc54:	f89ff06f          	jal	zero,1cbdc <__subdf3+0x390>
   1cc58:	fff00793          	addi	a5,zero,-1
   1cc5c:	03779793          	slli	a5,a5,0x37
   1cc60:	fff78793          	addi	a5,a5,-1
   1cc64:	40a40433          	sub	s0,s0,a0
   1cc68:	00f977b3          	and	a5,s2,a5
   1cc6c:	de5ff06f          	jal	zero,1ca50 <__subdf3+0x204>
   1cc70:	00070793          	addi	a5,a4,0
   1cc74:	f51ff06f          	jal	zero,1cbc4 <__subdf3+0x378>
   1cc78:	00060413          	addi	s0,a2,0
   1cc7c:	00375793          	srli	a5,a4,0x3
   1cc80:	7ff00713          	addi	a4,zero,2047
   1cc84:	d6e41ae3          	bne	s0,a4,1c9f8 <__subdf3+0x1ac>
   1cc88:	d60788e3          	beq	a5,zero,1c9f8 <__subdf3+0x1ac>
   1cc8c:	00100793          	addi	a5,zero,1
   1cc90:	03379793          	slli	a5,a5,0x33
   1cc94:	f49ff06f          	jal	zero,1cbdc <__subdf3+0x390>
   1cc98:	00068413          	addi	s0,a3,0
   1cc9c:	00000793          	addi	a5,zero,0
   1cca0:	d59ff06f          	jal	zero,1c9f8 <__subdf3+0x1ac>

000000000001cca4 <__fixdfsi>:
   1cca4:	03455693          	srli	a3,a0,0x34
   1cca8:	00c51793          	slli	a5,a0,0xc
   1ccac:	7ff6f693          	andi	a3,a3,2047
   1ccb0:	3fe00613          	addi	a2,zero,1022
   1ccb4:	00c7d793          	srli	a5,a5,0xc
   1ccb8:	03f55713          	srli	a4,a0,0x3f
   1ccbc:	04d65263          	bge	a2,a3,1cd00 <__fixdfsi+0x5c>
   1ccc0:	41d00613          	addi	a2,zero,1053
   1ccc4:	00d65a63          	bge	a2,a3,1ccd8 <__fixdfsi+0x34>
   1ccc8:	80000537          	lui	a0,0x80000
   1cccc:	fff54513          	xori	a0,a0,-1
   1ccd0:	00a7053b          	addw	a0,a4,a0
   1ccd4:	00008067          	jalr	zero,0(ra)
   1ccd8:	00100613          	addi	a2,zero,1
   1ccdc:	03461613          	slli	a2,a2,0x34
   1cce0:	00c7e533          	or	a0,a5,a2
   1cce4:	43300793          	addi	a5,zero,1075
   1cce8:	40d787bb          	subw	a5,a5,a3
   1ccec:	00f55533          	srl	a0,a0,a5
   1ccf0:	0005051b          	addiw	a0,a0,0 # ffffffff80000000 <__BSS_END__+0xffffffff7ffdf3b8>
   1ccf4:	00070863          	beq	a4,zero,1cd04 <__fixdfsi+0x60>
   1ccf8:	40a0053b          	subw	a0,zero,a0
   1ccfc:	00008067          	jalr	zero,0(ra)
   1cd00:	00000513          	addi	a0,zero,0
   1cd04:	00008067          	jalr	zero,0(ra)

000000000001cd08 <__floatsidf>:
   1cd08:	fe010113          	addi	sp,sp,-32
   1cd0c:	00113c23          	sd	ra,24(sp)
   1cd10:	00813823          	sd	s0,16(sp)
   1cd14:	00913423          	sd	s1,8(sp)
   1cd18:	06050063          	beq	a0,zero,1cd78 <__floatsidf+0x70>
   1cd1c:	41f5579b          	sraiw	a5,a0,0x1f
   1cd20:	00f54433          	xor	s0,a0,a5
   1cd24:	40f4043b          	subw	s0,s0,a5
   1cd28:	02041413          	slli	s0,s0,0x20
   1cd2c:	02045413          	srli	s0,s0,0x20
   1cd30:	01f5549b          	srliw	s1,a0,0x1f
   1cd34:	00040513          	addi	a0,s0,0
   1cd38:	4dc010ef          	jal	ra,1e214 <__clzdi2>
   1cd3c:	43e00793          	addi	a5,zero,1086
   1cd40:	40a787bb          	subw	a5,a5,a0
   1cd44:	ff55051b          	addiw	a0,a0,-11
   1cd48:	00a41433          	sll	s0,s0,a0
   1cd4c:	00c41413          	slli	s0,s0,0xc
   1cd50:	00c45413          	srli	s0,s0,0xc
   1cd54:	03479793          	slli	a5,a5,0x34
   1cd58:	01813083          	ld	ra,24(sp)
   1cd5c:	0087e7b3          	or	a5,a5,s0
   1cd60:	01013403          	ld	s0,16(sp)
   1cd64:	03f49513          	slli	a0,s1,0x3f
   1cd68:	00a7e533          	or	a0,a5,a0
   1cd6c:	00813483          	ld	s1,8(sp)
   1cd70:	02010113          	addi	sp,sp,32
   1cd74:	00008067          	jalr	zero,0(ra)
   1cd78:	00000493          	addi	s1,zero,0
   1cd7c:	00000413          	addi	s0,zero,0
   1cd80:	00000793          	addi	a5,zero,0
   1cd84:	fc9ff06f          	jal	zero,1cd4c <__floatsidf+0x44>

000000000001cd88 <__eqtf2>:
   1cd88:	000088b7          	lui	a7,0x8
   1cd8c:	0305d813          	srli	a6,a1,0x30
   1cd90:	fff88893          	addi	a7,a7,-1 # 7fff <exit-0x8121>
   1cd94:	fff00713          	addi	a4,zero,-1
   1cd98:	01075713          	srli	a4,a4,0x10
   1cd9c:	0306d793          	srli	a5,a3,0x30
   1cda0:	01187833          	and	a6,a6,a7
   1cda4:	00e5f333          	and	t1,a1,a4
   1cda8:	00050e13          	addi	t3,a0,0
   1cdac:	00e6f733          	and	a4,a3,a4
   1cdb0:	03f5d593          	srli	a1,a1,0x3f
   1cdb4:	0117f7b3          	and	a5,a5,a7
   1cdb8:	03f6d693          	srli	a3,a3,0x3f
   1cdbc:	01181e63          	bne	a6,a7,1cdd8 <__eqtf2+0x50>
   1cdc0:	006568b3          	or	a7,a0,t1
   1cdc4:	00100513          	addi	a0,zero,1
   1cdc8:	04089c63          	bne	a7,zero,1ce20 <__eqtf2+0x98>
   1cdcc:	01078863          	beq	a5,a6,1cddc <__eqtf2+0x54>
   1cdd0:	00100793          	addi	a5,zero,1
   1cdd4:	0440006f          	jal	zero,1ce18 <__eqtf2+0x90>
   1cdd8:	01179863          	bne	a5,a7,1cde8 <__eqtf2+0x60>
   1cddc:	00c768b3          	or	a7,a4,a2
   1cde0:	00100513          	addi	a0,zero,1
   1cde4:	02089e63          	bne	a7,zero,1ce20 <__eqtf2+0x98>
   1cde8:	40f807b3          	sub	a5,a6,a5
   1cdec:	40ce0633          	sub	a2,t3,a2
   1cdf0:	00f037b3          	sltu	a5,zero,a5
   1cdf4:	00c03633          	sltu	a2,zero,a2
   1cdf8:	00c7e7b3          	or	a5,a5,a2
   1cdfc:	fc079ae3          	bne	a5,zero,1cdd0 <__eqtf2+0x48>
   1ce00:	fce318e3          	bne	t1,a4,1cdd0 <__eqtf2+0x48>
   1ce04:	00d58a63          	beq	a1,a3,1ce18 <__eqtf2+0x90>
   1ce08:	00100793          	addi	a5,zero,1
   1ce0c:	00081663          	bne	a6,zero,1ce18 <__eqtf2+0x90>
   1ce10:	006e6333          	or	t1,t3,t1
   1ce14:	006037b3          	sltu	a5,zero,t1
   1ce18:	00078513          	addi	a0,a5,0
   1ce1c:	00008067          	jalr	zero,0(ra)
   1ce20:	00008067          	jalr	zero,0(ra)

000000000001ce24 <__getf2>:
   1ce24:	000087b7          	lui	a5,0x8
   1ce28:	0305d813          	srli	a6,a1,0x30
   1ce2c:	fff78793          	addi	a5,a5,-1 # 7fff <exit-0x8121>
   1ce30:	fff00313          	addi	t1,zero,-1
   1ce34:	01035313          	srli	t1,t1,0x10
   1ce38:	0306d713          	srli	a4,a3,0x30
   1ce3c:	00f87833          	and	a6,a6,a5
   1ce40:	0065f8b3          	and	a7,a1,t1
   1ce44:	00f77733          	and	a4,a4,a5
   1ce48:	03f5d593          	srli	a1,a1,0x3f
   1ce4c:	03f6de13          	srli	t3,a3,0x3f
   1ce50:	02f80463          	beq	a6,a5,1ce78 <__getf2+0x54>
   1ce54:	0066f6b3          	and	a3,a3,t1
   1ce58:	00008337          	lui	t1,0x8
   1ce5c:	fff30313          	addi	t1,t1,-1 # 7fff <exit-0x8121>
   1ce60:	00070793          	addi	a5,a4,0
   1ce64:	02671463          	bne	a4,t1,1ce8c <__getf2+0x68>
   1ce68:	00c6e333          	or	t1,a3,a2
   1ce6c:	02030063          	beq	t1,zero,1ce8c <__getf2+0x68>
   1ce70:	ffe00793          	addi	a5,zero,-2
   1ce74:	0100006f          	jal	zero,1ce84 <__getf2+0x60>
   1ce78:	00a8eeb3          	or	t4,a7,a0
   1ce7c:	ffe00793          	addi	a5,zero,-2
   1ce80:	fc0e8ae3          	beq	t4,zero,1ce54 <__getf2+0x30>
   1ce84:	00078513          	addi	a0,a5,0
   1ce88:	00008067          	jalr	zero,0(ra)
   1ce8c:	00000313          	addi	t1,zero,0
   1ce90:	00081663          	bne	a6,zero,1ce9c <__getf2+0x78>
   1ce94:	00a8e333          	or	t1,a7,a0
   1ce98:	00133313          	sltiu	t1,t1,1
   1ce9c:	04071c63          	bne	a4,zero,1cef4 <__getf2+0xd0>
   1cea0:	00c6eeb3          	or	t4,a3,a2
   1cea4:	00030c63          	beq	t1,zero,1cebc <__getf2+0x98>
   1cea8:	fc0e8ee3          	beq	t4,zero,1ce84 <__getf2+0x60>
   1ceac:	00100793          	addi	a5,zero,1
   1ceb0:	fc0e1ae3          	bne	t3,zero,1ce84 <__getf2+0x60>
   1ceb4:	fff00793          	addi	a5,zero,-1
   1ceb8:	fcdff06f          	jal	zero,1ce84 <__getf2+0x60>
   1cebc:	020e9e63          	bne	t4,zero,1cef8 <__getf2+0xd4>
   1cec0:	fff00793          	addi	a5,zero,-1
   1cec4:	04058263          	beq	a1,zero,1cf08 <__getf2+0xe4>
   1cec8:	fbdff06f          	jal	zero,1ce84 <__getf2+0x60>
   1cecc:	fee840e3          	blt	a6,a4,1ceac <__getf2+0x88>
   1ced0:	ff16e8e3          	bltu	a3,a7,1cec0 <__getf2+0x9c>
   1ced4:	00a67463          	bgeu	a2,a0,1cedc <__getf2+0xb8>
   1ced8:	fed884e3          	beq	a7,a3,1cec0 <__getf2+0x9c>
   1cedc:	00c56663          	bltu	a0,a2,1cee8 <__getf2+0xc4>
   1cee0:	00000793          	addi	a5,zero,0
   1cee4:	fad8f0e3          	bgeu	a7,a3,1ce84 <__getf2+0x60>
   1cee8:	00100793          	addi	a5,zero,1
   1ceec:	f8059ce3          	bne	a1,zero,1ce84 <__getf2+0x60>
   1cef0:	fc5ff06f          	jal	zero,1ceb4 <__getf2+0x90>
   1cef4:	fa031ce3          	bne	t1,zero,1ceac <__getf2+0x88>
   1cef8:	fcbe14e3          	bne	t3,a1,1cec0 <__getf2+0x9c>
   1cefc:	fd0758e3          	bge	a4,a6,1cecc <__getf2+0xa8>
   1cf00:	fff00793          	addi	a5,zero,-1
   1cf04:	f80e10e3          	bne	t3,zero,1ce84 <__getf2+0x60>
   1cf08:	00100793          	addi	a5,zero,1
   1cf0c:	f79ff06f          	jal	zero,1ce84 <__getf2+0x60>

000000000001cf10 <__letf2>:
   1cf10:	000087b7          	lui	a5,0x8
   1cf14:	0305d813          	srli	a6,a1,0x30
   1cf18:	fff78793          	addi	a5,a5,-1 # 7fff <exit-0x8121>
   1cf1c:	fff00313          	addi	t1,zero,-1
   1cf20:	01035313          	srli	t1,t1,0x10
   1cf24:	0306d713          	srli	a4,a3,0x30
   1cf28:	00f87833          	and	a6,a6,a5
   1cf2c:	0065f8b3          	and	a7,a1,t1
   1cf30:	00f77733          	and	a4,a4,a5
   1cf34:	03f5d593          	srli	a1,a1,0x3f
   1cf38:	03f6de13          	srli	t3,a3,0x3f
   1cf3c:	02f80463          	beq	a6,a5,1cf64 <__letf2+0x54>
   1cf40:	0066f6b3          	and	a3,a3,t1
   1cf44:	00008337          	lui	t1,0x8
   1cf48:	fff30313          	addi	t1,t1,-1 # 7fff <exit-0x8121>
   1cf4c:	00070793          	addi	a5,a4,0
   1cf50:	02671463          	bne	a4,t1,1cf78 <__letf2+0x68>
   1cf54:	00c6e333          	or	t1,a3,a2
   1cf58:	02030063          	beq	t1,zero,1cf78 <__letf2+0x68>
   1cf5c:	00200793          	addi	a5,zero,2
   1cf60:	0100006f          	jal	zero,1cf70 <__letf2+0x60>
   1cf64:	00a8eeb3          	or	t4,a7,a0
   1cf68:	00200793          	addi	a5,zero,2
   1cf6c:	fc0e8ae3          	beq	t4,zero,1cf40 <__letf2+0x30>
   1cf70:	00078513          	addi	a0,a5,0
   1cf74:	00008067          	jalr	zero,0(ra)
   1cf78:	00000313          	addi	t1,zero,0
   1cf7c:	00081663          	bne	a6,zero,1cf88 <__letf2+0x78>
   1cf80:	00a8e333          	or	t1,a7,a0
   1cf84:	00133313          	sltiu	t1,t1,1
   1cf88:	04071c63          	bne	a4,zero,1cfe0 <__letf2+0xd0>
   1cf8c:	00c6eeb3          	or	t4,a3,a2
   1cf90:	00030c63          	beq	t1,zero,1cfa8 <__letf2+0x98>
   1cf94:	fc0e8ee3          	beq	t4,zero,1cf70 <__letf2+0x60>
   1cf98:	00100793          	addi	a5,zero,1
   1cf9c:	fc0e1ae3          	bne	t3,zero,1cf70 <__letf2+0x60>
   1cfa0:	fff00793          	addi	a5,zero,-1
   1cfa4:	fcdff06f          	jal	zero,1cf70 <__letf2+0x60>
   1cfa8:	020e9e63          	bne	t4,zero,1cfe4 <__letf2+0xd4>
   1cfac:	fff00793          	addi	a5,zero,-1
   1cfb0:	04058263          	beq	a1,zero,1cff4 <__letf2+0xe4>
   1cfb4:	fbdff06f          	jal	zero,1cf70 <__letf2+0x60>
   1cfb8:	fee840e3          	blt	a6,a4,1cf98 <__letf2+0x88>
   1cfbc:	ff16e8e3          	bltu	a3,a7,1cfac <__letf2+0x9c>
   1cfc0:	00a67463          	bgeu	a2,a0,1cfc8 <__letf2+0xb8>
   1cfc4:	fed884e3          	beq	a7,a3,1cfac <__letf2+0x9c>
   1cfc8:	00c56663          	bltu	a0,a2,1cfd4 <__letf2+0xc4>
   1cfcc:	00000793          	addi	a5,zero,0
   1cfd0:	fad8f0e3          	bgeu	a7,a3,1cf70 <__letf2+0x60>
   1cfd4:	00100793          	addi	a5,zero,1
   1cfd8:	f8059ce3          	bne	a1,zero,1cf70 <__letf2+0x60>
   1cfdc:	fc5ff06f          	jal	zero,1cfa0 <__letf2+0x90>
   1cfe0:	fa031ce3          	bne	t1,zero,1cf98 <__letf2+0x88>
   1cfe4:	fcbe14e3          	bne	t3,a1,1cfac <__letf2+0x9c>
   1cfe8:	fd0758e3          	bge	a4,a6,1cfb8 <__letf2+0xa8>
   1cfec:	fff00793          	addi	a5,zero,-1
   1cff0:	f80e10e3          	bne	t3,zero,1cf70 <__letf2+0x60>
   1cff4:	00100793          	addi	a5,zero,1
   1cff8:	f79ff06f          	jal	zero,1cf70 <__letf2+0x60>

000000000001cffc <__multf3>:
   1cffc:	fb010113          	addi	sp,sp,-80
   1d000:	000087b7          	lui	a5,0x8
   1d004:	03213823          	sd	s2,48(sp)
   1d008:	fff78793          	addi	a5,a5,-1 # 7fff <exit-0x8121>
   1d00c:	0305d913          	srli	s2,a1,0x30
   1d010:	04813023          	sd	s0,64(sp)
   1d014:	02913c23          	sd	s1,56(sp)
   1d018:	03313423          	sd	s3,40(sp)
   1d01c:	03413023          	sd	s4,32(sp)
   1d020:	01713423          	sd	s7,8(sp)
   1d024:	01059493          	slli	s1,a1,0x10
   1d028:	04113423          	sd	ra,72(sp)
   1d02c:	01513c23          	sd	s5,24(sp)
   1d030:	01613823          	sd	s6,16(sp)
   1d034:	00f97933          	and	s2,s2,a5
   1d038:	00050413          	addi	s0,a0,0
   1d03c:	00060b93          	addi	s7,a2,0
   1d040:	00068993          	addi	s3,a3,0
   1d044:	0104d493          	srli	s1,s1,0x10
   1d048:	03f5da13          	srli	s4,a1,0x3f
   1d04c:	0c090e63          	beq	s2,zero,1d128 <__multf3+0x12c>
   1d050:	14f90463          	beq	s2,a5,1d198 <__multf3+0x19c>
   1d054:	00349493          	slli	s1,s1,0x3
   1d058:	03d55793          	srli	a5,a0,0x3d
   1d05c:	0097e7b3          	or	a5,a5,s1
   1d060:	00100493          	addi	s1,zero,1
   1d064:	03349493          	slli	s1,s1,0x33
   1d068:	0097e4b3          	or	s1,a5,s1
   1d06c:	ffffc7b7          	lui	a5,0xffffc
   1d070:	00178793          	addi	a5,a5,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffdb3b9>
   1d074:	00351a93          	slli	s5,a0,0x3
   1d078:	00f90933          	add	s2,s2,a5
   1d07c:	00000b13          	addi	s6,zero,0
   1d080:	00008737          	lui	a4,0x8
   1d084:	0309d793          	srli	a5,s3,0x30
   1d088:	fff70713          	addi	a4,a4,-1 # 7fff <exit-0x8121>
   1d08c:	01099413          	slli	s0,s3,0x10
   1d090:	00e7f7b3          	and	a5,a5,a4
   1d094:	01045413          	srli	s0,s0,0x10
   1d098:	03f9d993          	srli	s3,s3,0x3f
   1d09c:	12078a63          	beq	a5,zero,1d1d0 <__multf3+0x1d4>
   1d0a0:	1ae78263          	beq	a5,a4,1d244 <__multf3+0x248>
   1d0a4:	00341413          	slli	s0,s0,0x3
   1d0a8:	03dbd713          	srli	a4,s7,0x3d
   1d0ac:	00876733          	or	a4,a4,s0
   1d0b0:	00100413          	addi	s0,zero,1
   1d0b4:	03341413          	slli	s0,s0,0x33
   1d0b8:	00876433          	or	s0,a4,s0
   1d0bc:	ffffc737          	lui	a4,0xffffc
   1d0c0:	00170713          	addi	a4,a4,1 # ffffffffffffc001 <__BSS_END__+0xfffffffffffdb3b9>
   1d0c4:	003b9593          	slli	a1,s7,0x3
   1d0c8:	00e787b3          	add	a5,a5,a4
   1d0cc:	00000693          	addi	a3,zero,0
   1d0d0:	002b1713          	slli	a4,s6,0x2
   1d0d4:	01278333          	add	t1,a5,s2
   1d0d8:	00d76733          	or	a4,a4,a3
   1d0dc:	00a00793          	addi	a5,zero,10
   1d0e0:	00130893          	addi	a7,t1,1
   1d0e4:	1ae7ce63          	blt	a5,a4,1d2a0 <__multf3+0x2a4>
   1d0e8:	00200613          	addi	a2,zero,2
   1d0ec:	013a4833          	xor	a6,s4,s3
   1d0f0:	00100793          	addi	a5,zero,1
   1d0f4:	18e64463          	blt	a2,a4,1d27c <__multf3+0x280>
   1d0f8:	fff70713          	addi	a4,a4,-1
   1d0fc:	1ce7e263          	bltu	a5,a4,1d2c0 <__multf3+0x2c4>
   1d100:	00068b13          	addi	s6,a3,0
   1d104:	00200793          	addi	a5,zero,2
   1d108:	5efb0463          	beq	s6,a5,1d6f0 <__multf3+0x6f4>
   1d10c:	00300713          	addi	a4,zero,3
   1d110:	00100793          	addi	a5,zero,1
   1d114:	5ceb0a63          	beq	s6,a4,1d6e8 <__multf3+0x6ec>
   1d118:	42fb1863          	bne	s6,a5,1d548 <__multf3+0x54c>
   1d11c:	00000593          	addi	a1,zero,0
   1d120:	00000513          	addi	a0,zero,0
   1d124:	55c0006f          	jal	zero,1d680 <__multf3+0x684>
   1d128:	00956ab3          	or	s5,a0,s1
   1d12c:	080a8263          	beq	s5,zero,1d1b0 <__multf3+0x1b4>
   1d130:	04048463          	beq	s1,zero,1d178 <__multf3+0x17c>
   1d134:	00048513          	addi	a0,s1,0
   1d138:	0dc010ef          	jal	ra,1e214 <__clzdi2>
   1d13c:	0005051b          	addiw	a0,a0,0
   1d140:	ff150793          	addi	a5,a0,-15
   1d144:	03d00713          	addi	a4,zero,61
   1d148:	0037869b          	addiw	a3,a5,3
   1d14c:	40f707bb          	subw	a5,a4,a5
   1d150:	00d494b3          	sll	s1,s1,a3
   1d154:	00f457b3          	srl	a5,s0,a5
   1d158:	0097e7b3          	or	a5,a5,s1
   1d15c:	00d414b3          	sll	s1,s0,a3
   1d160:	ffffc937          	lui	s2,0xffffc
   1d164:	01190913          	addi	s2,s2,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffdb3c9>
   1d168:	00048a93          	addi	s5,s1,0
   1d16c:	40a90933          	sub	s2,s2,a0
   1d170:	00078493          	addi	s1,a5,0
   1d174:	f09ff06f          	jal	zero,1d07c <__multf3+0x80>
   1d178:	09c010ef          	jal	ra,1e214 <__clzdi2>
   1d17c:	0405051b          	addiw	a0,a0,64
   1d180:	ff150793          	addi	a5,a0,-15
   1d184:	03c00713          	addi	a4,zero,60
   1d188:	faf75ee3          	bge	a4,a5,1d144 <__multf3+0x148>
   1d18c:	fc37879b          	addiw	a5,a5,-61
   1d190:	00f417b3          	sll	a5,s0,a5
   1d194:	fcdff06f          	jal	zero,1d160 <__multf3+0x164>
   1d198:	00956ab3          	or	s5,a0,s1
   1d19c:	020a9263          	bne	s5,zero,1d1c0 <__multf3+0x1c4>
   1d1a0:	00000493          	addi	s1,zero,0
   1d1a4:	0009091b          	addiw	s2,s2,0
   1d1a8:	00200b13          	addi	s6,zero,2
   1d1ac:	ed5ff06f          	jal	zero,1d080 <__multf3+0x84>
   1d1b0:	00000493          	addi	s1,zero,0
   1d1b4:	00000913          	addi	s2,zero,0
   1d1b8:	00100b13          	addi	s6,zero,1
   1d1bc:	ec5ff06f          	jal	zero,1d080 <__multf3+0x84>
   1d1c0:	00050a93          	addi	s5,a0,0
   1d1c4:	0009091b          	addiw	s2,s2,0
   1d1c8:	00300b13          	addi	s6,zero,3
   1d1cc:	eb5ff06f          	jal	zero,1d080 <__multf3+0x84>
   1d1d0:	008be5b3          	or	a1,s7,s0
   1d1d4:	08058463          	beq	a1,zero,1d25c <__multf3+0x260>
   1d1d8:	04040463          	beq	s0,zero,1d220 <__multf3+0x224>
   1d1dc:	00040513          	addi	a0,s0,0
   1d1e0:	034010ef          	jal	ra,1e214 <__clzdi2>
   1d1e4:	0005051b          	addiw	a0,a0,0
   1d1e8:	ff150793          	addi	a5,a0,-15
   1d1ec:	03d00713          	addi	a4,zero,61
   1d1f0:	0037869b          	addiw	a3,a5,3
   1d1f4:	40f707bb          	subw	a5,a4,a5
   1d1f8:	00d41433          	sll	s0,s0,a3
   1d1fc:	00fbd7b3          	srl	a5,s7,a5
   1d200:	0087e733          	or	a4,a5,s0
   1d204:	00db9433          	sll	s0,s7,a3
   1d208:	ffffc7b7          	lui	a5,0xffffc
   1d20c:	01178793          	addi	a5,a5,17 # ffffffffffffc011 <__BSS_END__+0xfffffffffffdb3c9>
   1d210:	00040593          	addi	a1,s0,0
   1d214:	40a787b3          	sub	a5,a5,a0
   1d218:	00070413          	addi	s0,a4,0
   1d21c:	eb1ff06f          	jal	zero,1d0cc <__multf3+0xd0>
   1d220:	000b8513          	addi	a0,s7,0
   1d224:	7f1000ef          	jal	ra,1e214 <__clzdi2>
   1d228:	0405051b          	addiw	a0,a0,64
   1d22c:	ff150793          	addi	a5,a0,-15
   1d230:	03c00713          	addi	a4,zero,60
   1d234:	faf75ce3          	bge	a4,a5,1d1ec <__multf3+0x1f0>
   1d238:	fc37879b          	addiw	a5,a5,-61
   1d23c:	00fb9733          	sll	a4,s7,a5
   1d240:	fc9ff06f          	jal	zero,1d208 <__multf3+0x20c>
   1d244:	008be5b3          	or	a1,s7,s0
   1d248:	02059263          	bne	a1,zero,1d26c <__multf3+0x270>
   1d24c:	00000413          	addi	s0,zero,0
   1d250:	0007879b          	addiw	a5,a5,0
   1d254:	00200693          	addi	a3,zero,2
   1d258:	e79ff06f          	jal	zero,1d0d0 <__multf3+0xd4>
   1d25c:	00000413          	addi	s0,zero,0
   1d260:	00000793          	addi	a5,zero,0
   1d264:	00100693          	addi	a3,zero,1
   1d268:	e69ff06f          	jal	zero,1d0d0 <__multf3+0xd4>
   1d26c:	000b8593          	addi	a1,s7,0
   1d270:	0007879b          	addiw	a5,a5,0
   1d274:	00300693          	addi	a3,zero,3
   1d278:	e59ff06f          	jal	zero,1d0d0 <__multf3+0xd4>
   1d27c:	00e79733          	sll	a4,a5,a4
   1d280:	53077513          	andi	a0,a4,1328
   1d284:	02051863          	bne	a0,zero,1d2b4 <__multf3+0x2b8>
   1d288:	24077613          	andi	a2,a4,576
   1d28c:	42061c63          	bne	a2,zero,1d6c4 <__multf3+0x6c8>
   1d290:	08877713          	andi	a4,a4,136
   1d294:	02070663          	beq	a4,zero,1d2c0 <__multf3+0x2c4>
   1d298:	00098813          	addi	a6,s3,0
   1d29c:	e65ff06f          	jal	zero,1d100 <__multf3+0x104>
   1d2a0:	00f00793          	addi	a5,zero,15
   1d2a4:	42f70a63          	beq	a4,a5,1d6d8 <__multf3+0x6dc>
   1d2a8:	00b00793          	addi	a5,zero,11
   1d2ac:	000a0813          	addi	a6,s4,0
   1d2b0:	fef704e3          	beq	a4,a5,1d298 <__multf3+0x29c>
   1d2b4:	00048413          	addi	s0,s1,0
   1d2b8:	000a8593          	addi	a1,s5,0
   1d2bc:	e49ff06f          	jal	zero,1d104 <__multf3+0x108>
   1d2c0:	02059393          	slli	t2,a1,0x20
   1d2c4:	008587b3          	add	a5,a1,s0
   1d2c8:	01548733          	add	a4,s1,s5
   1d2cc:	020a9513          	slli	a0,s5,0x20
   1d2d0:	0203d393          	srli	t2,t2,0x20
   1d2d4:	00b7b2b3          	sltu	t0,a5,a1
   1d2d8:	0205de13          	srli	t3,a1,0x20
   1d2dc:	00973fb3          	sltu	t6,a4,s1
   1d2e0:	020ad913          	srli	s2,s5,0x20
   1d2e4:	02055513          	srli	a0,a0,0x20
   1d2e8:	00038593          	addi	a1,t2,0
   1d2ec:	605000ef          	jal	ra,1e0f0 <__muldi3>
   1d2f0:	00050f13          	addi	t5,a0,0
   1d2f4:	020a9513          	slli	a0,s5,0x20
   1d2f8:	02055513          	srli	a0,a0,0x20
   1d2fc:	000e0593          	addi	a1,t3,0
   1d300:	5f1000ef          	jal	ra,1e0f0 <__muldi3>
   1d304:	00050e93          	addi	t4,a0,0
   1d308:	00038593          	addi	a1,t2,0
   1d30c:	00090513          	addi	a0,s2,0
   1d310:	5e1000ef          	jal	ra,1e0f0 <__muldi3>
   1d314:	00050393          	addi	t2,a0,0
   1d318:	000e0593          	addi	a1,t3,0
   1d31c:	00090513          	addi	a0,s2,0
   1d320:	5d1000ef          	jal	ra,1e0f0 <__muldi3>
   1d324:	020f5e13          	srli	t3,t5,0x20
   1d328:	007e8eb3          	add	t4,t4,t2
   1d32c:	01de0e33          	add	t3,t3,t4
   1d330:	007e7863          	bgeu	t3,t2,1d340 <__multf3+0x344>
   1d334:	00100693          	addi	a3,zero,1
   1d338:	02069693          	slli	a3,a3,0x20
   1d33c:	00d50533          	add	a0,a0,a3
   1d340:	020e5e93          	srli	t4,t3,0x20
   1d344:	00ae8eb3          	add	t4,t4,a0
   1d348:	020f1513          	slli	a0,t5,0x20
   1d34c:	02055513          	srli	a0,a0,0x20
   1d350:	020e1e13          	slli	t3,t3,0x20
   1d354:	00ae0e33          	add	t3,t3,a0
   1d358:	02079593          	slli	a1,a5,0x20
   1d35c:	02071513          	slli	a0,a4,0x20
   1d360:	02055513          	srli	a0,a0,0x20
   1d364:	0205d593          	srli	a1,a1,0x20
   1d368:	589000ef          	jal	ra,1e0f0 <__muldi3>
   1d36c:	00050a13          	addi	s4,a0,0
   1d370:	02071513          	slli	a0,a4,0x20
   1d374:	02055513          	srli	a0,a0,0x20
   1d378:	0207d593          	srli	a1,a5,0x20
   1d37c:	575000ef          	jal	ra,1e0f0 <__muldi3>
   1d380:	02079593          	slli	a1,a5,0x20
   1d384:	00050993          	addi	s3,a0,0
   1d388:	0205d593          	srli	a1,a1,0x20
   1d38c:	02075513          	srli	a0,a4,0x20
   1d390:	561000ef          	jal	ra,1e0f0 <__muldi3>
   1d394:	00050a93          	addi	s5,a0,0
   1d398:	0207d593          	srli	a1,a5,0x20
   1d39c:	02075513          	srli	a0,a4,0x20
   1d3a0:	551000ef          	jal	ra,1e0f0 <__muldi3>
   1d3a4:	020a5613          	srli	a2,s4,0x20
   1d3a8:	015989b3          	add	s3,s3,s5
   1d3ac:	01360633          	add	a2,a2,s3
   1d3b0:	00050913          	addi	s2,a0,0
   1d3b4:	01567863          	bgeu	a2,s5,1d3c4 <__multf3+0x3c8>
   1d3b8:	00100693          	addi	a3,zero,1
   1d3bc:	02069693          	slli	a3,a3,0x20
   1d3c0:	00d50933          	add	s2,a0,a3
   1d3c4:	020a1513          	slli	a0,s4,0x20
   1d3c8:	02065993          	srli	s3,a2,0x20
   1d3cc:	02055513          	srli	a0,a0,0x20
   1d3d0:	02061613          	slli	a2,a2,0x20
   1d3d4:	02045a93          	srli	s5,s0,0x20
   1d3d8:	02041413          	slli	s0,s0,0x20
   1d3dc:	00a603b3          	add	t2,a2,a0
   1d3e0:	02045413          	srli	s0,s0,0x20
   1d3e4:	02049513          	slli	a0,s1,0x20
   1d3e8:	0204db13          	srli	s6,s1,0x20
   1d3ec:	02055513          	srli	a0,a0,0x20
   1d3f0:	00040593          	addi	a1,s0,0
   1d3f4:	4fd000ef          	jal	ra,1e0f0 <__muldi3>
   1d3f8:	00050a13          	addi	s4,a0,0
   1d3fc:	02049513          	slli	a0,s1,0x20
   1d400:	02055513          	srli	a0,a0,0x20
   1d404:	000a8593          	addi	a1,s5,0
   1d408:	4e9000ef          	jal	ra,1e0f0 <__muldi3>
   1d40c:	00050f13          	addi	t5,a0,0
   1d410:	00040593          	addi	a1,s0,0
   1d414:	000b0513          	addi	a0,s6,0
   1d418:	4d9000ef          	jal	ra,1e0f0 <__muldi3>
   1d41c:	00050413          	addi	s0,a0,0
   1d420:	000a8593          	addi	a1,s5,0
   1d424:	000b0513          	addi	a0,s6,0
   1d428:	4c9000ef          	jal	ra,1e0f0 <__muldi3>
   1d42c:	020a5593          	srli	a1,s4,0x20
   1d430:	008f0f33          	add	t5,t5,s0
   1d434:	01e585b3          	add	a1,a1,t5
   1d438:	0085f863          	bgeu	a1,s0,1d448 <__multf3+0x44c>
   1d43c:	00100693          	addi	a3,zero,1
   1d440:	02069693          	slli	a3,a3,0x20
   1d444:	00d50533          	add	a0,a0,a3
   1d448:	0205df13          	srli	t5,a1,0x20
   1d44c:	00af0f33          	add	t5,t5,a0
   1d450:	020a1513          	slli	a0,s4,0x20
   1d454:	02055513          	srli	a0,a0,0x20
   1d458:	02059593          	slli	a1,a1,0x20
   1d45c:	00a585b3          	add	a1,a1,a0
   1d460:	405006b3          	sub	a3,zero,t0
   1d464:	01d38533          	add	a0,t2,t4
   1d468:	00753633          	sltu	a2,a0,t2
   1d46c:	00d77733          	and	a4,a4,a3
   1d470:	41f006b3          	sub	a3,zero,t6
   1d474:	00d7f7b3          	and	a5,a5,a3
   1d478:	00c986b3          	add	a3,s3,a2
   1d47c:	012686b3          	add	a3,a3,s2
   1d480:	00c6b633          	sltu	a2,a3,a2
   1d484:	005fffb3          	and	t6,t6,t0
   1d488:	00e68733          	add	a4,a3,a4
   1d48c:	01f60633          	add	a2,a2,t6
   1d490:	00d736b3          	sltu	a3,a4,a3
   1d494:	00e78733          	add	a4,a5,a4
   1d498:	00c686b3          	add	a3,a3,a2
   1d49c:	00f737b3          	sltu	a5,a4,a5
   1d4a0:	00d787b3          	add	a5,a5,a3
   1d4a4:	41c506b3          	sub	a3,a0,t3
   1d4a8:	00d53633          	sltu	a2,a0,a3
   1d4ac:	41d70533          	sub	a0,a4,t4
   1d4b0:	40ee8eb3          	sub	t4,t4,a4
   1d4b4:	001ebe93          	sltiu	t4,t4,1
   1d4b8:	40c50fb3          	sub	t6,a0,a2
   1d4bc:	00a73733          	sltu	a4,a4,a0
   1d4c0:	01d67633          	and	a2,a2,t4
   1d4c4:	40b68eb3          	sub	t4,a3,a1
   1d4c8:	00c76733          	or	a4,a4,a2
   1d4cc:	01d6b6b3          	sltu	a3,a3,t4
   1d4d0:	41ef8633          	sub	a2,t6,t5
   1d4d4:	40e787b3          	sub	a5,a5,a4
   1d4d8:	40d58733          	sub	a4,a1,a3
   1d4dc:	00c70533          	add	a0,a4,a2
   1d4e0:	00b535b3          	sltu	a1,a0,a1
   1d4e4:	00163713          	sltiu	a4,a2,1
   1d4e8:	01e787b3          	add	a5,a5,t5
   1d4ec:	00e6f6b3          	and	a3,a3,a4
   1d4f0:	00b787b3          	add	a5,a5,a1
   1d4f4:	00cfb733          	sltu	a4,t6,a2
   1d4f8:	00de9593          	slli	a1,t4,0xd
   1d4fc:	00d76733          	or	a4,a4,a3
   1d500:	01c5e5b3          	or	a1,a1,t3
   1d504:	40e787b3          	sub	a5,a5,a4
   1d508:	00b035b3          	sltu	a1,zero,a1
   1d50c:	033ed693          	srli	a3,t4,0x33
   1d510:	00d79793          	slli	a5,a5,0xd
   1d514:	00d51713          	slli	a4,a0,0xd
   1d518:	00d5e5b3          	or	a1,a1,a3
   1d51c:	03355413          	srli	s0,a0,0x33
   1d520:	00e5e5b3          	or	a1,a1,a4
   1d524:	00b79713          	slli	a4,a5,0xb
   1d528:	0087e433          	or	s0,a5,s0
   1d52c:	0c075863          	bge	a4,zero,1d5fc <__multf3+0x600>
   1d530:	0015d793          	srli	a5,a1,0x1
   1d534:	0015f593          	andi	a1,a1,1
   1d538:	00b7e7b3          	or	a5,a5,a1
   1d53c:	03f41593          	slli	a1,s0,0x3f
   1d540:	00b7e5b3          	or	a1,a5,a1
   1d544:	00145413          	srli	s0,s0,0x1
   1d548:	00004737          	lui	a4,0x4
   1d54c:	fff70713          	addi	a4,a4,-1 # 3fff <exit-0xc121>
   1d550:	00e88733          	add	a4,a7,a4
   1d554:	0ae05863          	bge	zero,a4,1d604 <__multf3+0x608>
   1d558:	0075f793          	andi	a5,a1,7
   1d55c:	02078063          	beq	a5,zero,1d57c <__multf3+0x580>
   1d560:	00f5f793          	andi	a5,a1,15
   1d564:	00400693          	addi	a3,zero,4
   1d568:	00d78a63          	beq	a5,a3,1d57c <__multf3+0x580>
   1d56c:	00d587b3          	add	a5,a1,a3
   1d570:	00b7b6b3          	sltu	a3,a5,a1
   1d574:	00d40433          	add	s0,s0,a3
   1d578:	00078593          	addi	a1,a5,0
   1d57c:	00b41793          	slli	a5,s0,0xb
   1d580:	0007de63          	bge	a5,zero,1d59c <__multf3+0x5a0>
   1d584:	fff00793          	addi	a5,zero,-1
   1d588:	03479793          	slli	a5,a5,0x34
   1d58c:	fff78793          	addi	a5,a5,-1
   1d590:	00004737          	lui	a4,0x4
   1d594:	00f47433          	and	s0,s0,a5
   1d598:	00e88733          	add	a4,a7,a4
   1d59c:	000087b7          	lui	a5,0x8
   1d5a0:	ffe78793          	addi	a5,a5,-2 # 7ffe <exit-0x8122>
   1d5a4:	14e7c663          	blt	a5,a4,1d6f0 <__multf3+0x6f4>
   1d5a8:	0035d593          	srli	a1,a1,0x3
   1d5ac:	03d41513          	slli	a0,s0,0x3d
   1d5b0:	00b56533          	or	a0,a0,a1
   1d5b4:	00345593          	srli	a1,s0,0x3
   1d5b8:	04813083          	ld	ra,72(sp)
   1d5bc:	04013403          	ld	s0,64(sp)
   1d5c0:	00f8181b          	slliw	a6,a6,0xf
   1d5c4:	01059593          	slli	a1,a1,0x10
   1d5c8:	00e86833          	or	a6,a6,a4
   1d5cc:	03081813          	slli	a6,a6,0x30
   1d5d0:	0105d593          	srli	a1,a1,0x10
   1d5d4:	03813483          	ld	s1,56(sp)
   1d5d8:	03013903          	ld	s2,48(sp)
   1d5dc:	02813983          	ld	s3,40(sp)
   1d5e0:	02013a03          	ld	s4,32(sp)
   1d5e4:	01813a83          	ld	s5,24(sp)
   1d5e8:	01013b03          	ld	s6,16(sp)
   1d5ec:	00813b83          	ld	s7,8(sp)
   1d5f0:	0105e5b3          	or	a1,a1,a6
   1d5f4:	05010113          	addi	sp,sp,80
   1d5f8:	00008067          	jalr	zero,0(ra)
   1d5fc:	00030893          	addi	a7,t1,0
   1d600:	f49ff06f          	jal	zero,1d548 <__multf3+0x54c>
   1d604:	08070263          	beq	a4,zero,1d688 <__multf3+0x68c>
   1d608:	f8d00793          	addi	a5,zero,-115
   1d60c:	b0f748e3          	blt	a4,a5,1d11c <__multf3+0x120>
   1d610:	00100793          	addi	a5,zero,1
   1d614:	fc200693          	addi	a3,zero,-62
   1d618:	40e787b3          	sub	a5,a5,a4
   1d61c:	06d74a63          	blt	a4,a3,1d690 <__multf3+0x694>
   1d620:	04000713          	addi	a4,zero,64
   1d624:	40f7073b          	subw	a4,a4,a5
   1d628:	00e41533          	sll	a0,s0,a4
   1d62c:	00f5d6b3          	srl	a3,a1,a5
   1d630:	00e59733          	sll	a4,a1,a4
   1d634:	00d56533          	or	a0,a0,a3
   1d638:	00e03733          	sltu	a4,zero,a4
   1d63c:	00e56533          	or	a0,a0,a4
   1d640:	00f455b3          	srl	a1,s0,a5
   1d644:	00757793          	andi	a5,a0,7
   1d648:	02078063          	beq	a5,zero,1d668 <__multf3+0x66c>
   1d64c:	00f57793          	andi	a5,a0,15
   1d650:	00400713          	addi	a4,zero,4
   1d654:	00e78a63          	beq	a5,a4,1d668 <__multf3+0x66c>
   1d658:	00e507b3          	add	a5,a0,a4
   1d65c:	00a7b733          	sltu	a4,a5,a0
   1d660:	00e585b3          	add	a1,a1,a4
   1d664:	00078513          	addi	a0,a5,0
   1d668:	00c59793          	slli	a5,a1,0xc
   1d66c:	0807cc63          	blt	a5,zero,1d704 <__multf3+0x708>
   1d670:	03d59793          	slli	a5,a1,0x3d
   1d674:	00355513          	srli	a0,a0,0x3
   1d678:	00a7e533          	or	a0,a5,a0
   1d67c:	0035d593          	srli	a1,a1,0x3
   1d680:	00000713          	addi	a4,zero,0
   1d684:	f35ff06f          	jal	zero,1d5b8 <__multf3+0x5bc>
   1d688:	00100793          	addi	a5,zero,1
   1d68c:	f95ff06f          	jal	zero,1d620 <__multf3+0x624>
   1d690:	fc07851b          	addiw	a0,a5,-64
   1d694:	fc100613          	addi	a2,zero,-63
   1d698:	00a45533          	srl	a0,s0,a0
   1d69c:	00000693          	addi	a3,zero,0
   1d6a0:	00c70863          	beq	a4,a2,1d6b0 <__multf3+0x6b4>
   1d6a4:	08000693          	addi	a3,zero,128
   1d6a8:	40f686bb          	subw	a3,a3,a5
   1d6ac:	00d416b3          	sll	a3,s0,a3
   1d6b0:	00d5e5b3          	or	a1,a1,a3
   1d6b4:	00b035b3          	sltu	a1,zero,a1
   1d6b8:	00b56533          	or	a0,a0,a1
   1d6bc:	00000593          	addi	a1,zero,0
   1d6c0:	f85ff06f          	jal	zero,1d644 <__multf3+0x648>
   1d6c4:	02f79593          	slli	a1,a5,0x2f
   1d6c8:	00008737          	lui	a4,0x8
   1d6cc:	fff70713          	addi	a4,a4,-1 # 7fff <exit-0x8121>
   1d6d0:	00000813          	addi	a6,zero,0
   1d6d4:	ee5ff06f          	jal	zero,1d5b8 <__multf3+0x5bc>
   1d6d8:	00100593          	addi	a1,zero,1
   1d6dc:	02f59593          	slli	a1,a1,0x2f
   1d6e0:	00000513          	addi	a0,zero,0
   1d6e4:	fe5ff06f          	jal	zero,1d6c8 <__multf3+0x6cc>
   1d6e8:	02f79593          	slli	a1,a5,0x2f
   1d6ec:	ff5ff06f          	jal	zero,1d6e0 <__multf3+0x6e4>
   1d6f0:	00008737          	lui	a4,0x8
   1d6f4:	00000593          	addi	a1,zero,0
   1d6f8:	00000513          	addi	a0,zero,0
   1d6fc:	fff70713          	addi	a4,a4,-1 # 7fff <exit-0x8121>
   1d700:	eb9ff06f          	jal	zero,1d5b8 <__multf3+0x5bc>
   1d704:	00000593          	addi	a1,zero,0
   1d708:	00000513          	addi	a0,zero,0
   1d70c:	00100713          	addi	a4,zero,1
   1d710:	ea9ff06f          	jal	zero,1d5b8 <__multf3+0x5bc>

000000000001d714 <__subtf3>:
   1d714:	fff00813          	addi	a6,zero,-1
   1d718:	fd010113          	addi	sp,sp,-48
   1d71c:	01085813          	srli	a6,a6,0x10
   1d720:	00008737          	lui	a4,0x8
   1d724:	0305de93          	srli	t4,a1,0x30
   1d728:	fff70713          	addi	a4,a4,-1 # 7fff <exit-0x8121>
   1d72c:	0306d893          	srli	a7,a3,0x30
   1d730:	00913c23          	sd	s1,24(sp)
   1d734:	03f6de13          	srli	t3,a3,0x3f
   1d738:	03f5d493          	srli	s1,a1,0x3f
   1d73c:	0106f6b3          	and	a3,a3,a6
   1d740:	0105f5b3          	and	a1,a1,a6
   1d744:	03d55793          	srli	a5,a0,0x3d
   1d748:	03d65313          	srli	t1,a2,0x3d
   1d74c:	01213823          	sd	s2,16(sp)
   1d750:	00eefeb3          	and	t4,t4,a4
   1d754:	00359593          	slli	a1,a1,0x3
   1d758:	00369693          	slli	a3,a3,0x3
   1d75c:	02113423          	sd	ra,40(sp)
   1d760:	02813023          	sd	s0,32(sp)
   1d764:	01313423          	sd	s3,8(sp)
   1d768:	00e8f8b3          	and	a7,a7,a4
   1d76c:	000e8913          	addi	s2,t4,0
   1d770:	00b7e7b3          	or	a5,a5,a1
   1d774:	00351513          	slli	a0,a0,0x3
   1d778:	00d36333          	or	t1,t1,a3
   1d77c:	00361613          	slli	a2,a2,0x3
   1d780:	00e89663          	bne	a7,a4,1d78c <__subtf3+0x78>
   1d784:	00c36733          	or	a4,t1,a2
   1d788:	00071463          	bne	a4,zero,1d790 <__subtf3+0x7c>
   1d78c:	001e4e13          	xori	t3,t3,1
   1d790:	411e873b          	subw	a4,t4,a7
   1d794:	00008837          	lui	a6,0x8
   1d798:	00070693          	addi	a3,a4,0
   1d79c:	fff80813          	addi	a6,a6,-1 # 7fff <exit-0x8121>
   1d7a0:	349e1263          	bne	t3,s1,1dae4 <__subtf3+0x3d0>
   1d7a4:	10e05863          	bge	zero,a4,1d8b4 <__subtf3+0x1a0>
   1d7a8:	06089a63          	bne	a7,zero,1d81c <__subtf3+0x108>
   1d7ac:	00c366b3          	or	a3,t1,a2
   1d7b0:	06068263          	beq	a3,zero,1d814 <__subtf3+0x100>
   1d7b4:	fff7071b          	addiw	a4,a4,-1
   1d7b8:	04071c63          	bne	a4,zero,1d810 <__subtf3+0xfc>
   1d7bc:	00c50633          	add	a2,a0,a2
   1d7c0:	006787b3          	add	a5,a5,t1
   1d7c4:	00a63533          	sltu	a0,a2,a0
   1d7c8:	00a787b3          	add	a5,a5,a0
   1d7cc:	00c79713          	slli	a4,a5,0xc
   1d7d0:	2c075263          	bge	a4,zero,1da94 <__subtf3+0x380>
   1d7d4:	00008737          	lui	a4,0x8
   1d7d8:	00190913          	addi	s2,s2,1
   1d7dc:	fff70713          	addi	a4,a4,-1 # 7fff <exit-0x8121>
   1d7e0:	6ae90a63          	beq	s2,a4,1de94 <__subtf3+0x780>
   1d7e4:	fff00713          	addi	a4,zero,-1
   1d7e8:	03371713          	slli	a4,a4,0x33
   1d7ec:	fff70713          	addi	a4,a4,-1
   1d7f0:	00e7f7b3          	and	a5,a5,a4
   1d7f4:	00165713          	srli	a4,a2,0x1
   1d7f8:	00167613          	andi	a2,a2,1
   1d7fc:	00c76733          	or	a4,a4,a2
   1d800:	03f79613          	slli	a2,a5,0x3f
   1d804:	00e66633          	or	a2,a2,a4
   1d808:	0017d793          	srli	a5,a5,0x1
   1d80c:	2880006f          	jal	zero,1da94 <__subtf3+0x380>
   1d810:	010e9e63          	bne	t4,a6,1d82c <__subtf3+0x118>
   1d814:	00050613          	addi	a2,a0,0
   1d818:	1c80006f          	jal	zero,1d9e0 <__subtf3+0x2cc>
   1d81c:	ff0e8ce3          	beq	t4,a6,1d814 <__subtf3+0x100>
   1d820:	00100693          	addi	a3,zero,1
   1d824:	03369693          	slli	a3,a3,0x33
   1d828:	00d36333          	or	t1,t1,a3
   1d82c:	07400693          	addi	a3,zero,116
   1d830:	06e6cc63          	blt	a3,a4,1d8a8 <__subtf3+0x194>
   1d834:	03f00693          	addi	a3,zero,63
   1d838:	02e6ce63          	blt	a3,a4,1d874 <__subtf3+0x160>
   1d83c:	04000593          	addi	a1,zero,64
   1d840:	40e585bb          	subw	a1,a1,a4
   1d844:	00b316b3          	sll	a3,t1,a1
   1d848:	00e65833          	srl	a6,a2,a4
   1d84c:	00b615b3          	sll	a1,a2,a1
   1d850:	0106e6b3          	or	a3,a3,a6
   1d854:	00b035b3          	sltu	a1,zero,a1
   1d858:	00b6e6b3          	or	a3,a3,a1
   1d85c:	00e35733          	srl	a4,t1,a4
   1d860:	00a68633          	add	a2,a3,a0
   1d864:	00f70733          	add	a4,a4,a5
   1d868:	00d636b3          	sltu	a3,a2,a3
   1d86c:	00d707b3          	add	a5,a4,a3
   1d870:	f5dff06f          	jal	zero,1d7cc <__subtf3+0xb8>
   1d874:	fc07069b          	addiw	a3,a4,-64
   1d878:	04000813          	addi	a6,zero,64
   1d87c:	00d356b3          	srl	a3,t1,a3
   1d880:	00000593          	addi	a1,zero,0
   1d884:	01070863          	beq	a4,a6,1d894 <__subtf3+0x180>
   1d888:	08000593          	addi	a1,zero,128
   1d88c:	40e585bb          	subw	a1,a1,a4
   1d890:	00b315b3          	sll	a1,t1,a1
   1d894:	00c5e5b3          	or	a1,a1,a2
   1d898:	00b035b3          	sltu	a1,zero,a1
   1d89c:	00b6e6b3          	or	a3,a3,a1
   1d8a0:	00000713          	addi	a4,zero,0
   1d8a4:	fbdff06f          	jal	zero,1d860 <__subtf3+0x14c>
   1d8a8:	00c366b3          	or	a3,t1,a2
   1d8ac:	00d036b3          	sltu	a3,zero,a3
   1d8b0:	ff1ff06f          	jal	zero,1d8a0 <__subtf3+0x18c>
   1d8b4:	0c070e63          	beq	a4,zero,1d990 <__subtf3+0x27c>
   1d8b8:	020e9e63          	bne	t4,zero,1d8f4 <__subtf3+0x1e0>
   1d8bc:	00a7e6b3          	or	a3,a5,a0
   1d8c0:	02068463          	beq	a3,zero,1d8e8 <__subtf3+0x1d4>
   1d8c4:	fff74713          	xori	a4,a4,-1
   1d8c8:	00071e63          	bne	a4,zero,1d8e4 <__subtf3+0x1d0>
   1d8cc:	00c50633          	add	a2,a0,a2
   1d8d0:	006787b3          	add	a5,a5,t1
   1d8d4:	00a63533          	sltu	a0,a2,a0
   1d8d8:	00a787b3          	add	a5,a5,a0
   1d8dc:	00088913          	addi	s2,a7,0
   1d8e0:	eedff06f          	jal	zero,1d7cc <__subtf3+0xb8>
   1d8e4:	03089263          	bne	a7,a6,1d908 <__subtf3+0x1f4>
   1d8e8:	00030793          	addi	a5,t1,0
   1d8ec:	00088913          	addi	s2,a7,0
   1d8f0:	0f00006f          	jal	zero,1d9e0 <__subtf3+0x2cc>
   1d8f4:	ff088ae3          	beq	a7,a6,1d8e8 <__subtf3+0x1d4>
   1d8f8:	00100693          	addi	a3,zero,1
   1d8fc:	03369693          	slli	a3,a3,0x33
   1d900:	40e0073b          	subw	a4,zero,a4
   1d904:	00d7e7b3          	or	a5,a5,a3
   1d908:	07400693          	addi	a3,zero,116
   1d90c:	06e6cc63          	blt	a3,a4,1d984 <__subtf3+0x270>
   1d910:	03f00693          	addi	a3,zero,63
   1d914:	02e6ce63          	blt	a3,a4,1d950 <__subtf3+0x23c>
   1d918:	04000593          	addi	a1,zero,64
   1d91c:	40e585bb          	subw	a1,a1,a4
   1d920:	00b796b3          	sll	a3,a5,a1
   1d924:	00e55833          	srl	a6,a0,a4
   1d928:	00b515b3          	sll	a1,a0,a1
   1d92c:	0106e6b3          	or	a3,a3,a6
   1d930:	00b035b3          	sltu	a1,zero,a1
   1d934:	00b6e6b3          	or	a3,a3,a1
   1d938:	00e7d733          	srl	a4,a5,a4
   1d93c:	00c68633          	add	a2,a3,a2
   1d940:	00670733          	add	a4,a4,t1
   1d944:	00d636b3          	sltu	a3,a2,a3
   1d948:	00d707b3          	add	a5,a4,a3
   1d94c:	f91ff06f          	jal	zero,1d8dc <__subtf3+0x1c8>
   1d950:	fc07069b          	addiw	a3,a4,-64
   1d954:	04000813          	addi	a6,zero,64
   1d958:	00d7d6b3          	srl	a3,a5,a3
   1d95c:	00000593          	addi	a1,zero,0
   1d960:	01070863          	beq	a4,a6,1d970 <__subtf3+0x25c>
   1d964:	08000593          	addi	a1,zero,128
   1d968:	40e585bb          	subw	a1,a1,a4
   1d96c:	00b795b3          	sll	a1,a5,a1
   1d970:	00a5e5b3          	or	a1,a1,a0
   1d974:	00b035b3          	sltu	a1,zero,a1
   1d978:	00b6e6b3          	or	a3,a3,a1
   1d97c:	00000713          	addi	a4,zero,0
   1d980:	fbdff06f          	jal	zero,1d93c <__subtf3+0x228>
   1d984:	00a7e6b3          	or	a3,a5,a0
   1d988:	00d036b3          	sltu	a3,zero,a3
   1d98c:	ff1ff06f          	jal	zero,1d97c <__subtf3+0x268>
   1d990:	001e8713          	addi	a4,t4,1
   1d994:	03171693          	slli	a3,a4,0x31
   1d998:	0326d693          	srli	a3,a3,0x32
   1d99c:	0c069863          	bne	a3,zero,1da6c <__subtf3+0x358>
   1d9a0:	00a7e733          	or	a4,a5,a0
   1d9a4:	0a0e9a63          	bne	t4,zero,1da58 <__subtf3+0x344>
   1d9a8:	4c070663          	beq	a4,zero,1de74 <__subtf3+0x760>
   1d9ac:	00c36733          	or	a4,t1,a2
   1d9b0:	4c070663          	beq	a4,zero,1de7c <__subtf3+0x768>
   1d9b4:	00c50633          	add	a2,a0,a2
   1d9b8:	006787b3          	add	a5,a5,t1
   1d9bc:	00a63533          	sltu	a0,a2,a0
   1d9c0:	00a787b3          	add	a5,a5,a0
   1d9c4:	00c79713          	slli	a4,a5,0xc
   1d9c8:	34075263          	bge	a4,zero,1dd0c <__subtf3+0x5f8>
   1d9cc:	fff00713          	addi	a4,zero,-1
   1d9d0:	03371713          	slli	a4,a4,0x33
   1d9d4:	fff70713          	addi	a4,a4,-1
   1d9d8:	00e7f7b3          	and	a5,a5,a4
   1d9dc:	00100913          	addi	s2,zero,1
   1d9e0:	00008737          	lui	a4,0x8
   1d9e4:	03d79513          	slli	a0,a5,0x3d
   1d9e8:	00365613          	srli	a2,a2,0x3
   1d9ec:	fff70713          	addi	a4,a4,-1 # 7fff <exit-0x8121>
   1d9f0:	00c56533          	or	a0,a0,a2
   1d9f4:	0037d793          	srli	a5,a5,0x3
   1d9f8:	02e91063          	bne	s2,a4,1da18 <__subtf3+0x304>
   1d9fc:	00f56533          	or	a0,a0,a5
   1da00:	00000793          	addi	a5,zero,0
   1da04:	00050a63          	beq	a0,zero,1da18 <__subtf3+0x304>
   1da08:	00100793          	addi	a5,zero,1
   1da0c:	02f79793          	slli	a5,a5,0x2f
   1da10:	00000513          	addi	a0,zero,0
   1da14:	00000493          	addi	s1,zero,0
   1da18:	03191713          	slli	a4,s2,0x31
   1da1c:	0014f593          	andi	a1,s1,1
   1da20:	02813083          	ld	ra,40(sp)
   1da24:	02013403          	ld	s0,32(sp)
   1da28:	03175713          	srli	a4,a4,0x31
   1da2c:	00f59593          	slli	a1,a1,0xf
   1da30:	01079793          	slli	a5,a5,0x10
   1da34:	00e5e5b3          	or	a1,a1,a4
   1da38:	03059593          	slli	a1,a1,0x30
   1da3c:	0107d793          	srli	a5,a5,0x10
   1da40:	01813483          	ld	s1,24(sp)
   1da44:	01013903          	ld	s2,16(sp)
   1da48:	00813983          	ld	s3,8(sp)
   1da4c:	00b7e5b3          	or	a1,a5,a1
   1da50:	03010113          	addi	sp,sp,48
   1da54:	00008067          	jalr	zero,0(ra)
   1da58:	42070663          	beq	a4,zero,1de84 <__subtf3+0x770>
   1da5c:	00c36333          	or	t1,t1,a2
   1da60:	2c031e63          	bne	t1,zero,1dd3c <__subtf3+0x628>
   1da64:	00050613          	addi	a2,a0,0
   1da68:	4200006f          	jal	zero,1de88 <__subtf3+0x774>
   1da6c:	43070263          	beq	a4,a6,1de90 <__subtf3+0x77c>
   1da70:	00c50633          	add	a2,a0,a2
   1da74:	00a63533          	sltu	a0,a2,a0
   1da78:	006787b3          	add	a5,a5,t1
   1da7c:	00a787b3          	add	a5,a5,a0
   1da80:	03f79693          	slli	a3,a5,0x3f
   1da84:	00165613          	srli	a2,a2,0x1
   1da88:	00c6e633          	or	a2,a3,a2
   1da8c:	0017d793          	srli	a5,a5,0x1
   1da90:	00070913          	addi	s2,a4,0
   1da94:	00767713          	andi	a4,a2,7
   1da98:	02070063          	beq	a4,zero,1dab8 <__subtf3+0x3a4>
   1da9c:	00f67713          	andi	a4,a2,15
   1daa0:	00400693          	addi	a3,zero,4
   1daa4:	00d70a63          	beq	a4,a3,1dab8 <__subtf3+0x3a4>
   1daa8:	00d60733          	add	a4,a2,a3
   1daac:	00c736b3          	sltu	a3,a4,a2
   1dab0:	00d787b3          	add	a5,a5,a3
   1dab4:	00070613          	addi	a2,a4,0
   1dab8:	00c79713          	slli	a4,a5,0xc
   1dabc:	f20752e3          	bge	a4,zero,1d9e0 <__subtf3+0x2cc>
   1dac0:	00008737          	lui	a4,0x8
   1dac4:	00190913          	addi	s2,s2,1
   1dac8:	fff70713          	addi	a4,a4,-1 # 7fff <exit-0x8121>
   1dacc:	3ce90463          	beq	s2,a4,1de94 <__subtf3+0x780>
   1dad0:	fff00713          	addi	a4,zero,-1
   1dad4:	03371713          	slli	a4,a4,0x33
   1dad8:	fff70713          	addi	a4,a4,-1
   1dadc:	00e7f7b3          	and	a5,a5,a4
   1dae0:	f01ff06f          	jal	zero,1d9e0 <__subtf3+0x2cc>
   1dae4:	0ee05063          	bge	zero,a4,1dbc4 <__subtf3+0x4b0>
   1dae8:	08089463          	bne	a7,zero,1db70 <__subtf3+0x45c>
   1daec:	00c366b3          	or	a3,t1,a2
   1daf0:	d20682e3          	beq	a3,zero,1d814 <__subtf3+0x100>
   1daf4:	fff7071b          	addiw	a4,a4,-1
   1daf8:	02071663          	bne	a4,zero,1db24 <__subtf3+0x410>
   1dafc:	40c50633          	sub	a2,a0,a2
   1db00:	406787b3          	sub	a5,a5,t1
   1db04:	00c53533          	sltu	a0,a0,a2
   1db08:	40a787b3          	sub	a5,a5,a0
   1db0c:	00c79713          	slli	a4,a5,0xc
   1db10:	f80752e3          	bge	a4,zero,1da94 <__subtf3+0x380>
   1db14:	00d79413          	slli	s0,a5,0xd
   1db18:	00d45413          	srli	s0,s0,0xd
   1db1c:	00060993          	addi	s3,a2,0
   1db20:	2680006f          	jal	zero,1dd88 <__subtf3+0x674>
   1db24:	cf0e88e3          	beq	t4,a6,1d814 <__subtf3+0x100>
   1db28:	07400693          	addi	a3,zero,116
   1db2c:	08e6c663          	blt	a3,a4,1dbb8 <__subtf3+0x4a4>
   1db30:	03f00693          	addi	a3,zero,63
   1db34:	04e6c863          	blt	a3,a4,1db84 <__subtf3+0x470>
   1db38:	04000593          	addi	a1,zero,64
   1db3c:	40e585bb          	subw	a1,a1,a4
   1db40:	00b316b3          	sll	a3,t1,a1
   1db44:	00e65833          	srl	a6,a2,a4
   1db48:	00b615b3          	sll	a1,a2,a1
   1db4c:	0106e6b3          	or	a3,a3,a6
   1db50:	00b035b3          	sltu	a1,zero,a1
   1db54:	00b6e633          	or	a2,a3,a1
   1db58:	00e356b3          	srl	a3,t1,a4
   1db5c:	40c50633          	sub	a2,a0,a2
   1db60:	40d786b3          	sub	a3,a5,a3
   1db64:	00c53533          	sltu	a0,a0,a2
   1db68:	40a687b3          	sub	a5,a3,a0
   1db6c:	fa1ff06f          	jal	zero,1db0c <__subtf3+0x3f8>
   1db70:	cb0e82e3          	beq	t4,a6,1d814 <__subtf3+0x100>
   1db74:	00100693          	addi	a3,zero,1
   1db78:	03369693          	slli	a3,a3,0x33
   1db7c:	00d36333          	or	t1,t1,a3
   1db80:	fa9ff06f          	jal	zero,1db28 <__subtf3+0x414>
   1db84:	fc07069b          	addiw	a3,a4,-64
   1db88:	04000813          	addi	a6,zero,64
   1db8c:	00d356b3          	srl	a3,t1,a3
   1db90:	00000593          	addi	a1,zero,0
   1db94:	01070863          	beq	a4,a6,1dba4 <__subtf3+0x490>
   1db98:	08000593          	addi	a1,zero,128
   1db9c:	40e585bb          	subw	a1,a1,a4
   1dba0:	00b315b3          	sll	a1,t1,a1
   1dba4:	00c5e5b3          	or	a1,a1,a2
   1dba8:	00b035b3          	sltu	a1,zero,a1
   1dbac:	00b6e633          	or	a2,a3,a1
   1dbb0:	00000693          	addi	a3,zero,0
   1dbb4:	fa9ff06f          	jal	zero,1db5c <__subtf3+0x448>
   1dbb8:	00c36633          	or	a2,t1,a2
   1dbbc:	00c03633          	sltu	a2,zero,a2
   1dbc0:	ff1ff06f          	jal	zero,1dbb0 <__subtf3+0x49c>
   1dbc4:	0e070263          	beq	a4,zero,1dca8 <__subtf3+0x594>
   1dbc8:	040e9063          	bne	t4,zero,1dc08 <__subtf3+0x4f4>
   1dbcc:	00a7e733          	or	a4,a5,a0
   1dbd0:	02070863          	beq	a4,zero,1dc00 <__subtf3+0x4ec>
   1dbd4:	fff6c693          	xori	a3,a3,-1
   1dbd8:	02069263          	bne	a3,zero,1dbfc <__subtf3+0x4e8>
   1dbdc:	40a60533          	sub	a0,a2,a0
   1dbe0:	00a63733          	sltu	a4,a2,a0
   1dbe4:	40f307b3          	sub	a5,t1,a5
   1dbe8:	00050613          	addi	a2,a0,0
   1dbec:	40e787b3          	sub	a5,a5,a4
   1dbf0:	00088913          	addi	s2,a7,0
   1dbf4:	000e0493          	addi	s1,t3,0
   1dbf8:	f15ff06f          	jal	zero,1db0c <__subtf3+0x3f8>
   1dbfc:	03089063          	bne	a7,a6,1dc1c <__subtf3+0x508>
   1dc00:	000e0493          	addi	s1,t3,0
   1dc04:	ce5ff06f          	jal	zero,1d8e8 <__subtf3+0x1d4>
   1dc08:	ff088ce3          	beq	a7,a6,1dc00 <__subtf3+0x4ec>
   1dc0c:	40e006bb          	subw	a3,zero,a4
   1dc10:	00100713          	addi	a4,zero,1
   1dc14:	03371713          	slli	a4,a4,0x33
   1dc18:	00e7e7b3          	or	a5,a5,a4
   1dc1c:	07400713          	addi	a4,zero,116
   1dc20:	06d74e63          	blt	a4,a3,1dc9c <__subtf3+0x588>
   1dc24:	03f00713          	addi	a4,zero,63
   1dc28:	04d74063          	blt	a4,a3,1dc68 <__subtf3+0x554>
   1dc2c:	04000713          	addi	a4,zero,64
   1dc30:	40d7073b          	subw	a4,a4,a3
   1dc34:	00e795b3          	sll	a1,a5,a4
   1dc38:	00d55833          	srl	a6,a0,a3
   1dc3c:	00e51733          	sll	a4,a0,a4
   1dc40:	0105e5b3          	or	a1,a1,a6
   1dc44:	00e03733          	sltu	a4,zero,a4
   1dc48:	00e5e5b3          	or	a1,a1,a4
   1dc4c:	00d7d6b3          	srl	a3,a5,a3
   1dc50:	40b605b3          	sub	a1,a2,a1
   1dc54:	00b637b3          	sltu	a5,a2,a1
   1dc58:	40d306b3          	sub	a3,t1,a3
   1dc5c:	00058613          	addi	a2,a1,0
   1dc60:	40f687b3          	sub	a5,a3,a5
   1dc64:	f8dff06f          	jal	zero,1dbf0 <__subtf3+0x4dc>
   1dc68:	fc06859b          	addiw	a1,a3,-64
   1dc6c:	04000813          	addi	a6,zero,64
   1dc70:	00b7d5b3          	srl	a1,a5,a1
   1dc74:	00000713          	addi	a4,zero,0
   1dc78:	01068863          	beq	a3,a6,1dc88 <__subtf3+0x574>
   1dc7c:	08000713          	addi	a4,zero,128
   1dc80:	40d7073b          	subw	a4,a4,a3
   1dc84:	00e79733          	sll	a4,a5,a4
   1dc88:	00a76733          	or	a4,a4,a0
   1dc8c:	00e03733          	sltu	a4,zero,a4
   1dc90:	00e5e5b3          	or	a1,a1,a4
   1dc94:	00000693          	addi	a3,zero,0
   1dc98:	fb9ff06f          	jal	zero,1dc50 <__subtf3+0x53c>
   1dc9c:	00a7e5b3          	or	a1,a5,a0
   1dca0:	00b035b3          	sltu	a1,zero,a1
   1dca4:	ff1ff06f          	jal	zero,1dc94 <__subtf3+0x580>
   1dca8:	001e8713          	addi	a4,t4,1
   1dcac:	03171693          	slli	a3,a4,0x31
   1dcb0:	0326d693          	srli	a3,a3,0x32
   1dcb4:	0a069263          	bne	a3,zero,1dd58 <__subtf3+0x644>
   1dcb8:	00c36733          	or	a4,t1,a2
   1dcbc:	00a7e6b3          	or	a3,a5,a0
   1dcc0:	060e9863          	bne	t4,zero,1dd30 <__subtf3+0x61c>
   1dcc4:	00069a63          	bne	a3,zero,1dcd8 <__subtf3+0x5c4>
   1dcc8:	00030793          	addi	a5,t1,0
   1dccc:	02071e63          	bne	a4,zero,1dd08 <__subtf3+0x5f4>
   1dcd0:	00000493          	addi	s1,zero,0
   1dcd4:	1c00006f          	jal	zero,1de94 <__subtf3+0x780>
   1dcd8:	1a070263          	beq	a4,zero,1de7c <__subtf3+0x768>
   1dcdc:	40c506b3          	sub	a3,a0,a2
   1dce0:	00d535b3          	sltu	a1,a0,a3
   1dce4:	40678733          	sub	a4,a5,t1
   1dce8:	40b70733          	sub	a4,a4,a1
   1dcec:	00c71593          	slli	a1,a4,0xc
   1dcf0:	0205d663          	bge	a1,zero,1dd1c <__subtf3+0x608>
   1dcf4:	40a60533          	sub	a0,a2,a0
   1dcf8:	00a63733          	sltu	a4,a2,a0
   1dcfc:	40f307b3          	sub	a5,t1,a5
   1dd00:	00050613          	addi	a2,a0,0
   1dd04:	40e787b3          	sub	a5,a5,a4
   1dd08:	000e0493          	addi	s1,t3,0
   1dd0c:	00c7e733          	or	a4,a5,a2
   1dd10:	18070e63          	beq	a4,zero,1deac <__subtf3+0x798>
   1dd14:	00000913          	addi	s2,zero,0
   1dd18:	d7dff06f          	jal	zero,1da94 <__subtf3+0x380>
   1dd1c:	00e6e633          	or	a2,a3,a4
   1dd20:	18060063          	beq	a2,zero,1dea0 <__subtf3+0x78c>
   1dd24:	00070793          	addi	a5,a4,0
   1dd28:	00068613          	addi	a2,a3,0
   1dd2c:	fe1ff06f          	jal	zero,1dd0c <__subtf3+0x5f8>
   1dd30:	02069063          	bne	a3,zero,1dd50 <__subtf3+0x63c>
   1dd34:	000e0493          	addi	s1,t3,0
   1dd38:	14071663          	bne	a4,zero,1de84 <__subtf3+0x770>
   1dd3c:	00100793          	addi	a5,zero,1
   1dd40:	00000493          	addi	s1,zero,0
   1dd44:	03279793          	slli	a5,a5,0x32
   1dd48:	00000613          	addi	a2,zero,0
   1dd4c:	13c0006f          	jal	zero,1de88 <__subtf3+0x774>
   1dd50:	d0070ae3          	beq	a4,zero,1da64 <__subtf3+0x350>
   1dd54:	fe9ff06f          	jal	zero,1dd3c <__subtf3+0x628>
   1dd58:	40c50733          	sub	a4,a0,a2
   1dd5c:	00e536b3          	sltu	a3,a0,a4
   1dd60:	40678433          	sub	s0,a5,t1
   1dd64:	40d40433          	sub	s0,s0,a3
   1dd68:	00c41693          	slli	a3,s0,0xc
   1dd6c:	00070993          	addi	s3,a4,0
   1dd70:	0606de63          	bge	a3,zero,1ddec <__subtf3+0x6d8>
   1dd74:	40a609b3          	sub	s3,a2,a0
   1dd78:	40f30433          	sub	s0,t1,a5
   1dd7c:	01363633          	sltu	a2,a2,s3
   1dd80:	40c40433          	sub	s0,s0,a2
   1dd84:	000e0493          	addi	s1,t3,0
   1dd88:	06040e63          	beq	s0,zero,1de04 <__subtf3+0x6f0>
   1dd8c:	00040513          	addi	a0,s0,0
   1dd90:	484000ef          	jal	ra,1e214 <__clzdi2>
   1dd94:	ff45061b          	addiw	a2,a0,-12
   1dd98:	04000793          	addi	a5,zero,64
   1dd9c:	40c787bb          	subw	a5,a5,a2
   1dda0:	00c41433          	sll	s0,s0,a2
   1dda4:	00f9d7b3          	srl	a5,s3,a5
   1dda8:	0087e7b3          	or	a5,a5,s0
   1ddac:	00c99433          	sll	s0,s3,a2
   1ddb0:	0b264463          	blt	a2,s2,1de58 <__subtf3+0x744>
   1ddb4:	4126063b          	subw	a2,a2,s2
   1ddb8:	0016069b          	addiw	a3,a2,1
   1ddbc:	03f00713          	addi	a4,zero,63
   1ddc0:	06d74263          	blt	a4,a3,1de24 <__subtf3+0x710>
   1ddc4:	04000713          	addi	a4,zero,64
   1ddc8:	40d7073b          	subw	a4,a4,a3
   1ddcc:	00e79633          	sll	a2,a5,a4
   1ddd0:	00d455b3          	srl	a1,s0,a3
   1ddd4:	00e41733          	sll	a4,s0,a4
   1ddd8:	00b66633          	or	a2,a2,a1
   1dddc:	00e03733          	sltu	a4,zero,a4
   1dde0:	00e66633          	or	a2,a2,a4
   1dde4:	00d7d7b3          	srl	a5,a5,a3
   1dde8:	f25ff06f          	jal	zero,1dd0c <__subtf3+0x5f8>
   1ddec:	00876633          	or	a2,a4,s0
   1ddf0:	f8061ce3          	bne	a2,zero,1dd88 <__subtf3+0x674>
   1ddf4:	00000793          	addi	a5,zero,0
   1ddf8:	00000493          	addi	s1,zero,0
   1ddfc:	00000913          	addi	s2,zero,0
   1de00:	be1ff06f          	jal	zero,1d9e0 <__subtf3+0x2cc>
   1de04:	00098513          	addi	a0,s3,0
   1de08:	40c000ef          	jal	ra,1e214 <__clzdi2>
   1de0c:	0345061b          	addiw	a2,a0,52
   1de10:	03f00793          	addi	a5,zero,63
   1de14:	f8c7d2e3          	bge	a5,a2,1dd98 <__subtf3+0x684>
   1de18:	ff45079b          	addiw	a5,a0,-12
   1de1c:	00f997b3          	sll	a5,s3,a5
   1de20:	f91ff06f          	jal	zero,1ddb0 <__subtf3+0x69c>
   1de24:	fc16061b          	addiw	a2,a2,-63
   1de28:	04000593          	addi	a1,zero,64
   1de2c:	00c7d633          	srl	a2,a5,a2
   1de30:	00000713          	addi	a4,zero,0
   1de34:	00b68863          	beq	a3,a1,1de44 <__subtf3+0x730>
   1de38:	08000713          	addi	a4,zero,128
   1de3c:	40d7073b          	subw	a4,a4,a3
   1de40:	00e79733          	sll	a4,a5,a4
   1de44:	00e46733          	or	a4,s0,a4
   1de48:	00e03733          	sltu	a4,zero,a4
   1de4c:	00e66633          	or	a2,a2,a4
   1de50:	00000793          	addi	a5,zero,0
   1de54:	eb9ff06f          	jal	zero,1dd0c <__subtf3+0x5f8>
   1de58:	fff00713          	addi	a4,zero,-1
   1de5c:	03371713          	slli	a4,a4,0x33
   1de60:	fff70713          	addi	a4,a4,-1
   1de64:	40c90933          	sub	s2,s2,a2
   1de68:	00e7f7b3          	and	a5,a5,a4
   1de6c:	00040613          	addi	a2,s0,0
   1de70:	c25ff06f          	jal	zero,1da94 <__subtf3+0x380>
   1de74:	00030793          	addi	a5,t1,0
   1de78:	e95ff06f          	jal	zero,1dd0c <__subtf3+0x5f8>
   1de7c:	00050613          	addi	a2,a0,0
   1de80:	e8dff06f          	jal	zero,1dd0c <__subtf3+0x5f8>
   1de84:	00030793          	addi	a5,t1,0
   1de88:	00080913          	addi	s2,a6,0
   1de8c:	b55ff06f          	jal	zero,1d9e0 <__subtf3+0x2cc>
   1de90:	00070913          	addi	s2,a4,0
   1de94:	00000793          	addi	a5,zero,0
   1de98:	00000613          	addi	a2,zero,0
   1de9c:	b45ff06f          	jal	zero,1d9e0 <__subtf3+0x2cc>
   1dea0:	00000493          	addi	s1,zero,0
   1dea4:	00000793          	addi	a5,zero,0
   1dea8:	b39ff06f          	jal	zero,1d9e0 <__subtf3+0x2cc>
   1deac:	00000793          	addi	a5,zero,0
   1deb0:	00000613          	addi	a2,zero,0
   1deb4:	f49ff06f          	jal	zero,1ddfc <__subtf3+0x6e8>

000000000001deb8 <__unordtf2>:
   1deb8:	000087b7          	lui	a5,0x8
   1debc:	fff78793          	addi	a5,a5,-1 # 7fff <exit-0x8121>
   1dec0:	0305d813          	srli	a6,a1,0x30
   1dec4:	0306d713          	srli	a4,a3,0x30
   1dec8:	00f87833          	and	a6,a6,a5
   1decc:	00f77733          	and	a4,a4,a5
   1ded0:	00f81c63          	bne	a6,a5,1dee8 <__unordtf2+0x30>
   1ded4:	01059593          	slli	a1,a1,0x10
   1ded8:	0105d593          	srli	a1,a1,0x10
   1dedc:	00a5e5b3          	or	a1,a1,a0
   1dee0:	00100513          	addi	a0,zero,1
   1dee4:	02059263          	bne	a1,zero,1df08 <__unordtf2+0x50>
   1dee8:	000087b7          	lui	a5,0x8
   1deec:	fff78793          	addi	a5,a5,-1 # 7fff <exit-0x8121>
   1def0:	00000513          	addi	a0,zero,0
   1def4:	00f71a63          	bne	a4,a5,1df08 <__unordtf2+0x50>
   1def8:	01069693          	slli	a3,a3,0x10
   1defc:	0106d693          	srli	a3,a3,0x10
   1df00:	00c6e6b3          	or	a3,a3,a2
   1df04:	00d03533          	sltu	a0,zero,a3
   1df08:	00008067          	jalr	zero,0(ra)

000000000001df0c <__fixtfsi>:
   1df0c:	00159793          	slli	a5,a1,0x1
   1df10:	0317d713          	srli	a4,a5,0x31
   1df14:	000047b7          	lui	a5,0x4
   1df18:	ffe78793          	addi	a5,a5,-2 # 3ffe <exit-0xc122>
   1df1c:	03f5d693          	srli	a3,a1,0x3f
   1df20:	00000513          	addi	a0,zero,0
   1df24:	04e7d863          	bge	a5,a4,1df74 <__fixtfsi+0x68>
   1df28:	000047b7          	lui	a5,0x4
   1df2c:	01d78793          	addi	a5,a5,29 # 401d <exit-0xc103>
   1df30:	00e7da63          	bge	a5,a4,1df44 <__fixtfsi+0x38>
   1df34:	80000537          	lui	a0,0x80000
   1df38:	fff54513          	xori	a0,a0,-1
   1df3c:	00a6853b          	addw	a0,a3,a0
   1df40:	00008067          	jalr	zero,0(ra)
   1df44:	01059513          	slli	a0,a1,0x10
   1df48:	00100793          	addi	a5,zero,1
   1df4c:	03079793          	slli	a5,a5,0x30
   1df50:	01055513          	srli	a0,a0,0x10
   1df54:	00f56533          	or	a0,a0,a5
   1df58:	000047b7          	lui	a5,0x4
   1df5c:	02f7879b          	addiw	a5,a5,47 # 402f <exit-0xc0f1>
   1df60:	40e787bb          	subw	a5,a5,a4
   1df64:	00f55533          	srl	a0,a0,a5
   1df68:	0005051b          	addiw	a0,a0,0 # ffffffff80000000 <__BSS_END__+0xffffffff7ffdf3b8>
   1df6c:	00068463          	beq	a3,zero,1df74 <__fixtfsi+0x68>
   1df70:	40a0053b          	subw	a0,zero,a0
   1df74:	00008067          	jalr	zero,0(ra)

000000000001df78 <__floatsitf>:
   1df78:	fe010113          	addi	sp,sp,-32
   1df7c:	00113c23          	sd	ra,24(sp)
   1df80:	00813823          	sd	s0,16(sp)
   1df84:	00913423          	sd	s1,8(sp)
   1df88:	06050463          	beq	a0,zero,1dff0 <__floatsitf+0x78>
   1df8c:	41f5579b          	sraiw	a5,a0,0x1f
   1df90:	00f54433          	xor	s0,a0,a5
   1df94:	40f4043b          	subw	s0,s0,a5
   1df98:	02041413          	slli	s0,s0,0x20
   1df9c:	02045413          	srli	s0,s0,0x20
   1dfa0:	01f5549b          	srliw	s1,a0,0x1f
   1dfa4:	00040513          	addi	a0,s0,0
   1dfa8:	26c000ef          	jal	ra,1e214 <__clzdi2>
   1dfac:	000047b7          	lui	a5,0x4
   1dfb0:	03e7879b          	addiw	a5,a5,62 # 403e <exit-0xc0e2>
   1dfb4:	40a787bb          	subw	a5,a5,a0
   1dfb8:	ff15051b          	addiw	a0,a0,-15
   1dfbc:	00a41433          	sll	s0,s0,a0
   1dfc0:	00f4959b          	slliw	a1,s1,0xf
   1dfc4:	01041413          	slli	s0,s0,0x10
   1dfc8:	00f5e5b3          	or	a1,a1,a5
   1dfcc:	01045413          	srli	s0,s0,0x10
   1dfd0:	03059593          	slli	a1,a1,0x30
   1dfd4:	01813083          	ld	ra,24(sp)
   1dfd8:	00b465b3          	or	a1,s0,a1
   1dfdc:	01013403          	ld	s0,16(sp)
   1dfe0:	00813483          	ld	s1,8(sp)
   1dfe4:	00000513          	addi	a0,zero,0
   1dfe8:	02010113          	addi	sp,sp,32
   1dfec:	00008067          	jalr	zero,0(ra)
   1dff0:	00000493          	addi	s1,zero,0
   1dff4:	00000413          	addi	s0,zero,0
   1dff8:	00000793          	addi	a5,zero,0
   1dffc:	fc5ff06f          	jal	zero,1dfc0 <__floatsitf+0x48>

000000000001e000 <__extenddftf2>:
   1e000:	03455793          	srli	a5,a0,0x34
   1e004:	7ff7f793          	andi	a5,a5,2047
   1e008:	fe010113          	addi	sp,sp,-32
   1e00c:	00178713          	addi	a4,a5,1
   1e010:	00813823          	sd	s0,16(sp)
   1e014:	00913423          	sd	s1,8(sp)
   1e018:	00c51413          	slli	s0,a0,0xc
   1e01c:	00113c23          	sd	ra,24(sp)
   1e020:	7fe77713          	andi	a4,a4,2046
   1e024:	00c45413          	srli	s0,s0,0xc
   1e028:	03f55493          	srli	s1,a0,0x3f
   1e02c:	04070463          	beq	a4,zero,1e074 <__extenddftf2+0x74>
   1e030:	00004737          	lui	a4,0x4
   1e034:	c0070713          	addi	a4,a4,-1024 # 3c00 <exit-0xc520>
   1e038:	00445593          	srli	a1,s0,0x4
   1e03c:	00e787b3          	add	a5,a5,a4
   1e040:	03c41413          	slli	s0,s0,0x3c
   1e044:	01813083          	ld	ra,24(sp)
   1e048:	00040513          	addi	a0,s0,0
   1e04c:	00f4949b          	slliw	s1,s1,0xf
   1e050:	01013403          	ld	s0,16(sp)
   1e054:	01059593          	slli	a1,a1,0x10
   1e058:	00f4e4b3          	or	s1,s1,a5
   1e05c:	03049493          	slli	s1,s1,0x30
   1e060:	0105d593          	srli	a1,a1,0x10
   1e064:	0095e5b3          	or	a1,a1,s1
   1e068:	00813483          	ld	s1,8(sp)
   1e06c:	02010113          	addi	sp,sp,32
   1e070:	00008067          	jalr	zero,0(ra)
   1e074:	04079a63          	bne	a5,zero,1e0c8 <__extenddftf2+0xc8>
   1e078:	00000593          	addi	a1,zero,0
   1e07c:	fc0404e3          	beq	s0,zero,1e044 <__extenddftf2+0x44>
   1e080:	00040513          	addi	a0,s0,0
   1e084:	190000ef          	jal	ra,1e214 <__clzdi2>
   1e088:	0005071b          	addiw	a4,a0,0
   1e08c:	00e00793          	addi	a5,zero,14
   1e090:	02e7c463          	blt	a5,a4,1e0b8 <__extenddftf2+0xb8>
   1e094:	00f00593          	addi	a1,zero,15
   1e098:	40a585bb          	subw	a1,a1,a0
   1e09c:	0315079b          	addiw	a5,a0,49
   1e0a0:	00b455b3          	srl	a1,s0,a1
   1e0a4:	00f41433          	sll	s0,s0,a5
   1e0a8:	000047b7          	lui	a5,0x4
   1e0ac:	c0c7879b          	addiw	a5,a5,-1012 # 3c0c <exit-0xc514>
   1e0b0:	40a787bb          	subw	a5,a5,a0
   1e0b4:	f91ff06f          	jal	zero,1e044 <__extenddftf2+0x44>
   1e0b8:	ff15059b          	addiw	a1,a0,-15
   1e0bc:	00b415b3          	sll	a1,s0,a1
   1e0c0:	00000413          	addi	s0,zero,0
   1e0c4:	fe5ff06f          	jal	zero,1e0a8 <__extenddftf2+0xa8>
   1e0c8:	00000593          	addi	a1,zero,0
   1e0cc:	00040c63          	beq	s0,zero,1e0e4 <__extenddftf2+0xe4>
   1e0d0:	00100793          	addi	a5,zero,1
   1e0d4:	00445593          	srli	a1,s0,0x4
   1e0d8:	02f79793          	slli	a5,a5,0x2f
   1e0dc:	00f5e5b3          	or	a1,a1,a5
   1e0e0:	03c41413          	slli	s0,s0,0x3c
   1e0e4:	000087b7          	lui	a5,0x8
   1e0e8:	fff78793          	addi	a5,a5,-1 # 7fff <exit-0x8121>
   1e0ec:	f59ff06f          	jal	zero,1e044 <__extenddftf2+0x44>

000000000001e0f0 <__muldi3>:
   1e0f0:	00050613          	addi	a2,a0,0
   1e0f4:	00000513          	addi	a0,zero,0
   1e0f8:	0015f693          	andi	a3,a1,1
   1e0fc:	00068463          	beq	a3,zero,1e104 <__muldi3+0x14>
   1e100:	00c50533          	add	a0,a0,a2
   1e104:	0015d593          	srli	a1,a1,0x1
   1e108:	00161613          	slli	a2,a2,0x1
   1e10c:	fe0596e3          	bne	a1,zero,1e0f8 <__muldi3+0x8>
   1e110:	00008067          	jalr	zero,0(ra)

000000000001e114 <__udivsi3>:
   1e114:	02051513          	slli	a0,a0,0x20
   1e118:	02059593          	slli	a1,a1,0x20
   1e11c:	00008293          	addi	t0,ra,0
   1e120:	03c000ef          	jal	ra,1e15c <__hidden___udivdi3>
   1e124:	0005051b          	addiw	a0,a0,0
   1e128:	00028067          	jalr	zero,0(t0)

000000000001e12c <__umodsi3>:
   1e12c:	02051513          	slli	a0,a0,0x20
   1e130:	02059593          	slli	a1,a1,0x20
   1e134:	02055513          	srli	a0,a0,0x20
   1e138:	0205d593          	srli	a1,a1,0x20
   1e13c:	00008293          	addi	t0,ra,0
   1e140:	01c000ef          	jal	ra,1e15c <__hidden___udivdi3>
   1e144:	0005851b          	addiw	a0,a1,0
   1e148:	00028067          	jalr	zero,0(t0)

000000000001e14c <__divsi3>:
   1e14c:	fff00293          	addi	t0,zero,-1
   1e150:	0a558c63          	beq	a1,t0,1e208 <__moddi3+0x30>

000000000001e154 <__divdi3>:
   1e154:	06054063          	blt	a0,zero,1e1b4 <__umoddi3+0x10>
   1e158:	0605c663          	blt	a1,zero,1e1c4 <__umoddi3+0x20>

000000000001e15c <__hidden___udivdi3>:
   1e15c:	00058613          	addi	a2,a1,0
   1e160:	00050593          	addi	a1,a0,0
   1e164:	fff00513          	addi	a0,zero,-1
   1e168:	02060c63          	beq	a2,zero,1e1a0 <__hidden___udivdi3+0x44>
   1e16c:	00100693          	addi	a3,zero,1
   1e170:	00b67a63          	bgeu	a2,a1,1e184 <__hidden___udivdi3+0x28>
   1e174:	00c05863          	bge	zero,a2,1e184 <__hidden___udivdi3+0x28>
   1e178:	00161613          	slli	a2,a2,0x1
   1e17c:	00169693          	slli	a3,a3,0x1
   1e180:	feb66ae3          	bltu	a2,a1,1e174 <__hidden___udivdi3+0x18>
   1e184:	00000513          	addi	a0,zero,0
   1e188:	00c5e663          	bltu	a1,a2,1e194 <__hidden___udivdi3+0x38>
   1e18c:	40c585b3          	sub	a1,a1,a2
   1e190:	00d56533          	or	a0,a0,a3
   1e194:	0016d693          	srli	a3,a3,0x1
   1e198:	00165613          	srli	a2,a2,0x1
   1e19c:	fe0696e3          	bne	a3,zero,1e188 <__hidden___udivdi3+0x2c>
   1e1a0:	00008067          	jalr	zero,0(ra)

000000000001e1a4 <__umoddi3>:
   1e1a4:	00008293          	addi	t0,ra,0
   1e1a8:	fb5ff0ef          	jal	ra,1e15c <__hidden___udivdi3>
   1e1ac:	00058513          	addi	a0,a1,0
   1e1b0:	00028067          	jalr	zero,0(t0)
   1e1b4:	40a00533          	sub	a0,zero,a0
   1e1b8:	00b04863          	blt	zero,a1,1e1c8 <__umoddi3+0x24>
   1e1bc:	40b005b3          	sub	a1,zero,a1
   1e1c0:	f9dff06f          	jal	zero,1e15c <__hidden___udivdi3>
   1e1c4:	40b005b3          	sub	a1,zero,a1
   1e1c8:	00008293          	addi	t0,ra,0
   1e1cc:	f91ff0ef          	jal	ra,1e15c <__hidden___udivdi3>
   1e1d0:	40a00533          	sub	a0,zero,a0
   1e1d4:	00028067          	jalr	zero,0(t0)

000000000001e1d8 <__moddi3>:
   1e1d8:	00008293          	addi	t0,ra,0
   1e1dc:	0005ca63          	blt	a1,zero,1e1f0 <__moddi3+0x18>
   1e1e0:	00054c63          	blt	a0,zero,1e1f8 <__moddi3+0x20>
   1e1e4:	f79ff0ef          	jal	ra,1e15c <__hidden___udivdi3>
   1e1e8:	00058513          	addi	a0,a1,0
   1e1ec:	00028067          	jalr	zero,0(t0)
   1e1f0:	40b005b3          	sub	a1,zero,a1
   1e1f4:	fe0558e3          	bge	a0,zero,1e1e4 <__moddi3+0xc>
   1e1f8:	40a00533          	sub	a0,zero,a0
   1e1fc:	f61ff0ef          	jal	ra,1e15c <__hidden___udivdi3>
   1e200:	40b00533          	sub	a0,zero,a1
   1e204:	00028067          	jalr	zero,0(t0)
   1e208:	01f29293          	slli	t0,t0,0x1f
   1e20c:	f45514e3          	bne	a0,t0,1e154 <__divdi3>
   1e210:	00008067          	jalr	zero,0(ra)

000000000001e214 <__clzdi2>:
   1e214:	03800793          	addi	a5,zero,56
   1e218:	00f55733          	srl	a4,a0,a5
   1e21c:	0ff77693          	andi	a3,a4,255
   1e220:	02069663          	bne	a3,zero,1e24c <__clzdi2+0x38>
   1e224:	ff878793          	addi	a5,a5,-8
   1e228:	fe0798e3          	bne	a5,zero,1e218 <__clzdi2+0x4>
   1e22c:	04000713          	addi	a4,zero,64
   1e230:	40f70733          	sub	a4,a4,a5
   1e234:	0001f7b7          	lui	a5,0x1f
   1e238:	9b078793          	addi	a5,a5,-1616 # 1e9b0 <__clz_tab>
   1e23c:	00a787b3          	add	a5,a5,a0
   1e240:	0007c503          	lbu	a0,0(a5)
   1e244:	40a7053b          	subw	a0,a4,a0
   1e248:	00008067          	jalr	zero,0(ra)
   1e24c:	00070513          	addi	a0,a4,0
   1e250:	fddff06f          	jal	zero,1e22c <__clzdi2+0x18>
