#as: -mcpu=arcem
#objdump: -dr --prefix-addresses --show-raw-insn -M dsp

.*: +file format .*arc.*


Disassembly of section .text:
0x[0-9a-f]+ 3211 0100           	vmac2hnfr	r0,r2,r4
0x[0-9a-f]+ 282f 0084           	abssh	r0,r2
0x[0-9a-f]+ 282f 003f           	aslacc	r0
0x[0-9a-f]+ 292f 003f           	aslsacc	r0
0x[0-9a-f]+ 2a0c 0100           	asrsr	r0,r2,r4
0x[0-9a-f]+ 321b 8100           	cbflyhf0r	r0,r2,r4
0x[0-9a-f]+ 302f 00b9           	cbflyhf1r	r0,r2
0x[0-9a-f]+ 3209 8100           	cmacchfr	r0,r2,r4
0x[0-9a-f]+ 3208 8100           	cmacchnfr	r0,r2,r4
0x[0-9a-f]+ 3207 8100           	cmachfr	r0,r2,r4
0x[0-9a-f]+ 3206 8100           	cmachnfr	r0,r2,r4
0x[0-9a-f]+ 3205 8100           	cmpychfr	r0,r2,r4
0x[0-9a-f]+ 3202 8100           	cmpychnfr	r0,r2,r4
0x[0-9a-f]+ 321b 0100           	cmpyhfmr	r0,r2,r4
0x[0-9a-f]+ 3201 8100           	cmpyhfr	r0,r2,r4
0x[0-9a-f]+ 3200 8100           	cmpyhnfr	r0,r2,r4
0x[0-9a-f]+ 2b2f 003f           	divacc	r0
0x[0-9a-f]+ 3218 0100           	dmachbl	r0,r2,r4
0x[0-9a-f]+ 3219 0100           	dmachbm	r0,r2,r4
0x[0-9a-f]+ 2a2c 0100           	dmachf	r0,r2,r4
0x[0-9a-f]+ 2a2d 0100           	dmachfr	r0,r2,r4
0x[0-9a-f]+ 3216 0100           	dmpyhbl	r0,r2,r4
0x[0-9a-f]+ 3217 0100           	dmpyhbm	r0,r2,r4
0x[0-9a-f]+ 2a2a 0100           	dmpyhf	r0,r2,r4
0x[0-9a-f]+ 2a2b 0100           	dmpyhfr	r0,r2,r4
0x[0-9a-f]+ 2a28 0100           	dmpyhwf	r0,r2,r4
0x[0-9a-f]+ 2c2f 803f           	flagacc	r0
0x[0-9a-f]+ 282f 0098           	getacc	r0,r2
0x[0-9a-f]+ 320c 0100           	macf	r0,r2,r4
0x[0-9a-f]+ 320d 0100           	macfr	r0,r2,r4
0x[0-9a-f]+ 3222 0100           	macwhfm	r0,r2,r4
0x[0-9a-f]+ 3223 0100           	macwhfmr	r0,r2,r4
0x[0-9a-f]+ 321d 0100           	macwhl	r0,r2,r4
0x[0-9a-f]+ 321f 0100           	macwhul	r0,r2,r4
0x[0-9a-f]+ 320a 0100           	mpyf	r0,r2,r4
0x[0-9a-f]+ 320b 0100           	mpyfr	r0,r2,r4
0x[0-9a-f]+ 3224 0100           	mpywhfl	r0,r2,r4
0x[0-9a-f]+ 3225 0100           	mpywhflr	r0,r2,r4
0x[0-9a-f]+ 3220 0100           	mpywhfm	r0,r2,r4
0x[0-9a-f]+ 3221 0100           	mpywhfmr	r0,r2,r4
0x[0-9a-f]+ 321c 0100           	mpywhl	r0,r2,r4
0x[0-9a-f]+ 321e 0100           	mpywhul	r0,r2,r4
0x[0-9a-f]+ 3215 0100           	msubdf	r0,r2,r4
0x[0-9a-f]+ 320e 0100           	msubf	r0,r2,r4
0x[0-9a-f]+ 320f 0100           	msubfr	r0,r2,r4
0x[0-9a-f]+ 282f 0086           	negsh	r0,r2
0x[0-9a-f]+ 282f 0099           	normacc	r0,r2
0x[0-9a-f]+ 282f 0083           	rndh	r0,r2
0x[0-9a-f]+ 282f 0082           	sath	r0,r2
0x[0-9a-f]+ 2a0d 8100           	setacc	r0,r2,r4
0x[0-9a-f]+ 2a2f 003f           	sqrtacc	r0
0x[0-9a-f]+ 282f 00a8           	vabs2h	r0,r2
0x[0-9a-f]+ 282f 00a9           	vabss2h	r0,r2
0x[0-9a-f]+ 2a24 0100           	vadd4b	r0,r2,r4
0x[0-9a-f]+ 2a0d 0100           	valgn2h	r0,r2,r4
0x[0-9a-f]+ 2a21 0100           	vasl2h	r0,r2,r4
0x[0-9a-f]+ 2a21 8100           	vasls2h	r0,r2,r4
0x[0-9a-f]+ 2a22 0100           	vasr2h	r0,r2,r4
0x[0-9a-f]+ 2a22 8100           	vasrs2h	r0,r2,r4
0x[0-9a-f]+ 2a23 8100           	vasrsr2h	r0,r2,r4
0x[0-9a-f]+ 282f 00a4           	vext2bhl	r0,r2
0x[0-9a-f]+ 282f 00a5           	vext2bhm	r0,r2
0x[0-9a-f]+ 2a23 0100           	vlsr2h	r0,r2,r4
0x[0-9a-f]+ 2a1e 0100           	vmac2h	r0r1,r2,r4
0x[0-9a-f]+ 2a1e 8100           	vmac2hf	r0,r2,r4
0x[0-9a-f]+ 2a1f 8100           	vmac2hfr	r0,r2,r4
0x[0-9a-f]+ 2a1f 0100           	vmac2hu	r0,r2,r4
0x[0-9a-f]+ 2a24 8100           	vmax2h	r0,r2,r4
0x[0-9a-f]+ 2a25 8100           	vmin2h	r0,r2,r4
0x[0-9a-f]+ 2a1c 0100           	vmpy2h	r0r1,r2,r4
0x[0-9a-f]+ 2a1c 8100           	vmpy2hf	r0,r2,r4
0x[0-9a-f]+ 2a1d 8100           	vmpy2hfr	r0,r2,r4
0x[0-9a-f]+ 2a1d 0100           	vmpy2hu	r0,r2,r4
0x[0-9a-f]+ 2a20 0100           	vmpy2hwf	r0,r2,r4
0x[0-9a-f]+ 3204 0100           	vmsub2hf	r0,r2,r4
0x[0-9a-f]+ 3203 0100           	vmsub2hfr	r0,r2,r4
0x[0-9a-f]+ 3211 8100           	vmsub2hnfr	r0,r2,r4
0x[0-9a-f]+ 282f 00aa           	vneg2h	r0,r2
0x[0-9a-f]+ 282f 00ab           	vnegs2h	r0,r2
0x[0-9a-f]+ 282f 00ac           	vnorm2h	r0,r2
0x[0-9a-f]+ 282f 00a2           	vrep2hl	r0,r2
0x[0-9a-f]+ 282f 00a3           	vrep2hm	r0,r2
0x[0-9a-f]+ 282f 00a6           	vsext2bhl	r0,r2
0x[0-9a-f]+ 282f 00a7           	vsext2bhm	r0,r2
0x[0-9a-f]+ 2a25 0100           	vsub4b	r0,r2,r4
