	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"level3.c"
	.text
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCar2.part.1, %function
updateCar2.part.1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L9
	ldr	r1, [r3, #12]
	cmp	r1, #156
	beq	.L2
	push	{r4, lr}
	mov	r4, #67108864
	ldr	lr, .L9+4
	ldr	r2, [lr]
	ldr	r0, [r3, #20]
	lsl	ip, r2, #16
	lsr	ip, ip, #16
	add	r2, r2, #2
	add	r1, r0, r1
	strh	ip, [r4, #20]	@ movhi
	str	r2, [lr]
	str	r1, [r3, #12]
	pop	{r4, lr}
	bx	lr
.L2:
	mov	r2, #0
	ldr	r1, .L9+4
	str	r2, [r3, #20]
	str	r2, [r1]
	bx	lr
.L10:
	.align	2
.L9:
	.word	zombieCar
	.word	hOff
	.size	updateCar2.part.1, .-updateCar2.part.1
	.align	2
	.global	initLevel3
	.syntax unified
	.arm
	.fpu softvfp
	.type	initLevel3, %function
initLevel3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #960
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r4, #120
	mov	r0, #1
	mov	r9, #38
	mov	r8, #18
	mov	r7, #16
	mov	r6, #10
	mov	r5, #12
	mov	r2, #0
	mov	lr, #67108864
	mov	r1, #8
	ldr	r3, .L13
	str	ip, [r3]
	ldr	r3, .L13+4
	str	ip, [r3, #8]
	ldr	ip, .L13+8
	str	r4, [ip]
	ldr	ip, .L13+12
	str	r0, [r3, #20]
	str	r0, [ip]
	ldr	r0, .L13+16
	str	r9, [r3, #24]
	str	r8, [r3, #28]
	str	r7, [r3, #16]
	str	r6, [r3, #12]
	str	r5, [r3, #48]
	str	r1, [r3, #52]
	str	r1, [r3, #36]
	str	r2, [r0]
	strh	r2, [lr, #20]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L14:
	.align	2
.L13:
	.word	num
	.word	zombieCar
	.word	opp
	.word	hOff
	.word	vOff
	.size	initLevel3, .-initLevel3
	.align	2
	.global	initCar2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initCar2, %function
initCar2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #8
	mov	r6, #38
	mov	r5, #18
	mov	r4, #16
	mov	lr, #1
	mov	ip, #960
	mov	r0, #10
	mov	r1, #12
	ldr	r3, .L17
	str	r6, [r3, #24]
	str	r5, [r3, #28]
	str	r4, [r3, #16]
	str	lr, [r3, #20]
	str	ip, [r3, #8]
	str	r0, [r3, #12]
	str	r1, [r3, #48]
	str	r2, [r3, #52]
	str	r2, [r3, #36]
	pop	{r4, r5, r6, lr}
	bx	lr
.L18:
	.align	2
.L17:
	.word	zombieCar
	.size	initCar2, .-initCar2
	.align	2
	.global	updateLevel3
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateLevel3, %function
updateLevel3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L21
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bxne	lr
	b	updateCar2.part.1
.L22:
	.align	2
.L21:
	.word	67109120
	.size	updateLevel3, .-updateLevel3
	.align	2
	.global	drawCar2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawCar2, %function
drawCar2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L27
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L26
	ldr	r1, .L27+4
	ldr	r2, [r1, #12]
	mvn	r2, r2, lsl #18
	mvn	r2, r2, lsr #18
	ldr	r3, [r1, #8]
	ldr	ip, [r1, #48]
	ldr	r0, [r1, #36]
	asr	r3, r3, #3
	ldr	r1, .L27+8
	orr	r3, r3, #16384
	add	r0, r0, ip, lsl #5
	strh	r2, [r1, #114]	@ movhi
	strh	r3, [r1, #112]	@ movhi
	strh	r0, [r1, #116]	@ movhi
	bx	lr
.L26:
	ldr	r2, .L27+8
	ldrh	r3, [r2, #112]
	orr	r3, r3, #512
	strh	r3, [r2, #112]	@ movhi
	bx	lr
.L28:
	.align	2
.L27:
	.word	dead
	.word	zombieCar
	.word	shadowOAM
	.size	drawCar2, .-drawCar2
	.align	2
	.global	drawLevel3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawLevel3, %function
drawLevel3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	ldr	r2, .L30
	ldrh	r2, [r2]
	strh	r2, [r3, #22]	@ movhi
	b	drawCar2
.L31:
	.align	2
.L30:
	.word	vOff
	.size	drawLevel3, .-drawLevel3
	.align	2
	.global	updateCar2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateCar2, %function
updateCar2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L34
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bxne	lr
	b	updateCar2.part.1
.L35:
	.align	2
.L34:
	.word	67109120
	.size	updateCar2, .-updateCar2
	.comm	opp,4,4
	.comm	num,4,4
	.global	jumping
	.global	count
	.comm	zombieCar,60,4
	.bss
	.align	2
	.type	jumping, %object
	.size	jumping, 4
jumping:
	.space	4
	.type	count, %object
	.size	count, 4
count:
	.space	4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
