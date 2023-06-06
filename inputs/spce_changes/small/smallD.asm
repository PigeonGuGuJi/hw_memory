
small：     文件格式 elf64-littleaarch64


Disassembly of section .interp:

0000000000400238 <.interp>:
  400238:	62696c2f 	.inst	0x62696c2f ; undefined
  40023c:	2d646c2f 	ldp	s15, s27, [x1, #-224]
  400240:	756e696c 	.inst	0x756e696c ; undefined
  400244:	61612d78 	.inst	0x61612d78 ; undefined
  400248:	36686372 	tbz	w18, #13, 400eb4 <Mesh_dot+0x2c>
  40024c:	6f732e34 	.inst	0x6f732e34 ; undefined
  400250:	地址 0x0000000000400250 越界。


Disassembly of section .note.gnu.build-id:

0000000000400254 <.note.gnu.build-id>:
  400254:	00000004 	udf	#4
  400258:	00000014 	udf	#20
  40025c:	00000003 	udf	#3
  400260:	00554e47 	.inst	0x00554e47 ; undefined
  400264:	0fb252ed 	fmls	v13.2s, v23.2s, v18.s[1]
  400268:	73a59a06 	.inst	0x73a59a06 ; undefined
  40026c:	69a1b865 	stgp	x5, x14, [x3, #-976]!
  400270:	08b88f5c 	.inst	0x08b88f5c ; undefined
  400274:	a0561989 	.inst	0xa0561989 ; undefined

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
  4002d0:	00000001 	udf	#1
  4002d4:	00000012 	udf	#18
	...
  4002e8:	00000048 	udf	#72
  4002ec:	00000020 	udf	#32
	...
  400300:	00000013 	udf	#19
  400304:	00000012 	udf	#18
	...
  400318:	00000064 	udf	#100
  40031c:	00000020 	udf	#32
	...
  400330:	0000001a 	udf	#26
  400334:	00000012 	udf	#18
	...
  400348:	00000073 	udf	#115
  40034c:	00000020 	udf	#32
	...
  400360:	00000020 	udf	#32
  400364:	00000012 	udf	#18
	...

Disassembly of section .dynstr:

0000000000400378 <.dynstr>:
  400378:	6c5f5f00 	ldnp	d0, d23, [x24, #496]
  40037c:	5f636269 	.inst	0x5f636269 ; undefined
  400380:	72617473 	.inst	0x72617473 ; undefined
  400384:	616d5f74 	.inst	0x616d5f74 ; undefined
  400388:	72006e69 	ands	w9, w19, #0xfffffff
  40038c:	6f646e61 	.inst	0x6f646e61 ; undefined
  400390:	6261006d 	.inst	0x6261006d ; undefined
  400394:	0074726f 	.inst	0x0074726f ; undefined
  400398:	63747570 	.inst	0x63747570 ; undefined
  40039c:	00726168 	.inst	0x00726168 ; undefined
  4003a0:	6362696c 	.inst	0x6362696c ; undefined
  4003a4:	2e6f732e 	uabdl	v14.4s, v25.4h, v15.4h
  4003a8:	4c470036 	.inst	0x4c470036 ; undefined
  4003ac:	5f434249 	.inst	0x5f434249 ; undefined
  4003b0:	37312e32 	tbnz	w18, #6, 402974 <__FRAME_END__+0x14dc>
  4003b4:	494c4700 	.inst	0x494c4700 ; undefined
  4003b8:	325f4342 	.inst	0x325f4342 ; undefined
  4003bc:	0034332e 	.inst	0x0034332e ; NYI
  4003c0:	4d54495f 	.inst	0x4d54495f ; undefined
  4003c4:	7265645f 	.inst	0x7265645f ; undefined
  4003c8:	73696765 	.inst	0x73696765 ; undefined
  4003cc:	54726574 	.inst	0x54726574 ; undefined
  4003d0:	6f6c434d 	mls	v13.8h, v26.8h, v12.h[2]
  4003d4:	6154656e 	.inst	0x6154656e ; undefined
  4003d8:	00656c62 	.inst	0x00656c62 ; undefined
  4003dc:	6d675f5f 	ldp	d31, d23, [x26, #-400]
  4003e0:	735f6e6f 	.inst	0x735f6e6f ; undefined
  4003e4:	74726174 	.inst	0x74726174 ; undefined
  4003e8:	5f005f5f 	.inst	0x5f005f5f ; undefined
  4003ec:	5f4d5449 	shl	d9, d2, #13
  4003f0:	69676572 	ldpsw	x18, x25, [x11, #-200]
  4003f4:	72657473 	.inst	0x72657473 ; undefined
  4003f8:	6c434d54 	ldnp	d20, d19, [x10, #48]
  4003fc:	54656e6f 	b.nv	4cb1c8 <ms1+0xab188>
  400400:	656c6261 	fnmls	z1.h, p0/m, z19.h, z12.h
	...

Disassembly of section .gnu.version:

0000000000400406 <.gnu.version>:
  400406:	00020000 	.inst	0x00020000 ; undefined
  40040a:	00030001 	.inst	0x00030001 ; undefined
  40040e:	00030001 	.inst	0x00030001 ; undefined
  400412:	00030001 	.inst	0x00030001 ; undefined

Disassembly of section .gnu.version_r:

0000000000400418 <.gnu.version_r>:
  400418:	00020001 	.inst	0x00020001 ; undefined
  40041c:	00000028 	udf	#40
  400420:	00000010 	udf	#16
  400424:	00000000 	udf	#0
  400428:	06969197 	.inst	0x06969197 ; undefined
  40042c:	00030000 	.inst	0x00030000 ; undefined
  400430:	00000032 	udf	#50
  400434:	00000010 	udf	#16
  400438:	069691b4 	.inst	0x069691b4 ; undefined
  40043c:	00020000 	.inst	0x00020000 ; undefined
  400440:	0000003d 	udf	#61
  400444:	00000000 	udf	#0

Disassembly of section .rela.dyn:

0000000000400448 <.rela.dyn>:
  400448:	0041ffd0 	.inst	0x0041ffd0 ; undefined
  40044c:	00000000 	udf	#0
  400450:	00000401 	udf	#1025
  400454:	00000002 	udf	#2
	...
  400460:	0041ffd8 	.inst	0x0041ffd8 ; undefined
  400464:	00000000 	udf	#0
  400468:	00000401 	udf	#1025
  40046c:	00000004 	udf	#4
	...
  400478:	0041ffe0 	.inst	0x0041ffe0 ; undefined
  40047c:	00000000 	udf	#0
  400480:	00000401 	udf	#1025
  400484:	00000006 	udf	#6
	...

Disassembly of section .rela.plt:

0000000000400490 <.rela.plt>:
  400490:	00420000 	.inst	0x00420000 ; undefined
  400494:	00000000 	udf	#0
  400498:	00000402 	udf	#1026
  40049c:	00000001 	udf	#1
	...
  4004a8:	00420008 	.inst	0x00420008 ; undefined
  4004ac:	00000000 	udf	#0
  4004b0:	00000402 	udf	#1026
  4004b4:	00000003 	udf	#3
	...
  4004c0:	00420010 	.inst	0x00420010 ; undefined
  4004c4:	00000000 	udf	#0
  4004c8:	00000402 	udf	#1026
  4004cc:	00000004 	udf	#4
	...
  4004d8:	00420018 	.inst	0x00420018 ; undefined
  4004dc:	00000000 	udf	#0
  4004e0:	00000402 	udf	#1026
  4004e4:	00000005 	udf	#5
	...
  4004f0:	00420020 	.inst	0x00420020 ; undefined
  4004f4:	00000000 	udf	#0
  4004f8:	00000402 	udf	#1026
  4004fc:	00000007 	udf	#7
	...

Disassembly of section .init:

0000000000400508 <_init>:
  400508:	d503201f 	nop
  40050c:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  400510:	910003fd 	mov	x29, sp
  400514:	9400003c 	bl	400604 <call_weak_fn>
  400518:	a8c17bfd 	ldp	x29, x30, [sp], #16
  40051c:	d65f03c0 	ret

Disassembly of section .plt:

0000000000400520 <.plt>:
  400520:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
  400524:	f00000f0 	adrp	x16, 41f000 <__FRAME_END__+0x1db68>
  400528:	f947fe11 	ldr	x17, [x16, #4088]
  40052c:	913fe210 	add	x16, x16, #0xff8
  400530:	d61f0220 	br	x17
  400534:	d503201f 	nop
  400538:	d503201f 	nop
  40053c:	d503201f 	nop

0000000000400540 <__libc_start_main@plt>:
  400540:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400544:	f9400211 	ldr	x17, [x16]
  400548:	91000210 	add	x16, x16, #0x0
  40054c:	d61f0220 	br	x17

0000000000400550 <random@plt>:
  400550:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400554:	f9400611 	ldr	x17, [x16, #8]
  400558:	91002210 	add	x16, x16, #0x8
  40055c:	d61f0220 	br	x17

0000000000400560 <__gmon_start__@plt>:
  400560:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400564:	f9400a11 	ldr	x17, [x16, #16]
  400568:	91004210 	add	x16, x16, #0x10
  40056c:	d61f0220 	br	x17

0000000000400570 <abort@plt>:
  400570:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400574:	f9400e11 	ldr	x17, [x16, #24]
  400578:	91006210 	add	x16, x16, #0x18
  40057c:	d61f0220 	br	x17

0000000000400580 <putchar@plt>:
  400580:	90000110 	adrp	x16, 420000 <__libc_start_main@GLIBC_2.34>
  400584:	f9401211 	ldr	x17, [x16, #32]
  400588:	91008210 	add	x16, x16, #0x20
  40058c:	d61f0220 	br	x17

Disassembly of section .text:

00000000004005c0 <_start>:
  4005c0:	d503201f 	nop
  4005c4:	d280001d 	mov	x29, #0x0                   	// #0
  4005c8:	d280001e 	mov	x30, #0x0                   	// #0
  4005cc:	aa0003e5 	mov	x5, x0
  4005d0:	f94003e1 	ldr	x1, [sp]
  4005d4:	910023e2 	add	x2, sp, #0x8
  4005d8:	910003e6 	mov	x6, sp
  4005dc:	90000000 	adrp	x0, 400000 <__abi_tag-0x278>
  4005e0:	9117d000 	add	x0, x0, #0x5f4
  4005e4:	d2800003 	mov	x3, #0x0                   	// #0
  4005e8:	d2800004 	mov	x4, #0x0                   	// #0
  4005ec:	97ffffd5 	bl	400540 <__libc_start_main@plt>
  4005f0:	97ffffe0 	bl	400570 <abort@plt>

00000000004005f4 <__wrap_main>:
  4005f4:	d503201f 	nop
  4005f8:	14000033 	b	4006c4 <main>
  4005fc:	d503201f 	nop

0000000000400600 <_dl_relocate_static_pie>:
  400600:	d65f03c0 	ret

0000000000400604 <call_weak_fn>:
  400604:	f00000e0 	adrp	x0, 41f000 <__FRAME_END__+0x1db68>
  400608:	f947ec00 	ldr	x0, [x0, #4056]
  40060c:	b4000040 	cbz	x0, 400614 <call_weak_fn+0x10>
  400610:	17ffffd4 	b	400560 <__gmon_start__@plt>
  400614:	d65f03c0 	ret
  400618:	d503201f 	nop
  40061c:	d503201f 	nop

0000000000400620 <deregister_tm_clones>:
  400620:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400624:	9100e000 	add	x0, x0, #0x38
  400628:	90000101 	adrp	x1, 420000 <__libc_start_main@GLIBC_2.34>
  40062c:	9100e021 	add	x1, x1, #0x38
  400630:	eb00003f 	cmp	x1, x0
  400634:	540000c0 	b.eq	40064c <deregister_tm_clones+0x2c>  // b.none
  400638:	f00000e1 	adrp	x1, 41f000 <__FRAME_END__+0x1db68>
  40063c:	f947e821 	ldr	x1, [x1, #4048]
  400640:	b4000061 	cbz	x1, 40064c <deregister_tm_clones+0x2c>
  400644:	aa0103f0 	mov	x16, x1
  400648:	d61f0200 	br	x16
  40064c:	d65f03c0 	ret

0000000000400650 <register_tm_clones>:
  400650:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400654:	9100e000 	add	x0, x0, #0x38
  400658:	90000101 	adrp	x1, 420000 <__libc_start_main@GLIBC_2.34>
  40065c:	9100e021 	add	x1, x1, #0x38
  400660:	cb000021 	sub	x1, x1, x0
  400664:	d37ffc22 	lsr	x2, x1, #63
  400668:	8b810c41 	add	x1, x2, x1, asr #3
  40066c:	9341fc21 	asr	x1, x1, #1
  400670:	b40000c1 	cbz	x1, 400688 <register_tm_clones+0x38>
  400674:	f00000e2 	adrp	x2, 41f000 <__FRAME_END__+0x1db68>
  400678:	f947f042 	ldr	x2, [x2, #4064]
  40067c:	b4000062 	cbz	x2, 400688 <register_tm_clones+0x38>
  400680:	aa0203f0 	mov	x16, x2
  400684:	d61f0200 	br	x16
  400688:	d65f03c0 	ret
  40068c:	d503201f 	nop

0000000000400690 <__do_global_dtors_aux>:
  400690:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  400694:	910003fd 	mov	x29, sp
  400698:	f9000bf3 	str	x19, [sp, #16]
  40069c:	90000113 	adrp	x19, 420000 <__libc_start_main@GLIBC_2.34>
  4006a0:	3940e260 	ldrb	w0, [x19, #56]
  4006a4:	35000080 	cbnz	w0, 4006b4 <__do_global_dtors_aux+0x24>
  4006a8:	97ffffde 	bl	400620 <deregister_tm_clones>
  4006ac:	52800020 	mov	w0, #0x1                   	// #1
  4006b0:	3900e260 	strb	w0, [x19, #56]
  4006b4:	f9400bf3 	ldr	x19, [sp, #16]
  4006b8:	a8c27bfd 	ldp	x29, x30, [sp], #32
  4006bc:	d65f03c0 	ret

00000000004006c0 <frame_dummy>:
  4006c0:	17ffffe4 	b	400650 <register_tm_clones>

00000000004006c4 <main>:
  4006c4:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
  4006c8:	910003fd 	mov	x29, sp
  4006cc:	b9001fe0 	str	w0, [sp, #28]
  4006d0:	f9000be1 	str	x1, [sp, #16]
  4006d4:	900017e0 	adrp	x0, 6fc000 <ms3+0xf3b40>
  4006d8:	911c0000 	add	x0, x0, #0x700
  4006dc:	b900001f 	str	wzr, [x0]
  4006e0:	52800020 	mov	w0, #0x1                   	// #1
  4006e4:	b9002fe0 	str	w0, [sp, #44]
  4006e8:	b9002bff 	str	wzr, [sp, #40]
  4006ec:	b9402fe0 	ldr	w0, [sp, #44]
  4006f0:	7100001f 	cmp	w0, #0x0
  4006f4:	54000060 	b.eq	400700 <main+0x3c>  // b.none
  4006f8:	94000033 	bl	4007c4 <InitializeMesh_1>
  4006fc:	94000097 	bl	400958 <InitializeMesh_2>
  400700:	52800620 	mov	w0, #0x31                  	// #49
  400704:	97ffff9f 	bl	400580 <putchar@plt>
  400708:	940000f9 	bl	400aec <CompareMesh>
  40070c:	2a0003e1 	mov	w1, w0
  400710:	900017e0 	adrp	x0, 6fc000 <ms3+0xf3b40>
  400714:	911c0000 	add	x0, x0, #0x700
  400718:	b9000001 	str	w1, [x0]
  40071c:	b9402be0 	ldr	w0, [sp, #40]
  400720:	7100001f 	cmp	w0, #0x0
  400724:	540001c0 	b.eq	40075c <main+0x98>  // b.none
  400728:	94000192 	bl	400d70 <SwapMesh>
  40072c:	2a0003e1 	mov	w1, w0
  400730:	900017e0 	adrp	x0, 6fc000 <ms3+0xf3b40>
  400734:	911c0000 	add	x0, x0, #0x700
  400738:	b9000001 	str	w1, [x0]
  40073c:	52800d60 	mov	w0, #0x6b                  	// #107
  400740:	97ffff90 	bl	400580 <putchar@plt>
  400744:	940001d1 	bl	400e88 <Mesh_dot>
  400748:	2a0003e1 	mov	w1, w0
  40074c:	900017e0 	adrp	x0, 6fc000 <ms3+0xf3b40>
  400750:	911c1000 	add	x0, x0, #0x704
  400754:	b9000001 	str	w1, [x0]
  400758:	1400000d 	b	40078c <main+0xc8>
  40075c:	94000185 	bl	400d70 <SwapMesh>
  400760:	2a0003e1 	mov	w1, w0
  400764:	900017e0 	adrp	x0, 6fc000 <ms3+0xf3b40>
  400768:	911c0000 	add	x0, x0, #0x700
  40076c:	b9000001 	str	w1, [x0]
  400770:	52800e00 	mov	w0, #0x70                  	// #112
  400774:	97ffff83 	bl	400580 <putchar@plt>
  400778:	940001c4 	bl	400e88 <Mesh_dot>
  40077c:	2a0003e1 	mov	w1, w0
  400780:	900017e0 	adrp	x0, 6fc000 <ms3+0xf3b40>
  400784:	911c1000 	add	x0, x0, #0x704
  400788:	b9000001 	str	w1, [x0]
  40078c:	52800640 	mov	w0, #0x32                  	// #50
  400790:	97ffff7c 	bl	400580 <putchar@plt>
  400794:	94000177 	bl	400d70 <SwapMesh>
  400798:	9400020a 	bl	400fc0 <ComplexDataHandle>
  40079c:	9400010f 	bl	400bd8 <Mesh2>
  4007a0:	2a0003e1 	mov	w1, w0
  4007a4:	900017e0 	adrp	x0, 6fc000 <ms3+0xf3b40>
  4007a8:	911c1000 	add	x0, x0, #0x704
  4007ac:	b9000001 	str	w1, [x0]
  4007b0:	52800660 	mov	w0, #0x33                  	// #51
  4007b4:	97ffff73 	bl	400580 <putchar@plt>
  4007b8:	52800000 	mov	w0, #0x0                   	// #0
  4007bc:	a8c37bfd 	ldp	x29, x30, [sp], #48
  4007c0:	d65f03c0 	ret

00000000004007c4 <InitializeMesh_1>:
  4007c4:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  4007c8:	910003fd 	mov	x29, sp
  4007cc:	b9001bff 	str	wzr, [sp, #24]
  4007d0:	1400005b 	b	40093c <InitializeMesh_1+0x178>
  4007d4:	b9001fff 	str	wzr, [sp, #28]
  4007d8:	14000053 	b	400924 <InitializeMesh_1+0x160>
  4007dc:	97ffff5d 	bl	400550 <random@plt>
  4007e0:	2a0003e4 	mov	w4, w0
  4007e4:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4007e8:	91010002 	add	x2, x0, #0x40
  4007ec:	b9801be3 	ldrsw	x3, [sp, #24]
  4007f0:	b9801fe1 	ldrsw	x1, [sp, #28]
  4007f4:	aa0103e0 	mov	x0, x1
  4007f8:	d37be800 	lsl	x0, x0, #5
  4007fc:	cb010000 	sub	x0, x0, x1
  400800:	d37ef400 	lsl	x0, x0, #2
  400804:	8b010000 	add	x0, x0, x1
  400808:	d37ef400 	lsl	x0, x0, #2
  40080c:	8b030000 	add	x0, x0, x3
  400810:	b8207844 	str	w4, [x2, x0, lsl #2]
  400814:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400818:	91010002 	add	x2, x0, #0x40
  40081c:	b9801be3 	ldrsw	x3, [sp, #24]
  400820:	b9801fe1 	ldrsw	x1, [sp, #28]
  400824:	aa0103e0 	mov	x0, x1
  400828:	d37be800 	lsl	x0, x0, #5
  40082c:	cb010000 	sub	x0, x0, x1
  400830:	d37ef400 	lsl	x0, x0, #2
  400834:	8b010000 	add	x0, x0, x1
  400838:	d37ef400 	lsl	x0, x0, #2
  40083c:	8b030000 	add	x0, x0, x3
  400840:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400844:	b90017e0 	str	w0, [sp, #20]
  400848:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40084c:	91010002 	add	x2, x0, #0x40
  400850:	b9801be3 	ldrsw	x3, [sp, #24]
  400854:	b9801fe1 	ldrsw	x1, [sp, #28]
  400858:	aa0103e0 	mov	x0, x1
  40085c:	d37be800 	lsl	x0, x0, #5
  400860:	cb010000 	sub	x0, x0, x1
  400864:	d37ef400 	lsl	x0, x0, #2
  400868:	8b010000 	add	x0, x0, x1
  40086c:	d37ef400 	lsl	x0, x0, #2
  400870:	8b030000 	add	x0, x0, x3
  400874:	b8607841 	ldr	w1, [x2, x0, lsl #2]
  400878:	5290d4e0 	mov	w0, #0x86a7                	// #34471
  40087c:	72a00020 	movk	w0, #0x1, lsl #16
  400880:	6b00003f 	cmp	w1, w0
  400884:	540004ad 	b.le	400918 <InitializeMesh_1+0x154>
  400888:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40088c:	91010002 	add	x2, x0, #0x40
  400890:	b9801be3 	ldrsw	x3, [sp, #24]
  400894:	b9801fe1 	ldrsw	x1, [sp, #28]
  400898:	aa0103e0 	mov	x0, x1
  40089c:	d37be800 	lsl	x0, x0, #5
  4008a0:	cb010000 	sub	x0, x0, x1
  4008a4:	d37ef400 	lsl	x0, x0, #2
  4008a8:	8b010000 	add	x0, x0, x1
  4008ac:	d37ef400 	lsl	x0, x0, #2
  4008b0:	8b030000 	add	x0, x0, x3
  4008b4:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  4008b8:	529555a1 	mov	w1, #0xaaad                	// #43693
  4008bc:	72b4f841 	movk	w1, #0xa7c2, lsl #16
  4008c0:	9b217c01 	smull	x1, w0, w1
  4008c4:	d360fc21 	lsr	x1, x1, #32
  4008c8:	0b010001 	add	w1, w0, w1
  4008cc:	13107c22 	asr	w2, w1, #16
  4008d0:	131f7c01 	asr	w1, w0, #31
  4008d4:	4b010041 	sub	w1, w2, w1
  4008d8:	5290d4e2 	mov	w2, #0x86a7                	// #34471
  4008dc:	72a00022 	movk	w2, #0x1, lsl #16
  4008e0:	1b027c21 	mul	w1, w1, w2
  4008e4:	4b010001 	sub	w1, w0, w1
  4008e8:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4008ec:	91010003 	add	x3, x0, #0x40
  4008f0:	b9801be4 	ldrsw	x4, [sp, #24]
  4008f4:	b9801fe2 	ldrsw	x2, [sp, #28]
  4008f8:	aa0203e0 	mov	x0, x2
  4008fc:	d37be800 	lsl	x0, x0, #5
  400900:	cb020000 	sub	x0, x0, x2
  400904:	d37ef400 	lsl	x0, x0, #2
  400908:	8b020000 	add	x0, x0, x2
  40090c:	d37ef400 	lsl	x0, x0, #2
  400910:	8b040000 	add	x0, x0, x4
  400914:	b8207861 	str	w1, [x3, x0, lsl #2]
  400918:	b9401fe0 	ldr	w0, [sp, #28]
  40091c:	11000400 	add	w0, w0, #0x1
  400920:	b9001fe0 	str	w0, [sp, #28]
  400924:	b9401fe0 	ldr	w0, [sp, #28]
  400928:	7107cc1f 	cmp	w0, #0x1f3
  40092c:	54fff58d 	b.le	4007dc <InitializeMesh_1+0x18>
  400930:	b9401be0 	ldr	w0, [sp, #24]
  400934:	11000400 	add	w0, w0, #0x1
  400938:	b9001be0 	str	w0, [sp, #24]
  40093c:	b9401be0 	ldr	w0, [sp, #24]
  400940:	7107cc1f 	cmp	w0, #0x1f3
  400944:	54fff48d 	b.le	4007d4 <InitializeMesh_1+0x10>
  400948:	d503201f 	nop
  40094c:	d503201f 	nop
  400950:	a8c27bfd 	ldp	x29, x30, [sp], #32
  400954:	d65f03c0 	ret

0000000000400958 <InitializeMesh_2>:
  400958:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  40095c:	910003fd 	mov	x29, sp
  400960:	b9001bff 	str	wzr, [sp, #24]
  400964:	1400005b 	b	400ad0 <InitializeMesh_2+0x178>
  400968:	b9001fff 	str	wzr, [sp, #28]
  40096c:	14000053 	b	400ab8 <InitializeMesh_2+0x160>
  400970:	97fffef8 	bl	400550 <random@plt>
  400974:	2a0003e4 	mov	w4, w0
  400978:	900008a0 	adrp	x0, 514000 <ms1+0xf3fc0>
  40097c:	910a0002 	add	x2, x0, #0x280
  400980:	b9801be3 	ldrsw	x3, [sp, #24]
  400984:	b9801fe1 	ldrsw	x1, [sp, #28]
  400988:	aa0103e0 	mov	x0, x1
  40098c:	d37be800 	lsl	x0, x0, #5
  400990:	cb010000 	sub	x0, x0, x1
  400994:	d37ef400 	lsl	x0, x0, #2
  400998:	8b010000 	add	x0, x0, x1
  40099c:	d37ef400 	lsl	x0, x0, #2
  4009a0:	8b030000 	add	x0, x0, x3
  4009a4:	b8207844 	str	w4, [x2, x0, lsl #2]
  4009a8:	900008a0 	adrp	x0, 514000 <ms1+0xf3fc0>
  4009ac:	910a0002 	add	x2, x0, #0x280
  4009b0:	b9801be3 	ldrsw	x3, [sp, #24]
  4009b4:	b9801fe1 	ldrsw	x1, [sp, #28]
  4009b8:	aa0103e0 	mov	x0, x1
  4009bc:	d37be800 	lsl	x0, x0, #5
  4009c0:	cb010000 	sub	x0, x0, x1
  4009c4:	d37ef400 	lsl	x0, x0, #2
  4009c8:	8b010000 	add	x0, x0, x1
  4009cc:	d37ef400 	lsl	x0, x0, #2
  4009d0:	8b030000 	add	x0, x0, x3
  4009d4:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  4009d8:	b90017e0 	str	w0, [sp, #20]
  4009dc:	900008a0 	adrp	x0, 514000 <ms1+0xf3fc0>
  4009e0:	910a0002 	add	x2, x0, #0x280
  4009e4:	b9801be3 	ldrsw	x3, [sp, #24]
  4009e8:	b9801fe1 	ldrsw	x1, [sp, #28]
  4009ec:	aa0103e0 	mov	x0, x1
  4009f0:	d37be800 	lsl	x0, x0, #5
  4009f4:	cb010000 	sub	x0, x0, x1
  4009f8:	d37ef400 	lsl	x0, x0, #2
  4009fc:	8b010000 	add	x0, x0, x1
  400a00:	d37ef400 	lsl	x0, x0, #2
  400a04:	8b030000 	add	x0, x0, x3
  400a08:	b8607841 	ldr	w1, [x2, x0, lsl #2]
  400a0c:	5290d4e0 	mov	w0, #0x86a7                	// #34471
  400a10:	72a00020 	movk	w0, #0x1, lsl #16
  400a14:	6b00003f 	cmp	w1, w0
  400a18:	540004ad 	b.le	400aac <InitializeMesh_2+0x154>
  400a1c:	900008a0 	adrp	x0, 514000 <ms1+0xf3fc0>
  400a20:	910a0002 	add	x2, x0, #0x280
  400a24:	b9801be3 	ldrsw	x3, [sp, #24]
  400a28:	b9801fe1 	ldrsw	x1, [sp, #28]
  400a2c:	aa0103e0 	mov	x0, x1
  400a30:	d37be800 	lsl	x0, x0, #5
  400a34:	cb010000 	sub	x0, x0, x1
  400a38:	d37ef400 	lsl	x0, x0, #2
  400a3c:	8b010000 	add	x0, x0, x1
  400a40:	d37ef400 	lsl	x0, x0, #2
  400a44:	8b030000 	add	x0, x0, x3
  400a48:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400a4c:	529555a1 	mov	w1, #0xaaad                	// #43693
  400a50:	72b4f841 	movk	w1, #0xa7c2, lsl #16
  400a54:	9b217c01 	smull	x1, w0, w1
  400a58:	d360fc21 	lsr	x1, x1, #32
  400a5c:	0b010001 	add	w1, w0, w1
  400a60:	13107c22 	asr	w2, w1, #16
  400a64:	131f7c01 	asr	w1, w0, #31
  400a68:	4b010041 	sub	w1, w2, w1
  400a6c:	5290d4e2 	mov	w2, #0x86a7                	// #34471
  400a70:	72a00022 	movk	w2, #0x1, lsl #16
  400a74:	1b027c21 	mul	w1, w1, w2
  400a78:	4b010001 	sub	w1, w0, w1
  400a7c:	900008a0 	adrp	x0, 514000 <ms1+0xf3fc0>
  400a80:	910a0003 	add	x3, x0, #0x280
  400a84:	b9801be4 	ldrsw	x4, [sp, #24]
  400a88:	b9801fe2 	ldrsw	x2, [sp, #28]
  400a8c:	aa0203e0 	mov	x0, x2
  400a90:	d37be800 	lsl	x0, x0, #5
  400a94:	cb020000 	sub	x0, x0, x2
  400a98:	d37ef400 	lsl	x0, x0, #2
  400a9c:	8b020000 	add	x0, x0, x2
  400aa0:	d37ef400 	lsl	x0, x0, #2
  400aa4:	8b040000 	add	x0, x0, x4
  400aa8:	b8207861 	str	w1, [x3, x0, lsl #2]
  400aac:	b9401fe0 	ldr	w0, [sp, #28]
  400ab0:	11000400 	add	w0, w0, #0x1
  400ab4:	b9001fe0 	str	w0, [sp, #28]
  400ab8:	b9401fe0 	ldr	w0, [sp, #28]
  400abc:	7107cc1f 	cmp	w0, #0x1f3
  400ac0:	54fff58d 	b.le	400970 <InitializeMesh_2+0x18>
  400ac4:	b9401be0 	ldr	w0, [sp, #24]
  400ac8:	11000400 	add	w0, w0, #0x1
  400acc:	b9001be0 	str	w0, [sp, #24]
  400ad0:	b9401be0 	ldr	w0, [sp, #24]
  400ad4:	7107cc1f 	cmp	w0, #0x1f3
  400ad8:	54fff48d 	b.le	400968 <InitializeMesh_2+0x10>
  400adc:	d503201f 	nop
  400ae0:	d503201f 	nop
  400ae4:	a8c27bfd 	ldp	x29, x30, [sp], #32
  400ae8:	d65f03c0 	ret

0000000000400aec <CompareMesh>:
  400aec:	d10043ff 	sub	sp, sp, #0x10
  400af0:	b9000fff 	str	wzr, [sp, #12]
  400af4:	b90007ff 	str	wzr, [sp, #4]
  400af8:	1400002d 	b	400bac <CompareMesh+0xc0>
  400afc:	b9000bff 	str	wzr, [sp, #8]
  400b00:	14000025 	b	400b94 <CompareMesh+0xa8>
  400b04:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400b08:	91010002 	add	x2, x0, #0x40
  400b0c:	b98007e3 	ldrsw	x3, [sp, #4]
  400b10:	b9800be1 	ldrsw	x1, [sp, #8]
  400b14:	aa0103e0 	mov	x0, x1
  400b18:	d37be800 	lsl	x0, x0, #5
  400b1c:	cb010000 	sub	x0, x0, x1
  400b20:	d37ef400 	lsl	x0, x0, #2
  400b24:	8b010000 	add	x0, x0, x1
  400b28:	d37ef400 	lsl	x0, x0, #2
  400b2c:	8b030000 	add	x0, x0, x3
  400b30:	b8607842 	ldr	w2, [x2, x0, lsl #2]
  400b34:	900008a0 	adrp	x0, 514000 <ms1+0xf3fc0>
  400b38:	910a0003 	add	x3, x0, #0x280
  400b3c:	b98007e4 	ldrsw	x4, [sp, #4]
  400b40:	b9800be1 	ldrsw	x1, [sp, #8]
  400b44:	aa0103e0 	mov	x0, x1
  400b48:	d37be800 	lsl	x0, x0, #5
  400b4c:	cb010000 	sub	x0, x0, x1
  400b50:	d37ef400 	lsl	x0, x0, #2
  400b54:	8b010000 	add	x0, x0, x1
  400b58:	d37ef400 	lsl	x0, x0, #2
  400b5c:	8b040000 	add	x0, x0, x4
  400b60:	b8607860 	ldr	w0, [x3, x0, lsl #2]
  400b64:	6b00005f 	cmp	w2, w0
  400b68:	540000ad 	b.le	400b7c <CompareMesh+0x90>
  400b6c:	b9400fe0 	ldr	w0, [sp, #12]
  400b70:	11000400 	add	w0, w0, #0x1
  400b74:	b9000fe0 	str	w0, [sp, #12]
  400b78:	14000004 	b	400b88 <CompareMesh+0x9c>
  400b7c:	b9400fe0 	ldr	w0, [sp, #12]
  400b80:	51000400 	sub	w0, w0, #0x1
  400b84:	b9000fe0 	str	w0, [sp, #12]
  400b88:	b9400be0 	ldr	w0, [sp, #8]
  400b8c:	11000400 	add	w0, w0, #0x1
  400b90:	b9000be0 	str	w0, [sp, #8]
  400b94:	b9400be0 	ldr	w0, [sp, #8]
  400b98:	7107cc1f 	cmp	w0, #0x1f3
  400b9c:	54fffb4d 	b.le	400b04 <CompareMesh+0x18>
  400ba0:	b94007e0 	ldr	w0, [sp, #4]
  400ba4:	11000400 	add	w0, w0, #0x1
  400ba8:	b90007e0 	str	w0, [sp, #4]
  400bac:	b94007e0 	ldr	w0, [sp, #4]
  400bb0:	7107cc1f 	cmp	w0, #0x1f3
  400bb4:	54fffa4d 	b.le	400afc <CompareMesh+0x10>
  400bb8:	b9400fe0 	ldr	w0, [sp, #12]
  400bbc:	7100001f 	cmp	w0, #0x0
  400bc0:	5400006b 	b.lt	400bcc <CompareMesh+0xe0>  // b.tstop
  400bc4:	52800020 	mov	w0, #0x1                   	// #1
  400bc8:	14000002 	b	400bd0 <CompareMesh+0xe4>
  400bcc:	52800000 	mov	w0, #0x0                   	// #0
  400bd0:	910043ff 	add	sp, sp, #0x10
  400bd4:	d65f03c0 	ret

0000000000400bd8 <Mesh2>:
  400bd8:	d10043ff 	sub	sp, sp, #0x10
  400bdc:	b9000fff 	str	wzr, [sp, #12]
  400be0:	1400005e 	b	400d58 <Mesh2+0x180>
  400be4:	b9000bff 	str	wzr, [sp, #8]
  400be8:	14000056 	b	400d40 <Mesh2+0x168>
  400bec:	b90007ff 	str	wzr, [sp, #4]
  400bf0:	1400004e 	b	400d28 <Mesh2+0x150>
  400bf4:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400bf8:	91010002 	add	x2, x0, #0x40
  400bfc:	b98007e3 	ldrsw	x3, [sp, #4]
  400c00:	b9800fe1 	ldrsw	x1, [sp, #12]
  400c04:	aa0103e0 	mov	x0, x1
  400c08:	d37be800 	lsl	x0, x0, #5
  400c0c:	cb010000 	sub	x0, x0, x1
  400c10:	d37ef400 	lsl	x0, x0, #2
  400c14:	8b010000 	add	x0, x0, x1
  400c18:	d37ef400 	lsl	x0, x0, #2
  400c1c:	8b030000 	add	x0, x0, x3
  400c20:	b8607842 	ldr	w2, [x2, x0, lsl #2]
  400c24:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400c28:	91010003 	add	x3, x0, #0x40
  400c2c:	b98007e4 	ldrsw	x4, [sp, #4]
  400c30:	b9800fe1 	ldrsw	x1, [sp, #12]
  400c34:	aa0103e0 	mov	x0, x1
  400c38:	d37be800 	lsl	x0, x0, #5
  400c3c:	cb010000 	sub	x0, x0, x1
  400c40:	d37ef400 	lsl	x0, x0, #2
  400c44:	8b010000 	add	x0, x0, x1
  400c48:	d37ef400 	lsl	x0, x0, #2
  400c4c:	8b040000 	add	x0, x0, x4
  400c50:	b8607860 	ldr	w0, [x3, x0, lsl #2]
  400c54:	1b007c43 	mul	w3, w2, w0
  400c58:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400c5c:	91010002 	add	x2, x0, #0x40
  400c60:	b9800be4 	ldrsw	x4, [sp, #8]
  400c64:	b9800fe1 	ldrsw	x1, [sp, #12]
  400c68:	aa0103e0 	mov	x0, x1
  400c6c:	d37be800 	lsl	x0, x0, #5
  400c70:	cb010000 	sub	x0, x0, x1
  400c74:	d37ef400 	lsl	x0, x0, #2
  400c78:	8b010000 	add	x0, x0, x1
  400c7c:	d37ef400 	lsl	x0, x0, #2
  400c80:	8b040000 	add	x0, x0, x4
  400c84:	b8207843 	str	w3, [x2, x0, lsl #2]
  400c88:	900008a0 	adrp	x0, 514000 <ms1+0xf3fc0>
  400c8c:	910a0002 	add	x2, x0, #0x280
  400c90:	b9800be3 	ldrsw	x3, [sp, #8]
  400c94:	b98007e1 	ldrsw	x1, [sp, #4]
  400c98:	aa0103e0 	mov	x0, x1
  400c9c:	d37be800 	lsl	x0, x0, #5
  400ca0:	cb010000 	sub	x0, x0, x1
  400ca4:	d37ef400 	lsl	x0, x0, #2
  400ca8:	8b010000 	add	x0, x0, x1
  400cac:	d37ef400 	lsl	x0, x0, #2
  400cb0:	8b030000 	add	x0, x0, x3
  400cb4:	b8607842 	ldr	w2, [x2, x0, lsl #2]
  400cb8:	900008a0 	adrp	x0, 514000 <ms1+0xf3fc0>
  400cbc:	910a0003 	add	x3, x0, #0x280
  400cc0:	b9800be4 	ldrsw	x4, [sp, #8]
  400cc4:	b98007e1 	ldrsw	x1, [sp, #4]
  400cc8:	aa0103e0 	mov	x0, x1
  400ccc:	d37be800 	lsl	x0, x0, #5
  400cd0:	cb010000 	sub	x0, x0, x1
  400cd4:	d37ef400 	lsl	x0, x0, #2
  400cd8:	8b010000 	add	x0, x0, x1
  400cdc:	d37ef400 	lsl	x0, x0, #2
  400ce0:	8b040000 	add	x0, x0, x4
  400ce4:	b8607860 	ldr	w0, [x3, x0, lsl #2]
  400ce8:	1b007c43 	mul	w3, w2, w0
  400cec:	900008a0 	adrp	x0, 514000 <ms1+0xf3fc0>
  400cf0:	910a0002 	add	x2, x0, #0x280
  400cf4:	b9800be4 	ldrsw	x4, [sp, #8]
  400cf8:	b9800fe1 	ldrsw	x1, [sp, #12]
  400cfc:	aa0103e0 	mov	x0, x1
  400d00:	d37be800 	lsl	x0, x0, #5
  400d04:	cb010000 	sub	x0, x0, x1
  400d08:	d37ef400 	lsl	x0, x0, #2
  400d0c:	8b010000 	add	x0, x0, x1
  400d10:	d37ef400 	lsl	x0, x0, #2
  400d14:	8b040000 	add	x0, x0, x4
  400d18:	b8207843 	str	w3, [x2, x0, lsl #2]
  400d1c:	b94007e0 	ldr	w0, [sp, #4]
  400d20:	11000400 	add	w0, w0, #0x1
  400d24:	b90007e0 	str	w0, [sp, #4]
  400d28:	b94007e0 	ldr	w0, [sp, #4]
  400d2c:	7107cc1f 	cmp	w0, #0x1f3
  400d30:	54fff62d 	b.le	400bf4 <Mesh2+0x1c>
  400d34:	b9400be0 	ldr	w0, [sp, #8]
  400d38:	11000400 	add	w0, w0, #0x1
  400d3c:	b9000be0 	str	w0, [sp, #8]
  400d40:	b9400be0 	ldr	w0, [sp, #8]
  400d44:	7107cc1f 	cmp	w0, #0x1f3
  400d48:	54fff52d 	b.le	400bec <Mesh2+0x14>
  400d4c:	b9400fe0 	ldr	w0, [sp, #12]
  400d50:	11000400 	add	w0, w0, #0x1
  400d54:	b9000fe0 	str	w0, [sp, #12]
  400d58:	b9400fe0 	ldr	w0, [sp, #12]
  400d5c:	7107cc1f 	cmp	w0, #0x1f3
  400d60:	54fff42d 	b.le	400be4 <Mesh2+0xc>
  400d64:	52800000 	mov	w0, #0x0                   	// #0
  400d68:	910043ff 	add	sp, sp, #0x10
  400d6c:	d65f03c0 	ret

0000000000400d70 <SwapMesh>:
  400d70:	d10043ff 	sub	sp, sp, #0x10
  400d74:	b9000bff 	str	wzr, [sp, #8]
  400d78:	1400003e 	b	400e70 <SwapMesh+0x100>
  400d7c:	b9000fff 	str	wzr, [sp, #12]
  400d80:	14000036 	b	400e58 <SwapMesh+0xe8>
  400d84:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400d88:	91010002 	add	x2, x0, #0x40
  400d8c:	b9800be3 	ldrsw	x3, [sp, #8]
  400d90:	b9800fe1 	ldrsw	x1, [sp, #12]
  400d94:	aa0103e0 	mov	x0, x1
  400d98:	d37be800 	lsl	x0, x0, #5
  400d9c:	cb010000 	sub	x0, x0, x1
  400da0:	d37ef400 	lsl	x0, x0, #2
  400da4:	8b010000 	add	x0, x0, x1
  400da8:	d37ef400 	lsl	x0, x0, #2
  400dac:	8b030000 	add	x0, x0, x3
  400db0:	b8607840 	ldr	w0, [x2, x0, lsl #2]
  400db4:	b90007e0 	str	w0, [sp, #4]
  400db8:	900008a0 	adrp	x0, 514000 <ms1+0xf3fc0>
  400dbc:	910a0002 	add	x2, x0, #0x280
  400dc0:	b9800be3 	ldrsw	x3, [sp, #8]
  400dc4:	b9800fe1 	ldrsw	x1, [sp, #12]
  400dc8:	aa0103e0 	mov	x0, x1
  400dcc:	d37be800 	lsl	x0, x0, #5
  400dd0:	cb010000 	sub	x0, x0, x1
  400dd4:	d37ef400 	lsl	x0, x0, #2
  400dd8:	8b010000 	add	x0, x0, x1
  400ddc:	d37ef400 	lsl	x0, x0, #2
  400de0:	8b030000 	add	x0, x0, x3
  400de4:	b8607843 	ldr	w3, [x2, x0, lsl #2]
  400de8:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400dec:	91010002 	add	x2, x0, #0x40
  400df0:	b9800be4 	ldrsw	x4, [sp, #8]
  400df4:	b9800fe1 	ldrsw	x1, [sp, #12]
  400df8:	aa0103e0 	mov	x0, x1
  400dfc:	d37be800 	lsl	x0, x0, #5
  400e00:	cb010000 	sub	x0, x0, x1
  400e04:	d37ef400 	lsl	x0, x0, #2
  400e08:	8b010000 	add	x0, x0, x1
  400e0c:	d37ef400 	lsl	x0, x0, #2
  400e10:	8b040000 	add	x0, x0, x4
  400e14:	b8207843 	str	w3, [x2, x0, lsl #2]
  400e18:	900008a0 	adrp	x0, 514000 <ms1+0xf3fc0>
  400e1c:	910a0002 	add	x2, x0, #0x280
  400e20:	b9800be3 	ldrsw	x3, [sp, #8]
  400e24:	b9800fe1 	ldrsw	x1, [sp, #12]
  400e28:	aa0103e0 	mov	x0, x1
  400e2c:	d37be800 	lsl	x0, x0, #5
  400e30:	cb010000 	sub	x0, x0, x1
  400e34:	d37ef400 	lsl	x0, x0, #2
  400e38:	8b010000 	add	x0, x0, x1
  400e3c:	d37ef400 	lsl	x0, x0, #2
  400e40:	8b030000 	add	x0, x0, x3
  400e44:	b94007e1 	ldr	w1, [sp, #4]
  400e48:	b8207841 	str	w1, [x2, x0, lsl #2]
  400e4c:	b9400fe0 	ldr	w0, [sp, #12]
  400e50:	11000400 	add	w0, w0, #0x1
  400e54:	b9000fe0 	str	w0, [sp, #12]
  400e58:	b9400fe0 	ldr	w0, [sp, #12]
  400e5c:	7107cc1f 	cmp	w0, #0x1f3
  400e60:	54fff92d 	b.le	400d84 <SwapMesh+0x14>
  400e64:	b9400be0 	ldr	w0, [sp, #8]
  400e68:	11000400 	add	w0, w0, #0x1
  400e6c:	b9000be0 	str	w0, [sp, #8]
  400e70:	b9400be0 	ldr	w0, [sp, #8]
  400e74:	7107cc1f 	cmp	w0, #0x1f3
  400e78:	54fff82d 	b.le	400d7c <SwapMesh+0xc>
  400e7c:	52800000 	mov	w0, #0x0                   	// #0
  400e80:	910043ff 	add	sp, sp, #0x10
  400e84:	d65f03c0 	ret

0000000000400e88 <Mesh_dot>:
  400e88:	d10043ff 	sub	sp, sp, #0x10
  400e8c:	b9000fff 	str	wzr, [sp, #12]
  400e90:	14000046 	b	400fa8 <Mesh_dot+0x120>
  400e94:	b9000bff 	str	wzr, [sp, #8]
  400e98:	1400003e 	b	400f90 <Mesh_dot+0x108>
  400e9c:	b90007ff 	str	wzr, [sp, #4]
  400ea0:	14000036 	b	400f78 <Mesh_dot+0xf0>
  400ea4:	90001040 	adrp	x0, 608000 <ms2+0xf3d80>
  400ea8:	91130002 	add	x2, x0, #0x4c0
  400eac:	b9800be3 	ldrsw	x3, [sp, #8]
  400eb0:	b9800fe1 	ldrsw	x1, [sp, #12]
  400eb4:	aa0103e0 	mov	x0, x1
  400eb8:	d37be800 	lsl	x0, x0, #5
  400ebc:	cb010000 	sub	x0, x0, x1
  400ec0:	d37ef400 	lsl	x0, x0, #2
  400ec4:	8b010000 	add	x0, x0, x1
  400ec8:	d37ef400 	lsl	x0, x0, #2
  400ecc:	8b030000 	add	x0, x0, x3
  400ed0:	b8607842 	ldr	w2, [x2, x0, lsl #2]
  400ed4:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400ed8:	91010003 	add	x3, x0, #0x40
  400edc:	b98007e4 	ldrsw	x4, [sp, #4]
  400ee0:	b9800fe1 	ldrsw	x1, [sp, #12]
  400ee4:	aa0103e0 	mov	x0, x1
  400ee8:	d37be800 	lsl	x0, x0, #5
  400eec:	cb010000 	sub	x0, x0, x1
  400ef0:	d37ef400 	lsl	x0, x0, #2
  400ef4:	8b010000 	add	x0, x0, x1
  400ef8:	d37ef400 	lsl	x0, x0, #2
  400efc:	8b040000 	add	x0, x0, x4
  400f00:	b8607863 	ldr	w3, [x3, x0, lsl #2]
  400f04:	900008a0 	adrp	x0, 514000 <ms1+0xf3fc0>
  400f08:	910a0004 	add	x4, x0, #0x280
  400f0c:	b9800be5 	ldrsw	x5, [sp, #8]
  400f10:	b98007e1 	ldrsw	x1, [sp, #4]
  400f14:	aa0103e0 	mov	x0, x1
  400f18:	d37be800 	lsl	x0, x0, #5
  400f1c:	cb010000 	sub	x0, x0, x1
  400f20:	d37ef400 	lsl	x0, x0, #2
  400f24:	8b010000 	add	x0, x0, x1
  400f28:	d37ef400 	lsl	x0, x0, #2
  400f2c:	8b050000 	add	x0, x0, x5
  400f30:	b8607880 	ldr	w0, [x4, x0, lsl #2]
  400f34:	1b007c60 	mul	w0, w3, w0
  400f38:	0b000043 	add	w3, w2, w0
  400f3c:	90001040 	adrp	x0, 608000 <ms2+0xf3d80>
  400f40:	91130002 	add	x2, x0, #0x4c0
  400f44:	b9800be4 	ldrsw	x4, [sp, #8]
  400f48:	b9800fe1 	ldrsw	x1, [sp, #12]
  400f4c:	aa0103e0 	mov	x0, x1
  400f50:	d37be800 	lsl	x0, x0, #5
  400f54:	cb010000 	sub	x0, x0, x1
  400f58:	d37ef400 	lsl	x0, x0, #2
  400f5c:	8b010000 	add	x0, x0, x1
  400f60:	d37ef400 	lsl	x0, x0, #2
  400f64:	8b040000 	add	x0, x0, x4
  400f68:	b8207843 	str	w3, [x2, x0, lsl #2]
  400f6c:	b94007e0 	ldr	w0, [sp, #4]
  400f70:	11000400 	add	w0, w0, #0x1
  400f74:	b90007e0 	str	w0, [sp, #4]
  400f78:	b94007e0 	ldr	w0, [sp, #4]
  400f7c:	7107cc1f 	cmp	w0, #0x1f3
  400f80:	54fff92d 	b.le	400ea4 <Mesh_dot+0x1c>
  400f84:	b9400be0 	ldr	w0, [sp, #8]
  400f88:	11000400 	add	w0, w0, #0x1
  400f8c:	b9000be0 	str	w0, [sp, #8]
  400f90:	b9400be0 	ldr	w0, [sp, #8]
  400f94:	7107cc1f 	cmp	w0, #0x1f3
  400f98:	54fff82d 	b.le	400e9c <Mesh_dot+0x14>
  400f9c:	b9400fe0 	ldr	w0, [sp, #12]
  400fa0:	11000400 	add	w0, w0, #0x1
  400fa4:	b9000fe0 	str	w0, [sp, #12]
  400fa8:	b9400fe0 	ldr	w0, [sp, #12]
  400fac:	7107cc1f 	cmp	w0, #0x1f3
  400fb0:	54fff72d 	b.le	400e94 <Mesh_dot+0xc>
  400fb4:	52800000 	mov	w0, #0x0                   	// #0
  400fb8:	910043ff 	add	sp, sp, #0x10
  400fbc:	d65f03c0 	ret

0000000000400fc0 <ComplexDataHandle>:
  400fc0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  400fc4:	910003fd 	mov	x29, sp
  400fc8:	94000007 	bl	400fe4 <ManiplateData1>
  400fcc:	b9001fe0 	str	w0, [sp, #28]
  400fd0:	94000051 	bl	401114 <ManiplateData2>
  400fd4:	b9001fe0 	str	w0, [sp, #28]
  400fd8:	52800000 	mov	w0, #0x0                   	// #0
  400fdc:	a8c27bfd 	ldp	x29, x30, [sp], #32
  400fe0:	d65f03c0 	ret

0000000000400fe4 <ManiplateData1>:
  400fe4:	d10043ff 	sub	sp, sp, #0x10
  400fe8:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400fec:	91010000 	add	x0, x0, #0x40
  400ff0:	52800281 	mov	w1, #0x14                  	// #20
  400ff4:	b907d401 	str	w1, [x0, #2004]
  400ff8:	90000100 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  400ffc:	91010000 	add	x0, x0, #0x40
  401000:	b947d400 	ldr	w0, [x0, #2004]
  401004:	b9000fe0 	str	w0, [sp, #12]
  401008:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40100c:	91010000 	add	x0, x0, #0x40
  401010:	528003c1 	mov	w1, #0x1e                  	// #30
  401014:	b907d401 	str	w1, [x0, #2004]
  401018:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40101c:	91010000 	add	x0, x0, #0x40
  401020:	b947d400 	ldr	w0, [x0, #2004]
  401024:	b9000fe0 	str	w0, [sp, #12]
  401028:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40102c:	91010000 	add	x0, x0, #0x40
  401030:	b947d400 	ldr	w0, [x0, #2004]
  401034:	b9000fe0 	str	w0, [sp, #12]
  401038:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40103c:	91010000 	add	x0, x0, #0x40
  401040:	52800641 	mov	w1, #0x32                  	// #50
  401044:	b90fa401 	str	w1, [x0, #4004]
  401048:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40104c:	91010000 	add	x0, x0, #0x40
  401050:	52800781 	mov	w1, #0x3c                  	// #60
  401054:	b90fa401 	str	w1, [x0, #4004]
  401058:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40105c:	91010000 	add	x0, x0, #0x40
  401060:	528008c1 	mov	w1, #0x46                  	// #70
  401064:	b90fa401 	str	w1, [x0, #4004]
  401068:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40106c:	91010000 	add	x0, x0, #0x40
  401070:	b94fa400 	ldr	w0, [x0, #4004]
  401074:	b9000fe0 	str	w0, [sp, #12]
  401078:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40107c:	91010000 	add	x0, x0, #0x40
  401080:	b94fa400 	ldr	w0, [x0, #4004]
  401084:	b9000fe0 	str	w0, [sp, #12]
  401088:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40108c:	91010000 	add	x0, x0, #0x40
  401090:	52800c61 	mov	w1, #0x63                  	// #99
  401094:	b90fa401 	str	w1, [x0, #4004]
  401098:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  40109c:	91010000 	add	x0, x0, #0x40
  4010a0:	b94fa400 	ldr	w0, [x0, #4004]
  4010a4:	b9000fe0 	str	w0, [sp, #12]
  4010a8:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4010ac:	91010000 	add	x0, x0, #0x40
  4010b0:	52800501 	mov	w1, #0x28                  	// #40
  4010b4:	b907d801 	str	w1, [x0, #2008]
  4010b8:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4010bc:	91010000 	add	x0, x0, #0x40
  4010c0:	b947d400 	ldr	w0, [x0, #2004]
  4010c4:	b9000fe0 	str	w0, [sp, #12]
  4010c8:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4010cc:	91010000 	add	x0, x0, #0x40
  4010d0:	528003c1 	mov	w1, #0x1e                  	// #30
  4010d4:	b907d801 	str	w1, [x0, #2008]
  4010d8:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4010dc:	91010000 	add	x0, x0, #0x40
  4010e0:	b947d800 	ldr	w0, [x0, #2008]
  4010e4:	b9000fe0 	str	w0, [sp, #12]
  4010e8:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4010ec:	91010000 	add	x0, x0, #0x40
  4010f0:	b947d800 	ldr	w0, [x0, #2008]
  4010f4:	b9000fe0 	str	w0, [sp, #12]
  4010f8:	f00000e0 	adrp	x0, 420000 <__libc_start_main@GLIBC_2.34>
  4010fc:	91010000 	add	x0, x0, #0x40
  401100:	52800641 	mov	w1, #0x32                  	// #50
  401104:	b907d801 	str	w1, [x0, #2008]
  401108:	52800000 	mov	w0, #0x0                   	// #0
  40110c:	910043ff 	add	sp, sp, #0x10
  401110:	d65f03c0 	ret

0000000000401114 <ManiplateData2>:
  401114:	d10043ff 	sub	sp, sp, #0x10
  401118:	f0000880 	adrp	x0, 514000 <ms1+0xf3fc0>
  40111c:	910a0000 	add	x0, x0, #0x280
  401120:	52800281 	mov	w1, #0x14                  	// #20
  401124:	b907d401 	str	w1, [x0, #2004]
  401128:	f0000880 	adrp	x0, 514000 <ms1+0xf3fc0>
  40112c:	910a0000 	add	x0, x0, #0x280
  401130:	b947d400 	ldr	w0, [x0, #2004]
  401134:	b9000fe0 	str	w0, [sp, #12]
  401138:	f0000880 	adrp	x0, 514000 <ms1+0xf3fc0>
  40113c:	910a0000 	add	x0, x0, #0x280
  401140:	528003c1 	mov	w1, #0x1e                  	// #30
  401144:	b907d401 	str	w1, [x0, #2004]
  401148:	f0000880 	adrp	x0, 514000 <ms1+0xf3fc0>
  40114c:	910a0000 	add	x0, x0, #0x280
  401150:	b947d400 	ldr	w0, [x0, #2004]
  401154:	b9000fe0 	str	w0, [sp, #12]
  401158:	f0000880 	adrp	x0, 514000 <ms1+0xf3fc0>
  40115c:	910a0000 	add	x0, x0, #0x280
  401160:	b947d400 	ldr	w0, [x0, #2004]
  401164:	b9000fe0 	str	w0, [sp, #12]
  401168:	f0000880 	adrp	x0, 514000 <ms1+0xf3fc0>
  40116c:	910a0000 	add	x0, x0, #0x280
  401170:	52800641 	mov	w1, #0x32                  	// #50
  401174:	b90fa401 	str	w1, [x0, #4004]
  401178:	f0000880 	adrp	x0, 514000 <ms1+0xf3fc0>
  40117c:	910a0000 	add	x0, x0, #0x280
  401180:	52800781 	mov	w1, #0x3c                  	// #60
  401184:	b90fa401 	str	w1, [x0, #4004]
  401188:	f0000880 	adrp	x0, 514000 <ms1+0xf3fc0>
  40118c:	910a0000 	add	x0, x0, #0x280
  401190:	528008c1 	mov	w1, #0x46                  	// #70
  401194:	b90fa401 	str	w1, [x0, #4004]
  401198:	f0000880 	adrp	x0, 514000 <ms1+0xf3fc0>
  40119c:	910a0000 	add	x0, x0, #0x280
  4011a0:	b94fa400 	ldr	w0, [x0, #4004]
  4011a4:	b9000fe0 	str	w0, [sp, #12]
  4011a8:	f0000880 	adrp	x0, 514000 <ms1+0xf3fc0>
  4011ac:	910a0000 	add	x0, x0, #0x280
  4011b0:	b94fa400 	ldr	w0, [x0, #4004]
  4011b4:	b9000fe0 	str	w0, [sp, #12]
  4011b8:	f0000880 	adrp	x0, 514000 <ms1+0xf3fc0>
  4011bc:	910a0000 	add	x0, x0, #0x280
  4011c0:	52800c61 	mov	w1, #0x63                  	// #99
  4011c4:	b90fa401 	str	w1, [x0, #4004]
  4011c8:	f0000880 	adrp	x0, 514000 <ms1+0xf3fc0>
  4011cc:	910a0000 	add	x0, x0, #0x280
  4011d0:	b94fa400 	ldr	w0, [x0, #4004]
  4011d4:	b9000fe0 	str	w0, [sp, #12]
  4011d8:	f0000880 	adrp	x0, 514000 <ms1+0xf3fc0>
  4011dc:	910a0000 	add	x0, x0, #0x280
  4011e0:	52800501 	mov	w1, #0x28                  	// #40
  4011e4:	b907d801 	str	w1, [x0, #2008]
  4011e8:	f0000880 	adrp	x0, 514000 <ms1+0xf3fc0>
  4011ec:	910a0000 	add	x0, x0, #0x280
  4011f0:	b947d800 	ldr	w0, [x0, #2008]
  4011f4:	b9000fe0 	str	w0, [sp, #12]
  4011f8:	f0000880 	adrp	x0, 514000 <ms1+0xf3fc0>
  4011fc:	910a0000 	add	x0, x0, #0x280
  401200:	528003c1 	mov	w1, #0x1e                  	// #30
  401204:	b907d801 	str	w1, [x0, #2008]
  401208:	f0000880 	adrp	x0, 514000 <ms1+0xf3fc0>
  40120c:	910a0000 	add	x0, x0, #0x280
  401210:	b947d800 	ldr	w0, [x0, #2008]
  401214:	b9000fe0 	str	w0, [sp, #12]
  401218:	f0000880 	adrp	x0, 514000 <ms1+0xf3fc0>
  40121c:	910a0000 	add	x0, x0, #0x280
  401220:	b947d800 	ldr	w0, [x0, #2008]
  401224:	b9000fe0 	str	w0, [sp, #12]
  401228:	f0000880 	adrp	x0, 514000 <ms1+0xf3fc0>
  40122c:	910a0000 	add	x0, x0, #0x280
  401230:	52800641 	mov	w1, #0x32                  	// #50
  401234:	b907d801 	str	w1, [x0, #2008]
  401238:	52800000 	mov	w0, #0x0                   	// #0
  40123c:	910043ff 	add	sp, sp, #0x10
  401240:	d65f03c0 	ret

Disassembly of section .fini:

0000000000401244 <_fini>:
  401244:	d503201f 	nop
  401248:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  40124c:	910003fd 	mov	x29, sp
  401250:	a8c17bfd 	ldp	x29, x30, [sp], #16
  401254:	d65f03c0 	ret

Disassembly of section .rodata:

0000000000401258 <_IO_stdin_used>:
  401258:	00020001 	.inst	0x00020001 ; undefined

Disassembly of section .eh_frame_hdr:

000000000040125c <__GNU_EH_FRAME_HDR>:
  40125c:	3b031b01 	.inst	0x3b031b01 ; undefined
  401260:	00000088 	udf	#136
  401264:	00000010 	udf	#16
  401268:	fffff364 	.inst	0xfffff364 ; undefined
  40126c:	000000a0 	udf	#160
  401270:	fffff3a4 	.inst	0xfffff3a4 ; undefined
  401274:	000000b4 	udf	#180
  401278:	fffff3c4 	.inst	0xfffff3c4 ; undefined
  40127c:	000000cc 	udf	#204
  401280:	fffff3f4 	.inst	0xfffff3f4 ; undefined
  401284:	000000e0 	udf	#224
  401288:	fffff434 	.inst	0xfffff434 ; undefined
  40128c:	000000f4 	udf	#244
  401290:	fffff464 	.inst	0xfffff464 ; undefined
  401294:	00000118 	udf	#280
  401298:	fffff468 	.inst	0xfffff468 ; undefined
  40129c:	0000012c 	udf	#300
  4012a0:	fffff568 	.inst	0xfffff568 ; undefined
  4012a4:	0000014c 	udf	#332
  4012a8:	fffff6fc 	.inst	0xfffff6fc ; undefined
  4012ac:	0000016c 	udf	#364
  4012b0:	fffff890 	.inst	0xfffff890 ; undefined
  4012b4:	0000018c 	udf	#396
  4012b8:	fffff97c 	.inst	0xfffff97c ; undefined
  4012bc:	000001a4 	udf	#420
  4012c0:	fffffb14 	.inst	0xfffffb14 ; undefined
  4012c4:	000001bc 	udf	#444
  4012c8:	fffffc2c 	.inst	0xfffffc2c ; undefined
  4012cc:	000001d4 	udf	#468
  4012d0:	fffffd64 	.inst	0xfffffd64 ; undefined
  4012d4:	000001ec 	udf	#492
  4012d8:	fffffd88 	.inst	0xfffffd88 ; undefined
  4012dc:	0000020c 	udf	#524
  4012e0:	fffffeb8 	.inst	0xfffffeb8 ; undefined
  4012e4:	00000224 	udf	#548

Disassembly of section .eh_frame:

00000000004012e8 <__FRAME_END__-0x1b0>:
  4012e8:	00000010 	udf	#16
  4012ec:	00000000 	udf	#0
  4012f0:	00527a01 	.inst	0x00527a01 ; undefined
  4012f4:	011e7804 	.inst	0x011e7804 ; undefined
  4012f8:	001f0c1b 	.inst	0x001f0c1b ; undefined
  4012fc:	00000010 	udf	#16
  401300:	00000018 	udf	#24
  401304:	fffff2bc 	.inst	0xfffff2bc ; undefined
  401308:	0000003c 	udf	#60
  40130c:	1e074100 	.inst	0x1e074100 ; undefined
  401310:	00000014 	udf	#20
  401314:	0000002c 	udf	#44
  401318:	fffff2e8 	.inst	0xfffff2e8 ; undefined
  40131c:	00000004 	udf	#4
	...
  401328:	00000010 	udf	#16
  40132c:	00000044 	udf	#68
  401330:	fffff2f0 	.inst	0xfffff2f0 ; undefined
  401334:	00000030 	udf	#48
  401338:	00000000 	udf	#0
  40133c:	00000010 	udf	#16
  401340:	00000058 	udf	#88
  401344:	fffff30c 	.inst	0xfffff30c ; undefined
  401348:	0000003c 	udf	#60
  40134c:	00000000 	udf	#0
  401350:	00000020 	udf	#32
  401354:	0000006c 	udf	#108
  401358:	fffff338 	.inst	0xfffff338 ; undefined
  40135c:	00000030 	udf	#48
  401360:	200e4100 	.inst	0x200e4100 ; undefined
  401364:	039e049d 	.inst	0x039e049d ; undefined
  401368:	48029342 	stlxrh	w2, w2, [x26]
  40136c:	0ed3ddde 	.inst	0x0ed3ddde ; undefined
  401370:	00000000 	udf	#0
  401374:	00000010 	udf	#16
  401378:	00000090 	udf	#144
  40137c:	fffff344 	.inst	0xfffff344 ; undefined
  401380:	00000004 	udf	#4
  401384:	00000000 	udf	#0
  401388:	0000001c 	udf	#28
  40138c:	000000a4 	udf	#164
  401390:	fffff334 	.inst	0xfffff334 ; undefined
  401394:	00000100 	udf	#256
  401398:	300e4100 	adr	x0, 41dbb9 <__FRAME_END__+0x1c721>
  40139c:	059e069d 	mov	z29.s, p14/z, #52
  4013a0:	0eddde7e 	.inst	0x0eddde7e ; undefined
  4013a4:	00000000 	udf	#0
  4013a8:	0000001c 	udf	#28
  4013ac:	000000c4 	udf	#196
  4013b0:	fffff414 	.inst	0xfffff414 ; undefined
  4013b4:	00000194 	udf	#404
  4013b8:	200e4100 	.inst	0x200e4100 ; undefined
  4013bc:	039e049d 	.inst	0x039e049d ; undefined
  4013c0:	ddde6302 	.inst	0xddde6302 ; undefined
  4013c4:	0000000e 	udf	#14
  4013c8:	0000001c 	udf	#28
  4013cc:	000000e4 	udf	#228
  4013d0:	fffff588 	.inst	0xfffff588 ; undefined
  4013d4:	00000194 	udf	#404
  4013d8:	200e4100 	.inst	0x200e4100 ; undefined
  4013dc:	039e049d 	.inst	0x039e049d ; undefined
  4013e0:	ddde6302 	.inst	0xddde6302 ; undefined
  4013e4:	0000000e 	udf	#14
  4013e8:	00000014 	udf	#20
  4013ec:	00000104 	udf	#260
  4013f0:	fffff6fc 	.inst	0xfffff6fc ; undefined
  4013f4:	000000ec 	udf	#236
  4013f8:	100e4100 	adr	x0, 41dc18 <__FRAME_END__+0x1c780>
  4013fc:	00000e79 	udf	#3705
  401400:	00000014 	udf	#20
  401404:	0000011c 	udf	#284
  401408:	fffff7d0 	.inst	0xfffff7d0 ; undefined
  40140c:	00000198 	udf	#408
  401410:	100e4100 	adr	x0, 41dc30 <__FRAME_END__+0x1c798>
  401414:	000e6402 	.inst	0x000e6402 ; undefined
  401418:	00000014 	udf	#20
  40141c:	00000134 	udf	#308
  401420:	fffff950 	.inst	0xfffff950 ; undefined
  401424:	00000118 	udf	#280
  401428:	100e4100 	adr	x0, 41dc48 <__FRAME_END__+0x1c7b0>
  40142c:	000e4402 	.inst	0x000e4402 ; undefined
  401430:	00000014 	udf	#20
  401434:	0000014c 	udf	#332
  401438:	fffffa50 	.inst	0xfffffa50 ; undefined
  40143c:	00000138 	udf	#312
  401440:	100e4100 	adr	x0, 41dc60 <__FRAME_END__+0x1c7c8>
  401444:	000e4c02 	.inst	0x000e4c02 ; undefined
  401448:	0000001c 	udf	#28
  40144c:	00000164 	udf	#356
  401450:	fffffb70 	.inst	0xfffffb70 ; undefined
  401454:	00000024 	udf	#36
  401458:	200e4100 	.inst	0x200e4100 ; undefined
  40145c:	039e049d 	.inst	0x039e049d ; undefined
  401460:	0eddde47 	.inst	0x0eddde47 ; undefined
  401464:	00000000 	udf	#0
  401468:	00000014 	udf	#20
  40146c:	00000184 	udf	#388
  401470:	fffffb74 	.inst	0xfffffb74 ; undefined
  401474:	00000130 	udf	#304
  401478:	100e4100 	adr	x0, 41dc98 <__FRAME_END__+0x1c800>
  40147c:	000e4a02 	.inst	0x000e4a02 ; undefined
  401480:	00000014 	udf	#20
  401484:	0000019c 	udf	#412
  401488:	fffffc8c 	.inst	0xfffffc8c ; undefined
  40148c:	00000130 	udf	#304
  401490:	100e4100 	adr	x0, 41dcb0 <__FRAME_END__+0x1c818>
  401494:	000e4a02 	.inst	0x000e4a02 ; undefined

0000000000401498 <__FRAME_END__>:
  401498:	00000000 	udf	#0

Disassembly of section .init_array:

000000000041fde8 <__frame_dummy_init_array_entry>:
  41fde8:	004006c0 	.inst	0x004006c0 ; undefined
  41fdec:	00000000 	udf	#0

Disassembly of section .fini_array:

000000000041fdf0 <__do_global_dtors_aux_fini_array_entry>:
  41fdf0:	00400690 	.inst	0x00400690 ; undefined
  41fdf4:	00000000 	udf	#0

Disassembly of section .dynamic:

000000000041fdf8 <_DYNAMIC>:
  41fdf8:	00000001 	udf	#1
  41fdfc:	00000000 	udf	#0
  41fe00:	00000028 	udf	#40
  41fe04:	00000000 	udf	#0
  41fe08:	0000000c 	udf	#12
  41fe0c:	00000000 	udf	#0
  41fe10:	00400508 	.inst	0x00400508 ; undefined
  41fe14:	00000000 	udf	#0
  41fe18:	0000000d 	udf	#13
  41fe1c:	00000000 	udf	#0
  41fe20:	00401244 	.inst	0x00401244 ; undefined
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
  41fe80:	00400378 	.inst	0x00400378 ; undefined
  41fe84:	00000000 	udf	#0
  41fe88:	00000006 	udf	#6
  41fe8c:	00000000 	udf	#0
  41fe90:	004002b8 	.inst	0x004002b8 ; undefined
  41fe94:	00000000 	udf	#0
  41fe98:	0000000a 	udf	#10
  41fe9c:	00000000 	udf	#0
  41fea0:	0000008d 	udf	#141
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
  41fee0:	00000078 	udf	#120
  41fee4:	00000000 	udf	#0
  41fee8:	00000014 	udf	#20
  41feec:	00000000 	udf	#0
  41fef0:	00000007 	udf	#7
  41fef4:	00000000 	udf	#0
  41fef8:	00000017 	udf	#23
  41fefc:	00000000 	udf	#0
  41ff00:	00400490 	.inst	0x00400490 ; undefined
  41ff04:	00000000 	udf	#0
  41ff08:	00000007 	udf	#7
  41ff0c:	00000000 	udf	#0
  41ff10:	00400448 	.inst	0x00400448 ; undefined
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
  41ff40:	00400418 	.inst	0x00400418 ; undefined
  41ff44:	00000000 	udf	#0
  41ff48:	6fffffff 	.inst	0x6fffffff ; undefined
  41ff4c:	00000000 	udf	#0
  41ff50:	00000001 	udf	#1
  41ff54:	00000000 	udf	#0
  41ff58:	6ffffff0 	.inst	0x6ffffff0 ; undefined
  41ff5c:	00000000 	udf	#0
  41ff60:	00400406 	.inst	0x00400406 ; undefined
	...

Disassembly of section .got:

000000000041ffc8 <_GLOBAL_OFFSET_TABLE_>:
  41ffc8:	0041fdf8 	.inst	0x0041fdf8 ; undefined
	...

Disassembly of section .got.plt:

000000000041ffe8 <.got.plt>:
	...
  420000:	00400520 	.inst	0x00400520 ; undefined
  420004:	00000000 	udf	#0
  420008:	00400520 	.inst	0x00400520 ; undefined
  42000c:	00000000 	udf	#0
  420010:	00400520 	.inst	0x00400520 ; undefined
  420014:	00000000 	udf	#0
  420018:	00400520 	.inst	0x00400520 ; undefined
  42001c:	00000000 	udf	#0
  420020:	00400520 	.inst	0x00400520 ; undefined
  420024:	00000000 	udf	#0

Disassembly of section .data:

0000000000420028 <__data_start>:
	...

0000000000420030 <__dso_handle>:
	...

Disassembly of section .bss:

0000000000420038 <completed.0>:
	...

0000000000420040 <ms1>:
	...

0000000000514280 <ms2>:
	...

00000000006084c0 <ms3>:
	...

00000000006fc700 <res>:
  6fc700:	00000000 	udf	#0

00000000006fc704 <res2>:
  6fc704:	00000000 	udf	#0

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	3a434347 	ccmn	w26, w3, #0x7, mi  // mi = first
   4:	4e472820 	trn1	v0.8h, v1.8h, v7.8h
   8:	31202955 	adds	w21, w10, #0x80a
   c:	2e332e30 	uqsub	v16.8b, v17.8b, v19.8b
  10:	地址 0x0000000000000010 越界。


Disassembly of section .gnu.build.attributes:

00000000006fc708 <.gnu.build.attributes>:
  6fc708:	00000008 	udf	#8
  6fc70c:	00000010 	udf	#16
  6fc710:	00000100 	udf	#256
  6fc714:	01244147 	.inst	0x01244147 ; undefined
  6fc718:	00316133 	.inst	0x00316133 ; NYI
  6fc71c:	004005c0 	.inst	0x004005c0 ; undefined
  6fc720:	00000000 	udf	#0
  6fc724:	004005fc 	.inst	0x004005fc ; undefined
  6fc728:	00000000 	udf	#0
  6fc72c:	00000008 	udf	#8
  6fc730:	00000010 	udf	#16
  6fc734:	00000100 	udf	#256
  6fc738:	01244147 	.inst	0x01244147 ; undefined
  6fc73c:	00316133 	.inst	0x00316133 ; NYI
  6fc740:	00400604 	.inst	0x00400604 ; undefined
  6fc744:	00000000 	udf	#0
  6fc748:	00400618 	.inst	0x00400618 ; undefined
  6fc74c:	00000000 	udf	#0
  6fc750:	00000008 	udf	#8
  6fc754:	00000010 	udf	#16
  6fc758:	00000100 	udf	#256
  6fc75c:	01244147 	.inst	0x01244147 ; undefined
  6fc760:	00316133 	.inst	0x00316133 ; NYI
  6fc764:	00400508 	.inst	0x00400508 ; undefined
  6fc768:	00000000 	udf	#0
  6fc76c:	00400518 	.inst	0x00400518 ; undefined
  6fc770:	00000000 	udf	#0
  6fc774:	00000008 	udf	#8
  6fc778:	00000010 	udf	#16
  6fc77c:	00000100 	udf	#256
  6fc780:	01244147 	.inst	0x01244147 ; undefined
  6fc784:	00316133 	.inst	0x00316133 ; NYI
  6fc788:	00401244 	.inst	0x00401244 ; undefined
  6fc78c:	00000000 	udf	#0
  6fc790:	00401250 	.inst	0x00401250 ; undefined
  6fc794:	00000000 	udf	#0
  6fc798:	00000008 	udf	#8
  6fc79c:	00000010 	udf	#16
  6fc7a0:	00000100 	udf	#256
  6fc7a4:	01244147 	.inst	0x01244147 ; undefined
  6fc7a8:	00316133 	.inst	0x00316133 ; NYI
  6fc7ac:	00401244 	.inst	0x00401244 ; undefined
  6fc7b0:	00000000 	udf	#0
  6fc7b4:	00401244 	.inst	0x00401244 ; undefined
  6fc7b8:	00000000 	udf	#0
  6fc7bc:	00000008 	udf	#8
  6fc7c0:	00000010 	udf	#16
  6fc7c4:	00000100 	udf	#256
  6fc7c8:	01244147 	.inst	0x01244147 ; undefined
  6fc7cc:	00316133 	.inst	0x00316133 ; NYI
  6fc7d0:	00400518 	.inst	0x00400518 ; undefined
  6fc7d4:	00000000 	udf	#0
  6fc7d8:	00400520 	.inst	0x00400520 ; undefined
  6fc7dc:	00000000 	udf	#0
  6fc7e0:	00000008 	udf	#8
  6fc7e4:	00000010 	udf	#16
  6fc7e8:	00000100 	udf	#256
  6fc7ec:	01244147 	.inst	0x01244147 ; undefined
  6fc7f0:	00316133 	.inst	0x00316133 ; NYI
  6fc7f4:	00401250 	.inst	0x00401250 ; undefined
  6fc7f8:	00000000 	udf	#0
  6fc7fc:	00401258 	.inst	0x00401258 ; undefined
  6fc800:	00000000 	udf	#0

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
   0:	0000002c 	udf	#44
   4:	00000002 	udf	#2
   8:	00080000 	.inst	0x00080000 ; undefined
   c:	00000000 	udf	#0
  10:	004006c4 	.inst	0x004006c4 ; undefined
  14:	00000000 	udf	#0
  18:	00000b80 	udf	#2944
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
   0:	00000492 	udf	#1170
   4:	00000004 	udf	#4
   8:	01080000 	.inst	0x01080000 ; undefined
   c:	0000007a 	udf	#122
  10:	00013d0c 	.inst	0x00013d0c ; undefined
  14:	00006300 	udf	#25344
  18:	4006c400 	.inst	0x4006c400 ; undefined
  1c:	00000000 	udf	#0
  20:	000b8000 	.inst	0x000b8000 ; undefined
	...
  2c:	07080200 	.inst	0x07080200 ; undefined
  30:	000000ac 	udf	#172
  34:	69050403 	stgp	x3, x1, [x0, #160]
  38:	0200746e 	.inst	0x0200746e ; undefined
  3c:	00be0801 	.inst	0x00be0801 ; undefined
  40:	02020000 	.inst	0x02020000 ; undefined
  44:	00002907 	udf	#10503
  48:	07040200 	.inst	0x07040200 ; undefined
  4c:	000000b1 	udf	#177
  50:	c0060102 	.inst	0xc0060102 ; undefined
  54:	02000000 	.inst	0x02000000 ; undefined
  58:	01440502 	.inst	0x01440502 ; undefined
  5c:	08020000 	stxrb	w2, w0, [x0]
  60:	00013405 	.inst	0x00013405 ; undefined
  64:	08010200 	stxrb	w1, w0, [x16]
  68:	000000c7 	udf	#199
  6c:	00006504 	udf	#25860
  70:	05080200 	.inst	0x05080200 ; undefined
  74:	0000012f 	udf	#303
  78:	a7070802 	.inst	0xa7070802 ; undefined
  7c:	05000000 	orr	z0.s, z0.s, #0x1
  80:	00006c08 	udf	#27656
  84:	07100200 	.inst	0x07100200 ; undefined
  88:	00000000 	udf	#0
  8c:	74040402 	.inst	0x74040402 ; undefined
  90:	02000000 	.inst	0x02000000 ; undefined
  94:	00f20408 	.inst	0x00f20408 ; undefined
  98:	12060000 	and	w0, w0, #0x4000000
  9c:	01000000 	.inst	0x01000000 ; undefined
  a0:	00a60d45 	.inst	0x00a60d45 ; undefined
  a4:	34070000 	cbz	w0, e0a4 <__abi_tag-0x3f21d4>
  a8:	be000000 	.inst	0xbe000000 ; undefined
  ac:	08000000 	stxrb	w0, w0, [x0]
  b0:	0000002d 	udf	#45
  b4:	2d0801f3 	stp	s19, s0, [x15, #64]
  b8:	f3000000 	.inst	0xf3000000 ; undefined
  bc:	6d090001 	stp	d1, d0, [x0, #144]
  c0:	01003173 	.inst	0x01003173 ; undefined
  c4:	009a065c 	.inst	0x009a065c ; undefined
  c8:	03090000 	.inst	0x03090000 ; undefined
  cc:	00420040 	.inst	0x00420040 ; undefined
  d0:	00000000 	udf	#0
  d4:	32736d09 	.inst	0x32736d09 ; undefined
  d8:	0a5c0100 	and	w0, w8, w28, lsr #0
  dc:	0000009a 	udf	#154
  e0:	42800309 	.inst	0x42800309 ; undefined
  e4:	00000051 	udf	#81
  e8:	6d090000 	stp	d0, d0, [x0, #144]
  ec:	01003373 	.inst	0x01003373 ; undefined
  f0:	009a0e5c 	.inst	0x009a0e5c ; undefined
  f4:	03090000 	.inst	0x03090000 ; undefined
  f8:	006084c0 	.inst	0x006084c0 ; undefined
  fc:	00000000 	udf	#0
 100:	73657209 	.inst	0x73657209 ; undefined
 104:	055d0100 	mov	z0.h, p13/z, #8
 108:	00000034 	udf	#52
 10c:	c7000309 	.inst	0xc7000309 ; undefined
 110:	0000006f 	udf	#111
 114:	030a0000 	.inst	0x030a0000 ; undefined
 118:	01000001 	.inst	0x01000001 ; undefined
 11c:	0034095d 	.inst	0x0034095d ; NYI
 120:	03090000 	.inst	0x03090000 ; undefined
 124:	006fc704 	.inst	0x006fc704 ; undefined
 128:	00000000 	udf	#0
 12c:	0000db0b 	udf	#56075
 130:	01220100 	.inst	0x01220100 ; undefined
 134:	00003405 	udf	#13317
 138:	40111400 	.inst	0x40111400 ; undefined
 13c:	00000000 	udf	#0
 140:	00013000 	.inst	0x00013000 ; undefined
 144:	00000000 	udf	#0
 148:	609c0100 	.inst	0x609c0100 ; undefined
 14c:	0c000001 	st4	{v1.8b-v4.8b}, [x0]
 150:	000000fe 	udf	#254
 154:	09012501 	.inst	0x09012501 ; undefined
 158:	00000034 	udf	#52
 15c:	007c9102 	.inst	0x007c9102 ; undefined
 160:	0000cc0b 	udf	#52235
 164:	01090100 	.inst	0x01090100 ; undefined
 168:	00003405 	udf	#13317
 16c:	400fe400 	.inst	0x400fe400 ; undefined
 170:	00000000 	udf	#0
 174:	00013000 	.inst	0x00013000 ; undefined
 178:	00000000 	udf	#0
 17c:	949c0100 	bl	270057c <__bss_end__+0x2003e74>
 180:	0c000001 	st4	{v1.8b-v4.8b}, [x0]
 184:	000000fe 	udf	#254
 188:	09010c01 	.inst	0x09010c01 ; undefined
 18c:	00000034 	udf	#52
 190:	007c9102 	.inst	0x007c9102 ; undefined
 194:	0000170d 	udf	#5901
 198:	01010100 	.inst	0x01010100 ; undefined
 19c:	00003405 	udf	#13317
 1a0:	400fc000 	.inst	0x400fc000 ; undefined
 1a4:	00000000 	udf	#0
 1a8:	00002400 	udf	#9216
 1ac:	00000000 	udf	#0
 1b0:	c89c0100 	stllr	x0, [x8]
 1b4:	0e000001 	tbl	v1.8b, {v0.16b}, v0.8b
 1b8:	00736572 	.inst	0x00736572 ; undefined
 1bc:	09010301 	.inst	0x09010301 ; undefined
 1c0:	00000034 	udf	#52
 1c4:	007c9102 	.inst	0x007c9102 ; undefined
 1c8:	0001530f 	.inst	0x0001530f ; undefined
 1cc:	05f20100 	.inst	0x05f20100 ; undefined
 1d0:	00000034 	udf	#52
 1d4:	00400e88 	.inst	0x00400e88 ; undefined
 1d8:	00000000 	udf	#0
 1dc:	00000138 	udf	#312
 1e0:	00000000 	udf	#0
 1e4:	02489c01 	.inst	0x02489c01 ; undefined
 1e8:	8c100000 	.inst	0x8c100000 ; undefined
 1ec:	0000400e 	udf	#16398
 1f0:	28000000 	stnp	w0, w0, [x0]
 1f4:	00000001 	udf	#1
 1f8:	11000000 	add	w0, w0, #0x0
 1fc:	f4010069 	.inst	0xf4010069 ; undefined
 200:	0000340e 	udf	#13326
 204:	7c910200 	.inst	0x7c910200 ; undefined
 208:	400e9410 	.inst	0x400e9410 ; undefined
 20c:	00000000 	udf	#0
 210:	00010800 	.inst	0x00010800 ; undefined
 214:	00000000 	udf	#0
 218:	006a1100 	.inst	0x006a1100 ; undefined
 21c:	3416f601 	cbz	w1, 2e0dc <__abi_tag-0x3d219c>
 220:	02000000 	.inst	0x02000000 ; undefined
 224:	9c107891 	ldr	q17, 21134 <__abi_tag-0x3df144>
 228:	0000400e 	udf	#16398
 22c:	e8000000 	.inst	0xe8000000 ; undefined
 230:	00000000 	udf	#0
 234:	11000000 	add	w0, w0, #0x0
 238:	f801006b 	stur	x11, [x3, #16]
 23c:	0000341a 	udf	#13338
 240:	74910200 	.inst	0x74910200 ; undefined
 244:	00000000 	udf	#0
 248:	00003c0f 	udf	#15375
 24c:	05e30100 	.inst	0x05e30100 ; undefined
 250:	00000034 	udf	#52
 254:	00400d70 	.inst	0x00400d70 ; undefined
 258:	00000000 	udf	#0
 25c:	00000118 	udf	#280
 260:	00000000 	udf	#0
 264:	02b09c01 	.inst	0x02b09c01 ; undefined
 268:	78110000 	sturh	w0, [x0, #-240]
 26c:	09e50100 	.inst	0x09e50100 ; undefined
 270:	00000034 	udf	#52
 274:	117c9102 	add	w2, w8, #0xf24, lsl #12
 278:	e5010079 	.inst	0xe5010079 ; undefined
 27c:	0000340d 	udf	#13325
 280:	78910200 	ldursh	x0, [x16, #-240]
 284:	01007a12 	.inst	0x01007a12 ; undefined
 288:	003411e5 	.inst	0x003411e5 ; NYI
 28c:	84100000 	ld1sb	{z0.s}, p0/z, [x0, z16.s, uxtw]
 290:	0000400d 	udf	#16397
 294:	c8000000 	stxr	w0, x0, [x0]
 298:	00000000 	udf	#0
 29c:	11000000 	add	w0, w0, #0x0
 2a0:	00706d74 	.inst	0x00706d74 ; undefined
 2a4:	3415ea01 	cbz	w1, 2bfe4 <__abi_tag-0x3d4294>
 2a8:	02000000 	.inst	0x02000000 ; undefined
 2ac:	00007491 	udf	#29841
 2b0:	00005d0f 	udf	#23823
 2b4:	05d10100 	mov	z0.d, p1/z, #8
 2b8:	00000034 	udf	#52
 2bc:	00400bd8 	.inst	0x00400bd8 ; undefined
 2c0:	00000000 	udf	#0
 2c4:	00000198 	udf	#408
 2c8:	00000000 	udf	#0
 2cc:	03309c01 	.inst	0x03309c01 ; undefined
 2d0:	dc100000 	.inst	0xdc100000 ; undefined
 2d4:	0000400b 	udf	#16395
 2d8:	88000000 	stxr	w0, w0, [x0]
 2dc:	00000001 	udf	#1
 2e0:	11000000 	add	w0, w0, #0x0
 2e4:	d3010069 	.inst	0xd3010069 ; undefined
 2e8:	0000340e 	udf	#13326
 2ec:	7c910200 	.inst	0x7c910200 ; undefined
 2f0:	400be410 	.inst	0x400be410 ; undefined
 2f4:	00000000 	udf	#0
 2f8:	00016800 	.inst	0x00016800 ; undefined
 2fc:	00000000 	udf	#0
 300:	006a1100 	.inst	0x006a1100 ; undefined
 304:	3416d501 	cbz	w1, 2dda4 <__abi_tag-0x3d24d4>
 308:	02000000 	.inst	0x02000000 ; undefined
 30c:	ec107891 	.inst	0xec107891 ; undefined
 310:	0000400b 	udf	#16395
 314:	48000000 	stxrh	w0, w0, [x0]
 318:	00000001 	udf	#1
 31c:	11000000 	add	w0, w0, #0x0
 320:	d701006b 	.inst	0xd701006b ; undefined
 324:	0000341a 	udf	#13338
 328:	74910200 	.inst	0x74910200 ; undefined
 32c:	00000000 	udf	#0
 330:	0000510f 	udf	#20751
 334:	05b90100 	zip1	z0.q, z8.q, z25.q
 338:	00000034 	udf	#52
 33c:	00400aec 	.inst	0x00400aec ; undefined
 340:	00000000 	udf	#0
 344:	000000ec 	udf	#236
 348:	00000000 	udf	#0
 34c:	037c9c01 	.inst	0x037c9c01 ; undefined
 350:	ea130000 	ands	x0, x0, x19
 354:	01000000 	.inst	0x01000000 ; undefined
 358:	003409bb 	.inst	0x003409bb ; NYI
 35c:	91020000 	add	x0, x0, #0x80
 360:	0078117c 	.inst	0x0078117c ; undefined
 364:	3409bc01 	cbz	w1, 13ae4 <__abi_tag-0x3ec794>
 368:	02000000 	.inst	0x02000000 ; undefined
 36c:	79117891 	strh	w17, [x4, #2236]
 370:	0dbc0100 	st2	{v0.b, v1.b}[0], [x8], x28
 374:	00000034 	udf	#52
 378:	00749102 	.inst	0x00749102 ; undefined
 37c:	00011e14 	.inst	0x00011e14 ; undefined
 380:	06a80100 	.inst	0x06a80100 ; undefined
 384:	00400958 	.inst	0x00400958 ; undefined
 388:	00000000 	udf	#0
 38c:	00000194 	udf	#404
 390:	00000000 	udf	#0
 394:	03d69c01 	.inst	0x03d69c01 ; undefined
 398:	78110000 	sturh	w0, [x0, #-240]
 39c:	09aa0100 	.inst	0x09aa0100 ; undefined
 3a0:	00000034 	udf	#52
 3a4:	117c9102 	add	w2, w8, #0xf24, lsl #12
 3a8:	aa010079 	orr	x25, x3, x1
 3ac:	0000340d 	udf	#13325
 3b0:	78910200 	ldursh	x0, [x16, #-240]
 3b4:	40097010 	.inst	0x40097010 ; undefined
 3b8:	00000000 	udf	#0
 3bc:	00013c00 	.inst	0x00013c00 ; undefined
 3c0:	00000000 	udf	#0
 3c4:	00fe1300 	.inst	0x00fe1300 ; undefined
 3c8:	b0010000 	adrp	x0, 2001000 <__bss_end__+0x19048f8>
 3cc:	00003415 	udf	#13333
 3d0:	74910200 	.inst	0x74910200 ; undefined
 3d4:	0d140000 	.inst	0x0d140000 ; undefined
 3d8:	01000001 	.inst	0x01000001 ; undefined
 3dc:	07c40696 	.inst	0x07c40696 ; undefined
 3e0:	00000040 	udf	#64
 3e4:	01940000 	.inst	0x01940000 ; undefined
 3e8:	00000000 	udf	#0
 3ec:	9c010000 	ldr	q0, 23ec <__abi_tag-0x3fde8c>
 3f0:	00000430 	udf	#1072
 3f4:	01007811 	.inst	0x01007811 ; undefined
 3f8:	00340998 	.inst	0x00340998 ; NYI
 3fc:	91020000 	add	x0, x0, #0x80
 400:	0079117c 	.inst	0x0079117c ; undefined
 404:	340d9801 	cbz	w1, 1b704 <__abi_tag-0x3e4b74>
 408:	02000000 	.inst	0x02000000 ; undefined
 40c:	dc107891 	.inst	0xdc107891 ; undefined
 410:	00004007 	udf	#16391
 414:	3c000000 	stur	b0, [x0]
 418:	00000001 	udf	#1
 41c:	13000000 	sbfx	w0, w0, #0, #1
 420:	000000fe 	udf	#254
 424:	34159f01 	cbz	w1, 2b804 <__abi_tag-0x3d4a74>
 428:	02000000 	.inst	0x02000000 ; undefined
 42c:	00007491 	udf	#29841
 430:	0000f915 	udf	#63765
 434:	05680100 	ext	z0.b, {z8.b, z9.b}, #64
 438:	00000034 	udf	#52
 43c:	004006c4 	.inst	0x004006c4 ; undefined
 440:	00000000 	udf	#0
 444:	00000100 	udf	#256
 448:	00000000 	udf	#0
 44c:	048f9c01 	sqshlu	z1.d, p7/m, z1.d, #0
 450:	08160000 	stxrb	w22, w0, [x0]
 454:	01000001 	.inst	0x01000001 ; undefined
 458:	00340e68 	.inst	0x00340e68 ; NYI
 45c:	91020000 	add	x0, x0, #0x80
 460:	014e166c 	.inst	0x014e166c ; undefined
 464:	68010000 	.inst	0x68010000 ; undefined
 468:	00048f21 	.inst	0x00048f21 ; undefined
 46c:	60910200 	.inst	0x60910200 ; undefined
 470:	00004513 	udf	#17683
 474:	096c0100 	.inst	0x096c0100 ; undefined
 478:	00000034 	udf	#52
 47c:	137c9102 	.inst	0x137c9102 ; undefined
 480:	0000004b 	udf	#75
 484:	34096d01 	cbz	w1, 13224 <__abi_tag-0x3ed054>
 488:	02000000 	.inst	0x02000000 ; undefined
 48c:	05007891 	orr	z17.s, z17.s, #0x3e0000
 490:	00007f08 	udf	#32520
	...

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	25011101 	cmpge	p1.b, p4/z, z8.b, #1
   4:	030b130e 	.inst	0x030b130e ; undefined
   8:	110e1b0e 	add	w14, w24, #0x386
   c:	10071201 	adr	x1, e24c <__abi_tag-0x3f202c>
  10:	02000017 	.inst	0x02000017 ; undefined
  14:	0b0b0024 	add	w4, w1, w11
  18:	0e030b3e 	.inst	0x0e030b3e ; undefined
  1c:	24030000 	cmphs	p0.b, p0/z, z0.b, z3.b
  20:	3e0b0b00 	.inst	0x3e0b0b00 ; undefined
  24:	0008030b 	.inst	0x0008030b ; undefined
  28:	00260400 	.inst	0x00260400 ; NYI
  2c:	00001349 	udf	#4937
  30:	0b000f05 	add	w5, w24, w0, lsl #3
  34:	0013490b 	.inst	0x0013490b ; undefined
  38:	00160600 	.inst	0x00160600 ; undefined
  3c:	0b3a0e03 	add	w3, w16, w26, uxtb #3
  40:	0b390b3b 	add	w27, w25, w25, uxtb #2
  44:	00001349 	udf	#4937
  48:	49010107 	.inst	0x49010107 ; undefined
  4c:	00130113 	.inst	0x00130113 ; undefined
  50:	00210800 	.inst	0x00210800 ; NYI
  54:	052f1349 	ext	z9.b, z9.b, z26.b, #124
  58:	34090000 	cbz	w0, 12058 <__abi_tag-0x3ee220>
  5c:	3a080300 	adcs	w0, w24, w8
  60:	390b3b0b 	strb	w11, [x24, #718]
  64:	3f13490b 	.inst	0x3f13490b ; undefined
  68:	00180219 	.inst	0x00180219 ; undefined
  6c:	00340a00 	.inst	0x00340a00 ; NYI
  70:	0b3a0e03 	add	w3, w16, w26, uxtb #3
  74:	0b390b3b 	add	w27, w25, w25, uxtb #2
  78:	193f1349 	.inst	0x193f1349 ; undefined
  7c:	00001802 	udf	#6146
  80:	3f012e0b 	.inst	0x3f012e0b ; undefined
  84:	3a0e0319 	adcs	w25, w24, w14
  88:	39053b0b 	strb	w11, [x24, #334]
  8c:	4919270b 	.inst	0x4919270b ; undefined
  90:	12011113 	and	w19, w8, #0x8000000f
  94:	97184007 	bl	fffffffffc6100b0 <__bss_end__+0xfffffffffbf139a8>
  98:	13011942 	sbfx	w2, w10, #1, #6
  9c:	340c0000 	cbz	w0, 1809c <__abi_tag-0x3e81dc>
  a0:	3a0e0300 	adcs	w0, w24, w14
  a4:	39053b0b 	strb	w11, [x24, #334]
  a8:	0213490b 	.inst	0x0213490b ; undefined
  ac:	0d000018 	st1	{v24.b}[0], [x0]
  b0:	193f012e 	.inst	0x193f012e ; undefined
  b4:	0b3a0e03 	add	w3, w16, w26, uxtb #3
  b8:	0b39053b 	add	w27, w9, w25, uxtb #1
  bc:	13491927 	.inst	0x13491927 ; undefined
  c0:	07120111 	.inst	0x07120111 ; undefined
  c4:	42961840 	.inst	0x42961840 ; undefined
  c8:	00130119 	.inst	0x00130119 ; undefined
  cc:	00340e00 	.inst	0x00340e00 ; NYI
  d0:	0b3a0803 	add	w3, w0, w26, uxtb #2
  d4:	0b39053b 	add	w27, w9, w25, uxtb #1
  d8:	18021349 	ldr	w9, 4340 <__abi_tag-0x3fbf38>
  dc:	2e0f0000 	ext	v0.8b, v0.8b, v15.8b, #0
  e0:	03193f01 	.inst	0x03193f01 ; undefined
  e4:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
  e8:	270b390b 	.inst	0x270b390b ; undefined
  ec:	11134919 	add	w25, w8, #0x4d2
  f0:	40071201 	.inst	0x40071201 ; undefined
  f4:	19429718 	.inst	0x19429718 ; undefined
  f8:	00001301 	udf	#4865
  fc:	11010b10 	add	w16, w24, #0x42
 100:	00071201 	.inst	0x00071201 ; undefined
 104:	00341100 	.inst	0x00341100 ; NYI
 108:	0b3a0803 	add	w3, w0, w26, uxtb #2
 10c:	0b390b3b 	add	w27, w25, w25, uxtb #2
 110:	18021349 	ldr	w9, 4378 <__abi_tag-0x3fbf00>
 114:	34120000 	cbz	w0, 24114 <__abi_tag-0x3dc164>
 118:	3a080300 	adcs	w0, w24, w8
 11c:	390b3b0b 	strb	w11, [x24, #718]
 120:	0013490b 	.inst	0x0013490b ; undefined
 124:	00341300 	.inst	0x00341300 ; NYI
 128:	0b3a0e03 	add	w3, w16, w26, uxtb #3
 12c:	0b390b3b 	add	w27, w25, w25, uxtb #2
 130:	18021349 	ldr	w9, 4398 <__abi_tag-0x3fbee0>
 134:	2e140000 	ext	v0.8b, v0.8b, v20.8b, #0
 138:	03193f01 	.inst	0x03193f01 ; undefined
 13c:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
 140:	270b390b 	.inst	0x270b390b ; undefined
 144:	12011119 	and	w25, w8, #0x8000000f
 148:	96184007 	bl	fffffffff8610164 <__bss_end__+0xfffffffff7f13a5c>
 14c:	13011942 	sbfx	w2, w10, #1, #6
 150:	2e150000 	ext	v0.8b, v0.8b, v21.8b, #0
 154:	03193f01 	.inst	0x03193f01 ; undefined
 158:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
 15c:	270b390b 	.inst	0x270b390b ; undefined
 160:	11134919 	add	w25, w8, #0x4d2
 164:	40071201 	.inst	0x40071201 ; undefined
 168:	19429618 	.inst	0x19429618 ; undefined
 16c:	00001301 	udf	#4865
 170:	03000516 	.inst	0x03000516 ; undefined
 174:	3b0b3a0e 	.inst	0x3b0b3a0e ; undefined
 178:	490b390b 	.inst	0x490b390b ; undefined
 17c:	00180213 	.inst	0x00180213 ; undefined
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	000002f5 	udf	#757
   4:	001d0003 	.inst	0x001d0003 ; undefined
   8:	01040000 	.inst	0x01040000 ; undefined
   c:	000d0efb 	.inst	0x000d0efb ; undefined
  10:	01010101 	.inst	0x01010101 ; undefined
  14:	01000000 	.inst	0x01000000 ; undefined
  18:	00010000 	.inst	0x00010000 ; undefined
  1c:	6e69616d 	rsubhn2	v13.8h, v11.4s, v9.4s
  20:	0000632e 	udf	#25390
  24:	05000000 	orr	z0.s, z0.s, #0x1
  28:	02090001 	.inst	0x02090001 ; undefined
  2c:	004006c4 	.inst	0x004006c4 ; undefined
  30:	00000000 	udf	#0
  34:	0100e803 	.inst	0x0100e803 ; undefined
  38:	3d4c0905 	ldr	b5, [x8, #770]
  3c:	2208052f 	.inst	0x2208052f ; undefined
  40:	213e0905 	.inst	0x213e0905 ; undefined
  44:	05240505 	ext	z5.b, z5.b, z8.b, #33
  48:	0905300b 	.inst	0x0905300b ; undefined
  4c:	3e08052e 	.inst	0x3e08052e ; undefined
  50:	053e0f05 	ext	z5.b, z5.b, z24.b, #243
  54:	09052e0d 	.inst	0x09052e0d ; undefined
  58:	3010053d 	adr	x29, 200fd <__abi_tag-0x3e017b>
  5c:	052e0e05 	ext	z5.b, z5.b, z16.b, #115
  60:	0d054e0f 	.inst	0x0d054e0f ; undefined
  64:	3d09052e 	str	b14, [x9, #577]
  68:	05301005 	ext	z5.b, z5.b, z0.b, #132
  6c:	05052e0e 	.inst	0x05052e0e ; undefined
  70:	0522303f 	tbl	z31.b, {z1.b}, z2.b
  74:	0a05220c 	and	w12, w16, w5, lsl #8
  78:	3e05052e 	.inst	0x3e05052e ; undefined
  7c:	052f0c05 	ext	z5.b, z5.b, z0.b, #123
  80:	05322101 	mov	z1.h, z8.h[4]
  84:	09053010 	.inst	0x09053010 ; undefined
  88:	22140520 	.inst	0x22140520 ; undefined
  8c:	05200d05 	ext	z5.b, z5.b, z8.b, #3
  90:	1b05231d 	madd	w29, w24, w5, w8
  94:	c9150520 	.inst	0xc9150520 ; undefined
  98:	05c91a05 	.inst	0x05c91a05 ; undefined
  9c:	1f05ba13 	fmsub	s19, s16, s5, s14
  a0:	0026054c 	.inst	0x0026054c ; NYI
  a4:	03020402 	.inst	0x03020402 ; undefined
  a8:	01240279 	.inst	0x01240279 ; undefined
  ac:	02000d05 	.inst	0x02000d05 ; undefined
  b0:	053c0104 	ext	z4.b, z4.b, z8.b, #224
  b4:	04020022 	.inst	0x04020022 ; undefined
  b8:	09053a02 	.inst	0x09053a02 ; undefined
  bc:	01040200 	.inst	0x01040200 ; undefined
  c0:	0301053c 	.inst	0x0301053c ; undefined
  c4:	054d3c0d 	.inst	0x054d3c0d ; undefined
  c8:	09053010 	.inst	0x09053010 ; undefined
  cc:	22140520 	.inst	0x22140520 ; undefined
  d0:	05200d05 	ext	z5.b, z5.b, z8.b, #3
  d4:	1b05221d 	madd	w29, w16, w5, w8
  d8:	c9150520 	.inst	0xc9150520 ; undefined
  dc:	05c91a05 	.inst	0x05c91a05 ; undefined
  e0:	1f05ba13 	fmsub	s19, s16, s5, s14
  e4:	0026054c 	.inst	0x0026054c ; NYI
  e8:	03020402 	.inst	0x03020402 ; undefined
  ec:	0124027a 	.inst	0x0124027a ; undefined
  f0:	02000d05 	.inst	0x02000d05 ; undefined
  f4:	053c0104 	ext	z4.b, z4.b, z8.b, #224
  f8:	04020022 	.inst	0x04020022 ; undefined
  fc:	09053a02 	.inst	0x09053a02 ; undefined
 100:	01040200 	.inst	0x01040200 ; undefined
 104:	0301053c 	.inst	0x0301053c ; undefined
 108:	054d3c0c 	.inst	0x054d3c0c ; undefined
 10c:	10052109 	adr	x9, a52c <__abi_tag-0x3f5d4c>
 110:	20090522 	.inst	0x20090522 ; undefined
 114:	05221405 	ext	z5.b, z5.b, z0.b, #21
 118:	1a05200d 	.inst	0x1a05200d ; undefined
 11c:	ba240522 	.inst	0xba240522 ; undefined
 120:	05ba1305 	.inst	0x05ba1305 ; undefined
 124:	054e301d 	.inst	0x054e301d ; undefined
 128:	04020026 	.inst	0x04020026 ; undefined
 12c:	3c780302 	.inst	0x3c780302 ; undefined
 130:	02000d05 	.inst	0x02000d05 ; undefined
 134:	053c0104 	ext	z4.b, z4.b, z8.b, #224
 138:	04020022 	.inst	0x04020022 ; undefined
 13c:	09053a02 	.inst	0x09053a02 ; undefined
 140:	01040200 	.inst	0x01040200 ; undefined
 144:	0307053c 	.inst	0x0307053c ; undefined
 148:	0d053c0e 	.inst	0x0d053c0e ; undefined
 14c:	0105303d 	.inst	0x0105303d ; undefined
 150:	0e053121 	tbx	v1.8b, {v9.16b, v10.16b}, v5.8b
 154:	20050521 	.inst	0x20050521 ; undefined
 158:	05221605 	ext	z5.b, z5.b, z16.b, #21
 15c:	1a05200d 	.inst	0x1a05200d ; undefined
 160:	20110522 	.inst	0x20110522 ; undefined
 164:	02002705 	.inst	0x02002705 ; undefined
 168:	05220304 	ext	z4.b, z4.b, z24.b, #16
 16c:	04020031 	.inst	0x04020031 ; undefined
 170:	2a05ba03 	.inst	0x2a05ba03 ; undefined
 174:	03040200 	.inst	0x03040200 ; undefined
 178:	001f05ba 	.inst	0x001f05ba ; undefined
 17c:	20030402 	.inst	0x20030402 ; undefined
 180:	02002705 	.inst	0x02002705 ; undefined
 184:	05bb0304 	zip1	z4.q, z24.q, z27.q
 188:	04020031 	.inst	0x04020031 ; undefined
 18c:	2a05ba03 	.inst	0x2a05ba03 ; undefined
 190:	03040200 	.inst	0x03040200 ; undefined
 194:	001f05ba 	.inst	0x001f05ba ; undefined
 198:	20030402 	.inst	0x20030402 ; undefined
 19c:	02002e05 	.inst	0x02002e05 ; undefined
 1a0:	05b70304 	zip1	z4.q, z24.q, z23.q
 1a4:	04020011 	.inst	0x04020011 ; undefined
 1a8:	2a053c01 	orr	w1, w0, w5, lsl #15
 1ac:	02040200 	.inst	0x02040200 ; undefined
 1b0:	000d053a 	.inst	0x000d053a ; undefined
 1b4:	3c010402 	str	b2, [x0], #16
 1b8:	02002205 	.inst	0x02002205 ; undefined
 1bc:	053a0204 	ext	z4.b, z4.b, z16.b, #208
 1c0:	04020005 	.inst	0x04020005 ; undefined
 1c4:	0c053c01 	.inst	0x0c053c01 ; undefined
 1c8:	053c0d03 	ext	z3.b, z3.b, z8.b, #227
 1cc:	05312101 	mov	z1.b, z8.b[8]
 1d0:	09052210 	.inst	0x09052210 ; undefined
 1d4:	22140520 	.inst	0x22140520 ; undefined
 1d8:	05200d05 	ext	z5.b, z5.b, z8.b, #3
 1dc:	04020015 	.inst	0x04020015 ; undefined
 1e0:	23052203 	.inst	0x23052203 ; undefined
 1e4:	03040200 	.inst	0x03040200 ; undefined
 1e8:	001b05c9 	.inst	0x001b05c9 ; undefined
 1ec:	ba030402 	rmif	x0, #6, #2
 1f0:	03040200 	.inst	0x03040200 ; undefined
 1f4:	002605bb 	.inst	0x002605bb ; NYI
 1f8:	c4030402 	ld1sb	{z2.d}, p1/z, [x0, z3.d, uxtw]
 1fc:	02000d05 	.inst	0x02000d05 ; undefined
 200:	053c0104 	ext	z4.b, z4.b, z8.b, #224
 204:	04020022 	.inst	0x04020022 ; undefined
 208:	09053a02 	.inst	0x09053a02 ; undefined
 20c:	01040200 	.inst	0x01040200 ; undefined
 210:	030c053c 	.inst	0x030c053c ; undefined
 214:	01053c09 	.inst	0x01053c09 ; undefined
 218:	0e053121 	tbx	v1.8b, {v9.16b, v10.16b}, v5.8b
 21c:	20050521 	.inst	0x20050521 ; undefined
 220:	05221605 	ext	z5.b, z5.b, z16.b, #21
 224:	1a05200d 	.inst	0x1a05200d ; undefined
 228:	20110522 	.inst	0x20110522 ; undefined
 22c:	02001f05 	.inst	0x02001f05 ; undefined
 230:	05210304 	ext	z4.b, z4.b, z24.b, #8
 234:	04020028 	.inst	0x04020028 ; undefined
 238:	3405ba03 	cbz	w3, b978 <__abi_tag-0x3f4900>
 23c:	03040200 	.inst	0x03040200 ; undefined
 240:	002c05ba 	.inst	0x002c05ba ; NYI
 244:	ba030402 	rmif	x0, #6, #2
 248:	02001f05 	.inst	0x02001f05 ; undefined
 24c:	05200304 	ext	z4.b, z4.b, z24.b, #0
 250:	0402002e 	.inst	0x0402002e ; undefined
 254:	1105c703 	add	w3, w24, #0x171
 258:	01040200 	.inst	0x01040200 ; undefined
 25c:	002a053c 	.inst	0x002a053c ; NYI
 260:	3a020402 	.inst	0x3a020402 ; undefined
 264:	02000d05 	.inst	0x02000d05 ; undefined
 268:	053c0104 	ext	z4.b, z4.b, z8.b, #224
 26c:	04020022 	.inst	0x04020022 ; undefined
 270:	05053a02 	.inst	0x05053a02 ; undefined
 274:	01040200 	.inst	0x01040200 ; undefined
 278:	030c053c 	.inst	0x030c053c ; undefined
 27c:	01053c09 	.inst	0x01053c09 ; undefined
 280:	0f053221 	.inst	0x0f053221 ; undefined
 284:	2f0b052f 	ushr	v15.8b, v9.8b, #5
 288:	05300d05 	ext	z5.b, z5.b, z8.b, #131
 28c:	05312101 	mov	z1.b, z8.b[8]
 290:	0905210f 	.inst	0x0905210f ; undefined
 294:	4b0f054b 	sub	w11, w10, w15, lsl #1
 298:	4b4b0a05 	sub	w5, w16, w11, lsr #2
 29c:	4b4b0f05 	sub	w5, w24, w11, lsr #3
 2a0:	4b0a054b 	sub	w11, w10, w10, lsl #1
 2a4:	4b0f054b 	sub	w11, w10, w15, lsl #1
 2a8:	054b0a05 	.inst	0x054b0a05 ; undefined
 2ac:	0a054c0f 	and	w15, w0, w5, lsl #19
 2b0:	4b0f054b 	sub	w11, w10, w15, lsl #1
 2b4:	4b4b0a05 	sub	w5, w16, w11, lsr #2
 2b8:	054b0f05 	.inst	0x054b0f05 ; undefined
 2bc:	01054c0c 	.inst	0x01054c0c ; undefined
 2c0:	0f053121 	.inst	0x0f053121 ; undefined
 2c4:	4b090521 	sub	w1, w9, w9, lsl #1
 2c8:	054b0f05 	.inst	0x054b0f05 ; undefined
 2cc:	054b4b0a 	.inst	0x054b4b0a ; undefined
 2d0:	4b4b4b0f 	sub	w15, w24, w11, lsr #18
 2d4:	4b4b0a05 	sub	w5, w16, w11, lsr #2
 2d8:	054b0f05 	.inst	0x054b0f05 ; undefined
 2dc:	0f054b0a 	.inst	0x0f054b0a ; undefined
 2e0:	4b0a054c 	sub	w12, w10, w10, lsl #1
 2e4:	054b0f05 	.inst	0x054b0f05 ; undefined
 2e8:	054b4b0a 	.inst	0x054b4b0a ; undefined
 2ec:	0c054b0f 	.inst	0x0c054b0f ; undefined
 2f0:	2101054c 	.inst	0x2101054c ; undefined
 2f4:	01000202 	.inst	0x01000202 ; undefined
 2f8:	地址 0x00000000000002f8 越界。


Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	6e695f5f 	uqrshl	v31.8h, v26.8h, v9.8h
   4:	38323174 	ldsetb	w18, w20, [x11]
   8:	736e7520 	.inst	0x736e7520 ; undefined
   c:	656e6769 	fnmls	z9.h, p1/m, z27.h, z14.h
  10:	656d0064 	fmla	z4.h, p0/m, z3.h, z13.h
  14:	43006873 	.inst	0x43006873 ; undefined
  18:	6c706d6f 	ldnp	d15, d27, [x11, #-256]
  1c:	61447865 	.inst	0x61447865 ; undefined
  20:	61486174 	.inst	0x61486174 ; undefined
  24:	656c646e 	fnmls	z14.h, p1/m, z3.h, z12.h
  28:	6f687300 	fcmla	v0.8h, v24.8h, v8.h[1], #270
  2c:	75207472 	.inst	0x75207472 ; undefined
  30:	6769736e 	.inst	0x6769736e ; undefined
  34:	2064656e 	.inst	0x2064656e ; undefined
  38:	00746e69 	.inst	0x00746e69 ; undefined
  3c:	70617753 	adr	x19, c2f27 <__abi_tag-0x33d351>
  40:	6873654d 	.inst	0x6873654d ; undefined
  44:	6f6f6200 	umlsl2	v0.4s, v16.8h, v15.h[2]
  48:	6200316c 	.inst	0x6200316c ; undefined
  4c:	326c6f6f 	.inst	0x326c6f6f ; undefined
  50:	6d6f4300 	ldp	d0, d16, [x24, #-272]
  54:	65726170 	fnmls	z16.h, p0/m, z11.h, z18.h
  58:	6873654d 	.inst	0x6873654d ; undefined
  5c:	73654d00 	.inst	0x73654d00 ; undefined
  60:	2f003268 	.inst	0x2f003268 ; undefined
  64:	656d6f68 	fnmls	z8.h, p3/m, z27.h, z13.h
  68:	6775672f 	.inst	0x6775672f ; undefined
  6c:	2f696a75 	umlsl	v21.4s, v19.4h, v9.h[6]
  70:	00676962 	.inst	0x00676962 ; undefined
  74:	616f6c66 	.inst	0x616f6c66 ; undefined
  78:	4e470074 	.inst	0x4e470074 ; undefined
  7c:	31432055 	adds	w21, w2, #0xc8, lsl #12
  80:	30312037 	adr	x23, 62485 <__abi_tag-0x39ddf3>
  84:	312e332e 	adds	w14, w25, #0xb8c
  88:	6c6d2d20 	ldnp	d0, d11, [x9, #-304]
  8c:	6c747469 	ldnp	d9, d29, [x3, #-192]
  90:	6e652d65 	uqsub	v5.8h, v11.8h, v5.8h
  94:	6e616964 	fcvtxn2	v4.4s, v11.2d
  98:	616d2d20 	.inst	0x616d2d20 ; undefined
  9c:	6c3d6962 	stnp	d2, d26, [x11, #-48]
  a0:	20343670 	.inst	0x20343670 ; undefined
  a4:	6c00672d 	stnp	d13, d25, [x25]
  a8:	20676e6f 	.inst	0x20676e6f ; undefined
  ac:	676e6f6c 	.inst	0x676e6f6c ; undefined
  b0:	736e7520 	.inst	0x736e7520 ; undefined
  b4:	656e6769 	fnmls	z9.h, p1/m, z27.h, z14.h
  b8:	6e692064 	usubl2	v4.4s, v3.8h, v9.8h
  bc:	6e750074 	uaddl2	v20.4s, v3.8h, v21.8h
  c0:	6e676973 	.inst	0x6e676973 ; undefined
  c4:	63206465 	.inst	0x63206465 ; undefined
  c8:	00726168 	.inst	0x00726168 ; undefined
  cc:	696e614d 	ldpsw	x13, x24, [x10, #-144]
  d0:	74616c70 	.inst	0x74616c70 ; undefined
  d4:	74614465 	.inst	0x74614465 ; undefined
  d8:	4d003161 	st3	{v1.b-v3.b}[12], [x11]
  dc:	70696e61 	adr	x1, d2eab <__abi_tag-0x32d3cd>
  e0:	6574616c 	fnmls	z12.h, p0/m, z11.h, z20.h
  e4:	61746144 	.inst	0x61746144 ; undefined
  e8:	736d0032 	.inst	0x736d0032 ; undefined
  ec:	69625f31 	ldpsw	x17, x23, [x25, #-240]
  f0:	6f640067 	mla	v7.8h, v3.8h, v4.h[2]
  f4:	656c6275 	fnmls	z21.h, p0/m, z19.h, z12.h
  f8:	69616d00 	ldpsw	x0, x27, [x8, #-248]
  fc:	6574006e 	fmla	z14.h, p0/m, z3.h, z20.h
 100:	7200706d 	ands	w13, w3, #0x1fffffff
 104:	00327365 	.inst	0x00327365 ; NYI
 108:	63677261 	.inst	0x63677261 ; undefined
 10c:	696e4900 	ldpsw	x0, x18, [x8, #-144]
 110:	6c616974 	ldnp	d20, d26, [x11, #-496]
 114:	4d657a69 	.inst	0x4d657a69 ; undefined
 118:	5f687365 	sqdmlsl	s5, h27, v8.h[2]
 11c:	6e490031 	.inst	0x6e490031 ; undefined
 120:	61697469 	.inst	0x61697469 ; undefined
 124:	657a696c 	fnmls	z12.h, p2/m, z11.h, z26.h
 128:	6873654d 	.inst	0x6873654d ; undefined
 12c:	6c00325f 	stnp	d31, d12, [x18]
 130:	20676e6f 	.inst	0x20676e6f ; undefined
 134:	676e6f6c 	.inst	0x676e6f6c ; undefined
 138:	746e6920 	.inst	0x746e6920 ; undefined
 13c:	69616d00 	ldpsw	x0, x27, [x8, #-248]
 140:	00632e6e 	.inst	0x00632e6e ; undefined
 144:	726f6873 	.inst	0x726f6873 ; undefined
 148:	6e692074 	usubl2	v20.4s, v3.8h, v9.8h
 14c:	72610074 	.inst	0x72610074 ; undefined
 150:	4d007667 	.inst	0x4d007667 ; undefined
 154:	5f687365 	sqdmlsl	s5, h27, v8.h[2]
 158:	00746f64 	.inst	0x00746f64 ; undefined
