	ld1w	0, pn8/z, [x0]
	ld1w	{ z0.s - z1.s }, 0, [x0]
	ld1w	{ z0.s - z1.s }, pn8/z, 0

	ld1w	{ z0.s - z2.s }, pn8/z, [x0, x1, lsl #2]
	ld1w	{ z1.s - z2.s }, pn8/z, [x0, x1, lsl #2]
	ld1w	{ z0.s - z1.s }, p8/z, [x0, x1, lsl #2]
	ld1w	{ z0.s - z1.s }, pn8, [x0, x1, lsl #2]
	ld1w	{ z0.s - z1.s }, pn8/m, [x0, x1, lsl #2]
	ld1w	{ z0.s - z1.s }, pn8.s, [x0, x1, lsl #2]
	ld1w	{ z0.s - z1.s }, pn0/z, [x0, x1, lsl #2]
	ld1w	{ z0.s - z1.s }, pn7/z, [x0, x1, lsl #2]
	ld1w	{ z0.s - z1.s }, pn8/z, [w0, w1, lsl #2]
	ld1w	{ z0.s - z1.s }, pn8/z, [xzr, x1, lsl #2]
	ld1w	{ z0.s - z1.s }, pn8/z, [sp, sp, lsl #2]
	ld1w	{ z0.s - z1.s }, pn8/z, [x0, x1]
	ld1w	{ z0.s - z1.s }, pn8/z, [x0, x1, lsl #1]
	ld1w	{ z0.s - z1.s }, pn8/z, [x0, x1, lsl #3]
	ld1w	{ z0.s - z1.s }, pn8/z, [x0, x1, lsl #4]
	ld1w	{ z0.s - z1.s }, pn8/z, [x0, w1, sxtw #2]
	ld1w	{ z0.s - z1.s }, pn8/z, [x0, w1, uxtw #2]

	ld1w	{ z1.s - z4.s }, pn8/z, [x0, x1, lsl #2]
	ld1w	{ z2.s - z5.s }, pn8/z, [x0, x1, lsl #2]
	ld1w	{ z3.s - z6.s }, pn8/z, [x0, x1, lsl #2]
	ld1w	{ z0.s - z3.s }, p8/z, [x0, x1, lsl #2]
	ld1w	{ z0.s - z3.s }, pn8, [x0, x1, lsl #2]
	ld1w	{ z0.s - z3.s }, pn8/m, [x0, x1, lsl #2]
	ld1w	{ z0.s - z3.s }, pn8.s, [x0, x1, lsl #2]
	ld1w	{ z0.s - z3.s }, pn0/z, [x0, x1, lsl #2]
	ld1w	{ z0.s - z3.s }, pn7/z, [x0, x1, lsl #2]
	ld1w	{ z0.s - z3.s }, pn8/z, [w0, w1, lsl #2]
	ld1w	{ z0.s - z3.s }, pn8/z, [xzr, x1, lsl #2]
	ld1w	{ z0.s - z3.s }, pn8/z, [sp, sp, lsl #2]
	ld1w	{ z0.s - z3.s }, pn8/z, [x0, x1]
	ld1w	{ z0.s - z3.s }, pn8/z, [x0, x1, lsl #1]
	ld1w	{ z0.s - z3.s }, pn8/z, [x0, x1, lsl #3]
	ld1w	{ z0.s - z3.s }, pn8/z, [x0, x1, lsl #4]
	ld1w	{ z0.s - z3.s }, pn8/z, [x0, w1, sxtw #2]
	ld1w	{ z0.s - z3.s }, pn8/z, [x0, w1, uxtw #2]

	ld1w	{ z0.s, z2.s }, pn8/z, [x0, x1, lsl #2]
	ld1w	{ z0.s, z3.s }, pn8/z, [x0, x1, lsl #2]
	ld1w	{ z0.s, z4.s }, pn8/z, [x0, x1, lsl #2]
	ld1w	{ z8.s, z16.s }, pn8/z, [x0, x1, lsl #2]
	ld1w	{ z24.s, z0.s }, pn8/z, [x0, x1, lsl #2]
	ld1w	{ z8.s, z0.s }, pn8/z, [x0, x1, lsl #2]
	ld1w	{ z0.h, z8.h }, pn8/z, [x0, x1, lsl #2]
	ld1w	{ z0.s, z8.s }, p8/z, [x0, x1, lsl #2]
	ld1w	{ z0.s, z8.s }, pn8/z, [w0, w30, lsl #2]
	ld1w	{ z0.s, z8.s }, pn8/z, [xzr, xzr, lsl #2]
	ld1w	{ z0.s, z8.s }, pn8/z, [x0, sp, lsl #2]
	ld1w	{ z0.s, z8.s }, pn8/z, [x0, x1, lsl #1]

	ld1w	{ z4.s, z8.s, z12.s, z16.s }, pn8/z, [x0, x1, lsl #2]
	ld1w	{ z20.s, z24.s, z28.s, z0.s }, pn8/z, [x0, x1, lsl #2]
	ld1w	{ z0.h, z4.h, z8.h, z12.h }, pn8/z, [x0, x1, lsl #2]
	ld1w	{ z0.s, z4.s, z8.s, z12.s }, p8/z, [x0, x1, lsl #2]
	ld1w	{ z0.s, z4.s, z8.s, z12.s }, pn8/z, [w0, w30, lsl #2]
	ld1w	{ z0.s, z4.s, z8.s, z12.s }, pn8/z, [xzr, xzr, lsl #2]
	ld1w	{ z0.s, z4.s, z8.s, z12.s }, pn8/z, [x0, sp, lsl #2]
	ld1w	{ z0.s, z4.s, z8.s, z12.s }, pn8/z, [x0, x1, lsl #1]
