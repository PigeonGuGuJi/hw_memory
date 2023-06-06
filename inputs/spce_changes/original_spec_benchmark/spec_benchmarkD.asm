
spec_bench_mark.out：     文件格式 elf64-littleaarch64


Disassembly of section .interp:

0000000000400238 <.interp>:
  400238:	62696c2f 	.inst	0x62696c2f ; undefined
  40023c:	2d646c2f 	ldp	s15, s27, [x1, #-224]
  400240:	756e696c 	.inst	0x756e696c ; undefined
  400244:	61612d78 	.inst	0x61612d78 ; undefined
  400248:	36686372 	tbz	w18, #13, 400eb4 <CompareMesh+0x68>
  40024c:	6f732e34 	.inst	0x6f732e34 ; undefined
  400250:	地址 0x0000000000400250 越界。


Disassembly of section .note.gnu.build-id:

0000000000400254 <.note.gnu.build-id>:
  400254:	00000004 	udf	#4
  400258:	00000014 	udf	#20
  40025c:	00000003 	udf	#3
  400260:	00554e47 	.inst	0x00554e47 ; undefined
  400264:	0bda8331 	.inst	0x0bda8331 ; undefined
  400268:	cc92382a 	.inst	0xcc92382a ; undefined
  40026c:	f8535120 	ldur	x0, [x9, #-203]
  400270:	ce2f00ec 	bcax	v12.16b, v7.16b, v15.16b, v0.16b
  400274:	fe5380a9 	.inst	0xfe5380a9 ; undefined

Disassembly of section .note.ABI-tag:

0000000000400278 <__abi_tag>:
  400278:	00000004 	udf	#4
  40027c:	00000010 	udf	#16
  400280:	00000001 	udf	#1
  400284:	00554e47 	.inst	0x00554e47 ; undefined
  400288:	00000000 	udf	#0
  40028c:	00000003 	udf	#3
  400290:	00000007 	udf	#7
  400294:	00000000 	udf	#0

Disassembly of section .gnu.hash:

0000000000400298 <.gnu.hash>:
  400298:	00000001 	udf	#1
  40029c:	00000001 	udf	#1
  4002a0:	00000001 	udf	#1
	...

Disassembly of section .dynsym:

00000000004002b8 <.dynsym>:
	...
  4002d0:	00000007 	udf	#7
  4002d4:	00000012 	udf	#18
	...
  4002e8:	00000062 	udf	#98
  4002ec:	00000020 	udf	#32
	...
  400300:	00000027 	udf	#39
  400304:	00000012 	udf	#18
	...
  400318:	00000021 	udf	#33
  40031c:	00000012 	udf	#18
	...
  400330:	0000002e 	udf	#46
  400334:	00000012 	udf	#18
	...
  400348:	0000007e 	udf	#126
  40034c:	00000020 	udf	#32
	...
  400360:	00000035 	udf	#53
  400364:	00000012 	udf	#18
	...
  400378:	0000003b 	udf	#59
  40037c:	00000012 	udf	#18
	...
  400390:	0000008d 	udf	#141
  400394:	00000020 	udf	#32
	...
  4003a8:	0000001a 	udf	#26
  4003ac:	00000012 	udf	#18
	...
  4003c0:	00000019 	udf	#25
  4003c4:	00000012 	udf	#18
	...
  4003d8:	00000001 	udf	#1
  4003dc:	00000012 	udf	#18
	...

Disassembly of section .dynstr:

00000000004003f0 <.dynstr>:
  4003f0:	65676600 	fnmls	z0.h, p1/m, z16.h, z7.h
  4003f4:	5f007374 	.inst	0x5f007374 ; undefined
  4003f8:	62696c5f 	.inst	0x62696c5f ; undefined
  4003fc:	74735f63 	.inst	0x74735f63 ; undefined
  400400:	5f747261 	sqdmlsl	s1, h19, v4.h[3]
  400404:	6e69616d 	rsubhn2	v13.8h, v11.4s, v9.4s
  400408:	72706600 	.inst	0x72706600 ; undefined
  40040c:	66746e69 	.inst	0x66746e69 ; undefined
  400410:	706f6600 	adr	x0, 4df0d3 <__bss_end__+0xa1ba3>
  400414:	66006e65 	.inst	0x66006e65 ; undefined
  400418:	736f6c63 	.inst	0x736f6c63 ; undefined
  40041c:	61720065 	.inst	0x61720065 ; undefined
  400420:	6d6f646e 	ldp	d14, d25, [x3, #-272]
  400424:	6f626100 	umlsl2	v0.4s, v8.8h, v2.h[2]
  400428:	66007472 	.inst	0x66007472 ; undefined
  40042c:	74697277 	.inst	0x74697277 ; undefined
  400430:	696c0065 	ldpsw	x5, x0, [x3, #-160]
  400434:	732e6362 	.inst	0x732e6362 ; undefined
  400438:	00362e6f 	.inst	0x00362e6f ; NYI
  40043c:	42494c47 	.inst	0x42494c47 ; undefined
  400440:	2e325f43 	uqrshl	v3.8b, v26.8b, v18.8b
  400444:	47003731 	.inst	0x47003731 ; undefined
  400448:	4342494c 	.inst	0x4342494c ; undefined
  40044c:	332e325f 	.inst	0x332e325f ; undefined
  400450:	495f0034 	.inst	0x495f0034 ; undefined
  400454:	645f4d54 	fcmla	z20.h, p3/m, z10.h, z31.h, #180
  400458:	67657265 	.inst	0x67657265 ; undefined
  40045c:	65747369 	fnmls	z9.h, p4/m, z27.h, z20.h
  400460:	434d5472 	.inst	0x434d5472 ; undefined
  400464:	656e6f6c 	fnmls	z12.h, p3/m, z27.h, z14.h
  400468:	6c626154 	ldnp	d20, d24, [x10, #-480]
  40046c:	5f5f0065 	.inst	0x5f5f0065 ; undefined
  400470:	6e6f6d67 	umin	v7.8h, v11.8h, v15.8h
  400474:	6174735f 	.inst	0x6174735f ; undefined
  400478:	5f5f7472 	sqshl	d18, d3, #31
  40047c:	54495f00 	b.eq	49305c <__bss_end__+0x55b2c>  // b.none
  400480:	65725f4d 	fnmla	z13.h, p7/m, z26.h, z18.h
  400484:	74736967 	.inst	0x74736967 ; undefined
  400488:	4d547265 	.inst	0x4d547265 ; undefined
  40048c:	6e6f6c43 	umin	v3.8h, v2.8h, v15.8h
  400490:	62615465 	.inst	0x62615465 ; undefined
  400494:	地址 0x0000000000400494 越界。


Disassembly of section .gnu.version:

0000000000400498 <.gnu.version>:
  400498:	00020000 	.inst	0x00020000 ; undefined
  40049c:	00030001 	.inst	0x00030001 ; undefined
  4004a0:	00030003 	.inst	0x00030003 ; undefined
  4004a4:	00030001 	.inst	0x00030001 ; undefined
  4004a8:	00010003 	.inst	0x00010003 ; undefined
  4004ac:	00030003 	.inst	0x00030003 ; undefined
  4004b0:	地址 0x00000000004004b0 越界。


Disassembly of section .gnu.version_r:

00000000004004b8 <.gnu.version_r>:
  4004b8:	00020001 	.inst	0x00020001 ; undefined
  4004bc:	00000042 	udf	#66
  4004c0:	00000010 	udf	#16
  4004c4:	00000000 	udf	#0
  4004c8:	06969197 	.inst	0x06969197 ; undefined
  4004cc:	00030000 	.inst	0x00030000 ; undefined
  4004d0:	0000004c 	udf	#76
  4004d4:	00000010 	udf	#16
  4004d8:	069691b4 	.inst	0x069691b4 ; undefined
  4004dc:	00020000 	.inst	0x00020000 ; undefined
  4004e0:	00000057 	udf	#87
  4004e4:	00000000 	udf	#0

Disassembly of section .rela.dyn:

00000000004004e8 <.rela.dyn>:
  4004e8:	0041ffd0 	.inst	0x0041ffd0 ; undefined
  4004ec:	00000000 	udf	#0
  4004f0:	00000401 	udf	#1025
  4004f4:	00000002 	udf	#2
	...
  400500:	0041ffd8 	.inst	0x0041ffd8 ; undefined
  400504:	00000000 	udf	#0
  400508:	00000401 	udf	#1025
  40050c:	00000006 	udf	#6
	...
  400518:	0041ffe0 	.inst	0x0041ffe0 ; undefined
  40051c:	00000000 	udf	#0
  400520:	00000401 	udf	#1025
  400524:	00000009 	udf	#9
	...

Disassembly of section .rela.plt:

0000000000400530 <.rela.plt>:
  400530:	00420000 	.inst	0x00420000 ; undefined
  400534:	00000000 	udf	#0
  400538:	00000402 	udf	#1026
  40053c:	00000001 	udf	#1
	...
  400548:	00420008 	.inst	0x00420008 ; undefined
  40054c:	00000000 	udf	#0
  400550:	00000402 	udf	#1026
  400554:	00000003 	udf	#3
	...
  400560:	00420010 	.inst	0x00420010 ; undefined
  400564:	00000000 	udf	#0
  400568:	00000402 	udf	#1026
  40056c:	00000004 	udf	#4
	...
  400578:	00420018 	.inst	0x00420018 ; undefined
  40057c:	00000000 	udf	#0
  400580:	00000402 	udf	#1026
  400584:	00000005 	udf	#5
	...
  400590:	00420020 	.inst	0x00420020 ; undefined
  400594:	00000000 	udf	#0
  400598:	00000402 	udf	#1026
  40059c:	00000006 	udf	#6
	...
  4005a8:	00420028 	.inst	0x00420028 ; undefined
  4005ac:	00000000 	udf	#0
  4005b0:	00000402 	udf	#1026
  4005b4:	00000007 	udf	#7
	...
  4005c0:	00420030 	.inst	0x00420030 ; undefined
  4005c4:	00000000 	udf	#0
  4005c8:	00000402 	udf	#1026
  4005cc:	00000008 	udf	#8
	...
  4005d8:	00420038 	.inst	0x00420038 ; undefined
  4005dc:	00000000 	udf	#0
  4005e0:	00000402 	udf	#1026
  4005e4:	0000000a 	udf	#10
	...
  4005f0:	00420040 	.inst	0x00420040 ; undefined
  4005f4:	00000000 	udf	#0
  4005f8:	00000402 	udf	#1026
  4005fc:	0000000b 	udf	#11
	...
  400608:	00420048 	.inst	0x00420048 ; undefined
  40060c:	00000000 	udf	#0
  400610:	00000402 	udf	#1026
  400614:	0000000c 	udf	#12
	...

Disassembly of section .init:

0000000000400620 <_init>:
  400620:	d503201f 	nop
  400624:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  400628:	910003fd 	mov	x29, sp
  40062c:	94000046 	bl	400744 <call_weak_fn>
  400630:	a8c17bfd 	ldp	x29, x30, [sp], #16
  400634:	d65f03c0 	ret

Disassembly of section .plt:

0000000000400640 <.plt>:
  400640:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
  400644:	f00000f0 	adrp	x16, 41f000 <__FRAME_END__+0x1d778>
  400648:	f947fe11 	ldr	x17, [x16, #4088]
  40064c:	913fe210 	add	x16, x16, #0xff8
  400650:	d61f0220 	br	x17
  400654:	d503201f 	nop
  400658:	d503201f 	nop
  40065c:	d503201f 	nop

0000000000400660 <__libc_start_main@plt>:
  400660:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400664:	f9400211 	ldr	x17, [x16]
  400668:	91000210 	add	x16, x16, #0x0
  40066c:	d61f0220 	br	x17

0000000000400670 <fclose@plt>:
  400670:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400674:	f9400611 	ldr	x17, [x16, #8]
  400678:	91002210 	add	x16, x16, #0x8
  40067c:	d61f0220 	br	x17

0000000000400680 <fopen@plt>:
  400680:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400684:	f9400a11 	ldr	x17, [x16, #16]
  400688:	91004210 	add	x16, x16, #0x10
  40068c:	d61f0220 	br	x17

0000000000400690 <random@plt>:
  400690:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400694:	f9400e11 	ldr	x17, [x16, #24]
  400698:	91006210 	add	x16, x16, #0x18
  40069c:	d61f0220 	br	x17

00000000004006a0 <__gmon_start__@plt>:
  4006a0:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  4006a4:	f9401211 	ldr	x17, [x16, #32]
  4006a8:	91008210 	add	x16, x16, #0x20
  4006ac:	d61f0220 	br	x17

00000000004006b0 <abort@plt>:
  4006b0:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  4006b4:	f9401611 	ldr	x17, [x16, #40]
  4006b8:	9100a210 	add	x16, x16, #0x28
  4006bc:	d61f0220 	br	x17

00000000004006c0 <fwrite@plt>:
  4006c0:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  4006c4:	f9401a11 	ldr	x17, [x16, #48]
  4006c8:	9100c210 	add	x16, x16, #0x30
  4006cc:	d61f0220 	br	x17

00000000004006d0 <printf@plt>:
  4006d0:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  4006d4:	f9401e11 	ldr	x17, [x16, #56]
  4006d8:	9100e210 	add	x16, x16, #0x38
  4006dc:	d61f0220 	br	x17

00000000004006e0 <fprintf@plt>:
  4006e0:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  4006e4:	f9402211 	ldr	x17, [x16, #64]
  4006e8:	91010210 	add	x16, x16, #0x40
  4006ec:	d61f0220 	br	x17

00000000004006f0 <fgets@plt>:
  4006f0:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  4006f4:	f9402611 	ldr	x17, [x16, #72]
  4006f8:	91012210 	add	x16, x16, #0x48
  4006fc:	d61f0220 	br	x17

Disassembly of section .text:

0000000000400700 <_start>:
  400700:	d503201f 	nop
  400704:	d280001d 	mov	x29, #0x0                   	// #0
  400708:	d280001e 	mov	x30, #0x0                   	// #0
  40070c:	aa0003e5 	mov	x5, x0
  400710:	f94003e1 	ldr	x1, [sp]
  400714:	910023e2 	add	x2, sp, #0x8
  400718:	910003e6 	mov	x6, sp
  40071c:	90000000 	adrp	x0, 400000 <__abi_tag-0x278>
  400720:	911cd000 	add	x0, x0, #0x734
  400724:	d2800003 	mov	x3, #0x0                   	// #0
  400728:	d2800004 	mov	x4, #0x0                   	// #0
  40072c:	97ffffcd 	bl	400660 <__libc_start_main@plt>
  400730:	97ffffe0 	bl	4006b0 <abort@plt>

0000000000400734 <__wrap_main>:
  400734:	d503201f 	nop
  400738:	14000033 	b	400804 <main>
  40073c:	d503201f 	nop

0000000000400740 <_dl_relocate_static_pie>:
  400740:	d65f03c0 	ret

0000000000400744 <call_weak_fn>:
  400744:	f00000e0 	adrp	x0, 41f000 <__FRAME_END__+0x1d778>
  400748:	f947ec00 	ldr	x0, [x0, #4056]
  40074c:	b4000040 	cbz	x0, 400754 <call_weak_fn+0x10>
  400750:	17ffffd4 	b	4006a0 <__gmon_start__@plt>
  400754:	d65f03c0 	ret
  400758:	d503201f 	nop
  40075c:	d503201f 	nop

0000000000400760 <deregister_tm_clones>:
  400760:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400764:	91018000 	add	x0, x0, #0x60
  400768:	90000101 	adrp	x1, 420000 <__libc_start_main@GLIBC_2.34>
  40076c:	91018021 	add	x1, x1, #0x60
  400770:	eb00003f 	cmp	x1, x0
  400774:	540000c0 	b.eq	40078c <deregister_tm_clones+0x2c>  // b.none
  400778:	f00000e1 	adrp	x1, 41f000 <__FRAME_END__+0x1d778>
  40077c:	f947e821 	ldr	x1, [x1, #4048]
  400780:	b4000061 	cbz	x1, 40078c <deregister_tm_clones+0x2c>
  400784:	aa0103f0 	mov	x16, x1
  400788:	d61f0200 	br	x16
  40078c:	d65f03c0 	ret

0000000000400790 <register_tm_clones>:
  400790:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400794:	91018000 	add	x0, x0, #0x60
  400798:	90000101 	adrp	x1, 420000 <__libc_start_main@GLIBC_2.34>
  40079c:	91018021 	add	x1, x1, #0x60
  4007a0:	cb000021 	sub	x1, x1, x0
  4007a4:	d37ffc22 	lsr	x2, x1, #63
  4007a8:	8b810c41 	add	x1, x2, x1, asr #3
  4007ac:	9341fc21 	asr	x1, x1, #1
  4007b0:	b40000c1 	cbz	x1, 4007c8 <register_tm_clones+0x38>
  4007b4:	f00000e2 	adrp	x2, 41f000 <__FRAME_END__+0x1d778>
  4007b8:	f947f042 	ldr	x2, [x2, #4064]
  4007bc:	b4000062 	cbz	x2, 4007c8 <register_tm_clones+0x38>
  4007c0:	aa0203f0 	mov	x16, x2
  4007c4:	d61f0200 	br	x16
  4007c8:	d65f03c0 	ret
  4007cc:	d503201f 	nop

00000000004007d0 <__do_global_dtors_aux>:
  4007d0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  4007d4:	910003fd 	mov	x29, sp
  4007d8:	f9000bf3 	str	x19, [sp, #16]
  4007dc:	90000113 	adrp	x19, 420000 <__libc_start_main@GLIBC_2.34>
  4007e0:	39418260 	ldrb	w0, [x19, #96]
  4007e4:	35000080 	cbnz	w0, 4007f4 <__do_global_dtors_aux+0x24>
  4007e8:	97ffffde 	bl	400760 <deregister_tm_clones>
  4007ec:	52800020 	mov	w0, #0x1                   	// #1
  4007f0:	39018260 	strb	w0, [x19, #96]
  4007f4:	f9400bf3 	ldr	x19, [sp, #16]
  4007f8:	a8c27bfd 	ldp	x29, x30, [sp], #32
  4007fc:	d65f03c0 	ret

0000000000400800 <frame_dummy>:
  400800:	17ffffe4 	b	400790 <register_tm_clones>

0000000000400804 <main>:
  400804:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
  400808:	910003fd 	mov	x29, sp
  40080c:	b9001fe0 	str	w0, [sp, #28]
  400810:	f9000be1 	str	x1, [sp, #16]
  400814:	9400025e 	bl	40118c <LoadData>
  400818:	b9002fff 	str	wzr, [sp, #44]
  40081c:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400820:	9101a000 	add	x0, x0, #0x68
  400824:	91402000 	add	x0, x0, #0x8, lsl #12
  400828:	b95c3c00 	ldr	w0, [x0, #7228]
  40082c:	7100001f 	cmp	w0, #0x0
  400830:	54000061 	b.ne	40083c <main+0x38>  // b.any
  400834:	94000013 	bl	400880 <InitializeMesh_1>
  400838:	940000c5 	bl	400b4c <InitializeMesh_2>
  40083c:	94000184 	bl	400e4c <CompareMesh>
  400840:	b9002fe0 	str	w0, [sp, #44]
  400844:	b9402fe0 	ldr	w0, [sp, #44]
  400848:	7100001f 	cmp	w0, #0x0
  40084c:	54000100 	b.eq	40086c <main+0x68>  // b.none
  400850:	94000208 	bl	401070 <SwapMesh>
  400854:	b9002fe0 	str	w0, [sp, #44]
  400858:	940001b8 	bl	400f38 <Mesh_dot>
  40085c:	2a0003e1 	mov	w1, w0
  400860:	b00001e0 	adrp	x0, 43d000 <ms3+0x9718>
  400864:	9114a000 	add	x0, x0, #0x528
  400868:	b9000001 	str	w1, [x0]
  40086c:	94000263 	bl	4011f8 <ComplexDataHandle>
  400870:	94000303 	bl	40147c <StoreData>
  400874:	52800000 	mov	w0, #0x0                   	// #0
  400878:	a8c37bfd 	ldp	x29, x30, [sp], #48
  40087c:	d65f03c0 	ret

0000000000400880 <InitializeMesh_1>:
  400880:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  400884:	910003fd 	mov	x29, sp
  400888:	b9001bff 	str	wzr, [sp, #24]
  40088c:	140000a9 	b	400b30 <InitializeMesh_1+0x2b0>
  400890:	b9001fff 	str	wzr, [sp, #28]
  400894:	140000a1 	b	400b18 <InitializeMesh_1+0x298>
  400898:	97ffff7e 	bl	400690 <random@plt>
  40089c:	2a0003e4 	mov	w4, w0
  4008a0:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4008a4:	9101a002 	add	x2, x0, #0x68
  4008a8:	b9801be3 	ldrsw	x3, [sp, #24]
  4008ac:	b9801fe1 	ldrsw	x1, [sp, #28]
  4008b0:	aa0103e0 	mov	x0, x1
  4008b4:	d37ff800 	lsl	x0, x0, #1
  4008b8:	8b010000 	add	x0, x0, x1
  4008bc:	d37df000 	lsl	x0, x0, #3
  4008c0:	8b010000 	add	x0, x0, x1
  4008c4:	d37ef400 	lsl	x0, x0, #2
  4008c8:	8b030000 	add	x0, x0, x3
  4008cc:	b8207844 	str	w4, [x2, x0, lsl #2]
  4008d0:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4008d4:	9101a002 	add	x2, x0, #0x68
  4008d8:	b9801be3 	ldrsw	x3, [sp, #24]
  4008dc:	b9801fe1 	ldrsw	x1, [sp, #28]
  4008e0:	aa0103e0 	mov	x0, x1
  4008e4:	d37ff800 	lsl	x0, x0, #1
  4008e8:	8b010000 	add	x0, x0, x1
  4008ec:	d37df000 	lsl	x0, x0, #3
  4008f0:	8b010000 	add	x0, x0, x1
  4008f4:	d37ef400 	lsl	x0, x0, #2
  4008f8:	8b030000 	add	x0, x0, x3
  4008fc:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400900:	b90017e0 	str	w0, [sp, #20]
  400904:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400908:	9101a002 	add	x2, x0, #0x68
  40090c:	b9801be3 	ldrsw	x3, [sp, #24]
  400910:	b9801fe1 	ldrsw	x1, [sp, #28]
  400914:	aa0103e0 	mov	x0, x1
  400918:	d37ff800 	lsl	x0, x0, #1
  40091c:	8b010000 	add	x0, x0, x1
  400920:	d37df000 	lsl	x0, x0, #3
  400924:	8b010000 	add	x0, x0, x1
  400928:	d37ef400 	lsl	x0, x0, #2
  40092c:	8b030000 	add	x0, x0, x3
  400930:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400934:	b90017e0 	str	w0, [sp, #20]
  400938:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40093c:	9101a002 	add	x2, x0, #0x68
  400940:	b9801be3 	ldrsw	x3, [sp, #24]
  400944:	b9801fe1 	ldrsw	x1, [sp, #28]
  400948:	aa0103e0 	mov	x0, x1
  40094c:	d37ff800 	lsl	x0, x0, #1
  400950:	8b010000 	add	x0, x0, x1
  400954:	d37df000 	lsl	x0, x0, #3
  400958:	8b010000 	add	x0, x0, x1
  40095c:	d37ef400 	lsl	x0, x0, #2
  400960:	8b030000 	add	x0, x0, x3
  400964:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400968:	b90017e0 	str	w0, [sp, #20]
  40096c:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400970:	9101a002 	add	x2, x0, #0x68
  400974:	b9801be3 	ldrsw	x3, [sp, #24]
  400978:	b9801fe1 	ldrsw	x1, [sp, #28]
  40097c:	aa0103e0 	mov	x0, x1
  400980:	d37ff800 	lsl	x0, x0, #1
  400984:	8b010000 	add	x0, x0, x1
  400988:	d37df000 	lsl	x0, x0, #3
  40098c:	8b010000 	add	x0, x0, x1
  400990:	d37ef400 	lsl	x0, x0, #2
  400994:	8b030000 	add	x0, x0, x3
  400998:	52800021 	mov	w1, #0x1                   	// #1
  40099c:	b8207841 	str	w1, [x2, x0, lsl #2]
  4009a0:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4009a4:	9101a002 	add	x2, x0, #0x68
  4009a8:	b9801be3 	ldrsw	x3, [sp, #24]
  4009ac:	b9801fe1 	ldrsw	x1, [sp, #28]
  4009b0:	aa0103e0 	mov	x0, x1
  4009b4:	d37ff800 	lsl	x0, x0, #1
  4009b8:	8b010000 	add	x0, x0, x1
  4009bc:	d37df000 	lsl	x0, x0, #3
  4009c0:	8b010000 	add	x0, x0, x1
  4009c4:	d37ef400 	lsl	x0, x0, #2
  4009c8:	8b030000 	add	x0, x0, x3
  4009cc:	52800041 	mov	w1, #0x2                   	// #2
  4009d0:	b8207841 	str	w1, [x2, x0, lsl #2]
  4009d4:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4009d8:	9101a002 	add	x2, x0, #0x68
  4009dc:	b9801be3 	ldrsw	x3, [sp, #24]
  4009e0:	b9801fe1 	ldrsw	x1, [sp, #28]
  4009e4:	aa0103e0 	mov	x0, x1
  4009e8:	d37ff800 	lsl	x0, x0, #1
  4009ec:	8b010000 	add	x0, x0, x1
  4009f0:	d37df000 	lsl	x0, x0, #3
  4009f4:	8b010000 	add	x0, x0, x1
  4009f8:	d37ef400 	lsl	x0, x0, #2
  4009fc:	8b030000 	add	x0, x0, x3
  400a00:	52800061 	mov	w1, #0x3                   	// #3
  400a04:	b8207841 	str	w1, [x2, x0, lsl #2]
  400a08:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400a0c:	9101a002 	add	x2, x0, #0x68
  400a10:	b9801be3 	ldrsw	x3, [sp, #24]
  400a14:	b9801fe1 	ldrsw	x1, [sp, #28]
  400a18:	aa0103e0 	mov	x0, x1
  400a1c:	d37ff800 	lsl	x0, x0, #1
  400a20:	8b010000 	add	x0, x0, x1
  400a24:	d37df000 	lsl	x0, x0, #3
  400a28:	8b010000 	add	x0, x0, x1
  400a2c:	d37ef400 	lsl	x0, x0, #2
  400a30:	8b030000 	add	x0, x0, x3
  400a34:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400a38:	b90017e0 	str	w0, [sp, #20]
  400a3c:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400a40:	9101a002 	add	x2, x0, #0x68
  400a44:	b9801be3 	ldrsw	x3, [sp, #24]
  400a48:	b9801fe1 	ldrsw	x1, [sp, #28]
  400a4c:	aa0103e0 	mov	x0, x1
  400a50:	d37ff800 	lsl	x0, x0, #1
  400a54:	8b010000 	add	x0, x0, x1
  400a58:	d37df000 	lsl	x0, x0, #3
  400a5c:	8b010000 	add	x0, x0, x1
  400a60:	d37ef400 	lsl	x0, x0, #2
  400a64:	8b030000 	add	x0, x0, x3
  400a68:	b8607841 	ldr	w1, [x2, x0, lsl #2]
  400a6c:	5290d4e0 	mov	w0, #0x86a7                	// #34471
  400a70:	72a00020 	movk	w0, #0x1, lsl #16
  400a74:	6b00003f 	cmp	w1, w0
  400a78:	540004ad 	b.le	400b0c <InitializeMesh_1+0x28c>
  400a7c:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400a80:	9101a002 	add	x2, x0, #0x68
  400a84:	b9801be3 	ldrsw	x3, [sp, #24]
  400a88:	b9801fe1 	ldrsw	x1, [sp, #28]
  400a8c:	aa0103e0 	mov	x0, x1
  400a90:	d37ff800 	lsl	x0, x0, #1
  400a94:	8b010000 	add	x0, x0, x1
  400a98:	d37df000 	lsl	x0, x0, #3
  400a9c:	8b010000 	add	x0, x0, x1
  400aa0:	d37ef400 	lsl	x0, x0, #2
  400aa4:	8b030000 	add	x0, x0, x3
  400aa8:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400aac:	529555a1 	mov	w1, #0xaaad                	// #43693
  400ab0:	72b4f841 	movk	w1, #0xa7c2, lsl #16
  400ab4:	9b217c01 	smull	x1, w0, w1
  400ab8:	d360fc21 	lsr	x1, x1, #32
  400abc:	0b010001 	add	w1, w0, w1
  400ac0:	13107c22 	asr	w2, w1, #16
  400ac4:	131f7c01 	asr	w1, w0, #31
  400ac8:	4b010041 	sub	w1, w2, w1
  400acc:	5290d4e2 	mov	w2, #0x86a7                	// #34471
  400ad0:	72a00022 	movk	w2, #0x1, lsl #16
  400ad4:	1b027c21 	mul	w1, w1, w2
  400ad8:	4b010001 	sub	w1, w0, w1
  400adc:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400ae0:	9101a003 	add	x3, x0, #0x68
  400ae4:	b9801be4 	ldrsw	x4, [sp, #24]
  400ae8:	b9801fe2 	ldrsw	x2, [sp, #28]
  400aec:	aa0203e0 	mov	x0, x2
  400af0:	d37ff800 	lsl	x0, x0, #1
  400af4:	8b020000 	add	x0, x0, x2
  400af8:	d37df000 	lsl	x0, x0, #3
  400afc:	8b020000 	add	x0, x0, x2
  400b00:	d37ef400 	lsl	x0, x0, #2
  400b04:	8b040000 	add	x0, x0, x4
  400b08:	b8207861 	str	w1, [x3, x0, lsl #2]
  400b0c:	b9401fe0 	ldr	w0, [sp, #28]
  400b10:	11000400 	add	w0, w0, #0x1
  400b14:	b9001fe0 	str	w0, [sp, #28]
  400b18:	b9401fe0 	ldr	w0, [sp, #28]
  400b1c:	71018c1f 	cmp	w0, #0x63
  400b20:	54ffebcd 	b.le	400898 <InitializeMesh_1+0x18>
  400b24:	b9401be0 	ldr	w0, [sp, #24]
  400b28:	11000400 	add	w0, w0, #0x1
  400b2c:	b9001be0 	str	w0, [sp, #24]
  400b30:	b9401be0 	ldr	w0, [sp, #24]
  400b34:	71018c1f 	cmp	w0, #0x63
  400b38:	54ffeacd 	b.le	400890 <InitializeMesh_1+0x10>
  400b3c:	d503201f 	nop
  400b40:	d503201f 	nop
  400b44:	a8c27bfd 	ldp	x29, x30, [sp], #32
  400b48:	d65f03c0 	ret

0000000000400b4c <InitializeMesh_2>:
  400b4c:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  400b50:	910003fd 	mov	x29, sp
  400b54:	b9001bff 	str	wzr, [sp, #24]
  400b58:	140000b6 	b	400e30 <InitializeMesh_2+0x2e4>
  400b5c:	b9001fff 	str	wzr, [sp, #28]
  400b60:	140000ae 	b	400e18 <InitializeMesh_2+0x2cc>
  400b64:	97fffecb 	bl	400690 <random@plt>
  400b68:	2a0003e4 	mov	w4, w0
  400b6c:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400b70:	9132a002 	add	x2, x0, #0xca8
  400b74:	b9801be3 	ldrsw	x3, [sp, #24]
  400b78:	b9801fe1 	ldrsw	x1, [sp, #28]
  400b7c:	aa0103e0 	mov	x0, x1
  400b80:	d37ff800 	lsl	x0, x0, #1
  400b84:	8b010000 	add	x0, x0, x1
  400b88:	d37df000 	lsl	x0, x0, #3
  400b8c:	8b010000 	add	x0, x0, x1
  400b90:	d37ef400 	lsl	x0, x0, #2
  400b94:	8b030000 	add	x0, x0, x3
  400b98:	b8207844 	str	w4, [x2, x0, lsl #2]
  400b9c:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400ba0:	9132a002 	add	x2, x0, #0xca8
  400ba4:	b9801be3 	ldrsw	x3, [sp, #24]
  400ba8:	b9801fe1 	ldrsw	x1, [sp, #28]
  400bac:	aa0103e0 	mov	x0, x1
  400bb0:	d37ff800 	lsl	x0, x0, #1
  400bb4:	8b010000 	add	x0, x0, x1
  400bb8:	d37df000 	lsl	x0, x0, #3
  400bbc:	8b010000 	add	x0, x0, x1
  400bc0:	d37ef400 	lsl	x0, x0, #2
  400bc4:	8b030000 	add	x0, x0, x3
  400bc8:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400bcc:	b90017e0 	str	w0, [sp, #20]
  400bd0:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400bd4:	9132a002 	add	x2, x0, #0xca8
  400bd8:	b9801be3 	ldrsw	x3, [sp, #24]
  400bdc:	b9801fe1 	ldrsw	x1, [sp, #28]
  400be0:	aa0103e0 	mov	x0, x1
  400be4:	d37ff800 	lsl	x0, x0, #1
  400be8:	8b010000 	add	x0, x0, x1
  400bec:	d37df000 	lsl	x0, x0, #3
  400bf0:	8b010000 	add	x0, x0, x1
  400bf4:	d37ef400 	lsl	x0, x0, #2
  400bf8:	8b030000 	add	x0, x0, x3
  400bfc:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400c00:	b90017e0 	str	w0, [sp, #20]
  400c04:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400c08:	9132a002 	add	x2, x0, #0xca8
  400c0c:	b9801be3 	ldrsw	x3, [sp, #24]
  400c10:	b9801fe1 	ldrsw	x1, [sp, #28]
  400c14:	aa0103e0 	mov	x0, x1
  400c18:	d37ff800 	lsl	x0, x0, #1
  400c1c:	8b010000 	add	x0, x0, x1
  400c20:	d37df000 	lsl	x0, x0, #3
  400c24:	8b010000 	add	x0, x0, x1
  400c28:	d37ef400 	lsl	x0, x0, #2
  400c2c:	8b030000 	add	x0, x0, x3
  400c30:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400c34:	b90017e0 	str	w0, [sp, #20]
  400c38:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400c3c:	9132a002 	add	x2, x0, #0xca8
  400c40:	b9801be3 	ldrsw	x3, [sp, #24]
  400c44:	b9801fe1 	ldrsw	x1, [sp, #28]
  400c48:	aa0103e0 	mov	x0, x1
  400c4c:	d37ff800 	lsl	x0, x0, #1
  400c50:	8b010000 	add	x0, x0, x1
  400c54:	d37df000 	lsl	x0, x0, #3
  400c58:	8b010000 	add	x0, x0, x1
  400c5c:	d37ef400 	lsl	x0, x0, #2
  400c60:	8b030000 	add	x0, x0, x3
  400c64:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400c68:	b90017e0 	str	w0, [sp, #20]
  400c6c:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400c70:	9132a002 	add	x2, x0, #0xca8
  400c74:	b9801be3 	ldrsw	x3, [sp, #24]
  400c78:	b9801fe1 	ldrsw	x1, [sp, #28]
  400c7c:	aa0103e0 	mov	x0, x1
  400c80:	d37ff800 	lsl	x0, x0, #1
  400c84:	8b010000 	add	x0, x0, x1
  400c88:	d37df000 	lsl	x0, x0, #3
  400c8c:	8b010000 	add	x0, x0, x1
  400c90:	d37ef400 	lsl	x0, x0, #2
  400c94:	8b030000 	add	x0, x0, x3
  400c98:	52800021 	mov	w1, #0x1                   	// #1
  400c9c:	b8207841 	str	w1, [x2, x0, lsl #2]
  400ca0:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400ca4:	9132a002 	add	x2, x0, #0xca8
  400ca8:	b9801be3 	ldrsw	x3, [sp, #24]
  400cac:	b9801fe1 	ldrsw	x1, [sp, #28]
  400cb0:	aa0103e0 	mov	x0, x1
  400cb4:	d37ff800 	lsl	x0, x0, #1
  400cb8:	8b010000 	add	x0, x0, x1
  400cbc:	d37df000 	lsl	x0, x0, #3
  400cc0:	8b010000 	add	x0, x0, x1
  400cc4:	d37ef400 	lsl	x0, x0, #2
  400cc8:	8b030000 	add	x0, x0, x3
  400ccc:	52800041 	mov	w1, #0x2                   	// #2
  400cd0:	b8207841 	str	w1, [x2, x0, lsl #2]
  400cd4:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400cd8:	9132a002 	add	x2, x0, #0xca8
  400cdc:	b9801be3 	ldrsw	x3, [sp, #24]
  400ce0:	b9801fe1 	ldrsw	x1, [sp, #28]
  400ce4:	aa0103e0 	mov	x0, x1
  400ce8:	d37ff800 	lsl	x0, x0, #1
  400cec:	8b010000 	add	x0, x0, x1
  400cf0:	d37df000 	lsl	x0, x0, #3
  400cf4:	8b010000 	add	x0, x0, x1
  400cf8:	d37ef400 	lsl	x0, x0, #2
  400cfc:	8b030000 	add	x0, x0, x3
  400d00:	52800061 	mov	w1, #0x3                   	// #3
  400d04:	b8207841 	str	w1, [x2, x0, lsl #2]
  400d08:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400d0c:	9132a002 	add	x2, x0, #0xca8
  400d10:	b9801be3 	ldrsw	x3, [sp, #24]
  400d14:	b9801fe1 	ldrsw	x1, [sp, #28]
  400d18:	aa0103e0 	mov	x0, x1
  400d1c:	d37ff800 	lsl	x0, x0, #1
  400d20:	8b010000 	add	x0, x0, x1
  400d24:	d37df000 	lsl	x0, x0, #3
  400d28:	8b010000 	add	x0, x0, x1
  400d2c:	d37ef400 	lsl	x0, x0, #2
  400d30:	8b030000 	add	x0, x0, x3
  400d34:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400d38:	b90017e0 	str	w0, [sp, #20]
  400d3c:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400d40:	9132a002 	add	x2, x0, #0xca8
  400d44:	b9801be3 	ldrsw	x3, [sp, #24]
  400d48:	b9801fe1 	ldrsw	x1, [sp, #28]
  400d4c:	aa0103e0 	mov	x0, x1
  400d50:	d37ff800 	lsl	x0, x0, #1
  400d54:	8b010000 	add	x0, x0, x1
  400d58:	d37df000 	lsl	x0, x0, #3
  400d5c:	8b010000 	add	x0, x0, x1
  400d60:	d37ef400 	lsl	x0, x0, #2
  400d64:	8b030000 	add	x0, x0, x3
  400d68:	b8607841 	ldr	w1, [x2, x0, lsl #2]
  400d6c:	5290d4e0 	mov	w0, #0x86a7                	// #34471
  400d70:	72a00020 	movk	w0, #0x1, lsl #16
  400d74:	6b00003f 	cmp	w1, w0
  400d78:	540004ad 	b.le	400e0c <InitializeMesh_2+0x2c0>
  400d7c:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400d80:	9132a002 	add	x2, x0, #0xca8
  400d84:	b9801be3 	ldrsw	x3, [sp, #24]
  400d88:	b9801fe1 	ldrsw	x1, [sp, #28]
  400d8c:	aa0103e0 	mov	x0, x1
  400d90:	d37ff800 	lsl	x0, x0, #1
  400d94:	8b010000 	add	x0, x0, x1
  400d98:	d37df000 	lsl	x0, x0, #3
  400d9c:	8b010000 	add	x0, x0, x1
  400da0:	d37ef400 	lsl	x0, x0, #2
  400da4:	8b030000 	add	x0, x0, x3
  400da8:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400dac:	529555a1 	mov	w1, #0xaaad                	// #43693
  400db0:	72b4f841 	movk	w1, #0xa7c2, lsl #16
  400db4:	9b217c01 	smull	x1, w0, w1
  400db8:	d360fc21 	lsr	x1, x1, #32
  400dbc:	0b010001 	add	w1, w0, w1
  400dc0:	13107c22 	asr	w2, w1, #16
  400dc4:	131f7c01 	asr	w1, w0, #31
  400dc8:	4b010041 	sub	w1, w2, w1
  400dcc:	5290d4e2 	mov	w2, #0x86a7                	// #34471
  400dd0:	72a00022 	movk	w2, #0x1, lsl #16
  400dd4:	1b027c21 	mul	w1, w1, w2
  400dd8:	4b010001 	sub	w1, w0, w1
  400ddc:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400de0:	9132a003 	add	x3, x0, #0xca8
  400de4:	b9801be4 	ldrsw	x4, [sp, #24]
  400de8:	b9801fe2 	ldrsw	x2, [sp, #28]
  400dec:	aa0203e0 	mov	x0, x2
  400df0:	d37ff800 	lsl	x0, x0, #1
  400df4:	8b020000 	add	x0, x0, x2
  400df8:	d37df000 	lsl	x0, x0, #3
  400dfc:	8b020000 	add	x0, x0, x2
  400e00:	d37ef400 	lsl	x0, x0, #2
  400e04:	8b040000 	add	x0, x0, x4
  400e08:	b8207861 	str	w1, [x3, x0, lsl #2]
  400e0c:	b9401fe0 	ldr	w0, [sp, #28]
  400e10:	11000400 	add	w0, w0, #0x1
  400e14:	b9001fe0 	str	w0, [sp, #28]
  400e18:	b9401fe0 	ldr	w0, [sp, #28]
  400e1c:	71018c1f 	cmp	w0, #0x63
  400e20:	54ffea2d 	b.le	400b64 <InitializeMesh_2+0x18>
  400e24:	b9401be0 	ldr	w0, [sp, #24]
  400e28:	11000400 	add	w0, w0, #0x1
  400e2c:	b9001be0 	str	w0, [sp, #24]
  400e30:	b9401be0 	ldr	w0, [sp, #24]
  400e34:	71018c1f 	cmp	w0, #0x63
  400e38:	54ffe92d 	b.le	400b5c <InitializeMesh_2+0x10>
  400e3c:	d503201f 	nop
  400e40:	d503201f 	nop
  400e44:	a8c27bfd 	ldp	x29, x30, [sp], #32
  400e48:	d65f03c0 	ret

0000000000400e4c <CompareMesh>:
  400e4c:	d10043ff 	sub	sp, sp, #0x10
  400e50:	b9000fff 	str	wzr, [sp, #12]
  400e54:	b90007ff 	str	wzr, [sp, #4]
  400e58:	1400002d 	b	400f0c <CompareMesh+0xc0>
  400e5c:	b9000bff 	str	wzr, [sp, #8]
  400e60:	14000025 	b	400ef4 <CompareMesh+0xa8>
  400e64:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400e68:	9101a002 	add	x2, x0, #0x68
  400e6c:	b98007e3 	ldrsw	x3, [sp, #4]
  400e70:	b9800be1 	ldrsw	x1, [sp, #8]
  400e74:	aa0103e0 	mov	x0, x1
  400e78:	d37ff800 	lsl	x0, x0, #1
  400e7c:	8b010000 	add	x0, x0, x1
  400e80:	d37df000 	lsl	x0, x0, #3
  400e84:	8b010000 	add	x0, x0, x1
  400e88:	d37ef400 	lsl	x0, x0, #2
  400e8c:	8b030000 	add	x0, x0, x3
  400e90:	b8607842 	ldr	w2, [x2, x0, lsl #2]
  400e94:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400e98:	9132a003 	add	x3, x0, #0xca8
  400e9c:	b98007e4 	ldrsw	x4, [sp, #4]
  400ea0:	b9800be1 	ldrsw	x1, [sp, #8]
  400ea4:	aa0103e0 	mov	x0, x1
  400ea8:	d37ff800 	lsl	x0, x0, #1
  400eac:	8b010000 	add	x0, x0, x1
  400eb0:	d37df000 	lsl	x0, x0, #3
  400eb4:	8b010000 	add	x0, x0, x1
  400eb8:	d37ef400 	lsl	x0, x0, #2
  400ebc:	8b040000 	add	x0, x0, x4
  400ec0:	b8607860 	ldr	w0, [x3, x0, lsl #2]
  400ec4:	6b00005f 	cmp	w2, w0
  400ec8:	540000ad 	b.le	400edc <CompareMesh+0x90>
  400ecc:	b9400fe0 	ldr	w0, [sp, #12]
  400ed0:	11000400 	add	w0, w0, #0x1
  400ed4:	b9000fe0 	str	w0, [sp, #12]
  400ed8:	14000004 	b	400ee8 <CompareMesh+0x9c>
  400edc:	b9400fe0 	ldr	w0, [sp, #12]
  400ee0:	51000400 	sub	w0, w0, #0x1
  400ee4:	b9000fe0 	str	w0, [sp, #12]
  400ee8:	b9400be0 	ldr	w0, [sp, #8]
  400eec:	11000400 	add	w0, w0, #0x1
  400ef0:	b9000be0 	str	w0, [sp, #8]
  400ef4:	b9400be0 	ldr	w0, [sp, #8]
  400ef8:	71018c1f 	cmp	w0, #0x63
  400efc:	54fffb4d 	b.le	400e64 <CompareMesh+0x18>
  400f00:	b94007e0 	ldr	w0, [sp, #4]
  400f04:	11000400 	add	w0, w0, #0x1
  400f08:	b90007e0 	str	w0, [sp, #4]
  400f0c:	b94007e0 	ldr	w0, [sp, #4]
  400f10:	71018c1f 	cmp	w0, #0x63
  400f14:	54fffa4d 	b.le	400e5c <CompareMesh+0x10>
  400f18:	b9400fe0 	ldr	w0, [sp, #12]
  400f1c:	7100001f 	cmp	w0, #0x0
  400f20:	5400006b 	b.lt	400f2c <CompareMesh+0xe0>  // b.tstop
  400f24:	52800020 	mov	w0, #0x1                   	// #1
  400f28:	14000002 	b	400f30 <CompareMesh+0xe4>
  400f2c:	52800000 	mov	w0, #0x0                   	// #0
  400f30:	910043ff 	add	sp, sp, #0x10
  400f34:	d65f03c0 	ret

0000000000400f38 <Mesh_dot>:
  400f38:	d10043ff 	sub	sp, sp, #0x10
  400f3c:	b9000fff 	str	wzr, [sp, #12]
  400f40:	14000046 	b	401058 <Mesh_dot+0x120>
  400f44:	b9000bff 	str	wzr, [sp, #8]
  400f48:	1400003e 	b	401040 <Mesh_dot+0x108>
  400f4c:	b90007ff 	str	wzr, [sp, #4]
  400f50:	14000036 	b	401028 <Mesh_dot+0xf0>
  400f54:	f0000180 	adrp	x0, 433000 <ms2+0x9358>
  400f58:	9123a002 	add	x2, x0, #0x8e8
  400f5c:	b9800be3 	ldrsw	x3, [sp, #8]
  400f60:	b9800fe1 	ldrsw	x1, [sp, #12]
  400f64:	aa0103e0 	mov	x0, x1
  400f68:	d37ff800 	lsl	x0, x0, #1
  400f6c:	8b010000 	add	x0, x0, x1
  400f70:	d37df000 	lsl	x0, x0, #3
  400f74:	8b010000 	add	x0, x0, x1
  400f78:	d37ef400 	lsl	x0, x0, #2
  400f7c:	8b030000 	add	x0, x0, x3
  400f80:	b8607842 	ldr	w2, [x2, x0, lsl #2]
  400f84:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400f88:	9101a003 	add	x3, x0, #0x68
  400f8c:	b98007e4 	ldrsw	x4, [sp, #4]
  400f90:	b9800fe1 	ldrsw	x1, [sp, #12]
  400f94:	aa0103e0 	mov	x0, x1
  400f98:	d37ff800 	lsl	x0, x0, #1
  400f9c:	8b010000 	add	x0, x0, x1
  400fa0:	d37df000 	lsl	x0, x0, #3
  400fa4:	8b010000 	add	x0, x0, x1
  400fa8:	d37ef400 	lsl	x0, x0, #2
  400fac:	8b040000 	add	x0, x0, x4
  400fb0:	b8607863 	ldr	w3, [x3, x0, lsl #2]
  400fb4:	b0000140 	adrp	x0, 429000 <ms1+0x8f98>
  400fb8:	9132a004 	add	x4, x0, #0xca8
  400fbc:	b9800be5 	ldrsw	x5, [sp, #8]
  400fc0:	b98007e1 	ldrsw	x1, [sp, #4]
  400fc4:	aa0103e0 	mov	x0, x1
  400fc8:	d37ff800 	lsl	x0, x0, #1
  400fcc:	8b010000 	add	x0, x0, x1
  400fd0:	d37df000 	lsl	x0, x0, #3
  400fd4:	8b010000 	add	x0, x0, x1
  400fd8:	d37ef400 	lsl	x0, x0, #2
  400fdc:	8b050000 	add	x0, x0, x5
  400fe0:	b8607880 	ldr	w0, [x4, x0, lsl #2]
  400fe4:	1b007c60 	mul	w0, w3, w0
  400fe8:	0b000043 	add	w3, w2, w0
  400fec:	f0000180 	adrp	x0, 433000 <ms2+0x9358>
  400ff0:	9123a002 	add	x2, x0, #0x8e8
  400ff4:	b9800be4 	ldrsw	x4, [sp, #8]
  400ff8:	b9800fe1 	ldrsw	x1, [sp, #12]
  400ffc:	aa0103e0 	mov	x0, x1
  401000:	d37ff800 	lsl	x0, x0, #1
  401004:	8b010000 	add	x0, x0, x1
  401008:	d37df000 	lsl	x0, x0, #3
  40100c:	8b010000 	add	x0, x0, x1
  401010:	d37ef400 	lsl	x0, x0, #2
  401014:	8b040000 	add	x0, x0, x4
  401018:	b8207843 	str	w3, [x2, x0, lsl #2]
  40101c:	b94007e0 	ldr	w0, [sp, #4]
  401020:	11000400 	add	w0, w0, #0x1
  401024:	b90007e0 	str	w0, [sp, #4]
  401028:	b94007e0 	ldr	w0, [sp, #4]
  40102c:	71018c1f 	cmp	w0, #0x63
  401030:	54fff92d 	b.le	400f54 <Mesh_dot+0x1c>
  401034:	b9400be0 	ldr	w0, [sp, #8]
  401038:	11000400 	add	w0, w0, #0x1
  40103c:	b9000be0 	str	w0, [sp, #8]
  401040:	b9400be0 	ldr	w0, [sp, #8]
  401044:	71018c1f 	cmp	w0, #0x63
  401048:	54fff82d 	b.le	400f4c <Mesh_dot+0x14>
  40104c:	b9400fe0 	ldr	w0, [sp, #12]
  401050:	11000400 	add	w0, w0, #0x1
  401054:	b9000fe0 	str	w0, [sp, #12]
  401058:	b9400fe0 	ldr	w0, [sp, #12]
  40105c:	71018c1f 	cmp	w0, #0x63
  401060:	54fff72d 	b.le	400f44 <Mesh_dot+0xc>
  401064:	52800000 	mov	w0, #0x0                   	// #0
  401068:	910043ff 	add	sp, sp, #0x10
  40106c:	d65f03c0 	ret

0000000000401070 <SwapMesh>:
  401070:	d10043ff 	sub	sp, sp, #0x10
  401074:	b90007ff 	str	wzr, [sp, #4]
  401078:	b9000bff 	str	wzr, [sp, #8]
  40107c:	1400003e 	b	401174 <SwapMesh+0x104>
  401080:	b9000fff 	str	wzr, [sp, #12]
  401084:	14000036 	b	40115c <SwapMesh+0xec>
  401088:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40108c:	9101a002 	add	x2, x0, #0x68
  401090:	b9800be3 	ldrsw	x3, [sp, #8]
  401094:	b9800fe1 	ldrsw	x1, [sp, #12]
  401098:	aa0103e0 	mov	x0, x1
  40109c:	d37ff800 	lsl	x0, x0, #1
  4010a0:	8b010000 	add	x0, x0, x1
  4010a4:	d37df000 	lsl	x0, x0, #3
  4010a8:	8b010000 	add	x0, x0, x1
  4010ac:	d37ef400 	lsl	x0, x0, #2
  4010b0:	8b030000 	add	x0, x0, x3
  4010b4:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  4010b8:	b90003e0 	str	w0, [sp]
  4010bc:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  4010c0:	9132a002 	add	x2, x0, #0xca8
  4010c4:	b9800be3 	ldrsw	x3, [sp, #8]
  4010c8:	b9800fe1 	ldrsw	x1, [sp, #12]
  4010cc:	aa0103e0 	mov	x0, x1
  4010d0:	d37ff800 	lsl	x0, x0, #1
  4010d4:	8b010000 	add	x0, x0, x1
  4010d8:	d37df000 	lsl	x0, x0, #3
  4010dc:	8b010000 	add	x0, x0, x1
  4010e0:	d37ef400 	lsl	x0, x0, #2
  4010e4:	8b030000 	add	x0, x0, x3
  4010e8:	b8607843 	ldr	w3, [x2, x0, lsl #2]
  4010ec:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4010f0:	9101a002 	add	x2, x0, #0x68
  4010f4:	b9800be4 	ldrsw	x4, [sp, #8]
  4010f8:	b9800fe1 	ldrsw	x1, [sp, #12]
  4010fc:	aa0103e0 	mov	x0, x1
  401100:	d37ff800 	lsl	x0, x0, #1
  401104:	8b010000 	add	x0, x0, x1
  401108:	d37df000 	lsl	x0, x0, #3
  40110c:	8b010000 	add	x0, x0, x1
  401110:	d37ef400 	lsl	x0, x0, #2
  401114:	8b040000 	add	x0, x0, x4
  401118:	b8207843 	str	w3, [x2, x0, lsl #2]
  40111c:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401120:	9132a002 	add	x2, x0, #0xca8
  401124:	b9800be3 	ldrsw	x3, [sp, #8]
  401128:	b9800fe1 	ldrsw	x1, [sp, #12]
  40112c:	aa0103e0 	mov	x0, x1
  401130:	d37ff800 	lsl	x0, x0, #1
  401134:	8b010000 	add	x0, x0, x1
  401138:	d37df000 	lsl	x0, x0, #3
  40113c:	8b010000 	add	x0, x0, x1
  401140:	d37ef400 	lsl	x0, x0, #2
  401144:	8b030000 	add	x0, x0, x3
  401148:	b94003e1 	ldr	w1, [sp]
  40114c:	b8207841 	str	w1, [x2, x0, lsl #2]
  401150:	b9400fe0 	ldr	w0, [sp, #12]
  401154:	11000400 	add	w0, w0, #0x1
  401158:	b9000fe0 	str	w0, [sp, #12]
  40115c:	b9400fe0 	ldr	w0, [sp, #12]
  401160:	71018c1f 	cmp	w0, #0x63
  401164:	54fff92d 	b.le	401088 <SwapMesh+0x18>
  401168:	b9400be0 	ldr	w0, [sp, #8]
  40116c:	11000400 	add	w0, w0, #0x1
  401170:	b9000be0 	str	w0, [sp, #8]
  401174:	b9400be0 	ldr	w0, [sp, #8]
  401178:	71018c1f 	cmp	w0, #0x63
  40117c:	54fff82d 	b.le	401080 <SwapMesh+0x10>
  401180:	52800000 	mov	w0, #0x0                   	// #0
  401184:	910043ff 	add	sp, sp, #0x10
  401188:	d65f03c0 	ret

000000000040118c <LoadData>:
  40118c:	a9ae7bfd 	stp	x29, x30, [sp, #-288]!
  401190:	910003fd 	mov	x29, sp
  401194:	f9008fff 	str	xzr, [sp, #280]
  401198:	90000000 	adrp	x0, 401000 <Mesh_dot+0xc8>
  40119c:	91162001 	add	x1, x0, #0x588
  4011a0:	90000000 	adrp	x0, 401000 <Mesh_dot+0xc8>
  4011a4:	91164000 	add	x0, x0, #0x590
  4011a8:	97fffd36 	bl	400680 <fopen@plt>
  4011ac:	f9008fe0 	str	x0, [sp, #280]
  4011b0:	910063e0 	add	x0, sp, #0x18
  4011b4:	f9408fe2 	ldr	x2, [sp, #280]
  4011b8:	52801fe1 	mov	w1, #0xff                  	// #255
  4011bc:	97fffd4d 	bl	4006f0 <fgets@plt>
  4011c0:	910063e0 	add	x0, sp, #0x18
  4011c4:	aa0003e1 	mov	x1, x0
  4011c8:	90000000 	adrp	x0, 401000 <Mesh_dot+0xc8>
  4011cc:	9117e000 	add	x0, x0, #0x5f8
  4011d0:	97fffd40 	bl	4006d0 <printf@plt>
  4011d4:	910063e0 	add	x0, sp, #0x18
  4011d8:	f9408fe2 	ldr	x2, [sp, #280]
  4011dc:	52801fe1 	mov	w1, #0xff                  	// #255
  4011e0:	97fffd44 	bl	4006f0 <fgets@plt>
  4011e4:	f9408fe0 	ldr	x0, [sp, #280]
  4011e8:	97fffd22 	bl	400670 <fclose@plt>
  4011ec:	52800000 	mov	w0, #0x0                   	// #0
  4011f0:	a8d27bfd 	ldp	x29, x30, [sp], #288
  4011f4:	d65f03c0 	ret

00000000004011f8 <ComplexDataHandle>:
  4011f8:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  4011fc:	910003fd 	mov	x29, sp
  401200:	94000007 	bl	40121c <ManiplateData1>
  401204:	b9001fe0 	str	w0, [sp, #28]
  401208:	94000051 	bl	40134c <ManiplateData2>
  40120c:	b9001fe0 	str	w0, [sp, #28]
  401210:	52800000 	mov	w0, #0x0                   	// #0
  401214:	a8c27bfd 	ldp	x29, x30, [sp], #32
  401218:	d65f03c0 	ret

000000000040121c <ManiplateData1>:
  40121c:	d10043ff 	sub	sp, sp, #0x10
  401220:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401224:	9101a000 	add	x0, x0, #0x68
  401228:	52800281 	mov	w1, #0x14                  	// #20
  40122c:	b9019401 	str	w1, [x0, #404]
  401230:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401234:	9101a000 	add	x0, x0, #0x68
  401238:	b9419400 	ldr	w0, [x0, #404]
  40123c:	b9000fe0 	str	w0, [sp, #12]
  401240:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401244:	9101a000 	add	x0, x0, #0x68
  401248:	528003c1 	mov	w1, #0x1e                  	// #30
  40124c:	b9019401 	str	w1, [x0, #404]
  401250:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401254:	9101a000 	add	x0, x0, #0x68
  401258:	b9419400 	ldr	w0, [x0, #404]
  40125c:	b9000fe0 	str	w0, [sp, #12]
  401260:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401264:	9101a000 	add	x0, x0, #0x68
  401268:	b9419400 	ldr	w0, [x0, #404]
  40126c:	b9000fe0 	str	w0, [sp, #12]
  401270:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401274:	9101a000 	add	x0, x0, #0x68
  401278:	52800641 	mov	w1, #0x32                  	// #50
  40127c:	b9032401 	str	w1, [x0, #804]
  401280:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401284:	9101a000 	add	x0, x0, #0x68
  401288:	52800781 	mov	w1, #0x3c                  	// #60
  40128c:	b9032401 	str	w1, [x0, #804]
  401290:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401294:	9101a000 	add	x0, x0, #0x68
  401298:	528008c1 	mov	w1, #0x46                  	// #70
  40129c:	b9032401 	str	w1, [x0, #804]
  4012a0:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4012a4:	9101a000 	add	x0, x0, #0x68
  4012a8:	b9432400 	ldr	w0, [x0, #804]
  4012ac:	b9000fe0 	str	w0, [sp, #12]
  4012b0:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4012b4:	9101a000 	add	x0, x0, #0x68
  4012b8:	b9432400 	ldr	w0, [x0, #804]
  4012bc:	b9000fe0 	str	w0, [sp, #12]
  4012c0:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4012c4:	9101a000 	add	x0, x0, #0x68
  4012c8:	52800c61 	mov	w1, #0x63                  	// #99
  4012cc:	b9032401 	str	w1, [x0, #804]
  4012d0:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4012d4:	9101a000 	add	x0, x0, #0x68
  4012d8:	b9432400 	ldr	w0, [x0, #804]
  4012dc:	b9000fe0 	str	w0, [sp, #12]
  4012e0:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4012e4:	9101a000 	add	x0, x0, #0x68
  4012e8:	52800501 	mov	w1, #0x28                  	// #40
  4012ec:	b9019801 	str	w1, [x0, #408]
  4012f0:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4012f4:	9101a000 	add	x0, x0, #0x68
  4012f8:	b9419400 	ldr	w0, [x0, #404]
  4012fc:	b9000fe0 	str	w0, [sp, #12]
  401300:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401304:	9101a000 	add	x0, x0, #0x68
  401308:	528003c1 	mov	w1, #0x1e                  	// #30
  40130c:	b9019801 	str	w1, [x0, #408]
  401310:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401314:	9101a000 	add	x0, x0, #0x68
  401318:	b9419800 	ldr	w0, [x0, #408]
  40131c:	b9000fe0 	str	w0, [sp, #12]
  401320:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401324:	9101a000 	add	x0, x0, #0x68
  401328:	b9419800 	ldr	w0, [x0, #408]
  40132c:	b9000fe0 	str	w0, [sp, #12]
  401330:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  401334:	9101a000 	add	x0, x0, #0x68
  401338:	52800641 	mov	w1, #0x32                  	// #50
  40133c:	b9019801 	str	w1, [x0, #408]
  401340:	52800000 	mov	w0, #0x0                   	// #0
  401344:	910043ff 	add	sp, sp, #0x10
  401348:	d65f03c0 	ret

000000000040134c <ManiplateData2>:
  40134c:	d10043ff 	sub	sp, sp, #0x10
  401350:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401354:	9132a000 	add	x0, x0, #0xca8
  401358:	52800281 	mov	w1, #0x14                  	// #20
  40135c:	b9019401 	str	w1, [x0, #404]
  401360:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401364:	9132a000 	add	x0, x0, #0xca8
  401368:	b9419400 	ldr	w0, [x0, #404]
  40136c:	b9000fe0 	str	w0, [sp, #12]
  401370:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401374:	9132a000 	add	x0, x0, #0xca8
  401378:	528003c1 	mov	w1, #0x1e                  	// #30
  40137c:	b9019401 	str	w1, [x0, #404]
  401380:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401384:	9132a000 	add	x0, x0, #0xca8
  401388:	b9419400 	ldr	w0, [x0, #404]
  40138c:	b9000fe0 	str	w0, [sp, #12]
  401390:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401394:	9132a000 	add	x0, x0, #0xca8
  401398:	b9419400 	ldr	w0, [x0, #404]
  40139c:	b9000fe0 	str	w0, [sp, #12]
  4013a0:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  4013a4:	9132a000 	add	x0, x0, #0xca8
  4013a8:	52800641 	mov	w1, #0x32                  	// #50
  4013ac:	b9032401 	str	w1, [x0, #804]
  4013b0:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  4013b4:	9132a000 	add	x0, x0, #0xca8
  4013b8:	52800781 	mov	w1, #0x3c                  	// #60
  4013bc:	b9032401 	str	w1, [x0, #804]
  4013c0:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  4013c4:	9132a000 	add	x0, x0, #0xca8
  4013c8:	528008c1 	mov	w1, #0x46                  	// #70
  4013cc:	b9032401 	str	w1, [x0, #804]
  4013d0:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  4013d4:	9132a000 	add	x0, x0, #0xca8
  4013d8:	b9432400 	ldr	w0, [x0, #804]
  4013dc:	b9000fe0 	str	w0, [sp, #12]
  4013e0:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  4013e4:	9132a000 	add	x0, x0, #0xca8
  4013e8:	b9432400 	ldr	w0, [x0, #804]
  4013ec:	b9000fe0 	str	w0, [sp, #12]
  4013f0:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  4013f4:	9132a000 	add	x0, x0, #0xca8
  4013f8:	52800c61 	mov	w1, #0x63                  	// #99
  4013fc:	b9032401 	str	w1, [x0, #804]
  401400:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401404:	9132a000 	add	x0, x0, #0xca8
  401408:	b9432400 	ldr	w0, [x0, #804]
  40140c:	b9000fe0 	str	w0, [sp, #12]
  401410:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401414:	9132a000 	add	x0, x0, #0xca8
  401418:	52800501 	mov	w1, #0x28                  	// #40
  40141c:	b9019801 	str	w1, [x0, #408]
  401420:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401424:	9132a000 	add	x0, x0, #0xca8
  401428:	b9419800 	ldr	w0, [x0, #408]
  40142c:	b9000fe0 	str	w0, [sp, #12]
  401430:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401434:	9132a000 	add	x0, x0, #0xca8
  401438:	528003c1 	mov	w1, #0x1e                  	// #30
  40143c:	b9019801 	str	w1, [x0, #408]
  401440:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401444:	9132a000 	add	x0, x0, #0xca8
  401448:	b9419800 	ldr	w0, [x0, #408]
  40144c:	b9000fe0 	str	w0, [sp, #12]
  401450:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401454:	9132a000 	add	x0, x0, #0xca8
  401458:	b9419800 	ldr	w0, [x0, #408]
  40145c:	b9000fe0 	str	w0, [sp, #12]
  401460:	90000140 	adrp	x0, 429000 <ms1+0x8f98>
  401464:	9132a000 	add	x0, x0, #0xca8
  401468:	52800641 	mov	w1, #0x32                  	// #50
  40146c:	b9019801 	str	w1, [x0, #408]
  401470:	52800000 	mov	w0, #0x0                   	// #0
  401474:	910043ff 	add	sp, sp, #0x10
  401478:	d65f03c0 	ret

000000000040147c <StoreData>:
  40147c:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  401480:	910003fd 	mov	x29, sp
  401484:	f9000bff 	str	xzr, [sp, #16]
  401488:	90000000 	adrp	x0, 401000 <Mesh_dot+0xc8>
  40148c:	91180001 	add	x1, x0, #0x600
  401490:	90000000 	adrp	x0, 401000 <Mesh_dot+0xc8>
  401494:	91164000 	add	x0, x0, #0x590
  401498:	97fffc7a 	bl	400680 <fopen@plt>
  40149c:	f9000be0 	str	x0, [sp, #16]
  4014a0:	f9400be3 	ldr	x3, [sp, #16]
  4014a4:	d28000e2 	mov	x2, #0x7                   	// #7
  4014a8:	d2800021 	mov	x1, #0x1                   	// #1
  4014ac:	90000000 	adrp	x0, 401000 <Mesh_dot+0xc8>
  4014b0:	91182000 	add	x0, x0, #0x608
  4014b4:	97fffc83 	bl	4006c0 <fwrite@plt>
  4014b8:	b9001fff 	str	wzr, [sp, #28]
  4014bc:	1400001d 	b	401530 <StoreData+0xb4>
  4014c0:	b9001bff 	str	wzr, [sp, #24]
  4014c4:	14000015 	b	401518 <StoreData+0x9c>
  4014c8:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4014cc:	9101a002 	add	x2, x0, #0x68
  4014d0:	b9801be3 	ldrsw	x3, [sp, #24]
  4014d4:	b9801fe1 	ldrsw	x1, [sp, #28]
  4014d8:	aa0103e0 	mov	x0, x1
  4014dc:	d37ff800 	lsl	x0, x0, #1
  4014e0:	8b010000 	add	x0, x0, x1
  4014e4:	d37df000 	lsl	x0, x0, #3
  4014e8:	8b010000 	add	x0, x0, x1
  4014ec:	d37ef400 	lsl	x0, x0, #2
  4014f0:	8b030000 	add	x0, x0, x3
  4014f4:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  4014f8:	2a0003e2 	mov	w2, w0
  4014fc:	90000000 	adrp	x0, 401000 <Mesh_dot+0xc8>
  401500:	91184001 	add	x1, x0, #0x610
  401504:	f9400be0 	ldr	x0, [sp, #16]
  401508:	97fffc76 	bl	4006e0 <fprintf@plt>
  40150c:	b9401be0 	ldr	w0, [sp, #24]
  401510:	11000400 	add	w0, w0, #0x1
  401514:	b9001be0 	str	w0, [sp, #24]
  401518:	b9401be0 	ldr	w0, [sp, #24]
  40151c:	71018c1f 	cmp	w0, #0x63
  401520:	54fffd4d 	b.le	4014c8 <StoreData+0x4c>
  401524:	b9401fe0 	ldr	w0, [sp, #28]
  401528:	11000400 	add	w0, w0, #0x1
  40152c:	b9001fe0 	str	w0, [sp, #28]
  401530:	b9401fe0 	ldr	w0, [sp, #28]
  401534:	71018c1f 	cmp	w0, #0x63
  401538:	54fffc4d 	b.le	4014c0 <StoreData+0x44>
  40153c:	f9400be3 	ldr	x3, [sp, #16]
  401540:	d2800042 	mov	x2, #0x2                   	// #2
  401544:	d2800021 	mov	x1, #0x1                   	// #1
  401548:	90000000 	adrp	x0, 401000 <Mesh_dot+0xc8>
  40154c:	91186000 	add	x0, x0, #0x618
  401550:	97fffc5c 	bl	4006c0 <fwrite@plt>
  401554:	f9400be0 	ldr	x0, [sp, #16]
  401558:	97fffc46 	bl	400670 <fclose@plt>
  40155c:	52800000 	mov	w0, #0x0                   	// #0
  401560:	a8c27bfd 	ldp	x29, x30, [sp], #32
  401564:	d65f03c0 	ret

Disassembly of section .fini:

0000000000401568 <_fini>:
  401568:	d503201f 	nop
  40156c:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  401570:	910003fd 	mov	x29, sp
  401574:	a8c17bfd 	ldp	x29, x30, [sp], #16
  401578:	d65f03c0 	ret

Disassembly of section .rodata:

0000000000401580 <_IO_stdin_used>:
  401580:	00020001 	.inst	0x00020001 ; undefined
  401584:	00000000 	udf	#0
  401588:	00000072 	udf	#114
  40158c:	00000000 	udf	#0
  401590:	6573552f 	fnmla	z15.h, p5/m, z9.h, z19.h
  401594:	672f7372 	.inst	0x672f7372 ; undefined
  401598:	6a756775 	bics	w21, w27, w21, lsr #25
  40159c:	61697869 	.inst	0x61697869 ; undefined
  4015a0:	6f772f6f 	.inst	0x6f772f6f ; undefined
  4015a4:	70736b72 	adr	x18, 4e8313 <__bss_end__+0xaade3>
  4015a8:	2f656361 	umlsl	v1.4s, v27.4h, v5.h[2]
  4015ac:	6a6f7270 	bics	w16, w19, w15, lsr #28
  4015b0:	2f746365 	umlsl	v5.4s, v27.4h, v4.h[3]
  4015b4:	654d5748 	fcmge	p8.h, p5/z, z26.h, z13.h
  4015b8:	79726f6d 	ldrh	w13, [x27, #6454]
  4015bc:	646f432f 	bfdot	z15.s, z25.h, z7.h[1]
  4015c0:	65622f65 	fmls	z5.h, p3/m, z27.h, z2.h
  4015c4:	6d68636e 	ldp	d14, d24, [x27, #-384]
  4015c8:	2f6b7261 	fcmla	v1.4h, v19.4h, v11.h[1], #270
  4015cc:	63657073 	.inst	0x63657073 ; undefined
  4015d0:	6e65625f 	rsubhn2	v31.8h, v18.4s, v5.4s
  4015d4:	616d6863 	.inst	0x616d6863 ; undefined
  4015d8:	732f6b72 	.inst	0x732f6b72 ; undefined
  4015dc:	5f636570 	.inst	0x5f636570 ; undefined
  4015e0:	636e6562 	.inst	0x636e6562 ; undefined
  4015e4:	72616d68 	.inst	0x72616d68 ; undefined
  4015e8:	65742f6b 	fmls	z11.h, p3/m, z27.h, z20.h
  4015ec:	69667473 	ldpsw	x19, x29, [x3, #-208]
  4015f0:	742e656c 	.inst	0x742e656c ; undefined
  4015f4:	00007478 	udf	#29816
  4015f8:	25203a31 	.inst	0x25203a31 ; undefined
  4015fc:	00000a73 	udf	#2675
  401600:	00002b77 	udf	#11127
  401604:	00000000 	udf	#0
  401608:	3d20736d 	str	b13, [x27, #2076]
  40160c:	000a7b20 	.inst	0x000a7b20 ; undefined
  401610:	00096425 	.inst	0x00096425 ; undefined
  401614:	00000000 	udf	#0
  401618:	地址 0x0000000000401618 越界。


Disassembly of section .eh_frame_hdr:

000000000040161c <__GNU_EH_FRAME_HDR>:
  40161c:	3b031b01 	.inst	0x3b031b01 ; undefined
  401620:	00000090 	udf	#144
  401624:	00000011 	udf	#17
  401628:	fffff0e4 	.inst	0xfffff0e4 ; undefined
  40162c:	000000a8 	udf	#168
  401630:	fffff124 	.inst	0xfffff124 ; undefined
  401634:	000000bc 	udf	#188
  401638:	fffff144 	.inst	0xfffff144 ; undefined
  40163c:	000000d4 	udf	#212
  401640:	fffff174 	.inst	0xfffff174 ; undefined
  401644:	000000e8 	udf	#232
  401648:	fffff1b4 	.inst	0xfffff1b4 ; undefined
  40164c:	000000fc 	udf	#252
  401650:	fffff1e4 	.inst	0xfffff1e4 ; undefined
  401654:	00000120 	udf	#288
  401658:	fffff1e8 	.inst	0xfffff1e8 ; undefined
  40165c:	00000134 	udf	#308
  401660:	fffff264 	.inst	0xfffff264 ; undefined
  401664:	00000154 	udf	#340
  401668:	fffff530 	.inst	0xfffff530 ; undefined
  40166c:	00000174 	udf	#372
  401670:	fffff830 	.inst	0xfffff830 ; undefined
  401674:	00000194 	udf	#404
  401678:	fffff91c 	.inst	0xfffff91c ; undefined
  40167c:	000001ac 	udf	#428
  401680:	fffffa54 	.inst	0xfffffa54 ; undefined
  401684:	000001c4 	udf	#452
  401688:	fffffb70 	.inst	0xfffffb70 ; undefined
  40168c:	000001dc 	udf	#476
  401690:	fffffbdc 	.inst	0xfffffbdc ; undefined
  401694:	000001fc 	udf	#508
  401698:	fffffc00 	.inst	0xfffffc00 ; undefined
  40169c:	0000021c 	udf	#540
  4016a0:	fffffd30 	.inst	0xfffffd30 ; undefined
  4016a4:	00000234 	udf	#564
  4016a8:	fffffe60 	.inst	0xfffffe60 ; undefined
  4016ac:	0000024c 	udf	#588

Disassembly of section .eh_frame:

00000000004016b0 <__FRAME_END__-0x1d8>:
  4016b0:	00000010 	udf	#16
  4016b4:	00000000 	udf	#0
  4016b8:	00527a01 	.inst	0x00527a01 ; undefined
  4016bc:	011e7804 	.inst	0x011e7804 ; undefined
  4016c0:	001f0c1b 	.inst	0x001f0c1b ; undefined
  4016c4:	00000010 	udf	#16
  4016c8:	00000018 	udf	#24
  4016cc:	fffff034 	.inst	0xfffff034 ; undefined
  4016d0:	0000003c 	udf	#60
  4016d4:	1e074100 	.inst	0x1e074100 ; undefined
  4016d8:	00000014 	udf	#20
  4016dc:	0000002c 	udf	#44
  4016e0:	fffff060 	.inst	0xfffff060 ; undefined
  4016e4:	00000004 	udf	#4
	...
  4016f0:	00000010 	udf	#16
  4016f4:	00000044 	udf	#68
  4016f8:	fffff068 	.inst	0xfffff068 ; undefined
  4016fc:	00000030 	udf	#48
  401700:	00000000 	udf	#0
  401704:	00000010 	udf	#16
  401708:	00000058 	udf	#88
  40170c:	fffff084 	.inst	0xfffff084 ; undefined
  401710:	0000003c 	udf	#60
  401714:	00000000 	udf	#0
  401718:	00000020 	udf	#32
  40171c:	0000006c 	udf	#108
  401720:	fffff0b0 	.inst	0xfffff0b0 ; undefined
  401724:	00000030 	udf	#48
  401728:	200e4100 	.inst	0x200e4100 ; undefined
  40172c:	039e049d 	.inst	0x039e049d ; undefined
  401730:	48029342 	stlxrh	w2, w2, [x26]
  401734:	0ed3ddde 	.inst	0x0ed3ddde ; undefined
  401738:	00000000 	udf	#0
  40173c:	00000010 	udf	#16
  401740:	00000090 	udf	#144
  401744:	fffff0bc 	.inst	0xfffff0bc ; undefined
  401748:	00000004 	udf	#4
  40174c:	00000000 	udf	#0
  401750:	0000001c 	udf	#28
  401754:	000000a4 	udf	#164
  401758:	fffff0ac 	.inst	0xfffff0ac ; undefined
  40175c:	0000007c 	udf	#124
  401760:	300e4100 	adr	x0, 41df81 <__FRAME_END__+0x1c6f9>
  401764:	059e069d 	mov	z29.s, p14/z, #52
  401768:	0eddde5d 	.inst	0x0eddde5d ; undefined
  40176c:	00000000 	udf	#0
  401770:	0000001c 	udf	#28
  401774:	000000c4 	udf	#196
  401778:	fffff108 	.inst	0xfffff108 ; undefined
  40177c:	000002cc 	udf	#716
  401780:	200e4100 	.inst	0x200e4100 ; undefined
  401784:	039e049d 	.inst	0x039e049d ; undefined
  401788:	dddeb102 	.inst	0xdddeb102 ; undefined
  40178c:	0000000e 	udf	#14
  401790:	0000001c 	udf	#28
  401794:	000000e4 	udf	#228
  401798:	fffff3b4 	.inst	0xfffff3b4 ; undefined
  40179c:	00000300 	udf	#768
  4017a0:	200e4100 	.inst	0x200e4100 ; undefined
  4017a4:	039e049d 	.inst	0x039e049d ; undefined
  4017a8:	dddebe02 	.inst	0xdddebe02 ; undefined
  4017ac:	0000000e 	udf	#14
  4017b0:	00000014 	udf	#20
  4017b4:	00000104 	udf	#260
  4017b8:	fffff694 	.inst	0xfffff694 ; undefined
  4017bc:	000000ec 	udf	#236
  4017c0:	100e4100 	adr	x0, 41dfe0 <__FRAME_END__+0x1c758>
  4017c4:	00000e79 	udf	#3705
  4017c8:	00000014 	udf	#20
  4017cc:	0000011c 	udf	#284
  4017d0:	fffff768 	.inst	0xfffff768 ; undefined
  4017d4:	00000138 	udf	#312
  4017d8:	100e4100 	adr	x0, 41dff8 <__FRAME_END__+0x1c770>
  4017dc:	000e4c02 	.inst	0x000e4c02 ; undefined
  4017e0:	00000014 	udf	#20
  4017e4:	00000134 	udf	#308
  4017e8:	fffff888 	.inst	0xfffff888 ; undefined
  4017ec:	0000011c 	udf	#284
  4017f0:	100e4100 	adr	x0, 41e010 <__FRAME_END__+0x1c788>
  4017f4:	000e4502 	.inst	0x000e4502 ; undefined
  4017f8:	0000001c 	udf	#28
  4017fc:	0000014c 	udf	#332
  401800:	fffff98c 	.inst	0xfffff98c ; undefined
  401804:	0000006c 	udf	#108
  401808:	a00e4100 	.inst	0xa00e4100 ; undefined
  40180c:	9e249d02 	.inst	0x9e249d02 ; undefined
  401810:	ddde5923 	.inst	0xddde5923 ; undefined
  401814:	0000000e 	udf	#14
  401818:	0000001c 	udf	#28
  40181c:	0000016c 	udf	#364
  401820:	fffff9d8 	.inst	0xfffff9d8 ; undefined
  401824:	00000024 	udf	#36
  401828:	200e4100 	.inst	0x200e4100 ; undefined
  40182c:	039e049d 	.inst	0x039e049d ; undefined
  401830:	0eddde47 	.inst	0x0eddde47 ; undefined
  401834:	00000000 	udf	#0
  401838:	00000014 	udf	#20
  40183c:	0000018c 	udf	#396
  401840:	fffff9dc 	.inst	0xfffff9dc ; undefined
  401844:	00000130 	udf	#304
  401848:	100e4100 	adr	x0, 41e068 <__FRAME_END__+0x1c7e0>
  40184c:	000e4a02 	.inst	0x000e4a02 ; undefined
  401850:	00000014 	udf	#20
  401854:	000001a4 	udf	#420
  401858:	fffffaf4 	.inst	0xfffffaf4 ; undefined
  40185c:	00000130 	udf	#304
  401860:	100e4100 	adr	x0, 41e080 <__FRAME_END__+0x1c7f8>
  401864:	000e4a02 	.inst	0x000e4a02 ; undefined
  401868:	0000001c 	udf	#28
  40186c:	000001bc 	udf	#444
  401870:	fffffc0c 	.inst	0xfffffc0c ; undefined
  401874:	000000ec 	udf	#236
  401878:	200e4100 	.inst	0x200e4100 ; undefined
  40187c:	039e049d 	.inst	0x039e049d ; undefined
  401880:	0eddde79 	.inst	0x0eddde79 ; undefined
  401884:	00000000 	udf	#0

0000000000401888 <__FRAME_END__>:
  401888:	00000000 	udf	#0

Disassembly of section .init_array:

000000000041fde8 <__frame_dummy_init_array_entry>:
  41fde8:	00400800 	.inst	0x00400800 ; undefined
  41fdec:	00000000 	udf	#0

Disassembly of section .fini_array:

000000000041fdf0 <__do_global_dtors_aux_fini_array_entry>:
  41fdf0:	004007d0 	.inst	0x004007d0 ; undefined
  41fdf4:	00000000 	udf	#0

Disassembly of section .dynamic:

000000000041fdf8 <_DYNAMIC>:
  41fdf8:	00000001 	udf	#1
  41fdfc:	00000000 	udf	#0
  41fe00:	00000042 	udf	#66
  41fe04:	00000000 	udf	#0
  41fe08:	0000000c 	udf	#12
  41fe0c:	00000000 	udf	#0
  41fe10:	00400620 	.inst	0x00400620 ; undefined
  41fe14:	00000000 	udf	#0
  41fe18:	0000000d 	udf	#13
  41fe1c:	00000000 	udf	#0
  41fe20:	00401568 	.inst	0x00401568 ; undefined
  41fe24:	00000000 	udf	#0
  41fe28:	00000019 	udf	#25
  41fe2c:	00000000 	udf	#0
  41fe30:	0041fde8 	.inst	0x0041fde8 ; undefined
  41fe34:	00000000 	udf	#0
  41fe38:	0000001b 	udf	#27
  41fe3c:	00000000 	udf	#0
  41fe40:	00000008 	udf	#8
  41fe44:	00000000 	udf	#0
  41fe48:	0000001a 	udf	#26
  41fe4c:	00000000 	udf	#0
  41fe50:	0041fdf0 	.inst	0x0041fdf0 ; undefined
  41fe54:	00000000 	udf	#0
  41fe58:	0000001c 	udf	#28
  41fe5c:	00000000 	udf	#0
  41fe60:	00000008 	udf	#8
  41fe64:	00000000 	udf	#0
  41fe68:	6ffffef5 	.inst	0x6ffffef5 ; undefined
  41fe6c:	00000000 	udf	#0
  41fe70:	00400298 	.inst	0x00400298 ; undefined
  41fe74:	00000000 	udf	#0
  41fe78:	00000005 	udf	#5
  41fe7c:	00000000 	udf	#0
  41fe80:	004003f0 	.inst	0x004003f0 ; undefined
  41fe84:	00000000 	udf	#0
  41fe88:	00000006 	udf	#6
  41fe8c:	00000000 	udf	#0
  41fe90:	004002b8 	.inst	0x004002b8 ; undefined
  41fe94:	00000000 	udf	#0
  41fe98:	0000000a 	udf	#10
  41fe9c:	00000000 	udf	#0
  41fea0:	000000a7 	udf	#167
  41fea4:	00000000 	udf	#0
  41fea8:	0000000b 	udf	#11
  41feac:	00000000 	udf	#0
  41feb0:	00000018 	udf	#24
  41feb4:	00000000 	udf	#0
  41feb8:	00000015 	udf	#21
	...
  41fec8:	00000003 	udf	#3
  41fecc:	00000000 	udf	#0
  41fed0:	0041ffe8 	.inst	0x0041ffe8 ; undefined
  41fed4:	00000000 	udf	#0
  41fed8:	00000002 	udf	#2
  41fedc:	00000000 	udf	#0
  41fee0:	000000f0 	udf	#240
  41fee4:	00000000 	udf	#0
  41fee8:	00000014 	udf	#20
  41feec:	00000000 	udf	#0
  41fef0:	00000007 	udf	#7
  41fef4:	00000000 	udf	#0
  41fef8:	00000017 	udf	#23
  41fefc:	00000000 	udf	#0
  41ff00:	00400530 	.inst	0x00400530 ; undefined
  41ff04:	00000000 	udf	#0
  41ff08:	00000007 	udf	#7
  41ff0c:	00000000 	udf	#0
  41ff10:	004004e8 	.inst	0x004004e8 ; undefined
  41ff14:	00000000 	udf	#0
  41ff18:	00000008 	udf	#8
  41ff1c:	00000000 	udf	#0
  41ff20:	00000048 	udf	#72
  41ff24:	00000000 	udf	#0
  41ff28:	00000009 	udf	#9
  41ff2c:	00000000 	udf	#0
  41ff30:	00000018 	udf	#24
  41ff34:	00000000 	udf	#0
  41ff38:	6ffffffe 	.inst	0x6ffffffe ; undefined
  41ff3c:	00000000 	udf	#0
  41ff40:	004004b8 	.inst	0x004004b8 ; undefined
  41ff44:	00000000 	udf	#0
  41ff48:	6fffffff 	.inst	0x6fffffff ; undefined
  41ff4c:	00000000 	udf	#0
  41ff50:	00000001 	udf	#1
  41ff54:	00000000 	udf	#0
  41ff58:	6ffffff0 	.inst	0x6ffffff0 ; undefined
  41ff5c:	00000000 	udf	#0
  41ff60:	00400498 	.inst	0x00400498 ; undefined
	...

Disassembly of section .got:

000000000041ffc8 <_GLOBAL_OFFSET_TABLE_>:
  41ffc8:	0041fdf8 	.inst	0x0041fdf8 ; undefined
	...

Disassembly of section .got.plt:

000000000041ffe8 <.got.plt>:
	...
  420000:	00400640 	.inst	0x00400640 ; undefined
  420004:	00000000 	udf	#0
  420008:	00400640 	.inst	0x00400640 ; undefined
  42000c:	00000000 	udf	#0
  420010:	00400640 	.inst	0x00400640 ; undefined
  420014:	00000000 	udf	#0
  420018:	00400640 	.inst	0x00400640 ; undefined
  42001c:	00000000 	udf	#0
  420020:	00400640 	.inst	0x00400640 ; undefined
  420024:	00000000 	udf	#0
  420028:	00400640 	.inst	0x00400640 ; undefined
  42002c:	00000000 	udf	#0
  420030:	00400640 	.inst	0x00400640 ; undefined
  420034:	00000000 	udf	#0
  420038:	00400640 	.inst	0x00400640 ; undefined
  42003c:	00000000 	udf	#0
  420040:	00400640 	.inst	0x00400640 ; undefined
  420044:	00000000 	udf	#0
  420048:	00400640 	.inst	0x00400640 ; undefined
  42004c:	00000000 	udf	#0

Disassembly of section .data:

0000000000420050 <__data_start>:
	...

0000000000420058 <__dso_handle>:
	...

Disassembly of section .bss:

0000000000420060 <completed.0>:
	...

0000000000420068 <ms1>:
	...

0000000000429ca8 <ms2>:
	...

00000000004338e8 <ms3>:
	...

000000000043d528 <ms4>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	3a434347 	ccmn	w26, w3, #0x7, mi  // mi = first
   4:	4e472820 	trn1	v0.8h, v1.8h, v7.8h
   8:	31202955 	adds	w21, w10, #0x80a
   c:	2e332e30 	uqsub	v16.8b, v17.8b, v19.8b
  10:	地址 0x0000000000000010 越界。


Disassembly of section .gnu.build.attributes:

000000000043d530 <.gnu.build.attributes>:
  43d530:	00000008 	udf	#8
  43d534:	00000010 	udf	#16
  43d538:	00000100 	udf	#256
  43d53c:	01244147 	.inst	0x01244147 ; undefined
  43d540:	00316133 	.inst	0x00316133 ; NYI
  43d544:	00400700 	.inst	0x00400700 ; undefined
  43d548:	00000000 	udf	#0
  43d54c:	0040073c 	.inst	0x0040073c ; undefined
  43d550:	00000000 	udf	#0
  43d554:	00000008 	udf	#8
  43d558:	00000010 	udf	#16
  43d55c:	00000100 	udf	#256
  43d560:	01244147 	.inst	0x01244147 ; undefined
  43d564:	00316133 	.inst	0x00316133 ; NYI
  43d568:	00400744 	.inst	0x00400744 ; undefined
  43d56c:	00000000 	udf	#0
  43d570:	00400758 	.inst	0x00400758 ; undefined
  43d574:	00000000 	udf	#0
  43d578:	00000008 	udf	#8
  43d57c:	00000010 	udf	#16
  43d580:	00000100 	udf	#256
  43d584:	01244147 	.inst	0x01244147 ; undefined
  43d588:	00316133 	.inst	0x00316133 ; NYI
  43d58c:	00400620 	.inst	0x00400620 ; undefined
  43d590:	00000000 	udf	#0
  43d594:	00400630 	.inst	0x00400630 ; undefined
  43d598:	00000000 	udf	#0
  43d59c:	00000008 	udf	#8
  43d5a0:	00000010 	udf	#16
  43d5a4:	00000100 	udf	#256
  43d5a8:	01244147 	.inst	0x01244147 ; undefined
  43d5ac:	00316133 	.inst	0x00316133 ; NYI
  43d5b0:	00401568 	.inst	0x00401568 ; undefined
  43d5b4:	00000000 	udf	#0
  43d5b8:	00401574 	.inst	0x00401574 ; undefined
  43d5bc:	00000000 	udf	#0
  43d5c0:	00000008 	udf	#8
  43d5c4:	00000010 	udf	#16
  43d5c8:	00000100 	udf	#256
  43d5cc:	01244147 	.inst	0x01244147 ; undefined
  43d5d0:	00316133 	.inst	0x00316133 ; NYI
  43d5d4:	00401568 	.inst	0x00401568 ; undefined
  43d5d8:	00000000 	udf	#0
  43d5dc:	00401568 	.inst	0x00401568 ; undefined
  43d5e0:	00000000 	udf	#0
  43d5e4:	00000008 	udf	#8
  43d5e8:	00000010 	udf	#16
  43d5ec:	00000100 	udf	#256
  43d5f0:	01244147 	.inst	0x01244147 ; undefined
  43d5f4:	00316133 	.inst	0x00316133 ; NYI
  43d5f8:	00400630 	.inst	0x00400630 ; undefined
  43d5fc:	00000000 	udf	#0
  43d600:	00400638 	.inst	0x00400638 ; undefined
  43d604:	00000000 	udf	#0
  43d608:	00000008 	udf	#8
  43d60c:	00000010 	udf	#16
  43d610:	00000100 	udf	#256
  43d614:	01244147 	.inst	0x01244147 ; undefined
  43d618:	00316133 	.inst	0x00316133 ; NYI
  43d61c:	00401574 	.inst	0x00401574 ; undefined
  43d620:	00000000 	udf	#0
  43d624:	0040157c 	.inst	0x0040157c ; undefined
  43d628:	00000000 	udf	#0

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
   0:	0000002c 	udf	#44
   4:	00000002 	udf	#2
   8:	00080000 	.inst	0x00080000 ; undefined
   c:	00000000 	udf	#0
  10:	00400804 	.inst	0x00400804 ; undefined
  14:	00000000 	udf	#0
  18:	00000d64 	udf	#3428
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
   0:	000006bc 	udf	#1724
   4:	00000004 	udf	#4
   8:	01080000 	.inst	0x01080000 ; undefined
   c:	000002a5 	udf	#677
  10:	0001900c 	.inst	0x0001900c ; undefined
  14:	00000000 	udf	#0
  18:	40080400 	.inst	0x40080400 ; undefined
  1c:	00000000 	udf	#0
  20:	000d6400 	.inst	0x000d6400 ; undefined
	...
  2c:	00560200 	.inst	0x00560200 ; undefined
  30:	d1020000 	sub	x0, x0, #0x80
  34:	00003917 	udf	#14615
  38:	07080300 	.inst	0x07080300 ; undefined
  3c:	00000169 	udf	#361
  40:	04050804 	.inst	0x04050804 ; undefined
  44:	746e6905 	.inst	0x746e6905 ; undefined
  48:	08010300 	stxrb	w1, w0, [x24]
  4c:	00000143 	udf	#323
  50:	f8070203 	stur	x3, [x16, #112]
  54:	03000001 	.inst	0x03000001 ; undefined
  58:	016e0704 	.inst	0x016e0704 ; undefined
  5c:	01030000 	.inst	0x01030000 ; undefined
  60:	00014506 	.inst	0x00014506 ; undefined
  64:	05020300 	orr	z0.d, z0.d, #0x1ffffff
  68:	0000004c 	udf	#76
  6c:	f1050803 	subs	x3, x0, #0x142
  70:	02000000 	.inst	0x02000000 ; undefined
  74:	0000025c 	udf	#604
  78:	6c199803 	stnp	d3, d6, [x0, #408]
  7c:	02000000 	.inst	0x02000000 ; undefined
  80:	0000022f 	udf	#559
  84:	6c1b9903 	stnp	d3, d6, [x8, #440]
  88:	06000000 	.inst	0x06000000 ; undefined
  8c:	00009108 	udf	#37128
  90:	08010300 	stxrb	w1, w0, [x24]
  94:	0000014c 	udf	#332
  98:	00009107 	udf	#37127
  9c:	00220800 	.inst	0x00220800 ; NYI
  a0:	04d80000 	orr	z0.d, p0/m, z0.d, z0.d
  a4:	02240831 	.inst	0x02240831 ; undefined
  a8:	6b090000 	subs	w0, w0, w9
  ac:	04000000 	add	z0.b, p0/m, z0.b, z0.b
  b0:	00420733 	.inst	0x00420733 ; undefined
  b4:	09000000 	.inst	0x09000000 ; undefined
  b8:	000001aa 	udf	#426
  bc:	8b093604 	add	x4, x16, x9, lsl #13
  c0:	08000000 	stxrb	w0, w0, [x0]
  c4:	0000af09 	udf	#44809
  c8:	09370400 	.inst	0x09370400 ; undefined
  cc:	0000008b 	udf	#139
  d0:	02880910 	.inst	0x02880910 ; undefined
  d4:	38040000 	sturb	w0, [x0, #64]
  d8:	00008b09 	udf	#35593
  dc:	11091800 	add	w0, w0, #0x246
  e0:	04000001 	add	z1.b, p0/m, z1.b, z0.b
  e4:	008b0939 	.inst	0x008b0939 ; undefined
  e8:	09200000 	.inst	0x09200000 ; undefined
  ec:	0000005d 	udf	#93
  f0:	8b093a04 	add	x4, x16, x9, lsl #14
  f4:	28000000 	stnp	w0, w0, [x0]
  f8:	00022109 	.inst	0x00022109 ; undefined
  fc:	093b0400 	.inst	0x093b0400 ; undefined
 100:	0000008b 	udf	#139
 104:	00770930 	.inst	0x00770930 ; undefined
 108:	3c040000 	stur	b0, [x0, #64]
 10c:	00008b09 	udf	#35593
 110:	b7093800 	tbnz	x0, #33, 2810 <__abi_tag-0x3fda68>
 114:	04000001 	add	z1.b, p0/m, z1.b, z0.b
 118:	008b093d 	.inst	0x008b093d ; undefined
 11c:	09400000 	.inst	0x09400000 ; undefined
 120:	00000156 	udf	#342
 124:	8b094004 	add	x4, x0, x9, lsl #16
 128:	48000000 	stxrh	w0, w0, [x0]
 12c:	00026409 	.inst	0x00026409 ; undefined
 130:	09410400 	.inst	0x09410400 ; undefined
 134:	0000008b 	udf	#139
 138:	02140950 	.inst	0x02140950 ; undefined
 13c:	42040000 	.inst	0x42040000 ; undefined
 140:	00008b09 	udf	#35593
 144:	a6095800 	.inst	0xa6095800 ; undefined
 148:	04000000 	add	z0.b, p0/m, z0.b, z0.b
 14c:	023d1644 	.inst	0x023d1644 ; undefined
 150:	09600000 	.inst	0x09600000 ; undefined
 154:	00000241 	udf	#577
 158:	43144604 	.inst	0x43144604 ; undefined
 15c:	68000002 	.inst	0x68000002 ; undefined
 160:	00023909 	.inst	0x00023909 ; undefined
 164:	07480400 	.inst	0x07480400 ; undefined
 168:	00000042 	udf	#66
 16c:	02740970 	.inst	0x02740970 ; undefined
 170:	49040000 	.inst	0x49040000 ; undefined
 174:	00004207 	udf	#16903
 178:	16097400 	b	fffffffff825d178 <__bss_end__+0xfffffffff7e1fc48>
 17c:	04000000 	add	z0.b, p0/m, z0.b, z0.b
 180:	00730b4a 	.inst	0x00730b4a ; undefined
 184:	09780000 	.inst	0x09780000 ; undefined
 188:	00000105 	udf	#261
 18c:	50124d04 	adr	x4, 24b2e <__abi_tag-0x3db74a>
 190:	80000000 	.inst	0x80000000 ; undefined
 194:	00029609 	.inst	0x00029609 ; undefined
 198:	0f4e0400 	.inst	0x0f4e0400 ; undefined
 19c:	0000005e 	udf	#94
 1a0:	01860982 	.inst	0x01860982 ; undefined
 1a4:	4f040000 	.inst	0x4f040000 ; undefined
 1a8:	00024908 	.inst	0x00024908 ; undefined
 1ac:	ff098300 	.inst	0xff098300 ; undefined
 1b0:	04000000 	add	z0.b, p0/m, z0.b, z0.b
 1b4:	02590f51 	.inst	0x02590f51 ; undefined
 1b8:	09880000 	.inst	0x09880000 ; undefined
 1bc:	0000001a 	udf	#26
 1c0:	7f0d5904 	.inst	0x7f0d5904 ; undefined
 1c4:	90000000 	adrp	x0, 0 <__abi_tag-0x400278>
 1c8:	00027f09 	.inst	0x00027f09 ; undefined
 1cc:	175b0400 	b	fffffffffd6c11cc <__bss_end__+0xfffffffffd283c9c>
 1d0:	00000264 	udf	#612
 1d4:	024b0998 	.inst	0x024b0998 ; undefined
 1d8:	5c040000 	ldr	d0, 81d8 <__abi_tag-0x3f80a0>
 1dc:	00026f19 	.inst	0x00026f19 ; undefined
 1e0:	c809a000 	stlxr	w9, x0, [x0]
 1e4:	04000001 	add	z1.b, p0/m, z1.b, z0.b
 1e8:	0243145d 	.inst	0x0243145d ; undefined
 1ec:	09a80000 	.inst	0x09a80000 ; undefined
 1f0:	000000bc 	udf	#188
 1f4:	40095e04 	.inst	0x40095e04 ; undefined
 1f8:	b0000000 	adrp	x0, 1000 <__abi_tag-0x3ff278>
 1fc:	0001df09 	.inst	0x0001df09 ; undefined
 200:	0a5f0400 	and	w0, w0, wzr, lsr #1
 204:	0000002d 	udf	#45
 208:	025609b8 	.inst	0x025609b8 ; undefined
 20c:	60040000 	.inst	0x60040000 ; undefined
 210:	00004207 	udf	#16903
 214:	a109c000 	.inst	0xa109c000 ; undefined
 218:	04000001 	add	z1.b, p0/m, z1.b, z0.b
 21c:	02750862 	.inst	0x02750862 ; undefined
 220:	00c40000 	.inst	0x00c40000 ; undefined
 224:	00002602 	udf	#9730
 228:	19070500 	.inst	0x19070500 ; undefined
 22c:	0000009d 	udf	#157
 230:	0002d90a 	.inst	0x0002d90a ; undefined
 234:	0e2b0400 	shadd	v0.8b, v0.8b, v11.8b
 238:	00017b0b 	.inst	0x00017b0b ; undefined
 23c:	38080600 	strb	w0, [x16], #128
 240:	06000002 	.inst	0x06000002 ; undefined
 244:	00009d08 	udf	#40200
 248:	00910c00 	.inst	0x00910c00 ; undefined
 24c:	02590000 	.inst	0x02590000 ; undefined
 250:	390d0000 	strb	w0, [x0, #832]
 254:	00000000 	udf	#0
 258:	30080600 	adr	x0, 10319 <__abi_tag-0x3eff5f>
 25c:	0b000002 	add	w2, w0, w0
 260:	0000027c 	udf	#636
 264:	025f0806 	.inst	0x025f0806 ; undefined
 268:	480b0000 	stxrh	w11, w0, [x0]
 26c:	06000002 	.inst	0x06000002 ; undefined
 270:	00026a08 	.inst	0x00026a08 ; undefined
 274:	00910c00 	.inst	0x00910c00 ; undefined
 278:	02850000 	.inst	0x02850000 ; undefined
 27c:	390d0000 	strb	w0, [x0, #832]
 280:	13000000 	sbfx	w0, w0, #0, #1
 284:	24080600 	cmphs	p0.b, p1/z, z16.b, z8.b
 288:	03000002 	.inst	0x03000002 ; undefined
 28c:	00ec0508 	.inst	0x00ec0508 ; undefined
 290:	08030000 	stxrb	w3, w0, [x0]
 294:	00016407 	.inst	0x00016407 ; undefined
 298:	98080600 	ldrsw	x0, 10358 <__abi_tag-0x3eff20>
 29c:	03000000 	.inst	0x03000000 ; undefined
 2a0:	002b0710 	.inst	0x002b0710 ; NYI
 2a4:	04030000 	subr	z0.b, p0/m, z0.b, z0.b
 2a8:	0000e604 	udf	#58884
 2ac:	04080300 	smax	z0.b, p0/m, z0.b, z24.b
 2b0:	000002d2 	udf	#722
 2b4:	0000fa02 	udf	#64002
 2b8:	0d440100 	.inst	0x0d440100 ; undefined
 2bc:	000002c0 	udf	#704
 2c0:	0000420c 	udf	#16908
 2c4:	0002d600 	.inst	0x0002d600 ; undefined
 2c8:	00390d00 	.inst	0x00390d00 ; NYI
 2cc:	0d630000 	.inst	0x0d630000 ; undefined
 2d0:	00000039 	udf	#57
 2d4:	6d0e0063 	stp	d3, d0, [x3, #224]
 2d8:	01003173 	.inst	0x01003173 ; undefined
 2dc:	02b4065c 	.inst	0x02b4065c ; undefined
 2e0:	03090000 	.inst	0x03090000 ; undefined
 2e4:	00420068 	.inst	0x00420068 ; undefined
 2e8:	00000000 	udf	#0
 2ec:	32736d0e 	.inst	0x32736d0e ; undefined
 2f0:	0a5c0100 	and	w0, w8, w28, lsr #0
 2f4:	000002b4 	udf	#692
 2f8:	9ca80309 	ldr	q9, fffffffffff50358 <__bss_end__+0xffffffffffb12e28>
 2fc:	00000042 	udf	#66
 300:	6d0e0000 	stp	d0, d0, [x0, #224]
 304:	01003373 	.inst	0x01003373 ; undefined
 308:	02b40e5c 	.inst	0x02b40e5c ; undefined
 30c:	03090000 	.inst	0x03090000 ; undefined
 310:	004338e8 	.inst	0x004338e8 ; undefined
 314:	00000000 	udf	#0
 318:	34736d0e 	cbz	w14, e70b8 <__abi_tag-0x3191c0>
 31c:	055d0100 	mov	z0.h, p13/z, #8
 320:	00000042 	udf	#66
 324:	d5280309 	sysl	x9, #0, C0, C3, #0
 328:	00000043 	udf	#67
 32c:	3d0f0000 	str	b0, [x0, #960]
 330:	01000000 	.inst	0x01000000 ; undefined
 334:	42050130 	.inst	0x42050130 ; undefined
 338:	7c000000 	stur	h0, [x0]
 33c:	00004014 	udf	#16404
 340:	ec000000 	.inst	0xec000000 ; undefined
 344:	00000000 	udf	#0
 348:	01000000 	.inst	0x01000000 ; undefined
 34c:	0003889c 	.inst	0x0003889c ; undefined
 350:	70661000 	adr	x0, cc553 <__abi_tag-0x333d25>
 354:	01320100 	.inst	0x01320100 ; undefined
 358:	0002850b 	.inst	0x0002850b ; undefined
 35c:	70910200 	adr	x0, fffffffffff2239f <__bss_end__+0xffffffffffae4e6f>
 360:	01007810 	.inst	0x01007810 ; undefined
 364:	42090136 	.inst	0x42090136 ; undefined
 368:	02000000 	.inst	0x02000000 ; undefined
 36c:	79107c91 	strh	w17, [x4, #2110]
 370:	01360100 	.inst	0x01360100 ; undefined
 374:	0000420d 	udf	#16909
 378:	78910200 	ldursh	x0, [x16, #-240]
 37c:	01007a11 	.inst	0x01007a11 ; undefined
 380:	42110136 	.inst	0x42110136 ; undefined
 384:	00000000 	udf	#0
 388:	00013412 	.inst	0x00013412 ; undefined
 38c:	01170100 	.inst	0x01170100 ; undefined
 390:	00004205 	udf	#16901
 394:	40134c00 	.inst	0x40134c00 ; undefined
 398:	00000000 	udf	#0
 39c:	00013000 	.inst	0x00013000 ; undefined
 3a0:	00000000 	udf	#0
 3a4:	bc9c0100 	.inst	0xbc9c0100 ; undefined
 3a8:	13000003 	sbfx	w3, w0, #0, #1
 3ac:	00000047 	udf	#71
 3b0:	09011a01 	.inst	0x09011a01 ; undefined
 3b4:	00000042 	udf	#66
 3b8:	007c9102 	.inst	0x007c9102 ; undefined
 3bc:	00012514 	.inst	0x00012514 ; undefined
 3c0:	05fe0100 	.inst	0x05fe0100 ; undefined
 3c4:	00000042 	udf	#66
 3c8:	0040121c 	.inst	0x0040121c ; undefined
 3cc:	00000000 	udf	#0
 3d0:	00000130 	udf	#304
 3d4:	00000000 	udf	#0
 3d8:	03ef9c01 	.inst	0x03ef9c01 ; undefined
 3dc:	47130000 	.inst	0x47130000 ; undefined
 3e0:	01000000 	.inst	0x01000000 ; undefined
 3e4:	42090101 	.inst	0x42090101 ; undefined
 3e8:	02000000 	.inst	0x02000000 ; undefined
 3ec:	15007c91 	b	401f630 <__bss_end__+0x3be2100>
 3f0:	000001e6 	udf	#486
 3f4:	4205f601 	.inst	0x4205f601 ; undefined
 3f8:	f8000000 	stur	x0, [x0]
 3fc:	00004011 	udf	#16401
 400:	24000000 	cmphs	p0.b, p0/z, z0.b, z0.b
 404:	00000000 	udf	#0
 408:	01000000 	.inst	0x01000000 ; undefined
 40c:	0004219c 	.inst	0x0004219c ; undefined
 410:	65721600 	fmla	z0.h, p5/m, z16.h, z18.h
 414:	f8010073 	stur	x19, [x3, #16]
 418:	00004209 	udf	#16905
 41c:	7c910200 	.inst	0x7c910200 ; undefined
 420:	01d61500 	.inst	0x01d61500 ; undefined
 424:	e6010000 	.inst	0xe6010000 ; undefined
 428:	00004205 	udf	#16901
 42c:	40118c00 	.inst	0x40118c00 ; undefined
 430:	00000000 	udf	#0
 434:	00006c00 	udf	#27648
 438:	00000000 	udf	#0
 43c:	629c0100 	.inst	0x629c0100 ; undefined
 440:	16000004 	b	fffffffff8000450 <__bss_end__+0xfffffffff7bc2f20>
 444:	01007066 	.inst	0x01007066 ; undefined
 448:	02850be8 	.inst	0x02850be8 ; undefined
 44c:	91020000 	add	x0, x0, #0x80
 450:	00721778 	.inst	0x00721778 ; undefined
 454:	e9010000 	.inst	0xe9010000 ; undefined
 458:	0004620a 	.inst	0x0004620a ; undefined
 45c:	f8910300 	prfum	pldl1keep, [x24, #-240]
 460:	910c007d 	add	x29, x3, #0x300
 464:	72000000 	ands	w0, w0, #0x1
 468:	0d000004 	st1	{v4.b}[0], [x0]
 46c:	00000039 	udf	#57
 470:	c91400fe 	.inst	0xc91400fe ; undefined
 474:	01000000 	.inst	0x01000000 ; undefined
 478:	004205d6 	.inst	0x004205d6 ; undefined
 47c:	10700000 	adr	x0, e047c <__abi_tag-0x31fdfc>
 480:	00000040 	udf	#64
 484:	011c0000 	.inst	0x011c0000 ; undefined
 488:	00000000 	udf	#0
 48c:	9c010000 	ldr	q0, 248c <__abi_tag-0x3fddec>
 490:	000004e9 	udf	#1257
 494:	0000de17 	udf	#56855
 498:	09d80100 	.inst	0x09d80100 ; undefined
 49c:	00000042 	udf	#66
 4a0:	16749102 	b	fffffffff9d248a8 <__bss_end__+0xfffffffff98e7378>
 4a4:	d9010078 	stlur	x24, [x3, #16]
 4a8:	00004209 	udf	#16905
 4ac:	7c910200 	.inst	0x7c910200 ; undefined
 4b0:	01007916 	.inst	0x01007916 ; undefined
 4b4:	00420dd9 	.inst	0x00420dd9 ; undefined
 4b8:	91020000 	add	x0, x0, #0x80
 4bc:	007a1878 	.inst	0x007a1878 ; undefined
 4c0:	4211d901 	.inst	0x4211d901 ; undefined
 4c4:	19000000 	stlurb	w0, [x0]
 4c8:	00401088 	.inst	0x00401088 ; undefined
 4cc:	00000000 	udf	#0
 4d0:	000000c8 	udf	#200
 4d4:	00000000 	udf	#0
 4d8:	706d7416 	adr	x22, db35b <__abi_tag-0x324f1d>
 4dc:	15de0100 	b	77808dc <__bss_end__+0x73433ac>
 4e0:	00000042 	udf	#66
 4e4:	00709102 	.inst	0x00709102 ; undefined
 4e8:	020b1400 	.inst	0x020b1400 ; undefined
 4ec:	c8010000 	stxr	w1, x0, [x0]
 4f0:	00004205 	udf	#16901
 4f4:	400f3800 	.inst	0x400f3800 ; undefined
 4f8:	00000000 	udf	#0
 4fc:	00013800 	.inst	0x00013800 ; undefined
 500:	00000000 	udf	#0
 504:	699c0100 	stgp	x0, x0, [x8, #896]!
 508:	19000005 	stlurb	w5, [x0]
 50c:	00400f3c 	.inst	0x00400f3c ; undefined
 510:	00000000 	udf	#0
 514:	00000128 	udf	#296
 518:	00000000 	udf	#0
 51c:	01006916 	.inst	0x01006916 ; undefined
 520:	00420eca 	.inst	0x00420eca ; undefined
 524:	91020000 	add	x0, x0, #0x80
 528:	0f44197c 	.inst	0x0f44197c ; undefined
 52c:	00000040 	udf	#64
 530:	01080000 	.inst	0x01080000 ; undefined
 534:	00000000 	udf	#0
 538:	6a160000 	ands	w0, w0, w22
 53c:	16cc0100 	b	fffffffffb30093c <__bss_end__+0xfffffffffaec340c>
 540:	00000042 	udf	#66
 544:	19789102 	.inst	0x19789102 ; undefined
 548:	00400f4c 	.inst	0x00400f4c ; undefined
 54c:	00000000 	udf	#0
 550:	000000e8 	udf	#232
 554:	00000000 	udf	#0
 558:	01006b16 	.inst	0x01006b16 ; undefined
 55c:	00421ace 	.inst	0x00421ace ; undefined
 560:	91020000 	add	x0, x0, #0x80
 564:	00000074 	udf	#116
 568:	00d21400 	.inst	0x00d21400 ; undefined
 56c:	b0010000 	adrp	x0, 2001000 <__bss_end__+0x1bc3ad0>
 570:	00004205 	udf	#16901
 574:	400e4c00 	.inst	0x400e4c00 ; undefined
 578:	00000000 	udf	#0
 57c:	0000ec00 	udf	#60416
 580:	00000000 	udf	#0
 584:	b59c0100 	cbnz	x0, fffffffffff385a4 <__bss_end__+0xffffffffffafb074>
 588:	17000005 	b	fffffffffc00059c <__bss_end__+0xfffffffffbbc306c>
 58c:	000000de 	udf	#222
 590:	4209b201 	.inst	0x4209b201 ; undefined
 594:	02000000 	.inst	0x02000000 ; undefined
 598:	78167c91 	strh	w17, [x4, #-153]!
 59c:	09b30100 	.inst	0x09b30100 ; undefined
 5a0:	00000042 	udf	#66
 5a4:	16789102 	b	fffffffff9e249ac <__bss_end__+0xfffffffff99e747c>
 5a8:	b3010079 	.inst	0xb3010079 ; undefined
 5ac:	0000420d 	udf	#16909
 5b0:	74910200 	.inst	0x74910200 ; undefined
 5b4:	00951a00 	.inst	0x00951a00 ; undefined
 5b8:	95010000 	bl	40405b8 <__bss_end__+0x3c03088>
 5bc:	400b4c06 	.inst	0x400b4c06 ; undefined
 5c0:	00000000 	udf	#0
 5c4:	00030000 	.inst	0x00030000 ; undefined
 5c8:	00000000 	udf	#0
 5cc:	0f9c0100 	fmlal	v0.2s, v8.2h, v12.h[1]
 5d0:	16000006 	b	fffffffff80005e8 <__bss_end__+0xfffffffff7bc30b8>
 5d4:	97010078 	bl	fffffffffc0407b4 <__bss_end__+0xfffffffffbc03284>
 5d8:	00004209 	udf	#16905
 5dc:	7c910200 	.inst	0x7c910200 ; undefined
 5e0:	01007916 	.inst	0x01007916 ; undefined
 5e4:	00420d97 	.inst	0x00420d97 ; undefined
 5e8:	91020000 	add	x0, x0, #0x80
 5ec:	0b641978 	.inst	0x0b641978 ; undefined
 5f0:	00000040 	udf	#64
 5f4:	02a80000 	.inst	0x02a80000 ; undefined
 5f8:	00000000 	udf	#0
 5fc:	47170000 	.inst	0x47170000 ; undefined
 600:	01000000 	.inst	0x01000000 ; undefined
 604:	0042159d 	.inst	0x0042159d ; undefined
 608:	91020000 	add	x0, x0, #0x80
 60c:	1a000074 	adc	w20, w3, w0
 610:	00000084 	udf	#132
 614:	80067c01 	.inst	0x80067c01 ; undefined
 618:	00004008 	udf	#16392
 61c:	cc000000 	.inst	0xcc000000 ; undefined
 620:	00000002 	udf	#2
 624:	01000000 	.inst	0x01000000 ; undefined
 628:	0006699c 	.inst	0x0006699c ; undefined
 62c:	00781600 	.inst	0x00781600 ; undefined
 630:	42097e01 	.inst	0x42097e01 ; undefined
 634:	02000000 	.inst	0x02000000 ; undefined
 638:	79167c91 	strh	w17, [x4, #2878]
 63c:	0d7e0100 	.inst	0x0d7e0100 ; undefined
 640:	00000042 	udf	#66
 644:	19789102 	.inst	0x19789102 ; undefined
 648:	00400898 	.inst	0x00400898 ; undefined
 64c:	00000000 	udf	#0
 650:	00000274 	udf	#628
 654:	00000000 	udf	#0
 658:	00004717 	udf	#18199
 65c:	15850100 	b	6140a5c <__bss_end__+0x5d0352c>
 660:	00000042 	udf	#66
 664:	00749102 	.inst	0x00749102 ; undefined
 668:	01c31500 	.inst	0x01c31500 ; undefined
 66c:	5f010000 	.inst	0x5f010000 ; undefined
 670:	00004205 	udf	#16901
 674:	40080400 	.inst	0x40080400 ; undefined
 678:	00000000 	udf	#0
 67c:	00007c00 	udf	#31744
 680:	00000000 	udf	#0
 684:	b99c0100 	ldrsw	x0, [x8, #7168]
 688:	1b000006 	madd	w6, w0, w0, w0
 68c:	00000151 	udf	#337
 690:	420e5f01 	.inst	0x420e5f01 ; undefined
 694:	02000000 	.inst	0x02000000 ; undefined
 698:	201b6c91 	.inst	0x201b6c91 ; undefined
 69c:	01000001 	.inst	0x01000001 ; undefined
 6a0:	06b9215f 	.inst	0x06b9215f ; undefined
 6a4:	91020000 	add	x0, x0, #0x80
 6a8:	65721660 	fmla	z0.h, p5/m, z19.h, z18.h
 6ac:	65010073 	.inst	0x65010073 ; undefined
 6b0:	00004209 	udf	#16905
 6b4:	7c910200 	.inst	0x7c910200 ; undefined
 6b8:	99080600 	.inst	0x99080600 ; undefined
 6bc:	00000002 	udf	#2

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	25011101 	cmpge	p1.b, p4/z, z8.b, #1
   4:	030b130e 	.inst	0x030b130e ; undefined
   8:	110e1b0e 	add	w14, w24, #0x386
   c:	10071201 	adr	x1, e24c <__abi_tag-0x3f202c>
  10:	02000017 	.inst	0x02000017 ; undefined
  14:	0e030016 	tbl	v22.8b, {v0.16b}, v3.8b
  18:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
  1c:	13490b39 	.inst	0x13490b39 ; undefined
  20:	24030000 	cmphs	p0.b, p0/z, z0.b, z3.b
  24:	3e0b0b00 	.inst	0x3e0b0b00 ; undefined
  28:	000e030b 	.inst	0x000e030b ; undefined
  2c:	000f0400 	.inst	0x000f0400 ; undefined
  30:	00000b0b 	udf	#2827
  34:	0b002405 	add	w5, w0, w0, lsl #9
  38:	030b3e0b 	.inst	0x030b3e0b ; undefined
  3c:	06000008 	.inst	0x06000008 ; undefined
  40:	0b0b000f 	add	w15, w0, w11
  44:	00001349 	udf	#4937
  48:	49002607 	.inst	0x49002607 ; undefined
  4c:	08000013 	stxrb	w0, w19, [x0]
  50:	0e030113 	tbl	v19.8b, {v8.16b}, v3.8b
  54:	0b3a0b0b 	add	w11, w24, w26, uxtb #2
  58:	0b390b3b 	add	w27, w25, w25, uxtb #2
  5c:	00001301 	udf	#4865
  60:	03000d09 	.inst	0x03000d09 ; undefined
  64:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
  68:	490b390b 	.inst	0x490b390b ; undefined
  6c:	000b3813 	.inst	0x000b3813 ; undefined
  70:	00160a00 	.inst	0x00160a00 ; undefined
  74:	0b3a0e03 	add	w3, w16, w26, uxtb #3
  78:	0b390b3b 	add	w27, w25, w25, uxtb #2
  7c:	130b0000 	sbfiz	w0, w0, #21, #1
  80:	3c0e0300 	stur	b0, [x24, #224]
  84:	0c000019 	st4	{v25.8b-v28.8b}, [x0]
  88:	13490101 	.inst	0x13490101 ; undefined
  8c:	00001301 	udf	#4865
  90:	4900210d 	.inst	0x4900210d ; undefined
  94:	000b2f13 	.inst	0x000b2f13 ; undefined
  98:	00340e00 	.inst	0x00340e00 ; NYI
  9c:	0b3a0803 	add	w3, w0, w26, uxtb #2
  a0:	0b390b3b 	add	w27, w25, w25, uxtb #2
  a4:	193f1349 	.inst	0x193f1349 ; undefined
  a8:	00001802 	udf	#6146
  ac:	3f012e0f 	.inst	0x3f012e0f ; undefined
  b0:	3a0e0319 	adcs	w25, w24, w14
  b4:	39053b0b 	strb	w11, [x24, #334]
  b8:	4919270b 	.inst	0x4919270b ; undefined
  bc:	12011113 	and	w19, w8, #0x8000000f
  c0:	96184007 	bl	fffffffff86100dc <__bss_end__+0xfffffffff81d2bac>
  c4:	13011942 	sbfx	w2, w10, #1, #6
  c8:	34100000 	cbz	w0, 200c8 <__abi_tag-0x3e01b0>
  cc:	3a080300 	adcs	w0, w24, w8
  d0:	39053b0b 	strb	w11, [x24, #334]
  d4:	0213490b 	.inst	0x0213490b ; undefined
  d8:	11000018 	add	w24, w0, #0x0
  dc:	08030034 	stxrb	w3, w20, [x1]
  e0:	053b0b3a 	ext	z26.b, z26.b, z25.b, #218
  e4:	13490b39 	.inst	0x13490b39 ; undefined
  e8:	2e120000 	ext	v0.8b, v0.8b, v18.8b, #0
  ec:	03193f01 	.inst	0x03193f01 ; undefined
  f0:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
  f4:	270b3905 	.inst	0x270b3905 ; undefined
  f8:	11134919 	add	w25, w8, #0x4d2
  fc:	40071201 	.inst	0x40071201 ; undefined
 100:	19429718 	.inst	0x19429718 ; undefined
 104:	00001301 	udf	#4865
 108:	03003413 	.inst	0x03003413 ; undefined
 10c:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
 110:	490b3905 	.inst	0x490b3905 ; undefined
 114:	00180213 	.inst	0x00180213 ; undefined
 118:	012e1400 	.inst	0x012e1400 ; undefined
 11c:	0e03193f 	uzp1	v31.8b, v9.8b, v3.8b
 120:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
 124:	19270b39 	.inst	0x19270b39 ; undefined
 128:	01111349 	.inst	0x01111349 ; undefined
 12c:	18400712 	ldr	w18, 8020c <__abi_tag-0x38006c>
 130:	01194297 	.inst	0x01194297 ; undefined
 134:	15000013 	b	4000180 <__bss_end__+0x3bc2c50>
 138:	193f012e 	.inst	0x193f012e ; undefined
 13c:	0b3a0e03 	add	w3, w16, w26, uxtb #3
 140:	0b390b3b 	add	w27, w25, w25, uxtb #2
 144:	13491927 	.inst	0x13491927 ; undefined
 148:	07120111 	.inst	0x07120111 ; undefined
 14c:	42961840 	.inst	0x42961840 ; undefined
 150:	00130119 	.inst	0x00130119 ; undefined
 154:	00341600 	.inst	0x00341600 ; NYI
 158:	0b3a0803 	add	w3, w0, w26, uxtb #2
 15c:	0b390b3b 	add	w27, w25, w25, uxtb #2
 160:	18021349 	ldr	w9, 43c8 <__abi_tag-0x3fbeb0>
 164:	34170000 	cbz	w0, 2e164 <__abi_tag-0x3d2114>
 168:	3a0e0300 	adcs	w0, w24, w14
 16c:	390b3b0b 	strb	w11, [x24, #718]
 170:	0213490b 	.inst	0x0213490b ; undefined
 174:	18000018 	ldr	w24, 174 <__abi_tag-0x400104>
 178:	08030034 	stxrb	w3, w20, [x1]
 17c:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
 180:	13490b39 	.inst	0x13490b39 ; undefined
 184:	0b190000 	add	w0, w0, w25
 188:	12011101 	and	w1, w8, #0x8000000f
 18c:	1a000007 	adc	w7, w0, w0
 190:	193f012e 	.inst	0x193f012e ; undefined
 194:	0b3a0e03 	add	w3, w16, w26, uxtb #3
 198:	0b390b3b 	add	w27, w25, w25, uxtb #2
 19c:	01111927 	.inst	0x01111927 ; undefined
 1a0:	18400712 	ldr	w18, 80280 <__abi_tag-0x37fff8>
 1a4:	01194296 	.inst	0x01194296 ; undefined
 1a8:	1b000013 	madd	w19, w0, w0, w0
 1ac:	0e030005 	tbl	v5.8b, {v0.16b}, v3.8b
 1b0:	0b3b0b3a 	add	w26, w25, w27, uxtb #2
 1b4:	13490b39 	.inst	0x13490b39 ; undefined
 1b8:	00001802 	udf	#6146
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	00000359 	udf	#857
   4:	00b10003 	.inst	0x00b10003 ; undefined
   8:	01040000 	.inst	0x01040000 ; undefined
   c:	000d0efb 	.inst	0x000d0efb ; undefined
  10:	01010101 	.inst	0x01010101 ; undefined
  14:	01000000 	.inst	0x01000000 ; undefined
  18:	2f010000 	.inst	0x2f010000 ; undefined
  1c:	2f727375 	fcmla	v21.4h, v27.4h, v18.h[1], #270
  20:	2f62696c 	umlsl	v12.4s, v11.4h, v2.h[6]
  24:	2f636367 	umlsl	v7.4s, v27.4h, v3.h[2]
  28:	63726161 	.inst	0x63726161 ; undefined
  2c:	2d343668 	stp	s8, s13, [x19, #-96]
  30:	756e696c 	.inst	0x756e696c ; undefined
  34:	6e672d78 	uqsub	v24.8h, v11.8h, v7.8h
  38:	30312f75 	adr	x21, 62625 <__abi_tag-0x39dc53>
  3c:	312e332e 	adds	w14, w25, #0xb8c
  40:	636e692f 	.inst	0x636e692f ; undefined
  44:	6564756c 	fnmls	z12.h, p5/m, z11.h, z4.h
  48:	73752f00 	.inst	0x73752f00 ; undefined
  4c:	6e692f72 	uqsub	v18.8h, v27.8h, v9.8h
  50:	64756c63 	.inst	0x64756c63 ; undefined
  54:	69622f65 	ldpsw	x5, x11, [x27, #-240]
  58:	2f007374 	.inst	0x2f007374 ; undefined
  5c:	2f727375 	fcmla	v21.4h, v27.4h, v18.h[1], #270
  60:	6c636e69 	ldnp	d9, d27, [x19, #-464]
  64:	2f656475 	.inst	0x2f656475 ; undefined
  68:	73746962 	.inst	0x73746962 ; undefined
  6c:	7079742f 	adr	x15, f2ef3 <__abi_tag-0x30d385>
  70:	00007365 	udf	#29541
  74:	63657073 	.inst	0x63657073 ; undefined
  78:	6e65625f 	rsubhn2	v31.8h, v18.4s, v5.4s
  7c:	616d6863 	.inst	0x616d6863 ; undefined
  80:	632e6b72 	.inst	0x632e6b72 ; undefined
  84:	00000000 	udf	#0
  88:	64647473 	.inst	0x64647473 ; undefined
  8c:	682e6665 	.inst	0x682e6665 ; undefined
  90:	00000100 	udf	#256
  94:	65707974 	fnmls	z20.h, p6/m, z11.h, z16.h
  98:	00682e73 	.inst	0x00682e73 ; undefined
  9c:	73000002 	.inst	0x73000002 ; undefined
  a0:	63757274 	.inst	0x63757274 ; undefined
  a4:	49465f74 	.inst	0x49465f74 ; undefined
  a8:	682e454c 	.inst	0x682e454c ; undefined
  ac:	00000300 	udf	#768
  b0:	454c4946 	uaddwb	z6.h, z10.h, z12.b
  b4:	0300682e 	.inst	0x0300682e ; undefined
  b8:	05000000 	orr	z0.s, z0.s, #0x1
  bc:	02090001 	.inst	0x02090001 ; undefined
  c0:	00400804 	.inst	0x00400804 ; undefined
  c4:	00000000 	udf	#0
  c8:	0100df03 	.inst	0x0100df03 ; undefined
  cc:	054d0505 	.inst	0x054d0505 ; undefined
  d0:	19052209 	stlurb	w9, [x16, #82]
  d4:	4a080521 	eor	w1, w9, w8, lsl #1
  d8:	21300905 	.inst	0x21300905 ; undefined
  dc:	05240b05 	ext	z5.b, z5.b, z24.b, #34
  e0:	0f052f08 	.inst	0x0f052f08 ; undefined
  e4:	0d05303e 	.inst	0x0d05303e ; undefined
  e8:	3f05052e 	.inst	0x3f05052e ; undefined
  ec:	220c0521 	.inst	0x220c0521 ; undefined
  f0:	32210105 	orr	w5, w8, #0x80000000
  f4:	05301005 	ext	z5.b, z5.b, z0.b, #132
  f8:	14052009 	b	14811c <__abi_tag-0x2b815c>
  fc:	200d0522 	.inst	0x200d0522 ; undefined
 100:	05231d05 	ext	z5.b, z5.b, z8.b, #31
 104:	1505201b 	b	4148170 <__bss_end__+0x3d0ac40>
 108:	c91605c9 	.inst	0xc91605c9 ; undefined
 10c:	c91b05c9 	.inst	0xc91b05c9 ; undefined
 110:	1605c9c9 	b	fffffffff8172834 <__bss_end__+0xfffffffff7d35304>
 114:	ca1a05c9 	eor	x9, x14, x26, lsl #1
 118:	05ba1305 	.inst	0x05ba1305 ; undefined
 11c:	26054c1f 	.inst	0x26054c1f ; undefined
 120:	02040200 	.inst	0x02040200 ; undefined
 124:	24027203 	cmplt	p3.b, p4/z, z16.b, z2.d
 128:	000d0501 	.inst	0x000d0501 ; undefined
 12c:	3c010402 	str	b2, [x0], #16
 130:	02002205 	.inst	0x02002205 ; undefined
 134:	053a0204 	ext	z4.b, z4.b, z16.b, #208
 138:	04020009 	.inst	0x04020009 ; undefined
 13c:	01053c01 	.inst	0x01053c01 ; undefined
 140:	4d3c1403 	.inst	0x4d3c1403 ; undefined
 144:	05301005 	ext	z5.b, z5.b, z0.b, #132
 148:	14052009 	b	14816c <__abi_tag-0x2b810c>
 14c:	200d0522 	.inst	0x200d0522 ; undefined
 150:	05221d05 	ext	z5.b, z5.b, z8.b, #23
 154:	1505201b 	b	41481c0 <__bss_end__+0x3d0ac90>
 158:	c91605c9 	.inst	0xc91605c9 ; undefined
 15c:	1b05c9c9 	msub	w9, w14, w5, w18
 160:	05c9c9c9 	.inst	0x05c9c9c9 ; undefined
 164:	1a05c916 	.inst	0x1a05c916 ; undefined
 168:	ba1305cc 	rmif	x14, #38, #12
 16c:	054c1f05 	.inst	0x054c1f05 ; undefined
 170:	04020026 	.inst	0x04020026 ; undefined
 174:	02700302 	.inst	0x02700302 ; undefined
 178:	0d050124 	.inst	0x0d050124 ; undefined
 17c:	01040200 	.inst	0x01040200 ; undefined
 180:	0022053c 	.inst	0x0022053c ; NYI
 184:	3a020402 	.inst	0x3a020402 ; undefined
 188:	02000905 	.inst	0x02000905 ; undefined
 18c:	053c0104 	ext	z4.b, z4.b, z8.b, #224
 190:	3c160301 	stur	b1, [x24, #-160]
 194:	2109054d 	.inst	0x2109054d ; undefined
 198:	05221005 	ext	z5.b, z5.b, z0.b, #20
 19c:	14052009 	b	1481c0 <__abi_tag-0x2b80b8>
 1a0:	200d0522 	.inst	0x200d0522 ; undefined
 1a4:	05221a05 	ext	z5.b, z5.b, z16.b, #22
 1a8:	1305ba24 	.inst	0x1305ba24 ; undefined
 1ac:	301d05ba 	adr	x26, 3a261 <__abi_tag-0x3c6017>
 1b0:	0026054e 	.inst	0x0026054e ; NYI
 1b4:	03020402 	.inst	0x03020402 ; undefined
 1b8:	0d053c78 	.inst	0x0d053c78 ; undefined
 1bc:	01040200 	.inst	0x01040200 ; undefined
 1c0:	0022053c 	.inst	0x0022053c ; NYI
 1c4:	3a020402 	.inst	0x3a020402 ; undefined
 1c8:	02000905 	.inst	0x02000905 ; undefined
 1cc:	053c0104 	ext	z4.b, z4.b, z8.b, #224
 1d0:	3c0e0307 	stur	b7, [x24, #224]
 1d4:	303d0d05 	adr	x5, 7a375 <__abi_tag-0x385f03>
 1d8:	31210105 	adds	w5, w8, #0x840
 1dc:	05210e05 	ext	z5.b, z5.b, z16.b, #11
 1e0:	16052005 	b	fffffffff81481f4 <__bss_end__+0xfffffffff7d0acc4>
 1e4:	200d0522 	.inst	0x200d0522 ; undefined
 1e8:	05221a05 	ext	z5.b, z5.b, z16.b, #22
 1ec:	1f052011 	fmadd	s17, s0, s5, s8
 1f0:	03040200 	.inst	0x03040200 ; undefined
 1f4:	00280521 	.inst	0x00280521 ; NYI
 1f8:	ba030402 	rmif	x0, #6, #2
 1fc:	02003405 	.inst	0x02003405 ; undefined
 200:	05ba0304 	zip1	z4.q, z24.q, z26.q
 204:	0402002c 	.inst	0x0402002c ; undefined
 208:	1f05ba03 	fmsub	s3, s16, s5, s14
 20c:	03040200 	.inst	0x03040200 ; undefined
 210:	002e0520 	.inst	0x002e0520 ; NYI
 214:	c7030402 	.inst	0xc7030402 ; undefined
 218:	02001105 	.inst	0x02001105 ; undefined
 21c:	053c0104 	ext	z4.b, z4.b, z8.b, #224
 220:	0402002a 	.inst	0x0402002a ; undefined
 224:	0d053a02 	.inst	0x0d053a02 ; undefined
 228:	01040200 	.inst	0x01040200 ; undefined
 22c:	0022053c 	.inst	0x0022053c ; NYI
 230:	3a020402 	.inst	0x3a020402 ; undefined
 234:	02000505 	.inst	0x02000505 ; undefined
 238:	053c0104 	ext	z4.b, z4.b, z8.b, #224
 23c:	3c09030c 	stur	b12, [x24, #144]
 240:	31210105 	adds	w5, w8, #0x840
 244:	05210905 	ext	z5.b, z5.b, z8.b, #10
 248:	09052210 	.inst	0x09052210 ; undefined
 24c:	22140520 	.inst	0x22140520 ; undefined
 250:	05200d05 	ext	z5.b, z5.b, z8.b, #3
 254:	04020015 	.inst	0x04020015 ; undefined
 258:	23052203 	.inst	0x23052203 ; undefined
 25c:	03040200 	.inst	0x03040200 ; undefined
 260:	001b05c9 	.inst	0x001b05c9 ; undefined
 264:	ba030402 	rmif	x0, #6, #2
 268:	03040200 	.inst	0x03040200 ; undefined
 26c:	002605bb 	.inst	0x002605bb ; NYI
 270:	c4030402 	ld1sb	{z2.d}, p1/z, [x0, z3.d, uxtw]
 274:	02000d05 	.inst	0x02000d05 ; undefined
 278:	053c0104 	ext	z4.b, z4.b, z8.b, #224
 27c:	04020022 	.inst	0x04020022 ; undefined
 280:	09053a02 	.inst	0x09053a02 ; undefined
 284:	01040200 	.inst	0x01040200 ; undefined
 288:	030c053c 	.inst	0x030c053c ; undefined
 28c:	01053c09 	.inst	0x01053c09 ; undefined
 290:	0b053121 	add	w1, w9, w5, lsl #12
 294:	230a052f 	.inst	0x230a052f ; undefined
 298:	4b670505 	.inst	0x4b670505 ; undefined
 29c:	0c054c59 	.inst	0x0c054c59 ; undefined
 2a0:	22010530 	.inst	0x22010530 ; undefined
 2a4:	2f0f0531 	ushr	v17.8b, v9.8b, #1
 2a8:	052f0b05 	ext	z5.b, z5.b, z24.b, #122
 2ac:	0105300d 	.inst	0x0105300d ; undefined
 2b0:	0f053121 	.inst	0x0f053121 ; undefined
 2b4:	4b090521 	sub	w1, w9, w9, lsl #1
 2b8:	054b0f05 	.inst	0x054b0f05 ; undefined
 2bc:	054b4b0a 	.inst	0x054b4b0a ; undefined
 2c0:	4b4b4b0f 	sub	w15, w24, w11, lsr #18
 2c4:	4b4b0a05 	sub	w5, w16, w11, lsr #2
 2c8:	054b0f05 	.inst	0x054b0f05 ; undefined
 2cc:	0f054b0a 	.inst	0x0f054b0a ; undefined
 2d0:	4b0a054c 	sub	w12, w10, w10, lsl #1
 2d4:	054b0f05 	.inst	0x054b0f05 ; undefined
 2d8:	054b4b0a 	.inst	0x054b4b0a ; undefined
 2dc:	0c054b0f 	.inst	0x0c054b0f ; undefined
 2e0:	2101054c 	.inst	0x2101054c ; undefined
 2e4:	210f0531 	.inst	0x210f0531 ; undefined
 2e8:	054b0905 	.inst	0x054b0905 ; undefined
 2ec:	0a054b0f 	and	w15, w24, w5, lsl #18
 2f0:	0f054b4b 	.inst	0x0f054b4b ; undefined
 2f4:	054b4b4b 	.inst	0x054b4b4b ; undefined
 2f8:	054b4b0a 	.inst	0x054b4b0a ; undefined
 2fc:	0a054b0f 	and	w15, w24, w5, lsl #18
 300:	4c0f054b 	.inst	0x4c0f054b ; undefined
 304:	054b0a05 	.inst	0x054b0a05 ; undefined
 308:	0a054b0f 	and	w15, w24, w5, lsl #18
 30c:	0f054b4b 	.inst	0x0f054b4b ; undefined
 310:	4c0c054b 	.inst	0x4c0c054b ; undefined
 314:	31210105 	adds	w5, w8, #0x840
 318:	052f0b05 	ext	z5.b, z5.b, z24.b, #122
 31c:	0505220a 	.inst	0x0505220a ; undefined
 320:	670c0569 	.inst	0x670c0569 ; undefined
 324:	05200505 	ext	z5.b, z5.b, z8.b, #1
 328:	09052210 	.inst	0x09052210 ; undefined
 32c:	000d0520 	.inst	0x000d0520 ; undefined
 330:	22030402 	.inst	0x22030402 ; undefined
 334:	02002205 	.inst	0x02002205 ; undefined
 338:	05fe0304 	.inst	0x05fe0304 ; undefined
 33c:	04020009 	.inst	0x04020009 ; undefined
 340:	1e053c01 	.inst	0x1e053c01 ; undefined
 344:	02040200 	.inst	0x02040200 ; undefined
 348:	0005053a 	.inst	0x0005053a ; undefined
 34c:	3c010402 	str	b2, [x0], #16
 350:	0c056843 	.inst	0x0c056843 ; undefined
 354:	2201052f 	.inst	0x2201052f ; undefined
 358:	01000202 	.inst	0x01000202 ; undefined
 35c:	地址 0x000000000000035c 越界。


Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	6d6f682f 	ldp	d15, d26, [x1, #-272]
   4:	69662f65 	ldpsw	x5, x11, [x27, #-208]
   8:	5f6c616e 	.inst	0x5f6c616e ; undefined
   c:	636e6562 	.inst	0x636e6562 ; undefined
  10:	72616d68 	.inst	0x72616d68 ; undefined
  14:	6f5f006b 	mla	v11.8h, v3.8h, v15.h[1]
  18:	6f5f646c 	sqshlu	v12.2d, v3.2d, #31
  1c:	65736666 	fnmls	z6.h, p1/m, z19.h, z19.h
  20:	495f0074 	.inst	0x495f0074 ; undefined
  24:	49465f4f 	.inst	0x49465f4f ; undefined
  28:	5f00454c 	.inst	0x5f00454c ; undefined
  2c:	746e695f 	.inst	0x746e695f ; undefined
  30:	20383231 	.inst	0x20383231 ; undefined
  34:	69736e75 	ldpsw	x21, x27, [x19, #-104]
  38:	64656e67 	.inst	0x64656e67 ; undefined
  3c:	6f745300 	fcmla	v0.8h, v24.8h, v20.h[1], #180
  40:	61446572 	.inst	0x61446572 ; undefined
  44:	74006174 	.inst	0x74006174 ; undefined
  48:	00706d65 	.inst	0x00706d65 ; undefined
  4c:	726f6873 	.inst	0x726f6873 ; undefined
  50:	6e692074 	usubl2	v20.4s, v3.8h, v9.8h
  54:	69730074 	ldpsw	x20, x0, [x3, #-104]
  58:	745f657a 	.inst	0x745f657a ; undefined
  5c:	4f495f00 	.inst	0x4f495f00 ; undefined
  60:	6972775f 	ldpsw	xzr, x29, [x26, #-112]
  64:	705f6574 	adr	x20, bed13 <__abi_tag-0x341565>
  68:	5f007274 	.inst	0x5f007274 ; undefined
  6c:	67616c66 	.inst	0x67616c66 ; undefined
  70:	75620073 	.inst	0x75620073 ; undefined
  74:	5f006666 	.inst	0x5f006666 ; undefined
  78:	625f4f49 	.inst	0x625f4f49 ; undefined
  7c:	625f6675 	.inst	0x625f6675 ; undefined
  80:	00657361 	.inst	0x00657361 ; undefined
  84:	74696e49 	.inst	0x74696e49 ; undefined
  88:	696c6169 	ldpsw	x9, x24, [x11, #-160]
  8c:	654d657a 	fcmne	p10.h, p1/z, z11.h, z13.h
  90:	315f6873 	adds	w19, w3, #0x7da, lsl #12
  94:	696e4900 	ldpsw	x0, x18, [x8, #-144]
  98:	6c616974 	ldnp	d20, d26, [x11, #-496]
  9c:	4d657a69 	.inst	0x4d657a69 ; undefined
  a0:	5f687365 	sqdmlsl	s5, h27, v8.h[2]
  a4:	6d5f0032 	ldp	d18, d0, [x1, #496]
  a8:	656b7261 	fnmls	z1.h, p4/m, z19.h, z11.h
  ac:	5f007372 	.inst	0x5f007372 ; undefined
  b0:	725f4f49 	.inst	0x725f4f49 ; undefined
  b4:	5f646165 	.inst	0x5f646165 ; undefined
  b8:	00646e65 	.inst	0x00646e65 ; undefined
  bc:	6572665f 	fnmls	z31.h, p1/m, z18.h, z18.h
  c0:	73657265 	.inst	0x73657265 ; undefined
  c4:	6675625f 	.inst	0x6675625f ; undefined
  c8:	61775300 	.inst	0x61775300 ; undefined
  cc:	73654d70 	.inst	0x73654d70 ; undefined
  d0:	6f430068 	mla	v8.8h, v3.8h, v3.h[0]
  d4:	7261706d 	.inst	0x7261706d ; undefined
  d8:	73654d65 	.inst	0x73654d65 ; undefined
  dc:	736d0068 	.inst	0x736d0068 ; undefined
  e0:	69625f31 	ldpsw	x17, x23, [x25, #-240]
  e4:	6c660067 	ldnp	d7, d0, [x3, #-416]
  e8:	0074616f 	.inst	0x0074616f ; undefined
  ec:	676e6f6c 	.inst	0x676e6f6c ; undefined
  f0:	6e6f6c20 	umin	v0.8h, v1.8h, v15.8h
  f4:	6e692067 	usubl2	v7.4s, v3.8h, v9.8h
  f8:	656d0074 	fmla	z20.h, p0/m, z3.h, z13.h
  fc:	5f006873 	.inst	0x5f006873 ; undefined
 100:	6b636f6c 	.inst	0x6b636f6c ; undefined
 104:	75635f00 	.inst	0x75635f00 ; undefined
 108:	6f635f72 	.inst	0x6f635f72 ; undefined
 10c:	6e6d756c 	uabd	v12.8h, v11.8h, v13.8h
 110:	4f495f00 	.inst	0x4f495f00 ; undefined
 114:	6972775f 	ldpsw	xzr, x29, [x26, #-112]
 118:	625f6574 	.inst	0x625f6574 ; undefined
 11c:	00657361 	.inst	0x00657361 ; undefined
 120:	76677261 	.inst	0x76677261 ; undefined
 124:	6e614d00 	uqshl	v0.8h, v8.8h, v1.8h
 128:	616c7069 	.inst	0x616c7069 ; undefined
 12c:	61446574 	.inst	0x61446574 ; undefined
 130:	00316174 	.inst	0x00316174 ; NYI
 134:	696e614d 	ldpsw	x13, x24, [x10, #-144]
 138:	74616c70 	.inst	0x74616c70 ; undefined
 13c:	74614465 	.inst	0x74614465 ; undefined
 140:	75003261 	.inst	0x75003261 ; undefined
 144:	6769736e 	.inst	0x6769736e ; undefined
 148:	2064656e 	.inst	0x2064656e ; undefined
 14c:	72616863 	.inst	0x72616863 ; undefined
 150:	67726100 	.inst	0x67726100 ; undefined
 154:	495f0063 	.inst	0x495f0063 ; undefined
 158:	61735f4f 	.inst	0x61735f4f ; undefined
 15c:	625f6576 	.inst	0x625f6576 ; undefined
 160:	00657361 	.inst	0x00657361 ; undefined
 164:	676e6f6c 	.inst	0x676e6f6c ; undefined
 168:	6e6f6c20 	umin	v0.8h, v1.8h, v15.8h
 16c:	6e752067 	usubl2	v7.4s, v3.8h, v21.8h
 170:	6e676973 	.inst	0x6e676973 ; undefined
 174:	69206465 	stgp	x5, x25, [x3, #-1024]
 178:	5f00746e 	.inst	0x5f00746e ; undefined
 17c:	6d5f4f49 	ldp	d9, d19, [x26, #496]
 180:	656b7261 	fnmls	z1.h, p4/m, z19.h, z11.h
 184:	735f0072 	.inst	0x735f0072 ; undefined
 188:	74726f68 	.inst	0x74726f68 ; undefined
 18c:	00667562 	.inst	0x00667562 ; undefined
 190:	63657073 	.inst	0x63657073 ; undefined
 194:	6e65625f 	rsubhn2	v31.8h, v18.4s, v5.4s
 198:	616d6863 	.inst	0x616d6863 ; undefined
 19c:	632e6b72 	.inst	0x632e6b72 ; undefined
 1a0:	6e755f00 	uqrshl	v0.8h, v24.8h, v21.8h
 1a4:	64657375 	.inst	0x64657375 ; undefined
 1a8:	495f0032 	.inst	0x495f0032 ; undefined
 1ac:	65725f4f 	fnmla	z15.h, p7/m, z26.h, z18.h
 1b0:	705f6461 	adr	x1, bee3f <__abi_tag-0x341439>
 1b4:	5f007274 	.inst	0x5f007274 ; undefined
 1b8:	625f4f49 	.inst	0x625f4f49 ; undefined
 1bc:	655f6675 	fcmne	p5.h, p1/z, z19.h, z31.h
 1c0:	6d00646e 	stp	d14, d25, [x3]
 1c4:	006e6961 	.inst	0x006e6961 ; undefined
 1c8:	6572665f 	fnmls	z31.h, p1/m, z18.h, z18.h
 1cc:	73657265 	.inst	0x73657265 ; undefined
 1d0:	73696c5f 	.inst	0x73696c5f ; undefined
 1d4:	6f4c0074 	mla	v20.8h, v3.8h, v12.h[0]
 1d8:	61446461 	.inst	0x61446461 ; undefined
 1dc:	5f006174 	.inst	0x5f006174 ; undefined
 1e0:	6461705f 	.inst	0x6461705f ; undefined
 1e4:	6f430035 	mla	v21.8h, v1.8h, v3.h[0]
 1e8:	656c706d 	fnmls	z13.h, p4/m, z3.h, z12.h
 1ec:	74614478 	.inst	0x74614478 ; undefined
 1f0:	6e614861 	uqxtn2	v1.8h, v3.4s
 1f4:	00656c64 	.inst	0x00656c64 ; undefined
 1f8:	726f6873 	.inst	0x726f6873 ; undefined
 1fc:	6e752074 	usubl2	v20.4s, v3.8h, v21.8h
 200:	6e676973 	.inst	0x6e676973 ; undefined
 204:	69206465 	stgp	x5, x25, [x3, #-1024]
 208:	4d00746e 	.inst	0x4d00746e ; undefined
 20c:	5f687365 	sqdmlsl	s5, h27, v8.h[2]
 210:	00746f64 	.inst	0x00746f64 ; undefined
 214:	5f4f495f 	.inst	0x5f4f495f ; undefined
 218:	65766173 	fnmls	z19.h, p0/m, z11.h, z22.h
 21c:	646e655f 	.inst	0x646e655f ; undefined
 220:	4f495f00 	.inst	0x4f495f00 ; undefined
 224:	6972775f 	ldpsw	xzr, x29, [x26, #-112]
 228:	655f6574 	fcmne	p4.h, p1/z, z11.h, z31.h
 22c:	5f00646e 	.inst	0x5f00646e ; undefined
 230:	66666f5f 	.inst	0x66666f5f ; undefined
 234:	745f3436 	.inst	0x745f3436 ; undefined
 238:	69665f00 	ldpsw	x0, x23, [x24, #-208]
 23c:	6f6e656c 	sqshlu	v12.2d, v11.2d, #46
 240:	68635f00 	.inst	0x68635f00 ; undefined
 244:	006e6961 	.inst	0x006e6961 ; undefined
 248:	5f4f495f 	.inst	0x5f4f495f ; undefined
 24c:	65646977 	fnmls	z23.h, p2/m, z11.h, z4.h
 250:	7461645f 	.inst	0x7461645f ; undefined
 254:	6d5f0061 	ldp	d1, d0, [x3, #496]
 258:	0065646f 	.inst	0x0065646f ; undefined
 25c:	666f5f5f 	.inst	0x666f5f5f ; undefined
 260:	00745f66 	.inst	0x00745f66 ; undefined
 264:	5f4f495f 	.inst	0x5f4f495f ; undefined
 268:	6b636162 	.inst	0x6b636162 ; undefined
 26c:	625f7075 	.inst	0x625f7075 ; undefined
 270:	00657361 	.inst	0x00657361 ; undefined
 274:	616c665f 	.inst	0x616c665f ; undefined
 278:	00327367 	.inst	0x00327367 ; NYI
 27c:	5f4f495f 	.inst	0x5f4f495f ; undefined
 280:	65646f63 	fnmls	z3.h, p3/m, z27.h, z4.h
 284:	00747663 	.inst	0x00747663 ; undefined
 288:	5f4f495f 	.inst	0x5f4f495f ; undefined
 28c:	64616572 	.inst	0x64616572 ; undefined
 290:	7361625f 	.inst	0x7361625f ; undefined
 294:	765f0065 	.inst	0x765f0065 ; undefined
 298:	6c626174 	ldnp	d20, d24, [x11, #-480]
 29c:	666f5f65 	.inst	0x666f5f65 ; undefined
 2a0:	74657366 	.inst	0x74657366 ; undefined
 2a4:	554e4700 	.inst	0x554e4700 ; undefined
 2a8:	37314320 	tbnz	w0, #6, 2b0c <__abi_tag-0x3fd76c>
 2ac:	2e303120 	usubw	v0.8h, v9.8h, v16.8b
 2b0:	20312e33 	.inst	0x20312e33 ; undefined
 2b4:	696c6d2d 	ldpsw	x13, x27, [x9, #-160]
 2b8:	656c7474 	fnmls	z20.h, p5/m, z3.h, z12.h
 2bc:	646e652d 	.inst	0x646e652d ; undefined
 2c0:	206e6169 	.inst	0x206e6169 ; undefined
 2c4:	62616d2d 	.inst	0x62616d2d ; undefined
 2c8:	706c3d69 	adr	x9, d8a77 <__abi_tag-0x327801>
 2cc:	2d203436 	stp	s22, s13, [x1, #-256]
 2d0:	6f640067 	mla	v7.8h, v3.8h, v4.h[2]
 2d4:	656c6275 	fnmls	z21.h, p0/m, z19.h, z12.h
 2d8:	4f495f00 	.inst	0x4f495f00 ; undefined
 2dc:	636f6c5f 	.inst	0x636f6c5f ; undefined
 2e0:	00745f6b 	.inst	0x00745f6b ; undefined
