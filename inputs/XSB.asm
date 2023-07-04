
XSBench：     文件格式 elf64-littleaarch64


Disassembly of section .init:

0000000000400cb8 <_init>:
  400cb8:	d503201f 	nop
  400cbc:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  400cc0:	910003fd 	mov	x29, sp
  400cc4:	94000180 	bl	4012c4 <call_weak_fn>
  400cc8:	a8c17bfd 	ldp	x29, x30, [sp], #16
  400ccc:	d65f03c0 	ret

Disassembly of section .plt:

0000000000400cd0 <.plt>:
  400cd0:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
  400cd4:	f00000f0 	adrp	x16, 41f000 <__FRAME_END__+0x1b224>
  400cd8:	f947fe11 	ldr	x17, [x16, #4088]
  400cdc:	913fe210 	add	x16, x16, #0xff8
  400ce0:	d61f0220 	br	x17
  400ce4:	d503201f 	nop
  400ce8:	d503201f 	nop
  400cec:	d503201f 	nop

0000000000400cf0 <memcpy@plt>:
  400cf0:	90000110 	adrp	x16, 420000 <memcpy@GLIBC_2.17>
  400cf4:	f9400211 	ldr	x17, [x16]
  400cf8:	91000210 	add	x16, x16, #0x0
  400cfc:	d61f0220 	br	x17

0000000000400d00 <GOMP_loop_nonmonotonic_dynamic_next@plt>:
  400d00:	90000110 	adrp	x16, 420000 <memcpy@GLIBC_2.17>
  400d04:	f9400611 	ldr	x17, [x16, #8]
  400d08:	91002210 	add	x16, x16, #0x8
  400d0c:	d61f0220 	br	x17

0000000000400d10 <strlen@plt>:
  400d10:	90000110 	adrp	x16, 420000 <memcpy@GLIBC_2.17>
  400d14:	f9400a11 	ldr	x17, [x16, #16]
  400d18:	91004210 	add	x16, x16, #0x10
  400d1c:	d61f0220 	br	x17

0000000000400d20 <fputs@plt>:
  400d20:	90000110 	adrp	x16, 420000 <memcpy@GLIBC_2.17>
  400d24:	f9400e11 	ldr	x17, [x16, #24]
  400d28:	91006210 	add	x16, x16, #0x18
  400d2c:	d61f0220 	br	x17

0000000000400d30 <exit@plt>:
  400d30:	90000110 	adrp	x16, 420000 <memcpy@GLIBC_2.17>
  400d34:	f9401211 	ldr	x17, [x16, #32]
  400d38:	91008210 	add	x16, x16, #0x20
  400d3c:	d61f0220 	br	x17

0000000000400d40 <__libc_start_main@plt>:
  400d40:	90000110 	adrp	x16, 420000 <memcpy@GLIBC_2.17>
  400d44:	f9401611 	ldr	x17, [x16, #40]
  400d48:	9100a210 	add	x16, x16, #0x28
  400d4c:	d61f0220 	br	x17

0000000000400d50 <GOMP_loop_end@plt>:
  400d50:	90000110 	adrp	x16, 420000 <memcpy@GLIBC_2.17>
  400d54:	f9401a11 	ldr	x17, [x16, #48]
  400d58:	9100c210 	add	x16, x16, #0x30
  400d5c:	d61f0220 	br	x17

0000000000400d60 <sprintf@plt>:
  400d60:	90000110 	adrp	x16, 420000 <memcpy@GLIBC_2.17>
  400d64:	f9401e11 	ldr	x17, [x16, #56]
  400d68:	9100e210 	add	x16, x16, #0x38
  400d6c:	d61f0220 	br	x17

0000000000400d70 <fputc@plt>:
  400d70:	90000110 	adrp	x16, 420000 <memcpy@GLIBC_2.17>
  400d74:	f9402211 	ldr	x17, [x16, #64]
  400d78:	91010210 	add	x16, x16, #0x40
  400d7c:	d61f0220 	br	x17

0000000000400d80 <qsort@plt>:
  400d80:	90000110 	adrp	x16, 420000 <memcpy@GLIBC_2.17>
  400d84:	f9402611 	ldr	x17, [x16, #72]
  400d88:	91012210 	add	x16, x16, #0x48
  400d8c:	d61f0220 	br	x17

0000000000400d90 <omp_get_wtime@plt>:
  400d90:	90000110 	adrp	x16, 420000 <memcpy@GLIBC_2.17>
  400d94:	f9402a11 	ldr	x17, [x16, #80]
  400d98:	91014210 	add	x16, x16, #0x50
  400d9c:	d61f0220 	br	x17

0000000000400da0 <omp_get_thread_num@plt>:
  400da0:	90000110 	adrp	x16, 420000 <memcpy@GLIBC_2.17>
  400da4:	f9402e11 	ldr	x17, [x16, #88]
  400da8:	91016210 	add	x16, x16, #0x58
  400dac:	d61f0220 	br	x17

0000000000400db0 <omp_set_num_threads@plt>:
  400db0:	90000110 	adrp	x16, 420000 <memcpy@GLIBC_2.17>
  400db4:	f9403211 	ldr	x17, [x16, #96]
  400db8:	91018210 	add	x16, x16, #0x60
  400dbc:	d61f0220 	br	x17

0000000000400dc0 <fclose@plt>:
  400dc0:	90000110 	adrp	x16, 420000 <memcpy@GLIBC_2.17>
  400dc4:	f9403611 	ldr	x17, [x16, #104]
  400dc8:	9101a210 	add	x16, x16, #0x68
  400dcc:	d61f0220 	br	x17

0000000000400dd0 <fopen@plt>:
  400dd0:	90000110 	adrp	x16, 420000 <memcpy@GLIBC_2.17>
  400dd4:	f9403a11 	ldr	x17, [x16, #112]
  400dd8:	9101c210 	add	x16, x16, #0x70
  400ddc:	d61f0220 	br	x17

0000000000400de0 <time@plt>:
  400de0:	90000110 	adrp	x16, 420000 <memcpy@GLIBC_2.17>
  400de4:	f9403e11 	ldr	x17, [x16, #120]
  400de8:	9101e210 	add	x16, x16, #0x78
  400dec:	d61f0220 	br	x17

0000000000400df0 <malloc@plt>:
  400df0:	90000110 	adrp	x16, 420000 <memcpy@GLIBC_2.17>
  400df4:	f9404211 	ldr	x17, [x16, #128]
  400df8:	91020210 	add	x16, x16, #0x80
  400dfc:	d61f0220 	br	x17

0000000000400e00 <memset@plt>:
  400e00:	90000110 	adrp	x16, 420000 <memcpy@GLIBC_2.17>
  400e04:	f9404611 	ldr	x17, [x16, #136]
  400e08:	91022210 	add	x16, x16, #0x88
  400e0c:	d61f0220 	br	x17

0000000000400e10 <strcasecmp@plt>:
  400e10:	90000110 	adrp	x16, 420000 <memcpy@GLIBC_2.17>
  400e14:	f9404a11 	ldr	x17, [x16, #144]
  400e18:	91024210 	add	x16, x16, #0x90
  400e1c:	d61f0220 	br	x17

0000000000400e20 <rand@plt>:
  400e20:	90000110 	adrp	x16, 420000 <memcpy@GLIBC_2.17>
  400e24:	f9404e11 	ldr	x17, [x16, #152]
  400e28:	91026210 	add	x16, x16, #0x98
  400e2c:	d61f0220 	br	x17

0000000000400e30 <omp_get_num_threads@plt>:
  400e30:	90000110 	adrp	x16, 420000 <memcpy@GLIBC_2.17>
  400e34:	f9405211 	ldr	x17, [x16, #160]
  400e38:	91028210 	add	x16, x16, #0xa0
  400e3c:	d61f0220 	br	x17

0000000000400e40 <__gmon_start__@plt>:
  400e40:	90000110 	adrp	x16, 420000 <memcpy@GLIBC_2.17>
  400e44:	f9405611 	ldr	x17, [x16, #168]
  400e48:	9102a210 	add	x16, x16, #0xa8
  400e4c:	d61f0220 	br	x17

0000000000400e50 <abort@plt>:
  400e50:	90000110 	adrp	x16, 420000 <memcpy@GLIBC_2.17>
  400e54:	f9405a11 	ldr	x17, [x16, #176]
  400e58:	9102c210 	add	x16, x16, #0xb0
  400e5c:	d61f0220 	br	x17

0000000000400e60 <puts@plt>:
  400e60:	90000110 	adrp	x16, 420000 <memcpy@GLIBC_2.17>
  400e64:	f9405e11 	ldr	x17, [x16, #184]
  400e68:	9102e210 	add	x16, x16, #0xb8
  400e6c:	d61f0220 	br	x17

0000000000400e70 <omp_get_num_procs@plt>:
  400e70:	90000110 	adrp	x16, 420000 <memcpy@GLIBC_2.17>
  400e74:	f9406211 	ldr	x17, [x16, #192]
  400e78:	91030210 	add	x16, x16, #0xc0
  400e7c:	d61f0220 	br	x17

0000000000400e80 <GOMP_loop_nonmonotonic_dynamic_start@plt>:
  400e80:	90000110 	adrp	x16, 420000 <memcpy@GLIBC_2.17>
  400e84:	f9406611 	ldr	x17, [x16, #200]
  400e88:	91032210 	add	x16, x16, #0xc8
  400e8c:	d61f0220 	br	x17

0000000000400e90 <strtol@plt>:
  400e90:	90000110 	adrp	x16, 420000 <memcpy@GLIBC_2.17>
  400e94:	f9406a11 	ldr	x17, [x16, #208]
  400e98:	91034210 	add	x16, x16, #0xd0
  400e9c:	d61f0220 	br	x17

0000000000400ea0 <free@plt>:
  400ea0:	90000110 	adrp	x16, 420000 <memcpy@GLIBC_2.17>
  400ea4:	f9406e11 	ldr	x17, [x16, #216]
  400ea8:	91036210 	add	x16, x16, #0xd8
  400eac:	d61f0220 	br	x17

0000000000400eb0 <fwrite@plt>:
  400eb0:	90000110 	adrp	x16, 420000 <memcpy@GLIBC_2.17>
  400eb4:	f9407211 	ldr	x17, [x16, #224]
  400eb8:	91038210 	add	x16, x16, #0xe0
  400ebc:	d61f0220 	br	x17

0000000000400ec0 <srand@plt>:
  400ec0:	90000110 	adrp	x16, 420000 <memcpy@GLIBC_2.17>
  400ec4:	f9407611 	ldr	x17, [x16, #232]
  400ec8:	9103a210 	add	x16, x16, #0xe8
  400ecc:	d61f0220 	br	x17

0000000000400ed0 <printf@plt>:
  400ed0:	90000110 	adrp	x16, 420000 <memcpy@GLIBC_2.17>
  400ed4:	f9407a11 	ldr	x17, [x16, #240]
  400ed8:	9103c210 	add	x16, x16, #0xf0
  400edc:	d61f0220 	br	x17

0000000000400ee0 <GOMP_parallel@plt>:
  400ee0:	90000110 	adrp	x16, 420000 <memcpy@GLIBC_2.17>
  400ee4:	f9407e11 	ldr	x17, [x16, #248]
  400ee8:	9103e210 	add	x16, x16, #0xf8
  400eec:	d61f0220 	br	x17

0000000000400ef0 <putchar@plt>:
  400ef0:	90000110 	adrp	x16, 420000 <memcpy@GLIBC_2.17>
  400ef4:	f9408211 	ldr	x17, [x16, #256]
  400ef8:	91040210 	add	x16, x16, #0x100
  400efc:	d61f0220 	br	x17

0000000000400f00 <fprintf@plt>:
  400f00:	90000110 	adrp	x16, 420000 <memcpy@GLIBC_2.17>
  400f04:	f9408611 	ldr	x17, [x16, #264]
  400f08:	91042210 	add	x16, x16, #0x108
  400f0c:	d61f0220 	br	x17

Disassembly of section .text:

0000000000400f40 <main>:
  400f40:	a9b37bfd 	stp	x29, x30, [sp, #-208]!
  400f44:	910003fd 	mov	x29, sp
  400f48:	a90153f3 	stp	x19, x20, [sp, #16]
  400f4c:	aa0103f4 	mov	x20, x1
  400f50:	2a0003f3 	mov	w19, w0
  400f54:	a9025bf5 	stp	x21, x22, [sp, #32]
  400f58:	a90363f7 	stp	x23, x24, [sp, #48]
  400f5c:	a9046bf9 	stp	x25, x26, [sp, #64]
  400f60:	f9002bfb 	str	x27, [sp, #80]
  400f64:	fd002fe8 	str	d8, [sp, #88]
  400f68:	b9006fe0 	str	w0, [sp, #108]
  400f6c:	97ffffc1 	bl	400e70 <omp_get_num_procs@plt>
  400f70:	d2800000 	mov	x0, #0x0                   	// #0
  400f74:	97ffff9b 	bl	400de0 <time@plt>
  400f78:	97ffffd2 	bl	400ec0 <srand@plt>
  400f7c:	9101e3e8 	add	x8, sp, #0x78
  400f80:	aa1403e1 	mov	x1, x20
  400f84:	2a1303e0 	mov	w0, w19
  400f88:	940004c2 	bl	402290 <read_CLI>
  400f8c:	294f4ff6 	ldp	w22, w19, [sp, #120]
  400f90:	29505ff4 	ldp	w20, w23, [sp, #128]
  400f94:	2a1603e0 	mov	w0, w22
  400f98:	f94047f9 	ldr	x25, [sp, #136]
  400f9c:	97ffff85 	bl	400db0 <omp_set_num_threads@plt>
  400fa0:	52800160 	mov	w0, #0xb                   	// #11
  400fa4:	940003c7 	bl	401ec0 <logo>
  400fa8:	d0000000 	adrp	x0, 402000 <center_print+0x3c>
  400fac:	91322000 	add	x0, x0, #0xc88
  400fb0:	528009e1 	mov	w1, #0x4f                  	// #79
  400fb4:	94000404 	bl	401fc4 <center_print>
  400fb8:	1b147e78 	mul	w24, w19, w20
  400fbc:	93407e75 	sxtw	x21, w19
  400fc0:	94000424 	bl	402050 <border_print>
  400fc4:	52800181 	mov	w1, #0xc                   	// #12
  400fc8:	d0000000 	adrp	x0, 402000 <center_print+0x3c>
  400fcc:	91326000 	add	x0, x0, #0xc98
  400fd0:	97ffffc0 	bl	400ed0 <printf@plt>
  400fd4:	aa1903e1 	mov	x1, x25
  400fd8:	d0000000 	adrp	x0, 402000 <center_print+0x3c>
  400fdc:	91330000 	add	x0, x0, #0xcc0
  400fe0:	97ffffbc 	bl	400ed0 <printf@plt>
  400fe4:	2a1303e1 	mov	w1, w19
  400fe8:	d0000000 	adrp	x0, 402000 <center_print+0x3c>
  400fec:	9133a000 	add	x0, x0, #0xce8
  400ff0:	97ffffb8 	bl	400ed0 <printf@plt>
  400ff4:	d0000000 	adrp	x0, 402000 <center_print+0x3c>
  400ff8:	91344000 	add	x0, x0, #0xd10
  400ffc:	97ffffb5 	bl	400ed0 <printf@plt>
  401000:	2a1403e0 	mov	w0, w20
  401004:	94000417 	bl	402060 <fancy_int>
  401008:	b0000000 	adrp	x0, 402000 <center_print+0x3c>
  40100c:	9134c000 	add	x0, x0, #0xd30
  401010:	97ffffb0 	bl	400ed0 <printf@plt>
  401014:	2a1803e0 	mov	w0, w24
  401018:	94000412 	bl	402060 <fancy_int>
  40101c:	b0000000 	adrp	x0, 402000 <center_print+0x3c>
  401020:	91354000 	add	x0, x0, #0xd50
  401024:	97ffffab 	bl	400ed0 <printf@plt>
  401028:	2a1703e0 	mov	w0, w23
  40102c:	9400040d 	bl	402060 <fancy_int>
  401030:	2a1603e1 	mov	w1, w22
  401034:	b0000000 	adrp	x0, 402000 <center_print+0x3c>
  401038:	9135c000 	add	x0, x0, #0xd70
  40103c:	97ffffa5 	bl	400ed0 <printf@plt>
  401040:	b0000000 	adrp	x0, 402000 <center_print+0x3c>
  401044:	91366000 	add	x0, x0, #0xd98
  401048:	97ffffa2 	bl	400ed0 <printf@plt>
  40104c:	9b337e81 	smull	x1, w20, w19
  401050:	d37ef6a0 	lsl	x0, x21, #2
  401054:	91010000 	add	x0, x0, #0x40
  401058:	9b017c00 	mul	x0, x0, x1
  40105c:	d354cc00 	ubfx	x0, x0, #20, #32
  401060:	94000400 	bl	402060 <fancy_int>
  401064:	940003fb 	bl	402050 <border_print>
  401068:	b0000000 	adrp	x0, 402000 <center_print+0x3c>
  40106c:	9136e000 	add	x0, x0, #0xdb8
  401070:	528009e1 	mov	w1, #0x4f                  	// #79
  401074:	940003d4 	bl	401fc4 <center_print>
  401078:	940003f6 	bl	402050 <border_print>
  40107c:	b0000000 	adrp	x0, 402000 <center_print+0x3c>
  401080:	91372000 	add	x0, x0, #0xdc8
  401084:	97ffff77 	bl	400e60 <puts@plt>
  401088:	93407e81 	sxtw	x1, w20
  40108c:	aa1503e0 	mov	x0, x21
  401090:	94000358 	bl	401df0 <gpmatrix>
  401094:	aa0003f5 	mov	x21, x0
  401098:	2a1403e2 	mov	w2, w20
  40109c:	2a1303e1 	mov	w1, w19
  4010a0:	94000251 	bl	4019e4 <generate_grids>
  4010a4:	b0000000 	adrp	x0, 402000 <center_print+0x3c>
  4010a8:	9137c000 	add	x0, x0, #0xdf0
  4010ac:	97ffff6d 	bl	400e60 <puts@plt>
  4010b0:	2a1403e2 	mov	w2, w20
  4010b4:	2a1303e1 	mov	w1, w19
  4010b8:	aa1503e0 	mov	x0, x21
  4010bc:	940002c2 	bl	401bc4 <sort_nuclide_grids>
  4010c0:	aa1503e2 	mov	x2, x21
  4010c4:	2a1403e1 	mov	w1, w20
  4010c8:	2a1303e0 	mov	w0, w19
  4010cc:	940002d9 	bl	401c30 <generate_energy_grid>
  4010d0:	2a1403e3 	mov	w3, w20
  4010d4:	2a1303e2 	mov	w2, w19
  4010d8:	aa1503e1 	mov	x1, x21
  4010dc:	aa0003fb 	mov	x27, x0
  4010e0:	94000328 	bl	401d80 <set_grid_ptrs>
  4010e4:	b0000000 	adrp	x0, 402000 <center_print+0x3c>
  4010e8:	91384000 	add	x0, x0, #0xe10
  4010ec:	97ffff5d 	bl	400e60 <puts@plt>
  4010f0:	2a1303e0 	mov	w0, w19
  4010f4:	9400052f 	bl	4025b0 <load_num_nucs>
  4010f8:	2a1303e1 	mov	w1, w19
  4010fc:	aa0003f8 	mov	x24, x0
  401100:	94000545 	bl	402614 <load_mats>
  401104:	aa0003fa 	mov	x26, x0
  401108:	aa1803e0 	mov	x0, x24
  40110c:	9400061e 	bl	402984 <load_concs>
  401110:	aa0003f9 	mov	x25, x0
  401114:	52800140 	mov	w0, #0xa                   	// #10
  401118:	97ffff76 	bl	400ef0 <putchar@plt>
  40111c:	940003cd 	bl	402050 <border_print>
  401120:	b0000000 	adrp	x0, 402000 <center_print+0x3c>
  401124:	91388000 	add	x0, x0, #0xe20
  401128:	528009e1 	mov	w1, #0x4f                  	// #79
  40112c:	940003a6 	bl	401fc4 <center_print>
  401130:	940003c8 	bl	402050 <border_print>
  401134:	97ffff17 	bl	400d90 <omp_get_wtime@plt>
  401138:	1e604008 	fmov	d8, d0
  40113c:	910243e1 	add	x1, sp, #0x90
  401140:	52800003 	mov	w3, #0x0                   	// #0
  401144:	52800002 	mov	w2, #0x0                   	// #0
  401148:	90000000 	adrp	x0, 401000 <main+0xc0>
  40114c:	91138000 	add	x0, x0, #0x4e0
  401150:	a90957fb 	stp	x27, x21, [sp, #144]
  401154:	a90a67fa 	stp	x26, x25, [sp, #160]
  401158:	f9005bf8 	str	x24, [sp, #176]
  40115c:	291753f3 	stp	w19, w20, [sp, #184]
  401160:	29185bf7 	stp	w23, w22, [sp, #192]
  401164:	b900cbff 	str	wzr, [sp, #200]
  401168:	97ffff5e 	bl	400ee0 <GOMP_parallel@plt>
  40116c:	52800140 	mov	w0, #0xa                   	// #10
  401170:	97ffff60 	bl	400ef0 <putchar@plt>
  401174:	b0000000 	adrp	x0, 402000 <center_print+0x3c>
  401178:	9138c000 	add	x0, x0, #0xe30
  40117c:	97ffff39 	bl	400e60 <puts@plt>
  401180:	97ffff04 	bl	400d90 <omp_get_wtime@plt>
  401184:	1e683808 	fsub	d8, d0, d8
  401188:	1e6202e1 	scvtf	d1, w23
  40118c:	1e681821 	fdiv	d1, d1, d8
  401190:	1e780033 	fcvtzs	w19, d1
  401194:	940003af 	bl	402050 <border_print>
  401198:	b0000000 	adrp	x0, 402000 <center_print+0x3c>
  40119c:	91392000 	add	x0, x0, #0xe48
  4011a0:	528009e1 	mov	w1, #0x4f                  	// #79
  4011a4:	94000388 	bl	401fc4 <center_print>
  4011a8:	940003aa 	bl	402050 <border_print>
  4011ac:	2a1603e1 	mov	w1, w22
  4011b0:	b0000000 	adrp	x0, 402000 <center_print+0x3c>
  4011b4:	91394000 	add	x0, x0, #0xe50
  4011b8:	97ffff46 	bl	400ed0 <printf@plt>
  4011bc:	1e604100 	fmov	d0, d8
  4011c0:	b0000000 	adrp	x0, 402000 <center_print+0x3c>
  4011c4:	9139a000 	add	x0, x0, #0xe68
  4011c8:	97ffff42 	bl	400ed0 <printf@plt>
  4011cc:	b0000000 	adrp	x0, 402000 <center_print+0x3c>
  4011d0:	913a2000 	add	x0, x0, #0xe88
  4011d4:	97ffff3f 	bl	400ed0 <printf@plt>
  4011d8:	2a1703e0 	mov	w0, w23
  4011dc:	940003a1 	bl	402060 <fancy_int>
  4011e0:	b0000000 	adrp	x0, 402000 <center_print+0x3c>
  4011e4:	913a6000 	add	x0, x0, #0xe98
  4011e8:	97ffff3a 	bl	400ed0 <printf@plt>
  4011ec:	2a1303e0 	mov	w0, w19
  4011f0:	9400039c 	bl	402060 <fancy_int>
  4011f4:	94000397 	bl	402050 <border_print>
  4011f8:	b0000001 	adrp	x1, 402000 <center_print+0x3c>
  4011fc:	b0000000 	adrp	x0, 402000 <center_print+0x3c>
  401200:	913aa021 	add	x1, x1, #0xea8
  401204:	913ac000 	add	x0, x0, #0xeb0
  401208:	97fffef2 	bl	400dd0 <fopen@plt>
  40120c:	2a1303e3 	mov	w3, w19
  401210:	2a1603e2 	mov	w2, w22
  401214:	b0000001 	adrp	x1, 402000 <center_print+0x3c>
  401218:	913b0021 	add	x1, x1, #0xec0
  40121c:	aa0003f3 	mov	x19, x0
  401220:	97ffff38 	bl	400f00 <fprintf@plt>
  401224:	aa1303e0 	mov	x0, x19
  401228:	97fffee6 	bl	400dc0 <fclose@plt>
  40122c:	52800000 	mov	w0, #0x0                   	// #0
  401230:	fd402fe8 	ldr	d8, [sp, #88]
  401234:	a94153f3 	ldp	x19, x20, [sp, #16]
  401238:	a9425bf5 	ldp	x21, x22, [sp, #32]
  40123c:	a94363f7 	ldp	x23, x24, [sp, #48]
  401240:	a9446bf9 	ldp	x25, x26, [sp, #64]
  401244:	f9402bfb 	ldr	x27, [sp, #80]
  401248:	a8cd7bfd 	ldp	x29, x30, [sp], #208
  40124c:	d65f03c0 	ret
  401250:	d503201f 	nop
  401254:	d503201f 	nop
  401258:	d503201f 	nop
  40125c:	d503201f 	nop
  401260:	d503201f 	nop
  401264:	d503201f 	nop
  401268:	d503201f 	nop
  40126c:	d503201f 	nop
  401270:	d503201f 	nop
  401274:	d503201f 	nop
  401278:	d503201f 	nop
  40127c:	d503201f 	nop

0000000000401280 <_start>:
  401280:	d503201f 	nop
  401284:	d280001d 	mov	x29, #0x0                   	// #0
  401288:	d280001e 	mov	x30, #0x0                   	// #0
  40128c:	aa0003e5 	mov	x5, x0
  401290:	f94003e1 	ldr	x1, [sp]
  401294:	910023e2 	add	x2, sp, #0x8
  401298:	910003e6 	mov	x6, sp
  40129c:	90000000 	adrp	x0, 401000 <main+0xc0>
  4012a0:	910ad000 	add	x0, x0, #0x2b4
  4012a4:	d2800003 	mov	x3, #0x0                   	// #0
  4012a8:	d2800004 	mov	x4, #0x0                   	// #0
  4012ac:	97fffea5 	bl	400d40 <__libc_start_main@plt>
  4012b0:	97fffee8 	bl	400e50 <abort@plt>

00000000004012b4 <__wrap_main>:
  4012b4:	d503201f 	nop
  4012b8:	17ffff22 	b	400f40 <main>
  4012bc:	d503201f 	nop

00000000004012c0 <_dl_relocate_static_pie>:
  4012c0:	d65f03c0 	ret

00000000004012c4 <call_weak_fn>:
  4012c4:	d00000e0 	adrp	x0, 41f000 <__FRAME_END__+0x1b224>
  4012c8:	f947ec00 	ldr	x0, [x0, #4056]
  4012cc:	b4000040 	cbz	x0, 4012d4 <call_weak_fn+0x10>
  4012d0:	17fffedc 	b	400e40 <__gmon_start__@plt>
  4012d4:	d65f03c0 	ret
  4012d8:	d503201f 	nop
  4012dc:	d503201f 	nop

00000000004012e0 <deregister_tm_clones>:
  4012e0:	f00000e0 	adrp	x0, 420000 <memcpy@GLIBC_2.17>
  4012e4:	9104a000 	add	x0, x0, #0x128
  4012e8:	f00000e1 	adrp	x1, 420000 <memcpy@GLIBC_2.17>
  4012ec:	9104a021 	add	x1, x1, #0x128
  4012f0:	eb00003f 	cmp	x1, x0
  4012f4:	540000c0 	b.eq	40130c <deregister_tm_clones+0x2c>  // b.none
  4012f8:	d00000e1 	adrp	x1, 41f000 <__FRAME_END__+0x1b224>
  4012fc:	f947e821 	ldr	x1, [x1, #4048]
  401300:	b4000061 	cbz	x1, 40130c <deregister_tm_clones+0x2c>
  401304:	aa0103f0 	mov	x16, x1
  401308:	d61f0200 	br	x16
  40130c:	d65f03c0 	ret

0000000000401310 <register_tm_clones>:
  401310:	f00000e0 	adrp	x0, 420000 <memcpy@GLIBC_2.17>
  401314:	9104a000 	add	x0, x0, #0x128
  401318:	f00000e1 	adrp	x1, 420000 <memcpy@GLIBC_2.17>
  40131c:	9104a021 	add	x1, x1, #0x128
  401320:	cb000021 	sub	x1, x1, x0
  401324:	d37ffc22 	lsr	x2, x1, #63
  401328:	8b810c41 	add	x1, x2, x1, asr #3
  40132c:	9341fc21 	asr	x1, x1, #1
  401330:	b40000c1 	cbz	x1, 401348 <register_tm_clones+0x38>
  401334:	d00000e2 	adrp	x2, 41f000 <__FRAME_END__+0x1b224>
  401338:	f947f042 	ldr	x2, [x2, #4064]
  40133c:	b4000062 	cbz	x2, 401348 <register_tm_clones+0x38>
  401340:	aa0203f0 	mov	x16, x2
  401344:	d61f0200 	br	x16
  401348:	d65f03c0 	ret
  40134c:	d503201f 	nop

0000000000401350 <__do_global_dtors_aux>:
  401350:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  401354:	910003fd 	mov	x29, sp
  401358:	f9000bf3 	str	x19, [sp, #16]
  40135c:	f00000f3 	adrp	x19, 420000 <memcpy@GLIBC_2.17>
  401360:	3944c260 	ldrb	w0, [x19, #304]
  401364:	35000080 	cbnz	w0, 401374 <__do_global_dtors_aux+0x24>
  401368:	97ffffde 	bl	4012e0 <deregister_tm_clones>
  40136c:	52800020 	mov	w0, #0x1                   	// #1
  401370:	3904c260 	strb	w0, [x19, #304]
  401374:	f9400bf3 	ldr	x19, [sp, #16]
  401378:	a8c27bfd 	ldp	x29, x30, [sp], #32
  40137c:	d65f03c0 	ret

0000000000401380 <frame_dummy>:
  401380:	17ffffe4 	b	401310 <register_tm_clones>

0000000000401384 <do_flops>:
  401384:	d10083ff 	sub	sp, sp, #0x20
  401388:	b0000000 	adrp	x0, 402000 <center_print+0x3c>
  40138c:	fd462400 	ldr	d0, [x0, #3144]
  401390:	fd000fe0 	str	d0, [sp, #24]
  401394:	b0000000 	adrp	x0, 402000 <center_print+0x3c>
  401398:	fd462800 	ldr	d0, [x0, #3152]
  40139c:	fd0007e0 	str	d0, [sp, #8]
  4013a0:	b90017ff 	str	wzr, [sp, #20]
  4013a4:	14000008 	b	4013c4 <do_flops+0x40>
  4013a8:	fd400fe1 	ldr	d1, [sp, #24]
  4013ac:	fd4007e0 	ldr	d0, [sp, #8]
  4013b0:	1e600820 	fmul	d0, d1, d0
  4013b4:	fd000fe0 	str	d0, [sp, #24]
  4013b8:	b94017e0 	ldr	w0, [sp, #20]
  4013bc:	11000400 	add	w0, w0, #0x1
  4013c0:	b90017e0 	str	w0, [sp, #20]
  4013c4:	b94017e0 	ldr	w0, [sp, #20]
  4013c8:	7100001f 	cmp	w0, #0x0
  4013cc:	54fffeeb 	b.lt	4013a8 <do_flops+0x24>  // b.tstop
  4013d0:	d503201f 	nop
  4013d4:	d503201f 	nop
  4013d8:	910083ff 	add	sp, sp, #0x20
  4013dc:	d65f03c0 	ret

00000000004013e0 <do_loads>:
  4013e0:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
  4013e4:	910003fd 	mov	x29, sp
  4013e8:	b9001fe0 	str	w0, [sp, #28]
  4013ec:	f9000be1 	str	x1, [sp, #16]
  4013f0:	b9001be2 	str	w2, [sp, #24]
  4013f4:	b9801fe0 	ldrsw	x0, [sp, #28]
  4013f8:	f90017e0 	str	x0, [sp, #40]
  4013fc:	b9003fff 	str	wzr, [sp, #60]
  401400:	14000019 	b	401464 <do_loads+0x84>
  401404:	9100a3e0 	add	x0, sp, #0x28
  401408:	9400001e 	bl	401480 <rn_int>
  40140c:	b9401be1 	ldr	w1, [sp, #24]
  401410:	1ac10c02 	sdiv	w2, w0, w1
  401414:	b9401be1 	ldr	w1, [sp, #24]
  401418:	1b017c41 	mul	w1, w2, w1
  40141c:	4b010000 	sub	w0, w0, w1
  401420:	b9003be0 	str	w0, [sp, #56]
  401424:	b9801fe0 	ldrsw	x0, [sp, #28]
  401428:	d37df000 	lsl	x0, x0, #3
  40142c:	f9400be1 	ldr	x1, [sp, #16]
  401430:	8b000020 	add	x0, x1, x0
  401434:	f9400002 	ldr	x2, [x0]
  401438:	b9803be1 	ldrsw	x1, [sp, #56]
  40143c:	aa0103e0 	mov	x0, x1
  401440:	d37ff800 	lsl	x0, x0, #1
  401444:	8b010000 	add	x0, x0, x1
  401448:	d37cec00 	lsl	x0, x0, #4
  40144c:	8b000040 	add	x0, x2, x0
  401450:	fd400400 	ldr	d0, [x0, #8]
  401454:	fd001be0 	str	d0, [sp, #48]
  401458:	b9403fe0 	ldr	w0, [sp, #60]
  40145c:	11000400 	add	w0, w0, #0x1
  401460:	b9003fe0 	str	w0, [sp, #60]
  401464:	b9403fe0 	ldr	w0, [sp, #60]
  401468:	7100001f 	cmp	w0, #0x0
  40146c:	54fffccb 	b.lt	401404 <do_loads+0x24>  // b.tstop
  401470:	d503201f 	nop
  401474:	d503201f 	nop
  401478:	a8c47bfd 	ldp	x29, x30, [sp], #64
  40147c:	d65f03c0 	ret

0000000000401480 <rn_int>:
  401480:	d100c3ff 	sub	sp, sp, #0x30
  401484:	f90007e0 	str	x0, [sp, #8]
  401488:	d28834e0 	mov	x0, #0x41a7                	// #16807
  40148c:	f90017e0 	str	x0, [sp, #40]
  401490:	b2407be0 	mov	x0, #0x7fffffff            	// #2147483647
  401494:	f90013e0 	str	x0, [sp, #32]
  401498:	f94007e0 	ldr	x0, [sp, #8]
  40149c:	f9400001 	ldr	x1, [x0]
  4014a0:	f94017e0 	ldr	x0, [sp, #40]
  4014a4:	9b007c20 	mul	x0, x1, x0
  4014a8:	f94013e1 	ldr	x1, [sp, #32]
  4014ac:	9ac10802 	udiv	x2, x0, x1
  4014b0:	f94013e1 	ldr	x1, [sp, #32]
  4014b4:	9b017c41 	mul	x1, x2, x1
  4014b8:	cb010000 	sub	x0, x0, x1
  4014bc:	f9000fe0 	str	x0, [sp, #24]
  4014c0:	f94007e0 	ldr	x0, [sp, #8]
  4014c4:	f9400fe1 	ldr	x1, [sp, #24]
  4014c8:	f9000001 	str	x1, [x0]
  4014cc:	f9400fe0 	ldr	x0, [sp, #24]
  4014d0:	9100c3ff 	add	sp, sp, #0x30
  4014d4:	d65f03c0 	ret
  4014d8:	d503201f 	nop
  4014dc:	d503201f 	nop

00000000004014e0 <main._omp_fn.0>:
  4014e0:	d10383ff 	sub	sp, sp, #0xe0
  4014e4:	a9017bfd 	stp	x29, x30, [sp, #16]
  4014e8:	910043fd 	add	x29, sp, #0x10
  4014ec:	a9035bf5 	stp	x21, x22, [sp, #48]
  4014f0:	29460415 	ldp	w21, w1, [x0, #48]
  4014f4:	a90253f3 	stp	x19, x20, [sp, #32]
  4014f8:	b9403813 	ldr	w19, [x0, #56]
  4014fc:	a90463f7 	stp	x23, x24, [sp, #64]
  401500:	a9056bf9 	stp	x25, x26, [sp, #80]
  401504:	a90673fb 	stp	x27, x28, [sp, #96]
  401508:	29456c1c 	ldp	w28, w27, [x0, #40]
  40150c:	291257e1 	stp	w1, w21, [sp, #144]
  401510:	a940641a 	ldp	x26, x25, [x0]
  401514:	a9415c18 	ldp	x24, x23, [x0, #16]
  401518:	f9401016 	ldr	x22, [x0, #32]
  40151c:	97fffe21 	bl	400da0 <omp_get_thread_num@plt>
  401520:	2a0003f4 	mov	w20, w0
  401524:	52800262 	mov	w2, #0x13                  	// #19
  401528:	d2800023 	mov	x3, #0x1                   	// #1
  40152c:	93407ea1 	sxtw	x1, w21
  401530:	9102c3e5 	add	x5, sp, #0xb0
  401534:	9102a3e4 	add	x4, sp, #0xa8
  401538:	1b020a86 	madd	w6, w20, w2, w2
  40153c:	d2800000 	mov	x0, #0x0                   	// #0
  401540:	aa0303e2 	mov	x2, x3
  401544:	110044c6 	add	w6, w6, #0x11
  401548:	93407cc6 	sxtw	x6, w6
  40154c:	f90053e6 	str	x6, [sp, #160]
  401550:	97fffe4c 	bl	400e80 <GOMP_loop_nonmonotonic_dynamic_start@plt>
  401554:	72001c1f 	tst	w0, #0xff
  401558:	54000800 	b.eq	401658 <main._omp_fn.0+0x178>  // b.none
  40155c:	2a140260 	orr	w0, w19, w20
  401560:	b9008fe0 	str	w0, [sp, #140]
  401564:	b0000000 	adrp	x0, 402000 <center_print+0x3c>
  401568:	91316000 	add	x0, x0, #0xc58
  40156c:	6d0727e8 	stp	d8, d9, [sp, #112]
  401570:	f9004fe0 	str	x0, [sp, #152]
  401574:	d2e80b20 	mov	x0, #0x4059000000000000    	// #4636737291354636288
  401578:	9e670009 	fmov	d9, x0
  40157c:	d503201f 	nop
  401580:	5289ba75 	mov	w21, #0x4dd3                	// #19923
  401584:	b940abf3 	ldr	w19, [sp, #168]
  401588:	b940b3f4 	ldr	w20, [sp, #176]
  40158c:	72a20c55 	movk	w21, #0x1062, lsl #16
  401590:	14000013 	b	4015dc <main._omp_fn.0+0xfc>
  401594:	9400030f 	bl	4021d0 <rn>
  401598:	11000673 	add	w19, w19, #0x1
  40159c:	910283e0 	add	x0, sp, #0xa0
  4015a0:	1e604008 	fmov	d8, d0
  4015a4:	9400054f 	bl	402ae0 <pick_mat>
  4015a8:	1e604100 	fmov	d0, d8
  4015ac:	9102e3e1 	add	x1, sp, #0xb8
  4015b0:	f90003e1 	str	x1, [sp]
  4015b4:	aa1803e7 	mov	x7, x24
  4015b8:	aa1903e6 	mov	x6, x25
  4015bc:	aa1a03e5 	mov	x5, x26
  4015c0:	aa1703e4 	mov	x4, x23
  4015c4:	aa1603e3 	mov	x3, x22
  4015c8:	2a1b03e2 	mov	w2, w27
  4015cc:	2a1c03e1 	mov	w1, w28
  4015d0:	94000051 	bl	401714 <calculate_macro_xs>
  4015d4:	6b13029f 	cmp	w20, w19
  4015d8:	5400034d 	b.le	401640 <main._omp_fn.0+0x160>
  4015dc:	9b357e61 	smull	x1, w19, w21
  4015e0:	52807d02 	mov	w2, #0x3e8                 	// #1000
  4015e4:	910283e0 	add	x0, sp, #0xa0
  4015e8:	9366fc21 	asr	x1, x1, #38
  4015ec:	4b937c21 	sub	w1, w1, w19, asr #31
  4015f0:	1b02cc21 	msub	w1, w1, w2, w19
  4015f4:	b9408fe2 	ldr	w2, [sp, #140]
  4015f8:	2a020021 	orr	w1, w1, w2
  4015fc:	35fffcc1 	cbnz	w1, 401594 <main._omp_fn.0+0xb4>
  401600:	b94093e0 	ldr	w0, [sp, #144]
  401604:	1e620261 	scvtf	d1, w19
  401608:	11000673 	add	w19, w19, #0x1
  40160c:	1e620002 	scvtf	d2, w0
  401610:	b94097e0 	ldr	w0, [sp, #148]
  401614:	1e620000 	scvtf	d0, w0
  401618:	f9404fe0 	ldr	x0, [sp, #152]
  40161c:	1e621800 	fdiv	d0, d0, d2
  401620:	1e601820 	fdiv	d0, d1, d0
  401624:	1e621800 	fdiv	d0, d0, d2
  401628:	1e690800 	fmul	d0, d0, d9
  40162c:	97fffe29 	bl	400ed0 <printf@plt>
  401630:	910283e0 	add	x0, sp, #0xa0
  401634:	940002e7 	bl	4021d0 <rn>
  401638:	910283e0 	add	x0, sp, #0xa0
  40163c:	17ffffd9 	b	4015a0 <main._omp_fn.0+0xc0>
  401640:	9102c3e1 	add	x1, sp, #0xb0
  401644:	9102a3e0 	add	x0, sp, #0xa8
  401648:	97fffdae 	bl	400d00 <GOMP_loop_nonmonotonic_dynamic_next@plt>
  40164c:	72001c1f 	tst	w0, #0xff
  401650:	54fff981 	b.ne	401580 <main._omp_fn.0+0xa0>  // b.any
  401654:	6d4727e8 	ldp	d8, d9, [sp, #112]
  401658:	97fffdbe 	bl	400d50 <GOMP_loop_end@plt>
  40165c:	a9417bfd 	ldp	x29, x30, [sp, #16]
  401660:	a94253f3 	ldp	x19, x20, [sp, #32]
  401664:	a9435bf5 	ldp	x21, x22, [sp, #48]
  401668:	a94463f7 	ldp	x23, x24, [sp, #64]
  40166c:	a9456bf9 	ldp	x25, x26, [sp, #80]
  401670:	a94673fb 	ldp	x27, x28, [sp, #96]
  401674:	910383ff 	add	sp, sp, #0xe0
  401678:	d65f03c0 	ret
  40167c:	d503201f 	nop

0000000000401680 <calculate_micro_xs>:
  401680:	8b25d065 	add	x5, x3, w5, sxtw #4
  401684:	93407c00 	sxtw	x0, w0
  401688:	52800607 	mov	w7, #0x30                  	// #48
  40168c:	51000442 	sub	w2, w2, #0x1
  401690:	f94004a1 	ldr	x1, [x5, #8]
  401694:	f8607883 	ldr	x3, [x4, x0, lsl #3]
  401698:	b8607821 	ldr	w1, [x1, x0, lsl #2]
  40169c:	6b02003f 	cmp	w1, w2
  4016a0:	9b277c21 	smull	x1, w1, w7
  4016a4:	d100c020 	sub	x0, x1, #0x30
  4016a8:	8b010061 	add	x1, x3, x1
  4016ac:	8b000060 	add	x0, x3, x0
  4016b0:	9a801020 	csel	x0, x1, x0, ne  // ne = any
  4016b4:	6d400803 	ldp	d3, d2, [x0]
  4016b8:	6d431401 	ldp	d1, d5, [x0, #48]
  4016bc:	6d414011 	ldp	d17, d16, [x0, #16]
  4016c0:	1e603820 	fsub	d0, d1, d0
  4016c4:	1e633821 	fsub	d1, d1, d3
  4016c8:	1e6238b2 	fsub	d18, d5, d2
  4016cc:	fd402004 	ldr	d4, [x0, #64]
  4016d0:	6d421807 	ldp	d7, d6, [x0, #32]
  4016d4:	1e611800 	fdiv	d0, d0, d1
  4016d8:	fd402c01 	ldr	d1, [x0, #88]
  4016dc:	6d448803 	ldp	d3, d2, [x0, #72]
  4016e0:	1e713891 	fsub	d17, d4, d17
  4016e4:	1e663826 	fsub	d6, d1, d6
  4016e8:	1e703870 	fsub	d16, d3, d16
  4016ec:	1e673847 	fsub	d7, d2, d7
  4016f0:	1f409645 	fmsub	d5, d18, d0, d5
  4016f4:	1f409224 	fmsub	d4, d17, d0, d4
  4016f8:	1f408e03 	fmsub	d3, d16, d0, d3
  4016fc:	1f4088e2 	fmsub	d2, d7, d0, d2
  401700:	1f4084c0 	fmsub	d0, d6, d0, d1
  401704:	6d0010c5 	stp	d5, d4, [x6]
  401708:	6d0108c3 	stp	d3, d2, [x6, #16]
  40170c:	fd0010c0 	str	d0, [x6, #32]
  401710:	d65f03c0 	ret

0000000000401714 <calculate_macro_xs>:
  401714:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
  401718:	1b027c29 	mul	w9, w1, w2
  40171c:	2a0103ef 	mov	w15, w1
  401720:	6f00e401 	movi	v1.2d, #0x0
  401724:	910003fd 	mov	x29, sp
  401728:	f94023e8 	ldr	x8, [sp, #64]
  40172c:	51000529 	sub	w9, w9, #0x1
  401730:	aa0403ed 	mov	x13, x4
  401734:	1e604014 	fmov	d20, d0
  401738:	2a0203f2 	mov	w18, w2
  40173c:	aa0503eb 	mov	x11, x5
  401740:	ad000501 	stp	q1, q1, [x8]
  401744:	aa0603e4 	mov	x4, x6
  401748:	2a0903e1 	mov	w1, w9
  40174c:	f900111f 	str	xzr, [x8, #32]
  401750:	5280000c 	mov	w12, #0x0                   	// #0
  401754:	5280000a 	mov	w10, #0x0                   	// #0
  401758:	7100053f 	cmp	w9, #0x1
  40175c:	5400016d 	b.le	401788 <calculate_macro_xs+0x74>
  401760:	13017d29 	asr	w9, w9, #1
  401764:	0b0c012a 	add	w10, w9, w12
  401768:	937c7d45 	sbfiz	x5, x10, #4, #32
  40176c:	fc656960 	ldr	d0, [x11, x5]
  401770:	1e602290 	fcmpe	d20, d0
  401774:	54000544 	b.mi	40181c <calculate_macro_xs+0x108>  // b.first
  401778:	4b0a0029 	sub	w9, w1, w10
  40177c:	2a0a03ec 	mov	w12, w10
  401780:	7100053f 	cmp	w9, #0x1
  401784:	54fffeec 	b.gt	401760 <calculate_macro_xs+0x4c>
  401788:	93407c01 	sxtw	x1, w0
  40178c:	8b20c86c 	add	x12, x3, w0, sxtw #2
  401790:	b8617860 	ldr	w0, [x3, x1, lsl #2]
  401794:	7100001f 	cmp	w0, #0x0
  401798:	540003ed 	b.le	401814 <calculate_macro_xs+0x100>
  40179c:	d37df021 	lsl	x1, x1, #3
  4017a0:	d2800009 	mov	x9, #0x0                   	// #0
  4017a4:	8b0100ee 	add	x14, x7, x1
  4017a8:	8b0101ad 	add	x13, x13, x1
  4017ac:	d503201f 	nop
  4017b0:	f94001c0 	ldr	x0, [x14]
  4017b4:	1e604280 	fmov	d0, d20
  4017b8:	f94001a7 	ldr	x7, [x13]
  4017bc:	910043e6 	add	x6, sp, #0x10
  4017c0:	b8697800 	ldr	w0, [x0, x9, lsl #2]
  4017c4:	2a0a03e5 	mov	w5, w10
  4017c8:	aa0b03e3 	mov	x3, x11
  4017cc:	2a1203e2 	mov	w2, w18
  4017d0:	2a0f03e1 	mov	w1, w15
  4017d4:	fc6978f3 	ldr	d19, [x7, x9, lsl #3]
  4017d8:	91000529 	add	x9, x9, #0x1
  4017dc:	97ffffa9 	bl	401680 <calculate_micro_xs>
  4017e0:	fd401be0 	ldr	d0, [sp, #48]
  4017e4:	fd401103 	ldr	d3, [x8, #32]
  4017e8:	ad400502 	ldp	q2, q1, [x8]
  4017ec:	1f400e63 	fmadd	d3, d19, d0, d3
  4017f0:	3dc007e4 	ldr	q4, [sp, #16]
  4017f4:	3dc00be0 	ldr	q0, [sp, #32]
  4017f8:	4fd31082 	fmla	v2.2d, v4.2d, v19.d[0]
  4017fc:	b9400180 	ldr	w0, [x12]
  401800:	4fd31001 	fmla	v1.2d, v0.2d, v19.d[0]
  401804:	fd001103 	str	d3, [x8, #32]
  401808:	ad000502 	stp	q2, q1, [x8]
  40180c:	6b09001f 	cmp	w0, w9
  401810:	54fffd0c 	b.gt	4017b0 <calculate_macro_xs+0x9c>
  401814:	a8c47bfd 	ldp	x29, x30, [sp], #64
  401818:	d65f03c0 	ret
  40181c:	7100053f 	cmp	w9, #0x1
  401820:	54000060 	b.eq	40182c <calculate_macro_xs+0x118>  // b.none
  401824:	2a0a03e1 	mov	w1, w10
  401828:	17ffffce 	b	401760 <calculate_macro_xs+0x4c>
  40182c:	2a0c03ea 	mov	w10, w12
  401830:	17ffffd6 	b	401788 <calculate_macro_xs+0x74>

0000000000401834 <grid_search>:
  401834:	51000402 	sub	w2, w0, #0x1
  401838:	52800004 	mov	w4, #0x0                   	// #0
  40183c:	2a0203e5 	mov	w5, w2
  401840:	52800000 	mov	w0, #0x0                   	// #0
  401844:	7100045f 	cmp	w2, #0x1
  401848:	5400018d 	b.le	401878 <grid_search+0x44>
  40184c:	d503201f 	nop
  401850:	13017c42 	asr	w2, w2, #1
  401854:	0b040040 	add	w0, w2, w4
  401858:	937c7c03 	sbfiz	x3, x0, #4, #32
  40185c:	fc636821 	ldr	d1, [x1, x3]
  401860:	1e602030 	fcmpe	d1, d0
  401864:	540000cc 	b.gt	40187c <grid_search+0x48>
  401868:	4b0000a2 	sub	w2, w5, w0
  40186c:	2a0003e4 	mov	w4, w0
  401870:	7100045f 	cmp	w2, #0x1
  401874:	54fffeec 	b.gt	401850 <grid_search+0x1c>
  401878:	d65f03c0 	ret
  40187c:	7100045f 	cmp	w2, #0x1
  401880:	54000060 	b.eq	40188c <grid_search+0x58>  // b.none
  401884:	2a0003e5 	mov	w5, w0
  401888:	17fffff2 	b	401850 <grid_search+0x1c>
  40188c:	2a0403e0 	mov	w0, w4
  401890:	d65f03c0 	ret
  401894:	d503201f 	nop
  401898:	d503201f 	nop
  40189c:	d503201f 	nop

00000000004018a0 <set_grid_ptrs._omp_fn.0>:
  4018a0:	a9b87bfd 	stp	x29, x30, [sp, #-128]!
  4018a4:	910003fd 	mov	x29, sp
  4018a8:	a9025bf5 	stp	x21, x22, [sp, #32]
  4018ac:	aa0003f6 	mov	x22, x0
  4018b0:	a90153f3 	stp	x19, x20, [sp, #16]
  4018b4:	a90363f7 	stp	x23, x24, [sp, #48]
  4018b8:	a90573fb 	stp	x27, x28, [sp, #80]
  4018bc:	97fffd5d 	bl	400e30 <omp_get_num_threads@plt>
  4018c0:	2a0003f5 	mov	w21, w0
  4018c4:	97fffd37 	bl	400da0 <omp_get_thread_num@plt>
  4018c8:	2942d2dc 	ldp	w28, w20, [x22, #20]
  4018cc:	1b1c7e82 	mul	w2, w20, w28
  4018d0:	1ad50c58 	sdiv	w24, w2, w21
  4018d4:	1b158b15 	msub	w21, w24, w21, w2
  4018d8:	b90077f8 	str	w24, [sp, #116]
  4018dc:	6b15001f 	cmp	w0, w21
  4018e0:	540007ab 	b.lt	4019d4 <set_grid_ptrs._omp_fn.0+0x134>  // b.tstop
  4018e4:	1b005715 	madd	w21, w24, w0, w21
  4018e8:	0b150318 	add	w24, w24, w21
  4018ec:	6b1802bf 	cmp	w21, w24
  4018f0:	5400056a 	b.ge	40199c <set_grid_ptrs._omp_fn.0+0xfc>  // b.tcont
  4018f4:	f94006d3 	ldr	x19, [x22, #8]
  4018f8:	a9046bf9 	stp	x25, x26, [sp, #64]
  4018fc:	b94012d7 	ldr	w23, [x22, #16]
  401900:	f94002d6 	ldr	x22, [x22]
  401904:	5290a3fa 	mov	w26, #0x851f                	// #34079
  401908:	8b35d273 	add	x19, x19, w21, sxtw #4
  40190c:	2a170017 	orr	w23, w0, w23
  401910:	b0000001 	adrp	x1, 402000 <center_print+0x3c>
  401914:	d2e80b20 	mov	x0, #0x4059000000000000    	// #4636737291354636288
  401918:	913b2021 	add	x1, x1, #0xec8
  40191c:	72aa3d7a 	movk	w26, #0x51eb, lsl #16
  401920:	6d0627e8 	stp	d8, d9, [sp, #96]
  401924:	9e670009 	fmov	d9, x0
  401928:	f9003fe1 	str	x1, [sp, #120]
  40192c:	d503201f 	nop
  401930:	9b3a7ea0 	smull	x0, w21, w26
  401934:	52801901 	mov	w1, #0xc8                  	// #200
  401938:	fd400268 	ldr	d8, [x19]
  40193c:	9366fc00 	asr	x0, x0, #38
  401940:	4b957c00 	sub	w0, w0, w21, asr #31
  401944:	1b01d400 	msub	w0, w0, w1, w21
  401948:	2a170000 	orr	w0, w0, w23
  40194c:	34000340 	cbz	w0, 4019b4 <set_grid_ptrs._omp_fn.0+0x114>
  401950:	d280001b 	mov	x27, #0x0                   	// #0
  401954:	7100029f 	cmp	w20, #0x0
  401958:	5400016d 	b.le	401984 <set_grid_ptrs._omp_fn.0+0xe4>
  40195c:	d503201f 	nop
  401960:	1e604100 	fmov	d0, d8
  401964:	2a1c03e1 	mov	w1, w28
  401968:	f87b7ac0 	ldr	x0, [x22, x27, lsl #3]
  40196c:	f9400679 	ldr	x25, [x19, #8]
  401970:	940001f5 	bl	402144 <binary_search>
  401974:	b83b7b20 	str	w0, [x25, x27, lsl #2]
  401978:	9100077b 	add	x27, x27, #0x1
  40197c:	6b1b029f 	cmp	w20, w27
  401980:	54ffff0c 	b.gt	401960 <set_grid_ptrs._omp_fn.0+0xc0>
  401984:	110006b5 	add	w21, w21, #0x1
  401988:	91004273 	add	x19, x19, #0x10
  40198c:	6b15031f 	cmp	w24, w21
  401990:	54fffd01 	b.ne	401930 <set_grid_ptrs._omp_fn.0+0x90>  // b.any
  401994:	a9446bf9 	ldp	x25, x26, [sp, #64]
  401998:	6d4627e8 	ldp	d8, d9, [sp, #96]
  40199c:	a94153f3 	ldp	x19, x20, [sp, #16]
  4019a0:	a9425bf5 	ldp	x21, x22, [sp, #32]
  4019a4:	a94363f7 	ldp	x23, x24, [sp, #48]
  4019a8:	a94573fb 	ldp	x27, x28, [sp, #80]
  4019ac:	a8c87bfd 	ldp	x29, x30, [sp], #128
  4019b0:	d65f03c0 	ret
  4019b4:	1e6202a1 	scvtf	d1, w21
  4019b8:	b94077e0 	ldr	w0, [sp, #116]
  4019bc:	1e620000 	scvtf	d0, w0
  4019c0:	1e690821 	fmul	d1, d1, d9
  4019c4:	f9403fe0 	ldr	x0, [sp, #120]
  4019c8:	1e601820 	fdiv	d0, d1, d0
  4019cc:	97fffd41 	bl	400ed0 <printf@plt>
  4019d0:	17ffffe0 	b	401950 <set_grid_ptrs._omp_fn.0+0xb0>
  4019d4:	b94077e1 	ldr	w1, [sp, #116]
  4019d8:	52800015 	mov	w21, #0x0                   	// #0
  4019dc:	11000438 	add	w24, w1, #0x1
  4019e0:	17ffffc1 	b	4018e4 <set_grid_ptrs._omp_fn.0+0x44>

00000000004019e4 <generate_grids>:
  4019e4:	7100003f 	cmp	w1, #0x0
  4019e8:	5400084d 	b.le	401af0 <generate_grids+0x10c>
  4019ec:	7100005f 	cmp	w2, #0x0
  4019f0:	5400080d 	b.le	401af0 <generate_grids+0x10c>
  4019f4:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
  4019f8:	51000421 	sub	w1, w1, #0x1
  4019fc:	910003fd 	mov	x29, sp
  401a00:	a9025bf5 	stp	x21, x22, [sp, #32]
  401a04:	52800615 	mov	w21, #0x30                  	// #48
  401a08:	91002016 	add	x22, x0, #0x8
  401a0c:	9b357c55 	smull	x21, w2, w21
  401a10:	8b214ed6 	add	x22, x22, w1, uxtw #3
  401a14:	a90153f3 	stp	x19, x20, [sp, #16]
  401a18:	aa0003f4 	mov	x20, x0
  401a1c:	b26a67e0 	mov	x0, #0xffffffc00000        	// #281474972516352
  401a20:	f2e83be0 	movk	x0, #0x41df, lsl #48
  401a24:	fd001be8 	str	d8, [sp, #48]
  401a28:	9e670008 	fmov	d8, x0
  401a2c:	d503201f 	nop
  401a30:	d2800013 	mov	x19, #0x0                   	// #0
  401a34:	d503201f 	nop
  401a38:	97fffcfa 	bl	400e20 <rand@plt>
  401a3c:	1e620000 	scvtf	d0, w0
  401a40:	f9400281 	ldr	x1, [x20]
  401a44:	1e681800 	fdiv	d0, d0, d8
  401a48:	fc336820 	str	d0, [x1, x19]
  401a4c:	97fffcf5 	bl	400e20 <rand@plt>
  401a50:	1e620000 	scvtf	d0, w0
  401a54:	f9400281 	ldr	x1, [x20]
  401a58:	1e681800 	fdiv	d0, d0, d8
  401a5c:	8b130021 	add	x1, x1, x19
  401a60:	fd000420 	str	d0, [x1, #8]
  401a64:	97fffcef 	bl	400e20 <rand@plt>
  401a68:	1e620000 	scvtf	d0, w0
  401a6c:	f9400281 	ldr	x1, [x20]
  401a70:	1e681800 	fdiv	d0, d0, d8
  401a74:	8b130021 	add	x1, x1, x19
  401a78:	fd000820 	str	d0, [x1, #16]
  401a7c:	97fffce9 	bl	400e20 <rand@plt>
  401a80:	1e620000 	scvtf	d0, w0
  401a84:	f9400281 	ldr	x1, [x20]
  401a88:	1e681800 	fdiv	d0, d0, d8
  401a8c:	8b130021 	add	x1, x1, x19
  401a90:	fd000c20 	str	d0, [x1, #24]
  401a94:	97fffce3 	bl	400e20 <rand@plt>
  401a98:	1e620000 	scvtf	d0, w0
  401a9c:	f9400281 	ldr	x1, [x20]
  401aa0:	1e681800 	fdiv	d0, d0, d8
  401aa4:	8b130021 	add	x1, x1, x19
  401aa8:	fd001020 	str	d0, [x1, #32]
  401aac:	97fffcdd 	bl	400e20 <rand@plt>
  401ab0:	1e620000 	scvtf	d0, w0
  401ab4:	f9400281 	ldr	x1, [x20]
  401ab8:	1e681800 	fdiv	d0, d0, d8
  401abc:	8b130021 	add	x1, x1, x19
  401ac0:	9100c273 	add	x19, x19, #0x30
  401ac4:	fd001420 	str	d0, [x1, #40]
  401ac8:	eb1302bf 	cmp	x21, x19
  401acc:	54fffb61 	b.ne	401a38 <generate_grids+0x54>  // b.any
  401ad0:	91002294 	add	x20, x20, #0x8
  401ad4:	eb16029f 	cmp	x20, x22
  401ad8:	54fffac1 	b.ne	401a30 <generate_grids+0x4c>  // b.any
  401adc:	a94153f3 	ldp	x19, x20, [sp, #16]
  401ae0:	a9425bf5 	ldp	x21, x22, [sp, #32]
  401ae4:	fd401be8 	ldr	d8, [sp, #48]
  401ae8:	a8c47bfd 	ldp	x29, x30, [sp], #64
  401aec:	d65f03c0 	ret
  401af0:	d65f03c0 	ret

0000000000401af4 <generate_grids_v>:
  401af4:	7100003f 	cmp	w1, #0x0
  401af8:	5400064d 	b.le	401bc0 <generate_grids_v+0xcc>
  401afc:	7100005f 	cmp	w2, #0x0
  401b00:	5400060d 	b.le	401bc0 <generate_grids_v+0xcc>
  401b04:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
  401b08:	51000421 	sub	w1, w1, #0x1
  401b0c:	910003fd 	mov	x29, sp
  401b10:	a90363f7 	stp	x23, x24, [sp, #48]
  401b14:	52800617 	mov	w23, #0x30                  	// #48
  401b18:	91002018 	add	x24, x0, #0x8
  401b1c:	9b377c57 	smull	x23, w2, w23
  401b20:	8b214f18 	add	x24, x24, w1, uxtw #3
  401b24:	a90153f3 	stp	x19, x20, [sp, #16]
  401b28:	aa0003f4 	mov	x20, x0
  401b2c:	a9025bf5 	stp	x21, x22, [sp, #32]
  401b30:	d2800013 	mov	x19, #0x0                   	// #0
  401b34:	d503201f 	nop
  401b38:	f9400296 	ldr	x22, [x20]
  401b3c:	9400027d 	bl	402530 <rn_v>
  401b40:	f9400295 	ldr	x21, [x20]
  401b44:	fc336ac0 	str	d0, [x22, x19]
  401b48:	9400027a 	bl	402530 <rn_v>
  401b4c:	8b1302b5 	add	x21, x21, x19
  401b50:	f9400296 	ldr	x22, [x20]
  401b54:	fd0006a0 	str	d0, [x21, #8]
  401b58:	94000276 	bl	402530 <rn_v>
  401b5c:	f9400295 	ldr	x21, [x20]
  401b60:	8b1302d6 	add	x22, x22, x19
  401b64:	8b1302b5 	add	x21, x21, x19
  401b68:	fd000ac0 	str	d0, [x22, #16]
  401b6c:	94000271 	bl	402530 <rn_v>
  401b70:	f9400296 	ldr	x22, [x20]
  401b74:	fd000ea0 	str	d0, [x21, #24]
  401b78:	9400026e 	bl	402530 <rn_v>
  401b7c:	f9400295 	ldr	x21, [x20]
  401b80:	8b1302d6 	add	x22, x22, x19
  401b84:	8b1302b5 	add	x21, x21, x19
  401b88:	9100c273 	add	x19, x19, #0x30
  401b8c:	fd0012c0 	str	d0, [x22, #32]
  401b90:	94000268 	bl	402530 <rn_v>
  401b94:	fd0016a0 	str	d0, [x21, #40]
  401b98:	eb1302ff 	cmp	x23, x19
  401b9c:	54fffce1 	b.ne	401b38 <generate_grids_v+0x44>  // b.any
  401ba0:	91002294 	add	x20, x20, #0x8
  401ba4:	eb18029f 	cmp	x20, x24
  401ba8:	54fffc41 	b.ne	401b30 <generate_grids_v+0x3c>  // b.any
  401bac:	a94153f3 	ldp	x19, x20, [sp, #16]
  401bb0:	a9425bf5 	ldp	x21, x22, [sp, #32]
  401bb4:	a94363f7 	ldp	x23, x24, [sp, #48]
  401bb8:	a8c47bfd 	ldp	x29, x30, [sp], #64
  401bbc:	d65f03c0 	ret
  401bc0:	d65f03c0 	ret

0000000000401bc4 <sort_nuclide_grids>:
  401bc4:	7100003f 	cmp	w1, #0x0
  401bc8:	540002ed 	b.le	401c24 <sort_nuclide_grids+0x60>
  401bcc:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
  401bd0:	910003fd 	mov	x29, sp
  401bd4:	a90153f3 	stp	x19, x20, [sp, #16]
  401bd8:	51000434 	sub	w20, w1, #0x1
  401bdc:	aa0003f3 	mov	x19, x0
  401be0:	91002000 	add	x0, x0, #0x8
  401be4:	a9025bf5 	stp	x21, x22, [sp, #32]
  401be8:	8b344c14 	add	x20, x0, w20, uxtw #3
  401bec:	90000016 	adrp	x22, 401000 <main+0xc0>
  401bf0:	93407c55 	sxtw	x21, w2
  401bf4:	913a82d6 	add	x22, x22, #0xea0
  401bf8:	f8408660 	ldr	x0, [x19], #8
  401bfc:	aa1603e3 	mov	x3, x22
  401c00:	aa1503e1 	mov	x1, x21
  401c04:	d2800602 	mov	x2, #0x30                  	// #48
  401c08:	97fffc5e 	bl	400d80 <qsort@plt>
  401c0c:	eb14027f 	cmp	x19, x20
  401c10:	54ffff41 	b.ne	401bf8 <sort_nuclide_grids+0x34>  // b.any
  401c14:	a94153f3 	ldp	x19, x20, [sp, #16]
  401c18:	a9425bf5 	ldp	x21, x22, [sp, #32]
  401c1c:	a8c37bfd 	ldp	x29, x30, [sp], #48
  401c20:	d65f03c0 	ret
  401c24:	d65f03c0 	ret
  401c28:	d503201f 	nop
  401c2c:	d503201f 	nop

0000000000401c30 <generate_energy_grid>:
  401c30:	a9ba7bfd 	stp	x29, x30, [sp, #-96]!
  401c34:	910003fd 	mov	x29, sp
  401c38:	a90153f3 	stp	x19, x20, [sp, #16]
  401c3c:	93407c14 	sxtw	x20, w0
  401c40:	2a0103f3 	mov	w19, w1
  401c44:	a90363f7 	stp	x23, x24, [sp, #48]
  401c48:	b0000000 	adrp	x0, 402000 <center_print+0x3c>
  401c4c:	1b017e97 	mul	w23, w20, w1
  401c50:	913be000 	add	x0, x0, #0xef8
  401c54:	a9025bf5 	stp	x21, x22, [sp, #32]
  401c58:	52800615 	mov	w21, #0x30                  	// #48
  401c5c:	a9046bf9 	stp	x25, x26, [sp, #64]
  401c60:	aa0203fa 	mov	x26, x2
  401c64:	f9002bfb 	str	x27, [sp, #80]
  401c68:	97fffc7e 	bl	400e60 <puts@plt>
  401c6c:	937c7ee0 	sbfiz	x0, x23, #4, #32
  401c70:	97fffc60 	bl	400df0 <malloc@plt>
  401c74:	b0000001 	adrp	x1, 402000 <center_print+0x3c>
  401c78:	aa0003f9 	mov	x25, x0
  401c7c:	913c8020 	add	x0, x1, #0xf20
  401c80:	93407efb 	sxtw	x27, w23
  401c84:	97fffc77 	bl	400e60 <puts@plt>
  401c88:	93407e61 	sxtw	x1, w19
  401c8c:	aa1403e0 	mov	x0, x20
  401c90:	94000058 	bl	401df0 <gpmatrix>
  401c94:	aa0003f8 	mov	x24, x0
  401c98:	9b357ee2 	smull	x2, w23, w21
  401c9c:	f9400341 	ldr	x1, [x26]
  401ca0:	f9400000 	ldr	x0, [x0]
  401ca4:	97fffc13 	bl	400cf0 <memcpy@plt>
  401ca8:	f9400300 	ldr	x0, [x24]
  401cac:	aa1b03e1 	mov	x1, x27
  401cb0:	90000003 	adrp	x3, 401000 <main+0xc0>
  401cb4:	913a8063 	add	x3, x3, #0xea0
  401cb8:	d2800602 	mov	x2, #0x30                  	// #48
  401cbc:	97fffc31 	bl	400d80 <qsort@plt>
  401cc0:	b0000000 	adrp	x0, 402000 <center_print+0x3c>
  401cc4:	913d4000 	add	x0, x0, #0xf50
  401cc8:	97fffc66 	bl	400e60 <puts@plt>
  401ccc:	710002ff 	cmp	w23, #0x0
  401cd0:	5400040d 	b.le	401d50 <generate_energy_grid+0x120>
  401cd4:	f9400301 	ldr	x1, [x24]
  401cd8:	aa1403f6 	mov	x22, x20
  401cdc:	510006f3 	sub	w19, w23, #0x1
  401ce0:	aa1903e2 	mov	x2, x25
  401ce4:	9bb506e3 	umaddl	x3, w23, w21, x1
  401ce8:	fc430420 	ldr	d0, [x1], #48
  401cec:	fc010440 	str	d0, [x2], #16
  401cf0:	eb03003f 	cmp	x1, x3
  401cf4:	54ffffa1 	b.ne	401ce8 <generate_energy_grid+0xb8>  // b.any
  401cf8:	aa1803e0 	mov	x0, x24
  401cfc:	9400005d 	bl	401e70 <gpmatrix_free>
  401d00:	1b177ec0 	mul	w0, w22, w23
  401d04:	937e7c00 	sbfiz	x0, x0, #2, #32
  401d08:	97fffc3a 	bl	400df0 <malloc@plt>
  401d0c:	d2800302 	mov	x2, #0x18                  	// #24
  401d10:	d37ef683 	lsl	x3, x20, #2
  401d14:	8b335042 	add	x2, x2, w19, uxtw #4
  401d18:	91002321 	add	x1, x25, #0x8
  401d1c:	8b020322 	add	x2, x25, x2
  401d20:	f8010420 	str	x0, [x1], #16
  401d24:	8b030000 	add	x0, x0, x3
  401d28:	eb01005f 	cmp	x2, x1
  401d2c:	54ffffa1 	b.ne	401d20 <generate_energy_grid+0xf0>  // b.any
  401d30:	aa1903e0 	mov	x0, x25
  401d34:	a94153f3 	ldp	x19, x20, [sp, #16]
  401d38:	a9425bf5 	ldp	x21, x22, [sp, #32]
  401d3c:	a94363f7 	ldp	x23, x24, [sp, #48]
  401d40:	a9446bf9 	ldp	x25, x26, [sp, #64]
  401d44:	f9402bfb 	ldr	x27, [sp, #80]
  401d48:	a8c67bfd 	ldp	x29, x30, [sp], #96
  401d4c:	d65f03c0 	ret
  401d50:	aa1803e0 	mov	x0, x24
  401d54:	94000047 	bl	401e70 <gpmatrix_free>
  401d58:	aa1903e0 	mov	x0, x25
  401d5c:	a94153f3 	ldp	x19, x20, [sp, #16]
  401d60:	a9425bf5 	ldp	x21, x22, [sp, #32]
  401d64:	a94363f7 	ldp	x23, x24, [sp, #48]
  401d68:	a9446bf9 	ldp	x25, x26, [sp, #64]
  401d6c:	f9402bfb 	ldr	x27, [sp, #80]
  401d70:	a8c67bfd 	ldp	x29, x30, [sp], #96
  401d74:	d65f03c0 	ret
  401d78:	d503201f 	nop
  401d7c:	d503201f 	nop

0000000000401d80 <set_grid_ptrs>:
  401d80:	a9bb7bfd 	stp	x29, x30, [sp, #-80]!
  401d84:	910003fd 	mov	x29, sp
  401d88:	a90153f3 	stp	x19, x20, [sp, #16]
  401d8c:	2a0203f3 	mov	w19, w2
  401d90:	2a0303f4 	mov	w20, w3
  401d94:	a9025bf5 	stp	x21, x22, [sp, #32]
  401d98:	aa0103f6 	mov	x22, x1
  401d9c:	aa0003f5 	mov	x21, x0
  401da0:	b0000000 	adrp	x0, 402000 <center_print+0x3c>
  401da4:	913de000 	add	x0, x0, #0xf78
  401da8:	97fffc2e 	bl	400e60 <puts@plt>
  401dac:	a90357f6 	stp	x22, x21, [sp, #48]
  401db0:	9100c3e1 	add	x1, sp, #0x30
  401db4:	52800003 	mov	w3, #0x0                   	// #0
  401db8:	52800002 	mov	w2, #0x0                   	// #0
  401dbc:	90000000 	adrp	x0, 401000 <main+0xc0>
  401dc0:	91228000 	add	x0, x0, #0x8a0
  401dc4:	290853ff 	stp	wzr, w20, [sp, #64]
  401dc8:	b9004bf3 	str	w19, [sp, #72]
  401dcc:	97fffc45 	bl	400ee0 <GOMP_parallel@plt>
  401dd0:	a94153f3 	ldp	x19, x20, [sp, #16]
  401dd4:	52800140 	mov	w0, #0xa                   	// #10
  401dd8:	a9425bf5 	ldp	x21, x22, [sp, #32]
  401ddc:	a8c57bfd 	ldp	x29, x30, [sp], #80
  401de0:	17fffc44 	b	400ef0 <putchar@plt>
  401de4:	d503201f 	nop
  401de8:	d503201f 	nop
  401dec:	d503201f 	nop

0000000000401df0 <gpmatrix>:
  401df0:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
  401df4:	910003fd 	mov	x29, sp
  401df8:	f90013f5 	str	x21, [sp, #32]
  401dfc:	9b017c15 	mul	x21, x0, x1
  401e00:	a90153f3 	stp	x19, x20, [sp, #16]
  401e04:	aa0003f3 	mov	x19, x0
  401e08:	aa0103f4 	mov	x20, x1
  401e0c:	8b1506a0 	add	x0, x21, x21, lsl #1
  401e10:	d37cec00 	lsl	x0, x0, #4
  401e14:	97fffbf7 	bl	400df0 <malloc@plt>
  401e18:	aa0003e4 	mov	x4, x0
  401e1c:	d37df260 	lsl	x0, x19, #3
  401e20:	aa0403f3 	mov	x19, x4
  401e24:	97fffbf3 	bl	400df0 <malloc@plt>
  401e28:	b40001b5 	cbz	x21, 401e5c <gpmatrix+0x6c>
  401e2c:	aa1303e4 	mov	x4, x19
  401e30:	d2800002 	mov	x2, #0x0                   	// #0
  401e34:	52800001 	mov	w1, #0x0                   	// #0
  401e38:	9ad40843 	udiv	x3, x2, x20
  401e3c:	9b148863 	msub	x3, x3, x20, x2
  401e40:	91000442 	add	x2, x2, #0x1
  401e44:	b5000063 	cbnz	x3, 401e50 <gpmatrix+0x60>
  401e48:	f821d804 	str	x4, [x0, w1, sxtw #3]
  401e4c:	11000421 	add	w1, w1, #0x1
  401e50:	9100c084 	add	x4, x4, #0x30
  401e54:	eb0202bf 	cmp	x21, x2
  401e58:	54ffff01 	b.ne	401e38 <gpmatrix+0x48>  // b.any
  401e5c:	a94153f3 	ldp	x19, x20, [sp, #16]
  401e60:	f94013f5 	ldr	x21, [sp, #32]
  401e64:	a8c37bfd 	ldp	x29, x30, [sp], #48
  401e68:	d65f03c0 	ret
  401e6c:	d503201f 	nop

0000000000401e70 <gpmatrix_free>:
  401e70:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  401e74:	910003fd 	mov	x29, sp
  401e78:	f9000bf3 	str	x19, [sp, #16]
  401e7c:	aa0003f3 	mov	x19, x0
  401e80:	f9400000 	ldr	x0, [x0]
  401e84:	97fffc07 	bl	400ea0 <free@plt>
  401e88:	aa1303e0 	mov	x0, x19
  401e8c:	f9400bf3 	ldr	x19, [sp, #16]
  401e90:	a8c27bfd 	ldp	x29, x30, [sp], #32
  401e94:	17fffc03 	b	400ea0 <free@plt>
  401e98:	d503201f 	nop
  401e9c:	d503201f 	nop

0000000000401ea0 <NGP_compare>:
  401ea0:	fd400001 	ldr	d1, [x0]
  401ea4:	fd400020 	ldr	d0, [x1]
  401ea8:	1e602030 	fcmpe	d1, d0
  401eac:	5a9f53e0 	csetm	w0, mi  // mi = first
  401eb0:	1a9fd400 	csinc	w0, w0, wzr, le
  401eb4:	d65f03c0 	ret
  401eb8:	d503201f 	nop
  401ebc:	d503201f 	nop

0000000000401ec0 <logo>:
  401ec0:	a9b57bfd 	stp	x29, x30, [sp, #-176]!
  401ec4:	910003fd 	mov	x29, sp
  401ec8:	a9025bf5 	stp	x21, x22, [sp, #32]
  401ecc:	b0000016 	adrp	x22, 402000 <center_print+0x3c>
  401ed0:	913ea2d6 	add	x22, x22, #0xfa8
  401ed4:	2a0003f5 	mov	w21, w0
  401ed8:	aa1603e0 	mov	x0, x22
  401edc:	a90153f3 	stp	x19, x20, [sp, #16]
  401ee0:	52800293 	mov	w19, #0x14                  	// #20
  401ee4:	f9001bf7 	str	x23, [sp, #48]
  401ee8:	97fffbde 	bl	400e60 <puts@plt>
  401eec:	d0000000 	adrp	x0, 403000 <_IO_stdin_used+0x3c0>
  401ef0:	91000000 	add	x0, x0, #0x0
  401ef4:	97fffbdb 	bl	400e60 <puts@plt>
  401ef8:	f00000f7 	adrp	x23, 420000 <memcpy@GLIBC_2.17>
  401efc:	aa1603e0 	mov	x0, x22
  401f00:	9104a2f4 	add	x20, x23, #0x128
  401f04:	97fffbd7 	bl	400e60 <puts@plt>
  401f08:	f9400281 	ldr	x1, [x20]
  401f0c:	52800400 	mov	w0, #0x20                  	// #32
  401f10:	97fffb98 	bl	400d70 <fputc@plt>
  401f14:	71000673 	subs	w19, w19, #0x1
  401f18:	54ffff81 	b.ne	401f08 <logo+0x48>  // b.any
  401f1c:	f9400283 	ldr	x3, [x20]
  401f20:	d2800502 	mov	x2, #0x28                  	// #40
  401f24:	d2800021 	mov	x1, #0x1                   	// #1
  401f28:	d0000000 	adrp	x0, 403000 <_IO_stdin_used+0x3c0>
  401f2c:	9107a000 	add	x0, x0, #0x1e8
  401f30:	97fffbe0 	bl	400eb0 <fwrite@plt>
  401f34:	f9400281 	ldr	x1, [x20]
  401f38:	52800140 	mov	w0, #0xa                   	// #10
  401f3c:	97fffb8d 	bl	400d70 <fputc@plt>
  401f40:	2a1503e2 	mov	w2, w21
  401f44:	d0000001 	adrp	x1, 403000 <_IO_stdin_used+0x3c0>
  401f48:	91086021 	add	x1, x1, #0x218
  401f4c:	910123e0 	add	x0, sp, #0x48
  401f50:	97fffb84 	bl	400d60 <sprintf@plt>
  401f54:	910123e0 	add	x0, sp, #0x48
  401f58:	97fffb6e 	bl	400d10 <strlen@plt>
  401f5c:	528009e1 	mov	w1, #0x4f                  	// #79
  401f60:	4b000020 	sub	w0, w1, w0
  401f64:	0b407c15 	add	w21, w0, w0, lsr #31
  401f68:	13017eb5 	asr	w21, w21, #1
  401f6c:	3100041f 	cmn	w0, #0x1
  401f70:	5400010b 	b.lt	401f90 <logo+0xd0>  // b.tstop
  401f74:	52800013 	mov	w19, #0x0                   	// #0
  401f78:	f9400281 	ldr	x1, [x20]
  401f7c:	11000673 	add	w19, w19, #0x1
  401f80:	52800400 	mov	w0, #0x20                  	// #32
  401f84:	97fffb7b 	bl	400d70 <fputc@plt>
  401f88:	6b15027f 	cmp	w19, w21
  401f8c:	54ffff6d 	b.le	401f78 <logo+0xb8>
  401f90:	f94096e1 	ldr	x1, [x23, #296]
  401f94:	910123e0 	add	x0, sp, #0x48
  401f98:	97fffb62 	bl	400d20 <fputs@plt>
  401f9c:	f94096e1 	ldr	x1, [x23, #296]
  401fa0:	52800140 	mov	w0, #0xa                   	// #10
  401fa4:	97fffb73 	bl	400d70 <fputc@plt>
  401fa8:	aa1603e0 	mov	x0, x22
  401fac:	97fffbad 	bl	400e60 <puts@plt>
  401fb0:	a94153f3 	ldp	x19, x20, [sp, #16]
  401fb4:	a9425bf5 	ldp	x21, x22, [sp, #32]
  401fb8:	f9401bf7 	ldr	x23, [sp, #48]
  401fbc:	a8cb7bfd 	ldp	x29, x30, [sp], #176
  401fc0:	d65f03c0 	ret

0000000000401fc4 <center_print>:
  401fc4:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
  401fc8:	910003fd 	mov	x29, sp
  401fcc:	a90153f3 	stp	x19, x20, [sp, #16]
  401fd0:	2a0103f3 	mov	w19, w1
  401fd4:	a9025bf5 	stp	x21, x22, [sp, #32]
  401fd8:	aa0003f6 	mov	x22, x0
  401fdc:	f9001bf7 	str	x23, [sp, #48]
  401fe0:	97fffb4c 	bl	400d10 <strlen@plt>
  401fe4:	4b000261 	sub	w1, w19, w0
  401fe8:	f00000f7 	adrp	x23, 420000 <memcpy@GLIBC_2.17>
  401fec:	0b417c34 	add	w20, w1, w1, lsr #31
  401ff0:	3100043f 	cmn	w1, #0x1
  401ff4:	5400016b 	b.lt	402020 <center_print+0x5c>  // b.tstop
  401ff8:	f00000f7 	adrp	x23, 420000 <memcpy@GLIBC_2.17>
  401ffc:	13017e94 	asr	w20, w20, #1
  402000:	9104a2f5 	add	x21, x23, #0x128
  402004:	52800013 	mov	w19, #0x0                   	// #0
  402008:	f94002a1 	ldr	x1, [x21]
  40200c:	11000673 	add	w19, w19, #0x1
  402010:	52800400 	mov	w0, #0x20                  	// #32
  402014:	97fffb57 	bl	400d70 <fputc@plt>
  402018:	6b14027f 	cmp	w19, w20
  40201c:	54ffff6d 	b.le	402008 <center_print+0x44>
  402020:	f94096e1 	ldr	x1, [x23, #296]
  402024:	aa1603e0 	mov	x0, x22
  402028:	97fffb3e 	bl	400d20 <fputs@plt>
  40202c:	f94096e1 	ldr	x1, [x23, #296]
  402030:	52800140 	mov	w0, #0xa                   	// #10
  402034:	a94153f3 	ldp	x19, x20, [sp, #16]
  402038:	a9425bf5 	ldp	x21, x22, [sp, #32]
  40203c:	f9401bf7 	ldr	x23, [sp, #48]
  402040:	a8c47bfd 	ldp	x29, x30, [sp], #64
  402044:	17fffb4b 	b	400d70 <fputc@plt>
  402048:	d503201f 	nop
  40204c:	d503201f 	nop

0000000000402050 <border_print>:
  402050:	90000000 	adrp	x0, 402000 <center_print+0x3c>
  402054:	913ea000 	add	x0, x0, #0xfa8
  402058:	17fffb82 	b	400e60 <puts@plt>
  40205c:	d503201f 	nop

0000000000402060 <fancy_int>:
  402060:	2a0003e5 	mov	w5, w0
  402064:	710f9c1f 	cmp	w0, #0x3e7
  402068:	5400048d 	b.le	4020f8 <fancy_int+0x98>
  40206c:	5289ba62 	mov	w2, #0x4dd3                	// #19923
  402070:	131f7c06 	asr	w6, w0, #31
  402074:	72a20c42 	movk	w2, #0x1062, lsl #16
  402078:	52807d03 	mov	w3, #0x3e8                 	// #1000
  40207c:	510fa004 	sub	w4, w0, #0x3e8
  402080:	9b227c01 	smull	x1, w0, w2
  402084:	5287cae0 	mov	w0, #0x3e57                	// #15959
  402088:	72a001e0 	movk	w0, #0xf, lsl #16
  40208c:	9366fc21 	asr	x1, x1, #38
  402090:	4b060021 	sub	w1, w1, w6
  402094:	1b039423 	msub	w3, w1, w3, w5
  402098:	6b00009f 	cmp	w4, w0
  40209c:	54000269 	b.ls	4020e8 <fancy_int+0x88>  // b.plast
  4020a0:	529bd067 	mov	w7, #0xde83                	// #56963
  4020a4:	52884800 	mov	w0, #0x4240                	// #16960
  4020a8:	72a86367 	movk	w7, #0x431b, lsl #16
  4020ac:	72a001e0 	movk	w0, #0xf, lsl #16
  4020b0:	4b0000a8 	sub	w8, w5, w0
  4020b4:	5290f7e4 	mov	w4, #0x87bf                	// #34751
  4020b8:	9b277ca1 	smull	x1, w5, w7
  4020bc:	72a77164 	movk	w4, #0x3b8b, lsl #16
  4020c0:	9372fc21 	asr	x1, x1, #50
  4020c4:	4b060021 	sub	w1, w1, w6
  4020c8:	1b009420 	msub	w0, w1, w0, w5
  4020cc:	9ba27c00 	umull	x0, w0, w2
  4020d0:	d366fc02 	lsr	x2, x0, #38
  4020d4:	6b04011f 	cmp	w8, w4
  4020d8:	54000188 	b.hi	402108 <fancy_int+0xa8>  // b.pmore
  4020dc:	b0000000 	adrp	x0, 403000 <_IO_stdin_used+0x3c0>
  4020e0:	91090000 	add	x0, x0, #0x240
  4020e4:	17fffb7b 	b	400ed0 <printf@plt>
  4020e8:	2a0303e2 	mov	w2, w3
  4020ec:	b0000000 	adrp	x0, 403000 <_IO_stdin_used+0x3c0>
  4020f0:	9108c000 	add	x0, x0, #0x230
  4020f4:	17fffb77 	b	400ed0 <printf@plt>
  4020f8:	2a0003e1 	mov	w1, w0
  4020fc:	b0000000 	adrp	x0, 403000 <_IO_stdin_used+0x3c0>
  402100:	9108a000 	add	x0, x0, #0x228
  402104:	17fffb73 	b	400ed0 <printf@plt>
  402108:	5285f421 	mov	w1, #0x2fa1                	// #12193
  40210c:	52994008 	mov	w8, #0xca00                	// #51712
  402110:	72a89701 	movk	w1, #0x44b8, lsl #16
  402114:	72a77348 	movk	w8, #0x3b9a, lsl #16
  402118:	2a0303e4 	mov	w4, w3
  40211c:	2a0203e3 	mov	w3, w2
  402120:	9b217ca1 	smull	x1, w5, w1
  402124:	b0000000 	adrp	x0, 403000 <_IO_stdin_used+0x3c0>
  402128:	91094000 	add	x0, x0, #0x250
  40212c:	937cfc21 	asr	x1, x1, #60
  402130:	4b060021 	sub	w1, w1, w6
  402134:	1b089425 	msub	w5, w1, w8, w5
  402138:	9ba77ca2 	umull	x2, w5, w7
  40213c:	d372fc42 	lsr	x2, x2, #50
  402140:	17fffb64 	b	400ed0 <printf@plt>

0000000000402144 <binary_search>:
  402144:	fd400001 	ldr	d1, [x0]
  402148:	aa0003e4 	mov	x4, x0
  40214c:	52800000 	mov	w0, #0x0                   	// #0
  402150:	1e602030 	fcmpe	d1, d0
  402154:	5400032c 	b.gt	4021b8 <binary_search+0x74>
  402158:	52800605 	mov	w5, #0x30                  	// #48
  40215c:	51000820 	sub	w0, w1, #0x2
  402160:	9b251022 	smaddl	x2, w1, w5, x4
  402164:	fc5d0041 	ldur	d1, [x2, #-48]
  402168:	1e602030 	fcmpe	d1, d0
  40216c:	54000264 	b.mi	4021b8 <binary_search+0x74>  // b.first
  402170:	71000420 	subs	w0, w1, #0x1
  402174:	52800002 	mov	w2, #0x0                   	// #0
  402178:	1e6c1003 	fmov	d3, #5.000000000000000000e-01
  40217c:	540001e4 	b.mi	4021b8 <binary_search+0x74>  // b.first
  402180:	4b020001 	sub	w1, w0, w2
  402184:	1e620041 	scvtf	d1, w2
  402188:	1e620022 	scvtf	d2, w1
  40218c:	1e630842 	fmul	d2, d2, d3
  402190:	1e654042 	frintm	d2, d2
  402194:	1e622821 	fadd	d1, d1, d2
  402198:	1e780021 	fcvtzs	w1, d1
  40219c:	9b257c23 	smull	x3, w1, w5
  4021a0:	fc636881 	ldr	d1, [x4, x3]
  4021a4:	1e602030 	fcmpe	d1, d0
  4021a8:	540000a4 	b.mi	4021bc <binary_search+0x78>  // b.first
  4021ac:	51000420 	sub	w0, w1, #0x1
  4021b0:	5400008c 	b.gt	4021c0 <binary_search+0x7c>
  4021b4:	2a0103e0 	mov	w0, w1
  4021b8:	d65f03c0 	ret
  4021bc:	11000422 	add	w2, w1, #0x1
  4021c0:	6b02001f 	cmp	w0, w2
  4021c4:	54fffdea 	b.ge	402180 <binary_search+0x3c>  // b.tcont
  4021c8:	d65f03c0 	ret
  4021cc:	d503201f 	nop

00000000004021d0 <rn>:
  4021d0:	f9400002 	ldr	x2, [x0]
  4021d4:	d28834e4 	mov	x4, #0x41a7                	// #16807
  4021d8:	d28000a1 	mov	x1, #0x5                   	// #5
  4021dc:	b26a67e3 	mov	x3, #0xffffffc00000        	// #281474972516352
  4021e0:	f2c00041 	movk	x1, #0x2, lsl #32
  4021e4:	f2e83be3 	movk	x3, #0x41df, lsl #48
  4021e8:	9b047c42 	mul	x2, x2, x4
  4021ec:	9e670061 	fmov	d1, x3
  4021f0:	9bc17c43 	umulh	x3, x2, x1
  4021f4:	cb030041 	sub	x1, x2, x3
  4021f8:	8b410461 	add	x1, x3, x1, lsr #1
  4021fc:	d35efc21 	lsr	x1, x1, #30
  402200:	d3618023 	lsl	x3, x1, #31
  402204:	cb010061 	sub	x1, x3, x1
  402208:	cb010041 	sub	x1, x2, x1
  40220c:	f9000001 	str	x1, [x0]
  402210:	9e620020 	scvtf	d0, x1
  402214:	1e611800 	fdiv	d0, d0, d1
  402218:	d65f03c0 	ret
  40221c:	d503201f 	nop

0000000000402220 <print_CLI_error>:
  402220:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  402224:	b0000000 	adrp	x0, 403000 <_IO_stdin_used+0x3c0>
  402228:	9109a000 	add	x0, x0, #0x268
  40222c:	910003fd 	mov	x29, sp
  402230:	97fffb0c 	bl	400e60 <puts@plt>
  402234:	b0000000 	adrp	x0, 403000 <_IO_stdin_used+0x3c0>
  402238:	910a2000 	add	x0, x0, #0x288
  40223c:	97fffb09 	bl	400e60 <puts@plt>
  402240:	b0000000 	adrp	x0, 403000 <_IO_stdin_used+0x3c0>
  402244:	910a8000 	add	x0, x0, #0x2a0
  402248:	97fffb06 	bl	400e60 <puts@plt>
  40224c:	b0000000 	adrp	x0, 403000 <_IO_stdin_used+0x3c0>
  402250:	910b6000 	add	x0, x0, #0x2d8
  402254:	97fffb03 	bl	400e60 <puts@plt>
  402258:	b0000000 	adrp	x0, 403000 <_IO_stdin_used+0x3c0>
  40225c:	910c8000 	add	x0, x0, #0x320
  402260:	97fffb00 	bl	400e60 <puts@plt>
  402264:	b0000000 	adrp	x0, 403000 <_IO_stdin_used+0x3c0>
  402268:	910dc000 	add	x0, x0, #0x370
  40226c:	97fffafd 	bl	400e60 <puts@plt>
  402270:	b0000000 	adrp	x0, 403000 <_IO_stdin_used+0x3c0>
  402274:	910ea000 	add	x0, x0, #0x3a8
  402278:	97fffafa 	bl	400e60 <puts@plt>
  40227c:	b0000000 	adrp	x0, 403000 <_IO_stdin_used+0x3c0>
  402280:	910f6000 	add	x0, x0, #0x3d8
  402284:	97fffaf7 	bl	400e60 <puts@plt>
  402288:	52800080 	mov	w0, #0x4                   	// #4
  40228c:	97fffaa9 	bl	400d30 <exit@plt>

0000000000402290 <read_CLI>:
  402290:	a9b97bfd 	stp	x29, x30, [sp, #-112]!
  402294:	910003fd 	mov	x29, sp
  402298:	a90153f3 	stp	x19, x20, [sp, #16]
  40229c:	a9025bf5 	stp	x21, x22, [sp, #32]
  4022a0:	aa0103f6 	mov	x22, x1
  4022a4:	2a0003f5 	mov	w21, w0
  4022a8:	a90363f7 	stp	x23, x24, [sp, #48]
  4022ac:	a9046bf9 	stp	x25, x26, [sp, #64]
  4022b0:	a90573fb 	stp	x27, x28, [sp, #80]
  4022b4:	aa0803fb 	mov	x27, x8
  4022b8:	fd0033e8 	str	d8, [sp, #96]
  4022bc:	97fffaed 	bl	400e70 <omp_get_num_procs@plt>
  4022c0:	1e270008 	fmov	s8, w0
  4022c4:	d28000c0 	mov	x0, #0x6                   	// #6
  4022c8:	97fffaca 	bl	400df0 <malloc@plt>
  4022cc:	aa0003f9 	mov	x25, x0
  4022d0:	528c2d81 	mov	w1, #0x616c                	// #24940
  4022d4:	52800ca0 	mov	w0, #0x65                  	// #101
  4022d8:	72acee41 	movk	w1, #0x6772, lsl #16
  4022dc:	b9000321 	str	w1, [x25]
  4022e0:	79000b20 	strh	w0, [x25, #4]
  4022e4:	710006bf 	cmp	w21, #0x1
  4022e8:	5400110d 	b.le	402508 <read_CLI+0x278>
  4022ec:	51000ab4 	sub	w20, w21, #0x2
  4022f0:	529c3818 	mov	w24, #0xe1c0                	// #57792
  4022f4:	121f7a94 	and	w20, w20, #0xfffffffe
  4022f8:	910022dc 	add	x28, x22, #0x8
  4022fc:	11001294 	add	w20, w20, #0x4
  402300:	52800053 	mov	w19, #0x2                   	// #2
  402304:	72a01c98 	movk	w24, #0xe4, lsl #16
  402308:	5280001a 	mov	w26, #0x0                   	// #0
  40230c:	528584f7 	mov	w23, #0x2c27                	// #11303
  402310:	f9400382 	ldr	x2, [x28]
  402314:	39400040 	ldrb	w0, [x2]
  402318:	7100b41f 	cmp	w0, #0x2d
  40231c:	54000221 	b.ne	402360 <read_CLI+0xd0>  // b.any
  402320:	39400441 	ldrb	w1, [x2, #1]
  402324:	7101d03f 	cmp	w1, #0x74
  402328:	540001e0 	b.eq	402364 <read_CLI+0xd4>  // b.none
  40232c:	7100b41f 	cmp	w0, #0x2d
  402330:	54000181 	b.ne	402360 <read_CLI+0xd0>  // b.any
  402334:	39400441 	ldrb	w1, [x2, #1]
  402338:	71019c3f 	cmp	w1, #0x67
  40233c:	540007c0 	b.eq	402434 <read_CLI+0x1a4>  // b.none
  402340:	7100b41f 	cmp	w0, #0x2d
  402344:	540000e1 	b.ne	402360 <read_CLI+0xd0>  // b.any
  402348:	39400441 	ldrb	w1, [x2, #1]
  40234c:	7101b03f 	cmp	w1, #0x6c
  402350:	540009a0 	b.eq	402484 <read_CLI+0x1f4>  // b.none
  402354:	7100b41f 	cmp	w0, #0x2d
  402358:	54000840 	b.eq	402460 <read_CLI+0x1d0>  // b.none
  40235c:	d503201f 	nop
  402360:	97ffffb0 	bl	402220 <print_CLI_error>
  402364:	39400841 	ldrb	w1, [x2, #2]
  402368:	35fffe21 	cbnz	w1, 40232c <read_CLI+0x9c>
  40236c:	6b1302bf 	cmp	w21, w19
  402370:	54ffff8d 	b.le	402360 <read_CLI+0xd0>
  402374:	f873dac0 	ldr	x0, [x22, w19, sxtw #3]
  402378:	52800142 	mov	w2, #0xa                   	// #10
  40237c:	d2800001 	mov	x1, #0x0                   	// #0
  402380:	97fffac4 	bl	400e90 <strtol@plt>
  402384:	1e270008 	fmov	s8, w0
  402388:	11000a73 	add	w19, w19, #0x2
  40238c:	9100439c 	add	x28, x28, #0x10
  402390:	6b14027f 	cmp	w19, w20
  402394:	54fffbe1 	b.ne	402310 <read_CLI+0x80>  // b.any
  402398:	1e260100 	fmov	w0, s8
  40239c:	7100001f 	cmp	w0, #0x0
  4023a0:	54fffe0d 	b.le	402360 <read_CLI+0xd0>
  4023a4:	710002ff 	cmp	w23, #0x0
  4023a8:	54fffdcd 	b.le	402360 <read_CLI+0xd0>
  4023ac:	7100031f 	cmp	w24, #0x0
  4023b0:	54fffd8d 	b.le	402360 <read_CLI+0xd0>
  4023b4:	b0000001 	adrp	x1, 403000 <_IO_stdin_used+0x3c0>
  4023b8:	aa1903e0 	mov	x0, x25
  4023bc:	91104021 	add	x1, x1, #0x410
  4023c0:	97fffa94 	bl	400e10 <strcasecmp@plt>
  4023c4:	34000740 	cbz	w0, 4024ac <read_CLI+0x21c>
  4023c8:	aa1903e0 	mov	x0, x25
  4023cc:	b0000001 	adrp	x1, 403000 <_IO_stdin_used+0x3c0>
  4023d0:	91106021 	add	x1, x1, #0x418
  4023d4:	97fffa8f 	bl	400e10 <strcasecmp@plt>
  4023d8:	b0000001 	adrp	x1, 403000 <_IO_stdin_used+0x3c0>
  4023dc:	2a0003f3 	mov	w19, w0
  4023e0:	91108021 	add	x1, x1, #0x420
  4023e4:	aa1903e0 	mov	x0, x25
  4023e8:	97fffa8a 	bl	400e10 <strcasecmp@plt>
  4023ec:	340007d3 	cbz	w19, 4024e4 <read_CLI+0x254>
  4023f0:	340007a0 	cbz	w0, 4024e4 <read_CLI+0x254>
  4023f4:	b0000013 	adrp	x19, 403000 <_IO_stdin_used+0x3c0>
  4023f8:	9110a273 	add	x19, x19, #0x428
  4023fc:	aa1303e1 	mov	x1, x19
  402400:	aa1903e0 	mov	x0, x25
  402404:	97fffa83 	bl	400e10 <strcasecmp@plt>
  402408:	35fffac0 	cbnz	w0, 402360 <read_CLI+0xd0>
  40240c:	aa1303e1 	mov	x1, x19
  402410:	aa1903e0 	mov	x0, x25
  402414:	97fffa7f 	bl	400e10 <strcasecmp@plt>
  402418:	2a1a001a 	orr	w26, w0, w26
  40241c:	7100035f 	cmp	w26, #0x0
  402420:	5294e941 	mov	w1, #0xa74a                	// #42826
  402424:	72a000e1 	movk	w1, #0x7, lsl #16
  402428:	52802c60 	mov	w0, #0x163                 	// #355
  40242c:	1a8112f7 	csel	w23, w23, w1, ne  // ne = any
  402430:	14000020 	b	4024b0 <read_CLI+0x220>
  402434:	39400841 	ldrb	w1, [x2, #2]
  402438:	35fff841 	cbnz	w1, 402340 <read_CLI+0xb0>
  40243c:	6b1302bf 	cmp	w21, w19
  402440:	54fff90d 	b.le	402360 <read_CLI+0xd0>
  402444:	f873dac0 	ldr	x0, [x22, w19, sxtw #3]
  402448:	52800142 	mov	w2, #0xa                   	// #10
  40244c:	d2800001 	mov	x1, #0x0                   	// #0
  402450:	5280003a 	mov	w26, #0x1                   	// #1
  402454:	97fffa8f 	bl	400e90 <strtol@plt>
  402458:	2a0003f7 	mov	w23, w0
  40245c:	17ffffcb 	b	402388 <read_CLI+0xf8>
  402460:	39400440 	ldrb	w0, [x2, #1]
  402464:	7101cc1f 	cmp	w0, #0x73
  402468:	54fff7c1 	b.ne	402360 <read_CLI+0xd0>  // b.any
  40246c:	39400840 	ldrb	w0, [x2, #2]
  402470:	35fff780 	cbnz	w0, 402360 <read_CLI+0xd0>
  402474:	6b1302bf 	cmp	w21, w19
  402478:	54fff74d 	b.le	402360 <read_CLI+0xd0>
  40247c:	f873dad9 	ldr	x25, [x22, w19, sxtw #3]
  402480:	17ffffc2 	b	402388 <read_CLI+0xf8>
  402484:	39400841 	ldrb	w1, [x2, #2]
  402488:	35fff661 	cbnz	w1, 402354 <read_CLI+0xc4>
  40248c:	6b1302bf 	cmp	w21, w19
  402490:	54fff68d 	b.le	402360 <read_CLI+0xd0>
  402494:	f873dac0 	ldr	x0, [x22, w19, sxtw #3]
  402498:	52800142 	mov	w2, #0xa                   	// #10
  40249c:	d2800001 	mov	x1, #0x0                   	// #0
  4024a0:	97fffa7c 	bl	400e90 <strtol@plt>
  4024a4:	2a0003f8 	mov	w24, w0
  4024a8:	17ffffb8 	b	402388 <read_CLI+0xf8>
  4024ac:	52800880 	mov	w0, #0x44                  	// #68
  4024b0:	4e0c1c08 	mov	v8.s[1], w0
  4024b4:	a94153f3 	ldp	x19, x20, [sp, #16]
  4024b8:	a9425bf5 	ldp	x21, x22, [sp, #32]
  4024bc:	4e141ee8 	mov	v8.s[2], w23
  4024c0:	4e1c1f08 	mov	v8.s[3], w24
  4024c4:	a94363f7 	ldp	x23, x24, [sp, #48]
  4024c8:	f9000b79 	str	x25, [x27, #16]
  4024cc:	a9446bf9 	ldp	x25, x26, [sp, #64]
  4024d0:	3d800368 	str	q8, [x27]
  4024d4:	fd4033e8 	ldr	d8, [sp, #96]
  4024d8:	a94573fb 	ldp	x27, x28, [sp, #80]
  4024dc:	a8c77bfd 	ldp	x29, x30, [sp], #112
  4024e0:	d65f03c0 	ret
  4024e4:	2a1a0000 	orr	w0, w0, w26
  4024e8:	350000a0 	cbnz	w0, 4024fc <read_CLI+0x26c>
  4024ec:	52949ff7 	mov	w23, #0xa4ff                	// #42239
  4024f0:	52802c60 	mov	w0, #0x163                 	// #355
  4024f4:	72a00077 	movk	w23, #0x3, lsl #16
  4024f8:	17ffffee 	b	4024b0 <read_CLI+0x220>
  4024fc:	b0000013 	adrp	x19, 403000 <_IO_stdin_used+0x3c0>
  402500:	9110a273 	add	x19, x19, #0x428
  402504:	17ffffc2 	b	40240c <read_CLI+0x17c>
  402508:	1e260100 	fmov	w0, s8
  40250c:	7100001f 	cmp	w0, #0x0
  402510:	54fff28d 	b.le	402360 <read_CLI+0xd0>
  402514:	529c3818 	mov	w24, #0xe1c0                	// #57792
  402518:	5280001a 	mov	w26, #0x0                   	// #0
  40251c:	72a01c98 	movk	w24, #0xe4, lsl #16
  402520:	528584f7 	mov	w23, #0x2c27                	// #11303
  402524:	17ffffa4 	b	4023b4 <read_CLI+0x124>
  402528:	d503201f 	nop
  40252c:	d503201f 	nop

0000000000402530 <rn_v>:
  402530:	d00000e3 	adrp	x3, 420000 <memcpy@GLIBC_2.17>
  402534:	d28834e4 	mov	x4, #0x41a7                	// #16807
  402538:	d28000a0 	mov	x0, #0x5                   	// #5
  40253c:	b26a67e2 	mov	x2, #0xffffffc00000        	// #281474972516352
  402540:	f9409061 	ldr	x1, [x3, #288]
  402544:	f2c00040 	movk	x0, #0x2, lsl #32
  402548:	f2e83be2 	movk	x2, #0x41df, lsl #48
  40254c:	9e670041 	fmov	d1, x2
  402550:	9b047c21 	mul	x1, x1, x4
  402554:	9bc07c22 	umulh	x2, x1, x0
  402558:	cb020020 	sub	x0, x1, x2
  40255c:	8b400440 	add	x0, x2, x0, lsr #1
  402560:	d35efc00 	lsr	x0, x0, #30
  402564:	d3618002 	lsl	x2, x0, #31
  402568:	cb000040 	sub	x0, x2, x0
  40256c:	cb000020 	sub	x0, x1, x0
  402570:	f9009060 	str	x0, [x3, #288]
  402574:	9e620000 	scvtf	d0, x0
  402578:	1e611800 	fdiv	d0, d0, d1
  40257c:	d65f03c0 	ret

0000000000402580 <hash>:
  402580:	38401403 	ldrb	w3, [x0], #1
  402584:	5282a0a2 	mov	w2, #0x1505                	// #5381
  402588:	340000c3 	cbz	w3, 4025a0 <hash+0x20>
  40258c:	d503201f 	nop
  402590:	0b021464 	add	w4, w3, w2, lsl #5
  402594:	38401403 	ldrb	w3, [x0], #1
  402598:	0b040042 	add	w2, w2, w4
  40259c:	35ffffa3 	cbnz	w3, 402590 <hash+0x10>
  4025a0:	1ac10840 	udiv	w0, w2, w1
  4025a4:	1b018800 	msub	w0, w0, w1, w2
  4025a8:	d65f03c0 	ret
  4025ac:	d503201f 	nop

00000000004025b0 <load_num_nucs>:
  4025b0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
  4025b4:	910003fd 	mov	x29, sp
  4025b8:	f9000bf3 	str	x19, [sp, #16]
  4025bc:	2a0003f3 	mov	w19, w0
  4025c0:	d2800600 	mov	x0, #0x30                  	// #48
  4025c4:	97fffa0b 	bl	400df0 <malloc@plt>
  4025c8:	7101127f 	cmp	w19, #0x44
  4025cc:	52802823 	mov	w3, #0x141                 	// #321
  4025d0:	52800442 	mov	w2, #0x22                  	// #34
  4025d4:	d2800365 	mov	x5, #0x1b                  	// #27
  4025d8:	1a830042 	csel	w2, w2, w3, eq  // eq = none
  4025dc:	d2800124 	mov	x4, #0x9                   	// #9
  4025e0:	d28002a3 	mov	x3, #0x15                  	// #21
  4025e4:	528000a7 	mov	w7, #0x5                   	// #5
  4025e8:	b21e03e6 	mov	x6, #0x400000004           	// #17179869188
  4025ec:	f2c002a5 	movk	x5, #0x15, lsl #32
  4025f0:	f2c00124 	movk	x4, #0x9, lsl #32
  4025f4:	f2c002a3 	movk	x3, #0x15, lsl #32
  4025f8:	f9400bf3 	ldr	x19, [sp, #16]
  4025fc:	29001c02 	stp	w2, w7, [x0]
  402600:	a9009406 	stp	x6, x5, [x0, #8]
  402604:	a9018c03 	stp	x3, x3, [x0, #24]
  402608:	f9001404 	str	x4, [x0, #40]
  40260c:	a8c27bfd 	ldp	x29, x30, [sp], #32
  402610:	d65f03c0 	ret

0000000000402614 <load_mats>:
  402614:	d12283ff 	sub	sp, sp, #0x8a0
  402618:	a9007bfd 	stp	x29, x30, [sp]
  40261c:	910003fd 	mov	x29, sp
  402620:	a90153f3 	stp	x19, x20, [sp, #16]
  402624:	aa0003f4 	mov	x20, x0
  402628:	d2800c00 	mov	x0, #0x60                  	// #96
  40262c:	a9025bf5 	stp	x21, x22, [sp, #32]
  402630:	d2800015 	mov	x21, #0x0                   	// #0
  402634:	a90363f7 	stp	x23, x24, [sp, #48]
  402638:	2a0103f8 	mov	w24, w1
  40263c:	a9046bf9 	stp	x25, x26, [sp, #64]
  402640:	97fff9ec 	bl	400df0 <malloc@plt>
  402644:	aa0003f3 	mov	x19, x0
  402648:	b8b57a80 	ldrsw	x0, [x20, x21, lsl #2]
  40264c:	d37ef400 	lsl	x0, x0, #2
  402650:	97fff9e8 	bl	400df0 <malloc@plt>
  402654:	f8357a60 	str	x0, [x19, x21, lsl #3]
  402658:	910006b5 	add	x21, x21, #0x1
  40265c:	f10032bf 	cmp	x21, #0xc
  402660:	54ffff41 	b.ne	402648 <load_mats+0x34>  // b.any
  402664:	b0000015 	adrp	x21, 403000 <_IO_stdin_used+0x3c0>
  402668:	9114c2b5 	add	x21, x21, #0x530
  40266c:	aa1503e1 	mov	x1, x21
  402670:	d2801102 	mov	x2, #0x88                  	// #136
  402674:	910c23e0 	add	x0, sp, #0x308
  402678:	97fff99e 	bl	400cf0 <memcpy@plt>
  40267c:	d280a082 	mov	x2, #0x504                 	// #1284
  402680:	52800001 	mov	w1, #0x0                   	// #0
  402684:	910e43e0 	add	x0, sp, #0x390
  402688:	97fff9de 	bl	400e00 <memset@plt>
  40268c:	b0000002 	adrp	x2, 403000 <_IO_stdin_used+0x3c0>
  402690:	b0000000 	adrp	x0, 403000 <_IO_stdin_used+0x3c0>
  402694:	b0000001 	adrp	x1, 403000 <_IO_stdin_used+0x3c0>
  402698:	b0000003 	adrp	x3, 403000 <_IO_stdin_used+0x3c0>
  40269c:	3dc11440 	ldr	q0, [x2, #1104]
  4026a0:	52800602 	mov	w2, #0x30                  	// #48
  4026a4:	3dc10c02 	ldr	q2, [x0, #1072]
  4026a8:	b903e3e2 	str	w2, [sp, #992]
  4026ac:	3dc11024 	ldr	q4, [x1, #1088]
  4026b0:	b0000002 	adrp	x2, 403000 <_IO_stdin_used+0x3c0>
  4026b4:	3dc11861 	ldr	q1, [x3, #1120]
  4026b8:	911063e0 	add	x0, sp, #0x418
  4026bc:	3dc11c43 	ldr	q3, [x2, #1136]
  4026c0:	b0000002 	adrp	x2, 403000 <_IO_stdin_used+0x3c0>
  4026c4:	ad1c93e2 	stp	q2, q4, [sp, #912]
  4026c8:	912223e1 	add	x1, sp, #0x888
  4026cc:	3dc12042 	ldr	q2, [x2, #1152]
  4026d0:	b0000002 	adrp	x2, 403000 <_IO_stdin_used+0x3c0>
  4026d4:	ad1d87e0 	stp	q0, q1, [sp, #944]
  4026d8:	3dc12444 	ldr	q4, [x2, #1168]
  4026dc:	b0000002 	adrp	x2, 403000 <_IO_stdin_used+0x3c0>
  4026e0:	3d80f7e3 	str	q3, [sp, #976]
  4026e4:	3dc12840 	ldr	q0, [x2, #1184]
  4026e8:	b0000002 	adrp	x2, 403000 <_IO_stdin_used+0x3c0>
  4026ec:	4f000483 	movi	v3.4s, #0x4
  4026f0:	3dc12c41 	ldr	q1, [x2, #1200]
  4026f4:	911003e2 	add	x2, sp, #0x400
  4026f8:	3c9e8042 	stur	q2, [x2, #-24]
  4026fc:	4f020482 	movi	v2.4s, #0x44
  402700:	3c9f8044 	stur	q4, [x2, #-8]
  402704:	3c808040 	stur	q0, [x2, #8]
  402708:	4ea11c20 	mov	v0.16b, v1.16b
  40270c:	4ea38421 	add	v1.4s, v1.4s, v3.4s
  402710:	4ea28400 	add	v0.4s, v0.4s, v2.4s
  402714:	3c810400 	str	q0, [x0], #16
  402718:	eb00003f 	cmp	x1, x0
  40271c:	54ffff61 	b.ne	402708 <load_mats+0xf4>  // b.any
  402720:	910a63f6 	add	x22, sp, #0x298
  402724:	b0000000 	adrp	x0, 403000 <_IO_stdin_used+0x3c0>
  402728:	910803e8 	add	x8, sp, #0x200
  40272c:	d2802c06 	mov	x6, #0x160                 	// #352
  402730:	3dc13000 	ldr	q0, [x0, #1216]
  402734:	f2c02c26 	movk	x6, #0x161, lsl #32
  402738:	a94c06a0 	ldp	x0, x1, [x21, #192]
  40273c:	a90206c0 	stp	x0, x1, [x22, #32]
  402740:	9104e3fa 	add	x26, sp, #0x138
  402744:	a94d06a0 	ldp	x0, x1, [x21, #208]
  402748:	a90306c0 	stp	x0, x1, [x22, #48]
  40274c:	9107a3f9 	add	x25, sp, #0x1e8
  402750:	a94e06a0 	ldp	x0, x1, [x21, #224]
  402754:	a90406c0 	stp	x0, x1, [x22, #64]
  402758:	910903f7 	add	x23, sp, #0x240
  40275c:	a94b0ea2 	ldp	x2, x3, [x21, #176]
  402760:	a9010ec2 	stp	x2, x3, [x22, #16]
  402764:	b9409aa2 	ldr	w2, [x21, #152]
  402768:	a94f06a0 	ldp	x0, x1, [x21, #240]
  40276c:	a90506c0 	stp	x0, x1, [x22, #80]
  402770:	b9410aac 	ldr	w12, [x21, #264]
  402774:	a94886a0 	ldp	x0, x1, [x21, #136]
  402778:	a90787e0 	stp	x0, x1, [sp, #120]
  40277c:	9105a2ab 	add	x11, x21, #0x168
  402780:	f90447e6 	str	x6, [sp, #2184]
  402784:	52802c46 	mov	w6, #0x162                 	// #354
  402788:	a94a06a0 	ldp	x0, x1, [x21, #160]
  40278c:	b9008be2 	str	w2, [sp, #136]
  402790:	f94082a9 	ldr	x9, [x21, #256]
  402794:	f90032c9 	str	x9, [x22, #96]
  402798:	a9098500 	stp	x0, x1, [x8, #152]
  40279c:	b90893e6 	str	w6, [sp, #2192]
  4027a0:	a95126a8 	ldp	x8, x9, [x21, #272]
  4027a4:	ad0283e0 	stp	q0, q0, [sp, #80]
  4027a8:	a95216a4 	ldp	x4, x5, [x21, #288]
  4027ac:	a90e27e8 	stp	x8, x9, [sp, #224]
  4027b0:	a9530ea2 	ldp	x2, x3, [x21, #304]
  4027b4:	a90f17e4 	stp	x4, x5, [sp, #240]
  4027b8:	a9541ea6 	ldp	x6, x7, [x21, #320]
  4027bc:	a9100fe2 	stp	x2, x3, [sp, #256]
  4027c0:	a9111fe6 	stp	x6, x7, [sp, #272]
  4027c4:	b9006acc 	str	w12, [x22, #104]
  4027c8:	910803ec 	add	x12, sp, #0x200
  4027cc:	a95506a0 	ldp	x0, x1, [x21, #336]
  4027d0:	a9011744 	stp	x4, x5, [x26, #16]
  4027d4:	b94162aa 	ldr	w10, [x21, #352]
  4027d8:	a9011724 	stp	x4, x5, [x25, #16]
  4027dc:	a90116e4 	stp	x4, x5, [x23, #16]
  4027e0:	a9020f42 	stp	x2, x3, [x26, #32]
  4027e4:	a9020f22 	stp	x2, x3, [x25, #32]
  4027e8:	a9020ee2 	stp	x2, x3, [x23, #32]
  4027ec:	a91a17e4 	stp	x4, x5, [sp, #416]
  4027f0:	a91b0fe2 	stp	x2, x3, [sp, #432]
  4027f4:	a9400d62 	ldp	x2, x3, [x11]
  4027f8:	a933a588 	stp	x8, x9, [x12, #-200]
  4027fc:	a9411564 	ldp	x4, x5, [x11, #16]
  402800:	a93ea588 	stp	x8, x9, [x12, #-24]
  402804:	a9031f46 	stp	x6, x7, [x26, #48]
  402808:	a9031f26 	stp	x6, x7, [x25, #48]
  40280c:	a9031ee6 	stp	x6, x7, [x23, #48]
  402810:	a9040740 	stp	x0, x1, [x26, #64]
  402814:	a9040720 	stp	x0, x1, [x25, #64]
  402818:	a90406e0 	stp	x0, x1, [x23, #64]
  40281c:	a9042588 	stp	x8, x9, [x12, #64]
  402820:	b90052ea 	str	w10, [x23, #80]
  402824:	b900532a 	str	w10, [x25, #80]
  402828:	b900534a 	str	w10, [x26, #80]
  40282c:	a9090fe2 	stp	x2, x3, [sp, #144]
  402830:	a90a17e4 	stp	x4, x5, [sp, #160]
  402834:	a91207e0 	stp	x0, x1, [sp, #288]
  402838:	b90133ea 	str	w10, [sp, #304]
  40283c:	a91927e8 	stp	x8, x9, [sp, #400]
  402840:	a91c1fe6 	stp	x6, x7, [sp, #448]
  402844:	a91d07e0 	stp	x0, x1, [sp, #464]
  402848:	b901e3ea 	str	w10, [sp, #480]
  40284c:	b9418aa1 	ldr	w1, [x21, #392]
  402850:	b9800280 	ldrsw	x0, [x20]
  402854:	b900b3e1 	str	w1, [sp, #176]
  402858:	a90b8fe2 	stp	x2, x3, [sp, #184]
  40285c:	d37ef402 	lsl	x2, x0, #2
  402860:	a90c97e4 	stp	x4, x5, [sp, #200]
  402864:	b900dbe1 	str	w1, [sp, #216]
  402868:	f9400260 	ldr	x0, [x19]
  40286c:	7101131f 	cmp	w24, #0x44
  402870:	54000840 	b.eq	402978 <load_mats+0x364>  // b.none
  402874:	910e43e1 	add	x1, sp, #0x390
  402878:	97fff91e 	bl	400cf0 <memcpy@plt>
  40287c:	f9400660 	ldr	x0, [x19, #8]
  402880:	9101e3e1 	add	x1, sp, #0x78
  402884:	b9800682 	ldrsw	x2, [x20, #4]
  402888:	d37ef442 	lsl	x2, x2, #2
  40288c:	97fff919 	bl	400cf0 <memcpy@plt>
  402890:	f9400a60 	ldr	x0, [x19, #16]
  402894:	910143e1 	add	x1, sp, #0x50
  402898:	b9800a82 	ldrsw	x2, [x20, #8]
  40289c:	d37ef442 	lsl	x2, x2, #2
  4028a0:	97fff914 	bl	400cf0 <memcpy@plt>
  4028a4:	f9400e60 	ldr	x0, [x19, #24]
  4028a8:	910183e1 	add	x1, sp, #0x60
  4028ac:	b9800e82 	ldrsw	x2, [x20, #12]
  4028b0:	d37ef442 	lsl	x2, x2, #2
  4028b4:	97fff90f 	bl	400cf0 <memcpy@plt>
  4028b8:	f9401260 	ldr	x0, [x19, #32]
  4028bc:	aa1603e1 	mov	x1, x22
  4028c0:	b9801282 	ldrsw	x2, [x20, #16]
  4028c4:	d37ef442 	lsl	x2, x2, #2
  4028c8:	97fff90a 	bl	400cf0 <memcpy@plt>
  4028cc:	f9401660 	ldr	x0, [x19, #40]
  4028d0:	910383e1 	add	x1, sp, #0xe0
  4028d4:	b9801682 	ldrsw	x2, [x20, #20]
  4028d8:	d37ef442 	lsl	x2, x2, #2
  4028dc:	97fff905 	bl	400cf0 <memcpy@plt>
  4028e0:	f9401a60 	ldr	x0, [x19, #48]
  4028e4:	aa1a03e1 	mov	x1, x26
  4028e8:	b9801a82 	ldrsw	x2, [x20, #24]
  4028ec:	d37ef442 	lsl	x2, x2, #2
  4028f0:	97fff900 	bl	400cf0 <memcpy@plt>
  4028f4:	f9401e60 	ldr	x0, [x19, #56]
  4028f8:	910643e1 	add	x1, sp, #0x190
  4028fc:	b9801e82 	ldrsw	x2, [x20, #28]
  402900:	d37ef442 	lsl	x2, x2, #2
  402904:	97fff8fb 	bl	400cf0 <memcpy@plt>
  402908:	f9402260 	ldr	x0, [x19, #64]
  40290c:	aa1903e1 	mov	x1, x25
  402910:	b9802282 	ldrsw	x2, [x20, #32]
  402914:	d37ef442 	lsl	x2, x2, #2
  402918:	97fff8f6 	bl	400cf0 <memcpy@plt>
  40291c:	f9402660 	ldr	x0, [x19, #72]
  402920:	aa1703e1 	mov	x1, x23
  402924:	b9802682 	ldrsw	x2, [x20, #36]
  402928:	d37ef442 	lsl	x2, x2, #2
  40292c:	97fff8f1 	bl	400cf0 <memcpy@plt>
  402930:	f9402a60 	ldr	x0, [x19, #80]
  402934:	910243e1 	add	x1, sp, #0x90
  402938:	b9802a82 	ldrsw	x2, [x20, #40]
  40293c:	d37ef442 	lsl	x2, x2, #2
  402940:	97fff8ec 	bl	400cf0 <memcpy@plt>
  402944:	f9402e60 	ldr	x0, [x19, #88]
  402948:	9102e3e1 	add	x1, sp, #0xb8
  40294c:	b9802e82 	ldrsw	x2, [x20, #44]
  402950:	d37ef442 	lsl	x2, x2, #2
  402954:	97fff8e7 	bl	400cf0 <memcpy@plt>
  402958:	aa1303e0 	mov	x0, x19
  40295c:	a9407bfd 	ldp	x29, x30, [sp]
  402960:	a94153f3 	ldp	x19, x20, [sp, #16]
  402964:	a9425bf5 	ldp	x21, x22, [sp, #32]
  402968:	a94363f7 	ldp	x23, x24, [sp, #48]
  40296c:	a9446bf9 	ldp	x25, x26, [sp, #64]
  402970:	912283ff 	add	sp, sp, #0x8a0
  402974:	d65f03c0 	ret
  402978:	910c23e1 	add	x1, sp, #0x308
  40297c:	97fff8dd 	bl	400cf0 <memcpy@plt>
  402980:	17ffffbf 	b	40287c <load_mats+0x268>

0000000000402984 <load_concs>:
  402984:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
  402988:	910003fd 	mov	x29, sp
  40298c:	a90153f3 	stp	x19, x20, [sp, #16]
  402990:	d2800013 	mov	x19, #0x0                   	// #0
  402994:	a9025bf5 	stp	x21, x22, [sp, #32]
  402998:	aa0003f5 	mov	x21, x0
  40299c:	d2800c00 	mov	x0, #0x60                  	// #96
  4029a0:	fd001be8 	str	d8, [sp, #48]
  4029a4:	97fff913 	bl	400df0 <malloc@plt>
  4029a8:	aa0003f6 	mov	x22, x0
  4029ac:	d503201f 	nop
  4029b0:	b8b37aa0 	ldrsw	x0, [x21, x19, lsl #2]
  4029b4:	d37df000 	lsl	x0, x0, #3
  4029b8:	97fff90e 	bl	400df0 <malloc@plt>
  4029bc:	f8337ac0 	str	x0, [x22, x19, lsl #3]
  4029c0:	91000673 	add	x19, x19, #0x1
  4029c4:	f100327f 	cmp	x19, #0xc
  4029c8:	54ffff41 	b.ne	4029b0 <load_concs+0x2c>  // b.any
  4029cc:	b26a67e0 	mov	x0, #0xffffffc00000        	// #281474972516352
  4029d0:	d2800014 	mov	x20, #0x0                   	// #0
  4029d4:	f2e83be0 	movk	x0, #0x41df, lsl #48
  4029d8:	9e670008 	fmov	d8, x0
  4029dc:	d503201f 	nop
  4029e0:	b8747aa0 	ldr	w0, [x21, x20, lsl #2]
  4029e4:	d2800013 	mov	x19, #0x0                   	// #0
  4029e8:	7100001f 	cmp	w0, #0x0
  4029ec:	5400014d 	b.le	402a14 <load_concs+0x90>
  4029f0:	97fff90c 	bl	400e20 <rand@plt>
  4029f4:	1e620000 	scvtf	d0, w0
  4029f8:	f8747ac2 	ldr	x2, [x22, x20, lsl #3]
  4029fc:	b8747aa1 	ldr	w1, [x21, x20, lsl #2]
  402a00:	1e681800 	fdiv	d0, d0, d8
  402a04:	fc337840 	str	d0, [x2, x19, lsl #3]
  402a08:	91000673 	add	x19, x19, #0x1
  402a0c:	6b13003f 	cmp	w1, w19
  402a10:	54ffff0c 	b.gt	4029f0 <load_concs+0x6c>
  402a14:	91000694 	add	x20, x20, #0x1
  402a18:	f100329f 	cmp	x20, #0xc
  402a1c:	54fffe21 	b.ne	4029e0 <load_concs+0x5c>  // b.any
  402a20:	aa1603e0 	mov	x0, x22
  402a24:	fd401be8 	ldr	d8, [sp, #48]
  402a28:	a94153f3 	ldp	x19, x20, [sp, #16]
  402a2c:	a9425bf5 	ldp	x21, x22, [sp, #32]
  402a30:	a8c47bfd 	ldp	x29, x30, [sp], #64
  402a34:	d65f03c0 	ret
  402a38:	d503201f 	nop
  402a3c:	d503201f 	nop

0000000000402a40 <load_concs_v>:
  402a40:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
  402a44:	910003fd 	mov	x29, sp
  402a48:	a90153f3 	stp	x19, x20, [sp, #16]
  402a4c:	d2800013 	mov	x19, #0x0                   	// #0
  402a50:	a9025bf5 	stp	x21, x22, [sp, #32]
  402a54:	aa0003f6 	mov	x22, x0
  402a58:	d2800c00 	mov	x0, #0x60                  	// #96
  402a5c:	f9001bf7 	str	x23, [sp, #48]
  402a60:	97fff8e4 	bl	400df0 <malloc@plt>
  402a64:	aa0003f7 	mov	x23, x0
  402a68:	b8b37ac0 	ldrsw	x0, [x22, x19, lsl #2]
  402a6c:	d37df000 	lsl	x0, x0, #3
  402a70:	97fff8e0 	bl	400df0 <malloc@plt>
  402a74:	f8337ae0 	str	x0, [x23, x19, lsl #3]
  402a78:	91000673 	add	x19, x19, #0x1
  402a7c:	f100327f 	cmp	x19, #0xc
  402a80:	54ffff41 	b.ne	402a68 <load_concs_v+0x28>  // b.any
  402a84:	d2800014 	mov	x20, #0x0                   	// #0
  402a88:	b8747ac0 	ldr	w0, [x22, x20, lsl #2]
  402a8c:	d2800013 	mov	x19, #0x0                   	// #0
  402a90:	7100001f 	cmp	w0, #0x0
  402a94:	5400010d 	b.le	402ab4 <load_concs_v+0x74>
  402a98:	f8747af5 	ldr	x21, [x23, x20, lsl #3]
  402a9c:	97fffea5 	bl	402530 <rn_v>
  402aa0:	b8747ac1 	ldr	w1, [x22, x20, lsl #2]
  402aa4:	fc337aa0 	str	d0, [x21, x19, lsl #3]
  402aa8:	91000673 	add	x19, x19, #0x1
  402aac:	6b13003f 	cmp	w1, w19
  402ab0:	54ffff4c 	b.gt	402a98 <load_concs_v+0x58>
  402ab4:	91000694 	add	x20, x20, #0x1
  402ab8:	f100329f 	cmp	x20, #0xc
  402abc:	54fffe61 	b.ne	402a88 <load_concs_v+0x48>  // b.any
  402ac0:	aa1703e0 	mov	x0, x23
  402ac4:	a94153f3 	ldp	x19, x20, [sp, #16]
  402ac8:	a9425bf5 	ldp	x21, x22, [sp, #32]
  402acc:	f9401bf7 	ldr	x23, [sp, #48]
  402ad0:	a8c47bfd 	ldp	x29, x30, [sp], #64
  402ad4:	d65f03c0 	ret
  402ad8:	d503201f 	nop
  402adc:	d503201f 	nop

0000000000402ae0 <pick_mat>:
  402ae0:	a9b97bfd 	stp	x29, x30, [sp, #-112]!
  402ae4:	b0000001 	adrp	x1, 403000 <_IO_stdin_used+0x3c0>
  402ae8:	910003fd 	mov	x29, sp
  402aec:	3dc13422 	ldr	q2, [x1, #1232]
  402af0:	b0000001 	adrp	x1, 403000 <_IO_stdin_used+0x3c0>
  402af4:	3dc13821 	ldr	q1, [x1, #1248]
  402af8:	b0000001 	adrp	x1, 403000 <_IO_stdin_used+0x3c0>
  402afc:	3dc13c20 	ldr	q0, [x1, #1264]
  402b00:	b0000001 	adrp	x1, 403000 <_IO_stdin_used+0x3c0>
  402b04:	ad0087e2 	stp	q2, q1, [sp, #16]
  402b08:	3dc14022 	ldr	q2, [x1, #1280]
  402b0c:	b0000001 	adrp	x1, 403000 <_IO_stdin_used+0x3c0>
  402b10:	3d800fe0 	str	q0, [sp, #48]
  402b14:	3dc14421 	ldr	q1, [x1, #1296]
  402b18:	b0000001 	adrp	x1, 403000 <_IO_stdin_used+0x3c0>
  402b1c:	3dc14820 	ldr	q0, [x1, #1312]
  402b20:	ad0207e2 	stp	q2, q1, [sp, #64]
  402b24:	3d801be0 	str	q0, [sp, #96]
  402b28:	97fffdaa 	bl	4021d0 <rn>
  402b2c:	2f00e403 	movi	d3, #0x0
  402b30:	910043e2 	add	x2, sp, #0x10
  402b34:	52800023 	mov	w3, #0x1                   	// #1
  402b38:	52800001 	mov	w1, #0x0                   	// #0
  402b3c:	14000032 	b	402c04 <pick_mat+0x124>
  402b40:	fd400041 	ldr	d1, [x2]
  402b44:	1e632821 	fadd	d1, d1, d3
  402b48:	7100043f 	cmp	w1, #0x1
  402b4c:	540004e0 	b.eq	402be8 <pick_mat+0x108>  // b.none
  402b50:	fc5f8042 	ldur	d2, [x2, #-8]
  402b54:	1e622821 	fadd	d1, d1, d2
  402b58:	7100083f 	cmp	w1, #0x2
  402b5c:	54000460 	b.eq	402be8 <pick_mat+0x108>  // b.none
  402b60:	fc5f0042 	ldur	d2, [x2, #-16]
  402b64:	1e622821 	fadd	d1, d1, d2
  402b68:	71000c3f 	cmp	w1, #0x3
  402b6c:	540003e0 	b.eq	402be8 <pick_mat+0x108>  // b.none
  402b70:	fc5e8042 	ldur	d2, [x2, #-24]
  402b74:	1e622821 	fadd	d1, d1, d2
  402b78:	7100103f 	cmp	w1, #0x4
  402b7c:	54000360 	b.eq	402be8 <pick_mat+0x108>  // b.none
  402b80:	fc5e0042 	ldur	d2, [x2, #-32]
  402b84:	1e622821 	fadd	d1, d1, d2
  402b88:	7100143f 	cmp	w1, #0x5
  402b8c:	540002e0 	b.eq	402be8 <pick_mat+0x108>  // b.none
  402b90:	fc5d8042 	ldur	d2, [x2, #-40]
  402b94:	1e622821 	fadd	d1, d1, d2
  402b98:	7100183f 	cmp	w1, #0x6
  402b9c:	54000260 	b.eq	402be8 <pick_mat+0x108>  // b.none
  402ba0:	fc5d0042 	ldur	d2, [x2, #-48]
  402ba4:	1e622821 	fadd	d1, d1, d2
  402ba8:	71001c3f 	cmp	w1, #0x7
  402bac:	540001e0 	b.eq	402be8 <pick_mat+0x108>  // b.none
  402bb0:	fc5c8042 	ldur	d2, [x2, #-56]
  402bb4:	1e622821 	fadd	d1, d1, d2
  402bb8:	7100203f 	cmp	w1, #0x8
  402bbc:	54000160 	b.eq	402be8 <pick_mat+0x108>  // b.none
  402bc0:	fc5c0042 	ldur	d2, [x2, #-64]
  402bc4:	1e622821 	fadd	d1, d1, d2
  402bc8:	7100243f 	cmp	w1, #0x9
  402bcc:	540000e0 	b.eq	402be8 <pick_mat+0x108>  // b.none
  402bd0:	fc5b8042 	ldur	d2, [x2, #-72]
  402bd4:	1e622821 	fadd	d1, d1, d2
  402bd8:	7100283f 	cmp	w1, #0xa
  402bdc:	54000060 	b.eq	402be8 <pick_mat+0x108>  // b.none
  402be0:	fc5b0042 	ldur	d2, [x2, #-80]
  402be4:	1e622821 	fadd	d1, d1, d2
  402be8:	1e612010 	fcmpe	d0, d1
  402bec:	54000184 	b.mi	402c1c <pick_mat+0x13c>  // b.first
  402bf0:	7100307f 	cmp	w3, #0xc
  402bf4:	54000120 	b.eq	402c18 <pick_mat+0x138>  // b.none
  402bf8:	11000421 	add	w1, w1, #0x1
  402bfc:	11000463 	add	w3, w3, #0x1
  402c00:	91002042 	add	x2, x2, #0x8
  402c04:	2a0103e0 	mov	w0, w1
  402c08:	35fff9c1 	cbnz	w1, 402b40 <pick_mat+0x60>
  402c0c:	1e602018 	fcmpe	d0, #0.0
  402c10:	54000064 	b.mi	402c1c <pick_mat+0x13c>  // b.first
  402c14:	17fffff9 	b	402bf8 <pick_mat+0x118>
  402c18:	52800000 	mov	w0, #0x0                   	// #0
  402c1c:	a8c77bfd 	ldp	x29, x30, [sp], #112
  402c20:	d65f03c0 	ret

Disassembly of section .fini:

0000000000402c24 <_fini>:
  402c24:	d503201f 	nop
  402c28:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
  402c2c:	910003fd 	mov	x29, sp
  402c30:	a8c17bfd 	ldp	x29, x30, [sp], #16
  402c34:	d65f03c0 	ret
