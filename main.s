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
	.file	"main.c"
	.text
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L4
	mov	lr, pc
	bx	r3
	ldr	r4, .L4+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L4+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2496
	ldr	r2, .L4+12
	ldr	r1, .L4+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L4+20
	ldr	r1, .L4+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L4+28
	ldr	r1, .L4+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L4+36
	ldr	r1, .L4+40
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+44
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #6656
	ldr	r3, .L4+48
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r4, .L4+52
	ldr	r2, .L4+56
	ldr	r1, .L4+60
	ldr	r0, .L4+64
	mov	r3, #1
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+68
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+72
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L4+76
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L5:
	.align	2
.L4:
	.word	pauseSound
	.word	DMANow
	.word	roadPal
	.word	100679680
	.word	roadTiles
	.word	100691968
	.word	roadMap
	.word	100712448
	.word	backTiles
	.word	100720640
	.word	backMap
	.word	hideSprites
	.word	initGame
	.word	playSoundA
	.word	11025
	.word	422657
	.word	Ah
	.word	unpauseSound
	.word	waitForVBlank
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	goToLevel3
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLevel3, %function
goToLevel3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	lr, #5
	ldr	ip, .L8
	ldr	r4, .L8+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L8+8
	mov	r0, #3
	str	lr, [ip]
	mov	lr, pc
	bx	r4
	mov	r3, #1600
	ldr	r2, .L8+12
	ldr	r1, .L8+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L8+20
	ldr	r1, .L8+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #64
	ldr	r2, .L8+28
	ldr	r1, .L8+32
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L8+36
	ldr	r1, .L8+40
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L8+44
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #6656
	ldr	r3, .L8+48
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r4, .L8+52
	ldr	r2, .L8+56
	mov	r3, #1
	ldr	r1, .L8+60
	ldr	r0, .L8+64
	mov	lr, pc
	bx	r4
	ldr	r3, .L8+68
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L8+72
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L9:
	.align	2
.L8:
	.word	level
	.word	DMANow
	.word	subLevelPal
	.word	100679680
	.word	subLevelTiles
	.word	100691968
	.word	subLevelMap
	.word	100712448
	.word	sky2Tiles
	.word	100720640
	.word	sky2Map
	.word	hideSprites
	.word	initLevel3
	.word	playSoundA
	.word	11025
	.word	414659
	.word	drivemusic
	.word	waitForVBlank
	.word	state
	.size	goToLevel3, .-goToLevel3
	.align	2
	.global	levelChanger
	.syntax unified
	.arm
	.fpu softvfp
	.type	levelChanger, %function
levelChanger:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L16
	mov	lr, pc
	bx	r3
	ldr	r3, .L16+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L16+8
	mov	lr, pc
	bx	r3
	ldr	r5, .L16+12
	ldr	r3, .L16+16
	mov	lr, pc
	bx	r3
	ldr	r4, .L16+20
	mov	lr, pc
	bx	r5
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L16+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L16+28
	ldr	r3, [r3, #56]
	cmp	r3, #0
	beq	.L10
	mov	r6, #3
	ldr	ip, .L16+32
	mov	r0, r6
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L16+36
	str	r6, [ip]
	mov	lr, pc
	bx	r4
	mov	r0, r6
	mov	r3, #2496
	ldr	r2, .L16+40
	ldr	r1, .L16+44
	mov	lr, pc
	bx	r4
	mov	r0, r6
	ldr	r1, .L16+48
	ldr	r2, .L16+52
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L16+56
	mov	lr, pc
	bx	r3
	ldr	r3, .L16+60
	mov	lr, pc
	bx	r3
	mov	r2, #4608
	mov	r3, #67108864
	strh	r2, [r3]	@ movhi
	mov	lr, pc
	bx	r5
	ldr	r3, .L16+64
	mov	lr, pc
	bx	r3
	ldr	r4, .L16+68
	mov	r3, #1
	ldr	r2, .L16+72
	ldr	r1, .L16+76
	ldr	r0, .L16+80
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L16+84
	str	r2, [r3]
.L10:
	pop	{r4, r5, r6, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	drawPlayerWalk
	.word	drawBoard
	.word	updatePlayerWalk
	.word	waitForVBlank
	.word	updateBoard
	.word	DMANow
	.word	shadowOAM
	.word	icemanWalk
	.word	level
	.word	roadPal
	.word	100679680
	.word	roadTiles
	.word	roadMap
	.word	100691968
	.word	hideSprites
	.word	initLevel
	.word	pauseSound
	.word	playSoundA
	.word	11025
	.word	310894
	.word	catchmusic
	.word	state
	.size	levelChanger, .-levelChanger
	.align	2
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #256
	mov	lr, #2
	mov	r0, #0
	mov	r1, #67108864
	ldr	ip, .L20
	ldr	r3, .L20+4
	str	lr, [ip]
	ldr	r4, .L20+8
	str	r0, [r3]
	mov	r3, r2
	strh	r2, [r1]	@ movhi
	mov	r0, #3
	mov	r2, #83886080
	ldr	r1, .L20+12
	mov	lr, pc
	bx	r4
	mov	r3, #1680
	mov	r2, #100663296
	ldr	r1, .L20+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L20+20
	ldr	r1, .L20+24
	mov	r0, #3
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L20+28
	mov	lr, pc
	bx	r3
	ldr	r5, .L20+32
	ldr	r2, .L20+36
	ldr	r1, .L20+40
	ldr	r0, .L20+44
	mov	r3, #1
	mov	lr, pc
	bx	r5
	ldr	r3, .L20+48
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L20+52
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L20+56
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L21:
	.align	2
.L20:
	.word	level
	.word	hits
	.word	DMANow
	.word	StartPal
	.word	StartTiles
	.word	100677632
	.word	StartMap
	.word	hideSprites
	.word	playSoundA
	.word	11025
	.word	103365
	.word	catchmusic2
	.word	waitForVBlank
	.word	shadowOAM
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	mov	ip, #1792
	ldr	r0, .L23
	ldr	r1, .L23+4
	ldr	r2, .L23+8
	strh	ip, [r3, #8]	@ movhi
	strh	r0, [r3, #10]	@ movhi
	strh	r1, [r3, #12]	@ movhi
	strh	r2, [r3, #14]	@ movhi
	b	goToStart
.L24:
	.align	2
.L23:
	.word	19972
	.word	5384
	.word	7180
	.size	initialize, .-initialize
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	win.part.3, %function
win.part.3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L27
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L28:
	.align	2
.L27:
	.word	buttons
	.size	win.part.3, .-win.part.3
	.set	lose.part.4,win.part.3
	.align	2
	.global	instructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L34
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L34+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToGame
.L35:
	.align	2
.L34:
	.word	oldButtons
	.word	buttons
	.size	instructions, .-instructions
	.align	2
	.global	goToInstr
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstr, %function
goToInstr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #67108864
	mov	r5, #1024
	ldr	r4, .L38
	strh	r5, [r2]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L38+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L38+8
	ldr	r2, .L38+12
	ldr	r1, .L38+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L38+20
	ldr	r1, .L38+24
	mov	r0, #3
	mov	r3, r5
	mov	lr, pc
	bx	r4
	ldr	r3, .L38+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L38+32
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L38+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L38+40
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L39:
	.align	2
.L38:
	.word	DMANow
	.word	instructionsPal
	.word	4896
	.word	100696064
	.word	instructionsTiles
	.word	100706304
	.word	instructionsMap
	.word	hideSprites
	.word	waitForVBlank
	.word	shadowOAM
	.word	state
	.size	goToInstr, .-goToInstr
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L45
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L45+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToInstr
.L46:
	.align	2
.L45:
	.word	oldButtons
	.word	buttons
	.size	start, .-start
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L49
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	win.part.3
.L50:
	.align	2
.L49:
	.word	oldButtons
	.size	win, .-win
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	win
	.size	lose, .-lose
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r3, .L68
	mov	lr, pc
	bx	r3
	ldr	r7, .L68+4
	ldr	r3, .L68+8
	ldr	r6, .L68+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L68+16
	mov	lr, pc
	bx	r7
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L68+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldrh	r3, [r6]
	tst	r3, #4
	beq	.L53
	ldr	r2, .L68+24
	ldrh	r2, [r2]
	ands	r5, r2, #4
	beq	.L64
.L53:
	tst	r3, #8
	beq	.L52
	ldr	r3, .L68+24
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L65
.L52:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L64:
	ldr	r2, .L68+28
	ldr	r8, [r2]
	cmp	r8, #2
	beq	.L66
	cmp	r8, #5
	beq	.L67
	cmp	r8, #3
	bne	.L53
	ldr	r9, .L68+32
	mov	lr, pc
	bx	r9
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L68+36
	mov	r0, r8
	mov	lr, pc
	bx	r4
	mov	r3, #2496
	ldr	r2, .L68+40
	ldr	r1, .L68+44
	mov	r0, r8
	mov	lr, pc
	bx	r4
	mov	r0, r8
	ldr	r1, .L68+48
	mov	r3, #2048
	ldr	r2, .L68+52
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r9
	mov	r2, #4608
	mov	r3, #67108864
	strh	r2, [r3]	@ movhi
	mov	lr, pc
	bx	r7
	ldr	r3, .L68+56
	mov	lr, pc
	bx	r3
	ldr	r4, .L68+60
	mov	r3, #1
	ldr	r2, .L68+64
	ldr	r1, .L68+68
	ldr	r0, .L68+72
	mov	lr, pc
	bx	r4
	ldr	r2, .L68+76
	ldrh	r3, [r6]
	str	r5, [r2]
	b	.L53
.L65:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	goToStart
.L66:
	ldr	r8, .L68+32
	mov	lr, pc
	bx	r8
	ldr	r3, .L68+56
	mov	lr, pc
	bx	r3
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L68+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2496
	ldr	r2, .L68+40
	ldr	r1, .L68+44
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L68+52
	ldr	r1, .L68+48
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L68+80
	ldr	r1, .L68+84
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L68+88
	ldr	r1, .L68+92
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r8
	mov	r2, #67108864
	mov	r1, #6656
	mov	r3, #1
	strh	r1, [r2]	@ movhi
	ldr	r0, .L68+96
	ldr	r2, .L68+64
	ldr	r1, .L68+100
	ldr	r4, .L68+60
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r7
	ldr	r3, .L68+104
	mov	lr, pc
	bx	r3
	ldr	r2, .L68+76
	ldrh	r3, [r6]
	str	r5, [r2]
	b	.L53
.L67:
	ldr	r8, .L68+32
	mov	lr, pc
	bx	r8
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L68+108
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1600
	ldr	r2, .L68+40
	ldr	r1, .L68+112
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L68+52
	ldr	r1, .L68+116
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #64
	ldr	r2, .L68+80
	ldr	r1, .L68+120
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L68+88
	ldr	r1, .L68+124
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r8
	mov	r2, #67108864
	mov	r1, #6656
	mov	r3, #1
	strh	r1, [r2]	@ movhi
	ldr	r0, .L68+128
	ldr	r2, .L68+64
	ldr	r1, .L68+132
	ldr	r4, .L68+60
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r7
	ldr	r2, .L68+76
	ldrh	r3, [r6]
	str	r5, [r2]
	b	.L53
.L69:
	.align	2
.L68:
	.word	drawBoard1
	.word	waitForVBlank
	.word	updateBoard1
	.word	oldButtons
	.word	DMANow
	.word	shadowOAM
	.word	buttons
	.word	level
	.word	hideSprites
	.word	roadPal
	.word	100679680
	.word	roadTiles
	.word	roadMap
	.word	100691968
	.word	pauseSound
	.word	playSoundA
	.word	11025
	.word	310894
	.word	catchmusic
	.word	state
	.word	100712448
	.word	backTiles
	.word	100720640
	.word	backMap
	.word	Ah
	.word	422657
	.word	unpauseSound
	.word	subLevelPal
	.word	subLevelTiles
	.word	subLevelMap
	.word	sky2Tiles
	.word	sky2Map
	.word	drivemusic
	.word	414659
	.size	pause, .-pause
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L72
	mov	r2, #83886080
	ldr	r1, .L72+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2496
	ldr	r2, .L72+8
	ldr	r1, .L72+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r2, .L72+16
	ldr	r1, .L72+20
	mov	r3, #2048
	mov	lr, pc
	bx	r4
	ldr	r3, .L72+24
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r1, #5120
	ldr	r3, .L72+28
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r4, .L72+32
	ldr	r2, .L72+36
	ldr	r1, .L72+40
	ldr	r0, .L72+44
	mov	r3, #1
	mov	lr, pc
	bx	r4
	ldr	r3, .L72+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L72+52
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L72+56
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L73:
	.align	2
.L72:
	.word	DMANow
	.word	pausePal
	.word	100696064
	.word	pauseTiles
	.word	100706304
	.word	pauseMap
	.word	hideSprites
	.word	initBoard1
	.word	playSoundA
	.word	11025
	.word	103365
	.word	catchmusic2
	.word	unpauseSound
	.word	waitForVBlank
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L85
	mov	lr, pc
	bx	r3
	ldr	r3, .L85+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L85+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L85+12
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L85+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L85+20
	ldr	r3, [r3]
	cmp	r3, #10
	beq	.L82
.L75:
	ldr	r3, .L85+24
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L74
	ldr	r3, .L85+28
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L83
.L74:
	pop	{r4, lr}
	bx	lr
.L82:
	ldr	r3, .L85+32
	ldr	r3, [r3]
	cmp	r3, #2
	beq	.L84
	bl	goToLevel3
	b	.L75
.L83:
	ldr	r3, .L85+36
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToPause
.L84:
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L85+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2496
	ldr	r2, .L85+44
	ldr	r1, .L85+48
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #2048
	ldr	r2, .L85+52
	ldr	r1, .L85+56
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L85+60
	ldr	r1, .L85+64
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L85+68
	ldr	r1, .L85+72
	mov	r0, #3
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L85+76
	mov	lr, pc
	bx	r3
	ldr	r3, .L85+80
	mov	lr, pc
	bx	r3
	ldr	r3, .L85+84
	mov	lr, pc
	bx	r3
	ldr	r3, .L85+36
	mov	lr, pc
	bx	r3
	ldr	r4, .L85+88
	mov	r3, #1
	ldr	r2, .L85+92
	ldr	r1, .L85+96
	ldr	r0, .L85+100
	mov	lr, pc
	bx	r4
	mov	r3, #0
	ldr	r2, .L85+92
	ldr	r1, .L85+104
	ldr	r0, .L85+108
	ldr	r4, .L85+112
	mov	lr, pc
	bx	r4
	mov	r2, #6
	ldr	r3, .L85+116
	str	r2, [r3]
	b	.L75
.L86:
	.align	2
.L85:
	.word	drawGame
	.word	updateGame
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	hits
	.word	oldButtons
	.word	buttons
	.word	level
	.word	pauseSound
	.word	roadPal
	.word	100679680
	.word	roadTiles
	.word	100691968
	.word	roadMap
	.word	100712448
	.word	backTiles
	.word	100720640
	.word	backMap
	.word	hideSprites
	.word	initPlayerWalk
	.word	initBoard
	.word	playSoundA
	.word	11025
	.word	103365
	.word	catchmusic2
	.word	75496
	.word	iceMAnVO
	.word	playSoundB
	.word	state
	.size	game, .-game
	.align	2
	.global	game2
	.syntax unified
	.arm
	.fpu softvfp
	.type	game2, %function
game2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L97
	mov	lr, pc
	bx	r3
	ldr	r5, .L97+4
	ldr	r3, .L97+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L97+12
	mov	lr, pc
	bx	r5
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L97+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L97+20
	ldr	r3, [r3]
	cmp	r3, #20
	beq	.L95
.L88:
	ldr	r3, .L97+24
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L89
	ldr	r3, .L97+28
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L96
.L89:
	ldr	r3, .L97+32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L87
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L97+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L97+40
	ldr	r2, .L97+44
	ldr	r1, .L97+48
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r1, .L97+52
	mov	r0, #3
	ldr	r2, .L97+56
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L97+60
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r2, #1024
	strh	r2, [r3]	@ movhi
	mov	lr, pc
	bx	r5
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L97+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L97+64
	str	r2, [r3]
.L87:
	pop	{r4, r5, r6, lr}
	bx	lr
.L95:
	ldr	r3, .L97+60
	mov	lr, pc
	bx	r3
	mov	r0, #0
	mov	r1, #4
	ldr	r3, .L97+68
	ldr	r2, .L97+72
	str	r0, [r3]
	ldr	r3, .L97+76
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	bl	goToGame
	b	.L88
.L96:
	ldr	r3, .L97+76
	mov	lr, pc
	bx	r3
	bl	goToPause
	b	.L89
.L98:
	.align	2
.L97:
	.word	drawLevel
	.word	waitForVBlank
	.word	updateLevel
	.word	DMANow
	.word	shadowOAM
	.word	collect
	.word	oldButtons
	.word	buttons
	.word	icees
	.word	losePal
	.word	4896
	.word	100696064
	.word	loseTiles
	.word	loseMap
	.word	100706304
	.word	hideSprites
	.word	state
	.word	hits
	.word	level
	.word	pauseSound
	.size	game2, .-game2
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L101
	mov	lr, pc
	bx	r5
	mov	r6, #1024
	mov	r2, #67108864
	ldr	r4, .L101+4
	strh	r6, [r2]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L101+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L101+12
	ldr	r2, .L101+16
	ldr	r1, .L101+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, r6
	ldr	r2, .L101+24
	ldr	r1, .L101+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r5
	ldr	r3, .L101+32
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L101+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L101+40
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L102:
	.align	2
.L101:
	.word	hideSprites
	.word	DMANow
	.word	winPal
	.word	4896
	.word	100696064
	.word	winTiles
	.word	100706304
	.word	winMap
	.word	waitForVBlank
	.word	shadowOAM
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	game3
	.syntax unified
	.arm
	.fpu softvfp
	.type	game3, %function
game3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L112
	mov	lr, pc
	bx	r3
	ldr	r3, .L112+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L112+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L112+12
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L112+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L112+20
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L104
	ldr	r3, .L112+24
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L110
.L104:
	ldr	r3, .L112+28
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L111
	pop	{r4, lr}
	bx	lr
.L111:
	pop	{r4, lr}
	b	goToWin
.L110:
	ldr	r3, .L112+32
	mov	lr, pc
	bx	r3
	bl	goToPause
	b	.L104
.L113:
	.align	2
.L112:
	.word	drawLevel3
	.word	updateLevel3
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	hOff
	.word	pauseSound
	.size	game3, .-game3
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r3, .L144
	mov	r0, #0
	mov	lr, pc
	bx	r3
	ldr	r3, .L144+4
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r2, #1792
	ldr	ip, .L144+8
	ldr	r0, .L144+12
	ldr	r1, .L144+16
	strh	r2, [r3, #8]	@ movhi
	strh	ip, [r3, #10]	@ movhi
	ldr	r2, .L144+20
	strh	r0, [r3, #12]	@ movhi
	strh	r1, [r3, #14]	@ movhi
	mov	lr, pc
	bx	r2
	ldr	r3, .L144+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L144+28
	mov	lr, pc
	bx	r3
	mov	r8, #2
	ldr	r4, .L144+32
	ldr	fp, .L144+36
	ldr	r10, .L144+40
	ldr	r5, .L144+44
	ldr	r7, .L144+48
	ldr	r6, .L144+52
	ldr	r9, .L144+56
.L115:
	ldrh	r1, [r4]
	strh	r1, [fp]	@ movhi
	ldr	r2, [r10]
	ldrh	r3, [r9, #48]
	strh	r3, [r4]	@ movhi
	cmp	r2, #6
	ldrls	pc, [pc, r2, asl #2]
	b	.L115
.L118:
	.word	.L117
	.word	.L119
	.word	.L120
	.word	.L121
	.word	.L122
	.word	.L123
	.word	.L124
.L124:
	mov	lr, pc
	bx	r6
	b	.L115
.L123:
	tst	r1, #8
	beq	.L115
	tst	r3, #8
	bne	.L115
	ldr	r3, .L144+60
	mov	lr, pc
	bx	r3
	b	.L115
.L122:
	mov	lr, pc
	bx	r7
	b	.L115
.L121:
	tst	r1, #8
	beq	.L115
	ldr	r3, .L144+64
	mov	lr, pc
	bx	r3
	b	.L115
.L120:
	tst	r1, #8
	beq	.L115
	ldr	r3, .L144+68
	mov	lr, pc
	bx	r3
	b	.L115
.L119:
	tst	r1, #8
	str	r8, [r5]
	beq	.L115
	tst	r3, #8
	bne	.L115
	ldr	r3, .L144+72
	mov	lr, pc
	bx	r3
	b	.L115
.L117:
	ldr	r3, [r5]
	cmp	r3, #2
	beq	.L129
	cmp	r3, #3
	beq	.L143
	cmp	r3, #4
	beq	.L129
	cmp	r3, #5
	bne	.L115
	ldr	r3, .L144+76
	mov	lr, pc
	bx	r3
	b	.L115
.L129:
	ldr	r3, .L144+80
	mov	lr, pc
	bx	r3
	b	.L115
.L143:
	ldr	r3, .L144+84
	mov	lr, pc
	bx	r3
	b	.L115
.L145:
	.align	2
.L144:
	.word	time
	.word	srand
	.word	19972
	.word	5384
	.word	7180
	.word	goToStart
	.word	setupInterrupts
	.word	setupSounds
	.word	buttons
	.word	oldButtons
	.word	state
	.word	level
	.word	pause
	.word	levelChanger
	.word	67109120
	.word	goToGame
	.word	lose.part.4
	.word	win.part.3
	.word	goToInstr
	.word	game3
	.word	game
	.word	game2
	.size	main, .-main
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.comm	shadowOAM,1024,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
