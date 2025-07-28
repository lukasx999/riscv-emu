
bin:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010120 <exit>:
   10120:	1141                	c.addi	sp,-16
   10122:	4581                	c.li	a1,0
   10124:	e022                	c.sdsp	s0,0(sp)
   10126:	e406                	c.sdsp	ra,8(sp)
   10128:	842a                	c.mv	s0,a0
   1012a:	107000ef          	jal	ra,10a30 <__call_exitprocs>
   1012e:	1b01b783          	ld	a5,432(gp) # 129c8 <__stdio_exit_handler>
   10132:	c391                	c.beqz	a5,10136 <exit+0x16>
   10134:	9782                	c.jalr	a5
   10136:	8522                	c.mv	a0,s0
   10138:	720010ef          	jal	ra,11858 <_exit>

000000000001013c <register_fini>:
   1013c:	00000793          	addi	a5,zero,0
   10140:	c789                	c.beqz	a5,1014a <register_fini+0xe>
   10142:	6545                	c.lui	a0,0x11
   10144:	8a050513          	addi	a0,a0,-1888 # 108a0 <__libc_fini_array>
   10148:	a8f1                	c.j	10224 <atexit>
   1014a:	8082                	c.jr	ra

000000000001014c <_start>:
   1014c:	00002197          	auipc	gp,0x2
   10150:	6cc18193          	addi	gp,gp,1740 # 12818 <__global_pointer$>
   10154:	1a818513          	addi	a0,gp,424 # 129c0 <completed.1>
   10158:	7c018613          	addi	a2,gp,1984 # 12fd8 <__BSS_END__>
   1015c:	8e09                	c.sub	a2,a0
   1015e:	4581                	c.li	a1,0
   10160:	78c000ef          	jal	ra,108ec <memset>
   10164:	00000517          	auipc	a0,0x0
   10168:	73c50513          	addi	a0,a0,1852 # 108a0 <__libc_fini_array>
   1016c:	0b8000ef          	jal	ra,10224 <atexit>
   10170:	6c6000ef          	jal	ra,10836 <__libc_init_array>
   10174:	4502                	c.lwsp	a0,0(sp)
   10176:	002c                	c.addi4spn	a1,sp,8
   10178:	4601                	c.li	a2,0
   1017a:	096000ef          	jal	ra,10210 <main>
   1017e:	b74d                	c.j	10120 <exit>

0000000000010180 <deregister_tm_clones>:
   10180:	18018713          	addi	a4,gp,384 # 12998 <__TMC_END__>
   10184:	18018793          	addi	a5,gp,384 # 12998 <__TMC_END__>
   10188:	00e78863          	beq	a5,a4,10198 <deregister_tm_clones+0x18>
   1018c:	00000793          	addi	a5,zero,0
   10190:	c781                	c.beqz	a5,10198 <deregister_tm_clones+0x18>
   10192:	18018513          	addi	a0,gp,384 # 12998 <__TMC_END__>
   10196:	8782                	c.jr	a5
   10198:	8082                	c.jr	ra

000000000001019a <register_tm_clones>:
   1019a:	18018593          	addi	a1,gp,384 # 12998 <__TMC_END__>
   1019e:	18018793          	addi	a5,gp,384 # 12998 <__TMC_END__>
   101a2:	8d9d                	c.sub	a1,a5
   101a4:	858d                	c.srai	a1,0x3
   101a6:	4789                	c.li	a5,2
   101a8:	02f5c5b3          	div	a1,a1,a5
   101ac:	c599                	c.beqz	a1,101ba <register_tm_clones+0x20>
   101ae:	00000793          	addi	a5,zero,0
   101b2:	c781                	c.beqz	a5,101ba <register_tm_clones+0x20>
   101b4:	18018513          	addi	a0,gp,384 # 12998 <__TMC_END__>
   101b8:	8782                	c.jr	a5
   101ba:	8082                	c.jr	ra

00000000000101bc <__do_global_dtors_aux>:
   101bc:	1141                	c.addi	sp,-16
   101be:	e022                	c.sdsp	s0,0(sp)
   101c0:	1a81c783          	lbu	a5,424(gp) # 129c0 <completed.1>
   101c4:	e406                	c.sdsp	ra,8(sp)
   101c6:	e385                	c.bnez	a5,101e6 <__do_global_dtors_aux+0x2a>
   101c8:	fb9ff0ef          	jal	ra,10180 <deregister_tm_clones>
   101cc:	00000793          	addi	a5,zero,0
   101d0:	cb81                	c.beqz	a5,101e0 <__do_global_dtors_aux+0x24>
   101d2:	6549                	c.lui	a0,0x12
   101d4:	95850513          	addi	a0,a0,-1704 # 11958 <__EH_FRAME_BEGIN__>
   101d8:	00000097          	auipc	ra,0x0
   101dc:	000000e7          	jalr	ra,0(zero) # 0 <exit-0x10120>
   101e0:	4785                	c.li	a5,1
   101e2:	1af18423          	sb	a5,424(gp) # 129c0 <completed.1>
   101e6:	60a2                	c.ldsp	ra,8(sp)
   101e8:	6402                	c.ldsp	s0,0(sp)
   101ea:	0141                	c.addi	sp,16
   101ec:	8082                	c.jr	ra

00000000000101ee <frame_dummy>:
   101ee:	00000793          	addi	a5,zero,0
   101f2:	cf91                	c.beqz	a5,1020e <frame_dummy+0x20>
   101f4:	6549                	c.lui	a0,0x12
   101f6:	1141                	c.addi	sp,-16
   101f8:	22818593          	addi	a1,gp,552 # 12a40 <object.0>
   101fc:	95850513          	addi	a0,a0,-1704 # 11958 <__EH_FRAME_BEGIN__>
   10200:	e406                	c.sdsp	ra,8(sp)
   10202:	00000097          	auipc	ra,0x0
   10206:	000000e7          	jalr	ra,0(zero) # 0 <exit-0x10120>
   1020a:	60a2                	c.ldsp	ra,8(sp)
   1020c:	0141                	c.addi	sp,16
   1020e:	b771                	c.j	1019a <register_tm_clones>

0000000000010210 <main>:
   10210:	1141                	c.addi	sp,-16
   10212:	e406                	c.sdsp	ra,8(sp)
   10214:	e022                	c.sdsp	s0,0(sp)
   10216:	0800                	c.addi4spn	s0,sp,16
   10218:	4781                	c.li	a5,0
   1021a:	853e                	c.mv	a0,a5
   1021c:	60a2                	c.ldsp	ra,8(sp)
   1021e:	6402                	c.ldsp	s0,0(sp)
   10220:	0141                	c.addi	sp,16
   10222:	8082                	c.jr	ra

0000000000010224 <atexit>:
   10224:	85aa                	c.mv	a1,a0
   10226:	4681                	c.li	a3,0
   10228:	4601                	c.li	a2,0
   1022a:	4501                	c.li	a0,0
   1022c:	76a0006f          	jal	zero,10996 <__register_exitproc>

0000000000010230 <stdio_exit_handler>:
   10230:	6649                	c.lui	a2,0x12
   10232:	65c5                	c.lui	a1,0x11
   10234:	6549                	c.lui	a0,0x12
   10236:	01860613          	addi	a2,a2,24 # 12018 <__sglue>
   1023a:	45858593          	addi	a1,a1,1112 # 11458 <_fclose_r>
   1023e:	03050513          	addi	a0,a0,48 # 12030 <_impure_data>
   10242:	ae05                	c.j	10572 <_fwalk_sglue>

0000000000010244 <cleanup_stdio>:
   10244:	650c                	c.ld	a1,8(a0)
   10246:	1141                	c.addi	sp,-16
   10248:	e022                	c.sdsp	s0,0(sp)
   1024a:	e406                	c.sdsp	ra,8(sp)
   1024c:	25818793          	addi	a5,gp,600 # 12a70 <__sf>
   10250:	842a                	c.mv	s0,a0
   10252:	00f58463          	beq	a1,a5,1025a <cleanup_stdio+0x16>
   10256:	202010ef          	jal	ra,11458 <_fclose_r>
   1025a:	680c                	c.ld	a1,16(s0)
   1025c:	31018793          	addi	a5,gp,784 # 12b28 <__sf+0xb8>
   10260:	00f58563          	beq	a1,a5,1026a <cleanup_stdio+0x26>
   10264:	8522                	c.mv	a0,s0
   10266:	1f2010ef          	jal	ra,11458 <_fclose_r>
   1026a:	6c0c                	c.ld	a1,24(s0)
   1026c:	3c818793          	addi	a5,gp,968 # 12be0 <__sf+0x170>
   10270:	00f58863          	beq	a1,a5,10280 <cleanup_stdio+0x3c>
   10274:	8522                	c.mv	a0,s0
   10276:	6402                	c.ldsp	s0,0(sp)
   10278:	60a2                	c.ldsp	ra,8(sp)
   1027a:	0141                	c.addi	sp,16
   1027c:	1dc0106f          	jal	zero,11458 <_fclose_r>
   10280:	60a2                	c.ldsp	ra,8(sp)
   10282:	6402                	c.ldsp	s0,0(sp)
   10284:	0141                	c.addi	sp,16
   10286:	8082                	c.jr	ra

0000000000010288 <__fp_lock>:
   10288:	0b05a783          	lw	a5,176(a1)
   1028c:	8b85                	c.andi	a5,1
   1028e:	e791                	c.bnez	a5,1029a <__fp_lock+0x12>
   10290:	0105d783          	lhu	a5,16(a1)
   10294:	2007f793          	andi	a5,a5,512
   10298:	c399                	c.beqz	a5,1029e <__fp_lock+0x16>
   1029a:	4501                	c.li	a0,0
   1029c:	8082                	c.jr	ra
   1029e:	71c8                	c.ld	a0,160(a1)
   102a0:	1141                	c.addi	sp,-16
   102a2:	e406                	c.sdsp	ra,8(sp)
   102a4:	63a000ef          	jal	ra,108de <__retarget_lock_acquire_recursive>
   102a8:	60a2                	c.ldsp	ra,8(sp)
   102aa:	4501                	c.li	a0,0
   102ac:	0141                	c.addi	sp,16
   102ae:	8082                	c.jr	ra

00000000000102b0 <__fp_unlock>:
   102b0:	0b05a783          	lw	a5,176(a1)
   102b4:	8b85                	c.andi	a5,1
   102b6:	e791                	c.bnez	a5,102c2 <__fp_unlock+0x12>
   102b8:	0105d783          	lhu	a5,16(a1)
   102bc:	2007f793          	andi	a5,a5,512
   102c0:	c399                	c.beqz	a5,102c6 <__fp_unlock+0x16>
   102c2:	4501                	c.li	a0,0
   102c4:	8082                	c.jr	ra
   102c6:	71c8                	c.ld	a0,160(a1)
   102c8:	1141                	c.addi	sp,-16
   102ca:	e406                	c.sdsp	ra,8(sp)
   102cc:	61e000ef          	jal	ra,108ea <__retarget_lock_release_recursive>
   102d0:	60a2                	c.ldsp	ra,8(sp)
   102d2:	4501                	c.li	a0,0
   102d4:	0141                	c.addi	sp,16
   102d6:	8082                	c.jr	ra

00000000000102d8 <global_stdio_init.part.0>:
   102d8:	7179                	c.addi16sp	sp,-48
   102da:	f022                	c.sdsp	s0,32(sp)
   102dc:	67c1                	c.lui	a5,0x10
   102de:	25818413          	addi	s0,gp,600 # 12a70 <__sf>
   102e2:	f406                	c.sdsp	ra,40(sp)
   102e4:	ec26                	c.sdsp	s1,24(sp)
   102e6:	e84a                	c.sdsp	s2,16(sp)
   102e8:	e44e                	c.sdsp	s3,8(sp)
   102ea:	e052                	c.sdsp	s4,0(sp)
   102ec:	4711                	c.li	a4,4
   102ee:	23078793          	addi	a5,a5,560 # 10230 <stdio_exit_handler>
   102f2:	4621                	c.li	a2,8
   102f4:	4581                	c.li	a1,0
   102f6:	30018513          	addi	a0,gp,768 # 12b18 <__sf+0xa8>
   102fa:	1af1b823          	sd	a5,432(gp) # 129c8 <__stdio_exit_handler>
   102fe:	c818                	c.sw	a4,16(s0)
   10300:	00043023          	sd	zero,0(s0)
   10304:	00043423          	sd	zero,8(s0)
   10308:	0a042823          	sw	zero,176(s0)
   1030c:	00043c23          	sd	zero,24(s0)
   10310:	02042023          	sw	zero,32(s0)
   10314:	02042423          	sw	zero,40(s0)
   10318:	5d4000ef          	jal	ra,108ec <memset>
   1031c:	6a41                	c.lui	s4,0x10
   1031e:	69c1                	c.lui	s3,0x10
   10320:	6941                	c.lui	s2,0x10
   10322:	64c1                	c.lui	s1,0x10
   10324:	5f4a0a13          	addi	s4,s4,1524 # 105f4 <__sread>
   10328:	63098993          	addi	s3,s3,1584 # 10630 <__swrite>
   1032c:	68290913          	addi	s2,s2,1666 # 10682 <__sseek>
   10330:	6c048493          	addi	s1,s1,1728 # 106c0 <__sclose>
   10334:	2f818513          	addi	a0,gp,760 # 12b10 <__sf+0xa0>
   10338:	03443c23          	sd	s4,56(s0)
   1033c:	05343023          	sd	s3,64(s0)
   10340:	05243423          	sd	s2,72(s0)
   10344:	e824                	c.sd	s1,80(s0)
   10346:	f800                	c.sd	s0,48(s0)
   10348:	58e000ef          	jal	ra,108d6 <__retarget_lock_init_recursive>
   1034c:	67c1                	c.lui	a5,0x10
   1034e:	07a5                	c.addi	a5,9 # 10009 <exit-0x117>
   10350:	4621                	c.li	a2,8
   10352:	4581                	c.li	a1,0
   10354:	3b818513          	addi	a0,gp,952 # 12bd0 <__sf+0x160>
   10358:	0cf42423          	sw	a5,200(s0)
   1035c:	0a043c23          	sd	zero,184(s0)
   10360:	0c043023          	sd	zero,192(s0)
   10364:	16042423          	sw	zero,360(s0)
   10368:	0c043823          	sd	zero,208(s0)
   1036c:	0c042c23          	sw	zero,216(s0)
   10370:	0e042023          	sw	zero,224(s0)
   10374:	578000ef          	jal	ra,108ec <memset>
   10378:	31018793          	addi	a5,gp,784 # 12b28 <__sf+0xb8>
   1037c:	3b018513          	addi	a0,gp,944 # 12bc8 <__sf+0x158>
   10380:	0f443823          	sd	s4,240(s0)
   10384:	0f343c23          	sd	s3,248(s0)
   10388:	11243023          	sd	s2,256(s0)
   1038c:	10943423          	sd	s1,264(s0)
   10390:	f47c                	c.sd	a5,232(s0)
   10392:	544000ef          	jal	ra,108d6 <__retarget_lock_init_recursive>
   10396:	000207b7          	lui	a5,0x20
   1039a:	07c9                	c.addi	a5,18 # 20012 <__BSS_END__+0xd03a>
   1039c:	47018513          	addi	a0,gp,1136 # 12c88 <__sf+0x218>
   103a0:	4621                	c.li	a2,8
   103a2:	4581                	c.li	a1,0
   103a4:	18f42023          	sw	a5,384(s0)
   103a8:	16043823          	sd	zero,368(s0)
   103ac:	16043c23          	sd	zero,376(s0)
   103b0:	22042023          	sw	zero,544(s0)
   103b4:	18043423          	sd	zero,392(s0)
   103b8:	18042823          	sw	zero,400(s0)
   103bc:	18042c23          	sw	zero,408(s0)
   103c0:	52c000ef          	jal	ra,108ec <memset>
   103c4:	3c818793          	addi	a5,gp,968 # 12be0 <__sf+0x170>
   103c8:	1b443423          	sd	s4,424(s0)
   103cc:	1b343823          	sd	s3,432(s0)
   103d0:	1b243c23          	sd	s2,440(s0)
   103d4:	1c943023          	sd	s1,448(s0)
   103d8:	1af43023          	sd	a5,416(s0)
   103dc:	7402                	c.ldsp	s0,32(sp)
   103de:	70a2                	c.ldsp	ra,40(sp)
   103e0:	64e2                	c.ldsp	s1,24(sp)
   103e2:	6942                	c.ldsp	s2,16(sp)
   103e4:	69a2                	c.ldsp	s3,8(sp)
   103e6:	6a02                	c.ldsp	s4,0(sp)
   103e8:	46818513          	addi	a0,gp,1128 # 12c80 <__sf+0x210>
   103ec:	6145                	c.addi16sp	sp,48
   103ee:	a1e5                	c.j	108d6 <__retarget_lock_init_recursive>

00000000000103f0 <__sfp>:
   103f0:	7179                	c.addi16sp	sp,-48
   103f2:	e84a                	c.sdsp	s2,16(sp)
   103f4:	e44e                	c.sdsp	s3,8(sp)
   103f6:	89aa                	c.mv	s3,a0
   103f8:	1f818513          	addi	a0,gp,504 # 12a10 <__lock___sfp_recursive_mutex>
   103fc:	f406                	c.sdsp	ra,40(sp)
   103fe:	f022                	c.sdsp	s0,32(sp)
   10400:	ec26                	c.sdsp	s1,24(sp)
   10402:	e052                	c.sdsp	s4,0(sp)
   10404:	4da000ef          	jal	ra,108de <__retarget_lock_acquire_recursive>
   10408:	1b01b783          	ld	a5,432(gp) # 129c8 <__stdio_exit_handler>
   1040c:	cfd5                	c.beqz	a5,104c8 <__sfp+0xd8>
   1040e:	64c9                	c.lui	s1,0x12
   10410:	01848493          	addi	s1,s1,24 # 12018 <__sglue>
   10414:	0b800a13          	addi	s4,zero,184
   10418:	4498                	c.lw	a4,8(s1)
   1041a:	6880                	c.ld	s0,16(s1)
   1041c:	06e05d63          	bge	zero,a4,10496 <__sfp+0xa6>
   10420:	1702                	c.slli	a4,0x20
   10422:	9301                	c.srli	a4,0x20
   10424:	03470733          	mul	a4,a4,s4
   10428:	9722                	c.add	a4,s0
   1042a:	a029                	c.j	10434 <__sfp+0x44>
   1042c:	0b840413          	addi	s0,s0,184
   10430:	06e40363          	beq	s0,a4,10496 <__sfp+0xa6>
   10434:	01041783          	lh	a5,16(s0)
   10438:	fbf5                	c.bnez	a5,1042c <__sfp+0x3c>
   1043a:	77c1                	c.lui	a5,0xffff0
   1043c:	0785                	c.addi	a5,1 # ffffffffffff0001 <__BSS_END__+0xfffffffffffdd029>
   1043e:	c81c                	c.sw	a5,16(s0)
   10440:	0a040513          	addi	a0,s0,160
   10444:	0a042823          	sw	zero,176(s0)
   10448:	48e000ef          	jal	ra,108d6 <__retarget_lock_init_recursive>
   1044c:	1f818513          	addi	a0,gp,504 # 12a10 <__lock___sfp_recursive_mutex>
   10450:	49a000ef          	jal	ra,108ea <__retarget_lock_release_recursive>
   10454:	0a840513          	addi	a0,s0,168
   10458:	00043023          	sd	zero,0(s0)
   1045c:	00043423          	sd	zero,8(s0)
   10460:	00043c23          	sd	zero,24(s0)
   10464:	02042023          	sw	zero,32(s0)
   10468:	02042423          	sw	zero,40(s0)
   1046c:	4621                	c.li	a2,8
   1046e:	4581                	c.li	a1,0
   10470:	47c000ef          	jal	ra,108ec <memset>
   10474:	04043c23          	sd	zero,88(s0)
   10478:	06042023          	sw	zero,96(s0)
   1047c:	06043c23          	sd	zero,120(s0)
   10480:	08042023          	sw	zero,128(s0)
   10484:	70a2                	c.ldsp	ra,40(sp)
   10486:	8522                	c.mv	a0,s0
   10488:	7402                	c.ldsp	s0,32(sp)
   1048a:	64e2                	c.ldsp	s1,24(sp)
   1048c:	6942                	c.ldsp	s2,16(sp)
   1048e:	69a2                	c.ldsp	s3,8(sp)
   10490:	6a02                	c.ldsp	s4,0(sp)
   10492:	6145                	c.addi16sp	sp,48
   10494:	8082                	c.jr	ra
   10496:	6080                	c.ld	s0,0(s1)
   10498:	c019                	c.beqz	s0,1049e <__sfp+0xae>
   1049a:	84a2                	c.mv	s1,s0
   1049c:	bfb5                	c.j	10418 <__sfp+0x28>
   1049e:	2f800593          	addi	a1,zero,760
   104a2:	854e                	c.mv	a0,s3
   104a4:	179000ef          	jal	ra,10e1c <_malloc_r>
   104a8:	842a                	c.mv	s0,a0
   104aa:	c115                	c.beqz	a0,104ce <__sfp+0xde>
   104ac:	4791                	c.li	a5,4
   104ae:	0561                	c.addi	a0,24
   104b0:	00043023          	sd	zero,0(s0)
   104b4:	c41c                	c.sw	a5,8(s0)
   104b6:	e808                	c.sd	a0,16(s0)
   104b8:	2e000613          	addi	a2,zero,736
   104bc:	4581                	c.li	a1,0
   104be:	42e000ef          	jal	ra,108ec <memset>
   104c2:	e080                	c.sd	s0,0(s1)
   104c4:	84a2                	c.mv	s1,s0
   104c6:	bf89                	c.j	10418 <__sfp+0x28>
   104c8:	e11ff0ef          	jal	ra,102d8 <global_stdio_init.part.0>
   104cc:	b789                	c.j	1040e <__sfp+0x1e>
   104ce:	0004b023          	sd	zero,0(s1)
   104d2:	1f818513          	addi	a0,gp,504 # 12a10 <__lock___sfp_recursive_mutex>
   104d6:	414000ef          	jal	ra,108ea <__retarget_lock_release_recursive>
   104da:	47b1                	c.li	a5,12
   104dc:	00f9a023          	sw	a5,0(s3)
   104e0:	b755                	c.j	10484 <__sfp+0x94>

00000000000104e2 <__sinit>:
   104e2:	1101                	c.addi	sp,-32
   104e4:	e426                	c.sdsp	s1,8(sp)
   104e6:	e822                	c.sdsp	s0,16(sp)
   104e8:	842a                	c.mv	s0,a0
   104ea:	1f818513          	addi	a0,gp,504 # 12a10 <__lock___sfp_recursive_mutex>
   104ee:	ec06                	c.sdsp	ra,24(sp)
   104f0:	3ee000ef          	jal	ra,108de <__retarget_lock_acquire_recursive>
   104f4:	643c                	c.ld	a5,72(s0)
   104f6:	eb81                	c.bnez	a5,10506 <__sinit+0x24>
   104f8:	67c1                	c.lui	a5,0x10
   104fa:	1b01b703          	ld	a4,432(gp) # 129c8 <__stdio_exit_handler>
   104fe:	24478793          	addi	a5,a5,580 # 10244 <cleanup_stdio>
   10502:	e43c                	c.sd	a5,72(s0)
   10504:	cb01                	c.beqz	a4,10514 <__sinit+0x32>
   10506:	6442                	c.ldsp	s0,16(sp)
   10508:	60e2                	c.ldsp	ra,24(sp)
   1050a:	1f818513          	addi	a0,gp,504 # 12a10 <__lock___sfp_recursive_mutex>
   1050e:	64a2                	c.ldsp	s1,8(sp)
   10510:	6105                	c.addi16sp	sp,32
   10512:	aee1                	c.j	108ea <__retarget_lock_release_recursive>
   10514:	dc5ff0ef          	jal	ra,102d8 <global_stdio_init.part.0>
   10518:	6442                	c.ldsp	s0,16(sp)
   1051a:	60e2                	c.ldsp	ra,24(sp)
   1051c:	1f818513          	addi	a0,gp,504 # 12a10 <__lock___sfp_recursive_mutex>
   10520:	64a2                	c.ldsp	s1,8(sp)
   10522:	6105                	c.addi16sp	sp,32
   10524:	a6d9                	c.j	108ea <__retarget_lock_release_recursive>

0000000000010526 <__sfp_lock_acquire>:
   10526:	1f818513          	addi	a0,gp,504 # 12a10 <__lock___sfp_recursive_mutex>
   1052a:	ae55                	c.j	108de <__retarget_lock_acquire_recursive>

000000000001052c <__sfp_lock_release>:
   1052c:	1f818513          	addi	a0,gp,504 # 12a10 <__lock___sfp_recursive_mutex>
   10530:	ae6d                	c.j	108ea <__retarget_lock_release_recursive>

0000000000010532 <__fp_lock_all>:
   10532:	1141                	c.addi	sp,-16
   10534:	1f818513          	addi	a0,gp,504 # 12a10 <__lock___sfp_recursive_mutex>
   10538:	e406                	c.sdsp	ra,8(sp)
   1053a:	3a4000ef          	jal	ra,108de <__retarget_lock_acquire_recursive>
   1053e:	60a2                	c.ldsp	ra,8(sp)
   10540:	6649                	c.lui	a2,0x12
   10542:	65c1                	c.lui	a1,0x10
   10544:	01860613          	addi	a2,a2,24 # 12018 <__sglue>
   10548:	28858593          	addi	a1,a1,648 # 10288 <__fp_lock>
   1054c:	4501                	c.li	a0,0
   1054e:	0141                	c.addi	sp,16
   10550:	a00d                	c.j	10572 <_fwalk_sglue>

0000000000010552 <__fp_unlock_all>:
   10552:	6649                	c.lui	a2,0x12
   10554:	65c1                	c.lui	a1,0x10
   10556:	1141                	c.addi	sp,-16
   10558:	01860613          	addi	a2,a2,24 # 12018 <__sglue>
   1055c:	2b058593          	addi	a1,a1,688 # 102b0 <__fp_unlock>
   10560:	4501                	c.li	a0,0
   10562:	e406                	c.sdsp	ra,8(sp)
   10564:	00e000ef          	jal	ra,10572 <_fwalk_sglue>
   10568:	60a2                	c.ldsp	ra,8(sp)
   1056a:	1f818513          	addi	a0,gp,504 # 12a10 <__lock___sfp_recursive_mutex>
   1056e:	0141                	c.addi	sp,16
   10570:	aead                	c.j	108ea <__retarget_lock_release_recursive>

0000000000010572 <_fwalk_sglue>:
   10572:	715d                	c.addi16sp	sp,-80
   10574:	f84a                	c.sdsp	s2,48(sp)
   10576:	f44e                	c.sdsp	s3,40(sp)
   10578:	f052                	c.sdsp	s4,32(sp)
   1057a:	ec56                	c.sdsp	s5,24(sp)
   1057c:	e85a                	c.sdsp	s6,16(sp)
   1057e:	e45e                	c.sdsp	s7,8(sp)
   10580:	e062                	c.sdsp	s8,0(sp)
   10582:	e486                	c.sdsp	ra,72(sp)
   10584:	e0a2                	c.sdsp	s0,64(sp)
   10586:	fc26                	c.sdsp	s1,56(sp)
   10588:	8a2a                	c.mv	s4,a0
   1058a:	8b2e                	c.mv	s6,a1
   1058c:	89b2                	c.mv	s3,a2
   1058e:	4901                	c.li	s2,0
   10590:	0b800b93          	addi	s7,zero,184
   10594:	4c05                	c.li	s8,1
   10596:	5afd                	c.li	s5,-1
   10598:	0089a483          	lw	s1,8(s3)
   1059c:	0109b403          	ld	s0,16(s3)
   105a0:	02905963          	bge	zero,s1,105d2 <_fwalk_sglue+0x60>
   105a4:	1482                	c.slli	s1,0x20
   105a6:	9081                	c.srli	s1,0x20
   105a8:	037484b3          	mul	s1,s1,s7
   105ac:	94a2                	c.add	s1,s0
   105ae:	01045783          	lhu	a5,16(s0)
   105b2:	00fc7c63          	bgeu	s8,a5,105ca <_fwalk_sglue+0x58>
   105b6:	01241783          	lh	a5,18(s0)
   105ba:	85a2                	c.mv	a1,s0
   105bc:	8552                	c.mv	a0,s4
   105be:	01578663          	beq	a5,s5,105ca <_fwalk_sglue+0x58>
   105c2:	9b02                	c.jalr	s6
   105c4:	01256933          	or	s2,a0,s2
   105c8:	2901                	c.addiw	s2,0
   105ca:	0b840413          	addi	s0,s0,184
   105ce:	fe9410e3          	bne	s0,s1,105ae <_fwalk_sglue+0x3c>
   105d2:	0009b983          	ld	s3,0(s3)
   105d6:	fc0991e3          	bne	s3,zero,10598 <_fwalk_sglue+0x26>
   105da:	60a6                	c.ldsp	ra,72(sp)
   105dc:	6406                	c.ldsp	s0,64(sp)
   105de:	74e2                	c.ldsp	s1,56(sp)
   105e0:	79a2                	c.ldsp	s3,40(sp)
   105e2:	7a02                	c.ldsp	s4,32(sp)
   105e4:	6ae2                	c.ldsp	s5,24(sp)
   105e6:	6b42                	c.ldsp	s6,16(sp)
   105e8:	6ba2                	c.ldsp	s7,8(sp)
   105ea:	6c02                	c.ldsp	s8,0(sp)
   105ec:	854a                	c.mv	a0,s2
   105ee:	7942                	c.ldsp	s2,48(sp)
   105f0:	6161                	c.addi16sp	sp,80
   105f2:	8082                	c.jr	ra

00000000000105f4 <__sread>:
   105f4:	1141                	c.addi	sp,-16
   105f6:	e022                	c.sdsp	s0,0(sp)
   105f8:	842e                	c.mv	s0,a1
   105fa:	01259583          	lh	a1,18(a1)
   105fe:	e406                	c.sdsp	ra,8(sp)
   10600:	1be000ef          	jal	ra,107be <_read_r>
   10604:	00054963          	blt	a0,zero,10616 <__sread+0x22>
   10608:	685c                	c.ld	a5,144(s0)
   1060a:	60a2                	c.ldsp	ra,8(sp)
   1060c:	97aa                	c.add	a5,a0
   1060e:	e85c                	c.sd	a5,144(s0)
   10610:	6402                	c.ldsp	s0,0(sp)
   10612:	0141                	c.addi	sp,16
   10614:	8082                	c.jr	ra
   10616:	01045783          	lhu	a5,16(s0)
   1061a:	777d                	c.lui	a4,0xfffff
   1061c:	177d                	c.addi	a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffec027>
   1061e:	8ff9                	c.and	a5,a4
   10620:	60a2                	c.ldsp	ra,8(sp)
   10622:	00f41823          	sh	a5,16(s0)
   10626:	6402                	c.ldsp	s0,0(sp)
   10628:	0141                	c.addi	sp,16
   1062a:	8082                	c.jr	ra

000000000001062c <__seofread>:
   1062c:	4501                	c.li	a0,0
   1062e:	8082                	c.jr	ra

0000000000010630 <__swrite>:
   10630:	01059783          	lh	a5,16(a1)
   10634:	7179                	c.addi16sp	sp,-48
   10636:	f022                	c.sdsp	s0,32(sp)
   10638:	ec26                	c.sdsp	s1,24(sp)
   1063a:	e84a                	c.sdsp	s2,16(sp)
   1063c:	e44e                	c.sdsp	s3,8(sp)
   1063e:	f406                	c.sdsp	ra,40(sp)
   10640:	1007f713          	andi	a4,a5,256
   10644:	842e                	c.mv	s0,a1
   10646:	8932                	c.mv	s2,a2
   10648:	89b6                	c.mv	s3,a3
   1064a:	84aa                	c.mv	s1,a0
   1064c:	e315                	c.bnez	a4,10670 <__swrite+0x40>
   1064e:	777d                	c.lui	a4,0xfffff
   10650:	177d                	c.addi	a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffec027>
   10652:	8ff9                	c.and	a5,a4
   10654:	01241583          	lh	a1,18(s0)
   10658:	00f41823          	sh	a5,16(s0)
   1065c:	7402                	c.ldsp	s0,32(sp)
   1065e:	70a2                	c.ldsp	ra,40(sp)
   10660:	86ce                	c.mv	a3,s3
   10662:	864a                	c.mv	a2,s2
   10664:	69a2                	c.ldsp	s3,8(sp)
   10666:	6942                	c.ldsp	s2,16(sp)
   10668:	8526                	c.mv	a0,s1
   1066a:	64e2                	c.ldsp	s1,24(sp)
   1066c:	6145                	c.addi16sp	sp,48
   1066e:	a271                	c.j	107fa <_write_r>
   10670:	01259583          	lh	a1,18(a1)
   10674:	4689                	c.li	a3,2
   10676:	4601                	c.li	a2,0
   10678:	10a000ef          	jal	ra,10782 <_lseek_r>
   1067c:	01041783          	lh	a5,16(s0)
   10680:	b7f9                	c.j	1064e <__swrite+0x1e>

0000000000010682 <__sseek>:
   10682:	1141                	c.addi	sp,-16
   10684:	e022                	c.sdsp	s0,0(sp)
   10686:	842e                	c.mv	s0,a1
   10688:	01259583          	lh	a1,18(a1)
   1068c:	e406                	c.sdsp	ra,8(sp)
   1068e:	0f4000ef          	jal	ra,10782 <_lseek_r>
   10692:	577d                	c.li	a4,-1
   10694:	01041783          	lh	a5,16(s0)
   10698:	00e50b63          	beq	a0,a4,106ae <__sseek+0x2c>
   1069c:	6705                	c.lui	a4,0x1
   1069e:	8fd9                	c.or	a5,a4
   106a0:	60a2                	c.ldsp	ra,8(sp)
   106a2:	e848                	c.sd	a0,144(s0)
   106a4:	00f41823          	sh	a5,16(s0)
   106a8:	6402                	c.ldsp	s0,0(sp)
   106aa:	0141                	c.addi	sp,16
   106ac:	8082                	c.jr	ra
   106ae:	777d                	c.lui	a4,0xfffff
   106b0:	177d                	c.addi	a4,-1 # ffffffffffffefff <__BSS_END__+0xfffffffffffec027>
   106b2:	8ff9                	c.and	a5,a4
   106b4:	60a2                	c.ldsp	ra,8(sp)
   106b6:	00f41823          	sh	a5,16(s0)
   106ba:	6402                	c.ldsp	s0,0(sp)
   106bc:	0141                	c.addi	sp,16
   106be:	8082                	c.jr	ra

00000000000106c0 <__sclose>:
   106c0:	01259583          	lh	a1,18(a1)
   106c4:	a009                	c.j	106c6 <_close_r>

00000000000106c6 <_close_r>:
   106c6:	1101                	c.addi	sp,-32
   106c8:	e822                	c.sdsp	s0,16(sp)
   106ca:	e426                	c.sdsp	s1,8(sp)
   106cc:	842a                	c.mv	s0,a0
   106ce:	852e                	c.mv	a0,a1
   106d0:	ec06                	c.sdsp	ra,24(sp)
   106d2:	1a01ac23          	sw	zero,440(gp) # 129d0 <errno>
   106d6:	156010ef          	jal	ra,1182c <_close>
   106da:	57fd                	c.li	a5,-1
   106dc:	00f50763          	beq	a0,a5,106ea <_close_r+0x24>
   106e0:	60e2                	c.ldsp	ra,24(sp)
   106e2:	6442                	c.ldsp	s0,16(sp)
   106e4:	64a2                	c.ldsp	s1,8(sp)
   106e6:	6105                	c.addi16sp	sp,32
   106e8:	8082                	c.jr	ra
   106ea:	1b81a783          	lw	a5,440(gp) # 129d0 <errno>
   106ee:	dbed                	c.beqz	a5,106e0 <_close_r+0x1a>
   106f0:	60e2                	c.ldsp	ra,24(sp)
   106f2:	c01c                	c.sw	a5,0(s0)
   106f4:	6442                	c.ldsp	s0,16(sp)
   106f6:	64a2                	c.ldsp	s1,8(sp)
   106f8:	6105                	c.addi16sp	sp,32
   106fa:	8082                	c.jr	ra

00000000000106fc <_reclaim_reent>:
   106fc:	1881b783          	ld	a5,392(gp) # 129a0 <_impure_ptr>
   10700:	08a78063          	beq	a5,a0,10780 <_reclaim_reent+0x84>
   10704:	752c                	c.ld	a1,104(a0)
   10706:	7179                	c.addi16sp	sp,-48
   10708:	ec26                	c.sdsp	s1,24(sp)
   1070a:	f406                	c.sdsp	ra,40(sp)
   1070c:	f022                	c.sdsp	s0,32(sp)
   1070e:	84aa                	c.mv	s1,a0
   10710:	c98d                	c.beqz	a1,10742 <_reclaim_reent+0x46>
   10712:	e84a                	c.sdsp	s2,16(sp)
   10714:	e44e                	c.sdsp	s3,8(sp)
   10716:	4901                	c.li	s2,0
   10718:	20000993          	addi	s3,zero,512
   1071c:	012587b3          	add	a5,a1,s2
   10720:	6380                	c.ld	s0,0(a5)
   10722:	c801                	c.beqz	s0,10732 <_reclaim_reent+0x36>
   10724:	85a2                	c.mv	a1,s0
   10726:	6000                	c.ld	s0,0(s0)
   10728:	8526                	c.mv	a0,s1
   1072a:	4b0000ef          	jal	ra,10bda <_free_r>
   1072e:	f87d                	c.bnez	s0,10724 <_reclaim_reent+0x28>
   10730:	74ac                	c.ld	a1,104(s1)
   10732:	0921                	c.addi	s2,8
   10734:	ff3914e3          	bne	s2,s3,1071c <_reclaim_reent+0x20>
   10738:	8526                	c.mv	a0,s1
   1073a:	4a0000ef          	jal	ra,10bda <_free_r>
   1073e:	6942                	c.ldsp	s2,16(sp)
   10740:	69a2                	c.ldsp	s3,8(sp)
   10742:	68ac                	c.ld	a1,80(s1)
   10744:	c581                	c.beqz	a1,1074c <_reclaim_reent+0x50>
   10746:	8526                	c.mv	a0,s1
   10748:	492000ef          	jal	ra,10bda <_free_r>
   1074c:	70a0                	c.ld	s0,96(s1)
   1074e:	c419                	c.beqz	s0,1075c <_reclaim_reent+0x60>
   10750:	85a2                	c.mv	a1,s0
   10752:	6000                	c.ld	s0,0(s0)
   10754:	8526                	c.mv	a0,s1
   10756:	484000ef          	jal	ra,10bda <_free_r>
   1075a:	f87d                	c.bnez	s0,10750 <_reclaim_reent+0x54>
   1075c:	7cac                	c.ld	a1,120(s1)
   1075e:	c581                	c.beqz	a1,10766 <_reclaim_reent+0x6a>
   10760:	8526                	c.mv	a0,s1
   10762:	478000ef          	jal	ra,10bda <_free_r>
   10766:	64bc                	c.ld	a5,72(s1)
   10768:	c799                	c.beqz	a5,10776 <_reclaim_reent+0x7a>
   1076a:	7402                	c.ldsp	s0,32(sp)
   1076c:	70a2                	c.ldsp	ra,40(sp)
   1076e:	8526                	c.mv	a0,s1
   10770:	64e2                	c.ldsp	s1,24(sp)
   10772:	6145                	c.addi16sp	sp,48
   10774:	8782                	c.jr	a5
   10776:	70a2                	c.ldsp	ra,40(sp)
   10778:	7402                	c.ldsp	s0,32(sp)
   1077a:	64e2                	c.ldsp	s1,24(sp)
   1077c:	6145                	c.addi16sp	sp,48
   1077e:	8082                	c.jr	ra
   10780:	8082                	c.jr	ra

0000000000010782 <_lseek_r>:
   10782:	1101                	c.addi	sp,-32
   10784:	872e                	c.mv	a4,a1
   10786:	e822                	c.sdsp	s0,16(sp)
   10788:	e426                	c.sdsp	s1,8(sp)
   1078a:	85b2                	c.mv	a1,a2
   1078c:	842a                	c.mv	s0,a0
   1078e:	8636                	c.mv	a2,a3
   10790:	853a                	c.mv	a0,a4
   10792:	ec06                	c.sdsp	ra,24(sp)
   10794:	1a01ac23          	sw	zero,440(gp) # 129d0 <errno>
   10798:	0e2010ef          	jal	ra,1187a <_lseek>
   1079c:	57fd                	c.li	a5,-1
   1079e:	00f50763          	beq	a0,a5,107ac <_lseek_r+0x2a>
   107a2:	60e2                	c.ldsp	ra,24(sp)
   107a4:	6442                	c.ldsp	s0,16(sp)
   107a6:	64a2                	c.ldsp	s1,8(sp)
   107a8:	6105                	c.addi16sp	sp,32
   107aa:	8082                	c.jr	ra
   107ac:	1b81a783          	lw	a5,440(gp) # 129d0 <errno>
   107b0:	dbed                	c.beqz	a5,107a2 <_lseek_r+0x20>
   107b2:	60e2                	c.ldsp	ra,24(sp)
   107b4:	c01c                	c.sw	a5,0(s0)
   107b6:	6442                	c.ldsp	s0,16(sp)
   107b8:	64a2                	c.ldsp	s1,8(sp)
   107ba:	6105                	c.addi16sp	sp,32
   107bc:	8082                	c.jr	ra

00000000000107be <_read_r>:
   107be:	1101                	c.addi	sp,-32
   107c0:	872e                	c.mv	a4,a1
   107c2:	e822                	c.sdsp	s0,16(sp)
   107c4:	e426                	c.sdsp	s1,8(sp)
   107c6:	85b2                	c.mv	a1,a2
   107c8:	842a                	c.mv	s0,a0
   107ca:	8636                	c.mv	a2,a3
   107cc:	853a                	c.mv	a0,a4
   107ce:	ec06                	c.sdsp	ra,24(sp)
   107d0:	1a01ac23          	sw	zero,440(gp) # 129d0 <errno>
   107d4:	0d2010ef          	jal	ra,118a6 <_read>
   107d8:	57fd                	c.li	a5,-1
   107da:	00f50763          	beq	a0,a5,107e8 <_read_r+0x2a>
   107de:	60e2                	c.ldsp	ra,24(sp)
   107e0:	6442                	c.ldsp	s0,16(sp)
   107e2:	64a2                	c.ldsp	s1,8(sp)
   107e4:	6105                	c.addi16sp	sp,32
   107e6:	8082                	c.jr	ra
   107e8:	1b81a783          	lw	a5,440(gp) # 129d0 <errno>
   107ec:	dbed                	c.beqz	a5,107de <_read_r+0x20>
   107ee:	60e2                	c.ldsp	ra,24(sp)
   107f0:	c01c                	c.sw	a5,0(s0)
   107f2:	6442                	c.ldsp	s0,16(sp)
   107f4:	64a2                	c.ldsp	s1,8(sp)
   107f6:	6105                	c.addi16sp	sp,32
   107f8:	8082                	c.jr	ra

00000000000107fa <_write_r>:
   107fa:	1101                	c.addi	sp,-32
   107fc:	872e                	c.mv	a4,a1
   107fe:	e822                	c.sdsp	s0,16(sp)
   10800:	e426                	c.sdsp	s1,8(sp)
   10802:	85b2                	c.mv	a1,a2
   10804:	842a                	c.mv	s0,a0
   10806:	8636                	c.mv	a2,a3
   10808:	853a                	c.mv	a0,a4
   1080a:	ec06                	c.sdsp	ra,24(sp)
   1080c:	1a01ac23          	sw	zero,440(gp) # 129d0 <errno>
   10810:	116010ef          	jal	ra,11926 <_write>
   10814:	57fd                	c.li	a5,-1
   10816:	00f50763          	beq	a0,a5,10824 <_write_r+0x2a>
   1081a:	60e2                	c.ldsp	ra,24(sp)
   1081c:	6442                	c.ldsp	s0,16(sp)
   1081e:	64a2                	c.ldsp	s1,8(sp)
   10820:	6105                	c.addi16sp	sp,32
   10822:	8082                	c.jr	ra
   10824:	1b81a783          	lw	a5,440(gp) # 129d0 <errno>
   10828:	dbed                	c.beqz	a5,1081a <_write_r+0x20>
   1082a:	60e2                	c.ldsp	ra,24(sp)
   1082c:	c01c                	c.sw	a5,0(s0)
   1082e:	6442                	c.ldsp	s0,16(sp)
   10830:	64a2                	c.ldsp	s1,8(sp)
   10832:	6105                	c.addi16sp	sp,32
   10834:	8082                	c.jr	ra

0000000000010836 <__libc_init_array>:
   10836:	1101                	c.addi	sp,-32
   10838:	e822                	c.sdsp	s0,16(sp)
   1083a:	67c9                	c.lui	a5,0x12
   1083c:	6449                	c.lui	s0,0x12
   1083e:	e04a                	c.sdsp	s2,0(sp)
   10840:	00078793          	addi	a5,a5,0 # 12000 <__init_array_start>
   10844:	00040713          	addi	a4,s0,0 # 12000 <__init_array_start>
   10848:	ec06                	c.sdsp	ra,24(sp)
   1084a:	e426                	c.sdsp	s1,8(sp)
   1084c:	40e78933          	sub	s2,a5,a4
   10850:	00e78d63          	beq	a5,a4,1086a <__libc_init_array+0x34>
   10854:	40395913          	srai	s2,s2,0x3
   10858:	00040413          	addi	s0,s0,0
   1085c:	4481                	c.li	s1,0
   1085e:	601c                	c.ld	a5,0(s0)
   10860:	0485                	c.addi	s1,1
   10862:	0421                	c.addi	s0,8
   10864:	9782                	c.jalr	a5
   10866:	ff24ece3          	bltu	s1,s2,1085e <__libc_init_array+0x28>
   1086a:	67c9                	c.lui	a5,0x12
   1086c:	6449                	c.lui	s0,0x12
   1086e:	01078793          	addi	a5,a5,16 # 12010 <__do_global_dtors_aux_fini_array_entry>
   10872:	00040713          	addi	a4,s0,0 # 12000 <__init_array_start>
   10876:	40e78933          	sub	s2,a5,a4
   1087a:	40395913          	srai	s2,s2,0x3
   1087e:	00e78b63          	beq	a5,a4,10894 <__libc_init_array+0x5e>
   10882:	00040413          	addi	s0,s0,0
   10886:	4481                	c.li	s1,0
   10888:	601c                	c.ld	a5,0(s0)
   1088a:	0485                	c.addi	s1,1
   1088c:	0421                	c.addi	s0,8
   1088e:	9782                	c.jalr	a5
   10890:	ff24ece3          	bltu	s1,s2,10888 <__libc_init_array+0x52>
   10894:	60e2                	c.ldsp	ra,24(sp)
   10896:	6442                	c.ldsp	s0,16(sp)
   10898:	64a2                	c.ldsp	s1,8(sp)
   1089a:	6902                	c.ldsp	s2,0(sp)
   1089c:	6105                	c.addi16sp	sp,32
   1089e:	8082                	c.jr	ra

00000000000108a0 <__libc_fini_array>:
   108a0:	1101                	c.addi	sp,-32
   108a2:	e822                	c.sdsp	s0,16(sp)
   108a4:	67c9                	c.lui	a5,0x12
   108a6:	6449                	c.lui	s0,0x12
   108a8:	01840413          	addi	s0,s0,24 # 12018 <__sglue>
   108ac:	01078793          	addi	a5,a5,16 # 12010 <__do_global_dtors_aux_fini_array_entry>
   108b0:	8c1d                	c.sub	s0,a5
   108b2:	e426                	c.sdsp	s1,8(sp)
   108b4:	ec06                	c.sdsp	ra,24(sp)
   108b6:	40345493          	srai	s1,s0,0x3
   108ba:	c881                	c.beqz	s1,108ca <__libc_fini_array+0x2a>
   108bc:	1461                	c.addi	s0,-8
   108be:	943e                	c.add	s0,a5
   108c0:	601c                	c.ld	a5,0(s0)
   108c2:	14fd                	c.addi	s1,-1
   108c4:	1461                	c.addi	s0,-8
   108c6:	9782                	c.jalr	a5
   108c8:	fce5                	c.bnez	s1,108c0 <__libc_fini_array+0x20>
   108ca:	60e2                	c.ldsp	ra,24(sp)
   108cc:	6442                	c.ldsp	s0,16(sp)
   108ce:	64a2                	c.ldsp	s1,8(sp)
   108d0:	6105                	c.addi16sp	sp,32
   108d2:	8082                	c.jr	ra

00000000000108d4 <__retarget_lock_init>:
   108d4:	8082                	c.jr	ra

00000000000108d6 <__retarget_lock_init_recursive>:
   108d6:	8082                	c.jr	ra

00000000000108d8 <__retarget_lock_close>:
   108d8:	8082                	c.jr	ra

00000000000108da <__retarget_lock_close_recursive>:
   108da:	8082                	c.jr	ra

00000000000108dc <__retarget_lock_acquire>:
   108dc:	8082                	c.jr	ra

00000000000108de <__retarget_lock_acquire_recursive>:
   108de:	8082                	c.jr	ra

00000000000108e0 <__retarget_lock_try_acquire>:
   108e0:	4505                	c.li	a0,1
   108e2:	8082                	c.jr	ra

00000000000108e4 <__retarget_lock_try_acquire_recursive>:
   108e4:	4505                	c.li	a0,1
   108e6:	8082                	c.jr	ra

00000000000108e8 <__retarget_lock_release>:
   108e8:	8082                	c.jr	ra

00000000000108ea <__retarget_lock_release_recursive>:
   108ea:	8082                	c.jr	ra

00000000000108ec <memset>:
   108ec:	433d                	c.li	t1,15
   108ee:	872a                	c.mv	a4,a0
   108f0:	02c37163          	bgeu	t1,a2,10912 <memset+0x26>
   108f4:	00f77793          	andi	a5,a4,15
   108f8:	e3c1                	c.bnez	a5,10978 <memset+0x8c>
   108fa:	e1bd                	c.bnez	a1,10960 <memset+0x74>
   108fc:	ff067693          	andi	a3,a2,-16
   10900:	8a3d                	c.andi	a2,15
   10902:	96ba                	c.add	a3,a4
   10904:	e30c                	c.sd	a1,0(a4)
   10906:	e70c                	c.sd	a1,8(a4)
   10908:	0741                	c.addi	a4,16
   1090a:	fed76de3          	bltu	a4,a3,10904 <memset+0x18>
   1090e:	e211                	c.bnez	a2,10912 <memset+0x26>
   10910:	8082                	c.jr	ra
   10912:	40c306b3          	sub	a3,t1,a2
   10916:	068a                	c.slli	a3,0x2
   10918:	00000297          	auipc	t0,0x0
   1091c:	9696                	c.add	a3,t0
   1091e:	00a68067          	jalr	zero,10(a3)
   10922:	00b70723          	sb	a1,14(a4)
   10926:	00b706a3          	sb	a1,13(a4)
   1092a:	00b70623          	sb	a1,12(a4)
   1092e:	00b705a3          	sb	a1,11(a4)
   10932:	00b70523          	sb	a1,10(a4)
   10936:	00b704a3          	sb	a1,9(a4)
   1093a:	00b70423          	sb	a1,8(a4)
   1093e:	00b703a3          	sb	a1,7(a4)
   10942:	00b70323          	sb	a1,6(a4)
   10946:	00b702a3          	sb	a1,5(a4)
   1094a:	00b70223          	sb	a1,4(a4)
   1094e:	00b701a3          	sb	a1,3(a4)
   10952:	00b70123          	sb	a1,2(a4)
   10956:	00b700a3          	sb	a1,1(a4)
   1095a:	00b70023          	sb	a1,0(a4)
   1095e:	8082                	c.jr	ra
   10960:	0ff5f593          	andi	a1,a1,255
   10964:	00859693          	slli	a3,a1,0x8
   10968:	8dd5                	c.or	a1,a3
   1096a:	01059693          	slli	a3,a1,0x10
   1096e:	8dd5                	c.or	a1,a3
   10970:	02059693          	slli	a3,a1,0x20
   10974:	8dd5                	c.or	a1,a3
   10976:	b759                	c.j	108fc <memset+0x10>
   10978:	00279693          	slli	a3,a5,0x2
   1097c:	00000297          	auipc	t0,0x0
   10980:	9696                	c.add	a3,t0
   10982:	8286                	c.mv	t0,ra
   10984:	fa2680e7          	jalr	ra,-94(a3)
   10988:	8096                	c.mv	ra,t0
   1098a:	17c1                	c.addi	a5,-16
   1098c:	8f1d                	c.sub	a4,a5
   1098e:	963e                	c.add	a2,a5
   10990:	f8c371e3          	bgeu	t1,a2,10912 <memset+0x26>
   10994:	b79d                	c.j	108fa <memset+0xe>

0000000000010996 <__register_exitproc>:
   10996:	7179                	c.addi16sp	sp,-48
   10998:	e052                	c.sdsp	s4,0(sp)
   1099a:	f022                	c.sdsp	s0,32(sp)
   1099c:	842a                	c.mv	s0,a0
   1099e:	1901b503          	ld	a0,400(gp) # 129a8 <__atexit_recursive_mutex>
   109a2:	ec26                	c.sdsp	s1,24(sp)
   109a4:	e84a                	c.sdsp	s2,16(sp)
   109a6:	e44e                	c.sdsp	s3,8(sp)
   109a8:	f406                	c.sdsp	ra,40(sp)
   109aa:	84ae                	c.mv	s1,a1
   109ac:	89b2                	c.mv	s3,a2
   109ae:	8936                	c.mv	s2,a3
   109b0:	f2fff0ef          	jal	ra,108de <__retarget_lock_acquire_recursive>
   109b4:	2001b783          	ld	a5,512(gp) # 12a18 <__atexit>
   109b8:	c3ad                	c.beqz	a5,10a1a <__register_exitproc+0x84>
   109ba:	4798                	c.lw	a4,8(a5)
   109bc:	46fd                	c.li	a3,31
   109be:	1901b503          	ld	a0,400(gp) # 129a8 <__atexit_recursive_mutex>
   109c2:	06e6c363          	blt	a3,a4,10a28 <__register_exitproc+0x92>
   109c6:	e015                	c.bnez	s0,109ea <__register_exitproc+0x54>
   109c8:	00371693          	slli	a3,a4,0x3
   109cc:	2705                	c.addiw	a4,1
   109ce:	96be                	c.add	a3,a5
   109d0:	c798                	c.sw	a4,8(a5)
   109d2:	ea84                	c.sd	s1,16(a3)
   109d4:	f17ff0ef          	jal	ra,108ea <__retarget_lock_release_recursive>
   109d8:	4501                	c.li	a0,0
   109da:	70a2                	c.ldsp	ra,40(sp)
   109dc:	7402                	c.ldsp	s0,32(sp)
   109de:	64e2                	c.ldsp	s1,24(sp)
   109e0:	6942                	c.ldsp	s2,16(sp)
   109e2:	69a2                	c.ldsp	s3,8(sp)
   109e4:	6a02                	c.ldsp	s4,0(sp)
   109e6:	6145                	c.addi16sp	sp,48
   109e8:	8082                	c.jr	ra
   109ea:	00371613          	slli	a2,a4,0x3
   109ee:	963e                	c.add	a2,a5
   109f0:	11363823          	sd	s3,272(a2)
   109f4:	3107a583          	lw	a1,784(a5)
   109f8:	4685                	c.li	a3,1
   109fa:	00e696bb          	sllw	a3,a3,a4
   109fe:	8dd5                	c.or	a1,a3
   10a00:	30b7a823          	sw	a1,784(a5)
   10a04:	21263823          	sd	s2,528(a2)
   10a08:	4609                	c.li	a2,2
   10a0a:	fac41fe3          	bne	s0,a2,109c8 <__register_exitproc+0x32>
   10a0e:	3147a603          	lw	a2,788(a5)
   10a12:	8ed1                	c.or	a3,a2
   10a14:	30d7aa23          	sw	a3,788(a5)
   10a18:	bf45                	c.j	109c8 <__register_exitproc+0x32>
   10a1a:	48018693          	addi	a3,gp,1152 # 12c98 <__atexit0>
   10a1e:	20d1b023          	sd	a3,512(gp) # 12a18 <__atexit>
   10a22:	48018793          	addi	a5,gp,1152 # 12c98 <__atexit0>
   10a26:	bf51                	c.j	109ba <__register_exitproc+0x24>
   10a28:	ec3ff0ef          	jal	ra,108ea <__retarget_lock_release_recursive>
   10a2c:	557d                	c.li	a0,-1
   10a2e:	b775                	c.j	109da <__register_exitproc+0x44>

0000000000010a30 <__call_exitprocs>:
   10a30:	711d                	c.addi16sp	sp,-96
   10a32:	ec5e                	c.sdsp	s7,24(sp)
   10a34:	f05a                	c.sdsp	s6,32(sp)
   10a36:	8b2a                	c.mv	s6,a0
   10a38:	1901b503          	ld	a0,400(gp) # 129a8 <__atexit_recursive_mutex>
   10a3c:	f852                	c.sdsp	s4,48(sp)
   10a3e:	e0ca                	c.sdsp	s2,64(sp)
   10a40:	e862                	c.sdsp	s8,16(sp)
   10a42:	ec86                	c.sdsp	ra,88(sp)
   10a44:	8c2e                	c.mv	s8,a1
   10a46:	e99ff0ef          	jal	ra,108de <__retarget_lock_acquire_recursive>
   10a4a:	2001b903          	ld	s2,512(gp) # 12a18 <__atexit>
   10a4e:	04090063          	beq	s2,zero,10a8e <__call_exitprocs+0x5e>
   10a52:	fc4e                	c.sdsp	s3,56(sp)
   10a54:	f456                	c.sdsp	s5,40(sp)
   10a56:	e8a2                	c.sdsp	s0,80(sp)
   10a58:	e4a6                	c.sdsp	s1,72(sp)
   10a5a:	e466                	c.sdsp	s9,8(sp)
   10a5c:	59fd                	c.li	s3,-1
   10a5e:	4a85                	c.li	s5,1
   10a60:	00892483          	lw	s1,8(s2)
   10a64:	fff4841b          	addiw	s0,s1,-1
   10a68:	00044e63          	blt	s0,zero,10a84 <__call_exitprocs+0x54>
   10a6c:	048e                	c.slli	s1,0x3
   10a6e:	94ca                	c.add	s1,s2
   10a70:	020c0963          	beq	s8,zero,10aa2 <__call_exitprocs+0x72>
   10a74:	2084b783          	ld	a5,520(s1)
   10a78:	03878563          	beq	a5,s8,10aa2 <__call_exitprocs+0x72>
   10a7c:	347d                	c.addiw	s0,-1
   10a7e:	14e1                	c.addi	s1,-8
   10a80:	ff341ae3          	bne	s0,s3,10a74 <__call_exitprocs+0x44>
   10a84:	6446                	c.ldsp	s0,80(sp)
   10a86:	64a6                	c.ldsp	s1,72(sp)
   10a88:	79e2                	c.ldsp	s3,56(sp)
   10a8a:	7aa2                	c.ldsp	s5,40(sp)
   10a8c:	6ca2                	c.ldsp	s9,8(sp)
   10a8e:	1901b503          	ld	a0,400(gp) # 129a8 <__atexit_recursive_mutex>
   10a92:	60e6                	c.ldsp	ra,88(sp)
   10a94:	6906                	c.ldsp	s2,64(sp)
   10a96:	7a42                	c.ldsp	s4,48(sp)
   10a98:	7b02                	c.ldsp	s6,32(sp)
   10a9a:	6be2                	c.ldsp	s7,24(sp)
   10a9c:	6c42                	c.ldsp	s8,16(sp)
   10a9e:	6125                	c.addi16sp	sp,96
   10aa0:	b5a9                	c.j	108ea <__retarget_lock_release_recursive>
   10aa2:	00892783          	lw	a5,8(s2)
   10aa6:	6494                	c.ld	a3,8(s1)
   10aa8:	37fd                	c.addiw	a5,-1
   10aaa:	04878c63          	beq	a5,s0,10b02 <__call_exitprocs+0xd2>
   10aae:	0004b423          	sd	zero,8(s1)
   10ab2:	c295                	c.beqz	a3,10ad6 <__call_exitprocs+0xa6>
   10ab4:	31092783          	lw	a5,784(s2)
   10ab8:	008a973b          	sllw	a4,s5,s0
   10abc:	00892c83          	lw	s9,8(s2)
   10ac0:	8ff9                	c.and	a5,a4
   10ac2:	ef99                	c.bnez	a5,10ae0 <__call_exitprocs+0xb0>
   10ac4:	9682                	c.jalr	a3
   10ac6:	00892703          	lw	a4,8(s2)
   10aca:	2001b783          	ld	a5,512(gp) # 12a18 <__atexit>
   10ace:	03971763          	bne	a4,s9,10afc <__call_exitprocs+0xcc>
   10ad2:	03279563          	bne	a5,s2,10afc <__call_exitprocs+0xcc>
   10ad6:	347d                	c.addiw	s0,-1
   10ad8:	14e1                	c.addi	s1,-8
   10ada:	f9341be3          	bne	s0,s3,10a70 <__call_exitprocs+0x40>
   10ade:	b75d                	c.j	10a84 <__call_exitprocs+0x54>
   10ae0:	31492783          	lw	a5,788(s2)
   10ae4:	1084b583          	ld	a1,264(s1)
   10ae8:	8f7d                	c.and	a4,a5
   10aea:	ef19                	c.bnez	a4,10b08 <__call_exitprocs+0xd8>
   10aec:	855a                	c.mv	a0,s6
   10aee:	9682                	c.jalr	a3
   10af0:	00892703          	lw	a4,8(s2)
   10af4:	2001b783          	ld	a5,512(gp) # 12a18 <__atexit>
   10af8:	fd970de3          	beq	a4,s9,10ad2 <__call_exitprocs+0xa2>
   10afc:	d7c1                	c.beqz	a5,10a84 <__call_exitprocs+0x54>
   10afe:	893e                	c.mv	s2,a5
   10b00:	b785                	c.j	10a60 <__call_exitprocs+0x30>
   10b02:	00892423          	sw	s0,8(s2)
   10b06:	b775                	c.j	10ab2 <__call_exitprocs+0x82>
   10b08:	852e                	c.mv	a0,a1
   10b0a:	9682                	c.jalr	a3
   10b0c:	bf6d                	c.j	10ac6 <__call_exitprocs+0x96>

0000000000010b0e <_malloc_trim_r>:
   10b0e:	7179                	c.addi16sp	sp,-48
   10b10:	e44e                	c.sdsp	s3,8(sp)
   10b12:	69c9                	c.lui	s3,0x12
   10b14:	f022                	c.sdsp	s0,32(sp)
   10b16:	ec26                	c.sdsp	s1,24(sp)
   10b18:	e84a                	c.sdsp	s2,16(sp)
   10b1a:	e052                	c.sdsp	s4,0(sp)
   10b1c:	f406                	c.sdsp	ra,40(sp)
   10b1e:	8a2e                	c.mv	s4,a1
   10b20:	892a                	c.mv	s2,a0
   10b22:	18898993          	addi	s3,s3,392 # 12188 <__malloc_av_>
   10b26:	123000ef          	jal	ra,11448 <__malloc_lock>
   10b2a:	0109b783          	ld	a5,16(s3)
   10b2e:	6405                	c.lui	s0,0x1
   10b30:	fdf40413          	addi	s0,s0,-33 # fdf <exit-0xf141>
   10b34:	6784                	c.ld	s1,8(a5)
   10b36:	6785                	c.lui	a5,0x1
   10b38:	98f1                	c.andi	s1,-4
   10b3a:	9426                	c.add	s0,s1
   10b3c:	41440433          	sub	s0,s0,s4
   10b40:	8031                	c.srli	s0,0xc
   10b42:	147d                	c.addi	s0,-1
   10b44:	0432                	c.slli	s0,0xc
   10b46:	00f44b63          	blt	s0,a5,10b5c <_malloc_trim_r+0x4e>
   10b4a:	4581                	c.li	a1,0
   10b4c:	854a                	c.mv	a0,s2
   10b4e:	4a9000ef          	jal	ra,117f6 <_sbrk_r>
   10b52:	0109b783          	ld	a5,16(s3)
   10b56:	97a6                	c.add	a5,s1
   10b58:	00f50e63          	beq	a0,a5,10b74 <_malloc_trim_r+0x66>
   10b5c:	854a                	c.mv	a0,s2
   10b5e:	0f3000ef          	jal	ra,11450 <__malloc_unlock>
   10b62:	70a2                	c.ldsp	ra,40(sp)
   10b64:	7402                	c.ldsp	s0,32(sp)
   10b66:	64e2                	c.ldsp	s1,24(sp)
   10b68:	6942                	c.ldsp	s2,16(sp)
   10b6a:	69a2                	c.ldsp	s3,8(sp)
   10b6c:	6a02                	c.ldsp	s4,0(sp)
   10b6e:	4501                	c.li	a0,0
   10b70:	6145                	c.addi16sp	sp,48
   10b72:	8082                	c.jr	ra
   10b74:	408005b3          	sub	a1,zero,s0
   10b78:	854a                	c.mv	a0,s2
   10b7a:	47d000ef          	jal	ra,117f6 <_sbrk_r>
   10b7e:	57fd                	c.li	a5,-1
   10b80:	02f50963          	beq	a0,a5,10bb2 <_malloc_trim_r+0xa4>
   10b84:	79818793          	addi	a5,gp,1944 # 12fb0 <__malloc_current_mallinfo>
   10b88:	0109b683          	ld	a3,16(s3)
   10b8c:	4398                	c.lw	a4,0(a5)
   10b8e:	8c81                	c.sub	s1,s0
   10b90:	0014e493          	ori	s1,s1,1
   10b94:	854a                	c.mv	a0,s2
   10b96:	9f01                	c.subw	a4,s0
   10b98:	e684                	c.sd	s1,8(a3)
   10b9a:	c398                	c.sw	a4,0(a5)
   10b9c:	0b5000ef          	jal	ra,11450 <__malloc_unlock>
   10ba0:	70a2                	c.ldsp	ra,40(sp)
   10ba2:	7402                	c.ldsp	s0,32(sp)
   10ba4:	64e2                	c.ldsp	s1,24(sp)
   10ba6:	6942                	c.ldsp	s2,16(sp)
   10ba8:	69a2                	c.ldsp	s3,8(sp)
   10baa:	6a02                	c.ldsp	s4,0(sp)
   10bac:	4505                	c.li	a0,1
   10bae:	6145                	c.addi16sp	sp,48
   10bb0:	8082                	c.jr	ra
   10bb2:	4581                	c.li	a1,0
   10bb4:	854a                	c.mv	a0,s2
   10bb6:	441000ef          	jal	ra,117f6 <_sbrk_r>
   10bba:	0109b703          	ld	a4,16(s3)
   10bbe:	46fd                	c.li	a3,31
   10bc0:	40e507b3          	sub	a5,a0,a4
   10bc4:	f8f6dce3          	bge	a3,a5,10b5c <_malloc_trim_r+0x4e>
   10bc8:	1981b603          	ld	a2,408(gp) # 129b0 <__malloc_sbrk_base>
   10bcc:	0017e793          	ori	a5,a5,1
   10bd0:	8d11                	c.sub	a0,a2
   10bd2:	e71c                	c.sd	a5,8(a4)
   10bd4:	78a1ac23          	sw	a0,1944(gp) # 12fb0 <__malloc_current_mallinfo>
   10bd8:	b751                	c.j	10b5c <_malloc_trim_r+0x4e>

0000000000010bda <_free_r>:
   10bda:	c5f5                	c.beqz	a1,10cc6 <_free_r+0xec>
   10bdc:	1101                	c.addi	sp,-32
   10bde:	e822                	c.sdsp	s0,16(sp)
   10be0:	e426                	c.sdsp	s1,8(sp)
   10be2:	842e                	c.mv	s0,a1
   10be4:	84aa                	c.mv	s1,a0
   10be6:	ec06                	c.sdsp	ra,24(sp)
   10be8:	061000ef          	jal	ra,11448 <__malloc_lock>
   10bec:	ff843503          	ld	a0,-8(s0)
   10bf0:	ff040713          	addi	a4,s0,-16
   10bf4:	65c9                	c.lui	a1,0x12
   10bf6:	ffe57793          	andi	a5,a0,-2
   10bfa:	00f70633          	add	a2,a4,a5
   10bfe:	18858593          	addi	a1,a1,392 # 12188 <__malloc_av_>
   10c02:	6614                	c.ld	a3,8(a2)
   10c04:	0105b803          	ld	a6,16(a1)
   10c08:	00157893          	andi	a7,a0,1
   10c0c:	9af1                	c.andi	a3,-4
   10c0e:	12c80963          	beq	a6,a2,10d40 <_free_r+0x166>
   10c12:	e614                	c.sd	a3,8(a2)
   10c14:	00d60833          	add	a6,a2,a3
   10c18:	00883803          	ld	a6,8(a6)
   10c1c:	00187813          	andi	a6,a6,1
   10c20:	06089e63          	bne	a7,zero,10c9c <_free_r+0xc2>
   10c24:	ff043303          	ld	t1,-16(s0)
   10c28:	6549                	c.lui	a0,0x12
   10c2a:	19850513          	addi	a0,a0,408 # 12198 <__malloc_av_+0x10>
   10c2e:	40670733          	sub	a4,a4,t1
   10c32:	01073883          	ld	a7,16(a4)
   10c36:	979a                	c.add	a5,t1
   10c38:	0ea88763          	beq	a7,a0,10d26 <_free_r+0x14c>
   10c3c:	01873303          	ld	t1,24(a4)
   10c40:	0068bc23          	sd	t1,24(a7)
   10c44:	01133823          	sd	a7,16(t1)
   10c48:	12080563          	beq	a6,zero,10d72 <_free_r+0x198>
   10c4c:	0017e693          	ori	a3,a5,1
   10c50:	e714                	c.sd	a3,8(a4)
   10c52:	e21c                	c.sd	a5,0(a2)
   10c54:	1ff00693          	addi	a3,zero,511
   10c58:	08f6e163          	bltu	a3,a5,10cda <_free_r+0x100>
   10c5c:	838d                	c.srli	a5,0x3
   10c5e:	2781                	c.addiw	a5,0 # 1000 <exit-0xf120>
   10c60:	0017869b          	addiw	a3,a5,1
   10c64:	0016969b          	slliw	a3,a3,0x1
   10c68:	068e                	c.slli	a3,0x3
   10c6a:	0085b803          	ld	a6,8(a1)
   10c6e:	96ae                	c.add	a3,a1
   10c70:	6288                	c.ld	a0,0(a3)
   10c72:	4605                	c.li	a2,1
   10c74:	4027d79b          	sraiw	a5,a5,0x2
   10c78:	00f617b3          	sll	a5,a2,a5
   10c7c:	0107e7b3          	or	a5,a5,a6
   10c80:	ff068613          	addi	a2,a3,-16
   10c84:	eb08                	c.sd	a0,16(a4)
   10c86:	ef10                	c.sd	a2,24(a4)
   10c88:	e59c                	c.sd	a5,8(a1)
   10c8a:	e298                	c.sd	a4,0(a3)
   10c8c:	ed18                	c.sd	a4,24(a0)
   10c8e:	6442                	c.ldsp	s0,16(sp)
   10c90:	60e2                	c.ldsp	ra,24(sp)
   10c92:	8526                	c.mv	a0,s1
   10c94:	64a2                	c.ldsp	s1,8(sp)
   10c96:	6105                	c.addi16sp	sp,32
   10c98:	7b80006f          	jal	zero,11450 <__malloc_unlock>
   10c9c:	02081663          	bne	a6,zero,10cc8 <_free_r+0xee>
   10ca0:	6549                	c.lui	a0,0x12
   10ca2:	97b6                	c.add	a5,a3
   10ca4:	19850513          	addi	a0,a0,408 # 12198 <__malloc_av_+0x10>
   10ca8:	6a14                	c.ld	a3,16(a2)
   10caa:	0017e893          	ori	a7,a5,1
   10cae:	00f70833          	add	a6,a4,a5
   10cb2:	10a68063          	beq	a3,a0,10db2 <_free_r+0x1d8>
   10cb6:	6e10                	c.ld	a2,24(a2)
   10cb8:	ee90                	c.sd	a2,24(a3)
   10cba:	ea14                	c.sd	a3,16(a2)
   10cbc:	01173423          	sd	a7,8(a4)
   10cc0:	00f83023          	sd	a5,0(a6)
   10cc4:	bf41                	c.j	10c54 <_free_r+0x7a>
   10cc6:	8082                	c.jr	ra
   10cc8:	00156513          	ori	a0,a0,1
   10ccc:	fea43c23          	sd	a0,-8(s0)
   10cd0:	e21c                	c.sd	a5,0(a2)
   10cd2:	1ff00693          	addi	a3,zero,511
   10cd6:	f8f6f3e3          	bgeu	a3,a5,10c5c <_free_r+0x82>
   10cda:	0097d693          	srli	a3,a5,0x9
   10cde:	4611                	c.li	a2,4
   10ce0:	08d66b63          	bltu	a2,a3,10d76 <_free_r+0x19c>
   10ce4:	0067d693          	srli	a3,a5,0x6
   10ce8:	0396851b          	addiw	a0,a3,57
   10cec:	0015151b          	slliw	a0,a0,0x1
   10cf0:	050e                	c.slli	a0,0x3
   10cf2:	0386861b          	addiw	a2,a3,56
   10cf6:	952e                	c.add	a0,a1
   10cf8:	6114                	c.ld	a3,0(a0)
   10cfa:	1541                	c.addi	a0,-16
   10cfc:	00d51663          	bne	a0,a3,10d08 <_free_r+0x12e>
   10d00:	a0d1                	c.j	10dc4 <_free_r+0x1ea>
   10d02:	6a94                	c.ld	a3,16(a3)
   10d04:	00d50663          	beq	a0,a3,10d10 <_free_r+0x136>
   10d08:	6690                	c.ld	a2,8(a3)
   10d0a:	9a71                	c.andi	a2,-4
   10d0c:	fec7ebe3          	bltu	a5,a2,10d02 <_free_r+0x128>
   10d10:	6e88                	c.ld	a0,24(a3)
   10d12:	ef08                	c.sd	a0,24(a4)
   10d14:	eb14                	c.sd	a3,16(a4)
   10d16:	6442                	c.ldsp	s0,16(sp)
   10d18:	e918                	c.sd	a4,16(a0)
   10d1a:	60e2                	c.ldsp	ra,24(sp)
   10d1c:	8526                	c.mv	a0,s1
   10d1e:	64a2                	c.ldsp	s1,8(sp)
   10d20:	ee98                	c.sd	a4,24(a3)
   10d22:	6105                	c.addi16sp	sp,32
   10d24:	a735                	c.j	11450 <__malloc_unlock>
   10d26:	06081963          	bne	a6,zero,10d98 <_free_r+0x1be>
   10d2a:	6e0c                	c.ld	a1,24(a2)
   10d2c:	6a10                	c.ld	a2,16(a2)
   10d2e:	96be                	c.add	a3,a5
   10d30:	0016e793          	ori	a5,a3,1
   10d34:	ee0c                	c.sd	a1,24(a2)
   10d36:	e990                	c.sd	a2,16(a1)
   10d38:	e71c                	c.sd	a5,8(a4)
   10d3a:	9736                	c.add	a4,a3
   10d3c:	e314                	c.sd	a3,0(a4)
   10d3e:	bf81                	c.j	10c8e <_free_r+0xb4>
   10d40:	96be                	c.add	a3,a5
   10d42:	00089a63          	bne	a7,zero,10d56 <_free_r+0x17c>
   10d46:	ff043503          	ld	a0,-16(s0)
   10d4a:	8f09                	c.sub	a4,a0
   10d4c:	6f1c                	c.ld	a5,24(a4)
   10d4e:	6b10                	c.ld	a2,16(a4)
   10d50:	96aa                	c.add	a3,a0
   10d52:	ee1c                	c.sd	a5,24(a2)
   10d54:	eb90                	c.sd	a2,16(a5)
   10d56:	0016e613          	ori	a2,a3,1
   10d5a:	1a01b783          	ld	a5,416(gp) # 129b8 <__malloc_trim_threshold>
   10d5e:	e710                	c.sd	a2,8(a4)
   10d60:	e998                	c.sd	a4,16(a1)
   10d62:	f2f6e6e3          	bltu	a3,a5,10c8e <_free_r+0xb4>
   10d66:	2181b583          	ld	a1,536(gp) # 12a30 <__malloc_top_pad>
   10d6a:	8526                	c.mv	a0,s1
   10d6c:	da3ff0ef          	jal	ra,10b0e <_malloc_trim_r>
   10d70:	bf39                	c.j	10c8e <_free_r+0xb4>
   10d72:	97b6                	c.add	a5,a3
   10d74:	bf15                	c.j	10ca8 <_free_r+0xce>
   10d76:	4651                	c.li	a2,20
   10d78:	02d67563          	bgeu	a2,a3,10da2 <_free_r+0x1c8>
   10d7c:	05400613          	addi	a2,zero,84
   10d80:	04d66d63          	bltu	a2,a3,10dda <_free_r+0x200>
   10d84:	00c7d693          	srli	a3,a5,0xc
   10d88:	06f6851b          	addiw	a0,a3,111
   10d8c:	0015151b          	slliw	a0,a0,0x1
   10d90:	050e                	c.slli	a0,0x3
   10d92:	06e6861b          	addiw	a2,a3,110
   10d96:	b785                	c.j	10cf6 <_free_r+0x11c>
   10d98:	0017e693          	ori	a3,a5,1
   10d9c:	e714                	c.sd	a3,8(a4)
   10d9e:	e21c                	c.sd	a5,0(a2)
   10da0:	b5fd                	c.j	10c8e <_free_r+0xb4>
   10da2:	05c6851b          	addiw	a0,a3,92
   10da6:	0015151b          	slliw	a0,a0,0x1
   10daa:	050e                	c.slli	a0,0x3
   10dac:	05b6861b          	addiw	a2,a3,91
   10db0:	b799                	c.j	10cf6 <_free_r+0x11c>
   10db2:	f598                	c.sd	a4,40(a1)
   10db4:	f198                	c.sd	a4,32(a1)
   10db6:	ef08                	c.sd	a0,24(a4)
   10db8:	eb08                	c.sd	a0,16(a4)
   10dba:	01173423          	sd	a7,8(a4)
   10dbe:	00f83023          	sd	a5,0(a6)
   10dc2:	b5f1                	c.j	10c8e <_free_r+0xb4>
   10dc4:	0085b803          	ld	a6,8(a1)
   10dc8:	4026561b          	sraiw	a2,a2,0x2
   10dcc:	4785                	c.li	a5,1
   10dce:	00c797b3          	sll	a5,a5,a2
   10dd2:	0107e7b3          	or	a5,a5,a6
   10dd6:	e59c                	c.sd	a5,8(a1)
   10dd8:	bf2d                	c.j	10d12 <_free_r+0x138>
   10dda:	15400613          	addi	a2,zero,340
   10dde:	00d66c63          	bltu	a2,a3,10df6 <_free_r+0x21c>
   10de2:	00f7d693          	srli	a3,a5,0xf
   10de6:	0786851b          	addiw	a0,a3,120
   10dea:	0015151b          	slliw	a0,a0,0x1
   10dee:	050e                	c.slli	a0,0x3
   10df0:	0776861b          	addiw	a2,a3,119
   10df4:	b709                	c.j	10cf6 <_free_r+0x11c>
   10df6:	55400613          	addi	a2,zero,1364
   10dfa:	00d66c63          	bltu	a2,a3,10e12 <_free_r+0x238>
   10dfe:	0127d693          	srli	a3,a5,0x12
   10e02:	07d6851b          	addiw	a0,a3,125
   10e06:	0015151b          	slliw	a0,a0,0x1
   10e0a:	050e                	c.slli	a0,0x3
   10e0c:	07c6861b          	addiw	a2,a3,124
   10e10:	b5dd                	c.j	10cf6 <_free_r+0x11c>
   10e12:	7f000513          	addi	a0,zero,2032
   10e16:	07e00613          	addi	a2,zero,126
   10e1a:	bdf1                	c.j	10cf6 <_free_r+0x11c>

0000000000010e1c <_malloc_r>:
   10e1c:	711d                	c.addi16sp	sp,-96
   10e1e:	e4a6                	c.sdsp	s1,72(sp)
   10e20:	e0ca                	c.sdsp	s2,64(sp)
   10e22:	ec86                	c.sdsp	ra,88(sp)
   10e24:	e8a2                	c.sdsp	s0,80(sp)
   10e26:	fc4e                	c.sdsp	s3,56(sp)
   10e28:	01758493          	addi	s1,a1,23
   10e2c:	02e00793          	addi	a5,zero,46
   10e30:	892a                	c.mv	s2,a0
   10e32:	0497eb63          	bltu	a5,s1,10e88 <_malloc_r+0x6c>
   10e36:	02000493          	addi	s1,zero,32
   10e3a:	18b4e863          	bltu	s1,a1,10fca <_malloc_r+0x1ae>
   10e3e:	60a000ef          	jal	ra,11448 <__malloc_lock>
   10e42:	05000793          	addi	a5,zero,80
   10e46:	4591                	c.li	a1,4
   10e48:	69c9                	c.lui	s3,0x12
   10e4a:	18898993          	addi	s3,s3,392 # 12188 <__malloc_av_>
   10e4e:	97ce                	c.add	a5,s3
   10e50:	6780                	c.ld	s0,8(a5)
   10e52:	ff078713          	addi	a4,a5,-16
   10e56:	32e40963          	beq	s0,a4,11188 <_malloc_r+0x36c>
   10e5a:	641c                	c.ld	a5,8(s0)
   10e5c:	6c14                	c.ld	a3,24(s0)
   10e5e:	6810                	c.ld	a2,16(s0)
   10e60:	9bf1                	c.andi	a5,-4
   10e62:	97a2                	c.add	a5,s0
   10e64:	6798                	c.ld	a4,8(a5)
   10e66:	ee14                	c.sd	a3,24(a2)
   10e68:	ea90                	c.sd	a2,16(a3)
   10e6a:	00176713          	ori	a4,a4,1
   10e6e:	854a                	c.mv	a0,s2
   10e70:	e798                	c.sd	a4,8(a5)
   10e72:	5de000ef          	jal	ra,11450 <__malloc_unlock>
   10e76:	60e6                	c.ldsp	ra,88(sp)
   10e78:	01040513          	addi	a0,s0,16
   10e7c:	6446                	c.ldsp	s0,80(sp)
   10e7e:	64a6                	c.ldsp	s1,72(sp)
   10e80:	6906                	c.ldsp	s2,64(sp)
   10e82:	79e2                	c.ldsp	s3,56(sp)
   10e84:	6125                	c.addi16sp	sp,96
   10e86:	8082                	c.jr	ra
   10e88:	800007b7          	lui	a5,0x80000
   10e8c:	98c1                	c.andi	s1,-16
   10e8e:	fff7c793          	xori	a5,a5,-1
   10e92:	1297ec63          	bltu	a5,s1,10fca <_malloc_r+0x1ae>
   10e96:	12b4ea63          	bltu	s1,a1,10fca <_malloc_r+0x1ae>
   10e9a:	5ae000ef          	jal	ra,11448 <__malloc_lock>
   10e9e:	1f700793          	addi	a5,zero,503
   10ea2:	3c97fe63          	bgeu	a5,s1,1127e <_malloc_r+0x462>
   10ea6:	0094d793          	srli	a5,s1,0x9
   10eaa:	12078b63          	beq	a5,zero,10fe0 <_malloc_r+0x1c4>
   10eae:	4711                	c.li	a4,4
   10eb0:	32f76363          	bltu	a4,a5,111d6 <_malloc_r+0x3ba>
   10eb4:	0064d793          	srli	a5,s1,0x6
   10eb8:	0397859b          	addiw	a1,a5,57 # ffffffff80000039 <__BSS_END__+0xffffffff7ffed061>
   10ebc:	0015961b          	slliw	a2,a1,0x1
   10ec0:	0387881b          	addiw	a6,a5,56
   10ec4:	060e                	c.slli	a2,0x3
   10ec6:	69c9                	c.lui	s3,0x12
   10ec8:	18898993          	addi	s3,s3,392 # 12188 <__malloc_av_>
   10ecc:	964e                	c.add	a2,s3
   10ece:	6600                	c.ld	s0,8(a2)
   10ed0:	1641                	c.addi	a2,-16
   10ed2:	02860163          	beq	a2,s0,10ef4 <_malloc_r+0xd8>
   10ed6:	457d                	c.li	a0,31
   10ed8:	a039                	c.j	10ee6 <_malloc_r+0xca>
   10eda:	6c14                	c.ld	a3,24(s0)
   10edc:	28075263          	bge	a4,zero,11160 <_malloc_r+0x344>
   10ee0:	00d60a63          	beq	a2,a3,10ef4 <_malloc_r+0xd8>
   10ee4:	8436                	c.mv	s0,a3
   10ee6:	641c                	c.ld	a5,8(s0)
   10ee8:	9bf1                	c.andi	a5,-4
   10eea:	40978733          	sub	a4,a5,s1
   10eee:	fee556e3          	bge	a0,a4,10eda <_malloc_r+0xbe>
   10ef2:	85c2                	c.mv	a1,a6
   10ef4:	0209b403          	ld	s0,32(s3)
   10ef8:	6849                	c.lui	a6,0x12
   10efa:	19880813          	addi	a6,a6,408 # 12198 <__malloc_av_+0x10>
   10efe:	25040e63          	beq	s0,a6,1115a <_malloc_r+0x33e>
   10f02:	641c                	c.ld	a5,8(s0)
   10f04:	46fd                	c.li	a3,31
   10f06:	9bf1                	c.andi	a5,-4
   10f08:	40978733          	sub	a4,a5,s1
   10f0c:	34e6c263          	blt	a3,a4,11250 <_malloc_r+0x434>
   10f10:	0309b423          	sd	a6,40(s3)
   10f14:	0309b023          	sd	a6,32(s3)
   10f18:	32075163          	bge	a4,zero,1123a <_malloc_r+0x41e>
   10f1c:	1ff00713          	addi	a4,zero,511
   10f20:	0089b503          	ld	a0,8(s3)
   10f24:	26f76763          	bltu	a4,a5,11192 <_malloc_r+0x376>
   10f28:	838d                	c.srli	a5,0x3
   10f2a:	2781                	c.addiw	a5,0
   10f2c:	0017871b          	addiw	a4,a5,1
   10f30:	0017171b          	slliw	a4,a4,0x1
   10f34:	070e                	c.slli	a4,0x3
   10f36:	974e                	c.add	a4,s3
   10f38:	6310                	c.ld	a2,0(a4)
   10f3a:	4027d79b          	sraiw	a5,a5,0x2
   10f3e:	4685                	c.li	a3,1
   10f40:	00f697b3          	sll	a5,a3,a5
   10f44:	8d5d                	c.or	a0,a5
   10f46:	ff070793          	addi	a5,a4,-16
   10f4a:	e810                	c.sd	a2,16(s0)
   10f4c:	ec1c                	c.sd	a5,24(s0)
   10f4e:	00a9b423          	sd	a0,8(s3)
   10f52:	e300                	c.sd	s0,0(a4)
   10f54:	ee00                	c.sd	s0,24(a2)
   10f56:	4025d79b          	sraiw	a5,a1,0x2
   10f5a:	4605                	c.li	a2,1
   10f5c:	00f61633          	sll	a2,a2,a5
   10f60:	08c56763          	bltu	a0,a2,10fee <_malloc_r+0x1d2>
   10f64:	00a677b3          	and	a5,a2,a0
   10f68:	ef81                	c.bnez	a5,10f80 <_malloc_r+0x164>
   10f6a:	0606                	c.slli	a2,0x1
   10f6c:	99f1                	c.andi	a1,-4
   10f6e:	00a677b3          	and	a5,a2,a0
   10f72:	2591                	c.addiw	a1,4
   10f74:	e791                	c.bnez	a5,10f80 <_malloc_r+0x164>
   10f76:	0606                	c.slli	a2,0x1
   10f78:	00a677b3          	and	a5,a2,a0
   10f7c:	2591                	c.addiw	a1,4
   10f7e:	dfe5                	c.beqz	a5,10f76 <_malloc_r+0x15a>
   10f80:	48fd                	c.li	a7,31
   10f82:	0015831b          	addiw	t1,a1,1
   10f86:	0013131b          	slliw	t1,t1,0x1
   10f8a:	030e                	c.slli	t1,0x3
   10f8c:	1341                	c.addi	t1,-16
   10f8e:	934e                	c.add	t1,s3
   10f90:	851a                	c.mv	a0,t1
   10f92:	6d1c                	c.ld	a5,24(a0)
   10f94:	8e2e                	c.mv	t3,a1
   10f96:	26f50163          	beq	a0,a5,111f8 <_malloc_r+0x3dc>
   10f9a:	6798                	c.ld	a4,8(a5)
   10f9c:	843e                	c.mv	s0,a5
   10f9e:	6f9c                	c.ld	a5,24(a5)
   10fa0:	9b71                	c.andi	a4,-4
   10fa2:	409706b3          	sub	a3,a4,s1
   10fa6:	26d8c063          	blt	a7,a3,11206 <_malloc_r+0x3ea>
   10faa:	fe06c6e3          	blt	a3,zero,10f96 <_malloc_r+0x17a>
   10fae:	9722                	c.add	a4,s0
   10fb0:	6714                	c.ld	a3,8(a4)
   10fb2:	6810                	c.ld	a2,16(s0)
   10fb4:	854a                	c.mv	a0,s2
   10fb6:	0016e693          	ori	a3,a3,1
   10fba:	e714                	c.sd	a3,8(a4)
   10fbc:	ee1c                	c.sd	a5,24(a2)
   10fbe:	eb90                	c.sd	a2,16(a5)
   10fc0:	490000ef          	jal	ra,11450 <__malloc_unlock>
   10fc4:	01040513          	addi	a0,s0,16
   10fc8:	a029                	c.j	10fd2 <_malloc_r+0x1b6>
   10fca:	47b1                	c.li	a5,12
   10fcc:	00f92023          	sw	a5,0(s2)
   10fd0:	4501                	c.li	a0,0
   10fd2:	60e6                	c.ldsp	ra,88(sp)
   10fd4:	6446                	c.ldsp	s0,80(sp)
   10fd6:	64a6                	c.ldsp	s1,72(sp)
   10fd8:	6906                	c.ldsp	s2,64(sp)
   10fda:	79e2                	c.ldsp	s3,56(sp)
   10fdc:	6125                	c.addi16sp	sp,96
   10fde:	8082                	c.jr	ra
   10fe0:	40000613          	addi	a2,zero,1024
   10fe4:	04000593          	addi	a1,zero,64
   10fe8:	03f00813          	addi	a6,zero,63
   10fec:	bde9                	c.j	10ec6 <_malloc_r+0xaa>
   10fee:	0109b403          	ld	s0,16(s3)
   10ff2:	f456                	c.sdsp	s5,40(sp)
   10ff4:	641c                	c.ld	a5,8(s0)
   10ff6:	ffc7fa93          	andi	s5,a5,-4
   10ffa:	009ae763          	bltu	s5,s1,11008 <_malloc_r+0x1ec>
   10ffe:	409a8733          	sub	a4,s5,s1
   11002:	47fd                	c.li	a5,31
   11004:	12e7c563          	blt	a5,a4,1112e <_malloc_r+0x312>
   11008:	e466                	c.sdsp	s9,8(sp)
   1100a:	f852                	c.sdsp	s4,48(sp)
   1100c:	1981b703          	ld	a4,408(gp) # 129b0 <__malloc_sbrk_base>
   11010:	2181ba03          	ld	s4,536(gp) # 12a30 <__malloc_top_pad>
   11014:	ec5e                	c.sdsp	s7,24(sp)
   11016:	f05a                	c.sdsp	s6,32(sp)
   11018:	57fd                	c.li	a5,-1
   1101a:	9a26                	c.add	s4,s1
   1101c:	01540bb3          	add	s7,s0,s5
   11020:	2ef70363          	beq	a4,a5,11306 <_malloc_r+0x4ea>
   11024:	6785                	c.lui	a5,0x1
   11026:	07fd                	c.addi	a5,31 # 101f <exit-0xf101>
   11028:	9a3e                	c.add	s4,a5
   1102a:	77fd                	c.lui	a5,0xfffff
   1102c:	00fa7a33          	and	s4,s4,a5
   11030:	85d2                	c.mv	a1,s4
   11032:	854a                	c.mv	a0,s2
   11034:	7c2000ef          	jal	ra,117f6 <_sbrk_r>
   11038:	57fd                	c.li	a5,-1
   1103a:	8b2a                	c.mv	s6,a0
   1103c:	36f50363          	beq	a0,a5,113a2 <_malloc_r+0x586>
   11040:	e862                	c.sdsp	s8,16(sp)
   11042:	0d756463          	bltu	a0,s7,1110a <_malloc_r+0x2ee>
   11046:	79818c13          	addi	s8,gp,1944 # 12fb0 <__malloc_current_mallinfo>
   1104a:	000c2703          	lw	a4,0(s8)
   1104e:	0147073b          	addw	a4,a4,s4
   11052:	00ec2023          	sw	a4,0(s8)
   11056:	86ba                	c.mv	a3,a4
   11058:	34ab8963          	beq	s7,a0,113aa <_malloc_r+0x58e>
   1105c:	1981b703          	ld	a4,408(gp) # 129b0 <__malloc_sbrk_base>
   11060:	57fd                	c.li	a5,-1
   11062:	36f70163          	beq	a4,a5,113c4 <_malloc_r+0x5a8>
   11066:	417b07b3          	sub	a5,s6,s7
   1106a:	9fb5                	c.addw	a5,a3
   1106c:	00fc2023          	sw	a5,0(s8)
   11070:	00fb7c93          	andi	s9,s6,15
   11074:	2a0c8563          	beq	s9,zero,1131e <_malloc_r+0x502>
   11078:	419b0b33          	sub	s6,s6,s9
   1107c:	6685                	c.lui	a3,0x1
   1107e:	0b41                	c.addi	s6,16
   11080:	06c1                	c.addi	a3,16 # 1010 <exit-0xf110>
   11082:	9a5a                	c.add	s4,s6
   11084:	419686b3          	sub	a3,a3,s9
   11088:	414686b3          	sub	a3,a3,s4
   1108c:	16d2                	c.slli	a3,0x34
   1108e:	0346db93          	srli	s7,a3,0x34
   11092:	85de                	c.mv	a1,s7
   11094:	854a                	c.mv	a0,s2
   11096:	760000ef          	jal	ra,117f6 <_sbrk_r>
   1109a:	57fd                	c.li	a5,-1
   1109c:	36f50363          	beq	a0,a5,11402 <_malloc_r+0x5e6>
   110a0:	41650533          	sub	a0,a0,s6
   110a4:	01750a33          	add	s4,a0,s7
   110a8:	000b869b          	addiw	a3,s7,0
   110ac:	000c2703          	lw	a4,0(s8)
   110b0:	0169b823          	sd	s6,16(s3)
   110b4:	001a6793          	ori	a5,s4,1
   110b8:	9f35                	c.addw	a4,a3
   110ba:	00fb3423          	sd	a5,8(s6)
   110be:	00ec2023          	sw	a4,0(s8)
   110c2:	03340563          	beq	s0,s3,110ec <_malloc_r+0x2d0>
   110c6:	467d                	c.li	a2,31
   110c8:	27567b63          	bgeu	a2,s5,1133e <_malloc_r+0x522>
   110cc:	6414                	c.ld	a3,8(s0)
   110ce:	fe8a8793          	addi	a5,s5,-24
   110d2:	9bc1                	c.andi	a5,-16
   110d4:	8a85                	c.andi	a3,1
   110d6:	8edd                	c.or	a3,a5
   110d8:	e414                	c.sd	a3,8(s0)
   110da:	45a5                	c.li	a1,9
   110dc:	00f406b3          	add	a3,s0,a5
   110e0:	e68c                	c.sd	a1,8(a3)
   110e2:	ea8c                	c.sd	a1,16(a3)
   110e4:	20f66763          	bltu	a2,a5,112f2 <_malloc_r+0x4d6>
   110e8:	008b3783          	ld	a5,8(s6)
   110ec:	2101b603          	ld	a2,528(gp) # 12a28 <__malloc_max_sbrked_mem>
   110f0:	00e67463          	bgeu	a2,a4,110f8 <_malloc_r+0x2dc>
   110f4:	20e1b823          	sd	a4,528(gp) # 12a28 <__malloc_max_sbrked_mem>
   110f8:	2081b603          	ld	a2,520(gp) # 12a20 <__malloc_max_total_mem>
   110fc:	00e67463          	bgeu	a2,a4,11104 <_malloc_r+0x2e8>
   11100:	20e1b423          	sd	a4,520(gp) # 12a20 <__malloc_max_total_mem>
   11104:	6c42                	c.ldsp	s8,16(sp)
   11106:	845a                	c.mv	s0,s6
   11108:	a039                	c.j	11116 <_malloc_r+0x2fa>
   1110a:	29340363          	beq	s0,s3,11390 <_malloc_r+0x574>
   1110e:	0109b403          	ld	s0,16(s3)
   11112:	6c42                	c.ldsp	s8,16(sp)
   11114:	641c                	c.ld	a5,8(s0)
   11116:	9bf1                	c.andi	a5,-4
   11118:	40978733          	sub	a4,a5,s1
   1111c:	2297e563          	bltu	a5,s1,11346 <_malloc_r+0x52a>
   11120:	47fd                	c.li	a5,31
   11122:	22e7d263          	bge	a5,a4,11346 <_malloc_r+0x52a>
   11126:	7a42                	c.ldsp	s4,48(sp)
   11128:	7b02                	c.ldsp	s6,32(sp)
   1112a:	6be2                	c.ldsp	s7,24(sp)
   1112c:	6ca2                	c.ldsp	s9,8(sp)
   1112e:	0014e793          	ori	a5,s1,1
   11132:	e41c                	c.sd	a5,8(s0)
   11134:	94a2                	c.add	s1,s0
   11136:	0099b823          	sd	s1,16(s3)
   1113a:	00176713          	ori	a4,a4,1
   1113e:	854a                	c.mv	a0,s2
   11140:	e498                	c.sd	a4,8(s1)
   11142:	30e000ef          	jal	ra,11450 <__malloc_unlock>
   11146:	60e6                	c.ldsp	ra,88(sp)
   11148:	01040513          	addi	a0,s0,16
   1114c:	6446                	c.ldsp	s0,80(sp)
   1114e:	7aa2                	c.ldsp	s5,40(sp)
   11150:	64a6                	c.ldsp	s1,72(sp)
   11152:	6906                	c.ldsp	s2,64(sp)
   11154:	79e2                	c.ldsp	s3,56(sp)
   11156:	6125                	c.addi16sp	sp,96
   11158:	8082                	c.jr	ra
   1115a:	0089b503          	ld	a0,8(s3)
   1115e:	bbe5                	c.j	10f56 <_malloc_r+0x13a>
   11160:	6810                	c.ld	a2,16(s0)
   11162:	97a2                	c.add	a5,s0
   11164:	6798                	c.ld	a4,8(a5)
   11166:	ee14                	c.sd	a3,24(a2)
   11168:	ea90                	c.sd	a2,16(a3)
   1116a:	00176713          	ori	a4,a4,1
   1116e:	854a                	c.mv	a0,s2
   11170:	e798                	c.sd	a4,8(a5)
   11172:	2de000ef          	jal	ra,11450 <__malloc_unlock>
   11176:	60e6                	c.ldsp	ra,88(sp)
   11178:	01040513          	addi	a0,s0,16
   1117c:	6446                	c.ldsp	s0,80(sp)
   1117e:	64a6                	c.ldsp	s1,72(sp)
   11180:	6906                	c.ldsp	s2,64(sp)
   11182:	79e2                	c.ldsp	s3,56(sp)
   11184:	6125                	c.addi16sp	sp,96
   11186:	8082                	c.jr	ra
   11188:	6f80                	c.ld	s0,24(a5)
   1118a:	2589                	c.addiw	a1,2
   1118c:	d68784e3          	beq	a5,s0,10ef4 <_malloc_r+0xd8>
   11190:	b1e9                	c.j	10e5a <_malloc_r+0x3e>
   11192:	0097d713          	srli	a4,a5,0x9
   11196:	4691                	c.li	a3,4
   11198:	0ee6fc63          	bgeu	a3,a4,11290 <_malloc_r+0x474>
   1119c:	46d1                	c.li	a3,20
   1119e:	1ae6ed63          	bltu	a3,a4,11358 <_malloc_r+0x53c>
   111a2:	05c7061b          	addiw	a2,a4,92
   111a6:	0016161b          	slliw	a2,a2,0x1
   111aa:	060e                	c.slli	a2,0x3
   111ac:	05b7069b          	addiw	a3,a4,91
   111b0:	964e                	c.add	a2,s3
   111b2:	6218                	c.ld	a4,0(a2)
   111b4:	1641                	c.addi	a2,-16
   111b6:	00e61663          	bne	a2,a4,111c2 <_malloc_r+0x3a6>
   111ba:	aa89                	c.j	1130c <_malloc_r+0x4f0>
   111bc:	6b18                	c.ld	a4,16(a4)
   111be:	00e60663          	beq	a2,a4,111ca <_malloc_r+0x3ae>
   111c2:	6714                	c.ld	a3,8(a4)
   111c4:	9af1                	c.andi	a3,-4
   111c6:	fed7ebe3          	bltu	a5,a3,111bc <_malloc_r+0x3a0>
   111ca:	6f10                	c.ld	a2,24(a4)
   111cc:	ec10                	c.sd	a2,24(s0)
   111ce:	e818                	c.sd	a4,16(s0)
   111d0:	ea00                	c.sd	s0,16(a2)
   111d2:	ef00                	c.sd	s0,24(a4)
   111d4:	b349                	c.j	10f56 <_malloc_r+0x13a>
   111d6:	4751                	c.li	a4,20
   111d8:	0cf77663          	bgeu	a4,a5,112a4 <_malloc_r+0x488>
   111dc:	05400713          	addi	a4,zero,84
   111e0:	18f76a63          	bltu	a4,a5,11374 <_malloc_r+0x558>
   111e4:	00c4d793          	srli	a5,s1,0xc
   111e8:	06f7859b          	addiw	a1,a5,111 # fffffffffffff06f <__BSS_END__+0xfffffffffffec097>
   111ec:	0015961b          	slliw	a2,a1,0x1
   111f0:	06e7881b          	addiw	a6,a5,110
   111f4:	060e                	c.slli	a2,0x3
   111f6:	b9c1                	c.j	10ec6 <_malloc_r+0xaa>
   111f8:	2e05                	c.addiw	t3,1
   111fa:	003e7793          	andi	a5,t3,3
   111fe:	0541                	c.addi	a0,16
   11200:	cfdd                	c.beqz	a5,112be <_malloc_r+0x4a2>
   11202:	6d1c                	c.ld	a5,24(a0)
   11204:	bb49                	c.j	10f96 <_malloc_r+0x17a>
   11206:	6810                	c.ld	a2,16(s0)
   11208:	0014e593          	ori	a1,s1,1
   1120c:	e40c                	c.sd	a1,8(s0)
   1120e:	ee1c                	c.sd	a5,24(a2)
   11210:	eb90                	c.sd	a2,16(a5)
   11212:	94a2                	c.add	s1,s0
   11214:	0299b423          	sd	s1,40(s3)
   11218:	0299b023          	sd	s1,32(s3)
   1121c:	0016e793          	ori	a5,a3,1
   11220:	9722                	c.add	a4,s0
   11222:	0104bc23          	sd	a6,24(s1)
   11226:	0104b823          	sd	a6,16(s1)
   1122a:	e49c                	c.sd	a5,8(s1)
   1122c:	854a                	c.mv	a0,s2
   1122e:	e314                	c.sd	a3,0(a4)
   11230:	220000ef          	jal	ra,11450 <__malloc_unlock>
   11234:	01040513          	addi	a0,s0,16
   11238:	bb69                	c.j	10fd2 <_malloc_r+0x1b6>
   1123a:	97a2                	c.add	a5,s0
   1123c:	6798                	c.ld	a4,8(a5)
   1123e:	854a                	c.mv	a0,s2
   11240:	00176713          	ori	a4,a4,1
   11244:	e798                	c.sd	a4,8(a5)
   11246:	20a000ef          	jal	ra,11450 <__malloc_unlock>
   1124a:	01040513          	addi	a0,s0,16
   1124e:	b351                	c.j	10fd2 <_malloc_r+0x1b6>
   11250:	0014e693          	ori	a3,s1,1
   11254:	e414                	c.sd	a3,8(s0)
   11256:	94a2                	c.add	s1,s0
   11258:	0299b423          	sd	s1,40(s3)
   1125c:	0299b023          	sd	s1,32(s3)
   11260:	00176693          	ori	a3,a4,1
   11264:	97a2                	c.add	a5,s0
   11266:	0104bc23          	sd	a6,24(s1)
   1126a:	0104b823          	sd	a6,16(s1)
   1126e:	e494                	c.sd	a3,8(s1)
   11270:	854a                	c.mv	a0,s2
   11272:	e398                	c.sd	a4,0(a5)
   11274:	1dc000ef          	jal	ra,11450 <__malloc_unlock>
   11278:	01040513          	addi	a0,s0,16
   1127c:	bb99                	c.j	10fd2 <_malloc_r+0x1b6>
   1127e:	0034d593          	srli	a1,s1,0x3
   11282:	0015879b          	addiw	a5,a1,1
   11286:	0017979b          	slliw	a5,a5,0x1
   1128a:	078e                	c.slli	a5,0x3
   1128c:	2581                	c.addiw	a1,0
   1128e:	be6d                	c.j	10e48 <_malloc_r+0x2c>
   11290:	0067d713          	srli	a4,a5,0x6
   11294:	0397061b          	addiw	a2,a4,57
   11298:	0016161b          	slliw	a2,a2,0x1
   1129c:	060e                	c.slli	a2,0x3
   1129e:	0387069b          	addiw	a3,a4,56
   112a2:	b739                	c.j	111b0 <_malloc_r+0x394>
   112a4:	05c7859b          	addiw	a1,a5,92
   112a8:	0015961b          	slliw	a2,a1,0x1
   112ac:	05b7881b          	addiw	a6,a5,91
   112b0:	060e                	c.slli	a2,0x3
   112b2:	b911                	c.j	10ec6 <_malloc_r+0xaa>
   112b4:	01033783          	ld	a5,16(t1)
   112b8:	35fd                	c.addiw	a1,-1
   112ba:	18679463          	bne	a5,t1,11442 <_malloc_r+0x626>
   112be:	0035f793          	andi	a5,a1,3
   112c2:	1341                	c.addi	t1,-16
   112c4:	fbe5                	c.bnez	a5,112b4 <_malloc_r+0x498>
   112c6:	0089b703          	ld	a4,8(s3)
   112ca:	fff64793          	xori	a5,a2,-1
   112ce:	8ff9                	c.and	a5,a4
   112d0:	00f9b423          	sd	a5,8(s3)
   112d4:	0606                	c.slli	a2,0x1
   112d6:	d0c7ece3          	bltu	a5,a2,10fee <_malloc_r+0x1d2>
   112da:	d0060ae3          	beq	a2,zero,10fee <_malloc_r+0x1d2>
   112de:	00f67733          	and	a4,a2,a5
   112e2:	e711                	c.bnez	a4,112ee <_malloc_r+0x4d2>
   112e4:	0606                	c.slli	a2,0x1
   112e6:	00f67733          	and	a4,a2,a5
   112ea:	2e11                	c.addiw	t3,4
   112ec:	df65                	c.beqz	a4,112e4 <_malloc_r+0x4c8>
   112ee:	85f2                	c.mv	a1,t3
   112f0:	b949                	c.j	10f82 <_malloc_r+0x166>
   112f2:	01040593          	addi	a1,s0,16
   112f6:	854a                	c.mv	a0,s2
   112f8:	8e3ff0ef          	jal	ra,10bda <_free_r>
   112fc:	000c2703          	lw	a4,0(s8)
   11300:	0109bb03          	ld	s6,16(s3)
   11304:	b3d5                	c.j	110e8 <_malloc_r+0x2cc>
   11306:	020a0a13          	addi	s4,s4,32
   1130a:	b31d                	c.j	11030 <_malloc_r+0x214>
   1130c:	4026d69b          	sraiw	a3,a3,0x2
   11310:	4785                	c.li	a5,1
   11312:	00d797b3          	sll	a5,a5,a3
   11316:	8d5d                	c.or	a0,a5
   11318:	00a9b423          	sd	a0,8(s3)
   1131c:	bd45                	c.j	111cc <_malloc_r+0x3b0>
   1131e:	014b0bb3          	add	s7,s6,s4
   11322:	41700bb3          	sub	s7,zero,s7
   11326:	1bd2                	c.slli	s7,0x34
   11328:	034bdb93          	srli	s7,s7,0x34
   1132c:	85de                	c.mv	a1,s7
   1132e:	854a                	c.mv	a0,s2
   11330:	4c6000ef          	jal	ra,117f6 <_sbrk_r>
   11334:	57fd                	c.li	a5,-1
   11336:	4681                	c.li	a3,0
   11338:	d6f514e3          	bne	a0,a5,110a0 <_malloc_r+0x284>
   1133c:	bb85                	c.j	110ac <_malloc_r+0x290>
   1133e:	6c42                	c.ldsp	s8,16(sp)
   11340:	4785                	c.li	a5,1
   11342:	00fb3423          	sd	a5,8(s6)
   11346:	854a                	c.mv	a0,s2
   11348:	108000ef          	jal	ra,11450 <__malloc_unlock>
   1134c:	7a42                	c.ldsp	s4,48(sp)
   1134e:	7aa2                	c.ldsp	s5,40(sp)
   11350:	7b02                	c.ldsp	s6,32(sp)
   11352:	6be2                	c.ldsp	s7,24(sp)
   11354:	6ca2                	c.ldsp	s9,8(sp)
   11356:	b9ad                	c.j	10fd0 <_malloc_r+0x1b4>
   11358:	05400693          	addi	a3,zero,84
   1135c:	06e6e763          	bltu	a3,a4,113ca <_malloc_r+0x5ae>
   11360:	00c7d713          	srli	a4,a5,0xc
   11364:	06f7061b          	addiw	a2,a4,111
   11368:	0016161b          	slliw	a2,a2,0x1
   1136c:	060e                	c.slli	a2,0x3
   1136e:	06e7069b          	addiw	a3,a4,110
   11372:	bd3d                	c.j	111b0 <_malloc_r+0x394>
   11374:	15400713          	addi	a4,zero,340
   11378:	06f76763          	bltu	a4,a5,113e6 <_malloc_r+0x5ca>
   1137c:	00f4d793          	srli	a5,s1,0xf
   11380:	0787859b          	addiw	a1,a5,120
   11384:	0015961b          	slliw	a2,a1,0x1
   11388:	0777881b          	addiw	a6,a5,119
   1138c:	060e                	c.slli	a2,0x3
   1138e:	be25                	c.j	10ec6 <_malloc_r+0xaa>
   11390:	79818c13          	addi	s8,gp,1944 # 12fb0 <__malloc_current_mallinfo>
   11394:	000c2683          	lw	a3,0(s8)
   11398:	014686bb          	addw	a3,a3,s4
   1139c:	00dc2023          	sw	a3,0(s8)
   113a0:	b975                	c.j	1105c <_malloc_r+0x240>
   113a2:	0109b403          	ld	s0,16(s3)
   113a6:	641c                	c.ld	a5,8(s0)
   113a8:	b3bd                	c.j	11116 <_malloc_r+0x2fa>
   113aa:	03451793          	slli	a5,a0,0x34
   113ae:	ca0797e3          	bne	a5,zero,1105c <_malloc_r+0x240>
   113b2:	0109bb03          	ld	s6,16(s3)
   113b6:	014a87b3          	add	a5,s5,s4
   113ba:	0017e793          	ori	a5,a5,1
   113be:	00fb3423          	sd	a5,8(s6)
   113c2:	b32d                	c.j	110ec <_malloc_r+0x2d0>
   113c4:	1961bc23          	sd	s6,408(gp) # 129b0 <__malloc_sbrk_base>
   113c8:	b165                	c.j	11070 <_malloc_r+0x254>
   113ca:	15400693          	addi	a3,zero,340
   113ce:	04e6e063          	bltu	a3,a4,1140e <_malloc_r+0x5f2>
   113d2:	00f7d713          	srli	a4,a5,0xf
   113d6:	0787061b          	addiw	a2,a4,120
   113da:	0016161b          	slliw	a2,a2,0x1
   113de:	060e                	c.slli	a2,0x3
   113e0:	0777069b          	addiw	a3,a4,119
   113e4:	b3f1                	c.j	111b0 <_malloc_r+0x394>
   113e6:	55400713          	addi	a4,zero,1364
   113ea:	04f76063          	bltu	a4,a5,1142a <_malloc_r+0x60e>
   113ee:	0124d793          	srli	a5,s1,0x12
   113f2:	07d7859b          	addiw	a1,a5,125
   113f6:	0015961b          	slliw	a2,a1,0x1
   113fa:	07c7881b          	addiw	a6,a5,124
   113fe:	060e                	c.slli	a2,0x3
   11400:	b4d9                	c.j	10ec6 <_malloc_r+0xaa>
   11402:	1cc1                	c.addi	s9,-16
   11404:	9a66                	c.add	s4,s9
   11406:	416a0a33          	sub	s4,s4,s6
   1140a:	4681                	c.li	a3,0
   1140c:	b145                	c.j	110ac <_malloc_r+0x290>
   1140e:	55400693          	addi	a3,zero,1364
   11412:	02e6e363          	bltu	a3,a4,11438 <_malloc_r+0x61c>
   11416:	0127d713          	srli	a4,a5,0x12
   1141a:	07d7061b          	addiw	a2,a4,125
   1141e:	0016161b          	slliw	a2,a2,0x1
   11422:	060e                	c.slli	a2,0x3
   11424:	07c7069b          	addiw	a3,a4,124
   11428:	b361                	c.j	111b0 <_malloc_r+0x394>
   1142a:	7f000613          	addi	a2,zero,2032
   1142e:	07f00593          	addi	a1,zero,127
   11432:	07e00813          	addi	a6,zero,126
   11436:	bc41                	c.j	10ec6 <_malloc_r+0xaa>
   11438:	7f000613          	addi	a2,zero,2032
   1143c:	07e00693          	addi	a3,zero,126
   11440:	bb85                	c.j	111b0 <_malloc_r+0x394>
   11442:	0089b783          	ld	a5,8(s3)
   11446:	b579                	c.j	112d4 <_malloc_r+0x4b8>

0000000000011448 <__malloc_lock>:
   11448:	1e018513          	addi	a0,gp,480 # 129f8 <__lock___malloc_recursive_mutex>
   1144c:	c92ff06f          	jal	zero,108de <__retarget_lock_acquire_recursive>

0000000000011450 <__malloc_unlock>:
   11450:	1e018513          	addi	a0,gp,480 # 129f8 <__lock___malloc_recursive_mutex>
   11454:	c96ff06f          	jal	zero,108ea <__retarget_lock_release_recursive>

0000000000011458 <_fclose_r>:
   11458:	1101                	c.addi	sp,-32
   1145a:	ec06                	c.sdsp	ra,24(sp)
   1145c:	e04a                	c.sdsp	s2,0(sp)
   1145e:	c9d9                	c.beqz	a1,114f4 <_fclose_r+0x9c>
   11460:	e822                	c.sdsp	s0,16(sp)
   11462:	e426                	c.sdsp	s1,8(sp)
   11464:	842e                	c.mv	s0,a1
   11466:	84aa                	c.mv	s1,a0
   11468:	c119                	c.beqz	a0,1146e <_fclose_r+0x16>
   1146a:	653c                	c.ld	a5,72(a0)
   1146c:	c7cd                	c.beqz	a5,11516 <_fclose_r+0xbe>
   1146e:	0b042783          	lw	a5,176(s0)
   11472:	01041703          	lh	a4,16(s0)
   11476:	8b85                	c.andi	a5,1
   11478:	ebbd                	c.bnez	a5,114ee <_fclose_r+0x96>
   1147a:	20077713          	andi	a4,a4,512
   1147e:	cf59                	c.beqz	a4,1151c <_fclose_r+0xc4>
   11480:	85a2                	c.mv	a1,s0
   11482:	8526                	c.mv	a0,s1
   11484:	0c8000ef          	jal	ra,1154c <__sflush_r>
   11488:	683c                	c.ld	a5,80(s0)
   1148a:	892a                	c.mv	s2,a0
   1148c:	c791                	c.beqz	a5,11498 <_fclose_r+0x40>
   1148e:	780c                	c.ld	a1,48(s0)
   11490:	8526                	c.mv	a0,s1
   11492:	9782                	c.jalr	a5
   11494:	06054663          	blt	a0,zero,11500 <_fclose_r+0xa8>
   11498:	01045783          	lhu	a5,16(s0)
   1149c:	0807f793          	andi	a5,a5,128
   114a0:	e7b5                	c.bnez	a5,1150c <_fclose_r+0xb4>
   114a2:	6c2c                	c.ld	a1,88(s0)
   114a4:	c991                	c.beqz	a1,114b8 <_fclose_r+0x60>
   114a6:	07440793          	addi	a5,s0,116
   114aa:	00f58563          	beq	a1,a5,114b4 <_fclose_r+0x5c>
   114ae:	8526                	c.mv	a0,s1
   114b0:	f2aff0ef          	jal	ra,10bda <_free_r>
   114b4:	04043c23          	sd	zero,88(s0)
   114b8:	7c2c                	c.ld	a1,120(s0)
   114ba:	c591                	c.beqz	a1,114c6 <_fclose_r+0x6e>
   114bc:	8526                	c.mv	a0,s1
   114be:	f1cff0ef          	jal	ra,10bda <_free_r>
   114c2:	06043c23          	sd	zero,120(s0)
   114c6:	860ff0ef          	jal	ra,10526 <__sfp_lock_acquire>
   114ca:	0b042783          	lw	a5,176(s0)
   114ce:	00041823          	sh	zero,16(s0)
   114d2:	8b85                	c.andi	a5,1
   114d4:	c7a5                	c.beqz	a5,1153c <_fclose_r+0xe4>
   114d6:	7048                	c.ld	a0,160(s0)
   114d8:	c02ff0ef          	jal	ra,108da <__retarget_lock_close_recursive>
   114dc:	850ff0ef          	jal	ra,1052c <__sfp_lock_release>
   114e0:	60e2                	c.ldsp	ra,24(sp)
   114e2:	6442                	c.ldsp	s0,16(sp)
   114e4:	64a2                	c.ldsp	s1,8(sp)
   114e6:	854a                	c.mv	a0,s2
   114e8:	6902                	c.ldsp	s2,0(sp)
   114ea:	6105                	c.addi16sp	sp,32
   114ec:	8082                	c.jr	ra
   114ee:	fb49                	c.bnez	a4,11480 <_fclose_r+0x28>
   114f0:	6442                	c.ldsp	s0,16(sp)
   114f2:	64a2                	c.ldsp	s1,8(sp)
   114f4:	60e2                	c.ldsp	ra,24(sp)
   114f6:	4901                	c.li	s2,0
   114f8:	854a                	c.mv	a0,s2
   114fa:	6902                	c.ldsp	s2,0(sp)
   114fc:	6105                	c.addi16sp	sp,32
   114fe:	8082                	c.jr	ra
   11500:	01045783          	lhu	a5,16(s0)
   11504:	597d                	c.li	s2,-1
   11506:	0807f793          	andi	a5,a5,128
   1150a:	dfc1                	c.beqz	a5,114a2 <_fclose_r+0x4a>
   1150c:	6c0c                	c.ld	a1,24(s0)
   1150e:	8526                	c.mv	a0,s1
   11510:	ecaff0ef          	jal	ra,10bda <_free_r>
   11514:	b779                	c.j	114a2 <_fclose_r+0x4a>
   11516:	fcdfe0ef          	jal	ra,104e2 <__sinit>
   1151a:	bf91                	c.j	1146e <_fclose_r+0x16>
   1151c:	7048                	c.ld	a0,160(s0)
   1151e:	bc0ff0ef          	jal	ra,108de <__retarget_lock_acquire_recursive>
   11522:	01041783          	lh	a5,16(s0)
   11526:	ffa9                	c.bnez	a5,11480 <_fclose_r+0x28>
   11528:	0b042783          	lw	a5,176(s0)
   1152c:	8b85                	c.andi	a5,1
   1152e:	f3e9                	c.bnez	a5,114f0 <_fclose_r+0x98>
   11530:	7048                	c.ld	a0,160(s0)
   11532:	bb8ff0ef          	jal	ra,108ea <__retarget_lock_release_recursive>
   11536:	6442                	c.ldsp	s0,16(sp)
   11538:	64a2                	c.ldsp	s1,8(sp)
   1153a:	bf6d                	c.j	114f4 <_fclose_r+0x9c>
   1153c:	7048                	c.ld	a0,160(s0)
   1153e:	bacff0ef          	jal	ra,108ea <__retarget_lock_release_recursive>
   11542:	bf51                	c.j	114d6 <_fclose_r+0x7e>

0000000000011544 <fclose>:
   11544:	85aa                	c.mv	a1,a0
   11546:	1881b503          	ld	a0,392(gp) # 129a0 <_impure_ptr>
   1154a:	b739                	c.j	11458 <_fclose_r>

000000000001154c <__sflush_r>:
   1154c:	01059703          	lh	a4,16(a1)
   11550:	7179                	c.addi16sp	sp,-48
   11552:	f022                	c.sdsp	s0,32(sp)
   11554:	e44e                	c.sdsp	s3,8(sp)
   11556:	f406                	c.sdsp	ra,40(sp)
   11558:	00877793          	andi	a5,a4,8
   1155c:	842e                	c.mv	s0,a1
   1155e:	89aa                	c.mv	s3,a0
   11560:	e7e1                	c.bnez	a5,11628 <__sflush_r+0xdc>
   11562:	6785                	c.lui	a5,0x1
   11564:	80078793          	addi	a5,a5,-2048 # 800 <exit-0xf920>
   11568:	4594                	c.lw	a3,8(a1)
   1156a:	8fd9                	c.or	a5,a4
   1156c:	00f59823          	sh	a5,16(a1)
   11570:	10d05963          	bge	zero,a3,11682 <__sflush_r+0x136>
   11574:	04843803          	ld	a6,72(s0)
   11578:	0a080263          	beq	a6,zero,1161c <__sflush_r+0xd0>
   1157c:	ec26                	c.sdsp	s1,24(sp)
   1157e:	03371693          	slli	a3,a4,0x33
   11582:	0009a483          	lw	s1,0(s3)
   11586:	0009a023          	sw	zero,0(s3)
   1158a:	1006c363          	blt	a3,zero,11690 <__sflush_r+0x144>
   1158e:	780c                	c.ld	a1,48(s0)
   11590:	4601                	c.li	a2,0
   11592:	4685                	c.li	a3,1
   11594:	854e                	c.mv	a0,s3
   11596:	9802                	c.jalr	a6
   11598:	57fd                	c.li	a5,-1
   1159a:	862a                	c.mv	a2,a0
   1159c:	12f50163          	beq	a0,a5,116be <__sflush_r+0x172>
   115a0:	01041783          	lh	a5,16(s0)
   115a4:	04843803          	ld	a6,72(s0)
   115a8:	8b91                	c.andi	a5,4
   115aa:	c799                	c.beqz	a5,115b8 <__sflush_r+0x6c>
   115ac:	4418                	c.lw	a4,8(s0)
   115ae:	6c3c                	c.ld	a5,88(s0)
   115b0:	8e19                	c.sub	a2,a4
   115b2:	c399                	c.beqz	a5,115b8 <__sflush_r+0x6c>
   115b4:	583c                	c.lw	a5,112(s0)
   115b6:	8e1d                	c.sub	a2,a5
   115b8:	780c                	c.ld	a1,48(s0)
   115ba:	4681                	c.li	a3,0
   115bc:	854e                	c.mv	a0,s3
   115be:	9802                	c.jalr	a6
   115c0:	577d                	c.li	a4,-1
   115c2:	01041783          	lh	a5,16(s0)
   115c6:	0ce51763          	bne	a0,a4,11694 <__sflush_r+0x148>
   115ca:	0009a683          	lw	a3,0(s3)
   115ce:	4775                	c.li	a4,29
   115d0:	10d76363          	bltu	a4,a3,116d6 <__sflush_r+0x18a>
   115d4:	20400737          	lui	a4,0x20400
   115d8:	0705                	c.addi	a4,1 # 20400001 <__BSS_END__+0x203ed029>
   115da:	00d75733          	srl	a4,a4,a3
   115de:	8b05                	c.andi	a4,1
   115e0:	cb7d                	c.beqz	a4,116d6 <__sflush_r+0x18a>
   115e2:	6c10                	c.ld	a2,24(s0)
   115e4:	777d                	c.lui	a4,0xfffff
   115e6:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffec827>
   115ea:	8f7d                	c.and	a4,a5
   115ec:	00e41823          	sh	a4,16(s0)
   115f0:	00042423          	sw	zero,8(s0)
   115f4:	e010                	c.sd	a2,0(s0)
   115f6:	03379713          	slli	a4,a5,0x33
   115fa:	00075363          	bge	a4,zero,11600 <__sflush_r+0xb4>
   115fe:	cacd                	c.beqz	a3,116b0 <__sflush_r+0x164>
   11600:	6c2c                	c.ld	a1,88(s0)
   11602:	0099a023          	sw	s1,0(s3)
   11606:	c9d5                	c.beqz	a1,116ba <__sflush_r+0x16e>
   11608:	07440793          	addi	a5,s0,116
   1160c:	00f58563          	beq	a1,a5,11616 <__sflush_r+0xca>
   11610:	854e                	c.mv	a0,s3
   11612:	dc8ff0ef          	jal	ra,10bda <_free_r>
   11616:	64e2                	c.ldsp	s1,24(sp)
   11618:	04043c23          	sd	zero,88(s0)
   1161c:	70a2                	c.ldsp	ra,40(sp)
   1161e:	7402                	c.ldsp	s0,32(sp)
   11620:	69a2                	c.ldsp	s3,8(sp)
   11622:	4501                	c.li	a0,0
   11624:	6145                	c.addi16sp	sp,48
   11626:	8082                	c.jr	ra
   11628:	e84a                	c.sdsp	s2,16(sp)
   1162a:	0185b903          	ld	s2,24(a1)
   1162e:	04090f63          	beq	s2,zero,1168c <__sflush_r+0x140>
   11632:	ec26                	c.sdsp	s1,24(sp)
   11634:	6184                	c.ld	s1,0(a1)
   11636:	8b0d                	c.andi	a4,3
   11638:	0125b023          	sd	s2,0(a1)
   1163c:	412484bb          	subw	s1,s1,s2
   11640:	4781                	c.li	a5,0
   11642:	e311                	c.bnez	a4,11646 <__sflush_r+0xfa>
   11644:	519c                	c.lw	a5,32(a1)
   11646:	c45c                	c.sw	a5,12(s0)
   11648:	00904663          	blt	zero,s1,11654 <__sflush_r+0x108>
   1164c:	a83d                	c.j	1168a <__sflush_r+0x13e>
   1164e:	992a                	c.add	s2,a0
   11650:	02905d63          	bge	zero,s1,1168a <__sflush_r+0x13e>
   11654:	603c                	c.ld	a5,64(s0)
   11656:	780c                	c.ld	a1,48(s0)
   11658:	86a6                	c.mv	a3,s1
   1165a:	864a                	c.mv	a2,s2
   1165c:	854e                	c.mv	a0,s3
   1165e:	9782                	c.jalr	a5
   11660:	9c89                	c.subw	s1,a0
   11662:	fea046e3          	blt	zero,a0,1164e <__sflush_r+0x102>
   11666:	01041783          	lh	a5,16(s0)
   1166a:	6942                	c.ldsp	s2,16(sp)
   1166c:	0407e793          	ori	a5,a5,64
   11670:	70a2                	c.ldsp	ra,40(sp)
   11672:	00f41823          	sh	a5,16(s0)
   11676:	7402                	c.ldsp	s0,32(sp)
   11678:	64e2                	c.ldsp	s1,24(sp)
   1167a:	69a2                	c.ldsp	s3,8(sp)
   1167c:	557d                	c.li	a0,-1
   1167e:	6145                	c.addi16sp	sp,48
   11680:	8082                	c.jr	ra
   11682:	59b4                	c.lw	a3,112(a1)
   11684:	eed048e3          	blt	zero,a3,11574 <__sflush_r+0x28>
   11688:	bf51                	c.j	1161c <__sflush_r+0xd0>
   1168a:	64e2                	c.ldsp	s1,24(sp)
   1168c:	6942                	c.ldsp	s2,16(sp)
   1168e:	b779                	c.j	1161c <__sflush_r+0xd0>
   11690:	6850                	c.ld	a2,144(s0)
   11692:	bf19                	c.j	115a8 <__sflush_r+0x5c>
   11694:	6c14                	c.ld	a3,24(s0)
   11696:	777d                	c.lui	a4,0xfffff
   11698:	7ff70713          	addi	a4,a4,2047 # fffffffffffff7ff <__BSS_END__+0xfffffffffffec827>
   1169c:	8f7d                	c.and	a4,a5
   1169e:	00e41823          	sh	a4,16(s0)
   116a2:	00042423          	sw	zero,8(s0)
   116a6:	e014                	c.sd	a3,0(s0)
   116a8:	03379713          	slli	a4,a5,0x33
   116ac:	f4075ae3          	bge	a4,zero,11600 <__sflush_r+0xb4>
   116b0:	6c2c                	c.ld	a1,88(s0)
   116b2:	e848                	c.sd	a0,144(s0)
   116b4:	0099a023          	sw	s1,0(s3)
   116b8:	f9a1                	c.bnez	a1,11608 <__sflush_r+0xbc>
   116ba:	64e2                	c.ldsp	s1,24(sp)
   116bc:	b785                	c.j	1161c <__sflush_r+0xd0>
   116be:	0009a783          	lw	a5,0(s3)
   116c2:	ec078fe3          	beq	a5,zero,115a0 <__sflush_r+0x54>
   116c6:	4775                	c.li	a4,29
   116c8:	00e78a63          	beq	a5,a4,116dc <__sflush_r+0x190>
   116cc:	4759                	c.li	a4,22
   116ce:	00e78763          	beq	a5,a4,116dc <__sflush_r+0x190>
   116d2:	01041783          	lh	a5,16(s0)
   116d6:	0407e793          	ori	a5,a5,64
   116da:	bf59                	c.j	11670 <__sflush_r+0x124>
   116dc:	0099a023          	sw	s1,0(s3)
   116e0:	64e2                	c.ldsp	s1,24(sp)
   116e2:	bf2d                	c.j	1161c <__sflush_r+0xd0>

00000000000116e4 <_fflush_r>:
   116e4:	1101                	c.addi	sp,-32
   116e6:	e822                	c.sdsp	s0,16(sp)
   116e8:	e426                	c.sdsp	s1,8(sp)
   116ea:	ec06                	c.sdsp	ra,24(sp)
   116ec:	e04a                	c.sdsp	s2,0(sp)
   116ee:	84aa                	c.mv	s1,a0
   116f0:	842e                	c.mv	s0,a1
   116f2:	c119                	c.beqz	a0,116f8 <_fflush_r+0x14>
   116f4:	653c                	c.ld	a5,72(a0)
   116f6:	cba5                	c.beqz	a5,11766 <_fflush_r+0x82>
   116f8:	01041783          	lh	a5,16(s0)
   116fc:	4901                	c.li	s2,0
   116fe:	c795                	c.beqz	a5,1172a <_fflush_r+0x46>
   11700:	0b042703          	lw	a4,176(s0)
   11704:	8b05                	c.andi	a4,1
   11706:	e701                	c.bnez	a4,1170e <_fflush_r+0x2a>
   11708:	2007f793          	andi	a5,a5,512
   1170c:	c795                	c.beqz	a5,11738 <_fflush_r+0x54>
   1170e:	8526                	c.mv	a0,s1
   11710:	85a2                	c.mv	a1,s0
   11712:	e3bff0ef          	jal	ra,1154c <__sflush_r>
   11716:	0b042783          	lw	a5,176(s0)
   1171a:	892a                	c.mv	s2,a0
   1171c:	8b85                	c.andi	a5,1
   1171e:	e791                	c.bnez	a5,1172a <_fflush_r+0x46>
   11720:	01045783          	lhu	a5,16(s0)
   11724:	2007f793          	andi	a5,a5,512
   11728:	c78d                	c.beqz	a5,11752 <_fflush_r+0x6e>
   1172a:	60e2                	c.ldsp	ra,24(sp)
   1172c:	6442                	c.ldsp	s0,16(sp)
   1172e:	64a2                	c.ldsp	s1,8(sp)
   11730:	854a                	c.mv	a0,s2
   11732:	6902                	c.ldsp	s2,0(sp)
   11734:	6105                	c.addi16sp	sp,32
   11736:	8082                	c.jr	ra
   11738:	7048                	c.ld	a0,160(s0)
   1173a:	9a4ff0ef          	jal	ra,108de <__retarget_lock_acquire_recursive>
   1173e:	8526                	c.mv	a0,s1
   11740:	85a2                	c.mv	a1,s0
   11742:	e0bff0ef          	jal	ra,1154c <__sflush_r>
   11746:	0b042783          	lw	a5,176(s0)
   1174a:	892a                	c.mv	s2,a0
   1174c:	8b85                	c.andi	a5,1
   1174e:	fff1                	c.bnez	a5,1172a <_fflush_r+0x46>
   11750:	bfc1                	c.j	11720 <_fflush_r+0x3c>
   11752:	7048                	c.ld	a0,160(s0)
   11754:	996ff0ef          	jal	ra,108ea <__retarget_lock_release_recursive>
   11758:	60e2                	c.ldsp	ra,24(sp)
   1175a:	6442                	c.ldsp	s0,16(sp)
   1175c:	64a2                	c.ldsp	s1,8(sp)
   1175e:	854a                	c.mv	a0,s2
   11760:	6902                	c.ldsp	s2,0(sp)
   11762:	6105                	c.addi16sp	sp,32
   11764:	8082                	c.jr	ra
   11766:	d7dfe0ef          	jal	ra,104e2 <__sinit>
   1176a:	b779                	c.j	116f8 <_fflush_r+0x14>

000000000001176c <fflush>:
   1176c:	c935                	c.beqz	a0,117e0 <fflush+0x74>
   1176e:	1101                	c.addi	sp,-32
   11770:	e04a                	c.sdsp	s2,0(sp)
   11772:	1881b903          	ld	s2,392(gp) # 129a0 <_impure_ptr>
   11776:	e822                	c.sdsp	s0,16(sp)
   11778:	ec06                	c.sdsp	ra,24(sp)
   1177a:	e426                	c.sdsp	s1,8(sp)
   1177c:	842a                	c.mv	s0,a0
   1177e:	00090563          	beq	s2,zero,11788 <fflush+0x1c>
   11782:	04893783          	ld	a5,72(s2)
   11786:	c3a9                	c.beqz	a5,117c8 <fflush+0x5c>
   11788:	01041783          	lh	a5,16(s0)
   1178c:	4481                	c.li	s1,0
   1178e:	c795                	c.beqz	a5,117ba <fflush+0x4e>
   11790:	0b042703          	lw	a4,176(s0)
   11794:	8b05                	c.andi	a4,1
   11796:	e701                	c.bnez	a4,1179e <fflush+0x32>
   11798:	2007f793          	andi	a5,a5,512
   1179c:	cb95                	c.beqz	a5,117d0 <fflush+0x64>
   1179e:	854a                	c.mv	a0,s2
   117a0:	85a2                	c.mv	a1,s0
   117a2:	dabff0ef          	jal	ra,1154c <__sflush_r>
   117a6:	0b042783          	lw	a5,176(s0)
   117aa:	84aa                	c.mv	s1,a0
   117ac:	8b85                	c.andi	a5,1
   117ae:	e791                	c.bnez	a5,117ba <fflush+0x4e>
   117b0:	01045783          	lhu	a5,16(s0)
   117b4:	2007f793          	andi	a5,a5,512
   117b8:	c385                	c.beqz	a5,117d8 <fflush+0x6c>
   117ba:	60e2                	c.ldsp	ra,24(sp)
   117bc:	6442                	c.ldsp	s0,16(sp)
   117be:	6902                	c.ldsp	s2,0(sp)
   117c0:	8526                	c.mv	a0,s1
   117c2:	64a2                	c.ldsp	s1,8(sp)
   117c4:	6105                	c.addi16sp	sp,32
   117c6:	8082                	c.jr	ra
   117c8:	854a                	c.mv	a0,s2
   117ca:	d19fe0ef          	jal	ra,104e2 <__sinit>
   117ce:	bf6d                	c.j	11788 <fflush+0x1c>
   117d0:	7048                	c.ld	a0,160(s0)
   117d2:	90cff0ef          	jal	ra,108de <__retarget_lock_acquire_recursive>
   117d6:	b7e1                	c.j	1179e <fflush+0x32>
   117d8:	7048                	c.ld	a0,160(s0)
   117da:	910ff0ef          	jal	ra,108ea <__retarget_lock_release_recursive>
   117de:	bff1                	c.j	117ba <fflush+0x4e>
   117e0:	6649                	c.lui	a2,0x12
   117e2:	65c5                	c.lui	a1,0x11
   117e4:	6549                	c.lui	a0,0x12
   117e6:	01860613          	addi	a2,a2,24 # 12018 <__sglue>
   117ea:	6e458593          	addi	a1,a1,1764 # 116e4 <_fflush_r>
   117ee:	03050513          	addi	a0,a0,48 # 12030 <_impure_data>
   117f2:	d81fe06f          	jal	zero,10572 <_fwalk_sglue>

00000000000117f6 <_sbrk_r>:
   117f6:	1101                	c.addi	sp,-32
   117f8:	e822                	c.sdsp	s0,16(sp)
   117fa:	e426                	c.sdsp	s1,8(sp)
   117fc:	842a                	c.mv	s0,a0
   117fe:	852e                	c.mv	a0,a1
   11800:	ec06                	c.sdsp	ra,24(sp)
   11802:	1a01ac23          	sw	zero,440(gp) # 129d0 <errno>
   11806:	0cc000ef          	jal	ra,118d2 <_sbrk>
   1180a:	57fd                	c.li	a5,-1
   1180c:	00f50763          	beq	a0,a5,1181a <_sbrk_r+0x24>
   11810:	60e2                	c.ldsp	ra,24(sp)
   11812:	6442                	c.ldsp	s0,16(sp)
   11814:	64a2                	c.ldsp	s1,8(sp)
   11816:	6105                	c.addi16sp	sp,32
   11818:	8082                	c.jr	ra
   1181a:	1b81a783          	lw	a5,440(gp) # 129d0 <errno>
   1181e:	dbed                	c.beqz	a5,11810 <_sbrk_r+0x1a>
   11820:	60e2                	c.ldsp	ra,24(sp)
   11822:	c01c                	c.sw	a5,0(s0)
   11824:	6442                	c.ldsp	s0,16(sp)
   11826:	64a2                	c.ldsp	s1,8(sp)
   11828:	6105                	c.addi16sp	sp,32
   1182a:	8082                	c.jr	ra

000000000001182c <_close>:
   1182c:	1141                	c.addi	sp,-16
   1182e:	e406                	c.sdsp	ra,8(sp)
   11830:	e022                	c.sdsp	s0,0(sp)
   11832:	03900893          	addi	a7,zero,57
   11836:	00000073          	ecall
   1183a:	842a                	c.mv	s0,a0
   1183c:	00054763          	blt	a0,zero,1184a <_close+0x1e>
   11840:	2501                	c.addiw	a0,0
   11842:	60a2                	c.ldsp	ra,8(sp)
   11844:	6402                	c.ldsp	s0,0(sp)
   11846:	0141                	c.addi	sp,16
   11848:	8082                	c.jr	ra
   1184a:	108000ef          	jal	ra,11952 <__errno>
   1184e:	4080043b          	subw	s0,zero,s0
   11852:	c100                	c.sw	s0,0(a0)
   11854:	557d                	c.li	a0,-1
   11856:	b7f5                	c.j	11842 <_close+0x16>

0000000000011858 <_exit>:
   11858:	05d00893          	addi	a7,zero,93
   1185c:	00000073          	ecall
   11860:	00054363          	blt	a0,zero,11866 <_exit+0xe>
   11864:	a001                	c.j	11864 <_exit+0xc>
   11866:	1141                	c.addi	sp,-16
   11868:	e022                	c.sdsp	s0,0(sp)
   1186a:	842a                	c.mv	s0,a0
   1186c:	e406                	c.sdsp	ra,8(sp)
   1186e:	4080043b          	subw	s0,zero,s0
   11872:	0e0000ef          	jal	ra,11952 <__errno>
   11876:	c100                	c.sw	s0,0(a0)
   11878:	a001                	c.j	11878 <_exit+0x20>

000000000001187a <_lseek>:
   1187a:	1141                	c.addi	sp,-16
   1187c:	e406                	c.sdsp	ra,8(sp)
   1187e:	e022                	c.sdsp	s0,0(sp)
   11880:	03e00893          	addi	a7,zero,62
   11884:	00000073          	ecall
   11888:	842a                	c.mv	s0,a0
   1188a:	00054763          	blt	a0,zero,11898 <_lseek+0x1e>
   1188e:	60a2                	c.ldsp	ra,8(sp)
   11890:	8522                	c.mv	a0,s0
   11892:	6402                	c.ldsp	s0,0(sp)
   11894:	0141                	c.addi	sp,16
   11896:	8082                	c.jr	ra
   11898:	4080043b          	subw	s0,zero,s0
   1189c:	0b6000ef          	jal	ra,11952 <__errno>
   118a0:	c100                	c.sw	s0,0(a0)
   118a2:	547d                	c.li	s0,-1
   118a4:	b7ed                	c.j	1188e <_lseek+0x14>

00000000000118a6 <_read>:
   118a6:	1141                	c.addi	sp,-16
   118a8:	e406                	c.sdsp	ra,8(sp)
   118aa:	e022                	c.sdsp	s0,0(sp)
   118ac:	03f00893          	addi	a7,zero,63
   118b0:	00000073          	ecall
   118b4:	842a                	c.mv	s0,a0
   118b6:	00054763          	blt	a0,zero,118c4 <_read+0x1e>
   118ba:	60a2                	c.ldsp	ra,8(sp)
   118bc:	8522                	c.mv	a0,s0
   118be:	6402                	c.ldsp	s0,0(sp)
   118c0:	0141                	c.addi	sp,16
   118c2:	8082                	c.jr	ra
   118c4:	4080043b          	subw	s0,zero,s0
   118c8:	08a000ef          	jal	ra,11952 <__errno>
   118cc:	c100                	c.sw	s0,0(a0)
   118ce:	547d                	c.li	s0,-1
   118d0:	b7ed                	c.j	118ba <_read+0x14>

00000000000118d2 <_sbrk>:
   118d2:	2201b703          	ld	a4,544(gp) # 12a38 <heap_end.0>
   118d6:	1141                	c.addi	sp,-16
   118d8:	e406                	c.sdsp	ra,8(sp)
   118da:	87aa                	c.mv	a5,a0
   118dc:	ef01                	c.bnez	a4,118f4 <_sbrk+0x22>
   118de:	0d600893          	addi	a7,zero,214
   118e2:	4501                	c.li	a0,0
   118e4:	00000073          	ecall
   118e8:	567d                	c.li	a2,-1
   118ea:	872a                	c.mv	a4,a0
   118ec:	02c50563          	beq	a0,a2,11916 <_sbrk+0x44>
   118f0:	22a1b023          	sd	a0,544(gp) # 12a38 <heap_end.0>
   118f4:	00e78533          	add	a0,a5,a4
   118f8:	0d600893          	addi	a7,zero,214
   118fc:	00000073          	ecall
   11900:	2201b703          	ld	a4,544(gp) # 12a38 <heap_end.0>
   11904:	97ba                	c.add	a5,a4
   11906:	00f51863          	bne	a0,a5,11916 <_sbrk+0x44>
   1190a:	60a2                	c.ldsp	ra,8(sp)
   1190c:	22a1b023          	sd	a0,544(gp) # 12a38 <heap_end.0>
   11910:	853a                	c.mv	a0,a4
   11912:	0141                	c.addi	sp,16
   11914:	8082                	c.jr	ra
   11916:	03c000ef          	jal	ra,11952 <__errno>
   1191a:	60a2                	c.ldsp	ra,8(sp)
   1191c:	47b1                	c.li	a5,12
   1191e:	c11c                	c.sw	a5,0(a0)
   11920:	557d                	c.li	a0,-1
   11922:	0141                	c.addi	sp,16
   11924:	8082                	c.jr	ra

0000000000011926 <_write>:
   11926:	1141                	c.addi	sp,-16
   11928:	e406                	c.sdsp	ra,8(sp)
   1192a:	e022                	c.sdsp	s0,0(sp)
   1192c:	04000893          	addi	a7,zero,64
   11930:	00000073          	ecall
   11934:	842a                	c.mv	s0,a0
   11936:	00054763          	blt	a0,zero,11944 <_write+0x1e>
   1193a:	60a2                	c.ldsp	ra,8(sp)
   1193c:	8522                	c.mv	a0,s0
   1193e:	6402                	c.ldsp	s0,0(sp)
   11940:	0141                	c.addi	sp,16
   11942:	8082                	c.jr	ra
   11944:	4080043b          	subw	s0,zero,s0
   11948:	00a000ef          	jal	ra,11952 <__errno>
   1194c:	c100                	c.sw	s0,0(a0)
   1194e:	547d                	c.li	s0,-1
   11950:	b7ed                	c.j	1193a <_write+0x14>

0000000000011952 <__errno>:
   11952:	1881b503          	ld	a0,392(gp) # 129a0 <_impure_ptr>
   11956:	8082                	c.jr	ra
