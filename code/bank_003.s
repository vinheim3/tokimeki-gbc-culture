; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

Call_003_4000::
	ld a, [$d230]                                    ; $4000: $fa $30 $d2
	and a                                            ; $4003: $a7
	call nz, Call_000_1c71                                   ; $4004: $c4 $71 $1c
	ld a, [$d810]                                    ; $4007: $fa $10 $d8
	call wJumpTable                                       ; $400a: $cd $80 $cf
	dw Func_03_40da
	dw Func_03_4108
	dw Func_03_40da
	dw Func_03_418b
	dw Func_03_4521
	dw Func_03_4584
	dw Func_03_452e
	dw Func_03_4584
	dw Func_03_40da
	dw Func_03_4500
	dw Func_03_4584
	dw Func_03_4506
	dw Func_03_4584
	dw Func_03_450d
	dw Func_03_4584
	dw Func_03_4514
	dw Func_03_4584
	dw Func_03_40da
	dw Func_03_442e
	dw Func_03_4439
	dw Func_03_4447
	dw Func_03_40da
	dw Func_03_43c2
	dw Func_03_43d0
	dw Func_03_442e
	dw Func_03_4439
	dw Func_03_4444
	dw Func_03_453e
	dw Func_03_4584
	dw Func_03_4556
	dw Func_03_4584
	dw Func_03_4563
	dw Func_03_4584
	dw Func_03_44a5
	dw Func_03_44b3
	dw Func_03_44c1
	dw Func_03_40d4
	dw Func_03_43d4
	dw Func_03_43e1
	dw Func_03_4521
	dw Func_03_4584
	dw Func_03_452e
	dw Func_03_4584
	dw Func_03_4485
	dw Func_03_4495
	dw Func_03_40d4
	dw Func_03_460c
	dw Func_03_4645
	dw Func_03_4444
	dw Func_03_4671
	dw Func_03_4563
	dw Func_03_4584
	dw Func_03_44c1
	dw Func_03_40da
	dw Func_03_4444
	dw Func_03_4621
	dw Func_03_4645
	dw Func_03_4684
	dw Func_03_40da
	dw Func_03_442e
	dw Func_03_4439
	dw Func_03_4680
	dw Func_03_40da
	dw Func_03_442e
	dw Func_03_4439
	dw Func_03_466d
	dw Func_03_40da
	dw Func_03_43ee
	dw Func_03_40da
	dw Func_03_43f9
	dw Func_03_40da
	dw Func_03_4404
	dw Func_03_40da


; HL -
HLequTextTileDataDestAddr:
	push af                                      ; $409f: $f5
	push de                                          ; $40a0: $d5

;
	ld a, [hl]                                       ; $40a1: $7e
	ld de, $8000                                     ; $40a2: $11 $00 $80
	bit 7, a                                         ; $40a5: $cb $7f
	jr z, :+                                ; $40a7: $28 $05

	ld de, $8800                                     ; $40a9: $11 $00 $88
	sub $40                                          ; $40ac: $d6 $40

; HL = A * $20 + DE
:	ld l, a                                          ; $40ae: $6f
	ld h, $00                                        ; $40af: $26 $00
	add hl, hl                                       ; $40b1: $29
	add hl, hl                                       ; $40b2: $29
	add hl, hl                                       ; $40b3: $29
	add hl, hl                                       ; $40b4: $29
	add hl, hl                                       ; $40b5: $29
	add hl, de                                       ; $40b6: $19

	pop de                                           ; $40b7: $d1
	pop af                                           ; $40b8: $f1
	ret                                              ; $40b9: $c9


Call_003_40ba:
	ld a, [$d818]                                    ; $40ba: $fa $18 $d8
	and a                                            ; $40bd: $a7
	call z, Call_003_40cd                            ; $40be: $cc $cd $40

Call_003_40c1:
	ld a, [$d818]                                    ; $40c1: $fa $18 $d8
	and a                                            ; $40c4: $a7
	ret nz                                           ; $40c5: $c0

	call Call_003_40cd                               ; $40c6: $cd $cd $40
	pop hl                                           ; $40c9: $e1
	jp Call_003_4000                                 ; $40ca: $c3 $00 $40


Call_003_40cd:
	push hl                                          ; $40cd: $e5
	ld hl, $d810                                     ; $40ce: $21 $10 $d8
	inc [hl]                                         ; $40d1: $34
	pop hl                                           ; $40d2: $e1
	ret                                              ; $40d3: $c9


Func_03_40d4:
	ld hl, $0020                                     ; $40d4: $21 $20 $00
	call Func_1ceb                                       ; $40d7: $cd $eb $1c

Func_03_40da:
	ld a, $00                                        ; $40da: $3e $00
	ld [$d810], a                                    ; $40dc: $ea $10 $d8
	ld hl, $d811                                     ; $40df: $21 $11 $d8
	ld a, [hl]                                       ; $40e2: $7e
	inc [hl]                                         ; $40e3: $34
	ret z                                            ; $40e4: $c8

	ld [hl], $00                                     ; $40e5: $36 $00
	and a                                            ; $40e7: $a7
	ret z                                            ; $40e8: $c8

	dec [hl]                                         ; $40e9: $35
	ld l, a                                          ; $40ea: $6f
	inc a                                            ; $40eb: $3c
	ret z                                            ; $40ec: $c8

	ld h, $00                                        ; $40ed: $26 $00
	ld de, $40f9                                     ; $40ef: $11 $f9 $40
	add hl, de                                       ; $40f2: $19
	ld a, [hl]                                       ; $40f3: $7e
	ld [$d810], a                                    ; $40f4: $ea $10 $d8
	jp Call_003_4000                                 ; $40f7: $c3 $00 $40


;
	ld bc, $1603                                     ; $40fa: $01 $03 $16
	jr jr_003_4116                                   ; $40fd: $18 $17

	dec de                                           ; $40ff: $1b
	dec h                                            ; $4100: $25
	ld l, $36                                        ; $4101: $2e $36
	dec sp                                           ; $4103: $3b
	ccf                                              ; $4104: $3f
	ld b, e                                          ; $4105: $43
	ld b, l                                          ; $4106: $45
	ld b, a                                          ; $4107: $47


Func_03_4108:
	ld hl, $4184                                     ; $4108: $21 $84 $41
	call $0aab                                       ; $410b: $cd $ab $0a
	ld a, [$c186]                                    ; $410e: $fa $86 $c1
	call Call_003_4375                               ; $4111: $cd $75 $43
	ldh a, [$8e]                                     ; $4114: $f0 $8e

jr_003_4116:
	ldh [$9b], a                                     ; $4116: $e0 $9b
	xor a                                            ; $4118: $af
	ld [$d818], a                                    ; $4119: $ea $18 $d8
	ld a, $88                                        ; $411c: $3e $88
	ld [$d80b], a                                    ; $411e: $ea $0b $d8
	ld a, [$c186]                                    ; $4121: $fa $86 $c1
	ld [$c187], a                                    ; $4124: $ea $87 $c1
	ld a, [wInitialA]                                    ; $4127: $fa $00 $c1
	cp $11                                           ; $412a: $fe $11
	jr nz, jr_003_4134                               ; $412c: $20 $06

	call $1955                                       ; $412e: $cd $55 $19
	call Call_000_1858                                       ; $4131: $cd $58 $18

jr_003_4134:
	ld a, [$d7f9]                                    ; $4134: $fa $f9 $d7
	push af                                          ; $4137: $f5
	ld a, $09                                        ; $4138: $3e $09
	call Call_003_41b0                               ; $413a: $cd $b0 $41
	pop af                                           ; $413d: $f1
	ld [$d7f9], a                                    ; $413e: $ea $f9 $d7
	ld a, [wInitialA]                                    ; $4141: $fa $00 $c1
	cp $11                                           ; $4144: $fe $11
	jr nz, jr_003_4156                               ; $4146: $20 $0e

	ld a, $01                                        ; $4148: $3e $01
	ld [$c10a], a                                    ; $414a: $ea $0a $c1
	ld a, $12                                        ; $414d: $3e $12
	call Call_003_41b0                               ; $414f: $cd $b0 $41
	xor a                                            ; $4152: $af
	ld [$c10a], a                                    ; $4153: $ea $0a $c1

jr_003_4156:
	ld a, $17                                        ; $4156: $3e $17
	call Call_003_41b0                               ; $4158: $cd $b0 $41
	call Call_003_421b                               ; $415b: $cd $1b $42
	call Call_003_41c9                               ; $415e: $cd $c9 $41
	ld a, $58                                        ; $4161: $3e $58
	ldh [$8b], a                                     ; $4163: $e0 $8b
	call Call_003_416e                               ; $4165: $cd $6e $41
	ld a, $02                                        ; $4168: $3e $02
	ld [$d810], a                                    ; $416a: $ea $10 $d8
	ret                                              ; $416d: $c9


Call_003_416e:
	ld a, [$c186]                                    ; $416e: $fa $86 $c1
	cp $02                                           ; $4171: $fe $02
	ret z                                            ; $4173: $c8

	cp $00                                           ; $4174: $fe $00
	ld a, $02                                        ; $4176: $3e $02
	jr nz, jr_003_4181                               ; $4178: $20 $07

	ld hl, $ff82                                     ; $417a: $21 $82 $ff
	set 4, [hl]                                      ; $417d: $cb $e6
	ld a, $01                                        ; $417f: $3e $01

jr_003_4181:
	jp $068e                                         ; $4181: $c3 $8e $06


	ld sp, hl                                        ; $4184: $f9
	ld de, $6b7a                                     ; $4185: $11 $7a $6b
	add b                                            ; $4188: $80
	adc c                                            ; $4189: $89
	rst $38                                          ; $418a: $ff


Func_03_418b:
	call Call_003_4398                               ; $418b: $cd $98 $43
	xor a                                            ; $418e: $af
	ld [$d818], a                                    ; $418f: $ea $18 $d8
	ld a, $00                                        ; $4192: $3e $00
	ld [$d7fa], a                                    ; $4194: $ea $fa $d7
	ld a, $01                                        ; $4197: $3e $01
	ld [$d7f9], a                                    ; $4199: $ea $f9 $d7
	ld [$d819], a                                    ; $419c: $ea $19 $d8
	ld [$d81a], a                                    ; $419f: $ea $1a $d8
	ld [$d81b], a                                    ; $41a2: $ea $1b $d8
	ld [$d7fb], a                                    ; $41a5: $ea $fb $d7
	ld a, $80                                        ; $41a8: $3e $80
	ld [$d80b], a                                    ; $41aa: $ea $0b $d8
	jp Call_003_40cd                                 ; $41ad: $c3 $cd $40


Call_003_41b0:
	ld [$d810], a                                    ; $41b0: $ea $10 $d8
	ld a, $ff                                        ; $41b3: $3e $ff

Jump_003_41b5::
	ld [$d811], a                                    ; $41b5: $ea $11 $d8

Call_003_41b8:
:	call Call_003_4000                               ; $41b8: $cd $00 $40
	call SafelyExecuteDataCopies                                       ; $41bb: $cd $8b $14
	ldh a, [$8e]                                     ; $41be: $f0 $8e
	ldh [$9b], a                                     ; $41c0: $e0 $9b
	ld a, [$d811]                                    ; $41c2: $fa $11 $d8
	and a                                            ; $41c5: $a7
	jr nz, :-                               ; $41c6: $20 $f0

	ret                                              ; $41c8: $c9


Call_003_41c9:
	ld e, $a3                                        ; $41c9: $1e $a3
	ld hl, $9fe0                                     ; $41cb: $21 $e0 $9f
	ld a, $14                                        ; $41ce: $3e $14
	call $165f                                       ; $41d0: $cd $5f $16
	call SafelyExecuteDataCopies                                       ; $41d3: $cd $8b $14
	ld hl, $9ee0                                     ; $41d6: $21 $e0 $9e
	ld de, $989c                                     ; $41d9: $11 $9c $98
	call Call_003_4202                               ; $41dc: $cd $02 $42
	call SafelyExecuteDataCopies                                       ; $41df: $cd $8b $14
	ld hl, $9f00                                     ; $41e2: $21 $00 $9f
	ld e, $9d                                        ; $41e5: $1e $9d
	ld a, $06                                        ; $41e7: $3e $06
	call $1667                                       ; $41e9: $cd $67 $16
	call SafelyExecuteDataCopies                                       ; $41ec: $cd $8b $14
	ld hl, $9f13                                     ; $41ef: $21 $13 $9f
	ld e, $9d                                        ; $41f2: $1e $9d
	ld a, $06                                        ; $41f4: $3e $06
	call $1667                                       ; $41f6: $cd $67 $16
	call SafelyExecuteDataCopies                                       ; $41f9: $cd $8b $14
	ld hl, $9fc0                                     ; $41fc: $21 $c0 $9f
	ld de, $9e9f                                     ; $41ff: $11 $9f $9e

Call_003_4202:
	push de                                          ; $4202: $d5
	ld a, $14                                        ; $4203: $3e $14
	call EnqueueDataCopyType4FullHeader                                       ; $4205: $cd $83 $16
	pop de                                           ; $4208: $d1
	ld [hl], d                                       ; $4209: $72
	inc hl                                           ; $420a: $23
	ld a, $99                                        ; $420b: $3e $99
	ld [hl+], a                                      ; $420d: $22
	inc a                                            ; $420e: $3c
	ld b, $10                                        ; $420f: $06 $10

jr_003_4211:
	ld [hl+], a                                      ; $4211: $22
	dec b                                            ; $4212: $05
	jr nz, jr_003_4211                               ; $4213: $20 $fc

	inc a                                            ; $4215: $3c
	ld [hl+], a                                      ; $4216: $22
	ld [hl], e                                       ; $4217: $73
	jp SafelyExecuteDataCopies                                         ; $4218: $c3 $8b $14


Call_003_421b:
	ld a, [wInitialA]                                    ; $421b: $fa $00 $c1
	cp $11                                           ; $421e: $fe $11
	ret nz                                           ; $4220: $c0

	ld hl, $1fe0                                     ; $4221: $21 $e0 $1f
	ld e, $01                                        ; $4224: $1e $01
	ld a, $14                                        ; $4226: $3e $14
	call $165f                                       ; $4228: $cd $5f $16
	call SafelyExecuteDataCopies                                       ; $422b: $cd $8b $14
	ld hl, $1ee0                                     ; $422e: $21 $e0 $1e
	call Call_003_4251                               ; $4231: $cd $51 $42
	ld hl, $1f00                                     ; $4234: $21 $00 $1f
	ld e, $01                                        ; $4237: $1e $01
	ld a, $06                                        ; $4239: $3e $06
	call $1667                                       ; $423b: $cd $67 $16
	call SafelyExecuteDataCopies                                       ; $423e: $cd $8b $14
	ld hl, $1f13                                     ; $4241: $21 $13 $1f
	ld e, $01                                        ; $4244: $1e $01
	ld a, $06                                        ; $4246: $3e $06
	call $1667                                       ; $4248: $cd $67 $16
	call SafelyExecuteDataCopies                                       ; $424b: $cd $8b $14
	ld hl, $1fc0                                     ; $424e: $21 $c0 $1f

Call_003_4251:
	ld e, $01                                        ; $4251: $1e $01
	ld a, $14                                        ; $4253: $3e $14
	call $165f                                       ; $4255: $cd $5f $16
	jp SafelyExecuteDataCopies                                         ; $4258: $c3 $8b $14


Call_003_425b:
	ld a, [$c186]                                    ; $425b: $fa $86 $c1
	cp $01                                           ; $425e: $fe $01
	ret nz                                           ; $4260: $c0

	xor a                                            ; $4261: $af
	call Call_003_4267                               ; $4262: $cd $67 $42
	ld a, $01                                        ; $4265: $3e $01

Call_003_4267:
	ld [$c0e8], a                                    ; $4267: $ea $e8 $c0
	call Call_003_42f0                               ; $426a: $cd $f0 $42
	ld e, $a3                                        ; $426d: $1e $a3
	ld hl, $9a20                                     ; $426f: $21 $20 $9a
	call Call_003_436d                               ; $4272: $cd $6d $43
	ld a, $14                                        ; $4275: $3e $14
	call $165f                                       ; $4277: $cd $5f $16
	call SafelyExecuteDataCopies                                       ; $427a: $cd $8b $14
	ld hl, $9960                                     ; $427d: $21 $60 $99
	call Call_003_436d                               ; $4280: $cd $6d $43
	ld de, $989c                                     ; $4283: $11 $9c $98
	call Call_003_42d7                               ; $4286: $cd $d7 $42
	call SafelyExecuteDataCopies                                       ; $4289: $cd $8b $14
	ld hl, $9980                                     ; $428c: $21 $80 $99
	call Call_003_436d                               ; $428f: $cd $6d $43
	ld e, $9d                                        ; $4292: $1e $9d
	ld a, $04                                        ; $4294: $3e $04
	call $1667                                       ; $4296: $cd $67 $16
	call SafelyExecuteDataCopies                                       ; $4299: $cd $8b $14
	ld hl, $9993                                     ; $429c: $21 $93 $99
	call Call_003_436d                               ; $429f: $cd $6d $43
	ld e, $9d                                        ; $42a2: $1e $9d
	ld a, $04                                        ; $42a4: $3e $04
	call $1667                                       ; $42a6: $cd $67 $16
	call SafelyExecuteDataCopies                                       ; $42a9: $cd $8b $14
	ld hl, $9981                                     ; $42ac: $21 $81 $99
	call Call_003_436d                               ; $42af: $cd $6d $43
	ld a, [$d819]                                    ; $42b2: $fa $19 $d8
	add $a0                                          ; $42b5: $c6 $a0
	ld e, a                                          ; $42b7: $5f
	ld a, $12                                        ; $42b8: $3e $12
	call Call_003_435c                               ; $42ba: $cd $5c $43
	call Call_003_435c                               ; $42bd: $cd $5c $43
	ld a, [$d81a]                                    ; $42c0: $fa $1a $d8
	add $a0                                          ; $42c3: $c6 $a0
	ld e, a                                          ; $42c5: $5f
	ld a, $12                                        ; $42c6: $3e $12
	call Call_003_435c                               ; $42c8: $cd $5c $43
	call Call_003_435c                               ; $42cb: $cd $5c $43
	ld hl, $9a00                                     ; $42ce: $21 $00 $9a
	call Call_003_436d                               ; $42d1: $cd $6d $43
	ld de, $9e9f                                     ; $42d4: $11 $9f $9e

Call_003_42d7:
	push de                                          ; $42d7: $d5
	ld a, $14                                        ; $42d8: $3e $14
	call EnqueueDataCopyType4FullHeader                                       ; $42da: $cd $83 $16
	pop de                                           ; $42dd: $d1
	ld [hl], d                                       ; $42de: $72
	inc hl                                           ; $42df: $23
	ld a, $99                                        ; $42e0: $3e $99
	ld [hl+], a                                      ; $42e2: $22
	inc a                                            ; $42e3: $3c
	ld b, $10                                        ; $42e4: $06 $10

jr_003_42e6:
	ld [hl+], a                                      ; $42e6: $22
	dec b                                            ; $42e7: $05
	jr nz, jr_003_42e6                               ; $42e8: $20 $fc

	inc a                                            ; $42ea: $3c
	ld [hl+], a                                      ; $42eb: $22
	ld [hl], e                                       ; $42ec: $73
	jp SafelyExecuteDataCopies                                         ; $42ed: $c3 $8b $14


Call_003_42f0:
	ld a, [wInitialA]                                    ; $42f0: $fa $00 $c1
	cp $11                                           ; $42f3: $fe $11
	ret nz                                           ; $42f5: $c0

	ld hl, $1a20                                     ; $42f6: $21 $20 $1a
	call Call_003_436d                               ; $42f9: $cd $6d $43
	ld e, $01                                        ; $42fc: $1e $01
	ld a, $14                                        ; $42fe: $3e $14
	call $165f                                       ; $4300: $cd $5f $16
	call SafelyExecuteDataCopies                                       ; $4303: $cd $8b $14
	ld hl, $1960                                     ; $4306: $21 $60 $19
	call Call_003_436d                               ; $4309: $cd $6d $43
	call Call_003_4352                               ; $430c: $cd $52 $43
	call SafelyExecuteDataCopies                                       ; $430f: $cd $8b $14
	ld hl, $1980                                     ; $4312: $21 $80 $19
	call Call_003_436d                               ; $4315: $cd $6d $43
	ld e, $01                                        ; $4318: $1e $01
	ld a, $04                                        ; $431a: $3e $04
	call $1667                                       ; $431c: $cd $67 $16
	call SafelyExecuteDataCopies                                       ; $431f: $cd $8b $14
	ld hl, $1993                                     ; $4322: $21 $93 $19
	call Call_003_436d                               ; $4325: $cd $6d $43
	ld e, $01                                        ; $4328: $1e $01
	ld a, $04                                        ; $432a: $3e $04
	call $1667                                       ; $432c: $cd $67 $16
	call SafelyExecuteDataCopies                                       ; $432f: $cd $8b $14
	ld hl, $1981                                     ; $4332: $21 $81 $19
	call Call_003_436d                               ; $4335: $cd $6d $43
	ld e, $00                                        ; $4338: $1e $00
	ld a, $12                                        ; $433a: $3e $12
	call Call_003_435c                               ; $433c: $cd $5c $43
	call Call_003_435c                               ; $433f: $cd $5c $43
	ld e, $00                                        ; $4342: $1e $00
	ld a, $12                                        ; $4344: $3e $12
	call Call_003_435c                               ; $4346: $cd $5c $43
	call Call_003_435c                               ; $4349: $cd $5c $43
	ld hl, $1a00                                     ; $434c: $21 $00 $1a
	call Call_003_436d                               ; $434f: $cd $6d $43

Call_003_4352:
	ld e, $01                                        ; $4352: $1e $01
	ld a, $14                                        ; $4354: $3e $14
	call $165f                                       ; $4356: $cd $5f $16
	jp SafelyExecuteDataCopies                                         ; $4359: $c3 $8b $14


Call_003_435c:
	push af                                          ; $435c: $f5
	push de                                          ; $435d: $d5
	push hl                                          ; $435e: $e5
	call $165f                                       ; $435f: $cd $5f $16
	call SafelyExecuteDataCopies                                       ; $4362: $cd $8b $14
	pop hl                                           ; $4365: $e1
	ld de, $0020                                     ; $4366: $11 $20 $00
	add hl, de                                       ; $4369: $19
	pop de                                           ; $436a: $d1
	pop af                                           ; $436b: $f1
	ret                                              ; $436c: $c9


Call_003_436d:
	ld a, [$c0e8]                                    ; $436d: $fa $e8 $c0
	and a                                            ; $4370: $a7
	ret z                                            ; $4371: $c8

	set 2, h                                         ; $4372: $cb $d4
	ret                                              ; $4374: $c9


Call_003_4375:
	ld [$c186], a                                    ; $4375: $ea $86 $c1
	ld de, $0003                                     ; $4378: $11 $03 $00
	call Call_003_729f                               ; $437b: $cd $9f $72
	ld a, $70                                        ; $437e: $3e $70
	ld hl, $ff82                                     ; $4380: $21 $82 $ff
	or [hl]                                          ; $4383: $b6
	ld [hl], a                                       ; $4384: $77
	ld a, [$c186]                                    ; $4385: $fa $86 $c1
	cp $00                                           ; $4388: $fe $00
	jr z, jr_003_4398                                ; $438a: $28 $0c

	cp $03                                           ; $438c: $fe $03
	jr z, jr_003_4398                                ; $438e: $28 $08

	res 5, [hl]                                      ; $4390: $cb $ae
	call Call_003_416e                               ; $4392: $cd $6e $41
	call Call_003_425b                               ; $4395: $cd $5b $42

Call_003_4398:
jr_003_4398:
	call Call_003_416e                               ; $4398: $cd $6e $41
	ld a, [$c186]                                    ; $439b: $fa $86 $c1
	cp $00                                           ; $439e: $fe $00
	jr z, jr_003_43b2                                ; $43a0: $28 $10

	ld a, $28                                        ; $43a2: $3e $28
	ld [$d81c], a                                    ; $43a4: $ea $1c $d8
	ld a, $3a                                        ; $43a7: $3e $3a
	ld [$d81d], a                                    ; $43a9: $ea $1d $d8
	ld a, $ac                                        ; $43ac: $3e $ac
	ld [$d81e], a                                    ; $43ae: $ea $1e $d8
	ret                                              ; $43b1: $c9

jr_003_43b2:
	ld a, $9c                                        ; $43b2: $3e $9c
	ld [$d81c], a                                    ; $43b4: $ea $1c $d8
	ld a, $ae                                        ; $43b7: $3e $ae
	ld [$d81d], a                                    ; $43b9: $ea $1d $d8
	ld a, $8a                                        ; $43bc: $3e $8a
	ld [$d81e], a                                    ; $43be: $ea $1e $d8
	ret                                              ; $43c1: $c9


Func_03_43c2:
	ld a, $18                                        ; $43c2: $3e $18

jr_003_43c4:
	ld [$d810], a                                    ; $43c4: $ea $10 $d8
	ld a, [$c187]                                    ; $43c7: $fa $87 $c1
	ld [$c186], a                                    ; $43ca: $ea $86 $c1
	jp Call_003_4000                                 ; $43cd: $c3 $00 $40


Func_03_43d0:
	ld a, $1b                                        ; $43d0: $3e $1b
	jr jr_003_43c4                                   ; $43d2: $18 $f0


Func_03_43d4:
	ld de, $9f02                                     ; $43d4: $11 $02 $9f
	ld hl, $9f22                                     ; $43d7: $21 $22 $9f
	ld bc, $d819                                     ; $43da: $01 $19 $d8
	ld a, $11                                        ; $43dd: $3e $11
	jr jr_003_4452                                   ; $43df: $18 $71


Func_03_43e1:
	ld de, $9f42                                     ; $43e1: $11 $42 $9f
	ld hl, $9f62                                     ; $43e4: $21 $62 $9f
	ld bc, $d81a                                     ; $43e7: $01 $1a $d8
	ld a, $11                                        ; $43ea: $3e $11
	jr jr_003_4452                                   ; $43ec: $18 $64


Func_03_43ee:
	ld de, $9f01                                     ; $43ee: $11 $01 $9f
	ld hl, $9f21                                     ; $43f1: $21 $21 $9f
	ld bc, $d819                                     ; $43f4: $01 $19 $d8
	jr jr_003_4410                                   ; $43f7: $18 $17


Func_03_43f9:
	ld de, $9f41                                     ; $43f9: $11 $41 $9f
	ld hl, $9f61                                     ; $43fc: $21 $61 $9f
	ld bc, $d81a                                     ; $43ff: $01 $1a $d8
	jr jr_003_4410                                   ; $4402: $18 $0c


Func_03_4404:
	call Call_003_40c1                               ; $4404: $cd $c1 $40
	ld de, $9f81                                     ; $4407: $11 $81 $9f
	ld hl, $9fa1                                     ; $440a: $21 $a1 $9f
	ld bc, $d81b                                     ; $440d: $01 $1b $d8

jr_003_4410:
	push bc                                          ; $4410: $c5
	ld a, [wCurrTextLinePixelIdx]                                    ; $4411: $fa $00 $d8
	add $07                                          ; $4414: $c6 $07
	srl a                                            ; $4416: $cb $3f
	srl a                                            ; $4418: $cb $3f
	srl a                                            ; $441a: $cb $3f
	ld c, a                                          ; $441c: $4f
	ld b, $00                                        ; $441d: $06 $00
	add hl, bc                                       ; $441f: $09
	call wSwapDEandHL                                       ; $4420: $cd $d4 $ce
	add hl, bc                                       ; $4423: $09
	call wSwapDEandHL                                       ; $4424: $cd $d4 $ce
	ld a, c                                          ; $4427: $79
	cpl                                              ; $4428: $2f
	add $13                                          ; $4429: $c6 $13
	pop bc                                           ; $442b: $c1
	jr jr_003_4452                                   ; $442c: $18 $24


Func_03_442e:
	ld de, $9f01                                     ; $442e: $11 $01 $9f
	ld hl, $9f21                                     ; $4431: $21 $21 $9f
	ld bc, $d819                                     ; $4434: $01 $19 $d8
	jr jr_003_4450                                   ; $4437: $18 $17


Func_03_4439:
	ld de, $9f41                                     ; $4439: $11 $41 $9f
	ld hl, $9f61                                     ; $443c: $21 $61 $9f
	ld bc, $d81a                                     ; $443f: $01 $1a $d8
	jr jr_003_4450                                   ; $4442: $18 $0c


Func_03_4444:
	call Call_003_40c1                               ; $4444: $cd $c1 $40

Func_03_4447:
	ld de, $9f81                                     ; $4447: $11 $81 $9f
	ld hl, $9fa1                                     ; $444a: $21 $a1 $9f
	ld bc, $d81b                                     ; $444d: $01 $1b $d8

jr_003_4450:
	ld a, $12                                        ; $4450: $3e $12

jr_003_4452:
	push af                                          ; $4452: $f5
	ld a, [$c10a]                                    ; $4453: $fa $0a $c1
	and a                                            ; $4456: $a7
	ld a, $00                                        ; $4457: $3e $00
	jr nz, jr_003_445e                               ; $4459: $20 $03

	ld a, [bc]                                       ; $445b: $0a
	add $a0                                          ; $445c: $c6 $a0

jr_003_445e:
	ld b, a                                          ; $445e: $47
	pop af                                           ; $445f: $f1
	ld c, a                                          ; $4460: $4f
	push hl                                          ; $4461: $e5
	push bc                                          ; $4462: $c5
	call Call_003_446c                               ; $4463: $cd $6c $44
	ld hl, $d810                                     ; $4466: $21 $10 $d8
	dec [hl]                                         ; $4469: $35
	pop bc                                           ; $446a: $c1
	pop de                                           ; $446b: $d1

Call_003_446c:
	ld a, b                                          ; $446c: $78
	ld b, $00                                        ; $446d: $06 $00
	ld hl, $d814                                     ; $446f: $21 $14 $d8
	ld [hl], e                                       ; $4472: $73
	inc hl                                           ; $4473: $23
	ld [hl], d                                       ; $4474: $72
	inc hl                                           ; $4475: $23
	ld [hl], c                                       ; $4476: $71
	inc hl                                           ; $4477: $23
	ld [hl], b                                       ; $4478: $70
	ld e, a                                          ; $4479: $5f
	push de                                          ; $447a: $d5
	call Call_003_45b0                               ; $447b: $cd $b0 $45
	pop de                                           ; $447e: $d1
	call $165f                                       ; $447f: $cd $5f $16
	jp SafelyExecuteDataCopies                                         ; $4482: $c3 $8b $14


Func_03_4485:
	ld de, $9f02                                     ; $4485: $11 $02 $9f
	ld hl, $9f22                                     ; $4488: $21 $22 $9f
	ld a, [$d81c]                                    ; $448b: $fa $1c $d8
	sla a                                            ; $448e: $cb $27
	ld b, a                                          ; $4490: $47
	ld c, $11                                        ; $4491: $0e $11
	jr jr_003_44d2                                   ; $4493: $18 $3d


Func_03_4495:
	ld de, $9f42                                     ; $4495: $11 $42 $9f
	ld hl, $9f62                                     ; $4498: $21 $62 $9f
	ld a, [$d81d]                                    ; $449b: $fa $1d $d8
	sla a                                            ; $449e: $cb $27
	ld b, a                                          ; $44a0: $47
	ld c, $11                                        ; $44a1: $0e $11
	jr jr_003_44d2                                   ; $44a3: $18 $2d


Func_03_44a5:
	ld de, $9f01                                     ; $44a5: $11 $01 $9f
	ld hl, $9f21                                     ; $44a8: $21 $21 $9f
	ld a, [$d81c]                                    ; $44ab: $fa $1c $d8
	sla a                                            ; $44ae: $cb $27
	ld b, a                                          ; $44b0: $47
	jr jr_003_44d0                                   ; $44b1: $18 $1d


Func_03_44b3:
	ld de, $9f41                                     ; $44b3: $11 $41 $9f
	ld hl, $9f61                                     ; $44b6: $21 $61 $9f
	ld a, [$d81d]                                    ; $44b9: $fa $1d $d8
	sla a                                            ; $44bc: $cb $27
	ld b, a                                          ; $44be: $47
	jr jr_003_44d0                                   ; $44bf: $18 $0f


Func_03_44c1:
	call Call_003_40c1                               ; $44c1: $cd $c1 $40
	ld de, $9f81                                     ; $44c4: $11 $81 $9f
	ld hl, $9fa1                                     ; $44c7: $21 $a1 $9f
	ld a, [$d81e]                                    ; $44ca: $fa $1e $d8
	sla a                                            ; $44cd: $cb $27
	ld b, a                                          ; $44cf: $47

jr_003_44d0:
	ld c, $12                                        ; $44d0: $0e $12

jr_003_44d2:
	push hl                                          ; $44d2: $e5
	call Call_003_44db                               ; $44d3: $cd $db $44
	ld hl, $d810                                     ; $44d6: $21 $10 $d8
	dec [hl]                                         ; $44d9: $35
	pop de                                           ; $44da: $d1

Call_003_44db:
	push bc                                          ; $44db: $c5
	ld a, b                                          ; $44dc: $78
	ld b, $00                                        ; $44dd: $06 $00
	ld hl, $d814                                     ; $44df: $21 $14 $d8
	ld [hl], e                                       ; $44e2: $73
	inc hl                                           ; $44e3: $23
	ld [hl], d                                       ; $44e4: $72
	inc hl                                           ; $44e5: $23
	ld [hl], c                                       ; $44e6: $71
	inc hl                                           ; $44e7: $23
	ld [hl], b                                       ; $44e8: $70
	ld b, a                                          ; $44e9: $47
	push bc                                          ; $44ea: $c5
	call Call_003_45b0                               ; $44eb: $cd $b0 $45
	call EnqueueDataCopyType4FullHeader                                       ; $44ee: $cd $83 $16
	pop bc                                           ; $44f1: $c1
	ld a, b                                          ; $44f2: $78

jr_003_44f3:
	ld [hl+], a                                      ; $44f3: $22
	inc a                                            ; $44f4: $3c
	inc a                                            ; $44f5: $3c
	dec c                                            ; $44f6: $0d
	jr nz, jr_003_44f3                               ; $44f7: $20 $fa

	ld [hl], c                                       ; $44f9: $71
	call SafelyExecuteDataCopies                                       ; $44fa: $cd $8b $14
	pop bc                                           ; $44fd: $c1
	inc b                                            ; $44fe: $04
	ret                                              ; $44ff: $c9


Func_03_4500:
	ld de, $8a00                                     ; $4500: $11 $00 $8a
	xor a                                            ; $4503: $af
	jr jr_003_4519                                   ; $4504: $18 $13


Func_03_4506:
	ld de, $8a10                                     ; $4506: $11 $10 $8a
	ld a, $01                                        ; $4509: $3e $01
	jr jr_003_4519                                   ; $450b: $18 $0c


Func_03_450d:
	ld de, $8a20                                     ; $450d: $11 $20 $8a
	ld a, $02                                        ; $4510: $3e $02
	jr jr_003_4519                                   ; $4512: $18 $05


Func_03_4514:
	ld de, $8a30                                     ; $4514: $11 $30 $8a
	ld a, $03                                        ; $4517: $3e $03

jr_003_4519:
	ld bc, $0010                                     ; $4519: $01 $10 $00
	ld [$d7f9], a                                    ; $451c: $ea $f9 $d7
	jr jr_003_4574                                   ; $451f: $18 $53


Func_03_4521:
	push hl                                          ; $4521: $e5
	ld hl, $d81c                                     ; $4522: $21 $1c $d8
	call HLequTextTileDataDestAddr                                       ; $4525: $cd $9f $40
	call wSwapDEandHL                                       ; $4528: $cd $d4 $ce
	pop hl                                           ; $452b: $e1
	jr jr_003_4539                                   ; $452c: $18 $0b


Func_03_452e:
	push hl                                          ; $452e: $e5
	ld hl, $d81d                                     ; $452f: $21 $1d $d8
	call HLequTextTileDataDestAddr                                       ; $4532: $cd $9f $40
	call wSwapDEandHL                                       ; $4535: $cd $d4 $ce
	pop hl                                           ; $4538: $e1

jr_003_4539:
	ld bc, $0220                                     ; $4539: $01 $20 $02
	jr jr_003_4574                                   ; $453c: $18 $36


Func_03_453e:
	ld a, [$c186]                                    ; $453e: $fa $86 $c1
	ld d, a                                          ; $4541: $57
	ld a, [$c187]                                    ; $4542: $fa $87 $c1
	cp d                                             ; $4545: $ba
	call nz, Call_003_4375                           ; $4546: $c4 $75 $43
	push hl                                          ; $4549: $e5
	ld hl, $d81c                                     ; $454a: $21 $1c $d8
	call HLequTextTileDataDestAddr                                       ; $454d: $cd $9f $40
	call wSwapDEandHL                                       ; $4550: $cd $d4 $ce
	pop hl                                           ; $4553: $e1
	jr jr_003_4571                                   ; $4554: $18 $1b


Func_03_4556:
	push hl                                          ; $4556: $e5
	ld hl, $d81d                                     ; $4557: $21 $1d $d8
	call HLequTextTileDataDestAddr                                       ; $455a: $cd $9f $40
	call wSwapDEandHL                                       ; $455d: $cd $d4 $ce
	pop hl                                           ; $4560: $e1
	jr jr_003_4571                                   ; $4561: $18 $0e


Func_03_4563:
	call Call_003_40ba                               ; $4563: $cd $ba $40
	push hl                                          ; $4566: $e5
	ld hl, $d81e                                     ; $4567: $21 $1e $d8
	call HLequTextTileDataDestAddr                                       ; $456a: $cd $9f $40
	call wSwapDEandHL                                       ; $456d: $cd $d4 $ce
	pop hl                                           ; $4570: $e1

jr_003_4571:
	ld bc, $0240                                     ; $4571: $01 $40 $02

jr_003_4574:
	ld hl, $d814                                     ; $4574: $21 $14 $d8
	ld [hl], e                                       ; $4577: $73
	inc hl                                           ; $4578: $23
	ld [hl], d                                       ; $4579: $72
	inc hl                                           ; $457a: $23
	ld [hl], c                                       ; $457b: $71
	inc hl                                           ; $457c: $23
	ld [hl], b                                       ; $457d: $70
	call Call_003_40cd                               ; $457e: $cd $cd $40

jr_003_4581:
	call SafelyExecuteDataCopies                                       ; $4581: $cd $8b $14

Func_03_4584:
	call Call_003_45b0                               ; $4584: $cd $b0 $45
	push af                                          ; $4587: $f5
	push af                                          ; $4588: $f5
	call EnqueueDataCopyType4FullHeader                                       ; $4589: $cd $83 $16
	pop af                                           ; $458c: $f1
	srl a                                            ; $458d: $cb $3f
	ld c, a                                          ; $458f: $4f
	ld a, [$d7f9]                                    ; $4590: $fa $f9 $d7
	call Call_003_45a1                               ; $4593: $cd $a1 $45
	ld a, e                                          ; $4596: $7b

jr_003_4597:
	ld [hl+], a                                      ; $4597: $22
	ld [hl], d                                       ; $4598: $72
	inc hl                                           ; $4599: $23
	dec c                                            ; $459a: $0d
	jr nz, jr_003_4597                               ; $459b: $20 $fa

	pop af                                           ; $459d: $f1
	jr nz, jr_003_4581                               ; $459e: $20 $e1

	ret                                              ; $45a0: $c9


Call_003_45a1:
	and $03                                          ; $45a1: $e6 $03
	ld de, $0000                                     ; $45a3: $11 $00 $00
	ret z                                            ; $45a6: $c8

	dec e                                            ; $45a7: $1d
	dec a                                            ; $45a8: $3d
	ret z                                            ; $45a9: $c8

	inc e                                            ; $45aa: $1c
	dec d                                            ; $45ab: $15
	dec a                                            ; $45ac: $3d
	ret z                                            ; $45ad: $c8

	dec e                                            ; $45ae: $1d
	ret                                              ; $45af: $c9


Call_003_45b0:
	ld hl, $d816                                     ; $45b0: $21 $16 $d8
	ld a, [hl+]                                      ; $45b3: $2a
	ld d, [hl]                                       ; $45b4: $56
	ld e, a                                          ; $45b5: $5f
	ld c, a                                          ; $45b6: $4f
	ld hl, $ffe0                                     ; $45b7: $21 $e0 $ff
	add hl, de                                       ; $45ba: $19
	ld de, $0020                                     ; $45bb: $11 $20 $00
	jr nc, jr_003_45c4                               ; $45be: $30 $04

	ld a, h                                          ; $45c0: $7c
	or l                                             ; $45c1: $b5
	jr nz, jr_003_45ca                               ; $45c2: $20 $06

jr_003_45c4:
	ld e, c                                          ; $45c4: $59
	call Call_003_40cd                               ; $45c5: $cd $cd $40
	ld l, d                                          ; $45c8: $6a
	ld h, l                                          ; $45c9: $65

jr_003_45ca:
	ld a, l                                          ; $45ca: $7d
	ld [$d816], a                                    ; $45cb: $ea $16 $d8
	ld a, h                                          ; $45ce: $7c
	ld [$d817], a                                    ; $45cf: $ea $17 $d8
	or l                                             ; $45d2: $b5
	push af                                          ; $45d3: $f5
	ld hl, $d814                                     ; $45d4: $21 $14 $d8
	ld a, [hl+]                                      ; $45d7: $2a
	ld h, [hl]                                       ; $45d8: $66
	ld l, a                                          ; $45d9: $6f
	push hl                                          ; $45da: $e5
	add hl, de                                       ; $45db: $19
	ld a, l                                          ; $45dc: $7d
	ld [$d814], a                                    ; $45dd: $ea $14 $d8
	ld a, h                                          ; $45e0: $7c
	ld [$d815], a                                    ; $45e1: $ea $15 $d8
	pop hl                                           ; $45e4: $e1
	pop af                                           ; $45e5: $f1
	ld a, e                                          ; $45e6: $7b
	ret                                              ; $45e7: $c9


	push hl                                          ; $45e8: $e5
	ld hl, $d81e                                     ; $45e9: $21 $1e $d8
	call HLequTextTileDataDestAddr                                       ; $45ec: $cd $9f $40
	call wSwapDEandHL                                       ; $45ef: $cd $d4 $ce
	pop hl                                           ; $45f2: $e1
	ld bc, $d840                                     ; $45f3: $01 $40 $d8
	jr jr_003_4606                                   ; $45f6: $18 $0e

	ld de, $d840                                     ; $45f8: $11 $40 $d8
	push hl                                          ; $45fb: $e5
	ld hl, $d81e                                     ; $45fc: $21 $1e $d8
	call HLequTextTileDataDestAddr                                       ; $45ff: $cd $9f $40
	call wSwapBCandHL                                       ; $4602: $cd $d9 $ce
	pop hl                                           ; $4605: $e1

jr_003_4606:
	ld hl, $02c0                                     ; $4606: $21 $c0 $02
	jp Jump_003_4632                                 ; $4609: $c3 $32 $46


Func_03_460c:
	ld a, $01                                        ; $460c: $3e $01
	ld [$d818], a                                    ; $460e: $ea $18 $d8
	push hl                                          ; $4611: $e5
	ld hl, $d81e                                     ; $4612: $21 $1e $d8
	call HLequTextTileDataDestAddr                                       ; $4615: $cd $9f $40
	call wSwapDEandHL                                       ; $4618: $cd $d4 $ce
	pop hl                                           ; $461b: $e1
	ld bc, $d840                                     ; $461c: $01 $40 $d8
	jr jr_003_462f                                   ; $461f: $18 $0e


Func_03_4621:
	ld de, $d840                                     ; $4621: $11 $40 $d8
	push hl                                          ; $4624: $e5
	ld hl, $d81e                                     ; $4625: $21 $1e $d8
	call HLequTextTileDataDestAddr                                       ; $4628: $cd $9f $40
	call wSwapBCandHL                                       ; $462b: $cd $d9 $ce
	pop hl                                           ; $462e: $e1

jr_003_462f:
	ld hl, $0240                                     ; $462f: $21 $40 $02

Jump_003_4632:
	push hl                                          ; $4632: $e5
	ld hl, $d812                                     ; $4633: $21 $12 $d8
	ld [hl], e                                       ; $4636: $73
	inc hl                                           ; $4637: $23
	ld [hl], d                                       ; $4638: $72
	inc hl                                           ; $4639: $23
	ld [hl], c                                       ; $463a: $71
	inc hl                                           ; $463b: $23
	ld [hl], b                                       ; $463c: $70
	inc hl                                           ; $463d: $23
	pop bc                                           ; $463e: $c1
	ld [hl], c                                       ; $463f: $71
	inc hl                                           ; $4640: $23
	ld [hl], b                                       ; $4641: $70
	call Call_003_40cd                               ; $4642: $cd $cd $40

Func_03_4645:
jr_003_4645:
	call Call_003_45b0                               ; $4645: $cd $b0 $45
	push af                                          ; $4648: $f5
	push af                                          ; $4649: $f5
	push hl                                          ; $464a: $e5
	ld l, e                                          ; $464b: $6b
	ld h, d                                          ; $464c: $62
	xor a                                            ; $464d: $af
	ld [$c0d0], a                                    ; $464e: $ea $d0 $c0
	ld a, [$d812]                                    ; $4651: $fa $12 $d8
	ld e, a                                          ; $4654: $5f
	add l                                            ; $4655: $85
	ld [$d812], a                                    ; $4656: $ea $12 $d8
	ld a, [$d813]                                    ; $4659: $fa $13 $d8
	ld d, a                                          ; $465c: $57
	adc h                                            ; $465d: $8c
	ld [$d813], a                                    ; $465e: $ea $13 $d8
	pop hl                                           ; $4661: $e1
	pop af                                           ; $4662: $f1
	call $1675                                       ; $4663: $cd $75 $16
	call SafelyExecuteDataCopies                                       ; $4666: $cd $8b $14
	pop af                                           ; $4669: $f1
	jr nz, jr_003_4645                               ; $466a: $20 $d9

	ret                                              ; $466c: $c9


Func_03_466d:
	ld a, $58                                        ; $466d: $3e $58
	jr jr_003_4673                                   ; $466f: $18 $02


Func_03_4671:
	ld a, $48                                        ; $4671: $3e $48

jr_003_4673:
	ld hl, $ff8b                                     ; $4673: $21 $8b $ff
	dec [hl]                                         ; $4676: $35
	dec [hl]                                         ; $4677: $35
	dec [hl]                                         ; $4678: $35
	dec [hl]                                         ; $4679: $35
	cp [hl]                                          ; $467a: $be
	ret c                                            ; $467b: $d8

	ld [hl], a                                       ; $467c: $77
	jp Call_003_40cd                                 ; $467d: $c3 $cd $40


Func_03_4680:
	ld a, $87                                        ; $4680: $3e $87
	jr jr_003_4686                                   ; $4682: $18 $02


Func_03_4684:
	ld a, $57                                        ; $4684: $3e $57

jr_003_4686:
	ld hl, $ff8b                                     ; $4686: $21 $8b $ff
	inc [hl]                                         ; $4689: $34
	inc [hl]                                         ; $468a: $34
	inc [hl]                                         ; $468b: $34
	inc [hl]                                         ; $468c: $34
	cp [hl]                                          ; $468d: $be
	ret nc                                           ; $468e: $d0

	inc a                                            ; $468f: $3c
	ld [hl], a                                       ; $4690: $77
	xor a                                            ; $4691: $af
	ld [$d818], a                                    ; $4692: $ea $18 $d8
	jp Call_003_40cd                                 ; $4695: $c3 $cd $40


Func_03_4698::
	ld [$c187], a                                    ; $4698: $ea $87 $c1
	push af                                          ; $469b: $f5
	call Call_003_41b8                               ; $469c: $cd $b8 $41
	pop de                                           ; $469f: $d1
	ld a, [$c186]                                    ; $46a0: $fa $86 $c1
	cp d                                             ; $46a3: $ba
	ret z                                            ; $46a4: $c8

	ld a, $04                                        ; $46a5: $3e $04
	jp Jump_003_41b5                                 ; $46a7: $c3 $b5 $41


	ld [$c186], a                                    ; $46aa: $ea $86 $c1
	xor a                                            ; $46ad: $af
	ld [$d810], a                                    ; $46ae: $ea $10 $d8
	ld a, $01                                        ; $46b1: $3e $01
	call Call_003_41b0                               ; $46b3: $cd $b0 $41
	ld de, $0003                                     ; $46b6: $11 $03 $00
	jp Call_003_729f                                 ; $46b9: $c3 $9f $72


	rst $38                                          ; $46bc: $ff
	ld a, a                                          ; $46bd: $7f
	ccf                                              ; $46be: $3f
	rra                                              ; $46bf: $1f
	rrca                                             ; $46c0: $0f
	rlca                                             ; $46c1: $07
	inc bc                                           ; $46c2: $03
	db $01, $00


Func_03_46c5::
	ld a, l                                     ; $46c5: $7d
	ld [$d7ff], a                                    ; $46c6: $ea $ff $d7

	ld a, h                                          ; $46c9: $7c
	ld [wCurrTextLinePixelIdx], a                                    ; $46ca: $ea $00 $d8
	and $07                                          ; $46cd: $e6 $07
	ld [wCurrTilePixelIdx], a                                    ; $46cf: $ea $fe $d7

; DE = tile idx for line*8
	ld a, $f8                                        ; $46d2: $3e $f8
	and h                                            ; $46d4: $a4
	ld e, a                                          ; $46d5: $5f
	ld d, $00                                        ; $46d6: $16 $00
	ld h, d                                          ; $46d8: $62
	ld a, l                                          ; $46d9: $7d
	cp $20                                           ; $46da: $fe $20
	push af                                          ; $46dc: $f5
	push de                                          ; $46dd: $d5
	call Call_003_46fa                               ; $46de: $cd $fa $46

;
	ld a, [de]                                       ; $46e1: $1a
	ld [$d7fb], a                                    ; $46e2: $ea $fb $d7
	call wSwapDEandHL                                       ; $46e5: $cd $d4 $ce
	pop hl                                           ; $46e8: $e1
	add hl, hl                                       ; $46e9: $29
	pop af                                           ; $46ea: $f1
	jr c, :+                                ; $46eb: $38 $01
	add hl, hl                                       ; $46ed: $29
:	add hl, de                                       ; $46ee: $19

	ld a, l                                          ; $46ef: $7d
	ld [wCharTilesDataDest], a                                    ; $46f0: $ea $fc $d7
	ld a, h                                          ; $46f3: $7c
	ld [wCharTilesDataDest+1], a                                    ; $46f4: $ea $fd $d7
	jp Jump_003_474b                                 ; $46f7: $c3 $4b $47


Call_003_46fa:
	jr c, .br_4719                                ; $46fa: $38 $1d

	sub $20                                          ; $46fc: $d6 $20
	ld de, $d819                                     ; $46fe: $11 $19 $d8
	ld hl, $d81c                                     ; $4701: $21 $1c $d8
	call HLequTextTileDataDestAddr                                       ; $4704: $cd $9f $40
	ret z                                            ; $4707: $c8

	inc de                                           ; $4708: $13
	dec a                                            ; $4709: $3d
	ld hl, $d81d                                     ; $470a: $21 $1d $d8
	call HLequTextTileDataDestAddr                                       ; $470d: $cd $9f $40
	ret z                                            ; $4710: $c8

	inc de                                           ; $4711: $13
	ld hl, $d81e                                     ; $4712: $21 $1e $d8
	call HLequTextTileDataDestAddr                                       ; $4715: $cd $9f $40
	ret                                              ; $4718: $c9

.br_4719:
	push af                                          ; $4719: $f5
	ld a, [$c186]                                    ; $471a: $fa $86 $c1
	cp $0b                                           ; $471d: $fe $0b
	jr z, .br_4739                                ; $471f: $28 $18

	pop af                                           ; $4721: $f1
	ld hl, $0140                                     ; $4722: $21 $40 $01
	ld de, $8a40                                     ; $4725: $11 $40 $8a
	cp $0b                                           ; $4728: $fe $0b
	jr c, .end_4731                                ; $472a: $38 $05

	sub $0b                                          ; $472c: $d6 $0b
	ld de, $8000                                     ; $472e: $11 $00 $80

.end_4731:
	call AHLequAtimesHL                                       ; $4731: $cd $77 $12
	add hl, de                                       ; $4734: $19
	ld de, $d7f9                                     ; $4735: $11 $f9 $d7
	ret                                              ; $4738: $c9

.br_4739:
	pop af                                           ; $4739: $f1
	ld hl, $00a0                                     ; $473a: $21 $a0 $00
	ld de, $8f40                                     ; $473d: $11 $40 $8f
	cp $0e                                           ; $4740: $fe $0e
	jr c, .end_4731                                ; $4742: $38 $ed

	sub $0e                                          ; $4744: $d6 $0e
	ld de, $8500                                     ; $4746: $11 $00 $85
	jr .end_4731                                   ; $4749: $18 $e6


Jump_003_474b:
	push bc                                          ; $474b: $c5
	push de                                          ; $474c: $d5
	push hl                                          ; $474d: $e5
	ld hl, $d490                                     ; $474e: $21 $90 $d4
	call Call_003_4aed                               ; $4751: $cd $ed $4a
	ld a, [wCurrTextLinePixelIdx]                                    ; $4754: $fa $00 $d8
	and $07                                          ; $4757: $e6 $07
	jr z, .done                                ; $4759: $28 $15

	ld e, a                                          ; $475b: $5f
	ld d, $00                                        ; $475c: $16 $00
	ld hl, $46bc                                     ; $475e: $21 $bc $46
	add hl, de                                       ; $4761: $19
	ld a, [hl]                                       ; $4762: $7e
	cpl                                              ; $4763: $2f
	ld b, a                                          ; $4764: $47
	ld hl, $d490                                     ; $4765: $21 $90 $d4
	ld c, $20                                        ; $4768: $0e $20

.loop_476a:
	ld a, [hl]                                       ; $476a: $7e
	and b                                            ; $476b: $a0
	ld [hl+], a                                      ; $476c: $22
	dec c                                            ; $476d: $0d
	jr nz, .loop_476a                               ; $476e: $20 $fa

.done:
	pop hl                                           ; $4770: $e1
	pop de                                           ; $4771: $d1
	pop bc                                           ; $4772: $c1
	ret                                              ; $4773: $c9


; DE - 1-indexed char idx
; Returns char offset from all char tile data in DE, and char's group ID in A
GetCharTileDataOffsetAndGroup::
; Save curr char idx, then HL-1 = 0-indexed char idx
	ld a, e                                                         ; $4774
	ld [wCurrChar1Idxed], a                                         ; $4775
	ld a, d                                                         ; $4778
	ld [wCurrChar1Idxed+1], a                                       ; $4779
	call wSwapDEandHL                                               ; $477c
	dec hl                                                          ; $477f

; If char idx < $00f9, it is an 8px char
	ld bc, $0000                                                    ; $4780
	ld de, $00f9                                                    ; $4783
	call CpHLtoDE_SetBaseCharSrcOffset                              ; $4786
	ld bc, $080d                                                    ; $4789
	jr c, .returnCharOffsetAndGroupID                               ; $478c

; Char idx is offsetted to start from 0. If new char idx < $0cfe, it is a 12px char
	call wHLminusEquDE                                              ; $478e
	ld bc, $f9*$0d                                                  ; $4791
	ld de, $0cfe                                                    ; $4794
	call CpHLtoDE_SetBaseCharSrcOffset                              ; $4797
	ld bc, $0c12                                                    ; $479a
	jr c, .returnCharOffsetAndGroupID                               ; $479d

; Char idx = orig 0-idx - $0df7. It will draw a 14px char
	call wHLminusEquDE                                              ; $479f
	ld bc, $f9*$0d + $cfe*$12                                       ; $47a2
	call SetBaseCharSrcOffset                                       ; $47a5
	ld bc, $0e18                                                    ; $47a8

; B - char pixel width
; C - byte length of chars in group
; HL - char idx in group
.returnCharOffsetAndGroupID:
; HL *= C to get that char's src offset in group
	ld a, c                                                         ; $47ab
	call AHLequAtimesHL                                             ; $47ac

; DE = the char's src offset from very 1st char in rom
	ld a, [wBaseCharSrcOffset]                                      ; $47af
	add l                                                           ; $47b2
	ld e, a                                                         ; $47b3
	ld a, [wBaseCharSrcOffset+1]                                    ; $47b4
	adc h                                                           ; $47b7
	ld d, a                                                         ; $47b8

; Return char pixel width in A
	ld a, b                                                         ; $47b9
	ret                                                             ; $47ba


; BC - base offset
CpHLtoDE_SetBaseCharSrcOffset:
	call wCpHLtoDE                                                  ; $47bb

; BC - base offset
SetBaseCharSrcOffset:
	ld a, c                                                         ; $47be
	ld [wBaseCharSrcOffset], a                                      ; $47bf
	ld a, b                                                         ; $47c2
	ld [wBaseCharSrcOffset+1], a                                    ; $47c3
	ret                                                             ; $47c6


; A - char pixel width
; DE - char src offset from all char tile data
; Returns carry if char was displayed
Func_03_47c7::
; Save char pixel width in B
	ld b, a                                          ; $47c7: $47

; C to contain max pixel width for text scenario
	ld c, $a1                                        ; $47c8: $0e $a1
	ld a, [$d7ff]                                    ; $47ca: $fa $ff $d7
	sub $20                                          ; $47cd: $d6 $20
	jr c, .afterTextboxWidth                                ; $47cf: $38 $11

	ld c, $91                                        ; $47d1: $0e $91
	dec a                                            ; $47d3: $3d
	ld hl, $d818                                     ; $47d4: $21 $18 $d8
	cp [hl]                                          ; $47d7: $be
	jr nz, .afterTextboxWidth                               ; $47d8: $20 $08

	ld a, [$d80d]                                    ; $47da: $fa $0d $d8
	and a                                            ; $47dd: $a7
	jr nz, .afterTextboxWidth                               ; $47de: $20 $02

	ld c, $89                                        ; $47e0: $0e $89

.afterTextboxWidth:
; Return if we exceed the textbox width, otherwise stores the new pixel offset
	ld a, [wCurrTextLinePixelIdx]                                    ; $47e2: $fa $00 $d8
	add b                                            ; $47e5: $80
	cp c                                             ; $47e6: $b9
	ret nc                                           ; $47e7: $d0

	ld [wCurrTextLinePixelIdx], a                                    ; $47e8: $ea $00 $d8

;
	ld a, b                                          ; $47eb: $78
	push af                                          ; $47ec: $f5
	push af                                          ; $47ed: $f5
	call CopyCharIntoTileDataBufferGivenRelativeSrcOffset                               ; $47ee: $cd $07 $48
	pop af                                           ; $47f1: $f1

;
	ld de, wCharTileDataBuffer                                     ; $47f2: $11 $b0 $d4
	call Call_003_48f0                               ; $47f5: $cd $f0 $48
	call Call_003_499c                               ; $47f8: $cd $9c $49
	call Call_003_4a00                               ; $47fb: $cd $00 $4a
	call Call_003_4a15                               ; $47fe: $cd $15 $4a
	pop af                                           ; $4801: $f1
	call Call_003_4826                               ; $4802: $cd $26 $48
	scf                                              ; $4805: $37
	ret                                              ; $4806: $c9


; A - char pixel width
; DE - char offset from start of tile data
CopyCharIntoTileDataBufferGivenRelativeSrcOffset:
; Rom bank is preserved for FarCopyCharIntoTileDataBuffer to restore to.
; Char pixel width is preserved in B for FarCopyCharIntoTileDataBuffer to use as its param
	ld b, a                                                         ; $4807
	ld a, [wRomBank]                                                ; $4808
	push af                                                         ; $480b
	push bc                                                         ; $480c

; Unnecessary preserving of HL as it's trashed in CopyCharIntoTileDataBuffer
	push hl                                                         ; $480d

; DE += tile data offset in bank
	ld a, e                                                         ; $480e
	add LOW(CharTileData-$4000)                                     ; $480f
	ld e, a                                                         ; $4811
	ld a, d                                                         ; $4812
	adc HIGH(CharTileData-$4000)                                    ; $4813
	ld d, a                                                         ; $4815

; H = D's highest 2 bits
	push af                                                         ; $4816
	and $c0                                                         ; $4817
	ld h, a                                                         ; $4819
	pop af                                                          ; $481a

; A += DE's carry + <start bank/4), its << 2, with D's highest 2 bits in A's lowest 2
; ie DE is a 6-bit src addr (max $3fff), starting from $5bee (bit 6 set later),
;    and A = the rom bank src from $74
	ld a, $00                                                       ; $481b
	adc BANK(CharTileData)/4                                        ; $481d
	or h                                                            ; $481f
	rlca                                                            ; $4820
	rlca                                                            ; $4821

; Finally copy char from src into buffer
	pop hl                                                          ; $4822
	jp FarCopyCharIntoTileDataBuffer                                ; $4823


Call_003_4826:
	call Call_003_483b                               ; $4826: $cd $3b $48
	ld a, [wCurrTilePixelIdx]                                    ; $4829: $fa $fe $d7
	and a                                            ; $482c: $a7
	ret z                                            ; $482d: $c8

	ld a, [$c0d5]                                    ; $482e: $fa $d5 $c0
	ld [wCharTilesDataDest], a                                    ; $4831: $ea $fc $d7
	ld a, [$c0d6]                                    ; $4834: $fa $d6 $c0
	ld [wCharTilesDataDest+1], a                                    ; $4837: $ea $fd $d7
	ret                                              ; $483a: $c9


Call_003_483b:
	ld de, $d430                                     ; $483b: $11 $30 $d4
	ld a, [$d7ff]                                    ; $483e: $fa $ff $d7
	cp $20                                           ; $4841: $fe $20
	jr c, Func_03_4887                                ; $4843: $38 $42

	ld a, [$c0d7]                                    ; $4845: $fa $d7 $c0
	call Call_003_4853                               ; $4848: $cd $53 $48
	cp $09                                           ; $484b: $fe $09
	call nc, Call_003_4853                           ; $484d: $d4 $53 $48
	cp $11                                           ; $4850: $fe $11
	ret c                                            ; $4852: $d8

Call_003_4853:
	call EnqueueCharDataCopy                               ; $4853: $cd $5e $48
	push af                                          ; $4856: $f5
	push de                                          ; $4857: $d5
	call SafelyExecuteDataCopies                                       ; $4858: $cd $8b $14
	pop de                                           ; $485b: $d1
	pop af                                           ; $485c: $f1
	ret                                              ; $485d: $c9


; DE - src addr of $20 bytes
; Returns DE pointing after the $20 byte src
EnqueueCharDataCopy:
	push af                                                         ; $485e

; HL = target vram dest addr. Save that target, and next vram dest addr
	ld a, [wCharTilesDataDest]                                    ; $485f: $fa $fc $d7
	ld [$c0d5], a                                    ; $4862: $ea $d5 $c0
	ld l, a                                          ; $4865: $6f
	add LOW($20)                                          ; $4866: $c6 $20
	ld [wCharTilesDataDest], a                                    ; $4868: $ea $fc $d7

	ld a, [wCharTilesDataDest+1]                                    ; $486b: $fa $fd $d7
	ld [$c0d6], a                                    ; $486e: $ea $d6 $c0
	ld h, a                                          ; $4871: $67
	adc HIGH($20)                                          ; $4872: $ce $00
	ld [wCharTilesDataDest+1], a                                    ; $4874: $ea $fd $d7

; Enqueue data copy type 4 with $20 bytes, srced at DE in ram, dest in above vram dest
	push de                                                         ; $4877
	ld a, $20                                                       ; $4878
	call EnqueueDataCopyType4FullHeader                             ; $487a

; DE is dest addr for data bytes, pop HL (src), and copy data bytes over
	ld e, l                                                         ; $487d
	ld d, h                                                         ; $487e
	pop hl                                                          ; $487f
	call wMemCopies+3*(NUM_WRAM_MEM_COPIES-$20)                     ; $4880

; DE points to after the $20 byte src
	ld e, l                                                         ; $4883
	ld d, h                                                         ; $4884

	pop af                                                          ; $4885
	ret                                                             ; $4886


Func_03_4887:
	ld a, [$c0d7]                                    ; $4887: $fa $d7 $c0
	call Call_003_4895                               ; $488a: $cd $95 $48
	cp $09                                           ; $488d: $fe $09
	call nc, Call_003_4895                           ; $488f: $d4 $95 $48
	cp $11                                           ; $4892: $fe $11
	ret c                                            ; $4894: $d8

Call_003_4895:
	push af                                          ; $4895: $f5
	ld a, [wCharTilesDataDest]                                    ; $4896: $fa $fc $d7
	ld [$c0d5], a                                    ; $4899: $ea $d5 $c0
	ld l, a                                          ; $489c: $6f
	add $10                                          ; $489d: $c6 $10
	ld [wCharTilesDataDest], a                                    ; $489f: $ea $fc $d7
	ld a, [wCharTilesDataDest+1]                                    ; $48a2: $fa $fd $d7
	ld [$c0d6], a                                    ; $48a5: $ea $d6 $c0
	ld h, a                                          ; $48a8: $67
	adc $00                                          ; $48a9: $ce $00
	cp $98                                           ; $48ab: $fe $98
	jr c, :+                                ; $48ad: $38 $02
	sub $18                                          ; $48af: $d6 $18
:	ld [wCharTilesDataDest+1], a                                    ; $48b1: $ea $fd $d7
	push hl                                          ; $48b4: $e5
	call Call_003_48dc                               ; $48b5: $cd $dc $48
	pop hl                                           ; $48b8: $e1
	push de                                          ; $48b9: $d5
	ld de, $0140                                     ; $48ba: $11 $40 $01
	ld a, [$c186]                                    ; $48bd: $fa $86 $c1
	cp $0b                                           ; $48c0: $fe $0b
	jr nz, jr_003_48d1                               ; $48c2: $20 $0d

	ld de, $00a0                                     ; $48c4: $11 $a0 $00
	ld a, [$d7ff]                                    ; $48c7: $fa $ff $d7
	cp $0d                                           ; $48ca: $fe $0d
	jr nz, jr_003_48d1                               ; $48cc: $20 $03

	ld de, $eda0                                     ; $48ce: $11 $a0 $ed

jr_003_48d1:
	add hl, de                                       ; $48d1: $19
	ld a, h                                          ; $48d2: $7c
	cp $98                                           ; $48d3: $fe $98
	jr c, :+                                ; $48d5: $38 $02
	sub $18                                          ; $48d7: $d6 $18
:	ld h, a                                          ; $48d9: $67
	pop de                                           ; $48da: $d1
	pop af                                           ; $48db: $f1

Call_003_48dc:
	push af                                          ; $48dc: $f5
	ld a, $10                                        ; $48dd: $3e $10
	push de                                          ; $48df: $d5
	call EnqueueDataCopyType4FullHeader                                       ; $48e0: $cd $83 $16
	ld e, l                                          ; $48e3: $5d
	ld d, h                                          ; $48e4: $54
	pop hl                                           ; $48e5: $e1
	call $ccb0                                       ; $48e6: $cd $b0 $cc
	push hl                                          ; $48e9: $e5
	call SafelyExecuteDataCopies                                       ; $48ea: $cd $8b $14
	pop de                                           ; $48ed: $d1
	pop af                                           ; $48ee: $f1
	ret                                              ; $48ef: $c9


Call_003_48f0:
	push af                                          ; $48f0: $f5
	push de                                          ; $48f1: $d5
	call Call_003_4984                               ; $48f2: $cd $84 $49
	call Call_003_490f                               ; $48f5: $cd $0f $49
	pop hl                                           ; $48f8: $e1
	pop af                                           ; $48f9: $f1
	cp $08                                           ; $48fa: $fe $08
	ret c                                            ; $48fc: $d8

	ld de, $000e                                     ; $48fd: $11 $0e $00
	add hl, de                                       ; $4900: $19
	ld e, l                                          ; $4901: $5d
	ld d, h                                          ; $4902: $54
	ld a, [wCurrTilePixelIdx]                                    ; $4903: $fa $fe $d7
	and a                                            ; $4906: $a7
	ld hl, $d450                                     ; $4907: $21 $50 $d4
	jr z, Call_003_490f                                ; $490a: $28 $03

	ld hl, $d470                                     ; $490c: $21 $70 $d4

Call_003_490f:
; These 2 bytes low 2 bits determine method of setting/copying char bitplanes
	ld a, [$d7fa]                                    ; $490f: $fa $fa $d7
	and $03                                          ; $4912: $e6 $03
	ld b, a                                          ; $4914: $47

	ld a, [$d7f9]                                    ; $4915: $fa $f9 $d7
	and $03                                          ; $4918: $e6 $03
	ld c, a                                          ; $491a: $4f

;
	cp b                                             ; $491b: $b8
	jr nz, SetOrCopyCharTileData                               ; $491c: $20 $14

; C -
; HL -
Call_003_491e:
	xor a                                            ; $491e: $af
	srl c                                            ; $491f: $cb $39
	jr nc, :+                               ; $4921: $30 $01
	dec a                                            ; $4923: $3d
:	ld [hl+], a                                      ; $4924: $22
	xor a                                            ; $4925: $af
	srl c                                            ; $4926: $cb $39
	jr nc, :+                               ; $4928: $30 $01
	dec a                                            ; $492a: $3d
:	push hl                                          ; $492b: $e5
	ld [hl-], a                                      ; $492c: $32
	pop de                                           ; $492d: $d1
	inc de                                           ; $492e: $13
	jp wMemCopies+3*(NUM_WRAM_MEM_COPIES-$1f)                                         ; $492f: $c3 $83 $cc


; BC - both regs' bit 0s determines method of setting/copying low bitplane
;    - and their bit 1s determine the method for the high bitplane
; DE - src addr if copying
; HL - dest addr
SetOrCopyCharTileData:
; As DE is preserved, the same data enters both bitplanes
	push de                                                         ; $4932
	push hl                                                         ; $4933
	call SetOrCopyCharBitplane                                      ; $4934
	pop hl                                                          ; $4937
	pop de                                                          ; $4938

; Dest addr+1 to do high bitplane
	inc l                                                           ; $4939

; BC - both regs' bit 0s determines method of setting/copying
; DE - src addr if copying
; HL - dest addr
SetOrCopyCharBitplane:
; Bit 1 of A = bit 0 of B, bit 0 of A = bit 0 of C
	xor a                                                           ; $493a
	srl b                                                           ; $493b
	rl a                                                            ; $493d
	srl c                                                           ; $493f
	rl a                                                            ; $4941

; Preserve next bits of B&C, then jump based on if A = 0 to 3
; 0 (B=0, C=0) - set 0 against entire bitplane
	push bc                                                         ; $4943
	jr z, .setCharBitplane                                          ; $4944

; 1 (B=0, C=1) - copy cpl bytes
	dec a                                                           ; $4946
	jr z, .copyCplCharBitplane                                      ; $4947

; 2 (B=1, C=0) - copy normal bytes
	dec a                                                           ; $4949
	jr z, .copyNormalCharBitplane                                   ; $494a

; 3 (B=1, C=1) - set $ff against entire bitplane
	dec a                                                           ; $494c
	cpl                                                             ; $494d

.setCharBitplane:
; Set A (0) against HL $10 times, 2 bytes apart
	ld de, $0002                                                    ; $494e
	pop bc                                                          ; $4951
	jp wVertSets+2*(NUM_WRAM_VERT_SETS-$10)+1                       ; $4952

.copyNormalCharBitplane:
; Copy DE to HL $0e times, 2 bytes apart
	ld bc, $0002                                                    ; $4955
	call wVertCopies+4*(NUM_WRAM_VERT_COPIES-$0e)                   ; $4958

; HL points to after last row
	add hl, bc                                                      ; $495b
	pop bc                                                          ; $495c

; if bit 7 set set on ???, last 2 bytes for char = $ff, else $00
	ld a, [$d7fa]                                    ; $495d: $fa $fa $d7
	bit 7, a                                         ; $4960: $cb $7f
	ld a, $00                                        ; $4962: $3e $00
	jr nz, .set2bytesInDestToCplA                               ; $4964: $20 $18

.set2bytesInDestToA:
	ld [hl+], a                                                     ; $4966
	inc hl                                                          ; $4967
	ld [hl], a                                                      ; $4968
	ret                                                             ; $4969

.copyCplCharBitplane:
; Copy $0e cpl bytes from DE to HL
	ld b, $0e                                                       ; $496a

.nextCplByte:
	ld a, [de]                                                      ; $496c
	cpl                                                             ; $496d
	ld [hl+], a                                                     ; $496e
	inc hl                                                          ; $496f

	inc de                                                          ; $4970
	dec b                                                           ; $4971
	jr nz, .nextCplByte                                             ; $4972

; HL points to after last row
	pop bc                                                          ; $4974

; if bit 7 set on ???, last 2 bytes for char = $00, else $ff
	ld a, [$d7fa]                                    ; $4975: $fa $fa $d7
	bit 7, a                                         ; $4978: $cb $7f
	ld a, $ff                                        ; $497a: $3e $ff
	jr z, .set2bytesInDestToA                                ; $497c: $28 $e8

.set2bytesInDestToCplA:
	cpl                                                             ; $497e
	ld [hl+], a                                                     ; $497f
	cpl                                                             ; $4980
	inc hl                                                          ; $4981
	ld [hl], a                                                      ; $4982
	ret                                                             ; $4983


Call_003_4984:
	ld hl, wCurrTilePixelIdx                                     ; $4984: $21 $fe $d7
	add [hl]                                         ; $4987: $86
	ld [$c0d7], a                                    ; $4988: $ea $d7 $c0
	ld a, [hl]                                       ; $498b: $7e
	and a                                            ; $498c: $a7
	ld hl, $d430                                     ; $498d: $21 $30 $d4
	ret z                                            ; $4990: $c8

	push de                                          ; $4991: $d5
	ld c, $00                                        ; $4992: $0e $00
	call Call_003_491e                               ; $4994: $cd $1e $49
	ld hl, $d450                                     ; $4997: $21 $50 $d4
	pop de                                           ; $499a: $d1
	ret                                              ; $499b: $c9


Call_003_499c:
	ld a, [wCurrTilePixelIdx]                                    ; $499c: $fa $fe $d7
	and a                                            ; $499f: $a7
	ret z                                            ; $49a0: $c8

	ld hl, $d450                                     ; $49a1: $21 $50 $d4
	ld de, $d430                                     ; $49a4: $11 $30 $d4
	call Call_003_49f1                               ; $49a7: $cd $f1 $49
	ld a, [wCurrTilePixelIdx]                                    ; $49aa: $fa $fe $d7
	cp $03                                           ; $49ad: $fe $03
	jr c, jr_003_49dd                                ; $49af: $38 $2c

	cp $05                                           ; $49b1: $fe $05
	jr c, jr_003_49ca                                ; $49b3: $38 $15

	ld a, $e0                                        ; $49b5: $3e $e0
	add c                                            ; $49b7: $81
	ld c, a                                          ; $49b8: $4f

jr_003_49b9:
	xor a                                            ; $49b9: $af
	sla [hl]                                         ; $49ba: $cb $26
	rla                                              ; $49bc: $17
	sla [hl]                                         ; $49bd: $cb $26
	rla                                              ; $49bf: $17
	ld b, a                                          ; $49c0: $47
	ld a, [de]                                       ; $49c1: $1a
	or b                                             ; $49c2: $b0
	ld [de], a                                       ; $49c3: $12
	inc hl                                           ; $49c4: $23
	inc de                                           ; $49c5: $13
	dec c                                            ; $49c6: $0d
	jr nz, jr_003_49b9                               ; $49c7: $20 $f0

	ret                                              ; $49c9: $c9


jr_003_49ca:
	ld a, [hl]                                       ; $49ca: $7e
	swap a                                           ; $49cb: $cb $37
	ld b, a                                          ; $49cd: $47
	and $f0                                          ; $49ce: $e6 $f0
	ld [hl+], a                                      ; $49d0: $22
	ld a, b                                          ; $49d1: $78
	and $0f                                          ; $49d2: $e6 $0f
	ld b, a                                          ; $49d4: $47
	ld a, [de]                                       ; $49d5: $1a
	or b                                             ; $49d6: $b0
	ld [de], a                                       ; $49d7: $12
	inc de                                           ; $49d8: $13
	dec c                                            ; $49d9: $0d
	jr nz, jr_003_49ca                               ; $49da: $20 $ee

	ret                                              ; $49dc: $c9


jr_003_49dd:
	ld b, [hl]                                       ; $49dd: $46
	ld [hl], $00                                     ; $49de: $36 $00
	srl b                                            ; $49e0: $cb $38
	rr [hl]                                          ; $49e2: $cb $1e
	srl b                                            ; $49e4: $cb $38
	rr [hl]                                          ; $49e6: $cb $1e
	ld a, [de]                                       ; $49e8: $1a
	or b                                             ; $49e9: $b0
	ld [de], a                                       ; $49ea: $12
	inc hl                                           ; $49eb: $23
	inc de                                           ; $49ec: $13
	dec c                                            ; $49ed: $0d
	jr nz, jr_003_49dd                               ; $49ee: $20 $ed

	ret                                              ; $49f0: $c9


Call_003_49f1:
	ld a, [$c0d7]                                    ; $49f1: $fa $d7 $c0
	add $07                                          ; $49f4: $c6 $07
	and $f8                                          ; $49f6: $e6 $f8
	sla a                                            ; $49f8: $cb $27
	sla a                                            ; $49fa: $cb $27
	ld c, a                                          ; $49fc: $4f
	ld b, $00                                        ; $49fd: $06 $00
	ret                                              ; $49ff: $c9


Call_003_4a00:
	ld a, [wCurrTilePixelIdx]                                    ; $4a00: $fa $fe $d7
	and a                                            ; $4a03: $a7
	ret z                                            ; $4a04: $c8

	ld hl, $d430                                     ; $4a05: $21 $30 $d4
	ld de, $d490                                     ; $4a08: $11 $90 $d4
	ld c, $20                                        ; $4a0b: $0e $20

jr_003_4a0d:
	ld a, [de]                                       ; $4a0d: $1a
	or [hl]                                          ; $4a0e: $b6
	ld [hl+], a                                      ; $4a0f: $22
	inc de                                           ; $4a10: $13
	dec c                                            ; $4a11: $0d
	jr nz, jr_003_4a0d                               ; $4a12: $20 $f9

	ret                                              ; $4a14: $c9


Call_003_4a15:
	ld a, [$c0d7]                                    ; $4a15: $fa $d7 $c0
	ld b, a                                          ; $4a18: $47
	and $07                                          ; $4a19: $e6 $07
	ld d, $00                                        ; $4a1b: $16 $00
	ld e, a                                          ; $4a1d: $5f
	ld [wCurrTilePixelIdx], a                                    ; $4a1e: $ea $fe $d7
	ld a, b                                          ; $4a21: $78
	cp $08                                           ; $4a22: $fe $08
	ret c                                            ; $4a24: $d8

	cp $10                                           ; $4a25: $fe $10
	ld hl, $d450                                     ; $4a27: $21 $50 $d4
	jr c, jr_003_4a2f                                ; $4a2a: $38 $03

	ld hl, $d470                                     ; $4a2c: $21 $70 $d4

jr_003_4a2f:
	push hl                                          ; $4a2f: $e5
	ld hl, $46bc                                     ; $4a30: $21 $bc $46
	add hl, de                                       ; $4a33: $19
	ld e, [hl]                                       ; $4a34: $5e
	ld a, e                                          ; $4a35: $7b
	cpl                                              ; $4a36: $2f
	ld d, a                                          ; $4a37: $57
	ld a, [$d7f9]                                    ; $4a38: $fa $f9 $d7
	ld b, a                                          ; $4a3b: $47
	ld a, [$d7fb]                                    ; $4a3c: $fa $fb $d7
	ld c, a                                          ; $4a3f: $4f
	pop hl                                           ; $4a40: $e1
	push hl                                          ; $4a41: $e5
	call Call_003_4a61                               ; $4a42: $cd $61 $4a
	pop hl                                           ; $4a45: $e1
	ld a, d                                          ; $4a46: $7a
	and a                                            ; $4a47: $a7
	ret z                                            ; $4a48: $c8

	ld bc, $d490                                     ; $4a49: $01 $90 $d4
	call Call_003_4a4f                               ; $4a4c: $cd $4f $4a

Call_003_4a4f:
	call Call_003_4a52                               ; $4a4f: $cd $52 $4a

Call_003_4a52:
	call Call_003_4a55                               ; $4a52: $cd $55 $4a

Call_003_4a55:
	call Call_003_4a58                               ; $4a55: $cd $58 $4a

Call_003_4a58:
	ld a, [hl+]                                      ; $4a58: $2a
	and d                                            ; $4a59: $a2
	ld [bc], a                                       ; $4a5a: $02
	inc bc                                           ; $4a5b: $03
	ld a, [hl+]                                      ; $4a5c: $2a
	and d                                            ; $4a5d: $a2
	ld [bc], a                                       ; $4a5e: $02
	inc bc                                           ; $4a5f: $03
	ret                                              ; $4a60: $c9


Call_003_4a61:
	push hl                                          ; $4a61: $e5
	call Call_003_4a67                               ; $4a62: $cd $67 $4a
	pop hl                                           ; $4a65: $e1
	inc l                                            ; $4a66: $2c

Call_003_4a67:
	srl c                                            ; $4a67: $cb $39
	jr c, jr_003_4a7a                                ; $4a69: $38 $0f

	ld a, d                                          ; $4a6b: $7a
	and a                                            ; $4a6c: $a7
	ret z                                            ; $4a6d: $c8

	push bc                                          ; $4a6e: $c5
	ld b, $10                                        ; $4a6f: $06 $10

jr_003_4a71:
	ld a, [hl]                                       ; $4a71: $7e
	and d                                            ; $4a72: $a2
	ld [hl+], a                                      ; $4a73: $22
	inc l                                            ; $4a74: $2c
	dec b                                            ; $4a75: $05
	jr nz, jr_003_4a71                               ; $4a76: $20 $f9

	pop bc                                           ; $4a78: $c1
	ret                                              ; $4a79: $c9


jr_003_4a7a:
	ld a, e                                          ; $4a7a: $7b
	and a                                            ; $4a7b: $a7
	ret z                                            ; $4a7c: $c8

	push bc                                          ; $4a7d: $c5
	ld b, $10                                        ; $4a7e: $06 $10

jr_003_4a80:
	ld a, [hl]                                       ; $4a80: $7e
	or e                                             ; $4a81: $b3
	ld [hl+], a                                      ; $4a82: $22
	inc l                                            ; $4a83: $2c
	dec b                                            ; $4a84: $05
	jr nz, jr_003_4a80                               ; $4a85: $20 $f9

	pop bc                                           ; $4a87: $c1
	ret                                              ; $4a88: $c9


Call_003_4a89:
	ld a, $03                                        ; $4a89: $3e $03
	ld b, $08                                        ; $4a8b: $06 $08
	ld hl, $1006                                     ; $4a8d: $21 $06 $10
	push bc                                          ; $4a90: $c5
	sla a                                            ; $4a91: $cb $27
	swap a                                           ; $4a93: $cb $37
	ld e, a                                          ; $4a95: $5f
	ld d, $00                                        ; $4a96: $16 $00
	ld hl, $4525                                     ; $4a98: $21 $25 $45
	add hl, de                                       ; $4a9b: $19
	push hl                                          ; $4a9c: $e5
	ld a, $08                                        ; $4a9d: $3e $08
	call Call_003_4984                               ; $4a9f: $cd $84 $49
	pop hl                                           ; $4aa2: $e1
	ld de, $d430                                     ; $4aa3: $11 $30 $d4
	push de                                          ; $4aa6: $d5
	ld a, $11                                        ; $4aa7: $3e $11
	call $1e1e                                       ; $4aa9: $cd $1e $1e
	ld a, $11                                        ; $4aac: $3e $11
	call $1e1e                                       ; $4aae: $cd $1e $1e
	pop hl                                           ; $4ab1: $e1
	ld a, [$d7fb]                                    ; $4ab2: $fa $fb $d7
	ld d, a                                          ; $4ab5: $57
	pop bc                                           ; $4ab6: $c1

jr_003_4ab7:
	ld e, d                                          ; $4ab7: $5a
	ld a, [hl+]                                      ; $4ab8: $2a
	and [hl]                                         ; $4ab9: $a6
	dec hl                                           ; $4aba: $2b
	ld c, a                                          ; $4abb: $4f
	cpl                                              ; $4abc: $2f
	and [hl]                                         ; $4abd: $a6
	srl e                                            ; $4abe: $cb $3b
	jr nc, jr_003_4ac3                               ; $4ac0: $30 $01

	or c                                             ; $4ac2: $b1

jr_003_4ac3:
	ld [hl+], a                                      ; $4ac3: $22
	ld a, c                                          ; $4ac4: $79
	cpl                                              ; $4ac5: $2f
	and [hl]                                         ; $4ac6: $a6
	srl e                                            ; $4ac7: $cb $3b
	jr nc, jr_003_4acc                               ; $4ac9: $30 $01

	or c                                             ; $4acb: $b1

jr_003_4acc:
	ld [hl+], a                                      ; $4acc: $22
	dec b                                            ; $4acd: $05
	jr nz, jr_003_4ab7                               ; $4ace: $20 $e7

Jump_003_4ad0:
	ld a, [wCurrTilePixelIdx]                                    ; $4ad0: $fa $fe $d7
	push af                                          ; $4ad3: $f5
	ld a, $08                                        ; $4ad4: $3e $08
	ld [$c0d7], a                                    ; $4ad6: $ea $d7 $c0
	ld [wCurrTilePixelIdx], a                                    ; $4ad9: $ea $fe $d7
	call Call_003_4826                               ; $4adc: $cd $26 $48
	pop af                                           ; $4adf: $f1
	ld [wCurrTilePixelIdx], a                                    ; $4ae0: $ea $fe $d7
	ret                                              ; $4ae3: $c9


Jump_003_4ae4:
	ld hl, $d430                                     ; $4ae4: $21 $30 $d4
	call Call_003_4aed                               ; $4ae7: $cd $ed $4a
	jp Jump_003_4ad0                                 ; $4aea: $c3 $d0 $4a


Call_003_4aed:
	ld a, [$d7f9]                                    ; $4aed: $fa $f9 $d7
	srl a                                            ; $4af0: $cb $3f
	ld [hl], $00                                     ; $4af2: $36 $00
	jr nc, jr_003_4af7                               ; $4af4: $30 $01

	dec [hl]                                         ; $4af6: $35

jr_003_4af7:
	inc hl                                           ; $4af7: $23
	srl a                                            ; $4af8: $cb $3f
	ld [hl], $00                                     ; $4afa: $36 $00
	jr nc, jr_003_4aff                               ; $4afc: $30 $01

	dec [hl]                                         ; $4afe: $35

jr_003_4aff:
	dec hl                                           ; $4aff: $2b
	ld e, l                                          ; $4b00: $5d
	ld d, h                                          ; $4b01: $54
	inc de                                           ; $4b02: $13
	inc de                                           ; $4b03: $13
	jp $cc86                                         ; $4b04: $c3 $86 $cc


	ret                                              ; $4b07: $c9


	push hl                                          ; $4b08: $e5
	ld b, BANK(ScriptsTexts)/4                                        ; $4b09: $06 $1e
	ld hl, ScriptsTexts-$4000                                     ; $4b0b: $21 $71 $21
	call SetFarTextByteSrc                               ; $4b0e: $cd $6a $4b
	pop hl                                           ; $4b11: $e1
	ld e, l                                          ; $4b12: $5d
	ld d, h                                          ; $4b13: $54
	add hl, hl                                       ; $4b14: $29
	add hl, de                                       ; $4b15: $19
	call wSwapDEandHL                                       ; $4b16: $cd $d4 $ce
	call AddDEtoFarTextByteSrc                               ; $4b19: $cd $59 $4b
	call HLequNextFarTextWord                               ; $4b1c: $cd $35 $4b
	push hl                                          ; $4b1f: $e5
	call AequNextFarTextByte                               ; $4b20: $cd $26 $4b
	ld b, a                                          ; $4b23: $47
	pop hl                                           ; $4b24: $e1
	ret                                              ; $4b25: $c9


AequNextFarTextByte:
	push bc                                                         ; $4b26
	push de                                                         ; $4b27
	push hl                                                         ; $4b28

; Get next byte, then inc src
	call GetNextFarTextByte                                         ; $4b29
	push af                                                         ; $4b2c
	call Add1toFarTextByteSrc                                       ; $4b2d
	pop af                                                          ; $4b30

	pop hl                                                          ; $4b31
	pop de                                                          ; $4b32
	pop bc                                                          ; $4b33

TextByte2f_Stub:
	ret                                                             ; $4b34


HLequNextFarTextWord::
	call AequNextFarTextByte                                        ; $4b35
	ld l, a                                                         ; $4b38
	call AequNextFarTextByte                                        ; $4b39
	ld h, a                                                         ; $4b3c
	ret                                                             ; $4b3d


DecFarTextByteSrc:
	push af                                                         ; $4b3e
	push bc                                                         ; $4b3f
	push de                                                         ; $4b40
	push hl                                                         ; $4b41

; -1 to text byte src
	call GetFarTextByteSrc                                          ; $4b42
	ld de, $ffff                                                    ; $4b45
	call AddDEtoFarTextByteSrc                                      ; $4b48

	pop hl                                                          ; $4b4b
	pop de                                                          ; $4b4c
	pop bc                                                          ; $4b4d
	pop af                                                          ; $4b4e
	ret                                                             ; $4b4f


;
	push af                                          ; $4b50: $f5
	call AequNextFarTextByte                               ; $4b51: $cd $26 $4b
	pop af                                           ; $4b54: $f1
	ret                                              ; $4b55: $c9


Add1toFarTextByteSrc:
	ld de, $0001                                                    ; $4b56

AddDEtoFarTextByteSrc::
; Get src in B:HL, if offset negative, start with B-1:HL
	call GetFarTextByteSrc                                          ; $4b59
	bit 7, d                                                        ; $4b5c
	jr z, :+                                                        ; $4b5e
	dec b                                                           ; $4b60

; HL += DE
:	ld a, l                                                         ; $4b61
	add e                                                           ; $4b62
	ld l, a                                                         ; $4b63
	ld a, h                                                         ; $4b64
	adc d                                                           ; $4b65
	ld h, a                                                         ; $4b66

; If no carry, it doesn't roll over next bank, or the `dec b` for negative offsets is valid
	jr nc, SetFarTextByteSrc                                        ; $4b67

; Otherwise it rolls over, or for negative offsets, the bank doesn't change
	inc b                                                           ; $4b69

; B - far bank >> 4
; HL - far addr, with bits 7&6 containing low 2 shifted out bits of B
SetFarTextByteSrc::
	ld a, b                                                         ; $4b6a
	ld [wShiftedFarTextByteBank], a                                 ; $4b6b

; HL - far addr, with bits 7&6 containing low 2 shifted out bits of B
SetFarTextByteAddr:
	ld a, l                                                         ; $4b6e
	ld [wShiftedFarTextByteAddr], a                                 ; $4b6f
	ld a, h                                                         ; $4b72
	ld [wShiftedFarTextByteAddr+1], a                               ; $4b73
	ret                                                             ; $4b76


; Returns B = far bank >> 4
; Returns HL = far addr, with bits 7&6 containing low 2 shifted out bits of B
GetFarTextByteSrc::
	ld a, [wShiftedFarTextByteBank]                                 ; $4b77
	ld b, a                                                         ; $4b7a

; Returns HL = far addr, with bits 7&6 containing low 2 shifted out bits of B
GetFarTextByteAddr::
	ld a, [wShiftedFarTextByteAddr]                                 ; $4b7b
	ld l, a                                                         ; $4b7e
	ld a, [wShiftedFarTextByteAddr+1]                               ; $4b7f
	ld h, a                                                         ; $4b82
	ret                                                             ; $4b83


PushCurrTextByteSrc:
	push af                                                         ; $4b84
	push bc                                                         ; $4b85
	push de                                                         ; $4b86
	push hl                                                         ; $4b87

; B:DE = text byte src, HL = curr stack top
	call GetFarTextByteSrc                                          ; $4b88
	call wSwapDEandHL                                               ; $4b8b

	ld a, [wTextByteStackTopLowByte]                                ; $4b8e
	ld l, a                                                         ; $4b91
	ld h, HIGH(wTextByteStackTopLowByte)                            ; $4b92

; Push bank, then addr, similar to GB stack
	dec hl                                                          ; $4b94
	ld [hl], b                                                      ; $4b95
	dec hl                                                          ; $4b96
	ld [hl], d                                                      ; $4b97
	dec hl                                                          ; $4b98
	ld [hl], e                                                      ; $4b99

; Save new stack top low byte, and restore regs
	ld a, l                                                         ; $4b9a
	ld [wTextByteStackTopLowByte], a                                ; $4b9b

	pop hl                                                          ; $4b9e
	pop de                                                          ; $4b9f
	pop bc                                                          ; $4ba0
	pop af                                                          ; $4ba1
	ret                                                             ; $4ba2


PopCurrTextByteSrc:
;
	ld a, [wTextByteStackTopLowByte]                                    ; $4ba3: $fa $2f $d1
	cp LOW(wTextByteStackTopLowByte)                                           ; $4ba6: $fe $2f
	jr nc, .br_4bba                               ; $4ba8: $30 $10

; HL = curr stack top
	ld l, a                                                         ; $4baa
	ld h, HIGH(wTextByteStackTopLowByte)                            ; $4bab

; Pop addr, then bank, similar to GB stack
	ld e, [hl]                                                      ; $4bad
	inc hl                                                          ; $4bae
	ld d, [hl]                                                      ; $4baf
	inc hl                                                          ; $4bb0
	ld b, [hl]                                                      ; $4bb1
	inc hl                                                          ; $4bb2

; Save new stack top low byte, then return popped far src in HL
	ld a, l                                                         ; $4bb3
	ld [wTextByteStackTopLowByte], a                                ; $4bb4
	jp wSwapDEandHL                                                 ; $4bb7

.br_4bba:
:	ld a, [$c110]                                    ; $4bba: $fa $10 $c1
	and a                                            ; $4bbd: $a7
	jr nz, :-                               ; $4bbe: $20 $fa

	pop af                                           ; $4bc0: $f1
	pop af                                           ; $4bc1: $f1

Ret_03_4bc2:
	ret                                              ; $4bc2: $c9


Func_03_4bc3::
	call Call_003_51b4                               ; $4bc3: $cd $b4 $51
	ld a, b                                          ; $4bc6: $78
	ld [wShiftedFarTextByteBank], a                                    ; $4bc7: $ea $08 $d8
	call SetFarTextByteAddr                               ; $4bca: $cd $6e $4b
	call AequNextFarTextByte                               ; $4bcd: $cd $26 $4b
	cp $2f                                           ; $4bd0: $fe $2f
	jr z, .cont_4bdd                                ; $4bd2: $28 $09

; display a top-left right angle
	ld de, $0063                                     ; $4bd4: $11 $63 $00
	call EnqueueDisplayingChar                                       ; $4bd7: $cd $3a $1d
	call DecFarTextByteSrc                               ; $4bda: $cd $3e $4b

.cont_4bdd:
	call AequNextFarTextByte                               ; $4bdd: $cd $26 $4b
	cp $2b                                           ; $4be0: $fe $2b
	jr nz, .cont_4c13                               ; $4be2: $20 $2f

	ld a, [$c18a]                                    ; $4be4: $fa $8a $c1
	call $43c0                                       ; $4be7: $cd $c0 $43
	ld b, $00                                        ; $4bea: $06 $00
	cp $02                                           ; $4bec: $fe $02
	jr c, .cont_4bfa                                ; $4bee: $38 $0a

	inc b                                            ; $4bf0: $04
	cp $04                                           ; $4bf1: $fe $04
	jr c, .cont_4bfa                                ; $4bf3: $38 $05

	ld b, $02                                        ; $4bf5: $06 $02
	jr z, .cont_4bfa                                ; $4bf7: $28 $01

	inc b                                            ; $4bf9: $04

.cont_4bfa:
	add $2b                                          ; $4bfa: $c6 $2b
	call Call_003_4c61                               ; $4bfc: $cd $61 $4c
	ret nz                                           ; $4bff: $c0

.loop_4c00:
	call AequNextFarTextByte                               ; $4c00: $cd $26 $4b
	cp $2b                                           ; $4c03: $fe $2b
	jr z, .loop_4c00                                ; $4c05: $28 $f9

	cp $2c                                           ; $4c07: $fe $2c
	jr z, .loop_4c00                                ; $4c09: $28 $f5

	cp $2d                                           ; $4c0b: $fe $2d
	jr z, .loop_4c00                                ; $4c0d: $28 $f1

	cp $2e                                           ; $4c0f: $fe $2e
	jr z, .loop_4c00                                ; $4c11: $28 $ed

.cont_4c13:
	call DecFarTextByteSrc                               ; $4c13: $cd $3e $4b
	call GetFarTextByteSrc                               ; $4c16: $cd $77 $4b
	jp Call_003_4cd4                                 ; $4c19: $c3 $d4 $4c


Jump_003_4c1c::
	call Call_003_506a                               ; $4c1c: $cd $6a $50
	jp Call_003_4c22                                 ; $4c1f: $c3 $22 $4c


Call_003_4c22::
;
	ld a, [$d7ff]                                    ; $4c22: $fa $ff $d7
	ld l, a                                          ; $4c25: $6f
	ld a, [wCurrTextLinePixelIdx]                                    ; $4c26: $fa $00 $d8
	ld h, a                                          ; $4c29: $67

	ld de, $0020                                     ; $4c2a: $11 $20 $00
	call wCpHLtoDE                                       ; $4c2d: $cd $80 $ce
	ret z                                            ; $4c30: $c8

;
	ld a, [$c186]                                    ; $4c31: $fa $86 $c1
	cp $02                                           ; $4c34: $fe $02
	jr z, Call_003_4c3d                                ; $4c36: $28 $05

	ldh a, [$8b]                                     ; $4c38: $f0 $8b
	cp $59                                           ; $4c3a: $fe $59
	ret nc                                           ; $4c3c: $d0

Call_003_4c3d:
:	ld a, [$c110]                                    ; $4c3d: $fa $10 $c1
	and a                                            ; $4c40: $a7
	jr nz, :-                              ; $4c41: $20 $fa

	ld a, [$c186]                                    ; $4c43: $fa $86 $c1
	ld [$c187], a                                    ; $4c46: $ea $87 $c1
	cp $02                                           ; $4c49: $fe $02
	ld a, $07                                        ; $4c4b: $3e $07
	jr z, :+                                ; $4c4d: $28 $02
	ld a, $03                                        ; $4c4f: $3e $03
:	jp Jump_003_41b5                                 ; $4c51: $c3 $b5 $41


;
	jp Call_003_506a                                 ; $4c54: $c3 $6a $50


	add hl, bc                                       ; $4c57: $09
	and b                                            ; $4c58: $a0
	and c                                            ; $4c59: $a1
	and d                                            ; $4c5a: $a2
	and e                                            ; $4c5b: $a3
	and h                                            ; $4c5c: $a4
	and l                                            ; $4c5d: $a5
	and [hl]                                         ; $4c5e: $a6
	and a                                            ; $4c5f: $a7
	nop                                              ; $4c60: $00


Call_003_4c61:
	ld [$c0d0], a                                    ; $4c61: $ea $d0 $c0

.bigLoop_4c64:
	call GetNextFarTextByte                                       ; $4c64: $cd $c1 $1c
	ld hl, $c0d0                                     ; $4c67: $21 $d0 $c0
	cp [hl]                                          ; $4c6a: $be
	ret z                                            ; $4c6b: $c8

	ld de, $4c56                                     ; $4c6c: $11 $56 $4c

.loop_4c6f:
	inc de                                           ; $4c6f: $13
	ld a, [de]                                       ; $4c70: $1a
	and a                                            ; $4c71: $a7
	jr z, .br_4c7a                                ; $4c72: $28 $06

	cp [hl]                                          ; $4c74: $be
	jr nz, .loop_4c6f                               ; $4c75: $20 $f8

	or $01                                           ; $4c77: $f6 $01
	ret                                              ; $4c79: $c9

.br_4c7a:
	ld de, $0002                                     ; $4c7a: $11 $02 $00
	ld a, [hl]                                       ; $4c7d: $7e
	cp $e8                                           ; $4c7e: $fe $e8
	jr nc, .cont_4c9a                               ; $4c80: $30 $18

	cp $30                                           ; $4c82: $fe $30
	jr nc, .cont_4c9a                               ; $4c84: $30 $14

	ld l, a                                          ; $4c86: $6f
	srl l                                            ; $4c87: $cb $3d
	ld h, $00                                        ; $4c89: $26 $00
	ld de, $4c61                                     ; $4c8b: $11 $61 $4c
	add hl, de                                       ; $4c8e: $19
	ld a, [hl]                                       ; $4c8f: $7e
	jr nc, :+                               ; $4c90: $30 $02
	swap a                                           ; $4c92: $cb $37
:	and $0f                                          ; $4c94: $e6 $0f
	ld e, a                                          ; $4c96: $5f
	ld d, $00                                        ; $4c97: $16 $00
	dec de                                           ; $4c99: $1b

.cont_4c9a:
	call AddDEtoFarTextByteSrc                               ; $4c9a: $cd $59 $4b
	jr .bigLoop_4c64                                   ; $4c9d: $18 $c5

	push de                                          ; $4c9f: $d5
	ld hl, sUnmappedPlayer1stName                                     ; $4ca0: $21 $00 $a2
	call Call_003_4cc8                               ; $4ca3: $cd $c8 $4c
	pop de                                           ; $4ca6: $d1

; HL -
Func_03_4ca7::
;
	call Call_003_51b4                               ; $4ca7: $cd $b4 $51

;
	ld a, [$d80c]                                    ; $4caa: $fa $0c $d8
	ld e, a                                          ; $4cad: $5f
	ld a, [$d80d]                                    ; $4cae: $fa $0d $d8
	ld d, a                                          ; $4cb1: $57
	push de                                          ; $4cb2: $d5

;
	ld a, [$d80e]                                    ; $4cb3: $fa $0e $d8
	push af                                          ; $4cb6: $f5
	call Call_003_4cca                               ; $4cb7: $cd $ca $4c
	pop af                                           ; $4cba: $f1
	ld [$d80e], a                                    ; $4cbb: $ea $0e $d8

;
	pop de                                           ; $4cbe: $d1
	ld a, e                                          ; $4cbf: $7b
	ld [$d80c], a                                    ; $4cc0: $ea $0c $d8
	ld a, d                                          ; $4cc3: $7a
	ld [$d80d], a                                    ; $4cc4: $ea $0d $d8
	ret                                              ; $4cc7: $c9


; HL - far addr, with bits 7&6 containing low 2 shifted out bits of B
Call_003_4cc8:
	ld b, $1e                                        ; $4cc8: $06 $1e

; B - far bank >> 4
; HL - far addr, with bits 7&6 containing low 2 shifted out bits of B
Call_003_4cca::
	xor a                                            ; $4cca: $af
	ld [$d80c], a                                    ; $4ccb: $ea $0c $d8
	ld [$d80d], a                                    ; $4cce: $ea $0d $d8
	ld [$d80e], a                                    ; $4cd1: $ea $0e $d8

; B - far bank >> 4
; HL - far addr, with bits 7&6 containing low 2 shifted out bits of B
Call_003_4cd4:
	call SetFarTextByteSrc                               ; $4cd4: $cd $6a $4b
	ld a, [$d7ff]                                    ; $4cd7: $fa $ff $d7
	ld [$d801], a                                    ; $4cda: $ea $01 $d8
	ld a, [wCurrTextLinePixelIdx]                                    ; $4cdd: $fa $00 $d8
	ld [$d802], a                                    ; $4ce0: $ea $02 $d8
	ld a, $2f                                        ; $4ce3: $3e $2f
	ld [wTextByteStackTopLowByte], a                                    ; $4ce5: $ea $2f $d1
	call SafelyExecuteDataCopies                                       ; $4ce8: $cd $8b $14
	call Call_000_1ca1                                       ; $4ceb: $cd $a1 $1c

;
:	call Call_000_1c71                                       ; $4cee: $cd $71 $1c
	ld a, [$d80c]                                    ; $4cf1: $fa $0c $d8
	and a                                            ; $4cf4: $a7
	call nz, Call_003_4f7f                           ; $4cf5: $c4 $7f $4f

; Push to return above after processing a text byte
	ld hl, :-                                                       ; $4cf8
	push hl                                                         ; $4cfb

; Display chars $70-$106f (before in-order remap)
	call AequNextFarTextByte                                        ; $4cfc
	cp $f0                                                          ; $4cff
	jp nc, EnqueueRemappedBigEndianWord                             ; $4d01

; Either do a dict lookup, or exec misc controls
	cp $e8                                                          ; $4d04
	jp nc, HandleTextByteE8hToEFh_LargeDict                         ; $4d06

	cp $a0                                                          ; $4d09
	jp nc, HandleTextByteA0hToE7h_SmallDict                         ; $4d0b

	cp $30                                                          ; $4d0e
	jp c, HandleTextByteLt30h_MiscCtrl                              ; $4d10

; For bytes $30-$9f, they get remapped $00-$6f, before in-order remap
	ld d, $00                                                       ; $4d13
	ld e, a                                                         ; $4d15

EnqueueDisplayingRemappedChar:
; DE = shift-jis idx of char
	call DEequAdjustedCharIdx                                       ; $4d16
	call RemapDEtoCharIdxInRomOrder                                 ; $4d19

;
	ld a, [$d809]                                    ; $4d1c: $fa $09 $d8
	and a                                            ; $4d1f: $a7
	ld a, $00                                        ; $4d20: $3e $00
	ld [$d809], a                                    ; $4d22: $ea $09 $d8
	jr nz, .br_4d62                               ; $4d25: $20 $3b

.nextChar:
; If we're not considering the rules below this block, just display the char
	ld a, [wUseRulesForTextLine1stOrLastChar]                       ; $4d27
	and a                                                           ; $4d2a
	jp z, EnqueueDisplayingChar                                     ; $4d2b

; If displaying the 1st char in a line...
	ld a, [wCurrTextLinePixelIdx]                                   ; $4d2e
	and a                                                           ; $4d31
	jr nz, .after1stCharCheck                                       ; $4d32

; Dont draw jp comma, jp period, ? and !
	ld hl, $00fa                                                    ; $4d34
	call wCpHLtoDE                                                  ; $4d37
	ret z                                                           ; $4d3a

	ld hl, $00fb                                                    ; $4d3b
	call wCpHLtoDE                                                  ; $4d3e
	ret z                                                           ; $4d41

	ld hl, $005e                                                    ; $4d42
	call wCpHLtoDE                                                  ; $4d45
	ret z                                                           ; $4d48

	ld hl, $005d                                                    ; $4d49
	call wCpHLtoDE                                                  ; $4d4c
	ret z                                                           ; $4d4f

.after1stCharCheck:
; Enqueue char, returning if it was displayed
	call EnqueueDisplayingChar                                      ; $4d50
	ret c                                                           ; $4d53

; If not displayed, and char was a space...
	ld hl, $00f9                                                    ; $4d54
	call wCpHLtoDE                                                  ; $4d57
	ret z                                                           ; $4d5a

; Go to new line for next word instead, then draw that char
	push de                                                         ; $4d5b
	call GoToNewLineForText                                         ; $4d5c
	pop de                                                          ; $4d5f
	jr .nextChar                                                    ; $4d60

.br_4d62:
; HL = the text byte, jump if it matches -, N, K
	call wSwapDEandHL                                       ; $4d62: $cd $d4 $ce
	ld de, $00f7                                     ; $4d65: $11 $f7 $00
	call wCpHLtoDE                                       ; $4d68: $cd $80 $ce
	jr z, todo_HyphenRelated                                ; $4d6b: $28 $3f

	ld de, $00ca                                     ; $4d6d: $11 $ca $00
	call wCpHLtoDE                                       ; $4d70: $cd $80 $ce
	jr z, todo_NRelated                                ; $4d73: $28 $3d

	ld de, $00c7                                     ; $4d75: $11 $c7 $00
	call wCpHLtoDE                                       ; $4d78: $cd $80 $ce
	jp z, todo_KRelated                              ; $4d7b: $ca $de $4f

; Push text byte, then get offset of char from '0'
; Return if high byte is non-0 (definitely not a num)
	push hl                                          ; $4d7e: $e5
	ld de, CHAR_0                                     ; $4d7f: $11 $4d $00
	call wHLminusEquDE                                       ; $4d82: $cd $9e $ce
	ld a, h                                          ; $4d85: $7c
	and a                                            ; $4d86: $a7
	ld a, l                                          ; $4d87: $7d
	pop hl                                           ; $4d88: $e1
	ret nz                                           ; $4d89: $c0

; Jump if num is 0-3
	cp $04                                           ; $4d8a: $fe $04
	jr c, _Func_03_4da1                                ; $4d8c: $38 $13

; set a thing only if number is 4-7
	sub $04                                          ; $4d8e: $d6 $04
	cp $04                                           ; $4d90: $fe $04
	ret nc                                           ; $4d92: $d0

	ld [$d7f9], a                                    ; $4d93: $ea $f9 $d7
	ret                                              ; $4d96: $c9


TextByte25:
	ld a, $00                                        ; $4d97: $3e $00
	jr _Func_03_4da1                                   ; $4d99: $18 $06


TextByte26:
	ld a, $01                                        ; $4d9b: $3e $01
	jr _Func_03_4da1                                   ; $4d9d: $18 $02


TextByte27:
	ld a, $02                                        ; $4d9f: $3e $02

_Func_03_4da1:
	ld hl, $d7fa                                     ; $4da1: $21 $fa $d7
	bit 7, [hl]                                      ; $4da4: $cb $7e
	jr z, :+                                ; $4da6: $28 $02
	set 7, a                                         ; $4da8: $cb $ff
:	ld [hl], a                                       ; $4daa: $77
	ret                                              ; $4dab: $c9


todo_HyphenRelated:
	ld hl, $d7fa                                     ; $4dac: $21 $fa $d7
	set 7, [hl]                                      ; $4daf: $cb $fe
	ret                                              ; $4db1: $c9


todo_NRelated:
	ld hl, $d7fa                                     ; $4db2: $21 $fa $d7
	res 7, [hl]                                      ; $4db5: $cb $be
	ret                                              ; $4db7: $c9


; A - text byte from $a0 to $e7
HandleTextByteA0hToE7h_SmallDict:
; HL = table idx, offset from 1st param value, $a0. Call the script table entry
	sub $a0                                                         ; $4db8
	ld h, $00                                                       ; $4dba
	ld l, a                                                         ; $4dbc

	ld de, TextSmallDictTable                                       ; $4dbd
	ld b, BANK(TextSmallDictTable)/4                                ; $4dc0

; B - far bank >> 4
; DE - table addr
; HL - table idx
ScriptCallTable:
; Push text byte src to prep for a call, then set DE to 2HL, and HL to table addr
	call PushCurrTextByteSrc                                        ; $4dc2
	add hl, hl                                                      ; $4dc5
	call wSwapDEandHL                                               ; $4dc6

; Set src to table addr, add double table idx, get table entry in HL, then jump to it
	call SetFarTextByteSrc                                          ; $4dc9
	call AddDEtoFarTextByteSrc                                      ; $4dcc
	call HLequNextFarTextWord                                       ; $4dcf

SetScriptSrcToHL:
; DE = distance between curr src to HL, add to src to jump to it
	ld a, [wShiftedFarTextByteAddr]                                 ; $4dd2
	ld e, a                                                         ; $4dd5
	ld a, [wShiftedFarTextByteAddr+1]                               ; $4dd6
	ld d, a                                                         ; $4dd9
	call wHLminusEquDE                                              ; $4dda
	call wSwapDEandHL                                               ; $4ddd

	jp AddDEtoFarTextByteSrc                                        ; $4de0


; A - text byte from $e8 to $ef
HandleTextByteE8hToEFh_LargeDict:
; H = high byte of table idx (0-7), L from next text byte is the low byte
	and $07                                                         ; $4de3
	ld h, a                                                         ; $4de5
	call AequNextFarTextByte                                        ; $4de6
	ld l, a                                                         ; $4de9

; Call the script table entry
	ld de, TextLargeDictTable-$4000                                 ; $4dea
	ld b, BANK(TextLargeDictTable)/4                                ; $4ded
	jr ScriptCallTable                                              ; $4def


EnqueueRemappedBigEndianWord:
	ld d, a                                                         ; $4df1
	call AequNextFarTextByte                                        ; $4df2
	ld e, a                                                         ; $4df5
	jp EnqueueDisplayingRemappedChar                                ; $4df6


; A - table idx
; Table at return address
HandleTextByteLt30h_MiscCtrl:
	call wJumpTable                                                 ; $4df9
	dw TextByte00_Char86
	dw TextByte01_RamJumpTable
	dw TextByte02
	dw TextByte03_PrintHex
	dw TextByte04
	dw TextByte05
	dw TextByte06
	dw TextByte07
	dw TextByte08
	dw TextByte09_Ret
	dw TextByte0a_NewLine
	dw TextByte0b
	dw $0000
	dw $0000
	dw $0000
	dw TextByte0f
	dw TextByte10
	dw TextByte11_Player1stName
	dw TextByte12_Player2ndName
	dw TextByte13_NewLine
	dw TextByte14
	dw TextByte15
	dw TextByte16
	dw TextByte17
	dw TextByte18_NewLine
	dw TextByte19
	dw TextByte1a
	dw TextByte1b
	dw TextByte1c
	dw TextByte1d
	dw TextByte1e
	dw TextByte1f
	dw TextByte20
	dw TextByte21
	dw TextByte22
	dw TextByte23
	dw TextByte24
	dw TextByte25
	dw TextByte26
	dw TextByte27
	dw TextByte28
	dw TextByte29
	dw TextByte2a
	dw TextByte2b
	dw TextByte2c
	dw TextByte2d
	dw TextByte2e
	dw TextByte2f_Stub


TextByte00_Char86:
	ld de, $0086                                     ; $4e5c: $11 $86 $00
	jp EnqueueDisplayingRemappedChar                                 ; $4e5f: $c3 $16 $4d


TextByte01_RamJumpTable:
; Preserve text byte src
	call GetFarTextByteSrc                                          ; $4e62
	push bc                                                         ; $4e65
	push hl                                                         ; $4e66

; HL is next word, DE = byte in that word
	call HLequNextFarTextWord                                       ; $4e67
	ld e, [hl]                                                      ; $4e6a
	ld d, $00                                                       ; $4e6b

; Add to text src, and get a byte in there into DE
	call AddDEtoFarTextByteSrc                                      ; $4e6d
	call AequNextFarTextByte                                        ; $4e70
	ld d, $00                                                       ; $4e73
	ld e, a                                                         ; $4e75

; Restore text src, then add DE to where text byte $01 was
	pop hl                                                          ; $4e76
	pop bc                                                          ; $4e77
	call SetFarTextByteSrc                                          ; $4e78

	dec de                                                          ; $4e7b
	jp AddDEtoFarTextByteSrc                                        ; $4e7c


TextByte02:
	ld a, [wShiftedFarTextByteBank]                                    ; $4e7f: $fa $08 $d8
	call HLequNextFarTextWord                               ; $4e82: $cd $35 $4b
	call PushCurrTextByteSrc                               ; $4e85: $cd $84 $4b
	jp SetScriptSrcToHL                                 ; $4e88: $c3 $d2 $4d


TextByte03_PrintHex:
; A = next text byte, clear bit 5 and push
	call AequNextFarTextByte                               ; $4e8b: $cd $26 $4b
	bit 5, a                                         ; $4e8e: $cb $6f
	res 5, a                                         ; $4e90: $cb $af
	push af                                          ; $4e92: $f5

; C = 0 if bit 5 above clear, else its the next text byte
	ld c, $00                                        ; $4e93: $0e $00
	jr z, :+                                ; $4e95: $28 $04

	call AequNextFarTextByte                               ; $4e97: $cd $26 $4b
	ld c, a                                          ; $4e9a: $4f

; HL = next word, word in HL += C to get DE
:	call HLequNextFarTextWord                               ; $4e9b: $cd $35 $4b

	ld a, [hl+]                                      ; $4e9e: $2a
	add c                                            ; $4e9f: $81
	ld e, a                                          ; $4ea0: $5f
	ld a, $00                                        ; $4ea1: $3e $00
	adc [hl]                                         ; $4ea3: $8e
	ld d, a                                          ; $4ea4: $57

;
	pop af                                           ; $4ea5: $f1
	jp Jump_003_50c5                                 ; $4ea6: $c3 $c5 $50


TextByte04:
	ld a, [wCurrChar1Idxed]                                    ; $4ea9: $fa $03 $d8
	ld e, a                                          ; $4eac: $5f
	ld a, [wCurrChar1Idxed]                                    ; $4ead: $fa $03 $d8
	ld d, a                                          ; $4eb0: $57
	jp EnqueueDisplayingChar                                         ; $4eb1: $c3 $3a $1d


TextByte05:
	ld a, [$d7ff]                                    ; $4eb4: $fa $ff $d7
	ld [$d801], a                                    ; $4eb7: $ea $01 $d8
	ld a, [wCurrTextLinePixelIdx]                                    ; $4eba: $fa $00 $d8
	ld [$d802], a                                    ; $4ebd: $ea $02 $d8
	ret                                              ; $4ec0: $c9


TextByte06:
	call AequNextFarTextByte                               ; $4ec1: $cd $26 $4b
	ld hl, wCurrTextLinePixelIdx                                     ; $4ec4: $21 $00 $d8
	add [hl]                                         ; $4ec7: $86
	ld [hl], a                                       ; $4ec8: $77
	jp Func_1ce3                                         ; $4ec9: $c3 $e3 $1c


TextByte07:
	call AequNextFarTextByte                               ; $4ecc: $cd $26 $4b
	push af                                          ; $4ecf: $f5
	ld hl, $d801                                     ; $4ed0: $21 $01 $d8
	ld a, [$d7ff]                                    ; $4ed3: $fa $ff $d7
	ld [hl+], a                                      ; $4ed6: $22
	pop af                                           ; $4ed7: $f1
	add [hl]                                         ; $4ed8: $86
	ld [wCurrTextLinePixelIdx], a                                    ; $4ed9: $ea $00 $d8
	jp Func_1ce3                                         ; $4edc: $c3 $e3 $1c


TextByte08:
	call AequNextFarTextByte                               ; $4edf: $cd $26 $4b
	ld [wCurrTextLinePixelIdx], a                                    ; $4ee2: $ea $00 $d8
	ld [$d802], a                                    ; $4ee5: $ea $02 $d8
	call AequNextFarTextByte                               ; $4ee8: $cd $26 $4b
	ld [$d7ff], a                                    ; $4eeb: $ea $ff $d7
	ld [$d801], a                                    ; $4eee: $ea $01 $d8
	jp Func_1ce3                                         ; $4ef1: $c3 $e3 $1c


TextByte09_Ret:
	call PopCurrTextByteSrc                               ; $4ef4: $cd $a3 $4b
	call SetFarTextByteSrc                               ; $4ef7: $cd $6a $4b
	jp Ret_03_4bc2                                 ; $4efa: $c3 $c2 $4b


TextByte0a_NewLine:
	jp GoToNewLineForText                                 ; $4efd: $c3 $4c $50


TextByte0b:
TextByte2b:
TextByte2c:
TextByte2d:
TextByte2e:
:	call PopCurrTextByteSrc                               ; $4f00: $cd $a3 $4b
	call SetFarTextByteSrc                               ; $4f03: $cd $6a $4b
	jr :-                                   ; $4f06: $18 $f8


TextByte1e:
	ld a, $01                                        ; $4f08: $3e $01
	ld [$d809], a                                    ; $4f0a: $ea $09 $d8
	ret                                              ; $4f0d: $c9


TextByte0f:
	ld a, $03                                        ; $4f0e: $3e $03
	ld [$d7f9], a                                    ; $4f10: $ea $f9 $d7
	ld a, $01                                        ; $4f13: $3e $01
	ld [$d7fa], a                                    ; $4f15: $ea $fa $d7
	ret                                              ; $4f18: $c9


TextByte10:
	ld a, $03                                        ; $4f19: $3e $03
	ld [$d7f9], a                                    ; $4f1b: $ea $f9 $d7
	ld a, $00                                        ; $4f1e: $3e $00
	ld [$d7fa], a                                    ; $4f20: $ea $fa $d7
	ret                                              ; $4f23: $c9


TextByte11_Player1stName:
	call PushCurrTextByteSrc                               ; $4f24: $cd $84 $4b
	ld b, $ff                                        ; $4f27: $06 $ff
	ld hl, sUnmappedPlayer1stName                                     ; $4f29: $21 $00 $a2
	jp SetFarTextByteSrc                                 ; $4f2c: $c3 $6a $4b


TextByte12_Player2ndName:
	call PushCurrTextByteSrc                               ; $4f2f: $cd $84 $4b
	ld b, $ff                                        ; $4f32: $06 $ff
	ld hl, sUnmappedPlayer2ndName                                     ; $4f34: $21 $07 $a2
	jp SetFarTextByteSrc                                 ; $4f37: $c3 $6a $4b


TextByte15:
	call PushCurrTextByteSrc                               ; $4f3a: $cd $84 $4b
	ld b, $ff                                        ; $4f3d: $06 $ff
	ld hl, $a20e                                     ; $4f3f: $21 $0e $a2
	jp SetFarTextByteSrc                                 ; $4f42: $c3 $6a $4b


TextByte16:
	call PushCurrTextByteSrc                               ; $4f45: $cd $84 $4b
	ld b, $1e                                        ; $4f48: $06 $1e
	ld hl, $882f                                     ; $4f4a: $21 $2f $88
	call SetFarTextByteSrc                               ; $4f4d: $cd $6a $4b
	ld a, [$c18b]                                    ; $4f50: $fa $8b $c1
	rst FarCall                                            ; $4f53: $f7
	AddrBank Call_004_43c0
	ld b, $00                                        ; $4f57: $06 $00
	ld c, a                                          ; $4f59: $4f
	ld hl, $4f6b                                     ; $4f5a: $21 $6b $4f
	add hl, bc                                       ; $4f5d: $09
	ld b, [hl]                                       ; $4f5e: $46
	ld hl, $c18b                                     ; $4f5f: $21 $8b $c1
	ld a, [hl]                                       ; $4f62: $7e
	sla a                                            ; $4f63: $cb $27
	add [hl]                                         ; $4f65: $86
	add b                                            ; $4f66: $80
	ld [$c0ca], a                                    ; $4f67: $ea $ca $c0
	ret                                              ; $4f6a: $c9


;
	nop                                              ; $4f6b: $00
	ld bc, $0100                                     ; $4f6c: $01 $00 $01
	db $01, $02


TextByte28:
	call Func_1cb9                                     ; $4f71: $cd $b9 $1c
	ld a, [$c162]                                    ; $4f74: $fa $62 $c1
	and a                                            ; $4f77: $a7
	ret z                                            ; $4f78: $c8

TextByte29:
	call TextByte21                               ; $4f79: $cd $23 $50
	call AequNextFarTextByte                               ; $4f7c: $cd $26 $4b

Call_003_4f7f:
	ld b, a                                          ; $4f7f: $47
	ld a, [$d80e]                                    ; $4f80: $fa $0e $d8
	cp $01                                           ; $4f83: $fe $01
	call nz, Call_003_5082                           ; $4f85: $c4 $82 $50
	ret nz                                           ; $4f88: $c0

	ld a, b                                          ; $4f89: $78
	and a                                            ; $4f8a: $a7
	jr nz, :+                               ; $4f8b: $20 $01
	inc b                                            ; $4f8d: $04
:	call Call_003_4f95                               ; $4f8e: $cd $95 $4f
	dec b                                            ; $4f91: $05
	jr nz, :-                               ; $4f92: $20 $fa

	ret                                              ; $4f94: $c9


Call_003_4f95:
	push bc                                          ; $4f95: $c5
	di                                               ; $4f96: $f3
	ldh a, [rLY]                                     ; $4f97: $f0 $44
	ld c, a                                          ; $4f99: $4f
	ld a, [wFrameCounter]                                    ; $4f9a: $fa $1f $c1
	ei                                               ; $4f9d: $fb
	ld b, a                                          ; $4f9e: $47
	inc b                                            ; $4f9f: $04
	inc b                                            ; $4fa0: $04
	inc b                                            ; $4fa1: $04
	ld a, $ff                                        ; $4fa2: $3e $ff

jr_003_4fa4:
	bit 7, a                                         ; $4fa4: $cb $7f
	jr z, jr_003_4fb6                                ; $4fa6: $28 $0e

	call Call_000_1c71                                       ; $4fa8: $cd $71 $1c
	ld a, [wFrameCounter]                                    ; $4fab: $fa $1f $c1
	sub b                                            ; $4fae: $90
	jr nz, jr_003_4fa4                               ; $4faf: $20 $f3

	ldh a, [rLY]                                     ; $4fb1: $f0 $44
	cp c                                             ; $4fb3: $b9
	jr c, jr_003_4fa4                                ; $4fb4: $38 $ee

jr_003_4fb6:
	pop bc                                           ; $4fb6: $c1
	ret                                              ; $4fb7: $c9


TextByte1f:
	call Func_1cb9                                       ; $4fb8: $cd $b9 $1c
	ld a, $01                                        ; $4fbb: $3e $01
	ld [$c162], a                                    ; $4fbd: $ea $62 $c1
	ret                                              ; $4fc0: $c9


TextByte13_NewLine:
TextByte18_NewLine:
	jp GoToNewLineForText                                 ; $4fc1: $c3 $4c $50


TextByte2a:
	call GoToNewLineForText                               ; $4fc4: $cd $4c $50
	ld hl, $d7ff                                     ; $4fc7: $21 $ff $d7
	dec [hl]                                         ; $4fca: $35
	ret                                              ; $4fcb: $c9


TextByte14:
	jp Call_003_4c22                                 ; $4fcc: $c3 $22 $4c


TextByte17:
	ld a, [$c163]                                    ; $4fcf: $fa $63 $c1
	push af                                          ; $4fd2: $f5
	call Call_003_506a                               ; $4fd3: $cd $6a $50
	call Call_003_4c22                               ; $4fd6: $cd $22 $4c
	pop af                                           ; $4fd9: $f1
	ld [$c163], a                                    ; $4fda: $ea $63 $c1
	ret                                              ; $4fdd: $c9


todo_KRelated:
	ld a, [$d80e]                                    ; $4fde: $fa $0e $d8
	push af                                          ; $4fe1: $f5
	ld a, $02                                        ; $4fe2: $3e $02
	ld [$d80e], a                                    ; $4fe4: $ea $0e $d8
	call TextByte17                               ; $4fe7: $cd $cf $4f
	pop af                                           ; $4fea: $f1
	ld [$d80e], a                                    ; $4feb: $ea $0e $d8
	ret                                              ; $4fee: $c9


TextByte19:
	ld b, $00                                        ; $4fef: $06 $00
	db _LD_HL_D16                                     ; $4ff1: $21

TextByte1a:
	ld b, $01                                     ; $4ff2: $06 $01
	db _LD_HL_D16                                     ; $4ff4: $21

TextByte1b:
	ld b, $02                                     ; $4ff5: $06 $02
	db _LD_HL_D16                                     ; $4ff7: $21

TextByte1c:
	ld b, $03                                     ; $4ff8: $06 $03
	db _LD_HL_D16                                     ; $4ffa: $21

TextByte1d:
	ld b, $04                                     ; $4ffb: $06 $04
	call Func_1cb9                                       ; $4ffd: $cd $b9 $1c
	ld a, b                                          ; $5000: $78
	ld [$c117], a                                    ; $5001: $ea $17 $c1
	ld a, [$c186]                                    ; $5004: $fa $86 $c1
	cp $01                                           ; $5007: $fe $01
	ret z                                            ; $5009: $c8

	call Call_000_1c85                                       ; $500a: $cd $85 $1c
	ld a, $01                                        ; $500d: $3e $01
	ld [$c110], a                                    ; $500f: $ea $10 $c1

TextByte20:
	ld a, [$c186]                                    ; $5012: $fa $86 $c1
	cp $0c                                           ; $5015: $fe $0c
	call z, Func_2ba6                                    ; $5017: $cc $a6 $2b
	call Func_1cb9                                       ; $501a: $cd $b9 $1c
	ld a, $01                                        ; $501d: $3e $01
	ld [$c163], a                                    ; $501f: $ea $63 $c1
	ret                                              ; $5022: $c9


TextByte21:
	ld a, [$c186]                                    ; $5023: $fa $86 $c1
	cp $0c                                           ; $5026: $fe $0c
	call z, Func_2b96                                    ; $5028: $cc $96 $2b
	call Func_1cb9                                       ; $502b: $cd $b9 $1c
	xor a                                            ; $502e: $af
	ld [$c163], a                                    ; $502f: $ea $63 $c1
	ret                                              ; $5032: $c9


TextByte22:
	ld b, $06                                        ; $5033: $06 $06

jr_003_5035:
	ld a, [$c163]                                    ; $5035: $fa $63 $c1
	push af                                          ; $5038: $f5
	call TextByte21                               ; $5039: $cd $23 $50
	call Call_003_4f7f                               ; $503c: $cd $7f $4f
	pop af                                           ; $503f: $f1
	ld [$c163], a                                    ; $5040: $ea $63 $c1
	ret                                              ; $5043: $c9


TextByte23:
	ld b, $04                                        ; $5044: $06 $04
	jr jr_003_5035                                   ; $5046: $18 $ed


TextByte24:
	ld b, $02                                        ; $5048: $06 $02
	jr jr_003_5035                                   ; $504a: $18 $e9


GoToNewLineForText:
;
	ld hl, $0021                                     ; $504c: $21 $21 $00
	ld a, [$d818]                                    ; $504f: $fa $18 $d8
	and a                                            ; $5052: $a7
	jr z, :+                                ; $5053: $28 $01
	inc l                                            ; $5055: $2c

;
:	xor a                                            ; $5056: $af
	ld [wCurrTextLinePixelIdx], a                                    ; $5057: $ea $00 $d8

;
	ld a, [$d7ff]                                    ; $505a: $fa $ff $d7
	cp l                                             ; $505d: $bd
	jp z, Jump_003_4c1c                              ; $505e: $ca $1c $4c

	inc a                                            ; $5061: $3c
	ld [$d7ff], a                                    ; $5062: $ea $ff $d7

;
	call Func_1ce3                                       ; $5065: $cd $e3 $1c
	xor a                                            ; $5068: $af
	ret                                              ; $5069: $c9


Call_003_506a:
jr_003_506a:
	ld a, [$c10b]                                    ; $506a: $fa $0b $c1
	and a                                            ; $506d: $a7
	ret nz                                           ; $506e: $c0

	ld a, [$d80d]                                    ; $506f: $fa $0d $d8
	and a                                            ; $5072: $a7
	jp nz, Call_003_4f7f                             ; $5073: $c2 $7f $4f

	call TextByte21                               ; $5076: $cd $23 $50
	call Call_003_5098                               ; $5079: $cd $98 $50
	call Call_003_5082                               ; $507c: $cd $82 $50
	jr z, jr_003_506a                                ; $507f: $28 $e9

	ret                                              ; $5081: $c9


Call_003_5082:
	ld a, [wButtonsPressed]                                    ; $5082: $fa $25 $c1
	and $30                                          ; $5085: $e6 $30
	ret nz                                           ; $5087: $c0

	ld a, [$d80e]                                    ; $5088: $fa $0e $d8
	cp $02                                           ; $508b: $fe $02
	ld a, [wButtonsHeld]                                    ; $508d: $fa $23 $c1
	jr nz, :+                               ; $5090: $20 $03
	ld a, [wButtonsPressed]                                    ; $5092: $fa $25 $c1
:	and $20                                          ; $5095: $e6 $20
	ret                                              ; $5097: $c9


Call_003_5098:
	call Call_003_50af                               ; $5098: $cd $af $50

jr_003_509b:
	call Call_000_1c71                                       ; $509b: $cd $71 $1c
	jr z, jr_003_509b                                ; $509e: $28 $fb

	srl a                                            ; $50a0: $cb $3f
	srl a                                            ; $50a2: $cb $3f
	and $03                                          ; $50a4: $e6 $03
	cp $03                                           ; $50a6: $fe $03
	jr nz, jr_003_50ac                               ; $50a8: $20 $02

	ld a, $02                                        ; $50aa: $3e $02

jr_003_50ac:
	jp $4a8e                                         ; $50ac: $c3 $8e $4a


Call_003_50af:
	ld a, [$d80b]                                    ; $50af: $fa $0b $d8
	ld h, a                                          ; $50b2: $67
	ld l, $21                                        ; $50b3: $2e $21
	ld a, [$d818]                                    ; $50b5: $fa $18 $d8
	and a                                            ; $50b8: $a7
	jr z, jr_003_50bc                                ; $50b9: $28 $01

	inc l                                            ; $50bb: $2c

jr_003_50bc:
	jp Func_1ceb                                         ; $50bc: $c3 $eb $1c


	call Call_003_50af                               ; $50bf: $cd $af $50
	jp Jump_003_4ae4                                 ; $50c2: $c3 $e4 $4a


; A - ctrl code
; DE - hex byte/s to display
Jump_003_50c5:
;
	cp $06                                           ; $50c5: $fe $06
	jr z, EnqueueDisplayingHexByteOfCharE                                ; $50c7: $28 $74

	cp $07                                           ; $50c9: $fe $07
	jr z, EnqueueDisplayingHexByteOfCharsDE                                ; $50cb: $28 $6c

	ld [$c0d8], a                                    ; $50cd: $ea $d8 $c0
	call wSwapDEandHL                                       ; $50d0: $cd $d4 $ce

; Push HL/10, HL/100, HL/1000, HL/10k, HL/100k
	ld a, $05                                                       ; $50d3

.nextDiv:
	push af                                                         ; $50d5
	ld bc, 10                                                       ; $50d6
	call BCHLequHLdivModBC                                          ; $50d9
	pop af                                                          ; $50dc

	push bc                                                         ; $50dd
	dec a                                                           ; $50de
	jr nz, .nextDiv                                                 ; $50df

;
	ld hl, $c0da                                     ; $50e1: $21 $da $c0
	ld a, $05                                        ; $50e4: $3e $05
	ld [hl+], a                                      ; $50e6: $22
	ld [hl], $00                                     ; $50e7: $36 $00

.bigLoop_50e9:
	pop bc                                           ; $50e9: $c1
	res 6, [hl]                                      ; $50ea: $cb $b6

; jump if thing == 0
	ld a, [$c0d8]                                    ; $50ec: $fa $d8 $c0
	ld b, a                                          ; $50ef: $47
	and $3f                                          ; $50f0: $e6 $3f
	jr z, .cont_5101                                ; $50f2: $28 $0d

	dec hl                                           ; $50f4: $2b
	cp [hl]                                          ; $50f5: $be
	inc hl                                           ; $50f6: $23
	jr nc, .cont_5101                               ; $50f7: $30 $08

	set 6, [hl]                                      ; $50f9: $cb $f6
	ld a, c                                          ; $50fb: $79
	and a                                            ; $50fc: $a7
	jr z, .cont_5101                                ; $50fd: $28 $02

	set 7, [hl]                                      ; $50ff: $cb $fe

.cont_5101:
	bit 6, [hl]                                      ; $5101: $cb $76
	jr nz, .toLoop_5133                               ; $5103: $20 $2e

	bit 6, b                                         ; $5105: $cb $70
	jr z, .br_5110                                ; $5107: $28 $07

; ..
	ld de, $00f2                                     ; $5109: $11 $f2 $00
	bit 7, [hl]                                      ; $510c: $cb $7e
	jr nz, .displayChar                               ; $510e: $20 $20

.br_5110:
	ld a, c                                          ; $5110: $79
	and a                                            ; $5111: $a7
	jr nz, .br_5126                               ; $5112: $20 $12

	bit 5, [hl]                                      ; $5114: $cb $6e
	jr nz, .br_5126                               ; $5116: $20 $0e

	ld a, [$c0da]                                    ; $5118: $fa $da $c0
	dec a                                            ; $511b: $3d
	ld a, c                                          ; $511c: $79
	jr z, .br_5126                                ; $511d: $28 $07

; <space>
	ld de, $00f9                                     ; $511f: $11 $f9 $00
	bit 7, b                                         ; $5122: $cb $78
	jr nz, .displayChar                               ; $5124: $20 $0a

.br_5126:
	set 5, [hl]                                      ; $5126: $cb $ee

	add LOW(CHAR_0)                                          ; $5128: $c6 $4d
	ld e, a                                          ; $512a: $5f
	ld a, $00                                        ; $512b: $3e $00
	adc HIGH(CHAR_0)                                          ; $512d: $ce $00
	ld d, a                                          ; $512f: $57

.displayChar:
	call EnqueueDisplayingChar                                       ; $5130: $cd $3a $1d

.toLoop_5133:
	dec hl                                           ; $5133: $2b
	dec [hl]                                         ; $5134: $35
	inc hl                                           ; $5135: $23
	jr nz, .bigLoop_50e9                               ; $5136: $20 $b1

	ret                                              ; $5138: $c9


EnqueueDisplayingHexByteOfCharsDE:
	ld a, d                                                         ; $5139
	call EnqueueDisplayingHexByteOfCharA                            ; $513a

EnqueueDisplayingHexByteOfCharE:
	ld a, e                                                         ; $513d

EnqueueDisplayingHexByteOfCharA:
; High, then low, to display in order
	call EnqueueDisplayingHighHexNybbleOfCharA                      ; $513e

EnqueueDisplayingHighHexNybbleOfCharA:
; Operate on high nybble
	swap a                                                          ; $5141

	push de                                                         ; $5143
	push af                                                         ; $5144

; HL points to numbers if < 10, else letters. Mask keeps it hex letters
	and $0f                                                         ; $5145
	ld hl, CHAR_0                                                   ; $5147
	cp 10                                                           ; $514a
	jr c, :+                                                        ; $514c
	ld hl, CHAR_A-10                                                ; $514e

; Add num/letter idx to its group to get char idx in DE, then display it
:	add l                                                           ; $5151
	ld e, a                                                         ; $5152
	ld a, $00                                                       ; $5153
	adc h                                                           ; $5155
	ld d, a                                                         ; $5156

	call EnqueueDisplayingChar                                      ; $5157
	pop af                                                          ; $515a
	pop de                                                          ; $515b
	ret                                                             ; $515c


;
	ld a, b                                          ; $515d: $78
	ld [wShiftedFarTextByteBank], a                                    ; $515e: $ea $08 $d8
	push hl                                          ; $5161: $e5
	call SetFarTextByteAddr                               ; $5162: $cd $6e $4b

jr_003_5165:
	call AequNextFarTextByte                               ; $5165: $cd $26 $4b
	cp $09                                           ; $5168: $fe $09
	jr nz, jr_003_5165                               ; $516a: $20 $f9

	call GetFarTextByteAddr                               ; $516c: $cd $7b $4b
	pop de                                           ; $516f: $d1
	call wHLminusEquDE                                       ; $5170: $cd $9e $ce
	dec hl                                           ; $5173: $2b
	ld a, l                                          ; $5174: $7d
	ret                                              ; $5175: $c9


	push af                                          ; $5176: $f5
	push de                                          ; $5177: $d5
	call Func_1ceb                                       ; $5178: $cd $eb $1c
	pop de                                           ; $517b: $d1
	pop af                                           ; $517c: $f1
	ld [$c0f3], a                                    ; $517d: $ea $f3 $c0
	ld a, [wShiftedFarTextByteAddr]                                    ; $5180: $fa $06 $d8
	push af                                          ; $5183: $f5
	ld a, [wShiftedFarTextByteAddr+1]                                    ; $5184: $fa $07 $d8
	push af                                          ; $5187: $f5
	ld a, [wShiftedFarTextByteBank]                                    ; $5188: $fa $08 $d8
	push af                                          ; $518b: $f5
	ld hl, $c0f0                                     ; $518c: $21 $f0 $c0
	ld a, e                                          ; $518f: $7b
	ld [hl+], a                                      ; $5190: $22
	ld a, d                                          ; $5191: $7a
	ld [hl+], a                                      ; $5192: $22
	ld a, $03                                        ; $5193: $3e $03
	ld [hl+], a                                      ; $5195: $22
	inc hl                                           ; $5196: $23
	ld [hl], $f0                                     ; $5197: $36 $f0
	inc hl                                           ; $5199: $23
	ld [hl], $c0                                     ; $519a: $36 $c0
	inc hl                                           ; $519c: $23
	ld [hl], $09                                     ; $519d: $36 $09
	ld b, $ff                                        ; $519f: $06 $ff
	ld hl, $c0f2                                     ; $51a1: $21 $f2 $c0
	call Call_003_4cd4                               ; $51a4: $cd $d4 $4c
	pop af                                           ; $51a7: $f1
	ld [wShiftedFarTextByteBank], a                                    ; $51a8: $ea $08 $d8
	pop af                                           ; $51ab: $f1
	ld [wShiftedFarTextByteAddr+1], a                                    ; $51ac: $ea $07 $d8
	pop af                                           ; $51af: $f1
	ld [wShiftedFarTextByteAddr], a                                    ; $51b0: $ea $06 $d8
	ret                                              ; $51b3: $c9


Call_003_51b4:
	push bc                                          ; $51b4: $c5
	push hl                                          ; $51b5: $e5

;
	call Call_003_51c0                               ; $51b6: $cd $c0 $51
	rst FarCall                                          ; $51b9: $f7
	AddrBank Call_003_72c8

	pop hl                                           ; $51bd: $e1
	pop bc                                           ; $51be: $c1
	ret                                              ; $51bf: $c9


Call_003_51c0::
	push bc                                          ; $51c0: $c5
	push hl                                          ; $51c1: $e5
	call Call_003_41b8                               ; $51c2: $cd $b8 $41
	call Call_003_51cb                               ; $51c5: $cd $cb $51
	pop hl                                           ; $51c8: $e1
	pop bc                                           ; $51c9: $c1
	ret                                              ; $51ca: $c9


Call_003_51cb:
	ld a, [$d7ff]                                    ; $51cb: $fa $ff $d7
	cp $20                                           ; $51ce: $fe $20
	ret c                                            ; $51d0: $d8

	ld hl, $ff8b                                     ; $51d1: $21 $8b $ff
	ld a, $58                                        ; $51d4: $3e $58
	cp [hl]                                          ; $51d6: $be
	ret nc                                           ; $51d7: $d0

	xor a                                            ; $51d8: $af
	ld [$c110], a                                    ; $51d9: $ea $10 $c1
	rst FarCall                                          ; $51dc: $f7
	AddrBank Call_001_5849
	rst FarCall                                     ; $51e0: $f7
	AddrBank Func_01_58e9
	jr .start_51ee                                     ; $51e4: $18 $08

.loop_51e6:
	xor a                                            ; $51e6: $af
	ld [$c110], a                                    ; $51e7: $ea $10 $c1
	rst FarCall                                          ; $51ea: $f7
	AddrBank Call_001_5010

.start_51ee:
	rst FarCall                                     ; $51ee: $f7
	AddrBank Call_000_1ca1
	ldh a, [rLCDC]                                   ; $51f2: $f0 $40
	bit 7, a                                         ; $51f4: $cb $7f
	jr z, .cont_5201                                ; $51f6: $28 $09

	ld hl, wFrameCounter                                     ; $51f8: $21 $1f $c1
	ld a, [$d80a]                                    ; $51fb: $fa $0a $d8
:	cp [hl]                                          ; $51fe: $be
	jr z, :-                                ; $51ff: $28 $fd

.cont_5201:
	ld a, [$d395]                                    ; $5201: $fa $95 $d3
	and a                                            ; $5204: $a7
	jr z, .loop_51e6                                ; $5205: $28 $df

	ld a, $05                                        ; $5207: $3e $05
	jp Jump_003_41b5                                 ; $5209: $c3 $b5 $41


HLequ3A:
	ld l, a                                                         ; $520c
	ld h, $00                                                       ; $520d
	add hl, hl                                                      ; $520f
	add l                                                           ; $5210
	ld l, a                                                         ; $5211
	ret nc                                                          ; $5212

	inc h                                                           ; $5213
	ret                                                             ; $5214


HLequDEplus3A:
	call HLequ3A                                                    ; $5215
	add hl, de                                                      ; $5218
	ret                                                             ; $5219


; A - table idx
; B - far bank >> 4
; DE - additional offset from jump table dest
; HL - far addr, with bits 7&6 containing low 2 shifted out bits of B
SetScriptSrcGivenParams:
	push de                                                         ; $521a

; Set far text byte src from B:HL
	push af                                                         ; $521b
	call SetFarTextByteSrc                                          ; $521c
	pop af                                                          ; $521f

; DE = src + 3A, add to text byte src
	call HLequ3A                                                    ; $5220
	ld e, l                                                         ; $5223
	ld d, h                                                         ; $5224
	call AddDEtoFarTextByteSrc                                      ; $5225

; B:HL = next word+byte, set it as the next src (ie above is a jumptable to a script)
	call HLequNextFarTextWord                                       ; $5228
	call AequNextFarTextByte                                        ; $522b
	ld b, a                                                         ; $522e
	call SetFarTextByteSrc                                          ; $522f

; Restore DE, adding an additional offset onto the srcipt
	pop de                                                          ; $5232
	jp AddDEtoFarTextByteSrc                                        ; $5233


SetScriptOffsetFromCompactScriptLoc:
; Get current offset + idx in H bit 7
	ld a, [sCompactScriptLoc]                                       ; $5236
	ld l, a                                                         ; $5239
	ld a, [sCompactScriptLoc+1]                                     ; $523a
	ld h, a                                                         ; $523d

; Store back in, removing the script idx bit
	ld a, l                                                         ; $523e
	ld [sCompactScriptLoc], a                                       ; $523f
	res 7, h                                                        ; $5242
	ld a, h                                                         ; $5244
	ld [sCompactScriptLoc+1], a                                     ; $5245

; Set offset into script too
	ld a, l                                                         ; $5248
	ld [sCurrOffsetIntoScript], a                                   ; $5249
	ld a, h                                                         ; $524c
	ld [sCurrOffsetIntoScript+1], a                                 ; $524d
	ret                                                             ; $5250


PushBContoScriptStack:
	push af                                                         ; $5251
	push hl                                                         ; $5252

; HL = addr of script stack
	ld a, [wPtrToScriptStack]                                       ; $5253
	ld l, a                                                         ; $5256
	ld a, [wPtrToScriptStack+1]                                     ; $5257
	ld h, a                                                         ; $525a

; Store BC in there, ie push
	dec hl                                                          ; $525b
	ld [hl], b                                                      ; $525c
	dec hl                                                          ; $525d
	ld [hl], c                                                      ; $525e

; Update pointer to script stack
	ld a, l                                                         ; $525f
	ld [wPtrToScriptStack], a                                       ; $5260
	ld a, h                                                         ; $5263
	ld [wPtrToScriptStack+1], a                                     ; $5264

	pop hl                                                          ; $5267
	pop af                                                          ; $5268
	ret                                                             ; $5269


Push2BytesInWordAfterOntoScriptStack:
	push af                                                         ; $526a
	push bc                                                         ; $526b
	push de                                                         ; $526c
	push hl                                                         ; $526d

; BC = word after the call to this func, +1 to point to its highest byte
	call BCequWordAtReturnAddressOf1stSetOfRegPreservingFuncs       ; $526e
	inc bc                                                          ; $5271

; Copy 2 bytes from BC+1 to BC into script stack
	call StoreWordInBCminusInScriptStackMinus1                      ; $5272

_SetHLasScriptStackAddr_RestoreRegs:
; Update script stack addr from the operations here
	ld a, l                                                         ; $5275
	ld [wPtrToScriptStack], a                                       ; $5276
	ld a, h                                                         ; $5279
	ld [wPtrToScriptStack+1], a                                     ; $527a

	pop hl                                                          ; $527d
	pop de                                                          ; $527e
	pop bc                                                          ; $527f
	pop af                                                          ; $5280
	ret                                                             ; $5281


Push3BytesInWordAfterOntoScriptStack:
	push af                                                         ; $5282
	push bc                                                         ; $5283
	push de                                                         ; $5284
	push hl                                                         ; $5285

; BC = word after the call to this func, +2 to point to its highest byte
	call BCequWordAtReturnAddressOf1stSetOfRegPreservingFuncs       ; $5286
	inc bc                                                          ; $5289
	inc bc                                                          ; $528a

; Copy 3 bytes from BC+2 to BC into script stack
	call StoreWordInBCminusInScriptStackMinus1                      ; $528b
	call StoreByteInBCminusInHLminus1                               ; $528e
	jr _SetHLasScriptStackAddr_RestoreRegs                          ; $5291


Push4BytesInWordAfterOntoScriptStack:
	push af                                                         ; $5293
	push bc                                                         ; $5294
	push de                                                         ; $5295
	push hl                                                         ; $5296

; BC = word after the call to this func, +3 to point to its highest byte
	call BCequWordAtReturnAddressOf1stSetOfRegPreservingFuncs       ; $5297
	inc bc                                                          ; $529a
	inc bc                                                          ; $529b
	inc bc                                                          ; $529c

; Copy 4 bytes from BC+3 to BC into script stack
	call StoreWordInBCminusInScriptStackMinus1                      ; $529d
	call StoreByteInBCminusInHLminus1                               ; $52a0
	call StoreByteInBCminusInHLminus1                               ; $52a3
	jr _SetHLasScriptStackAddr_RestoreRegs                          ; $52a6


StoreWordInBCminusInScriptStackMinus1:
; HL = script stack addr, store bytes in [BC] and [BC-1] in script stack
	ld a, [wPtrToScriptStack]                                       ; $52a8
	ld l, a                                                         ; $52ab
	ld a, [wPtrToScriptStack+1]                                     ; $52ac
	ld h, a                                                         ; $52af

	call StoreByteInBCminusInHLminus1                               ; $52b0

StoreByteInBCminusInHLminus1:
; BC- into -HL
	ld a, [bc]                                                      ; $52b3
	dec bc                                                          ; $52b4
	dec hl                                                          ; $52b5
	ld [hl], a                                                      ; $52b6
	ret                                                             ; $52b7


BCequWordAtReturnAddressOf1stSetOfRegPreservingFuncs:
; HL points to return address of above 3 funcs
	ld hl, sp+$0a                                                   ; $52b8
	jp BCequWordAtReturnAddressOfRegPreservingFunc                  ; $52ba


PopBCfromScriptStack:
	push af                                                         ; $52bd
	push hl                                                         ; $52be

; HL = script stack addr
	ld a, [wPtrToScriptStack]                                       ; $52bf
	ld l, a                                                         ; $52c2
	ld a, [wPtrToScriptStack+1]                                     ; $52c3
	ld h, a                                                         ; $52c6

; Get BC from it, ie pop
	ld c, [hl]                                                      ; $52c7
	inc hl                                                          ; $52c8
	ld b, [hl]                                                      ; $52c9
	inc hl                                                          ; $52ca

; Update script stack addr
	ld a, l                                                         ; $52cb
	ld [wPtrToScriptStack], a                                       ; $52cc
	ld a, h                                                         ; $52cf
	ld [wPtrToScriptStack+1], a                                     ; $52d0

	pop hl                                                          ; $52d3
	pop af                                                          ; $52d4
	ret                                                             ; $52d5


Copy2BytesFromScriptStackToWordAfter:
	push af                                                         ; $52d6
	push bc                                                         ; $52d7
	push de                                                         ; $52d8
	push hl                                                         ; $52d9
	call BCequWordAfter_HLequScriptStackAddr                        ; $52da
	jr Copy2xHLiIntoBCi_UpdateScriptStackAddr                       ; $52dd


Copy3BytesFromScriptStackToWordAfter:
	push af                                                         ; $52df
	push bc                                                         ; $52e0
	push de                                                         ; $52e1
	push hl                                                         ; $52e2
	call BCequWordAfter_HLequScriptStackAddr                        ; $52e3
	jr Copy3xHLiIntoBCi_UpdateScriptStackAddr                       ; $52e6


Copy4BytesFromScriptStackToWordAfter:
	push af                                                         ; $52e8
	push bc                                                         ; $52e9
	push de                                                         ; $52ea
	push hl                                                         ; $52eb
	call BCequWordAfter_HLequScriptStackAddr                        ; $52ec
	call CopyHLiIntoBCi                                             ; $52ef

Copy3xHLiIntoBCi_UpdateScriptStackAddr:
	call CopyHLiIntoBCi                                             ; $52f2

Copy2xHLiIntoBCi_UpdateScriptStackAddr:
	call CopyHLiIntoBCi                                             ; $52f5
	call CopyHLiIntoBCi                                             ; $52f8
	jp _SetHLasScriptStackAddr_RestoreRegs                          ; $52fb


BCequWordAtReturnAddressOf2ndSetOfRegPreservingFuncs:
; HL points to return address of above 3 funcs
	ld hl, sp+$0c                                                   ; $52fe

; HL - points to low byte of return address of func before this preserving regs
BCequWordAtReturnAddressOfRegPreservingFunc:
; DE = return address
	ld e, [hl]                                                      ; $5300
	inc hl                                                          ; $5301
	ld d, [hl]                                                      ; $5302

; BC = word at return address
	ld a, [de]                                                      ; $5303
	ld c, a                                                         ; $5304
	inc de                                                          ; $5305
	ld a, [de]                                                      ; $5306
	ld b, a                                                         ; $5307
	inc de                                                          ; $5308

; Replace the return address to be after BC
	ld [hl], d                                                      ; $5309
	dec hl                                                          ; $530a
	ld [hl], e                                                      ; $530b
	ret                                                             ; $530c


BCequWordAfter_HLequScriptStackAddr:
	call BCequWordAtReturnAddressOf2ndSetOfRegPreservingFuncs       ; $530d

	ld a, [wPtrToScriptStack]                                       ; $5310
	ld l, a                                                         ; $5313
	ld a, [wPtrToScriptStack+1]                                     ; $5314
	ld h, a                                                         ; $5317
	ret                                                             ; $5318


CopyHLiIntoBCi:
	ld a, [hl+]                                                     ; $5319
	ld [bc], a                                                      ; $531a
	inc bc                                                          ; $531b
	ret                                                             ; $531c


;
	ld b, b                                          ; $531d: $40
	cp e                                             ; $531e: $bb
	and b                                            ; $531f: $a0
	cp e                                             ; $5320: $bb
	nop                                              ; $5321: $00
	cp h                                             ; $5322: $bc
	ld h, b                                          ; $5323: $60
	cp h                                             ; $5324: $bc
	and b                                            ; $5325: $a0
	cp h                                             ; $5326: $bc
	call nz, wTaskParam3_word0                                   ; $5327: $c4 $bc $d0
	cp h                                             ; $532a: $bc
	ldh a, [$a3]                                     ; $532b: $f0 $a3
	add b                                            ; $532d: $80
	cp d                                             ; $532e: $ba
	ret nz                                           ; $532f: $c0

	nop                                              ; $5330: $00


Func_03_5331::
	ld hl, sList2ForCompactScriptLocs                                     ; $5331: $21 $40 $bb
	ld a, $ff                                        ; $5334: $3e $ff
	ld b, $20                                        ; $5336: $06 $20

jr_003_5338:
	ld [hl+], a                                      ; $5338: $22
	ld [hl+], a                                      ; $5339: $22
	ld [hl+], a                                      ; $533a: $22
	dec b                                            ; $533b: $05
	jr nz, jr_003_5338                               ; $533c: $20 $fa

	xor a                                            ; $533e: $af
	ld [$bdc7], a                                    ; $533f: $ea $c7 $bd
	ld [$bdc5], a                                    ; $5342: $ea $c5 $bd
	ld [sList2ForCompactScriptLocs], a                                    ; $5345: $ea $40 $bb
	ld [$bb41], a                                    ; $5348: $ea $41 $bb
	ld [$bb42], a                                    ; $534b: $ea $42 $bb
	ld [$d80c], a                                    ; $534e: $ea $0c $d8
	ld [$d80d], a                                    ; $5351: $ea $0d $d8
	ld [$d80e], a                                    ; $5354: $ea $0e $d8
	ld [$bde6], a                                    ; $5357: $ea $e6 $bd
	ld [$bde5], a                                    ; $535a: $ea $e5 $bd
	inc a                                            ; $535d: $3c
	ld [wUseRulesForTextLine1stOrLastChar], a                                    ; $535e: $ea $0f $d8
	ld [$bde2], a                                    ; $5361: $ea $e2 $bd
	ld hl, wPtrToScriptStack                                     ; $5364: $21 $fe $d1
	ld a, l                                          ; $5367: $7d
	ld [wPtrToScriptStack], a                                    ; $5368: $ea $fe $d1
	ld a, h                                          ; $536b: $7c
	ld [wPtrToScriptStack+1], a                                    ; $536c: $ea $ff $d1

Func_03_536f::
	xor a                                            ; $536f: $af
	ld [sIdxForCompactScriptLocList1], a                                    ; $5370: $ea $c9 $bd
	dec a                                            ; $5373: $3d
	ld [sCurrScriptIdx], a                                    ; $5374: $ea $cc $bd
	ld a, [$bdc5]                                    ; $5377: $fa $c5 $bd
	jp Jump_003_54ad                                 ; $537a: $c3 $ad $54


SetCurrScriptTable2_Save1stScriptWord:
; B:HL equals script table 2
	ld b, BANK(ScriptTable2)/4                                      ; $537d
	ld hl, ScriptTable2-$4000                                       ; $537f

; Set script src to that table entry, no offset
	ld de, $0000                                                    ; $5382
	ld a, [sCurrScriptIdx]                                          ; $5385
	call SetScriptSrcGivenParams                                    ; $5388
	call HLequNextFarTextWord                                       ; $538b

; Save 1st word there
	ld a, l                                                         ; $538e
	ld [s1stScriptTable2Word], a                                    ; $538f
	ld a, h                                                         ; $5392
	ld [s1stScriptTable2Word+1], a                                  ; $5393
	ret                                                             ; $5396


EndScriptEngine::
	ld a, $01                                        ; $5397: $3e $01
	ld [$c101], a                                    ; $5399: $ea $01 $c1
	ld a, $01                                        ; $539c: $3e $01
	ld [$d03c], a                                    ; $539e: $ea $3c $d0

; Restore stack pointer
	ld a, [sPreScriptSP]                                            ; $53a1
	ld l, a                                                         ; $53a4
	ld a, [sPreScriptSP+1]                                          ; $53a5
	ld h, a                                                         ; $53a8
	ld sp, hl                                                       ; $53a9

;
	ld a, [wTaskParam0_word0]                                    ; $53aa: $fa $b0 $d0
	and a                                            ; $53ad: $a7
	ret                                              ; $53ae: $c9


StartScriptEngine::
; Preserve stack pointer
	ld hl, sp+$00                                                   ; $53af
	ld a, l                                                         ; $53b1
	ld [sPreScriptSP], a                                            ; $53b2
	ld a, h                                                         ; $53b5
	ld [sPreScriptSP+1], a                                          ; $53b6

; For 1st run, load specified compact script loc 
	ld a, [sCompactScriptLoc]                                       ; $53b9
	ld l, a                                                         ; $53bc
	ld a, [sCompactScriptLoc+1]                                     ; $53bd
	ld h, a                                                         ; $53c0
	ld a, [sCompactScriptLoc+2]                                     ; $53c1
	ld b, a                                                         ; $53c4

.keepRunning:
; Set compact script loc to perform
	ld a, l                                                         ; $53c5
	ld [sCompactScriptLoc], a                                       ; $53c6
	ld a, h                                                         ; $53c9
	ld [sCompactScriptLoc+1], a                                     ; $53ca
	ld a, b                                                         ; $53cd
	ld [sCompactScriptLoc+2], a                                     ; $53ce

;
	call Call_003_5481                               ; $53d1: $cd $81 $54
	call SetScriptIdxFromCompactScriptLoc                               ; $53d4: $cd $f7 $54
	call SetScriptOffsetFromCompactScriptLoc                               ; $53d7: $cd $36 $52
	call PushCompactScriptLocInList1andLHB                               ; $53da: $cd $dd $54

; save curr offset into script
	ld a, [sCurrOffsetIntoScript]                                    ; $53dd: $fa $bc $bd
	ld l, a                                          ; $53e0: $6f
	ld a, [sCurrOffsetIntoScript+1]                                    ; $53e1: $fa $bd $bd
	ld h, a                                          ; $53e4: $67

	ld a, l                                          ; $53e5: $7d
	ld [$bdbe], a                                    ; $53e6: $ea $be $bd
	ld a, h                                          ; $53e9: $7c
	ld [$bdbf], a                                    ; $53ea: $ea $bf $bd

; run this loop 4 times
	ld c, $00                                        ; $53ed: $0e $00

.loop_53ef:
; store 0 in ba80's 4 structs (byte $0d)
	ld a, c                                          ; $53ef: $79
	push bc                                          ; $53f0: $c5
	call todo_HLequ_ba80_plusAtimes30h                               ; $53f1: $cd $d9 $65
	ld bc, $000d                                     ; $53f4: $01 $0d $00
	add hl, bc                                       ; $53f7: $09
	ld [hl], $00                                     ; $53f8: $36 $00

; to next C
	pop bc                                           ; $53fa: $c1
	inc c                                            ; $53fb: $0c
	ld a, c                                          ; $53fc: $79
	cp $04                                           ; $53fd: $fe $04
	jr c, .loop_53ef                                ; $53ff: $38 $ee

; Store script 1st byte, jumping if not $09
	call SetMainScript_GetNextByte                               ; $5401: $cd $3d $55
	ld [sExecScript1stByte], a                                    ; $5404: $ea $96 $bd
	cp $09                                           ; $5407: $fe $09
	jr nz, .not09start                               ; $5409: $20 $22

; else skip $09 byte, and do below loop
	call IncMainScriptSavedOffset                               ; $540b: $cd $78 $5b

.loop_540e:
; save curr offset into script
	ld a, [sCurrOffsetIntoScript]                                    ; $540e: $fa $bc $bd
	ld l, a                                          ; $5411: $6f
	ld a, [sCurrOffsetIntoScript+1]                                    ; $5412: $fa $bd $bd
	ld h, a                                          ; $5415: $67

	ld a, l                                          ; $5416: $7d
	ld [$bdbe], a                                    ; $5417: $ea $be $bd
	ld a, h                                          ; $541a: $7c
	ld [$bdbf], a                                    ; $541b: $ea $bf $bd

; Execute script, and store its returns in temp LHB
	ld hl, $0000                                     ; $541e: $21 $00 $00
	call ExecScriptUpToNextScriptByteOrWord                               ; $5421: $cd $17 $5d
	call SetTempLHBforScriptRelatedReturnsToLHB                               ; $5424: $cd $38 $65

; Keep looping while return code is 'keep going' ($ffffff)
	bit 7, b                                         ; $5427: $cb $78
	jr nz, .loop_540e                               ; $5429: $20 $e3

	jr .cont_5459                                   ; $542b: $18 $2c

.not09start:
	ld a, [sExecScript1stByte]                                    ; $542d: $fa $96 $bd
	cp $0a                                           ; $5430: $fe $0a
	jr nz, .not0aStart                               ; $5432: $20 $06

	call BHLequFFFFFFh                               ; $5434: $cd $fd $66
	jp .cont_5459                                 ; $5437: $c3 $59 $54

.not0aStart:
; eg a multi-option $08, or $28
	ld a, $ff                                        ; $543a: $3e $ff
	ld [$bdca], a                                    ; $543c: $ea $ca $bd

.loop_543f:
; set curr script offset to previous normal script run start (eg $08/$28)
	ld a, [$bdbe]                                    ; $543f: $fa $be $bd
	ld l, a                                          ; $5442: $6f
	ld a, [$bdbf]                                    ; $5443: $fa $bf $bd
	ld h, a                                          ; $5446: $67

	ld a, l                                          ; $5447: $7d
	ld [sCurrOffsetIntoScript], a                                    ; $5448: $ea $bc $bd
	ld a, h                                          ; $544b: $7c
	ld [sCurrOffsetIntoScript+1], a                                    ; $544c: $ea $bd $bd

;
	call Call_003_64ba                               ; $544f: $cd $ba $64
	call SetTempLHBforScriptRelatedReturnsToLHB                               ; $5452: $cd $38 $65
	bit 7, b                                         ; $5455: $cb $78
	jr nz, .loop_543f                               ; $5457: $20 $e6

.cont_5459:
	call DecIdxForCompactScriptLocList1                               ; $5459: $cd $e8 $54
	ld hl, sTempLHBFromScriptRelatedReturns+2                                     ; $545c: $21 $a5 $bd
	ld a, [hl]                                       ; $545f: $7e
	cp $40                                           ; $5460: $fe $40
	jr c, .toKeepRunning                                ; $5462: $38 $17

	cp $80                                           ; $5464: $fe $80
	jr nc, .toKeepRunning                               ; $5466: $30 $13

	cp $7f                                           ; $5468: $fe $7f
	jr z, .br_5475                                ; $546a: $28 $09

	call Call_003_54a1                               ; $546c: $cd $a1 $54
	ld a, [hl]                                       ; $546f: $7e
	and $3f                                          ; $5470: $e6 $3f
	ld [hl], a                                       ; $5472: $77
	jr .toKeepRunning                                   ; $5473: $18 $06

.br_5475:
	call Call_003_54c5                               ; $5475: $cd $c5 $54
	call SetTempLHBforScriptRelatedReturnsToLHB                               ; $5478: $cd $38 $65

.toKeepRunning:
	call LHBequTempBytesForScriptRelatedReturns                               ; $547b: $cd $45 $65
	jp .keepRunning                                 ; $547e: $c3 $c5 $53


; A - compact script loc 3rd byte (idx/2)
Call_003_5481:
	cp $1f                                           ; $5481: $fe $1f
	jr nc, :+                               ; $5483: $30 $04

	xor a                                            ; $5485: $af
	ld [$bdc5], a                                    ; $5486: $ea $c5 $bd

:	ld de, sList2ForCompactScriptLocs                                     ; $5489: $11 $40 $bb

; A - list idx
StoreCompactScriptLocInListDEandLHB:
; Get entry from idx A, then store curr details in list and in LHB
	call HLequDEplus3A                                              ; $548c

	ld a, [sCompactScriptLoc]                                       ; $548f
	ld [hl+], a                                                     ; $5492
	ld e, a                                                         ; $5493
	ld a, [sCompactScriptLoc+1]                                     ; $5494
	ld [hl+], a                                                     ; $5497
	ld d, a                                                         ; $5498
	ld a, [sCompactScriptLoc+2]                                     ; $5499
	ld [hl+], a                                                     ; $549c
	ld b, a                                                         ; $549d
	jp wSwapDEandHL                                                 ; $549e


Call_003_54a1:
	ld a, [$bdc7]                                    ; $54a1: $fa $c7 $bd
	cp $1f                                           ; $54a4: $fe $1f
	jr nc, Jump_003_54ad                               ; $54a6: $30 $05

	inc a                                            ; $54a8: $3c
	ld [$bdc7], a                                    ; $54a9: $ea $c7 $bd
	dec a                                            ; $54ac: $3d

Jump_003_54ad:
	ld de, $bc00                                     ; $54ad: $11 $00 $bc
	call HLequDEplus3A                               ; $54b0: $cd $15 $52
	ld a, [hl+]                                      ; $54b3: $2a
	ld [sCompactScriptLoc], a                                    ; $54b4: $ea $9f $bd
	ld e, a                                          ; $54b7: $5f
	ld a, [hl+]                                      ; $54b8: $2a
	ld [sCompactScriptLoc+1], a                                    ; $54b9: $ea $a0 $bd
	ld d, a                                          ; $54bc: $57
	ld a, [hl+]                                      ; $54bd: $2a
	ld [sCompactScriptLoc+2], a                                    ; $54be: $ea $a1 $bd
	ld b, a                                          ; $54c1: $47
	jp wSwapDEandHL                                         ; $54c2: $c3 $d4 $ce


Call_003_54c5:
; make this non-0
	ld a, [$bdc7]                                    ; $54c5: $fa $c7 $bd
	and a                                            ; $54c8: $a7
	jr nz, :+                               ; $54c9: $20 $04

	dec a                                            ; $54cb: $3d
	ld [$bdc7], a                                    ; $54cc: $ea $c7 $bd

; deb, then hlb is gotten from bc00+3A
:	ld de, $bc00                                     ; $54cf: $11 $00 $bc
	call HLequDEplus3A                               ; $54d2: $cd $15 $52
	ld e, [hl]                                       ; $54d5: $5e
	inc hl                                           ; $54d6: $23
	ld d, [hl]                                       ; $54d7: $56
	inc hl                                           ; $54d8: $23
	ld b, [hl]                                       ; $54d9: $46
	jp wSwapDEandHL                                         ; $54da: $c3 $d4 $ce


PushCompactScriptLocInList1andLHB:
; A = curr idx in list+1 (new idx to store details)
	ld hl, sIdxForCompactScriptLocList1                             ; $54dd
	inc [hl]                                                        ; $54e0
	ld a, [hl]                                                      ; $54e1

; Set in stack + get in LHB, the mixed script offset and idx
	ld de, sList1ForCompactScriptLocs                               ; $54e2
	jp StoreCompactScriptLocInListDEandLHB                          ; $54e5


DecIdxForCompactScriptLocList1:
	ld hl, sIdxForCompactScriptLocList1                             ; $54e8
	dec [hl]                                                        ; $54eb
	ret                                                             ; $54ec


SetScriptIdxFromScriptStack:
; Pop 2 bytes from script stack, with the 1st being the new script idx
	call Copy2BytesFromScriptStackToWordAfter                       ; $54ed
	dw wPoppedScriptStackWord

	ld a, [wPoppedScriptStackWord]                                  ; $54f2
	jr SetNewScriptIdx                                              ; $54f5


SetScriptIdxFromCompactScriptLoc:
; Script idx A is 3rd byte with 2nd byte bit 7 as low bit
	ld a, [sCompactScriptLoc+1]                                     ; $54f7
	sla a                                                           ; $54fa
	ld a, [sCompactScriptLoc+2]                                     ; $54fc
	rla                                                             ; $54ff

; A - new script idx
SetNewScriptIdx:
; If script idx has changed, update table 2's script word too
	ld hl, sCurrScriptIdx                                     ; $5500: $21 $cc $bd
	cp [hl]                                          ; $5503: $be
	ret z                                            ; $5504: $c8

	ld [hl], a                                       ; $5505: $77
	jp SetCurrScriptTable2_Save1stScriptWord                                 ; $5506: $c3 $7d $53


AequNextMainScriptByte:
	push bc                                                         ; $5509
	push de                                                         ; $550a
	push hl                                                         ; $550b
	call SetCurrMainScript                                          ; $550c
	call AequNextFarTextByte                                        ; $550f
	call IncMainScriptSavedOffset                                   ; $5512
	pop hl                                                          ; $5515
	pop de                                                          ; $5516
	pop bc                                                          ; $5517
	ret                                                             ; $5518


SetCurrMainScript:
; Get DE (script offset) from sram
	ld a, [sCurrOffsetIntoScript]                                   ; $5519
	ld e, a                                                         ; $551c
	ld a, [sCurrOffsetIntoScript+1]                                 ; $551d
	ld d, a                                                         ; $5520

; Set the new script src
	ld a, [sCurrScriptIdx]                                          ; $5521
	ld b, BANK(MainScripts)/4                                       ; $5524
	ld hl, MainScripts-$4000                                        ; $5526
	jp SetScriptSrcGivenParams                                      ; $5529


DecCurrOffsetIntoMainScript:
; Dec offset, if it's $ff now...
	ld a, [sCurrOffsetIntoScript]                                   ; $552c
	dec a                                                           ; $552f
	ld [sCurrOffsetIntoScript], a                                   ; $5530

	inc a                                                           ; $5533
	ret nz                                                          ; $5534

; It rolled over from $00, so dec high byte
	ld a, [sCurrOffsetIntoScript+1]                                 ; $5535
	dec a                                                           ; $5538
	ld [sCurrOffsetIntoScript+1], a                                 ; $5539
	ret                                                             ; $553c


SetMainScript_GetNextByte:
	call SetCurrMainScript                                          ; $553d
	jp GetNextFarTextByte                                           ; $5540


HLequMainScriptBigEndianWord:
	push af                                                         ; $5543
	push bc                                                         ; $5544
	push de                                                         ; $5545

; HL = word from script main script for curr script
	call SetCurrMainScript                                          ; $5546
	call HLequNextFarTextWord                                       ; $5549

; Swap as it's a big-endian word, then inc the main script script offset to match
	ld a, l                                                         ; $554c
	ld l, h                                                         ; $554d
	ld h, a                                                         ; $554e
	call IncMainScriptSavedOffset                                   ; $554f
	call IncMainScriptSavedOffset                                   ; $5552

	pop de                                                          ; $5555
	pop bc                                                          ; $5556
	pop af                                                          ; $5557
	ret                                                             ; $5558


GetBHLinMainScript:
	push af                                                         ; $5559
	push de                                                         ; $555a

; B:H = 1st 2 bytes from main script
	call HLequMainScriptBigEndianWord                               ; $555b
	ld b, h                                                         ; $555e
	ld h, l                                                         ; $555f

; L = 3rd byte, inc main script script offset to match
	call AequNextFarTextByte                                        ; $5560
	call IncMainScriptSavedOffset                                   ; $5563
	ld l, a                                                         ; $5566

	pop de                                                          ; $5567
	pop af                                                          ; $5568
	ret                                                             ; $5569


DEHLequBigEndianWordsInMainScript:
	call HLequMainScriptBigEndianWord                               ; $556a
	call wSwapDEandHL                                               ; $556d
	jp HLequMainScriptBigEndianWord                                 ; $5570


; If script byte >= $c0, it-$c0 is high byte of word instead
DEequNextMainScriptByteOrWord:
; If next script byte < $c0, return DE = it
	call AequNextMainScriptByte                                     ; $5573
	ld d, $00                                                       ; $5576
	ld e, a                                                         ; $5578
	cp $c0                                                          ; $5579
	ret c                                                           ; $557b

; Else DE = the word script byte with D-$c0
	sub $c0                                                         ; $557c
	ld d, a                                                         ; $557e
	call AequNextMainScriptByte                                     ; $557f
	ld e, a                                                         ; $5582
	ret                                                             ; $5583


; Returns zflag set if script word == 0
; Sets HL to orig BC
BCequScriptByteOrWordPlusNextOffset:
; DE = next script word
	call DEequNextMainScriptByteOrWord                              ; $5584
	push de                                                         ; $5587

; BC = script offset + above script word, HL = orig BC
	ld a, [sCurrOffsetIntoScript]                                   ; $5588
	ld l, a                                                         ; $558b
	ld a, [sCurrOffsetIntoScript+1]                                 ; $558c
	ld h, a                                                         ; $558f
	add hl, de                                                      ; $5590
	call wSwapBCandHL                                               ; $5591

; Pop script word, and `or` to check if 0
	pop de                                                          ; $5594
	ld a, d                                                         ; $5595
	or e                                                            ; $5596
	ret                                                             ; $5597


CpCurrOffsetIntoScriptToBC:
	ld a, [sCurrOffsetIntoScript]                                   ; $5598
	ld l, a                                                         ; $559b
	ld a, [sCurrOffsetIntoScript+1]                                 ; $559c
	ld h, a                                                         ; $559f
	jp wCpHLtoBC                                                    ; $55a0


GetBupTo1FhAndHLinMainScript:
	call GetBHLinMainScript                                         ; $55a3
	ld a, b                                                         ; $55a6
	and $1f                                                         ; $55a7
	ld b, a                                                         ; $55a9
	ret                                                             ; $55aa


; Returns B = far bank >> 4
; Returns HL = far addr, with bits 7&6 containing low 2 shifted out bits of B
GetTextSourceForScriptsTextsIdxedByMainScriptWord:
; DE (an offset) = main script big-endian word *2-1
; As the table is 1-idxed, this has idx 1 (1*2-1 = 1), so script srces are 1-idxed too
	call HLequMainScriptBigEndianWord                               ; $55ab
	add hl, hl                                                      ; $55ae
	dec hl                                                          ; $55af
	call wSwapDEandHL                                               ; $55b0

; Use as offset into curr script's texts, and get byte there
	ld a, [sCurrScriptIdx]                                          ; $55b3
	ld b, BANK(ScriptsTexts)/4                                      ; $55b6
	ld hl, ScriptsTexts-$4000                                       ; $55b8
	call SetScriptSrcGivenParams                                    ; $55bb
	call GetNextFarTextByte                                         ; $55be

; If it's a text byte for TextByte09_Ret, or HandleTextByteA0hToE7h_SmallDict's $a0-$a7,
; skip it, as the former stops the text completely naturally,
; and the latter do through text code $0b (stop text completely)
	cp $09                                                          ; $55c1
	jr z, .skipTextByte                                             ; $55c3

	cp $a0                                                          ; $55c5
	jr c, .otherTextBytes                                           ; $55c7

	cp $a8                                                          ; $55c9
	jr nc, .otherTextBytes                                          ; $55cb

.skipTextByte:
	call Add1toFarTextByteSrc                                       ; $55cd

.otherTextBytes:
; Either way, return src of text in B:HL
	jp GetFarTextByteSrc                                            ; $55d0


; A - if 1, 3 bytes are read. A = script, HL = offset. Bank $ff means same script
;     if 0, 2 bytes are read. HL = script offset
BHLequCompactScriptLocFromScriptAddrInScriptBytes:
; Jump if just reading a word
	and $01                                                         ; $55d3
	jr z, .wordParam                                                ; $55d5

; Get script idx/offset from mmain script
	call AequNextMainScriptByte                                     ; $55d7
	push af                                                         ; $55da
	call HLequMainScriptBigEndianWord                               ; $55db
	pop af                                                          ; $55de

; Return if not $ff, else perform jump in curr script
	cp $ff                                                          ; $55df
	jr nz, .returnCompactScriptLoc                                  ; $55e1

	jr :+                                                           ; $55e3

.wordParam:
	call HLequMainScriptBigEndianWord                               ; $55e5

; HL += offset into script-2 (ie offset from start of big-endian word)
:	ld a, [sCurrOffsetIntoScript]                                   ; $55e8
	add l                                                           ; $55eb
	ld l, a                                                         ; $55ec
	ld a, [sCurrOffsetIntoScript+1]                                 ; $55ed
	adc h                                                           ; $55f0
	ld h, a                                                         ; $55f1
	dec hl                                                          ; $55f2
	dec hl                                                          ; $55f3

; Jump to offset for the current offset
	ld a, [sCurrScriptIdx]                                          ; $55f4

.returnCompactScriptLoc:
; A = script idx, HL = unsigned offset. Script idx shifts 1 right and can set offset bit 7
	ld b, a                                                         ; $55f7
	srl b                                                           ; $55f8
	res 7, h                                                        ; $55fa
	jr nc, :+                                                       ; $55fc
	set 7, h                                                        ; $55fe
:	ret                                                             ; $5600


todo_retHLifLtA000hOrUseTable2WordAndConvHL:
; h must be $a0+
	ld a, h                                          ; $5601: $7c
	cp $a0                                           ; $5602: $fe $a0
	ret c                                            ; $5604: $d8

;
	ld a, [$bd90]                                    ; $5605: $fa $90 $bd
	ld c, a                                          ; $5608: $4f
	ld a, [$bd91]                                    ; $5609: $fa $91 $bd
	ld b, a                                          ; $560c: $47

; jump if h is $e0+
	ld a, h                                          ; $560d: $7c
	ld de, $2000                                     ; $560e: $11 $00 $20
	cp $e0                                           ; $5611: $fe $e0
	jr nc, .cont_5620                               ; $5613: $30 $0b

; h is between $a0 and $df. with de, it's $0000-$3fff. add table2 word
	ld a, [s1stScriptTable2Word]                                    ; $5615: $fa $a6 $bd
	ld c, a                                          ; $5618: $4f
	ld a, [s1stScriptTable2Word+1]                                    ; $5619: $fa $a7 $bd
	ld b, a                                          ; $561c: $47
	ld de, $6000                                     ; $561d: $11 $00 $60

.cont_5620:
	add hl, de                                       ; $5620: $19
	add hl, bc                                       ; $5621: $09
	ret                                              ; $5622: $c9


;
	push af                                          ; $5623: $f5
	push bc                                          ; $5624: $c5
	ld a, e                                          ; $5625: $7b
	ld [$bddc], a                                    ; $5626: $ea $dc $bd
	ld a, d                                          ; $5629: $7a
	ld [$bddd], a                                    ; $562a: $ea $dd $bd
	xor a                                            ; $562d: $af
	ld [$bdde], a                                    ; $562e: $ea $de $bd
	ld a, l                                          ; $5631: $7d
	and $0f                                          ; $5632: $e6 $0f
	srl h                                            ; $5634: $cb $3c
	rr l                                             ; $5636: $cb $1d
	srl h                                            ; $5638: $cb $3c
	rr l                                             ; $563a: $cb $1d
	srl h                                            ; $563c: $cb $3c
	rr l                                             ; $563e: $cb $1d
	srl h                                            ; $5640: $cb $3c
	rr l                                             ; $5642: $cb $1d
	call Call_003_5652                               ; $5644: $cd $52 $56
	ld a, [$bddc]                                    ; $5647: $fa $dc $bd
	ld e, a                                          ; $564a: $5f
	ld a, [$bddd]                                    ; $564b: $fa $dd $bd
	ld d, a                                          ; $564e: $57
	pop bc                                           ; $564f: $c1
	pop af                                           ; $5650: $f1
	ret                                              ; $5651: $c9


; A - ??? B value from script bytes that goes to $1f
; HL - ??? HL value from script bytes
Call_003_5652:
	push af                                          ; $5652: $f5
	push af                                          ; $5653: $f5
	push hl                                          ; $5654: $e5

;
	ld a, [$bdce]                                    ; $5655: $fa $ce $bd
	ld l, a                                          ; $5658: $6f
	ld a, [$bdcf]                                    ; $5659: $fa $cf $bd
	ld h, a                                          ; $565c: $67
	ld a, [$bdd0]                                    ; $565d: $fa $d0 $bd
	ld b, a                                          ; $5660: $47

;
	ld a, l                                          ; $5661: $7d
	ld [$bddc], a                                    ; $5662: $ea $dc $bd
	ld a, h                                          ; $5665: $7c
	ld [$bddd], a                                    ; $5666: $ea $dd $bd
	ld a, b                                          ; $5669: $78
	ld [$bdde], a                                    ; $566a: $ea $de $bd

	pop hl                                           ; $566d: $e1
	pop af                                           ; $566e: $f1
	call todo_retHLifLtA000hOrUseTable2WordAndConvHL                               ; $566f: $cd $01 $56
	pop af                                           ; $5672: $f1
	and $1f                                          ; $5673: $e6 $1f
	inc a                                            ; $5675: $3c
	call Call_003_5740                               ; $5676: $cd $40 $57
	cp $20                                           ; $5679: $fe $20
	jr nc, .cont_56bd                               ; $567b: $30 $40

	call Call_003_57aa                               ; $567d: $cd $aa $57
	ld a, [$bdde]                                    ; $5680: $fa $de $bd
	ld l, a                                          ; $5683: $6f
	ld a, [$bddf]                                    ; $5684: $fa $df $bd
	ld h, a                                          ; $5687: $67
	ld a, [$c0d2]                                    ; $5688: $fa $d2 $c0
	ld e, a                                          ; $568b: $5f
	ld a, [$c0d3]                                    ; $568c: $fa $d3 $c0
	ld d, a                                          ; $568f: $57
	call wCpHLtoDE                                       ; $5690: $cd $80 $ce
	jr nz, .cont_56a8                               ; $5693: $20 $13

	ld a, [$bddc]                                    ; $5695: $fa $dc $bd
	ld l, a                                          ; $5698: $6f
	ld a, [$bddd]                                    ; $5699: $fa $dd $bd
	ld h, a                                          ; $569c: $67
	ld a, [$c0d0]                                    ; $569d: $fa $d0 $c0
	ld e, a                                          ; $56a0: $5f
	ld a, [$c0d1]                                    ; $56a1: $fa $d1 $c0
	ld d, a                                          ; $56a4: $57
	call wCpHLtoDE                                       ; $56a5: $cd $80 $ce

.cont_56a8:
	jr c, .cont_56bd                                ; $56a8: $38 $13

	call Call_003_57ca                               ; $56aa: $cd $ca $57
	ld a, e                                          ; $56ad: $7b
	ld [$bddc], a                                    ; $56ae: $ea $dc $bd
	ld a, d                                          ; $56b1: $7a
	ld [$bddd], a                                    ; $56b2: $ea $dd $bd
	ld a, l                                          ; $56b5: $7d
	ld [$bdde], a                                    ; $56b6: $ea $de $bd
	ld a, h                                          ; $56b9: $7c
	ld [$bddf], a                                    ; $56ba: $ea $df $bd

.cont_56bd:
	call Call_003_577e                               ; $56bd: $cd $7e $57
	push hl                                          ; $56c0: $e5
	jr nc, .br_56e1                               ; $56c1: $30 $1e

	call todo_AequMaskForBitDenotedBy_bdd8                               ; $56c3: $cd $9d $57
	ld l, c                                          ; $56c6: $69
	inc l                                            ; $56c7: $2c
	db _LD_DE_D16
:	sla a ; $56c9: $cb $27
	dec l                                            ; $56cb: $2d
	jr nz, :-                                     ; $56cc: $20 $fb

	cpl                                              ; $56ce: $2f
	and b                                            ; $56cf: $a0
	ld b, a                                          ; $56d0: $47
	ld l, c                                          ; $56d1: $69
	inc l                                            ; $56d2: $2c
	ld a, [$bddc]                                    ; $56d3: $fa $dc $bd
	db _LD_DE_D16
:	sla a ; $56d7: $cb $27
	dec l                                            ; $56d9: $2d
	jr nz, :-                                     ; $56da: $20 $fb

	or b                                             ; $56dc: $b0
	ld b, a                                          ; $56dd: $47
	pop hl                                           ; $56de: $e1
	ld [hl], b                                       ; $56df: $70
	ret                                              ; $56e0: $c9

.br_56e1:
	ld a, [$bdd4]                                    ; $56e1: $fa $d4 $bd
	ld l, a                                          ; $56e4: $6f
	ld a, $01                                        ; $56e5: $3e $01
	inc l                                            ; $56e7: $2c

:	sla a                                            ; $56e8: $cb $27
	dec l                                            ; $56ea: $2d
	jr nz, :-                               ; $56eb: $20 $fb

	dec a                                            ; $56ed: $3d
	ld l, c                                          ; $56ee: $69
	inc l                                            ; $56ef: $2c
	db _LD_DE_D16
:	sla a ; $56f1: $cb $27
	dec l                                            ; $56f3: $2d
	jr nz, :-                                    ; $56f4: $20 $fb

	cpl                                              ; $56f6: $2f
	and b                                            ; $56f7: $a0
	ld b, a                                          ; $56f8: $47
	ld a, c                                          ; $56f9: $79
	inc a                                            ; $56fa: $3c
	jr .toLoop_56fd                                   ; $56fb: $18 $0e

.loop_56fd:
	ld hl, $bddc                                     ; $56fd: $21 $dc $bd
	sla [hl]                                         ; $5700: $cb $26
	inc hl                                           ; $5702: $23
	rl [hl]                                          ; $5703: $cb $16
	inc hl                                           ; $5705: $23
	rl [hl]                                          ; $5706: $cb $16
	inc hl                                           ; $5708: $23
	rl [hl]                                          ; $5709: $cb $16

.toLoop_56fd:
	dec a                                            ; $570b: $3d
	jr nz, .loop_56fd                               ; $570c: $20 $ef

	ld a, [$bdd8]                                    ; $570e: $fa $d8 $bd
	dec a                                            ; $5711: $3d
	add c                                            ; $5712: $81
	srl a                                            ; $5713: $cb $3f
	srl a                                            ; $5715: $cb $3f
	srl a                                            ; $5717: $cb $3f
	ld c, a                                          ; $5719: $4f
	ld de, $bddc                                     ; $571a: $11 $dc $bd
	ld a, [de]                                       ; $571d: $1a
	inc de                                           ; $571e: $13
	or b                                             ; $571f: $b0
	pop hl                                           ; $5720: $e1
	ld [hl-], a                                      ; $5721: $32
	jr .toLoop_5724                                   ; $5722: $18 $03

.loop_5724:
	ld a, [de]                                       ; $5724: $1a
	ld [hl-], a                                      ; $5725: $32
	inc de                                           ; $5726: $13

.toLoop_5724:
	dec c                                            ; $5727: $0d
	jr nz, .loop_5724                               ; $5728: $20 $fa

	ld b, [hl]                                       ; $572a: $46
	ld a, [$bdd6]                                    ; $572b: $fa $d6 $bd
	and $07                                          ; $572e: $e6 $07
	jr z, .cont_5739                                ; $5730: $28 $07

	ld c, a                                          ; $5732: $4f
	xor a                                            ; $5733: $af
:	scf                                              ; $5734: $37
	rra                                              ; $5735: $1f
	dec c                                            ; $5736: $0d
	jr nz, :-                               ; $5737: $20 $fb

.cont_5739:
	and b                                            ; $5739: $a0
	ld b, a                                          ; $573a: $47
	ld a, [de]                                       ; $573b: $1a
	or b                                             ; $573c: $b0
	ld b, a                                          ; $573d: $47
	ld [hl], b                                       ; $573e: $70
	ret                                              ; $573f: $c9


; A -
; HL -
Call_003_5740:
; Store LHA in bdd6-bdd8
	ld [$bdd8], a                                    ; $5740: $ea $d8 $bd
	push af                                          ; $5743: $f5
	ld a, l                                          ; $5744: $7d
	ld [$bdd6], a                                    ; $5745: $ea $d6 $bd
	ld a, h                                          ; $5748: $7c
	ld [$bdd7], a                                    ; $5749: $ea $d7 $bd
	pop af                                           ; $574c: $f1

; hl += a-1
	dec a                                            ; $574d: $3d
	ld e, a                                          ; $574e: $5f
	ld d, $00                                        ; $574f: $16 $00
	add hl, de                                       ; $5751: $19

; low 3 bits of L in E and bdd4, clear bdd5
	ld a, l                                          ; $5752: $7d
	and $07                                          ; $5753: $e6 $07
	ld e, a                                          ; $5755: $5f

	ld a, e                                          ; $5756: $7b
	ld [$bdd4], a                                    ; $5757: $ea $d4 $bd
	ld a, d                                          ; $575a: $7a
	ld [$bdd5], a                                    ; $575b: $ea $d5 $bd

; hl /= 8, and store in bdd3/2
	srl h                                            ; $575e: $cb $3c
	rr l                                             ; $5760: $cb $1d
	srl h                                            ; $5762: $cb $3c
	rr l                                             ; $5764: $cb $1d
	srl h                                            ; $5766: $cb $3c
	rr l                                             ; $5768: $cb $1d

	ld a, l                                          ; $576a: $7d
	ld [$bdd2], a                                    ; $576b: $ea $d2 $bd
	ld a, h                                          ; $576e: $7c
	ld [$bdd3], a                                    ; $576f: $ea $d3 $bd

; clear 4 bytes from c0d0
	ld hl, $c0d0                                     ; $5772: $21 $d0 $c0

; HL -
todo_Aequ_bdd8_clear4bytesAtHL:
	xor a                                            ; $5775: $af
	ld [hl+], a                                      ; $5776: $22
	ld [hl+], a                                      ; $5777: $22
	ld [hl+], a                                      ; $5778: $22
	ld [hl], a                                       ; $5779: $77

	ld a, [$bdd8]                                    ; $577a: $fa $d8 $bd
	ret                                              ; $577d: $c9


Call_003_577e:
	ld hl, $bdd4                                     ; $577e: $21 $d4 $bd
	ld a, $07                                        ; $5781: $3e $07
	sub [hl]                                         ; $5783: $96
	ld c, a                                          ; $5784: $4f

;
	ld a, [$bdd2]                                    ; $5785: $fa $d2 $bd
	ld l, a                                          ; $5788: $6f
	ld a, [$bdd3]                                    ; $5789: $fa $d3 $bd
	ld h, a                                          ; $578c: $67

	ld de, $a3f0                                     ; $578d: $11 $f0 $a3
	add hl, de                                       ; $5790: $19

;
	ld b, [hl]                                       ; $5791: $46
	ld a, [$bdd4]                                    ; $5792: $fa $d4 $bd
	inc a                                            ; $5795: $3c
	inc a                                            ; $5796: $3c
	ld e, a                                          ; $5797: $5f
	ld a, [$bdd8]                                    ; $5798: $fa $d8 $bd
	cp e                                             ; $579b: $bb
	ret                                              ; $579c: $c9


todo_AequMaskForBitDenotedBy_bdd8:
; l = [bdd8]+1
	ld a, [$bdd8]                                    ; $579d: $fa $d8 $bd
	ld l, a                                          ; $57a0: $6f
	inc l                                            ; $57a1: $2c

; A = 1 << (L-1), ie A = 1 < [bdd8]
	xor a                                            ; $57a2: $af
	scf                                              ; $57a3: $37
:	rla                                              ; $57a4: $17
	dec l                                            ; $57a5: $2d
	jr nz, :-                               ; $57a6: $20 $fc

; A = mask for the power of 2
	dec a                                            ; $57a8: $3d
	ret                                              ; $57a9: $c9


Call_003_57aa:
; b = bdd8, clear its bit 4 and 5
	ld a, [$bdd8]                                    ; $57aa: $fa $d8 $bd
	ld b, a                                          ; $57ad: $47
	res 4, b                                         ; $57ae: $cb $a0
	res 5, b                                         ; $57b0: $cb $a8

; a = A's bit 3 and 4 in low 2 bits
	sla a                                            ; $57b2: $cb $27
	swap a                                           ; $57b4: $cb $37
	and $03                                          ; $57b6: $e6 $03

; hl = c0d0 + a
	push de                                          ; $57b8: $d5
	ld e, a                                          ; $57b9: $5f
	ld d, $00                                        ; $57ba: $16 $00
	ld hl, $c0d0                                     ; $57bc: $21 $d0 $c0
	add hl, de                                       ; $57bf: $19
	pop de                                           ; $57c0: $d1

; store $80 in 1 of c0d0-c0d3. if b == 0, [hl] contains $01, b == 1 => $02, etc
	ld [hl], $80                                     ; $57c1: $36 $80
	inc b                                            ; $57c3: $04

:	rlc [hl]                                         ; $57c4: $cb $06
	dec b                                            ; $57c6: $05
	jr nz, :-                               ; $57c7: $20 $fb

	ret                                              ; $57c9: $c9


Call_003_57ca:
; dehl = c0d0-c0d3
	ld a, [$c0d2]                                    ; $57ca: $fa $d2 $c0
	ld l, a                                          ; $57cd: $6f
	ld a, [$c0d3]                                    ; $57ce: $fa $d3 $c0
	ld h, a                                          ; $57d1: $67

	ld a, [$c0d0]                                    ; $57d2: $fa $d0 $c0
	ld e, a                                          ; $57d5: $5f
	ld a, [$c0d1]                                    ; $57d6: $fa $d1 $c0
	ld d, a                                          ; $57d9: $57

; if de == 0, hl -= 1. de -= 1
	or e                                             ; $57da: $b3
	jr nz, :+                               ; $57db: $20 $01
	dec hl                                           ; $57dd: $2b
:	dec de                                           ; $57de: $1b
	ret                                              ; $57df: $c9


;
	push af                                          ; $57e0: $f5
	ld a, l                                          ; $57e1: $7d
	and $0f                                          ; $57e2: $e6 $0f
	srl h                                            ; $57e4: $cb $3c
	rr l                                             ; $57e6: $cb $1d
	srl h                                            ; $57e8: $cb $3c
	rr l                                             ; $57ea: $cb $1d
	srl h                                            ; $57ec: $cb $3c
	rr l                                             ; $57ee: $cb $1d
	srl h                                            ; $57f0: $cb $3c
	rr l                                             ; $57f2: $cb $1d
	call Call_003_5821                               ; $57f4: $cd $21 $58
	ld a, [$bddc]                                    ; $57f7: $fa $dc $bd
	ld e, a                                          ; $57fa: $5f
	ld a, [$bddd]                                    ; $57fb: $fa $dd $bd
	ld d, a                                          ; $57fe: $57
	ld a, [$bdde]                                    ; $57ff: $fa $de $bd
	ld b, a                                          ; $5802: $47
	pop af                                           ; $5803: $f1
	ret                                              ; $5804: $c9


Call_003_5805:
	call todo_Set_bdba_to_bdb8_toBupTo1FhAndHLinMainScripts                               ; $5805: $cd $18 $58
	push bc                                          ; $5808: $c5
	push hl                                          ; $5809: $e5
	push af                                          ; $580a: $f5
	call Call_003_5821                               ; $580b: $cd $21 $58
	call Call_003_702d                               ; $580e: $cd $2d $70
	pop af                                           ; $5811: $f1
	pop hl                                           ; $5812: $e1
	call Call_003_5652                               ; $5813: $cd $52 $56
	pop bc                                           ; $5816: $c1
	ret                                              ; $5817: $c9


todo_Set_bdba_to_bdb8_toBupTo1FhAndHLinMainScripts:
	push bc                                          ; $5818: $c5
	call GetBupTo1FhAndHLinMainScript                               ; $5819: $cd $a3 $55
	call todo_Set_bdb8_to_bdba_toLHB                               ; $581c: $cd $6a $6a
	pop bc                                           ; $581f: $c1
	ret                                              ; $5820: $c9


Call_003_5821:
	push af                                          ; $5821: $f5
	call todo_retHLifLtA000hOrUseTable2WordAndConvHL                               ; $5822: $cd $01 $56
	pop af                                           ; $5825: $f1
	and $1f                                          ; $5826: $e6 $1f
	inc a                                            ; $5828: $3c

; sets some bytes
	call Call_003_5740                               ; $5829: $cd $40 $57
	ld hl, $bddc                                     ; $582c: $21 $dc $bd

;
	call todo_Aequ_bdd8_clear4bytesAtHL                               ; $582f: $cd $75 $57
	ld c, a                                          ; $5832: $4f
	call Call_003_5857                               ; $5833: $cd $57 $58
	ld a, [$bddc]                                    ; $5836: $fa $dc $bd
	ld e, a                                          ; $5839: $5f
	ld a, [$bddd]                                    ; $583a: $fa $dd $bd
	ld d, a                                          ; $583d: $57
	ld a, [$bdde]                                    ; $583e: $fa $de $bd
	ld l, a                                          ; $5841: $6f
	ld a, [$bddf]                                    ; $5842: $fa $df $bd
	ld h, a                                          ; $5845: $67
	ld a, e                                          ; $5846: $7b
	ld [$bdce], a                                    ; $5847: $ea $ce $bd
	ld a, d                                          ; $584a: $7a
	ld [$bdcf], a                                    ; $584b: $ea $cf $bd
	ld a, l                                          ; $584e: $7d
	ld [$bdd0], a                                    ; $584f: $ea $d0 $bd
	ld a, h                                          ; $5852: $7c
	ld [$bdd1], a                                    ; $5853: $ea $d1 $bd
	ret                                              ; $5856: $c9


Call_003_5857:
	call Call_003_577e                               ; $5857: $cd $7e $57
	jr nc, jr_003_586c                               ; $585a: $30 $10

	ld a, c                                          ; $585c: $79
	inc a                                            ; $585d: $3c
	db _LD_DE_D16
:	srl b ; $585f: $cb $38
	dec a                                            ; $5861: $3d
	jr nz, :-                                     ; $5862: $20 $fb

	call todo_AequMaskForBitDenotedBy_bdd8                               ; $5864: $cd $9d $57
	and b                                            ; $5867: $a0
	ld [$bddc], a                                    ; $5868: $ea $dc $bd
	ret                                              ; $586b: $c9


jr_003_586c:
	push bc                                          ; $586c: $c5
	ld a, [$bdd8]                                    ; $586d: $fa $d8 $bd
	dec a                                            ; $5870: $3d
	add c                                            ; $5871: $81
	srl a                                            ; $5872: $cb $3f
	srl a                                            ; $5874: $cb $3f
	srl a                                            ; $5876: $cb $3f
	ld c, a                                          ; $5878: $4f
	ld de, $bddc                                     ; $5879: $11 $dc $bd
	ld a, b                                          ; $587c: $78
	ld [de], a                                       ; $587d: $12
	inc de                                           ; $587e: $13
	dec hl                                           ; $587f: $2b
	jr jr_003_5885                                   ; $5880: $18 $03

jr_003_5882:
	ld a, [hl-]                                      ; $5882: $3a
	ld [de], a                                       ; $5883: $12
	inc de                                           ; $5884: $13

jr_003_5885:
	dec c                                            ; $5885: $0d
	jr nz, jr_003_5882                               ; $5886: $20 $fa

	ld a, [hl-]                                      ; $5888: $3a
	ld [de], a                                       ; $5889: $12
	call Call_003_57aa                               ; $588a: $cd $aa $57
	call Call_003_57ca                               ; $588d: $cd $ca $57
	pop bc                                           ; $5890: $c1
	inc c                                            ; $5891: $0c
	push hl                                          ; $5892: $e5
	jr jr_003_58a3                                   ; $5893: $18 $0e

jr_003_5895:
	ld hl, $bddf                                     ; $5895: $21 $df $bd
	srl [hl]                                         ; $5898: $cb $3e
	dec hl                                           ; $589a: $2b
	rr [hl]                                          ; $589b: $cb $1e
	dec hl                                           ; $589d: $2b
	rr [hl]                                          ; $589e: $cb $1e
	dec hl                                           ; $58a0: $2b
	rr [hl]                                          ; $58a1: $cb $1e

jr_003_58a3:
	dec c                                            ; $58a3: $0d
	jr nz, jr_003_5895                               ; $58a4: $20 $ef

	pop hl                                           ; $58a6: $e1
	ld bc, $bddc                                     ; $58a7: $01 $dc $bd
	ld a, [bc]                                       ; $58aa: $0a
	and e                                            ; $58ab: $a3
	ld [bc], a                                       ; $58ac: $02
	inc bc                                           ; $58ad: $03
	ld a, [bc]                                       ; $58ae: $0a
	and d                                            ; $58af: $a2
	ld [bc], a                                       ; $58b0: $02
	inc bc                                           ; $58b1: $03
	ld a, [bc]                                       ; $58b2: $0a
	and l                                            ; $58b3: $a5
	ld [bc], a                                       ; $58b4: $02
	inc bc                                           ; $58b5: $03
	ld a, [bc]                                       ; $58b6: $0a
	and h                                            ; $58b7: $a4
	ld [bc], a                                       ; $58b8: $02
	ret                                              ; $58b9: $c9


DEHLequTaskParams::
; Get ctrl byte in B for pulling a task param, jumping if bit 7 is clear
	call AequNextMainScriptByte                                     ; $58ba
	ld b, a                                                         ; $58bd
	and $80                                                         ; $58be
	jr z, .bit7clear_RetTextSource                                  ; $58c0

; Jump if high 3 bits == $80
	ld a, b                                          ; $58c2: $78
	and $e0                                          ; $58c3: $e6 $e0
	cp $80                                           ; $58c5: $fe $80
	jp z, .high3bitsEqu80h                              ; $58c7: $ca $f0 $58

; Branch based on high nybble
	ld a, b                                                         ; $58ca
	and $f0                                                         ; $58cb
	cp $a0                                                          ; $58cd
	jr z, .highNybbleEquA0hOrB0h_Ret24bit                           ; $58cf

	cp $b0                                                          ; $58d1
	jr z, .highNybbleEquA0hOrB0h_Ret24bit                           ; $58d3

	cp $c0                                                          ; $58d5
	jr z, .highNybbleEquC0h_RetFromTask                             ; $58d7

	cp $d0                                                          ; $58d9
	jr z, .highNybbleEquD0h_RetNybble                               ; $58db

	cp $e0                                                          ; $58dd
	jr nc, .highNybbleGteE0h_Misc                                   ; $58df

	ret                                                             ; $58e1

.bit7clear_RetTextSource:
; Dec offset to point at bit 7 clear byte, use the word to get text src in B:HL
	call DecCurrOffsetIntoMainScript                                ; $58e2
	call GetTextSourceForScriptsTextsIdxedByMainScriptWord          ; $58e5

; DE = HL, HL = B
	call wSwapDEandHL                                               ; $58e8
	ld l, b                                                         ; $58eb
	ld c, $00                                                       ; $58ec
	ld h, c                                                         ; $58ee
	ret                                                             ; $58ef

.high3bitsEqu80h:
	call DecCurrOffsetIntoMainScript                               ; $58f0: $cd $2c $55
	call GetBupTo1FhAndHLinMainScript                               ; $58f3: $cd $a3 $55
	jp Call_003_5821                                 ; $58f6: $c3 $21 $58

.highNybbleEquA0hOrB0h_Ret24bit:
; Popped H = script byte low nybble
	ld a, b                                                         ; $58f9
	and $0f                                                         ; $58fa
	push af                                                         ; $58fc
	call AequNextMainScriptByte                                     ; $58fd
	pop hl                                                          ; $5900

; L = next script byte above, DE = script word & $fff, HL = 0
	ld l, a                                                         ; $5901
	call wSwapDEandHL                                               ; $5902
	ld hl, $0000                                                    ; $5905
	ret                                                             ; $5908

.highNybbleEquC0h_RetFromTask:
; Popped H = script low nybble
	ld a, b                                                         ; $5909
	and $0f                                                         ; $590a
	push af                                                         ; $590c
	call AequNextMainScriptByte                                     ; $590d
	pop hl                                                          ; $5910

; L = next script byte above, perform subtask HL
	ld l, a                                                         ; $5911
	call SafePerformScriptTask                                      ; $5912

; Return params is LHB<0>
	ld e, l                                                         ; $5915
	ld d, h                                                         ; $5916
	ld l, b                                                         ; $5917
	ld h, $00                                                       ; $5918
	ret                                                             ; $591a

.highNybbleEquD0h_RetNybble:
	ld hl, $0000                                                    ; $591b

; DE = low nybble of B (script byte), HL = 0
	ld a, b                                                         ; $591e
	and $0f                                                         ; $591f
	ld e, a                                                         ; $5921
	ld d, $00                                                       ; $5922

	ld hl, $0000                                                    ; $5924
	ret                                                             ; $5927

.highNybbleGteE0h_Misc:
; Low 5 bits is idx for misc param func
	ld a, b                                          ; $5928: $78
	sub $e0                                          ; $5929: $d6 $e0
	rst JumpTable                                          ; $592b: $c7
	dw TaskParamFuncE0h_GetByte
	dw TaskParamFuncE1h_GetWord
	dw TaskParamFuncE2h_Get2Words
	dw TaskParamFuncE3h_GetWord
	dw TaskParamFuncE4h_Get2Words
	dw $5cbd
	dw $5cc8
	dw $5bd2
	dw $5983
	dw $5983
	dw $5cdc
	dw $5cdc
	dw $5cb8
	dw $5cb8
	dw $5c00
	dw $5c00
	dw $5989 ; f0
	dw $598c
	dw $599b
	dw $59ad
	dw $59c1
	dw $59d5
	dw $59eb
	dw $5a63
	dw $59f7
	dw $5a3a
	dw $5a42
	dw TaskParamFuncFBh_CheckIf2ndTaskParamsLte1stTaskParams
	dw $5a50
	dw $5a59
	dw $5aa2
	dw $5ac6


TaskParamFuncE0h_GetByte:
; DE = next byte, HL = 0
	call AequNextMainScriptByte                                     ; $596c
	ld e, a                                                         ; $596f
	ld d, $00                                                       ; $5970
	ld hl, $0000                                                    ; $5972
	ret                                                             ; $5975


TaskParamFuncE1h_GetWord:
TaskParamFuncE3h_GetWord:
; DE = next big-endian word, HL = 0
	call HLequMainScriptBigEndianWord                               ; $5976
	call wSwapDEandHL                                               ; $5979
	ld hl, $0000                                                    ; $597c
	ret                                                             ; $597f


TaskParamFuncE2h_Get2Words:
TaskParamFuncE4h_Get2Words:
	jp DEHLequBigEndianWordsInMainScript                                 ; $5980: $c3 $6a $55


;
	ld a, b                                          ; $5983: $78
	and $01                                          ; $5984: $e6 $01
	jp BHLequCompactScriptLocFromScriptAddrInScriptBytes                                 ; $5986: $c3 $d3 $55


	jp GetBupTo1FhAndHLinMainScript                                 ; $5989: $c3 $a3 $55


	call DEHLequTaskParams                               ; $598c: $cd $ba $58
	add hl, de                                       ; $598f: $19
	ld a, h                                          ; $5990: $7c
	or l                                             ; $5991: $b5
	ld de, $0000                                     ; $5992: $11 $00 $00
	ld l, e                                          ; $5995: $6b
	ld h, d                                          ; $5996: $62
	jr nz, jr_003_599a                               ; $5997: $20 $01

	inc de                                           ; $5999: $13

jr_003_599a:
	ret                                              ; $599a: $c9


	call DEHLequTaskParams                               ; $599b: $cd $ba $58
	push de                                          ; $599e: $d5
	call DEHLequTaskParams                               ; $599f: $cd $ba $58
	ld a, e                                          ; $59a2: $7b
	pop hl                                           ; $59a3: $e1
	call AHLequAtimesHL                                       ; $59a4: $cd $77 $12
	ld e, a                                          ; $59a7: $5f
	ld d, $00                                        ; $59a8: $16 $00
	jp wSwapDEandHL                                         ; $59aa: $c3 $d4 $ce


	call DEHLequTaskParams                               ; $59ad: $cd $ba $58
	push de                                          ; $59b0: $d5
	call DEHLequTaskParams                               ; $59b1: $cd $ba $58
	call $cede                                       ; $59b4: $cd $de $ce
	pop hl                                           ; $59b7: $e1
	call BCHLequHLdivModBC                                       ; $59b8: $cd $c1 $12
	ld de, $0000                                     ; $59bb: $11 $00 $00
	jp wSwapDEandHL                                         ; $59be: $c3 $d4 $ce


	call DEHLequTaskParams                               ; $59c1: $cd $ba $58
	push de                                          ; $59c4: $d5
	call DEHLequTaskParams                               ; $59c5: $cd $ba $58
	call $cede                                       ; $59c8: $cd $de $ce
	pop hl                                           ; $59cb: $e1
	call BCHLequHLdivModBC                                       ; $59cc: $cd $c1 $12
	ld hl, $0000                                     ; $59cf: $21 $00 $00
	jp $cede                                         ; $59d2: $c3 $de $ce


	call DEHLequTaskParams                               ; $59d5: $cd $ba $58
	push de                                          ; $59d8: $d5
	call DEHLequTaskParams                               ; $59d9: $cd $ba $58

jr_003_59dc:
	pop bc                                           ; $59dc: $c1
	ld a, e                                          ; $59dd: $7b
	add c                                            ; $59de: $81
	ld e, a                                          ; $59df: $5f
	ld a, d                                          ; $59e0: $7a
	adc b                                            ; $59e1: $88
	ld d, a                                          ; $59e2: $57
	ld hl, $0000                                     ; $59e3: $21 $00 $00
	bit 7, d                                         ; $59e6: $cb $7a
	ret z                                            ; $59e8: $c8

	dec hl                                           ; $59e9: $2b
	ret                                              ; $59ea: $c9


	call DEHLequTaskParams                               ; $59eb: $cd $ba $58
	push de                                          ; $59ee: $d5
	call DEHLequTaskParams                               ; $59ef: $cd $ba $58
	call $ceb6                                       ; $59f2: $cd $b6 $ce
	jr jr_003_59dc                                   ; $59f5: $18 $e5

	call HLDEequ2ndTaskParamsMinus1st_CheckIfDiffGt0                               ; $59f7: $cd $02 $5a

HLDEequ1ifCarryElse0:
	ld hl, $0000                                                    ; $59fa
	ld e, l                                                         ; $59fd
	ld d, h                                                         ; $59fe
	ret nc                                                          ; $59ff

	inc de                                                          ; $5a00
	ret                                                             ; $5a01


; Returns carry if 2nd-1st > 0
HLDEequ2ndTaskParamsMinus1st_CheckIfDiffGt0:
; DEHL = task params, `cpl` all those regs
	call DEHLequTaskParams                                          ; $5a02

	ld a, e                                                         ; $5a05
	cpl                                                             ; $5a06
	ld e, a                                                         ; $5a07

	ld a, d                                                         ; $5a08
	cpl                                                             ; $5a09
	ld d, a                                                         ; $5a0a

	ld a, l                                                         ; $5a0b
	cpl                                                             ; $5a0c
	ld l, a                                                         ; $5a0d

	ld a, h                                                         ; $5a0e
	cpl                                                             ; $5a0f
	ld h, a                                                         ; $5a10

; These ops convert orig task params HLDE into -HLDE
	inc de                                                          ; $5a11
	ld a, d                                                         ; $5a12
	or e                                                            ; $5a13
	jr nz, :+                                                       ; $5a14
	inc hl                                                          ; $5a16

:	push hl                                                         ; $5a17
	push de                                                         ; $5a18

; DE from next params - low byte of 1st params' HLDE above
	call DEHLequTaskParams                                          ; $5a19
	pop bc                                                          ; $5a1c

	ld a, e                                                         ; $5a1d
	add c                                                           ; $5a1e
	ld e, a                                                         ; $5a1f

	ld a, d                                                         ; $5a20
	adc b                                                           ; $5a21
	ld d, a                                                         ; $5a22

; HL from recent params - high byte (with carry) of 1st params' HLDE above
; ie HLDE = 2nd params - 1st params
	pop bc                                                          ; $5a23

	ld a, l                                                         ; $5a24
	adc c                                                           ; $5a25
	ld l, a                                                         ; $5a26

	ld a, h                                                         ; $5a27
	adc b                                                           ; $5a28
	ld h, a                                                         ; $5a29

; Carry = 0 if bit 7 was set (2nd params < 1st params)
	rlca                                                            ; $5a2a
	ccf                                                             ; $5a2b

; Return once 1 of the 4 bytes, from lowest != 0
	inc e                                                           ; $5a2c
	dec e                                                           ; $5a2d
	ret nz                                                          ; $5a2e

	inc d                                                           ; $5a2f
	dec d                                                           ; $5a30
	ret nz                                                          ; $5a31

	inc l                                                           ; $5a32
	dec l                                                           ; $5a33
	ret nz                                                          ; $5a34

	inc h                                                           ; $5a35
	dec h                                                           ; $5a36
	ret nz                                                          ; $5a37

; If all 4 bytes == 0, carry = 0 if 1st params == 2nd params
; ie carry is clear when 1st params >= 2nd params
	ccf                                                             ; $5a38
	ret                                                             ; $5a39


;
	call HLDEequ2ndTaskParamsMinus1st_CheckIfDiffGt0                               ; $5a3a: $cd $02 $5a
	jr z, HLDEequ1ifCarryElse0                                ; $5a3d: $28 $bb

	ccf                                              ; $5a3f: $3f
	jr HLDEequ1ifCarryElse0                                   ; $5a40: $18 $b8

	call HLDEequ2ndTaskParamsMinus1st_CheckIfDiffGt0                               ; $5a42: $cd $02 $5a
	jr nz, jr_003_5a48                               ; $5a45: $20 $01

	scf                                              ; $5a47: $37

jr_003_5a48:
	jr HLDEequ1ifCarryElse0                                   ; $5a48: $18 $b0


TaskParamFuncFBh_CheckIf2ndTaskParamsLte1stTaskParams:
; Return carry = 1 if negative or 0 diff, else 0
	call HLDEequ2ndTaskParamsMinus1st_CheckIfDiffGt0                ; $5a4a
	ccf                                                             ; $5a4d
	jr HLDEequ1ifCarryElse0                                         ; $5a4e


;
	call HLDEequ2ndTaskParamsMinus1st_CheckIfDiffGt0                               ; $5a50: $cd $02 $5a
	scf                                              ; $5a53: $37
	jr z, :+                                ; $5a54: $28 $01
	ccf                                              ; $5a56: $3f
:	jr HLDEequ1ifCarryElse0                                   ; $5a57: $18 $a1

	call HLDEequ2ndTaskParamsMinus1st_CheckIfDiffGt0                               ; $5a59: $cd $02 $5a
	scf                                              ; $5a5c: $37
	jr nz, :+                               ; $5a5d: $20 $01
	ccf                                              ; $5a5f: $3f
:	jp HLDEequ1ifCarryElse0                                 ; $5a60: $c3 $fa $59


;
	call BCequScriptByteOrWordPlusNextOffset                               ; $5a63: $cd $84 $55
	xor a                                            ; $5a66: $af
	ld e, a                                          ; $5a67: $5f
	ld d, a                                          ; $5a68: $57
	ld l, a                                          ; $5a69: $6f
	ld h, a                                          ; $5a6a: $67
	jr jr_003_5a8a                                   ; $5a6b: $18 $1d

jr_003_5a6d:
	push bc                                          ; $5a6d: $c5
	push hl                                          ; $5a6e: $e5
	push de                                          ; $5a6f: $d5
	call DEHLequTaskParams                               ; $5a70: $cd $ba $58
	pop de                                           ; $5a73: $d1
	ld a, [$bdce]                                    ; $5a74: $fa $ce $bd
	add e                                            ; $5a77: $83
	ld e, a                                          ; $5a78: $5f
	ld a, [$bdcf]                                    ; $5a79: $fa $cf $bd
	adc d                                            ; $5a7c: $8a
	ld d, a                                          ; $5a7d: $57
	pop hl                                           ; $5a7e: $e1
	ld a, [$bdd0]                                    ; $5a7f: $fa $d0 $bd
	add l                                            ; $5a82: $85
	ld l, a                                          ; $5a83: $6f
	ld a, [$bdd1]                                    ; $5a84: $fa $d1 $bd
	add h                                            ; $5a87: $84
	ld h, a                                          ; $5a88: $67
	pop bc                                           ; $5a89: $c1

jr_003_5a8a:
	push hl                                          ; $5a8a: $e5
	call CpCurrOffsetIntoScriptToBC                               ; $5a8b: $cd $98 $55
	pop hl                                           ; $5a8e: $e1
	jr c, jr_003_5a6d                                ; $5a8f: $38 $dc

	ld a, e                                          ; $5a91: $7b
	ld [$bdce], a                                    ; $5a92: $ea $ce $bd
	ld a, d                                          ; $5a95: $7a
	ld [$bdcf], a                                    ; $5a96: $ea $cf $bd
	ld a, l                                          ; $5a99: $7d
	ld [$bdd0], a                                    ; $5a9a: $ea $d0 $bd
	ld a, h                                          ; $5a9d: $7c
	ld [$bdd1], a                                    ; $5a9e: $ea $d1 $bd
	ret                                              ; $5aa1: $c9


	call BCequScriptByteOrWordPlusNextOffset                               ; $5aa2: $cd $84 $55
	jr jr_003_5aac                                   ; $5aa5: $18 $05

jr_003_5aa7:
	call GetAndOrNext3of4TaskParamBytes                               ; $5aa7: $cd $25 $6f
	jr z, jr_003_5ab8                                ; $5aaa: $28 $0c

jr_003_5aac:
	call CpCurrOffsetIntoScriptToBC                               ; $5aac: $cd $98 $55
	jr c, jr_003_5aa7                                ; $5aaf: $38 $f6

	ld de, $0001                                     ; $5ab1: $11 $01 $00
	ld hl, $0000                                     ; $5ab4: $21 $00 $00
	ret                                              ; $5ab7: $c9


jr_003_5ab8:
	ld a, c                                          ; $5ab8: $79
	ld [sCurrOffsetIntoScript], a                                    ; $5ab9: $ea $bc $bd
	ld a, b                                          ; $5abc: $78
	ld [sCurrOffsetIntoScript+1], a                                    ; $5abd: $ea $bd $bd
	ld de, $0000                                     ; $5ac0: $11 $00 $00
	ld l, e                                          ; $5ac3: $6b
	ld h, d                                          ; $5ac4: $62
	ret                                              ; $5ac5: $c9


	call BCequScriptByteOrWordPlusNextOffset                               ; $5ac6: $cd $84 $55
	jr jr_003_5ad0                                   ; $5ac9: $18 $05

jr_003_5acb:
	call GetAndOrNext3of4TaskParamBytes                               ; $5acb: $cd $25 $6f
	jr nz, jr_003_5adb                               ; $5ace: $20 $0b

jr_003_5ad0:
	call CpCurrOffsetIntoScriptToBC                               ; $5ad0: $cd $98 $55
	jr c, jr_003_5acb                                ; $5ad3: $38 $f6

	ld de, $0000                                     ; $5ad5: $11 $00 $00
	ld l, e                                          ; $5ad8: $6b
	ld h, d                                          ; $5ad9: $62
	ret                                              ; $5ada: $c9


jr_003_5adb:
	ld a, c                                          ; $5adb: $79
	ld [sCurrOffsetIntoScript], a                                    ; $5adc: $ea $bc $bd
	ld a, b                                          ; $5adf: $78
	ld [sCurrOffsetIntoScript+1], a                                    ; $5ae0: $ea $bd $bd
	ld de, $0001                                     ; $5ae3: $11 $01 $00
	ld hl, $0000                                     ; $5ae6: $21 $00 $00

jr_003_5ae9:
	ret                                              ; $5ae9: $c9


Call_003_5aea::
	push af                                          ; $5aea: $f5
	push bc                                          ; $5aeb: $c5
	push de                                          ; $5aec: $d5
	push hl                                          ; $5aed: $e5
	call Call_003_5af4                               ; $5aee: $cd $f4 $5a
	jp RestoreAllRegs                                 ; $5af1: $c3 $94 $5b


Call_003_5af4:
	call AequNextMainScriptByte                               ; $5af4: $cd $09 $55
	ld b, a                                          ; $5af7: $47
	bit 7, a                                         ; $5af8: $cb $7f
	jp z, IncMainScriptSavedOffset                              ; $5afa: $ca $78 $5b

	and $e0                                          ; $5afd: $e6 $e0
	cp $80                                           ; $5aff: $fe $80
	jp z, Jump_003_5ba5                              ; $5b01: $ca $a5 $5b

	ld a, b                                          ; $5b04: $78
	and $f0                                          ; $5b05: $e6 $f0
	cp $a0                                           ; $5b07: $fe $a0
	jr z, jr_003_5b41                                ; $5b09: $28 $36

	cp $b0                                           ; $5b0b: $fe $b0
	jr z, jr_003_5b41                                ; $5b0d: $28 $32

	cp $c0                                           ; $5b0f: $fe $c0
	jr z, jr_003_5b44                                ; $5b11: $28 $31

	cp $d0                                           ; $5b13: $fe $d0
	jr z, jr_003_5ae9                                ; $5b15: $28 $d2

	cp $f0                                           ; $5b17: $fe $f0
	jr nc, jr_003_5b52                               ; $5b19: $30 $37

	ld a, b                                          ; $5b1b: $78
	sub $e0                                          ; $5b1c: $d6 $e0
	and $0f                                          ; $5b1e: $e6 $0f
	rst JumpTable                                          ; $5b20: $c7
	ld a, b                                          ; $5b21: $78
	ld e, e                                          ; $5b22: $5b
	and l                                            ; $5b23: $a5
	ld e, e                                          ; $5b24: $5b
	sbc l                                            ; $5b25: $9d
	ld e, e                                          ; $5b26: $5b
	and l                                            ; $5b27: $a5
	ld e, e                                          ; $5b28: $5b
	sbc l                                            ; $5b29: $9d
	ld e, e                                          ; $5b2a: $5b
	jp hl                                            ; $5b2b: $e9


	ld e, d                                          ; $5b2c: $5a
	ld a, b                                          ; $5b2d: $78
	ld e, e                                          ; $5b2e: $5b
	ld a, b                                          ; $5b2f: $78
	ld e, e                                          ; $5b30: $5b
	and l                                            ; $5b31: $a5
	ld e, e                                          ; $5b32: $5b
	and c                                            ; $5b33: $a1
	ld e, e                                          ; $5b34: $5b
	and l                                            ; $5b35: $a5
	ld e, e                                          ; $5b36: $5b
	and c                                            ; $5b37: $a1
	ld e, e                                          ; $5b38: $5b
	and l                                            ; $5b39: $a5
	ld e, e                                          ; $5b3a: $5b
	and c                                            ; $5b3b: $a1
	ld e, e                                          ; $5b3c: $5b
	and c                                            ; $5b3d: $a1
	ld e, e                                          ; $5b3e: $5b
	sbc l                                            ; $5b3f: $9d
	ld e, e                                          ; $5b40: $5b

jr_003_5b41:
	jp IncMainScriptSavedOffset                                 ; $5b41: $c3 $78 $5b


jr_003_5b44:
	push bc                                          ; $5b44: $c5
	call AequNextMainScriptByte                               ; $5b45: $cd $09 $55
	ld l, a                                          ; $5b48: $6f
	pop af                                           ; $5b49: $f1
	and $0f                                          ; $5b4a: $e6 $0f
	ld h, a                                          ; $5b4c: $67
	rst FarCall                                          ; $5b4d: $f7
	AddrBank Func_0c_4000
	ret                                              ; $5b51: $c9


jr_003_5b52:
	ld a, b                                          ; $5b52: $78
	sub $f0                                          ; $5b53: $d6 $f0
	and $0f                                          ; $5b55: $e6 $0f
	rst JumpTable                                          ; $5b57: $c7
	and c                                            ; $5b58: $a1
	ld e, e                                          ; $5b59: $5b
	ld [$b85a], a                                    ; $5b5a: $ea $5a $b8
	ld e, e                                          ; $5b5d: $5b
	cp b                                             ; $5b5e: $b8
	ld e, e                                          ; $5b5f: $5b
	cp b                                             ; $5b60: $b8
	ld e, e                                          ; $5b61: $5b
	cp b                                             ; $5b62: $b8
	ld e, e                                          ; $5b63: $5b
	cp b                                             ; $5b64: $b8
	ld e, e                                          ; $5b65: $5b
	cp [hl]                                          ; $5b66: $be
	ld e, e                                          ; $5b67: $5b
	cp b                                             ; $5b68: $b8
	ld e, e                                          ; $5b69: $5b
	cp b                                             ; $5b6a: $b8
	ld e, e                                          ; $5b6b: $5b
	cp b                                             ; $5b6c: $b8
	ld e, e                                          ; $5b6d: $5b
	cp b                                             ; $5b6e: $b8
	ld e, e                                          ; $5b6f: $5b
	cp b                                             ; $5b70: $b8
	ld e, e                                          ; $5b71: $5b
	cp b                                             ; $5b72: $b8
	ld e, e                                          ; $5b73: $5b
	cp [hl]                                          ; $5b74: $be
	ld e, e                                          ; $5b75: $5b
	cp [hl]                                          ; $5b76: $be
	ld e, e                                          ; $5b77: $5b


IncMainScriptSavedOffset:
	push af                                                         ; $5b78
	push bc                                                         ; $5b79
	push de                                                         ; $5b7a
	push hl                                                         ; $5b7b

; Inc offset into script
	ld a, [sCurrOffsetIntoScript]                                   ; $5b7c
	ld l, a                                                         ; $5b7f
	ld a, [sCurrOffsetIntoScript+1]                                 ; $5b80
	ld h, a                                                         ; $5b83
	inc hl                                                          ; $5b84

SetMainScriptSavedOffset:
; Save offset into script
	ld a, l                                                         ; $5b85
	ld [sCurrOffsetIntoScript], a                                   ; $5b86
	ld a, h                                                         ; $5b89
	ld [sCurrOffsetIntoScript+1], a                                 ; $5b8a

; If offset rolled around $ffff, ????
	or l                                             ; $5b8d: $b5
	jr nz, RestoreAllRegs                               ; $5b8e: $20 $04

	ld hl, $bdbe                                     ; $5b90: $21 $be $bd
	inc [hl]                                         ; $5b93: $34

RestoreAllRegs:
	pop hl                                           ; $5b94: $e1
	pop de                                           ; $5b95: $d1
	pop bc                                           ; $5b96: $c1
	pop af                                           ; $5b97: $f1
	ret                                              ; $5b98: $c9


Jump_003_5b99:
	ld l, $05                                        ; $5b99: $2e $05
	jr jr_003_5ba7                                   ; $5b9b: $18 $0a

Jump_003_5b9d:
	ld l, $04                                        ; $5b9d: $2e $04
	jr jr_003_5ba7                                   ; $5b9f: $18 $06

Call_003_5ba1:
Jump_003_5ba1:
	ld l, $03                                        ; $5ba1: $2e $03
	jr jr_003_5ba7                                   ; $5ba3: $18 $02

Call_003_5ba5:
Jump_003_5ba5:
	ld l, $02                                        ; $5ba5: $2e $02

jr_003_5ba7:
	push af                                          ; $5ba7: $f5
	push bc                                          ; $5ba8: $c5
	push de                                          ; $5ba9: $d5
	push hl                                          ; $5baa: $e5
	ld a, [sCurrOffsetIntoScript]                                    ; $5bab: $fa $bc $bd
	add l                                            ; $5bae: $85
	ld l, a                                          ; $5baf: $6f
	ld a, [sCurrOffsetIntoScript+1]                                    ; $5bb0: $fa $bd $bd
	adc $00                                          ; $5bb3: $ce $00
	ld h, a                                          ; $5bb5: $67
	jr SetMainScriptSavedOffset                                   ; $5bb6: $18 $cd

	call Call_003_5aea                               ; $5bb8: $cd $ea $5a
	jp Call_003_5aea                                 ; $5bbb: $c3 $ea $5a


AddScriptByteOrWordOntoNextScriptOffset:
	push af                                                         ; $5bbe
	push bc                                                         ; $5bbf
	push de                                                         ; $5bc0
	push hl                                                         ; $5bc1

	call BCequScriptByteOrWordPlusNextOffset                        ; $5bc2
	ld a, c                                                         ; $5bc5
	ld [sCurrOffsetIntoScript], a                                   ; $5bc6
	ld a, b                                                         ; $5bc9
	ld [sCurrOffsetIntoScript+1], a                                 ; $5bca

	pop hl                                                          ; $5bcd
	pop de                                                          ; $5bce
	pop bc                                                          ; $5bcf
	pop af                                                          ; $5bd0
	ret                                                             ; $5bd1


;
	call AequNextMainScriptByte                               ; $5bd2: $cd $09 $55
	ld l, a                                          ; $5bd5: $6f
	cp $20                                           ; $5bd6: $fe $20
	jr c, jr_003_5bfb                                ; $5bd8: $38 $21

	ld a, [$bdc5]                                    ; $5bda: $fa $c5 $bd
	dec a                                            ; $5bdd: $3d
	sub l                                            ; $5bde: $95
	bit 7, a                                         ; $5bdf: $cb $7f
	jr z, jr_003_5be6                                ; $5be1: $28 $03

	ld a, l                                          ; $5be3: $7d
	add $20                                          ; $5be4: $c6 $20

jr_003_5be6:
	ld l, a                                          ; $5be6: $6f
	ld h, $00                                        ; $5be7: $26 $00
	inc hl                                           ; $5be9: $23
	ld e, l                                          ; $5bea: $5d
	ld d, h                                          ; $5beb: $54
	add hl, hl                                       ; $5bec: $29
	add hl, de                                       ; $5bed: $19
	add hl, de                                       ; $5bee: $19
	dec hl                                           ; $5bef: $2b
	ld a, [hl]                                       ; $5bf0: $7e
	bit 7, b                                         ; $5bf1: $cb $78
	jr nz, jr_003_5bfb                               ; $5bf3: $20 $06

	dec hl                                           ; $5bf5: $2b
	ld d, [hl]                                       ; $5bf6: $56
	dec hl                                           ; $5bf7: $2b
	ld e, [hl]                                       ; $5bf8: $5e
	ld l, a                                          ; $5bf9: $6f
	ret                                              ; $5bfa: $c9


jr_003_5bfb:
	ld de, $0000                                     ; $5bfb: $11 $00 $00
	ld l, d                                          ; $5bfe: $6a
	ret                                              ; $5bff: $c9


	push bc                                          ; $5c00: $c5
	call AequNextMainScriptByte                               ; $5c01: $cd $09 $55
	pop bc                                           ; $5c04: $c1
	call Call_003_5c0e                               ; $5c05: $cd $0e $5c
	ld a, e                                          ; $5c08: $7b
	and a                                            ; $5c09: $a7
	ret z                                            ; $5c0a: $c8

	ld e, $01                                        ; $5c0b: $1e $01
	ret                                              ; $5c0d: $c9


Call_003_5c0e:
Jump_003_5c0e:
	ld a, [$bdc5]                                    ; $5c0e: $fa $c5 $bd
	dec a                                            ; $5c11: $3d
	dec a                                            ; $5c12: $3d
	bit 7, a                                         ; $5c13: $cb $7f
	jr z, jr_003_5c19                                ; $5c15: $28 $02

	adc $20                                          ; $5c17: $ce $20

jr_003_5c19:
	push af                                          ; $5c19: $f5
	push af                                          ; $5c1a: $f5
	ld a, b                                          ; $5c1b: $78
	and $01                                          ; $5c1c: $e6 $01
	call BHLequCompactScriptLocFromScriptAddrInScriptBytes                               ; $5c1e: $cd $d3 $55
	pop af                                           ; $5c21: $f1
	ld c, a                                          ; $5c22: $4f
	pop de                                           ; $5c23: $d1
	bit 7, c                                         ; $5c24: $cb $79
	jr nz, jr_003_5c40                               ; $5c26: $20 $18

	bit 7, b                                         ; $5c28: $cb $78
	jr z, jr_003_5c40                                ; $5c2a: $28 $14

	ld a, c                                          ; $5c2c: $79
	cp $20                                           ; $5c2d: $fe $20
	jr c, jr_003_5c3a                                ; $5c2f: $38 $09

	call Call_003_5c9e                               ; $5c31: $cd $9e $5c
	jr nz, jr_003_5c3a                               ; $5c34: $20 $04

	ld b, a                                          ; $5c36: $47
	rst GetHLinHL                                          ; $5c37: $cf
	ret                                              ; $5c38: $c9


jr_003_5c39:
	pop de                                           ; $5c39: $d1

jr_003_5c3a:
	ld b, $00                                        ; $5c3a: $06 $00
	ld hl, $0000                                     ; $5c3c: $21 $00 $00
	ret                                              ; $5c3f: $c9


jr_003_5c40:
	ld a, c                                          ; $5c40: $79
	ld [$c0d0], a                                    ; $5c41: $ea $d0 $c0
	bit 7, c                                         ; $5c44: $cb $79
	jr z, jr_003_5c6d                                ; $5c46: $28 $25

	bit 7, b                                         ; $5c48: $cb $78
	jr nz, jr_003_5c6d                               ; $5c4a: $20 $21

	ld d, a                                          ; $5c4c: $57
	ld c, $01                                        ; $5c4d: $0e $01

jr_003_5c4f:
	push de                                          ; $5c4f: $d5
	ld a, c                                          ; $5c50: $79
	cp $20                                           ; $5c51: $fe $20
	jr nc, jr_003_5c39                               ; $5c53: $30 $e4

	call Call_003_5c9e                               ; $5c55: $cd $9e $5c
	jr nz, jr_003_5c39                               ; $5c58: $20 $df

	call Call_003_5caf                               ; $5c5a: $cd $af $5c
	jr z, jr_003_5c97                                ; $5c5d: $28 $38

	pop de                                           ; $5c5f: $d1
	dec d                                            ; $5c60: $15
	bit 7, d                                         ; $5c61: $cb $7a
	jr z, jr_003_5c6a                                ; $5c63: $28 $05

	ld a, d                                          ; $5c65: $7a
	add $20                                          ; $5c66: $c6 $20
	ld d, a                                          ; $5c68: $57
	dec c                                            ; $5c69: $0d

jr_003_5c6a:
	inc c                                            ; $5c6a: $0c
	jr jr_003_5c4f                                   ; $5c6b: $18 $e2

jr_003_5c6d:
	ld a, c                                          ; $5c6d: $79
	cp $20                                           ; $5c6e: $fe $20
	jr c, jr_003_5c74                                ; $5c70: $38 $02

	ld c, $1f                                        ; $5c72: $0e $1f

jr_003_5c74:
	push de                                          ; $5c74: $d5
	ld a, c                                          ; $5c75: $79
	and a                                            ; $5c76: $a7
	jr z, jr_003_5c39                                ; $5c77: $28 $c0

	bit 7, a                                         ; $5c79: $cb $7f
	jr nz, jr_003_5c39                               ; $5c7b: $20 $bc

	call Call_003_5c9e                               ; $5c7d: $cd $9e $5c
	jr nz, jr_003_5c39                               ; $5c80: $20 $b7

	call Call_003_5caf                               ; $5c82: $cd $af $5c
	jr z, jr_003_5c95                                ; $5c85: $28 $0e

	pop de                                           ; $5c87: $d1
	dec d                                            ; $5c88: $15
	bit 7, d                                         ; $5c89: $cb $7a
	jr z, jr_003_5c92                                ; $5c8b: $28 $05

	ld a, d                                          ; $5c8d: $7a
	add $20                                          ; $5c8e: $c6 $20
	ld d, a                                          ; $5c90: $57
	inc c                                            ; $5c91: $0c

jr_003_5c92:
	dec c                                            ; $5c92: $0d
	jr jr_003_5c74                                   ; $5c93: $18 $df

jr_003_5c95:
	ld c, $01                                        ; $5c95: $0e $01

jr_003_5c97:
	pop de                                           ; $5c97: $d1
	ld l, c                                          ; $5c98: $69
	ld h, $00                                        ; $5c99: $26 $00
	ld b, $00                                        ; $5c9b: $06 $00
	ret                                              ; $5c9d: $c9


Call_003_5c9e:
	push hl                                          ; $5c9e: $e5
	ld a, d                                          ; $5c9f: $7a
	ld de, $bb42                                     ; $5ca0: $11 $42 $bb
	call HLequ3A                               ; $5ca3: $cd $0c $52
	call wSwapDEandHL                                       ; $5ca6: $cd $d4 $ce
	pop hl                                           ; $5ca9: $e1
	ld a, [de]                                       ; $5caa: $1a
	dec de                                           ; $5cab: $1b
	bit 7, a                                         ; $5cac: $cb $7f
	ret                                              ; $5cae: $c9


Call_003_5caf:
	cp b                                             ; $5caf: $b8
	ret nz                                           ; $5cb0: $c0

	ld a, [de]                                       ; $5cb1: $1a
	dec de                                           ; $5cb2: $1b
	cp h                                             ; $5cb3: $bc
	ret nz                                           ; $5cb4: $c0

	ld a, [de]                                       ; $5cb5: $1a
	cp l                                             ; $5cb6: $bd
	ret                                              ; $5cb7: $c9


	ld a, $ff                                        ; $5cb8: $3e $ff
	jp Jump_003_5c0e                                 ; $5cba: $c3 $0e $5c


	ld hl, $bba0                                     ; $5cbd: $21 $a0 $bb

jr_003_5cc0:
	ld e, [hl]                                       ; $5cc0: $5e
	inc hl                                           ; $5cc1: $23
	ld d, [hl]                                       ; $5cc2: $56
	inc hl                                           ; $5cc3: $23
	ld l, [hl]                                       ; $5cc4: $6e
	ld h, $00                                        ; $5cc5: $26 $00
	ret                                              ; $5cc7: $c9


	call AequNextMainScriptByte                               ; $5cc8: $cd $09 $55
	ld l, a                                          ; $5ccb: $6f
	ld a, [sIdxForCompactScriptLocList1]                                    ; $5ccc: $fa $c9 $bd
	dec a                                            ; $5ccf: $3d
	cp l                                             ; $5cd0: $bd
	jr c, jr_003_5cc0                                ; $5cd1: $38 $ed

	sub l                                            ; $5cd3: $95
	ld de, $bba0                                     ; $5cd4: $11 $a0 $bb
	call HLequDEplus3A                               ; $5cd7: $cd $15 $52
	jr jr_003_5cc0                                   ; $5cda: $18 $e4

	ld a, b                                          ; $5cdc: $78
	and $01                                          ; $5cdd: $e6 $01
	call BHLequCompactScriptLocFromScriptAddrInScriptBytes                               ; $5cdf: $cd $d3 $55
	ld a, [sIdxForCompactScriptLocList1]                                    ; $5ce2: $fa $c9 $bd
	dec a                                            ; $5ce5: $3d
	call wSwapDEandHL                                       ; $5ce6: $cd $d4 $ce
	push de                                          ; $5ce9: $d5
	ld de, $bba0                                     ; $5cea: $11 $a0 $bb
	call HLequDEplus3A                               ; $5ced: $cd $15 $52
	pop de                                           ; $5cf0: $d1
	jr jr_003_5d0a                                   ; $5cf1: $18 $17

jr_003_5cf3:
	ld a, [hl+]                                      ; $5cf3: $2a
	cp e                                             ; $5cf4: $bb
	jr nz, jr_003_5d08                               ; $5cf5: $20 $11

	inc hl                                           ; $5cf7: $23
	ld a, [hl+]                                      ; $5cf8: $2a
	cp d                                             ; $5cf9: $ba
	jr nz, jr_003_5d09                               ; $5cfa: $20 $0d

	inc hl                                           ; $5cfc: $23
	ld a, [hl+]                                      ; $5cfd: $2a
	cp b                                             ; $5cfe: $b8
	jr nz, jr_003_5d0a                               ; $5cff: $20 $09

	ld a, $01                                        ; $5d01: $3e $01

jr_003_5d03:
	ld d, $00                                        ; $5d03: $16 $00
	ld e, a                                          ; $5d05: $5f
	and a                                            ; $5d06: $a7
	ret                                              ; $5d07: $c9


jr_003_5d08:
	dec hl                                           ; $5d08: $2b

jr_003_5d09:
	dec hl                                           ; $5d09: $2b

jr_003_5d0a:
	push de                                          ; $5d0a: $d5
	ld de, $bba0                                     ; $5d0b: $11 $a0 $bb
	call wCpHLtoDE                                       ; $5d0e: $cd $80 $ce
	jr nc, jr_003_5cf3                               ; $5d11: $30 $e0

	pop de                                           ; $5d13: $d1
	xor a                                            ; $5d14: $af
	jr jr_003_5d03                                   ; $5d15: $18 $ec


; HL -
ExecScriptUpToNextScriptByteOrWord:
;
	ld a, l                                          ; $5d17: $7d
	ld [stodo_PreservedHLrelatedToScriptStack], a                                    ; $5d18: $ea $94 $bd
	ld a, h                                          ; $5d1b: $7c
	ld [stodo_PreservedHLrelatedToScriptStack+1], a                                    ; $5d1c: $ea $95 $bd

; preserve these regs, then have BC = curr script offset + script word
	call Push3BytesInWordAfterOntoScriptStack                               ; $5d1f: $cd $82 $52
	dw sTempLHBFromScriptRelatedReturns

	call BCequScriptByteOrWordPlusNextOffset                               ; $5d24: $cd $84 $55

.nextScriptCode:
; Jump if the curr script offset >= BC (ie above BC is num bytes used for below ops)
	call CpCurrOffsetIntoScriptToBC                               ; $5d27: $cd $98 $55
	jr nc, .done                               ; $5d2a: $30 $1d

;
	call PushBContoScriptStack                               ; $5d2c: $cd $51 $52
	ld a, [stodo_PreservedHLrelatedToScriptStack]                                    ; $5d2f: $fa $94 $bd
	ld l, a                                          ; $5d32: $6f
	ld a, [stodo_PreservedHLrelatedToScriptStack+1]                                    ; $5d33: $fa $95 $bd
	ld h, a                                          ; $5d36: $67
	call SafeExecuteScript                               ; $5d37: $cd $52 $5d
	call SetTempLHBforScriptRelatedReturnsToLHB                               ; $5d3a: $cd $38 $65

; done once B from LHB in SetTempLHBforScriptRelatedReturnsToLHB has bit 7 clear
	call PopBCfromScriptStack                               ; $5d3d: $cd $bd $52
	bit 7, a                                         ; $5d40: $cb $7f
	jr nz, .nextScriptCode                               ; $5d42: $20 $e3

; lhb equals the SafeExecuteScript return once loop ended
	call LHBequTempBytesForScriptRelatedReturns                               ; $5d44: $cd $45 $65
	jr :+                                   ; $5d47: $18 $03

.done:
	call BHLequFFFFFFh                               ; $5d49: $cd $fd $66

; restore these regs
:	call Copy3BytesFromScriptStackToWordAfter                               ; $5d4c: $cd $df $52
	dw sTempLHBFromScriptRelatedReturns
	ret                                              ; $5d51: $c9


; HL -
SafeExecuteScript:
; Execute script while preserving any return LHBs from caller
	call Push3BytesInWordAfterOntoScriptStack                       ; $5d52
	dw sTempLHBFromScriptRelatedReturns

	call ExecuteScript                                              ; $5d57

	call Copy3BytesFromScriptStackToWordAfter                       ; $5d5a
	dw sTempLHBFromScriptRelatedReturns
	ret                                                             ; $5d5f


; HL -
ExecuteScript:
;
	ld a, l                                          ; $5d60: $7d
	ld [stodo_PreservedHLrelatedToScriptStack], a                                    ; $5d61: $ea $94 $bd
	ld a, h                                          ; $5d64: $7c
	ld [stodo_PreservedHLrelatedToScriptStack+1], a                                    ; $5d65: $ea $95 $bd

;
	call AequNextMainScriptByte                               ; $5d68: $cd $09 $55
	ld b, a                                          ; $5d6b: $47
	and $e0                                          ; $5d6c: $e6 $e0
	jp z, ScriptByteHigh3BitsEqu00h                              ; $5d6e: $ca $2f $5f

	cp $20                                           ; $5d71: $fe $20
	jp z, todo_ScriptByteHigh3BitsEqu20h                              ; $5d73: $ca $7c $5f

	cp $40                                           ; $5d76: $fe $40
	jp z, todo_ScriptByteHigh3BitsEqu40h                              ; $5d78: $ca $f6 $5f

	cp $60                                           ; $5d7b: $fe $60
	jp z, todo_ScriptByteHigh3BitsEqu60h_1                              ; $5d7d: $ca $3f $60

	cp $80                                           ; $5d80: $fe $80
	jp z, ScriptByteHigh3BitsEqu80h_ExecAtMost1ScriptWithAtLeast1MatchingCond                              ; $5d82: $ca $ca $60

	ld a, b                                          ; $5d85: $78
	and $f0                                          ; $5d86: $e6 $f0
	cp $a0                                           ; $5d88: $fe $a0
	jp z, todo_ScriptByteHigh4BitsEquA0h_1                              ; $5d8a: $ca $83 $61

	cp $b0                                           ; $5d8d: $fe $b0
	jp z, todo_ScriptByteHigh4BitsEquB0h_1                              ; $5d8f: $ca $4c $62

	cp $c0                                           ; $5d92: $fe $c0
	jp z, ScriptByteHighestNybbleEquC_PerformScriptTask                              ; $5d94: $ca $ca $62

	cp $d0                                           ; $5d97: $fe $d0
	jp z, ScriptByteHighestNybbleEquD                              ; $5d99: $ca $d9 $62

	cp $e0                                           ; $5d9c: $fe $e0
	jp c, BHLequFFFFFFh                              ; $5d9e: $da $fd $66

	ld a, b                                          ; $5da1: $78
	cp $ef                                           ; $5da2: $fe $ef
	jr c, todo_ScriptByteE0hToEEh_1                                ; $5da4: $38 $07

	cp $fb                                           ; $5da6: $fe $fb
	jr nc, todo_ScriptByteFBhPlus_1                               ; $5da8: $30 $24

	jp BHLequFFFFFFh                                 ; $5daa: $c3 $fd $66


todo_ScriptByteE0hToEEh_1:
	sub $e0                                          ; $5dad: $d6 $e0
	rst JumpTable                                          ; $5daf: $c7
	dw todo_ScriptByteE0toE3h_Call
	dw todo_ScriptByteE0toE3h_Call
	dw todo_ScriptByteE0toE3h_Call
	dw todo_ScriptByteE0toE3h_Call
	dw todo_ScriptByteE4toE7h_Jump
	dw todo_ScriptByteE4toE7h_Jump
	dw todo_ScriptByteE4toE7h_Jump
	dw todo_ScriptByteE4toE7h_Jump
	dw todo_ScriptByteE8h
	dw todo_ScriptByteE9h
	dw todo_ScriptByteEAh
	dw todo_ScriptByteEBh
	dw todo_ScriptByteECh
	dw todo_ScriptByteEDh
	dw todo_ScriptByteEEh


todo_ScriptByteFBhPlus_1:
	sub $fb                                          ; $5dce: $d6 $fb
	rst JumpTable                                          ; $5dd0: $c7
	dw ScriptByteFBh_ExecScriptIfNonZero
	dw ScriptByteFCh_CallNonZeroTableEntry
	dw ScriptByteFDh_ExecAnyScriptsWithAtLeast1MatchingCond
	dw todo_ScriptByteFEh
	dw todo_ScriptByteFFh


Call_003_5ddb:
	ld b, a                                          ; $5ddb: $47
	call AequNextMainScriptByte                               ; $5ddc: $cd $09 $55
	ld a, b                                          ; $5ddf: $78
	and $e0                                          ; $5de0: $e6 $e0
	jr z, todo_ScriptByteHigh3BitsEqu40hOrLess                                ; $5de2: $28 $63

	cp $20                                           ; $5de4: $fe $20
	jr z, todo_ScriptByteHigh3BitsEqu40hOrLess                                ; $5de6: $28 $5f

	cp $40                                           ; $5de8: $fe $40
	jr z, todo_ScriptByteHigh3BitsEqu40hOrLess                                ; $5dea: $28 $5b

	cp $60                                           ; $5dec: $fe $60
	jr z, todo_ScriptByteHigh3BitsEqu60h_2                                ; $5dee: $28 $6d

	cp $80                                           ; $5df0: $fe $80
	jr z, todo_ScriptByteHigh3BitsEqu80h_2                                ; $5df2: $28 $72

	ld a, b                                          ; $5df4: $78
	and $f0                                          ; $5df5: $e6 $f0
	cp $a0                                           ; $5df7: $fe $a0
	jr z, todo_ScriptByteHigh4BitsEquA0h_2                                ; $5df9: $28 $74

	cp $b0                                           ; $5dfb: $fe $b0
	jr z, todo_ScriptByteHigh4BitsEquB0h_2                                ; $5dfd: $28 $76

	cp $c0                                           ; $5dff: $fe $c0
	jr z, todo_ScriptByteHigh4BitsEquC0h_2                                ; $5e01: $28 $7b

	cp $d0                                           ; $5e03: $fe $d0
	jp z, todo_ScriptByteHigh4BitsEquD0h_2                              ; $5e05: $ca $87 $5e

	cp $e0                                           ; $5e08: $fe $e0
	jp nc, BHLequFFFFFFh                             ; $5e0a: $d2 $fd $66

	ld a, b                                          ; $5e0d: $78
	cp $ef                                           ; $5e0e: $fe $ef
	jr c, todo_ScriptByteE0hToEEh_2                                ; $5e10: $38 $07

	cp $fb                                           ; $5e12: $fe $fb
	jr nc, todo_ScriptByteFBhPlus_2                               ; $5e14: $30 $24

	jp BHLequFFFFFFh                                 ; $5e16: $c3 $fd $66


todo_ScriptByteE0hToEEh_2:
	sub $e0                                          ; $5e19: $d6 $e0
	rst JumpTable                                          ; $5e1b: $c7
	dw $5e91
	dw $5e91
	dw $5e91
	dw $5e91
	dw $5e97
	dw $5e9d
	dw $5e97
	dw $5e9d
	dw $5ea0
	dw $5ea3
	dw $5ea0
	dw $64a3
	dw $5ea0
	dw $5e97
	dw $5f16


todo_ScriptByteFBhPlus_2:
	sub $fb                                          ; $5e3a: $d6 $fb
	rst JumpTable                                          ; $5e3c: $c7
	dw $5ea9
	dw $5eb2
	dw $5eb2
	dw $5eb2
	dw $5eb2


; B - script byte
todo_ScriptByteHigh3BitsEqu40hOrLess:
	ld a, b                                          ; $5e47: $78
	and $1f                                          ; $5e48: $e6 $1f
	inc a                                            ; $5e4a: $3c
	call HLequ3A                               ; $5e4b: $cd $0c $52
	call wSwapDEandHL                                       ; $5e4e: $cd $d4 $ce
	ld a, [sCurrOffsetIntoScript]                                    ; $5e51: $fa $bc $bd
	ld l, a                                          ; $5e54: $6f
	ld a, [sCurrOffsetIntoScript+1]                                    ; $5e55: $fa $bd $bd
	ld h, a                                          ; $5e58: $67
	add hl, de                                       ; $5e59: $19
	jp BHLequFFFFFFh                                 ; $5e5a: $c3 $fd $66


todo_ScriptByteHigh3BitsEqu60h_2:
	ld a, b                                          ; $5e5d: $78
	and $1f                                          ; $5e5e: $e6 $1f
	call Call_003_5ed1                               ; $5e60: $cd $d1 $5e
	jp BHLequFFFFFFh                                 ; $5e63: $c3 $fd $66


todo_ScriptByteHigh3BitsEqu80h_2:
	ld a, b                                          ; $5e66: $78
	and $1f                                          ; $5e67: $e6 $1f
	call Call_003_5ee3                               ; $5e69: $cd $e3 $5e
	jp BHLequFFFFFFh                                 ; $5e6c: $c3 $fd $66


todo_ScriptByteHigh4BitsEquA0h_2:
	ld a, b                                          ; $5e6f: $78
	and $0f                                          ; $5e70: $e6 $0f
	jp Jump_003_5ef6                                 ; $5e72: $c3 $f6 $5e


todo_ScriptByteHigh4BitsEquB0h_2:
	ld a, b                                          ; $5e75: $78
	and $0f                                          ; $5e76: $e6 $0f
	call Call_003_5ef6                               ; $5e78: $cd $f6 $5e
	jp BHLequFFFFFFh                                 ; $5e7b: $c3 $fd $66


todo_ScriptByteHigh4BitsEquC0h_2:
	ld a, b                                          ; $5e7e: $78
	and $0f                                          ; $5e7f: $e6 $0f
	call Call_003_5f0b                               ; $5e81: $cd $0b $5f
	jp BHLequFFFFFFh                                 ; $5e84: $c3 $fd $66


todo_ScriptByteHigh4BitsEquD0h_2:
	ld a, b                                          ; $5e87: $78
	and $0f                                          ; $5e88: $e6 $0f
	inc a                                            ; $5e8a: $3c
	call Call_003_5f19                               ; $5e8b: $cd $19 $5f
	jp BHLequFFFFFFh                                 ; $5e8e: $c3 $fd $66


	ld a, b                                          ; $5e91: $78
	and $03                                          ; $5e92: $e6 $03
	jp Jump_003_63ab                                 ; $5e94: $c3 $ab $63


	call Call_003_5ba5                               ; $5e97: $cd $a5 $5b
	jp BHLequFFFFFFh                                 ; $5e9a: $c3 $fd $66


	call Call_003_5ba1                               ; $5e9d: $cd $a1 $5b
	jp BHLequFFFFFFh                                 ; $5ea0: $c3 $fd $66


	call AddScriptByteOrWordOntoNextScriptOffset                               ; $5ea3: $cd $be $5b
	jp BHLequFFFFFFh                                 ; $5ea6: $c3 $fd $66


	call Call_003_5aea                               ; $5ea9: $cd $ea $5a
	call AddScriptByteOrWordOntoNextScriptOffset                               ; $5eac: $cd $be $5b
	jp BHLequFFFFFFh                                 ; $5eaf: $c3 $fd $66


	call DEequNextMainScriptByteOrWord                               ; $5eb2: $cd $73 $55
	ld a, e                                          ; $5eb5: $7b
	ld [$bd98], a                                    ; $5eb6: $ea $98 $bd
	ld a, d                                          ; $5eb9: $7a
	ld [$bd99], a                                    ; $5eba: $ea $99 $bd
	ld a, [sCurrOffsetIntoScript]                                    ; $5ebd: $fa $bc $bd
	ld l, a                                          ; $5ec0: $6f
	ld a, [sCurrOffsetIntoScript+1]                                    ; $5ec1: $fa $bd $bd
	ld h, a                                          ; $5ec4: $67
	add hl, de                                       ; $5ec5: $19
	ld a, l                                          ; $5ec6: $7d
	ld [sCurrOffsetIntoScript], a                                    ; $5ec7: $ea $bc $bd
	ld a, h                                          ; $5eca: $7c
	ld [sCurrOffsetIntoScript+1], a                                    ; $5ecb: $ea $bd $bd
	jp BHLequFFFFFFh                                 ; $5ece: $c3 $fd $66


Call_003_5ed1:
	ld b, a                                          ; $5ed1: $47
	inc b                                            ; $5ed2: $04
	ld c, $00                                        ; $5ed3: $0e $00

jr_003_5ed5:
	call Call_003_5aea                               ; $5ed5: $cd $ea $5a
	call AddScriptByteOrWordOntoNextScriptOffset                               ; $5ed8: $cd $be $5b
	inc c                                            ; $5edb: $0c
	ld a, c                                          ; $5edc: $79
	cp b                                             ; $5edd: $b8
	jr c, jr_003_5ed5                                ; $5ede: $38 $f5

	jp AddScriptByteOrWordOntoNextScriptOffset                                 ; $5ee0: $c3 $be $5b


Call_003_5ee3:
	ld b, a                                          ; $5ee3: $47
	call Call_003_5aea                               ; $5ee4: $cd $ea $5a
	inc b                                            ; $5ee7: $04
	ld c, $00                                        ; $5ee8: $0e $00

jr_003_5eea:
	call AddScriptByteOrWordOntoNextScriptOffset                               ; $5eea: $cd $be $5b
	call AddScriptByteOrWordOntoNextScriptOffset                               ; $5eed: $cd $be $5b
	inc c                                            ; $5ef0: $0c
	ld a, c                                          ; $5ef1: $79
	cp b                                             ; $5ef2: $b8
	jr c, jr_003_5eea                                ; $5ef3: $38 $f5

	ret                                              ; $5ef5: $c9


Call_003_5ef6:
Jump_003_5ef6:
	push af                                          ; $5ef6: $f5
	call Call_003_5ba1                               ; $5ef7: $cd $a1 $5b
	pop bc                                           ; $5efa: $c1
	inc b                                            ; $5efb: $04
	inc b                                            ; $5efc: $04
	ld c, $00                                        ; $5efd: $0e $00
	call IncMainScriptSavedOffset                               ; $5eff: $cd $78 $5b
	call AddScriptByteOrWordOntoNextScriptOffset                               ; $5f02: $cd $be $5b
	inc c                                            ; $5f05: $0c
	ld a, c                                          ; $5f06: $79
	cp b                                             ; $5f07: $b8
	jr c, jr_003_5f0a                                ; $5f08: $38 $00

jr_003_5f0a:
	ret                                              ; $5f0a: $c9


Call_003_5f0b:
	push af                                          ; $5f0b: $f5
	call AequNextMainScriptByte                               ; $5f0c: $cd $09 $55
	pop hl                                           ; $5f0f: $e1
	ld l, a                                          ; $5f10: $6f
	rst FarCall                                          ; $5f11: $f7
	AddrBank Func_0c_4000
	ret                                              ; $5f15: $c9


	call AequNextMainScriptByte                               ; $5f16: $cd $09 $55

Call_003_5f19:
	ld a, [sCurrOffsetIntoScript]                                    ; $5f19: $fa $bc $bd
	ld e, a                                          ; $5f1c: $5f
	ld a, [sCurrOffsetIntoScript+1]                                    ; $5f1d: $fa $bd $bd
	ld d, a                                          ; $5f20: $57
	call HLequDEplus3A                               ; $5f21: $cd $15 $52
	ld a, l                                          ; $5f24: $7d
	ld [sCurrOffsetIntoScript], a                                    ; $5f25: $ea $bc $bd
	ld a, h                                          ; $5f28: $7c
	ld [sCurrOffsetIntoScript+1], a                                    ; $5f29: $ea $bd $bd
	jp Call_003_5aea                                 ; $5f2c: $c3 $ea $5a


; B - script byte
ScriptByteHigh3BitsEqu00h:
; B = other bits of the script byte (num loops below -1)
	ld a, b                                          ; $5f2f: $78
	and $1f                                          ; $5f30: $e6 $1f
	ld b, a                                          ; $5f32: $47

; preserve 3 bytes each from these locations
	call Push3BytesInWordAfterOntoScriptStack                               ; $5f33: $cd $82 $52
	dw $bdce
	call Push3BytesInWordAfterOntoScriptStack                               ; $5f38: $cd $82 $52
	dw $bdb8

; b = some value between 1 and $20 (num loops)
	inc b                                            ; $5f3d: $04
	ld c, $00                                        ; $5f3e: $0e $00
	jr .toLoop_5f42                                   ; $5f40: $18 $1c

.loop_5f42:
	push bc                                          ; $5f42: $c5
	call todo_Set_bdba_to_bdb8_toBupTo1FhAndHLinMainScripts                               ; $5f43: $cd $18 $58
	ld hl, $0001                                     ; $5f46: $21 $01 $00
	ld b, $00                                        ; $5f49: $06 $00
	call todo_Set_bdce_to_bdd0_toLHB                               ; $5f4b: $cd $6f $5f
	ld a, [$bdb8]                                    ; $5f4e: $fa $b8 $bd
	ld l, a                                          ; $5f51: $6f
	ld a, [$bdb9]                                    ; $5f52: $fa $b9 $bd
	ld h, a                                          ; $5f55: $67
	ld a, [$bdba]                                    ; $5f56: $fa $ba $bd
	call Call_003_5652                               ; $5f59: $cd $52 $56
	pop bc                                           ; $5f5c: $c1
	inc c                                            ; $5f5d: $0c

.toLoop_5f42:
	ld a, c                                          ; $5f5e: $79
	cp b                                             ; $5f5f: $b8
	jr c, .loop_5f42                                ; $5f60: $38 $e0

; restore 3 bytes each from these locations
	call Copy3BytesFromScriptStackToWordAfter                               ; $5f62: $cd $df $52
	dw $bdb8
	call Copy3BytesFromScriptStackToWordAfter                               ; $5f67: $cd $df $52
	dw $bdce
	jp BHLequFFFFFFh                                 ; $5f6c: $c3 $fd $66


todo_Set_bdce_to_bdd0_toLHB:
	ld a, l                                          ; $5f6f: $7d
	ld [$bdce], a                                    ; $5f70: $ea $ce $bd
	ld a, h                                          ; $5f73: $7c
	ld [$bdcf], a                                    ; $5f74: $ea $cf $bd
	ld a, b                                          ; $5f77: $78
	ld [$bdd0], a                                    ; $5f78: $ea $d0 $bd
	ret                                              ; $5f7b: $c9


todo_ScriptByteHigh3BitsEqu20h:
	ld a, b                                          ; $5f7c: $78
	and $1f                                          ; $5f7d: $e6 $1f
	ld b, a                                          ; $5f7f: $47
	call Push3BytesInWordAfterOntoScriptStack                               ; $5f80: $cd $82 $52
	dw $bdce
	call Push3BytesInWordAfterOntoScriptStack                               ; $5f85: $cd $82 $52
	dw $bdb8
	inc b                                            ; $5f8a: $04
	ld c, $00                                        ; $5f8b: $0e $00

.loop_5f8d:
	call PushBContoScriptStack                               ; $5f8d: $cd $51 $52
	call todo_Set_bdba_to_bdb8_toBupTo1FhAndHLinMainScripts                               ; $5f90: $cd $18 $58
	ld a, [$bdb8]                                    ; $5f93: $fa $b8 $bd
	ld l, a                                          ; $5f96: $6f
	ld a, [$bdb9]                                    ; $5f97: $fa $b9 $bd
	ld h, a                                          ; $5f9a: $67
	ld a, [$bdba]                                    ; $5f9b: $fa $ba $bd
	call Call_003_5821                               ; $5f9e: $cd $21 $58
	call PopBCfromScriptStack                               ; $5fa1: $cd $bd $52
	ld a, [$bdce]                                    ; $5fa4: $fa $ce $bd
	ld e, a                                          ; $5fa7: $5f
	ld a, [$bdcf]                                    ; $5fa8: $fa $cf $bd
	ld d, a                                          ; $5fab: $57
	ld a, [$bdd0]                                    ; $5fac: $fa $d0 $bd
	ld l, a                                          ; $5faf: $6f
	ld a, [$bdd1]                                    ; $5fb0: $fa $d1 $bd
	ld h, a                                          ; $5fb3: $67
	and l                                            ; $5fb4: $a5
	and d                                            ; $5fb5: $a2
	and e                                            ; $5fb6: $a3
	inc a                                            ; $5fb7: $3c
	jr z, .end_5fe9                                ; $5fb8: $28 $2f

	inc de                                           ; $5fba: $13
	ld a, d                                          ; $5fbb: $7a
	or e                                             ; $5fbc: $b3
	jr nz, :+                               ; $5fbd: $20 $01
	inc hl                                           ; $5fbf: $23
:	ld a, e                                          ; $5fc0: $7b
	ld [$bdce], a                                    ; $5fc1: $ea $ce $bd
	ld a, d                                          ; $5fc4: $7a
	ld [$bdcf], a                                    ; $5fc5: $ea $cf $bd
	ld a, l                                          ; $5fc8: $7d
	ld [$bdd0], a                                    ; $5fc9: $ea $d0 $bd
	ld a, h                                          ; $5fcc: $7c
	ld [$bdd1], a                                    ; $5fcd: $ea $d1 $bd
	call PushBContoScriptStack                               ; $5fd0: $cd $51 $52
	ld a, [$bdb8]                                    ; $5fd3: $fa $b8 $bd
	ld l, a                                          ; $5fd6: $6f
	ld a, [$bdb9]                                    ; $5fd7: $fa $b9 $bd
	ld h, a                                          ; $5fda: $67
	ld a, [$bdba]                                    ; $5fdb: $fa $ba $bd
	call Call_003_5652                               ; $5fde: $cd $52 $56
	call PopBCfromScriptStack                               ; $5fe1: $cd $bd $52
	inc c                                            ; $5fe4: $0c
	ld a, c                                          ; $5fe5: $79
	cp b                                             ; $5fe6: $b8
	jr c, .loop_5f8d                                ; $5fe7: $38 $a4

.end_5fe9:
	call Copy3BytesFromScriptStackToWordAfter                               ; $5fe9: $cd $df $52
	dw $bdb8
	call Copy3BytesFromScriptStackToWordAfter                               ; $5fee: $cd $df $52
	dw $bdce
	jp BHLequFFFFFFh                                 ; $5ff3: $c3 $fd $66


; B - script byte
todo_ScriptByteHigh3BitsEqu40h:
; b = low 5 bits of control code, preserve some sram vars
	ld a, b                                          ; $5ff6: $78
	and $1f                                          ; $5ff7: $e6 $1f
	ld b, a                                          ; $5ff9: $47

	call Push3BytesInWordAfterOntoScriptStack                               ; $5ffa: $cd $82 $52
	dw $bdce
	call Push3BytesInWordAfterOntoScriptStack                               ; $5fff: $cd $82 $52
	dw $bdb8

; B += 1 to get num loops, C = loop counter
	inc b                                            ; $6004: $04
	ld c, $00                                        ; $6005: $0e $00

.loop_6007:
	push bc                                          ; $6007: $c5

;
	call todo_Set_bdba_to_bdb8_toBupTo1FhAndHLinMainScripts                               ; $6008: $cd $18 $58
	ld hl, $0000                                     ; $600b: $21 $00 $00
	ld a, l                                          ; $600e: $7d
	ld [$bdce], a                                    ; $600f: $ea $ce $bd
	ld a, h                                          ; $6012: $7c
	ld [$bdcf], a                                    ; $6013: $ea $cf $bd
	ld a, l                                          ; $6016: $7d
	ld [$bdd0], a                                    ; $6017: $ea $d0 $bd
	ld a, h                                          ; $601a: $7c
	ld [$bdd1], a                                    ; $601b: $ea $d1 $bd

	ld a, [$bdb8]                                    ; $601e: $fa $b8 $bd
	ld l, a                                          ; $6021: $6f
	ld a, [$bdb9]                                    ; $6022: $fa $b9 $bd
	ld h, a                                          ; $6025: $67
	ld a, [$bdba]                                    ; $6026: $fa $ba $bd
	call Call_003_5652                               ; $6029: $cd $52 $56

; Inc counter, breaking when >= B, ie B is num loops
	pop bc                                           ; $602c: $c1
	inc c                                            ; $602d: $0c
	ld a, c                                          ; $602e: $79
	cp b                                             ; $602f: $b8
	jr c, .loop_6007                                ; $6030: $38 $d5

; restore sram vars, and return 'continue' flag
	call Copy3BytesFromScriptStackToWordAfter                               ; $6032: $cd $df $52
	dw $bdb8
	call Copy3BytesFromScriptStackToWordAfter                               ; $6037: $cd $df $52
	dw $bdce

	jp BHLequFFFFFFh                                 ; $603c: $c3 $fd $66


; B - script byte
todo_ScriptByteHigh3BitsEqu60h_1:
	ld a, b                                          ; $603f: $78
	and $1f                                          ; $6040: $e6 $1f
	ld b, a                                          ; $6042: $47
	inc b                                            ; $6043: $04
	ld c, $00                                        ; $6044: $0e $00

.loop_6046:
	call GetAndOrNext3of4TaskParamBytes                               ; $6046: $cd $25 $6f
	jr nz, .cont_6053                               ; $6049: $20 $08

	call AddScriptByteOrWordOntoNextScriptOffset                               ; $604b: $cd $be $5b
	inc c                                            ; $604e: $0c
	ld a, c                                          ; $604f: $79
	cp b                                             ; $6050: $b8
	jr c, .loop_6046                                ; $6051: $38 $f3

.cont_6053:
	call PushBContoScriptStack                               ; $6053: $cd $51 $52
	ld a, [stodo_PreservedHLrelatedToScriptStack]                                    ; $6056: $fa $94 $bd
	ld l, a                                          ; $6059: $6f
	ld a, [stodo_PreservedHLrelatedToScriptStack+1]                                    ; $605a: $fa $95 $bd
	ld h, a                                          ; $605d: $67
	call ExecScriptUpToNextScriptByteOrWord                               ; $605e: $cd $17 $5d
	call SetTempLHBforScriptRelatedReturnsToLHB                               ; $6061: $cd $38 $65
	call PopBCfromScriptStack                               ; $6064: $cd $bd $52
	bit 7, a                                         ; $6067: $cb $7f
	jp z, LHBequTempBytesForScriptRelatedReturns                              ; $6069: $ca $45 $65

	ld a, c                                          ; $606c: $79
	cp b                                             ; $606d: $b8
	call c, Call_003_607a                            ; $606e: $dc $7a $60
	jp BHLequFFFFFFh                                 ; $6071: $c3 $fd $66


;
:	call Call_003_5aea                               ; $6074: $cd $ea $5a
	call AddScriptByteOrWordOntoNextScriptOffset                               ; $6077: $cd $be $5b

Call_003_607a:
	inc c                                            ; $607a: $0c
	ld a, c                                          ; $607b: $79
	cp b                                             ; $607c: $b8
	jr c, :-                                ; $607d: $38 $f5

	jp AddScriptByteOrWordOntoNextScriptOffset                                 ; $607f: $c3 $be $5b


ScriptByteFCh_CallNonZeroTableEntry:
; bc = addr to run until
	call BCequScriptByteOrWordPlusNextOffset                               ; $6082: $cd $84 $55

.loop_6085:
; once past last addr, return with a 'keep running' flag
	call CpCurrOffsetIntoScriptToBC                               ; $6085: $cd $98 $55
	jp nc, BHLequFFFFFFh                             ; $6088: $d2 $fd $66

; add script word after params until params != 0
	call GetAndOrNext3of4TaskParamBytes                               ; $608b: $cd $25 $6f
	jr nz, .br_6095                               ; $608e: $20 $05

	call AddScriptByteOrWordOntoNextScriptOffset                               ; $6090: $cd $be $5b
	jr .loop_6085                                   ; $6093: $18 $f0

.br_6095:
	call PushBContoScriptStack                               ; $6095: $cd $51 $52

; exec script for table entry where params != 0 above
	ld a, [stodo_PreservedHLrelatedToScriptStack]                                    ; $6098: $fa $94 $bd
	ld l, a                                          ; $609b: $6f
	ld a, [stodo_PreservedHLrelatedToScriptStack+1]                                    ; $609c: $fa $95 $bd
	ld h, a                                          ; $609f: $67
	call ExecScriptUpToNextScriptByteOrWord                               ; $60a0: $cd $17 $5d
	call SetTempLHBforScriptRelatedReturnsToLHB                               ; $60a3: $cd $38 $65
	
; curr offset is past the above table entries, return result of script
	call PopBCfromScriptStack                               ; $60a6: $cd $bd $52
	ld a, c                                          ; $60a9: $79
	ld [sCurrOffsetIntoScript], a                                    ; $60aa: $ea $bc $bd
	ld a, b                                          ; $60ad: $78
	ld [sCurrOffsetIntoScript+1], a                                    ; $60ae: $ea $bd $bd
	jp LHBequTempBytesForScriptRelatedReturns                                 ; $60b1: $c3 $45 $65


ScriptByteFBh_ExecScriptIfNonZero:
; Jump if
	call GetAndOrNext3of4TaskParamBytes                               ; $60b4: $cd $25 $6f
	jr z, .relativeJump                                ; $60b7: $28 $0b

	ld a, [stodo_PreservedHLrelatedToScriptStack]                                    ; $60b9: $fa $94 $bd
	ld l, a                                          ; $60bc: $6f
	ld a, [stodo_PreservedHLrelatedToScriptStack+1]                                    ; $60bd: $fa $95 $bd
	ld h, a                                          ; $60c0: $67
	jp ExecScriptUpToNextScriptByteOrWord                                 ; $60c1: $c3 $17 $5d

.relativeJump:
	call AddScriptByteOrWordOntoNextScriptOffset                               ; $60c4: $cd $be $5b
	jp BHLequFFFFFFh                                 ; $60c7: $c3 $fd $66


; B - script byte
ScriptByteHigh3BitsEqu80h_ExecAtMost1ScriptWithAtLeast1MatchingCond:
; Store non-control bits in B (num scripts-1), then preserve temp task params
	ld a, b                                                         ; $60ca
	and $1f                                                         ; $60cb
	ld b, a                                                         ; $60cd

	call Push4BytesInWordAfterOntoScriptStack                       ; $60ce
	dw sTempTaskParams

; Set a new set of temp task params
	call PushBContoScriptStack                                      ; $60d3
	call SetTempTaskParamsToNextTaskParams                          ; $60d6
	call PopBCfromScriptStack                                       ; $60d9

; Run loop with B = $01 to $20, and C = 0
	inc b                                                           ; $60dc
	ld c, $00                                                       ; $60dd
	jr .toNextPotentialScript                                       ; $60df

.nextPotentialScript:
; Try to execute the script, which happens if a task param == our temp task params
	call PushBContoScriptStack                                      ; $60e1
	call ExecAScriptIfAtLeast1MatchingCond                          ; $60e4
	call SetTempLHBforScriptRelatedReturnsToLHB                     ; $60e7
	call PopBCfromScriptStack                                       ; $60ea

; Jump if script returned a jump address
	bit 7, a                                                        ; $60ed
	jr z, .jump                                                     ; $60ef

; Jump if $ffffff (continue flag)
	ld a, l                                                         ; $60f1
	and h                                                           ; $60f2
	inc a                                                           ; $60f3
	jr z, .continueScript                                           ; $60f4

; Else go to next script
	inc c                                                           ; $60f6

.toNextPotentialScript:
; Exit once loop counter >= B, ie B after initial inc is num loops
	ld a, c                                                         ; $60f7
	cp b                                                            ; $60f8
	jr c, .nextPotentialScript                                      ; $60f9

.continueScript:
; Loop to skip remaining scripts
	jr :+                                                           ; $60fb

.nextScriptToSkip:
; Potential script byte 0 is num bytes for conditions to match (task params)
; Num potential script bytes to skip over
	call AddScriptByteOrWordOntoNextScriptOffset                    ; $60fd
	call AddScriptByteOrWordOntoNextScriptOffset                    ; $6100

:	inc c                                                           ; $6103
	ld a, c                                                         ; $6104
	cp b                                                            ; $6105
	jr c, .nextScriptToSkip                                         ; $6106

; Return 'continue' value, and restore caller's temp task params
	call BHLequFFFFFFh                                              ; $6108
	call Copy4BytesFromScriptStackToWordAfter                       ; $610b
	dw sTempTaskParams
	ret                                                             ; $6110

.jump:
; Return jump address in LHB, and restore caller's temp task params
	call LHBequTempBytesForScriptRelatedReturns                     ; $6111
	call Copy4BytesFromScriptStackToWordAfter                       ; $6114
	dw sTempTaskParams
	ret                                                             ; $6119


ScriptByteFDh_ExecAnyScriptsWithAtLeast1MatchingCond:
; Preserve caller's temp task params, get BC (ending offset) after
	call Push4BytesInWordAfterOntoScriptStack                       ; $611a
	dw sTempTaskParams
	call BCequScriptByteOrWordPlusNextOffset                        ; $611f

; Default LHB return is $ffffff, set new temp task params
	call PushBContoScriptStack                                      ; $6122
	call BHLequFFFFFFh                                              ; $6125
	call SetTempLHBforScriptRelatedReturnsToLHB                     ; $6128
	call SetTempTaskParamsToNextTaskParams                          ; $612b
	call PopBCfromScriptStack                                       ; $612e

.nextPotentialScript:
; Jump once we're past the ending address
	call CpCurrOffsetIntoScriptToBC                                 ; $6131
	jr nc, .end                                                     ; $6134

; Exec a script if a following condition matches
	call PushBContoScriptStack                                      ; $6136
	call ExecAScriptIfAtLeast1MatchingCond                          ; $6139
	call SetTempLHBforScriptRelatedReturnsToLHB                     ; $613c
	call PopBCfromScriptStack                                       ; $613f

; Test next script's task params, looping if none matches, (and no script ran)
	ld de, NO_SUBSCRIPT_RAN                                         ; $6142
	call wCpHLtoDE                                                  ; $6145
	jr z, .nextPotentialScript                                      ; $6148

.end:
; Set script offset to past all task/scripts above
	ld a, c                                                         ; $614a
	ld [sCurrOffsetIntoScript], a                                   ; $614b
	ld a, b                                                         ; $614e
	ld [sCurrOffsetIntoScript+1], a                                 ; $614f

; Return result of ExecAScriptIfAtLeast1MatchingCond, or NO_SUBSCRIPT_RAN, in LHB
; Restore caller's temp params
	call LHBequTempBytesForScriptRelatedReturns                     ; $6152
	call Copy4BytesFromScriptStackToWordAfter                       ; $6155
	dw sTempTaskParams
	ret                                                             ; $615a


ExecAScriptIfAtLeast1MatchingCond:
; If next script word == 0, exec til script word after that, else its the ending offset
	call BCequScriptByteOrWordPlusNextOffset                        ; $615b
	jr z, .execScriptTilNextScriptWord                              ; $615e

.nextTaskParams:
; Loop until at or past the ending address
	call CpCurrOffsetIntoScriptToBC                                 ; $6160
	jr nc, .jumpToScriptWordRetNoSubScriptRan                       ; $6163

; Exit loop once task params == temp task params from caller
	call CheckIfNextTaskParamsEquTempTaskParams                     ; $6165
	jr nz, .nextTaskParams                                          ; $6168

; Jump to the ending address...
	ld a, c                                                         ; $616a
	ld [sCurrOffsetIntoScript], a                                   ; $616b
	ld a, b                                                         ; $616e
	ld [sCurrOffsetIntoScript+1], a                                 ; $616f

.execScriptTilNextScriptWord:
; Then exec script until next byte/word in script
	ld a, [stodo_PreservedHLrelatedToScriptStack]                                    ; $6172: $fa $94 $bd
	ld l, a                                          ; $6175: $6f
	ld a, [stodo_PreservedHLrelatedToScriptStack+1]                                    ; $6176: $fa $95 $bd
	ld h, a                                          ; $6179: $67
	jp ExecScriptUpToNextScriptByteOrWord                                 ; $617a: $c3 $17 $5d

.jumpToScriptWordRetNoSubScriptRan:
; Skip past the script we could have ran
	call AddScriptByteOrWordOntoNextScriptOffset                    ; $617d
	jp BHLequNoSubScriptRan                                         ; $6180


todo_ScriptByteHigh4BitsEquA0h_1:
	ld a, b                                          ; $6183: $78
	and $0f                                          ; $6184: $e6 $0f
	ld b, a                                          ; $6186: $47
	call Push3BytesInWordAfterOntoScriptStack                               ; $6187: $cd $82 $52
	dw $bdb8
	call Push4BytesInWordAfterOntoScriptStack                               ; $618c: $cd $93 $52
	dw $bdb4
	call Call_003_619f                               ; $6191: $cd $9f $61
	call Copy4BytesFromScriptStackToWordAfter                               ; $6194: $cd $e8 $52
	dw $bdb4
	call Copy3BytesFromScriptStackToWordAfter                               ; $6199: $cd $df $52
	dw $bdb8
	ret                                              ; $619e: $c9


Call_003_619f:
	inc b                                            ; $619f: $04
	inc b                                            ; $61a0: $04
	call PushBContoScriptStack                               ; $61a1: $cd $51 $52
	call BHLequFFFFFFh                               ; $61a4: $cd $fd $66
	call SetTempLHBforScriptRelatedReturnsToLHB                               ; $61a7: $cd $38 $65
	call Call_003_5805                               ; $61aa: $cd $05 $58
	call PopBCfromScriptStack                               ; $61ad: $cd $bd $52
	ld c, $00                                        ; $61b0: $0e $00

jr_003_61b2:
	ld a, c                                          ; $61b2: $79
	cp b                                             ; $61b3: $b8
	jr nc, jr_003_61de                               ; $61b4: $30 $28

	call PushBContoScriptStack                               ; $61b6: $cd $51 $52
	call AequNextMainScriptByte                               ; $61b9: $cd $09 $55
	ld hl, $bdb4                                     ; $61bc: $21 $b4 $bd
	cp [hl]                                          ; $61bf: $be
	jr c, jr_003_61d5                                ; $61c0: $38 $13

	ld a, [stodo_PreservedHLrelatedToScriptStack]                                    ; $61c2: $fa $94 $bd
	ld l, a                                          ; $61c5: $6f
	ld a, [stodo_PreservedHLrelatedToScriptStack+1]                                    ; $61c6: $fa $95 $bd
	ld h, a                                          ; $61c9: $67
	call ExecScriptUpToNextScriptByteOrWord                               ; $61ca: $cd $17 $5d
	call SetTempLHBforScriptRelatedReturnsToLHB                               ; $61cd: $cd $38 $65
	call PopBCfromScriptStack                               ; $61d0: $cd $bd $52
	jr jr_003_61de                                   ; $61d3: $18 $09

jr_003_61d5:
	call AddScriptByteOrWordOntoNextScriptOffset                               ; $61d5: $cd $be $5b
	call PopBCfromScriptStack                               ; $61d8: $cd $bd $52
	inc c                                            ; $61db: $0c
	jr jr_003_61b2                                   ; $61dc: $18 $d4

jr_003_61de:
	ld a, [sTempLHBFromScriptRelatedReturns+2]                                    ; $61de: $fa $a5 $bd
	bit 7, a                                         ; $61e1: $cb $7f
	jp z, LHBequTempBytesForScriptRelatedReturns                              ; $61e3: $ca $45 $65

	jr jr_003_61ee                                   ; $61e6: $18 $06

jr_003_61e8:
	call IncMainScriptSavedOffset                               ; $61e8: $cd $78 $5b
	call AddScriptByteOrWordOntoNextScriptOffset                               ; $61eb: $cd $be $5b

jr_003_61ee:
	inc c                                            ; $61ee: $0c
	ld a, c                                          ; $61ef: $79
	cp b                                             ; $61f0: $b8
	jr c, jr_003_61e8                                ; $61f1: $38 $f5

	jp BHLequFFFFFFh                                 ; $61f3: $c3 $fd $66


todo_ScriptByteFEh:
	ld b, a                                          ; $61f6: $47
	call Push3BytesInWordAfterOntoScriptStack                               ; $61f7: $cd $82 $52
	dw $bdb8
	call Push4BytesInWordAfterOntoScriptStack                               ; $61fc: $cd $93 $52
	dw $bdb4
	call Call_003_620f                               ; $6201: $cd $0f $62
	call Copy4BytesFromScriptStackToWordAfter                               ; $6204: $cd $e8 $52
	dw $bdb4
	call Copy3BytesFromScriptStackToWordAfter                               ; $6209: $cd $df $52
	dw $bdb8
	ret                                              ; $620e: $c9


Call_003_620f:
	call BCequScriptByteOrWordPlusNextOffset                               ; $620f: $cd $84 $55
	call Call_003_5805                               ; $6212: $cd $05 $58

jr_003_6215:
	call CpCurrOffsetIntoScriptToBC                               ; $6215: $cd $98 $55
	jp nc, BHLequFFFFFFh                             ; $6218: $d2 $fd $66

	call PushBContoScriptStack                               ; $621b: $cd $51 $52
	call AequNextMainScriptByte                               ; $621e: $cd $09 $55
	ld hl, $bdb4                                     ; $6221: $21 $b4 $bd
	cp [hl]                                          ; $6224: $be
	jp c, Jump_003_6244                              ; $6225: $da $44 $62

Jump_003_6228:
	ld a, [stodo_PreservedHLrelatedToScriptStack]                                    ; $6228: $fa $94 $bd
	ld l, a                                          ; $622b: $6f
	ld a, [stodo_PreservedHLrelatedToScriptStack+1]                                    ; $622c: $fa $95 $bd
	ld h, a                                          ; $622f: $67
	call ExecScriptUpToNextScriptByteOrWord                               ; $6230: $cd $17 $5d
	call SetTempLHBforScriptRelatedReturnsToLHB                               ; $6233: $cd $38 $65
	call PopBCfromScriptStack                               ; $6236: $cd $bd $52
	ld a, c                                          ; $6239: $79
	ld [sCurrOffsetIntoScript], a                                    ; $623a: $ea $bc $bd
	ld a, b                                          ; $623d: $78
	ld [sCurrOffsetIntoScript+1], a                                    ; $623e: $ea $bd $bd
	jp LHBequTempBytesForScriptRelatedReturns                                 ; $6241: $c3 $45 $65


Jump_003_6244:
	call AddScriptByteOrWordOntoNextScriptOffset                               ; $6244: $cd $be $5b
	call PopBCfromScriptStack                               ; $6247: $cd $bd $52
	jr jr_003_6215                                   ; $624a: $18 $c9

todo_ScriptByteHigh4BitsEquB0h_1:
	ld a, b                                          ; $624c: $78
	and $0f                                          ; $624d: $e6 $0f
	ld b, a                                          ; $624f: $47
	inc b                                            ; $6250: $04
	inc b                                            ; $6251: $04
	call PushBContoScriptStack                               ; $6252: $cd $51 $52
	call Call_003_6ac5                               ; $6255: $cd $c5 $6a
	push de                                          ; $6258: $d5
	call BHLequFFFFFFh                               ; $6259: $cd $fd $66
	call SetTempLHBforScriptRelatedReturnsToLHB                               ; $625c: $cd $38 $65
	pop de                                           ; $625f: $d1
	call PopBCfromScriptStack                               ; $6260: $cd $bd $52
	ld c, $00                                        ; $6263: $0e $00

jr_003_6265:
	ld a, c                                          ; $6265: $79
	cp b                                             ; $6266: $b8
	jr nc, jr_003_628e                               ; $6267: $30 $25

	call PushBContoScriptStack                               ; $6269: $cd $51 $52
	call AequNextMainScriptByte                               ; $626c: $cd $09 $55
	cp e                                             ; $626f: $bb
	jr c, jr_003_6285                                ; $6270: $38 $13

	ld a, [stodo_PreservedHLrelatedToScriptStack]                                    ; $6272: $fa $94 $bd
	ld l, a                                          ; $6275: $6f
	ld a, [stodo_PreservedHLrelatedToScriptStack+1]                                    ; $6276: $fa $95 $bd
	ld h, a                                          ; $6279: $67
	call ExecScriptUpToNextScriptByteOrWord                               ; $627a: $cd $17 $5d
	call SetTempLHBforScriptRelatedReturnsToLHB                               ; $627d: $cd $38 $65
	call PopBCfromScriptStack                               ; $6280: $cd $bd $52
	jr jr_003_628e                                   ; $6283: $18 $09

jr_003_6285:
	call AddScriptByteOrWordOntoNextScriptOffset                               ; $6285: $cd $be $5b
	call PopBCfromScriptStack                               ; $6288: $cd $bd $52
	inc c                                            ; $628b: $0c
	jr jr_003_6265                                   ; $628c: $18 $d7

jr_003_628e:
	ld a, [sTempLHBFromScriptRelatedReturns+2]                                    ; $628e: $fa $a5 $bd
	bit 7, a                                         ; $6291: $cb $7f
	jp z, LHBequTempBytesForScriptRelatedReturns                              ; $6293: $ca $45 $65

	jr jr_003_629e                                   ; $6296: $18 $06

jr_003_6298:
	call IncMainScriptSavedOffset                               ; $6298: $cd $78 $5b
	call AddScriptByteOrWordOntoNextScriptOffset                               ; $629b: $cd $be $5b

jr_003_629e:
	inc c                                            ; $629e: $0c
	ld a, c                                          ; $629f: $79
	cp b                                             ; $62a0: $b8
	jr c, jr_003_6298                                ; $62a1: $38 $f5

	jp BHLequFFFFFFh                                 ; $62a3: $c3 $fd $66


todo_ScriptByteFFh:
	call BCequScriptByteOrWordPlusNextOffset                               ; $62a6: $cd $84 $55
	call PushBContoScriptStack                               ; $62a9: $cd $51 $52
	call Call_003_6ac5                               ; $62ac: $cd $c5 $6a
	call PopBCfromScriptStack                               ; $62af: $cd $bd $52

jr_003_62b2:
	call CpCurrOffsetIntoScriptToBC                               ; $62b2: $cd $98 $55
	jp nc, BHLequFFFFFFh                             ; $62b5: $d2 $fd $66

	call PushBContoScriptStack                               ; $62b8: $cd $51 $52
	call AequNextMainScriptByte                               ; $62bb: $cd $09 $55
	cp e                                             ; $62be: $bb
	jp nc, Jump_003_6228                             ; $62bf: $d2 $28 $62

	call AddScriptByteOrWordOntoNextScriptOffset                               ; $62c2: $cd $be $5b
	call PopBCfromScriptStack                               ; $62c5: $cd $bd $52
	jr jr_003_62b2                                   ; $62c8: $18 $e8


; B - script byte
ScriptByteHighestNybbleEquC_PerformScriptTask:
; Popped H = low nybble of script byte, L = next script byte
	ld a, b                                                         ; $62ca
	and $0f                                                         ; $62cb
	push af                                                         ; $62cd
	call AequNextMainScriptByte                                     ; $62ce

	pop hl                                                          ; $62d1
	ld l, a                                                         ; $62d2

; perform script task
	call SafePerformScriptTask                               ; $62d3: $cd $37 $73
	jp BHLequFFFFFFh                                 ; $62d6: $c3 $fd $66


; B - script byte
ScriptByteHighestNybbleEquD:
	ld a, b                                          ; $62d9: $78
	and $0f                                          ; $62da: $e6 $0f
	db _LD_DE_D16

todo_ScriptByteEEh:
	ld a, $ff ; $62dd: $3e $ff
	ld b, a                                          ; $62df: $47
	call Push3BytesInWordAfterOntoScriptStack                               ; $62e0: $cd $82 $52
	dw $bdce

;
	ld a, b                                          ; $62e5: $78
	inc a                                            ; $62e6: $3c
	call z, AequNextMainScriptByte                            ; $62e7: $cc $09 $55
	ld b, a                                          ; $62ea: $47
	push af                                          ; $62eb: $f5

; preserve offset into the script
	ld a, [sCurrOffsetIntoScript]                                    ; $62ec: $fa $bc $bd
	ld e, a                                          ; $62ef: $5f
	ld a, [sCurrOffsetIntoScript+1]                                    ; $62f0: $fa $bd $bd
	ld d, a                                          ; $62f3: $57
	push de                                          ; $62f4: $d5

;
	ld a, b                                          ; $62f5: $78
	call HLequDEplus3A                               ; $62f6: $cd $15 $52
	ld a, l                                          ; $62f9: $7d
	ld [sCurrOffsetIntoScript], a                                    ; $62fa: $ea $bc $bd
	ld a, h                                          ; $62fd: $7c
	ld [sCurrOffsetIntoScript+1], a                                    ; $62fe: $ea $bd $bd
	call DEHLequTaskParams                               ; $6301: $cd $ba $58
	ld a, e                                          ; $6304: $7b
	ld [$bdce], a                                    ; $6305: $ea $ce $bd
	ld a, d                                          ; $6308: $7a
	ld [$bdcf], a                                    ; $6309: $ea $cf $bd
	ld a, l                                          ; $630c: $7d
	ld [$bdd0], a                                    ; $630d: $ea $d0 $bd
	ld a, h                                          ; $6310: $7c
	ld [$bdd1], a                                    ; $6311: $ea $d1 $bd
	ld a, [sCurrOffsetIntoScript]                                    ; $6314: $fa $bc $bd
	ld e, a                                          ; $6317: $5f
	ld a, [sCurrOffsetIntoScript+1]                                    ; $6318: $fa $bd $bd
	ld d, a                                          ; $631b: $57

; restore offset into the script
	pop hl                                           ; $631c: $e1
	ld a, l                                          ; $631d: $7d
	ld [sCurrOffsetIntoScript], a                                    ; $631e: $ea $bc $bd
	ld a, h                                          ; $6321: $7c
	ld [sCurrOffsetIntoScript+1], a                                    ; $6322: $ea $bd $bd

; bc = orig B param, +1, or new if $ff, push other offset into script DE
	pop bc                                           ; $6325: $c1
	push de                                          ; $6326: $d5
	ld c, $00                                        ; $6327: $0e $00

.loop_6329:
	call PushBContoScriptStack                               ; $6329: $cd $51 $52
	call GetBupTo1FhAndHLinMainScript                               ; $632c: $cd $a3 $55
	call Call_003_5652                               ; $632f: $cd $52 $56
	call PopBCfromScriptStack                               ; $6332: $cd $bd $52
	inc c                                            ; $6335: $0c
	ld a, c                                          ; $6336: $79
	cp b                                             ; $6337: $b8
	jr c, .loop_6329                                ; $6338: $38 $ef

	pop hl                                           ; $633a: $e1
	ld a, l                                          ; $633b: $7d
	ld [sCurrOffsetIntoScript], a                                    ; $633c: $ea $bc $bd
	ld a, h                                          ; $633f: $7c
	ld [sCurrOffsetIntoScript+1], a                                    ; $6340: $ea $bd $bd
	call Copy3BytesFromScriptStackToWordAfter                               ; $6343: $cd $df $52
	dw $bdce
	jp BHLequFFFFFFh                                 ; $6348: $c3 $fd $66


todo_ScriptByteE0toE3h_Call:
	ld a, b                                          ; $634b: $78
	and $03                                          ; $634c: $e6 $03
	ld b, a                                          ; $634e: $47
	call Push3BytesInWordAfterOntoScriptStack                               ; $634f: $cd $82 $52
	dw sTempLHBFromScriptRelatedReturns

;
	ld de, CallAScriptFromCompactScriptLocLHB                                     ; $6354: $11 $63 $63
	call Call_003_6e5a                               ; $6357: $cd $5a $6e
	call LHBequTempBytesForScriptRelatedReturns                               ; $635a: $cd $45 $65

	call Copy3BytesFromScriptStackToWordAfter                               ; $635d: $cd $df $52
	dw sTempLHBFromScriptRelatedReturns
	ret                                              ; $6362: $c9


CallAScriptFromCompactScriptLocLHB:
; Preserve any previous temp LHB's, and set mixed offset/idx to LHB
	call Push3BytesInWordAfterOntoScriptStack                       ; $6363
	dw sTempLHBFromScriptRelatedReturns

	ld a, l                                                         ; $6368
	ld [sCompactScriptLoc], a                                       ; $6369
	ld a, h                                                         ; $636c
	ld [sCompactScriptLoc+1], a                                     ; $636d
	ld a, b                                                         ; $6370
	ld [sCompactScriptLoc+2], a                                     ; $6371

; Push curr script offset, and script idx
	ld a, [sCurrOffsetIntoScript]                                   ; $6374
	ld l, a                                                         ; $6377
	ld a, [sCurrOffsetIntoScript+1]                                 ; $6378
	ld h, a                                                         ; $637b
	push hl                                                         ; $637c

	ld a, [sCurrScriptIdx]                                          ; $637d
	push af                                                         ; $6380

; Go to mixed script idx/offset, then run until next script word, storing result
	call SetScriptIdxFromCompactScriptLoc                               ; $6381: $cd $f7 $54
	call SetScriptOffsetFromCompactScriptLoc                               ; $6384: $cd $36 $52

	ld a, [stodo_PreservedHLrelatedToScriptStack]                                    ; $6387: $fa $94 $bd
	ld l, a                                          ; $638a: $6f
	ld a, [stodo_PreservedHLrelatedToScriptStack+1]                                    ; $638b: $fa $95 $bd
	ld h, a                                          ; $638e: $67
	call ExecScriptUpToNextScriptByteOrWord                               ; $638f: $cd $17 $5d

	call SetTempLHBforScriptRelatedReturnsToLHB                               ; $6392: $cd $38 $65

; Restore script idx and offset
	pop af                                                          ; $6395
	call SetNewScriptIdx                                            ; $6396

	pop hl                                                          ; $6399
	ld a, l                                                         ; $639a
	ld [sCurrOffsetIntoScript], a                                   ; $639b
	ld a, h                                                         ; $639e
	ld [sCurrOffsetIntoScript+1], a                                 ; $639f

; LHB equals value from ExecScriptUpToNextScriptByteOrWord, restore temp LHB from script stack
	call LHBequTempBytesForScriptRelatedReturns                     ; $63a2

	call Copy3BytesFromScriptStackToWordAfter                       ; $63a5
	dw sTempLHBFromScriptRelatedReturns
	ret                                                             ; $63aa


Jump_003_63ab:
	ld b, a                                          ; $63ab: $47
	call Push3BytesInWordAfterOntoScriptStack                               ; $63ac: $cd $82 $52
	dw sTempLHBFromScriptRelatedReturns
	ld de, Call_003_63f3                                     ; $63b1: $11 $f3 $63
	call Call_003_6e5a                               ; $63b4: $cd $5a $6e
	call LHBequTempBytesForScriptRelatedReturns                               ; $63b7: $cd $45 $65
	call Copy3BytesFromScriptStackToWordAfter                               ; $63ba: $cd $df $52
	dw sTempLHBFromScriptRelatedReturns
	ret                                              ; $63bf: $c9


Call_003_63c0:
	call Push3BytesInWordAfterOntoScriptStack                               ; $63c0: $cd $82 $52
	dw sTempLHBFromScriptRelatedReturns
	call BCequScriptByteOrWordPlusNextOffset                               ; $63c5: $cd $84 $55

jr_003_63c8:
	call CpCurrOffsetIntoScriptToBC                               ; $63c8: $cd $98 $55
	jp nc, Jump_003_63ea                             ; $63cb: $d2 $ea $63

	call PushBContoScriptStack                               ; $63ce: $cd $51 $52
	call Call_003_5ddb                               ; $63d1: $cd $db $5d
	call SetTempLHBforScriptRelatedReturnsToLHB                               ; $63d4: $cd $38 $65
	call PopBCfromScriptStack                               ; $63d7: $cd $bd $52
	ld a, [sTempLHBFromScriptRelatedReturns+2]                                    ; $63da: $fa $a5 $bd
	bit 7, a                                         ; $63dd: $cb $7f
	jr nz, jr_003_63c8                               ; $63df: $20 $e7

	call LHBequTempBytesForScriptRelatedReturns                               ; $63e1: $cd $45 $65
	call Copy3BytesFromScriptStackToWordAfter                               ; $63e4: $cd $df $52
	dw sTempLHBFromScriptRelatedReturns
	ret                                              ; $63e9: $c9


Jump_003_63ea:
	call BHLequFFFFFFh                               ; $63ea: $cd $fd $66
	call Copy3BytesFromScriptStackToWordAfter                               ; $63ed: $cd $df $52
	dw sTempLHBFromScriptRelatedReturns
	ret                                              ; $63f2: $c9


Call_003_63f3:
	call Push3BytesInWordAfterOntoScriptStack                               ; $63f3: $cd $82 $52
	dw sTempLHBFromScriptRelatedReturns
	ld a, l                                          ; $63f8: $7d
	ld [sCompactScriptLoc], a                                    ; $63f9: $ea $9f $bd
	ld a, h                                          ; $63fc: $7c
	ld [sCompactScriptLoc+1], a                                    ; $63fd: $ea $a0 $bd
	ld a, b                                          ; $6400: $78
	ld [sCompactScriptLoc+2], a                                    ; $6401: $ea $a1 $bd
	call Push2BytesInWordAfterOntoScriptStack                               ; $6404: $cd $6a $52
	dw sCurrOffsetIntoScript
	call Push2BytesInWordAfterOntoScriptStack                               ; $6409: $cd $6a $52
	dw sCurrScriptIdx
	call SetScriptIdxFromCompactScriptLoc                                    ; $640e: $cd $f7 $54
	call SetScriptOffsetFromCompactScriptLoc                               ; $6411: $cd $36 $52
	call Call_003_63c0                               ; $6414: $cd $c0 $63
	call SetTempLHBforScriptRelatedReturnsToLHB                               ; $6417: $cd $38 $65
	call SetScriptIdxFromScriptStack                               ; $641a: $cd $ed $54
	call Copy2BytesFromScriptStackToWordAfter                               ; $641d: $cd $d6 $52
	dw sCurrOffsetIntoScript
	call LHBequTempBytesForScriptRelatedReturns                               ; $6422: $cd $45 $65
	call Copy3BytesFromScriptStackToWordAfter                               ; $6425: $cd $df $52
	dw sTempLHBFromScriptRelatedReturns
	ret                                              ; $642a: $c9


; B - script byte
todo_ScriptByteE4toE7h_Jump:
; B = 0 to 3 based on chosen script byte, push the val
	ld a, b                                          ; $642b: $78
	and $03                                          ; $642c: $e6 $03
	ld b, a                                          ; $642e: $47
	push af                                          ; $642f: $f5

;
	and $01                                          ; $6430: $e6 $01
	call BHLequCompactScriptLocFromScriptAddrInScriptBytes                               ; $6432: $cd $d3 $55
	ld a, l                                          ; $6435: $7d
	ld [sCompactScriptLoc], a                                    ; $6436: $ea $9f $bd
	ld a, h                                          ; $6439: $7c
	ld [sCompactScriptLoc+1], a                                    ; $643a: $ea $a0 $bd
	ld a, b                                          ; $643d: $78
	ld [sCompactScriptLoc+2], a                                    ; $643e: $ea $a1 $bd
	pop af                                           ; $6441: $f1
	and $02                                          ; $6442: $e6 $02
	jr z, :+                                ; $6444: $28 $05

	ld hl, sCompactScriptLoc+2                                     ; $6446: $21 $a1 $bd
	set 6, [hl]                                      ; $6449: $cb $f6

:	ld a, [sCompactScriptLoc]                                    ; $644b: $fa $9f $bd
	ld l, a                                          ; $644e: $6f
	ld a, [sCompactScriptLoc+1]                                    ; $644f: $fa $a0 $bd
	ld h, a                                          ; $6452: $67
	ld a, [sCompactScriptLoc+2]                                    ; $6453: $fa $a1 $bd
	ld b, a                                          ; $6456: $47
	ret                                              ; $6457: $c9


todo_ScriptByteE8h:
	ld c, $00                                        ; $6458: $0e $00
	db _LD_DE_D16

todo_ScriptByteE9h:
	ld c, $01 ; $645b: $0e $01

; If execute script param word != 0, jump
	ld a, [stodo_PreservedHLrelatedToScriptStack]                                    ; $645d: $fa $94 $bd
	ld l, a                                          ; $6460: $6f
	ld a, [stodo_PreservedHLrelatedToScriptStack+1]                                    ; $6461: $fa $95 $bd
	ld h, a                                          ; $6464: $67

	ld a, l                                          ; $6465: $7d
	or h                                             ; $6466: $b4
	jr nz, .br_6470                               ; $6467: $20 $07

; If script byte $e9, add word/byte to script offset, and return continue flag
	or c                                             ; $6469: $b1
	call nz, AddScriptByteOrWordOntoNextScriptOffset                           ; $646a: $c4 $be $5b
	jp BHLequFFFFFFh                                 ; $646d: $c3 $fd $66

.br_6470:
;
	push bc                                          ; $6470: $c5
	call todo_DEequ_ba80_plus_bdca_times30h                               ; $6471: $cd $e6 $65
	ld hl, $000d                                     ; $6474: $21 $0d $00
	add hl, de                                       ; $6477: $19
	ld [hl], $01                                     ; $6478: $36 $01
	pop bc                                           ; $647a: $c1

	ld a, c                                          ; $647b: $79
	and a                                            ; $647c: $a7
	jp z, BHLequFFFFFFh                              ; $647d: $ca $fd $66

	ld hl, $0000                                     ; $6480: $21 $00 $00
	jp ExecScriptUpToNextScriptByteOrWord                                 ; $6483: $c3 $17 $5d


todo_ScriptByteEAh:
	ld de, $000d                                     ; $6486: $11 $0d $00
	ld a, [$bdca]                                    ; $6489: $fa $ca $bd
	and a                                            ; $648c: $a7
	ld c, a                                          ; $648d: $4f
	inc c                                            ; $648e: $0c

jr_003_648f:
	ld a, c                                          ; $648f: $79
	call todo_HLequ_ba80_plusAtimes30h                               ; $6490: $cd $d9 $65
	add hl, de                                       ; $6493: $19
	ld a, [hl+]                                      ; $6494: $2a
	or [hl]                                          ; $6495: $b6
	jr nz, jr_003_649d                               ; $6496: $20 $05

	dec c                                            ; $6498: $0d
	ld a, c                                          ; $6499: $79
	and a                                            ; $649a: $a7
	jr nz, jr_003_648f                               ; $649b: $20 $f2

jr_003_649d:
	xor a                                            ; $649d: $af
	ld [hl-], a                                      ; $649e: $32
	ld [hl], a                                       ; $649f: $77
	jp BHLequFFFFFFh                                 ; $64a0: $c3 $fd $66


todo_ScriptByteEBh:
	ld hl, $0000                                     ; $64a3: $21 $00 $00
	jp ExecScriptUpToNextScriptByteOrWord                                 ; $64a6: $c3 $17 $5d


todo_ScriptByteECh:
	ld de, $0000                                     ; $64a9: $11 $00 $00
	ld hl, $0200                                     ; $64ac: $21 $00 $02
	ret                                              ; $64af: $c9


todo_ScriptByteEDh:
	call GetTextSourceForScriptsTextsIdxedByMainScriptWord                               ; $64b0: $cd $ab $55
	rst FarCall                                          ; $64b3: $f7
	AddrBank Func_03_4ca7
	jp BHLequFFFFFFh                                 ; $64b7: $c3 $fd $66


Call_003_64ba:
;
	call Push3BytesInWordAfterOntoScriptStack                               ; $64ba: $cd $82 $52
	dw sTempLHBFromScriptRelatedReturns

;
	ld hl, $bdca                                     ; $64bf: $21 $ca $bd
	inc [hl]                                         ; $64c2: $34
	call todo_DEequ_ba80_plus_bdca_times30h                               ; $64c3: $cd $e6 $65

	ld a, [sIdxForCompactScriptLocList1]                                    ; $64c6: $fa $c9 $bd
	ld hl, $000c                                     ; $64c9: $21 $0c $00
	add hl, de                                       ; $64cc: $19
	ld [hl], a                                       ; $64cd: $77

; push curr offset into script
	ld a, [sCurrOffsetIntoScript]                                    ; $64ce: $fa $bc $bd
	ld l, a                                          ; $64d1: $6f
	ld a, [sCurrOffsetIntoScript+1]                                    ; $64d2: $fa $bd $bd
	ld h, a                                          ; $64d5: $67
	push hl                                          ; $64d6: $e5

; clear struct byte 0e/0f
	xor a                                            ; $64d7: $af
	ld hl, $000e                                     ; $64d8: $21 $0e $00
	add hl, de                                       ; $64db: $19
	ld [hl], a                                       ; $64dc: $77

	ld hl, $000f                                     ; $64dd: $21 $0f $00
	add hl, de                                       ; $64e0: $19
	ld [hl], a                                       ; $64e1: $77

;
	push de                                          ; $64e2: $d5
	call Call_003_65ef                               ; $64e3: $cd $ef $65
	call SetTempLHBforScriptRelatedReturnsToLHB                               ; $64e6: $cd $38 $65
	pop de                                           ; $64e9: $d1

.loop_64ea:
	ld hl, $000d                                     ; $64ea: $21 $0d $00
	add hl, de                                       ; $64ed: $19
	ld a, [hl]                                       ; $64ee: $7e
	and a                                            ; $64ef: $a7
	jr z, .end_652a                                ; $64f0: $28 $38

	ld a, [sTempLHBFromScriptRelatedReturns+2]                                    ; $64f2: $fa $a5 $bd
	bit 7, a                                         ; $64f5: $cb $7f
	jr z, .end_652a                                ; $64f7: $28 $31

	push de                                          ; $64f9: $d5
	call Call_003_672f                               ; $64fa: $cd $2f $67
	call SetTempLHBforScriptRelatedReturnsToLHB                               ; $64fd: $cd $38 $65
	pop de                                           ; $6500: $d1
	ld a, [sTempLHBFromScriptRelatedReturns+2]                                    ; $6501: $fa $a5 $bd
	bit 7, a                                         ; $6504: $cb $7f
	jr z, .end_652a                                ; $6506: $28 $22

	ld hl, $000e                                     ; $6508: $21 $0e $00
	add hl, de                                       ; $650b: $19
	xor a                                            ; $650c: $af
	ld [hl], a                                       ; $650d: $77
	ld hl, $000f                                     ; $650e: $21 $0f $00
	add hl, de                                       ; $6511: $19
	ld [hl], a                                       ; $6512: $77
	pop hl                                           ; $6513: $e1
	ld a, l                                          ; $6514: $7d
	ld [sCurrOffsetIntoScript], a                                    ; $6515: $ea $bc $bd
	ld a, h                                          ; $6518: $7c
	ld [sCurrOffsetIntoScript+1], a                                    ; $6519: $ea $bd $bd
	push hl                                          ; $651c: $e5
	ld hl, $000d                                     ; $651d: $21 $0d $00
	add hl, de                                       ; $6520: $19
	ld [hl], $02                                     ; $6521: $36 $02
	push de                                          ; $6523: $d5
	call Call_003_65ef                               ; $6524: $cd $ef $65
	pop de                                           ; $6527: $d1
	jr .loop_64ea                                   ; $6528: $18 $c0

.end_652a:
	pop hl                                           ; $652a: $e1
	ld hl, $bdca                                     ; $652b: $21 $ca $bd
	dec [hl]                                         ; $652e: $35
	call LHBequTempBytesForScriptRelatedReturns                               ; $652f: $cd $45 $65
	call Copy3BytesFromScriptStackToWordAfter                               ; $6532: $cd $df $52
	dw sTempLHBFromScriptRelatedReturns
	ret                                              ; $6537: $c9


; Returns A = B
SetTempLHBforScriptRelatedReturnsToLHB::
	ld a, l                                                         ; $6538
	ld [sTempLHBFromScriptRelatedReturns], a                        ; $6539
	ld a, h                                                         ; $653c
	ld [sTempLHBFromScriptRelatedReturns+1], a                      ; $653d
	ld a, b                                                         ; $6540
	ld [sTempLHBFromScriptRelatedReturns+2], a                      ; $6541
	ret                                                             ; $6544


LHBequTempBytesForScriptRelatedReturns:
	ld a, [sTempLHBFromScriptRelatedReturns]                        ; $6545
	ld l, a                                                         ; $6548
	ld a, [sTempLHBFromScriptRelatedReturns+1]                      ; $6549
	ld h, a                                                         ; $654c
	ld a, [sTempLHBFromScriptRelatedReturns+2]                      ; $654d
	ld b, a                                                         ; $6550
	ret                                                             ; $6551


Call_003_6552:
;
	call Push3BytesInWordAfterOntoScriptStack                               ; $6552: $cd $82 $52
	dw sTempLHBFromScriptRelatedReturns
	call Push3BytesInWordAfterOntoScriptStack                               ; $6557: $cd $82 $52
	dw sCompactScriptLoc

;
	ld a, l                                          ; $655c: $7d
	ld [sCompactScriptLoc], a                                    ; $655d: $ea $9f $bd
	ld a, h                                          ; $6560: $7c
	ld [sCompactScriptLoc+1], a                                    ; $6561: $ea $a0 $bd
	ld a, b                                          ; $6564: $78
	ld [sCompactScriptLoc+2], a                                    ; $6565: $ea $a1 $bd

;
	call Push2BytesInWordAfterOntoScriptStack                               ; $6568: $cd $6a $52
	dw sCurrOffsetIntoScript
	call Push2BytesInWordAfterOntoScriptStack                               ; $656d: $cd $6a $52
	dw sCurrScriptIdx

;
	call SetScriptIdxFromCompactScriptLoc                                    ; $6572: $cd $f7 $54
	call SetScriptOffsetFromCompactScriptLoc                               ; $6575: $cd $36 $52
	call Call_003_64ba                               ; $6578: $cd $ba $64
	call SetTempLHBforScriptRelatedReturnsToLHB                               ; $657b: $cd $38 $65
	call SetScriptIdxFromScriptStack                               ; $657e: $cd $ed $54
	call Copy2BytesFromScriptStackToWordAfter                               ; $6581: $cd $d6 $52
	dw sCurrOffsetIntoScript
	call LHBequTempBytesForScriptRelatedReturns                               ; $6586: $cd $45 $65

;
	call Copy3BytesFromScriptStackToWordAfter                               ; $6589: $cd $df $52
	dw sCompactScriptLoc
	call Copy3BytesFromScriptStackToWordAfter                               ; $658e: $cd $df $52
	dw sTempLHBFromScriptRelatedReturns
	ret                                              ; $6593: $c9


Func_03_6594:
	call Push3BytesInWordAfterOntoScriptStack                               ; $6594: $cd $82 $52
	dw sTempLHBFromScriptRelatedReturns
	call Push3BytesInWordAfterOntoScriptStack                               ; $6599: $cd $82 $52
	dw sCompactScriptLoc
	ld a, l                                          ; $659e: $7d
	ld [sCompactScriptLoc], a                                    ; $659f: $ea $9f $bd
	ld a, h                                          ; $65a2: $7c
	ld [sCompactScriptLoc+1], a                                    ; $65a3: $ea $a0 $bd
	ld a, b                                          ; $65a6: $78
	ld [sCompactScriptLoc+2], a                                    ; $65a7: $ea $a1 $bd
	call Push2BytesInWordAfterOntoScriptStack                               ; $65aa: $cd $6a $52
	dw sCurrOffsetIntoScript
	call Push2BytesInWordAfterOntoScriptStack                               ; $65af: $cd $6a $52
	dw sCurrScriptIdx
	call SetScriptIdxFromCompactScriptLoc                                    ; $65b4: $cd $f7 $54
	call SetScriptOffsetFromCompactScriptLoc                               ; $65b7: $cd $36 $52
	call Call_003_65ef                               ; $65ba: $cd $ef $65
	call SetTempLHBforScriptRelatedReturnsToLHB                               ; $65bd: $cd $38 $65
	call SetScriptIdxFromScriptStack                               ; $65c0: $cd $ed $54
	call Copy2BytesFromScriptStackToWordAfter                               ; $65c3: $cd $d6 $52
	dw sCurrOffsetIntoScript
	call LHBequTempBytesForScriptRelatedReturns                               ; $65c8: $cd $45 $65
	call Copy3BytesFromScriptStackToWordAfter                               ; $65cb: $cd $df $52
	dw sCompactScriptLoc
	call Copy3BytesFromScriptStackToWordAfter                               ; $65d0: $cd $df $52
	dw sTempLHBFromScriptRelatedReturns
	ret                                              ; $65d5: $c9


todo_HLequ_ba80_plus_bdca_times30h:
	ld a, [$bdca]                                    ; $65d6: $fa $ca $bd

todo_HLequ_ba80_plusAtimes30h:
	push bc                                          ; $65d9: $c5
	ld b, a                                          ; $65da: $47
	ld c, $30                                        ; $65db: $0e $30
	call BCequBtimesC                                       ; $65dd: $cd $5f $12
	ld hl, stodo_ScriptRelatedStruct                                     ; $65e0: $21 $80 $ba
	add hl, bc                                       ; $65e3: $09
	pop bc                                           ; $65e4: $c1
	ret                                              ; $65e5: $c9


todo_DEequ_ba80_plus_bdca_times30h:
	ld a, [$bdca]                                    ; $65e6: $fa $ca $bd

todo_DEequ_ba80_plusAtimes30h:
	call todo_HLequ_ba80_plusAtimes30h                               ; $65e9: $cd $d9 $65
	jp wSwapDEandHL                                         ; $65ec: $c3 $d4 $ce


Call_003_65ef:
; preserve some vals
	call Push3BytesInWordAfterOntoScriptStack                               ; $65ef: $cd $82 $52
	dw sTempLHBFromScriptRelatedReturns
	call Push2BytesInWordAfterOntoScriptStack                               ; $65f4: $cd $6a $52
	dw sExecScript1stByte
	call AequNextMainScriptByte                               ; $65f9: $cd $09 $55

; branch based on control byte
	ld [sExecScript1stByte], a                                    ; $65fc: $ea $96 $bd
	cp $0a                                           ; $65ff: $fe $0a
	jr nz, .not0a                               ; $6601: $20 $0d

	call Copy2BytesFromScriptStackToWordAfter                               ; $6603: $cd $d6 $52
	dw sExecScript1stByte
	call Copy3BytesFromScriptStackToWordAfter                               ; $6608: $cd $df $52
	dw sTempLHBFromScriptRelatedReturns
	jp BHLequFFFFFFh                                 ; $660d: $c3 $fd $66

.not0a:
	cp $09                                           ; $6610: $fe $09
	jr nz, .not09                               ; $6612: $20 $11

	ld hl, $0000                                     ; $6614: $21 $00 $00
	call ExecScriptUpToNextScriptByteOrWord                               ; $6617: $cd $17 $5d
	call Copy2BytesFromScriptStackToWordAfter                               ; $661a: $cd $d6 $52
	dw sExecScript1stByte
	call Copy3BytesFromScriptStackToWordAfter                               ; $661f: $cd $df $52
	dw sTempLHBFromScriptRelatedReturns
	ret                                              ; $6624: $c9

.not09:
; jump if bit 5 clear
	call todo_HLequ_ba80_plus_bdca_times30h                               ; $6625: $cd $d6 $65
	ld a, [sExecScript1stByte]                                    ; $6628: $fa $96 $bd
	and $20                                          ; $662b: $e6 $20
	jr z, .br_665b                                ; $662d: $28 $2c

	push hl                                          ; $662f: $e5
	push hl                                          ; $6630: $e5
	call Call_003_689c                               ; $6631: $cd $9c $68
	pop de                                           ; $6634: $d1
	ld hl, $000d                                     ; $6635: $21 $0d $00
	add hl, de                                       ; $6638: $19
	ld a, [hl]                                       ; $6639: $7e
	cp $02                                           ; $663a: $fe $02
	ld hl, $0000                                     ; $663c: $21 $00 $00
	jr z, :+                                ; $663f: $28 $01
	inc hl                                           ; $6641: $23
:	call ExecScriptUpToNextScriptByteOrWord                               ; $6642: $cd $17 $5d
	call SetTempLHBforScriptRelatedReturnsToLHB                               ; $6645: $cd $38 $65
	pop hl                                           ; $6648: $e1
	bit 7, a                                         ; $6649: $cb $7f
	jr nz, .br_665b                               ; $664b: $20 $0e

	call LHBequTempBytesForScriptRelatedReturns                               ; $664d: $cd $45 $65
	call Copy2BytesFromScriptStackToWordAfter                               ; $6650: $cd $d6 $52
	dw sExecScript1stByte
	call Copy3BytesFromScriptStackToWordAfter                               ; $6655: $cd $df $52
	dw sTempLHBFromScriptRelatedReturns
	ret                                              ; $665a: $c9

.br_665b:
	ld a, [sExecScript1stByte]                                    ; $665b: $fa $96 $bd
	and $10                                          ; $665e: $e6 $10
	jr z, .br_6677                                ; $6660: $28 $15

	push hl                                          ; $6662: $e5
	call Push2BytesInWordAfterOntoScriptStack                               ; $6663: $cd $6a $52
	dw sCurrOffsetIntoScript
	ld a, [sExecScript1stByte]                                    ; $6668: $fa $96 $bd
	call Call_003_6820                               ; $666b: $cd $20 $68
	call Call_003_68e1                               ; $666e: $cd $e1 $68
	call Copy2BytesFromScriptStackToWordAfter                               ; $6671: $cd $d6 $52
	dw sCurrOffsetIntoScript
	pop hl                                           ; $6676: $e1

.br_6677:
; eg copde $08
	push hl                                          ; $6677: $e5
	call Call_003_66cc                               ; $6678: $cd $cc $66
	pop hl                                           ; $667b: $e1

;
	ld a, [sTempLHBFromScriptRelatedReturns+2]                                    ; $667c: $fa $a5 $bd
	bit 7, a                                         ; $667f: $cb $7f
	jr z, .common_66be                                ; $6681: $28 $3b

	ld a, [sTempLHBFromScriptRelatedReturns]                                    ; $6683: $fa $a3 $bd
	ld e, a                                          ; $6686: $5f
	ld a, [sTempLHBFromScriptRelatedReturns+1]                                    ; $6687: $fa $a4 $bd
	ld d, a                                          ; $668a: $57
	inc de                                           ; $668b: $13
	ld a, d                                          ; $668c: $7a
	or e                                             ; $668d: $b3
	jr z, .br_6697                                ; $668e: $28 $07

	inc de                                           ; $6690: $13
	ld a, d                                          ; $6691: $7a
	or e                                             ; $6692: $b3
	jr z, .br_66b4                                ; $6693: $28 $1f

	jr .common_66be                                   ; $6695: $18 $27

.br_6697:
	ld a, [sExecScript1stByte]                                    ; $6697: $fa $96 $bd
	and $10                                          ; $669a: $e6 $10
	jr z, .not10h                                ; $669c: $28 $08

	ld hl, $0000                                     ; $669e: $21 $00 $00
	call ExecScriptUpToNextScriptByteOrWord                               ; $66a1: $cd $17 $5d
	jr :+                                   ; $66a4: $18 $03

.not10h:
	call BHLequFFFFFFh                               ; $66a6: $cd $fd $66

:	call Copy2BytesFromScriptStackToWordAfter                               ; $66a9: $cd $d6 $52
	dw sExecScript1stByte
	call Copy3BytesFromScriptStackToWordAfter                               ; $66ae: $cd $df $52
	dw sTempLHBFromScriptRelatedReturns
	ret                                              ; $66b3: $c9

.br_66b4:
	ld a, [sExecScript1stByte]                                    ; $66b4: $fa $96 $bd
	and $10                                          ; $66b7: $e6 $10
	jr z, .common_66be                                ; $66b9: $28 $03

	call AddScriptByteOrWordOntoNextScriptOffset                               ; $66bb: $cd $be $5b

.common_66be:
	call LHBequTempBytesForScriptRelatedReturns                               ; $66be: $cd $45 $65
	call Copy2BytesFromScriptStackToWordAfter                               ; $66c1: $cd $d6 $52
	dw sExecScript1stByte
	call Copy3BytesFromScriptStackToWordAfter                               ; $66c6: $cd $df $52
	dw sTempLHBFromScriptRelatedReturns
	ret                                              ; $66cb: $c9


Call_003_66cc:
	ld a, [sExecScript1stByte]                                    ; $66cc: $fa $96 $bd
	and $0f                                          ; $66cf: $e6 $0f
	cp $04                                           ; $66d1: $fe $04
	jr c, jr_003_66ec                                ; $66d3: $38 $17

	cp $08                                           ; $66d5: $fe $08
	jr z, todo_Script1stByte08h                                ; $66d7: $28 $38

	cp $0c                                           ; $66d9: $fe $0c
	jr z, jr_003_6717                                ; $66db: $28 $3a

	cp $0d                                           ; $66dd: $fe $0d
	jr z, jr_003_671d                                ; $66df: $28 $3c

	cp $0e                                           ; $66e1: $fe $0e
	jr z, jr_003_6723                                ; $66e3: $28 $3e

	cp $0f                                           ; $66e5: $fe $0f
	jr z, jr_003_6729                                ; $66e7: $28 $40

	jp $0000                                        ; $66e9: $c3 $00 $00


jr_003_66ec:
	ld a, [sExecScript1stByte]                                    ; $66ec: $fa $96 $bd
	and $03                                          ; $66ef: $e6 $03
	call Call_003_6879                               ; $66f1: $cd $79 $68
	jp SetTempLHBforScriptRelatedReturnsToLHB                                 ; $66f4: $c3 $38 $65


BHLequFFFFFEh:
	ld hl, $fffe                                                    ; $66f7
	ld b, $ff                                                       ; $66fa
	ret                                                             ; $66fc


BHLequFFFFFFh:
	ld hl, $ffff                                                    ; $66fd
	ld b, h                                                         ; $6700
	ret                                                             ; $6701


;
	ld a, l                                          ; $6702: $7d
	ld [sTempLHBFromScriptRelatedReturns], a                                    ; $6703: $ea $a3 $bd
	ld a, h                                          ; $6706: $7c
	ld [sTempLHBFromScriptRelatedReturns+1], a                                    ; $6707: $ea $a4 $bd
	ld a, $ff                                        ; $670a: $3e $ff
	ld [sTempLHBFromScriptRelatedReturns+2], a                                    ; $670c: $ea $a5 $bd
	ld b, a                                          ; $670f: $47
	ret                                              ; $6710: $c9


todo_Script1stByte08h:
	call _todo_Script1stByte08h                               ; $6711: $cd $cf $6a
	jp SetTempLHBforScriptRelatedReturnsToLHB                                 ; $6714: $c3 $38 $65


jr_003_6717:
	call Call_003_6926                               ; $6717: $cd $26 $69
	jp SetTempLHBforScriptRelatedReturnsToLHB                                 ; $671a: $c3 $38 $65


jr_003_671d:
	call Call_003_69a0                               ; $671d: $cd $a0 $69
	jp SetTempLHBforScriptRelatedReturnsToLHB                                 ; $6720: $c3 $38 $65


jr_003_6723:
	call Call_003_6a24                               ; $6723: $cd $24 $6a
	jp SetTempLHBforScriptRelatedReturnsToLHB                                 ; $6726: $c3 $38 $65


jr_003_6729:
	call Call_003_6a77                               ; $6729: $cd $77 $6a
	jp SetTempLHBforScriptRelatedReturnsToLHB                                 ; $672c: $c3 $38 $65


Call_003_672f:
	call Push3BytesInWordAfterOntoScriptStack                               ; $672f: $cd $82 $52
	dw sTempLHBFromScriptRelatedReturns
	ld a, [$bdca]                                    ; $6734: $fa $ca $bd
	and a                                            ; $6737: $a7
	jr nz, jr_003_6743                               ; $6738: $20 $09

	call BHLequFFFFFFh                               ; $673a: $cd $fd $66
	call Copy3BytesFromScriptStackToWordAfter                               ; $673d: $cd $df $52
	dw sTempLHBFromScriptRelatedReturns
	ret                                              ; $6742: $c9


jr_003_6743:
	ld b, a                                          ; $6743: $47
	dec b                                            ; $6744: $05

jr_003_6745:
	bit 7, b                                         ; $6745: $cb $78
	jr nz, jr_003_6792                               ; $6747: $20 $49

	ld a, b                                          ; $6749: $78
	call todo_DEequ_ba80_plusAtimes30h                               ; $674a: $cd $e9 $65
	ld hl, $000f                                     ; $674d: $21 $0f $00
	add hl, de                                       ; $6750: $19
	ld c, [hl]                                       ; $6751: $4e
	dec c                                            ; $6752: $0d

jr_003_6753:
	dec b                                            ; $6753: $05
	bit 7, c                                         ; $6754: $cb $79
	jr nz, jr_003_6745                               ; $6756: $20 $ed

	inc b                                            ; $6758: $04
	push bc                                          ; $6759: $c5
	push de                                          ; $675a: $d5
	ld hl, $000c                                     ; $675b: $21 $0c $00
	add hl, de                                       ; $675e: $19
	ld a, [hl]                                       ; $675f: $7e
	ld hl, $002c                                     ; $6760: $21 $2c $00
	ld b, $00                                        ; $6763: $06 $00
	add hl, bc                                       ; $6765: $09
	add hl, de                                       ; $6766: $19
	add [hl]                                         ; $6767: $86
	ld [sIdxForCompactScriptLocList1], a                                    ; $6768: $ea $c9 $bd
	ld hl, $fff3                                     ; $676b: $21 $f3 $ff
	add hl, bc                                       ; $676e: $09
	add hl, bc                                       ; $676f: $09
	add hl, bc                                       ; $6770: $09
	call wSwapBCandHL                                       ; $6771: $cd $d9 $ce
	ld a, [bc]                                       ; $6774: $0a
	ld l, a                                          ; $6775: $6f
	inc bc                                           ; $6776: $03
	ld a, [bc]                                       ; $6777: $0a
	ld h, a                                          ; $6778: $67
	inc bc                                           ; $6779: $03
	ld a, [bc]                                       ; $677a: $0a
	ld b, a                                          ; $677b: $47
	call Call_003_63f3                               ; $677c: $cd $f3 $63
	call SetTempLHBforScriptRelatedReturnsToLHB                               ; $677f: $cd $38 $65
	pop de                                           ; $6782: $d1
	pop bc                                           ; $6783: $c1
	dec c                                            ; $6784: $0d
	bit 7, a                                         ; $6785: $cb $7f
	jr nz, jr_003_6753                               ; $6787: $20 $ca

	call LHBequTempBytesForScriptRelatedReturns                               ; $6789: $cd $45 $65
	call Copy3BytesFromScriptStackToWordAfter                               ; $678c: $cd $df $52
	dw sTempLHBFromScriptRelatedReturns
	ret                                              ; $6791: $c9


jr_003_6792:
	ld a, $01                                        ; $6792: $3e $01
	ld [sIdxForCompactScriptLocList1], a                                    ; $6794: $ea $c9 $bd
	ld b, $00                                        ; $6797: $06 $00

Jump_003_6799:
	ld a, b                                          ; $6799: $78
	ld hl, sIdxForCompactScriptLocList1                                     ; $679a: $21 $c9 $bd
	cp [hl]                                          ; $679d: $be
	jp nc, Jump_003_6817                             ; $679e: $d2 $17 $68

	call todo_DEequ_ba80_plusAtimes30h                               ; $67a1: $cd $e9 $65
	ld c, $00                                        ; $67a4: $0e $00

jr_003_67a6:
	push bc                                          ; $67a6: $c5
	ld b, $00                                        ; $67a7: $06 $00
	ld hl, $000e                                     ; $67a9: $21 $0e $00
	add hl, de                                       ; $67ac: $19
	ld a, c                                          ; $67ad: $79
	cp [hl]                                          ; $67ae: $be
	jr nc, jr_003_67f3                               ; $67af: $30 $42

jr_003_67b1:
	push de                                          ; $67b1: $d5
	ld hl, $001c                                     ; $67b2: $21 $1c $00
	push bc                                          ; $67b5: $c5
	ld b, $00                                        ; $67b6: $06 $00
	add hl, bc                                       ; $67b8: $09
	pop bc                                           ; $67b9: $c1
	add hl, de                                       ; $67ba: $19
	pop de                                           ; $67bb: $d1
	ld a, b                                          ; $67bc: $78
	cp [hl]                                          ; $67bd: $be
	jr nc, jr_003_67c6                               ; $67be: $30 $06

	call Call_003_6c16                               ; $67c0: $cd $16 $6c
	inc b                                            ; $67c3: $04
	jr jr_003_67b1                                   ; $67c4: $18 $eb

jr_003_67c6:
	ld a, [hl]                                       ; $67c6: $7e
	ld hl, $000c                                     ; $67c7: $21 $0c $00
	add hl, de                                       ; $67ca: $19
	add [hl]                                         ; $67cb: $86
	ld [sIdxForCompactScriptLocList1], a                                    ; $67cc: $ea $c9 $bd
	ld hl, $0010                                     ; $67cf: $21 $10 $00
	add hl, de                                       ; $67d2: $19
	add hl, de                                       ; $67d3: $19
	add hl, de                                       ; $67d4: $19
	ld c, [hl]                                       ; $67d5: $4e
	inc hl                                           ; $67d6: $23
	ld b, [hl]                                       ; $67d7: $46
	push bc                                          ; $67d8: $c5
	inc hl                                           ; $67d9: $23
	ld b, [hl]                                       ; $67da: $46
	pop hl                                           ; $67db: $e1
	push de                                          ; $67dc: $d5
	call Call_003_63f3                               ; $67dd: $cd $f3 $63
	pop de                                           ; $67e0: $d1
	call SetTempLHBforScriptRelatedReturnsToLHB                               ; $67e1: $cd $38 $65
	pop bc                                           ; $67e4: $c1
	inc b                                            ; $67e5: $04
	bit 7, a                                         ; $67e6: $cb $7f
	jr nz, jr_003_67a6                               ; $67e8: $20 $bc

	call LHBequTempBytesForScriptRelatedReturns                               ; $67ea: $cd $45 $65
	call Copy3BytesFromScriptStackToWordAfter                               ; $67ed: $cd $df $52
	dw sTempLHBFromScriptRelatedReturns
	ret                                              ; $67f2: $c9


jr_003_67f3:
	push de                                          ; $67f3: $d5
	ld hl, $003c                                     ; $67f4: $21 $3c $00
	add hl, de                                       ; $67f7: $19
	ld a, [hl]                                       ; $67f8: $7e
	ld hl, $000c                                     ; $67f9: $21 $0c $00
	add hl, de                                       ; $67fc: $19
	sub [hl]                                         ; $67fd: $96
	ld c, a                                          ; $67fe: $4f
	pop de                                           ; $67ff: $d1
	ld a, b                                          ; $6800: $78
	cp c                                             ; $6801: $b9
	jr nc, jr_003_680a                               ; $6802: $30 $06

	call Call_003_6c16                               ; $6804: $cd $16 $6c
	inc b                                            ; $6807: $04
	jr jr_003_67f3                                   ; $6808: $18 $e9

jr_003_680a:
	ld hl, $003c                                     ; $680a: $21 $3c $00
	add hl, de                                       ; $680d: $19
	ld a, [hl]                                       ; $680e: $7e
	ld [sIdxForCompactScriptLocList1], a                                    ; $680f: $ea $c9 $bd
	pop bc                                           ; $6812: $c1
	inc b                                            ; $6813: $04
	jp Jump_003_6799                                 ; $6814: $c3 $99 $67


Jump_003_6817:
	call BHLequFFFFFFh                               ; $6817: $cd $fd $66
	call Copy3BytesFromScriptStackToWordAfter                               ; $681a: $cd $df $52
	dw sTempLHBFromScriptRelatedReturns
	ret                                              ; $681f: $c9


Call_003_6820:
	and $0f                                          ; $6820: $e6 $0f
	jp z, Jump_003_5ba5                              ; $6822: $ca $a5 $5b

	cp $01                                           ; $6825: $fe $01
	jp z, Jump_003_5ba1                              ; $6827: $ca $a1 $5b

	cp $02                                           ; $682a: $fe $02
	jp z, Jump_003_5b9d                              ; $682c: $ca $9d $5b

	cp $03                                           ; $682f: $fe $03
	jp z, Jump_003_5b99                              ; $6831: $ca $99 $5b

	cp $08                                           ; $6834: $fe $08
	jp z, AddScriptByteOrWordOntoNextScriptOffset                              ; $6836: $ca $be $5b

	cp $0c                                           ; $6839: $fe $0c
	jp c, Jump_003_6843                              ; $683b: $da $43 $68

	cp $10                                           ; $683e: $fe $10
	jp c, AddScriptByteOrWordOntoNextScriptOffset                              ; $6840: $da $be $5b

Jump_003_6843:
	ret                                              ; $6843: $c9


Call_003_6844:
Jump_003_6844:
	call Push2BytesInWordAfterOntoScriptStack                               ; $6844: $cd $6a $52
	dw sExecScript1stByte
	call AequNextMainScriptByte                               ; $6849: $cd $09 $55
	ld [sExecScript1stByte], a                                    ; $684c: $ea $96 $bd
	cp $0a                                           ; $684f: $fe $0a
	jr z, jr_003_685a                                ; $6851: $28 $07

	cp $09                                           ; $6853: $fe $09
	jr nz, jr_003_6860                               ; $6855: $20 $09

	call AddScriptByteOrWordOntoNextScriptOffset                               ; $6857: $cd $be $5b

jr_003_685a:
	call Copy2BytesFromScriptStackToWordAfter                               ; $685a: $cd $d6 $52
	dw sExecScript1stByte
	ret                                              ; $685f: $c9


jr_003_6860:
	and $20                                          ; $6860: $e6 $20
	call nz, AddScriptByteOrWordOntoNextScriptOffset                           ; $6862: $c4 $be $5b
	ld a, [sExecScript1stByte]                                    ; $6865: $fa $96 $bd
	call Call_003_6820                               ; $6868: $cd $20 $68
	ld a, [sExecScript1stByte]                                    ; $686b: $fa $96 $bd
	and $10                                          ; $686e: $e6 $10
	call nz, AddScriptByteOrWordOntoNextScriptOffset                           ; $6870: $c4 $be $5b
	call Copy2BytesFromScriptStackToWordAfter                               ; $6873: $cd $d6 $52
	dw sExecScript1stByte
	ret                                              ; $6878: $c9


Call_003_6879:
	ld b, a                                          ; $6879: $47
	call Push2BytesInWordAfterOntoScriptStack                               ; $687a: $cd $6a $52
	dw sExecScript1stByte
	ld a, b                                          ; $687f: $78
	ld [sExecScript1stByte], a                                    ; $6880: $ea $96 $bd
	call Push3BytesInWordAfterOntoScriptStack                               ; $6883: $cd $82 $52
	dw sTempLHBFromScriptRelatedReturns
	ld de, Func_03_6594                                     ; $6888: $11 $94 $65
	call Call_003_6e5a                               ; $688b: $cd $5a $6e
	call LHBequTempBytesForScriptRelatedReturns                               ; $688e: $cd $45 $65
	call Copy3BytesFromScriptStackToWordAfter                               ; $6891: $cd $df $52
	dw sTempLHBFromScriptRelatedReturns
	call Copy2BytesFromScriptStackToWordAfter                               ; $6896: $cd $d6 $52
	dw sExecScript1stByte
	ret                                              ; $689b: $c9


Call_003_689c:
	call todo_DEequ_ba80_plus_bdca_times30h                               ; $689c: $cd $e6 $65
	ld a, [sCurrScriptIdx]                                    ; $689f: $fa $cc $bd
	ld b, a                                          ; $68a2: $47
	ld a, [sCurrOffsetIntoScript]                                    ; $68a3: $fa $bc $bd
	ld l, a                                          ; $68a6: $6f
	ld a, [sCurrOffsetIntoScript+1]                                    ; $68a7: $fa $bd $bd
	ld h, a                                          ; $68aa: $67
	srl b                                            ; $68ab: $cb $38
	res 7, h                                         ; $68ad: $cb $bc
	jr nc, jr_003_68b3                               ; $68af: $30 $02

	set 7, h                                         ; $68b1: $cb $fc

jr_003_68b3:
	push bc                                          ; $68b3: $c5
	push hl                                          ; $68b4: $e5
	ld hl, $000e                                     ; $68b5: $21 $0e $00
	add hl, de                                       ; $68b8: $19
	ld a, [hl]                                       ; $68b9: $7e
	inc [hl]                                         ; $68ba: $34
	push af                                          ; $68bb: $f5
	call HLequDEplus3A                               ; $68bc: $cd $15 $52
	ld bc, $0010                                     ; $68bf: $01 $10 $00
	add hl, bc                                       ; $68c2: $09
	pop af                                           ; $68c3: $f1
	pop bc                                           ; $68c4: $c1
	ld [hl], c                                       ; $68c5: $71
	inc hl                                           ; $68c6: $23
	ld [hl], b                                       ; $68c7: $70
	inc hl                                           ; $68c8: $23
	pop bc                                           ; $68c9: $c1
	ld [hl], c                                       ; $68ca: $71
	ld c, a                                          ; $68cb: $4f
	ld b, $00                                        ; $68cc: $06 $00
	ld hl, $000c                                     ; $68ce: $21 $0c $00
	add hl, de                                       ; $68d1: $19
	ld a, [sIdxForCompactScriptLocList1]                                    ; $68d2: $fa $c9 $bd
	sub [hl]                                         ; $68d5: $96
	jr nc, jr_003_68da                               ; $68d6: $30 $02

	ld a, $ff                                        ; $68d8: $3e $ff

jr_003_68da:
	ld hl, $001c                                     ; $68da: $21 $1c $00
	add hl, de                                       ; $68dd: $19
	add hl, bc                                       ; $68de: $09
	ld [hl], a                                       ; $68df: $77
	ret                                              ; $68e0: $c9


Call_003_68e1:
	call todo_DEequ_ba80_plus_bdca_times30h                               ; $68e1: $cd $e6 $65
	ld a, [sCurrScriptIdx]                                    ; $68e4: $fa $cc $bd
	ld b, a                                          ; $68e7: $47
	ld a, [sCurrOffsetIntoScript]                                    ; $68e8: $fa $bc $bd
	ld l, a                                          ; $68eb: $6f
	ld a, [sCurrOffsetIntoScript+1]                                    ; $68ec: $fa $bd $bd
	ld h, a                                          ; $68ef: $67
	srl b                                            ; $68f0: $cb $38
	res 7, h                                         ; $68f2: $cb $bc
	jr nc, jr_003_68f8                               ; $68f4: $30 $02

	set 7, h                                         ; $68f6: $cb $fc

jr_003_68f8:
	push bc                                          ; $68f8: $c5
	push hl                                          ; $68f9: $e5
	ld hl, $000f                                     ; $68fa: $21 $0f $00
	add hl, de                                       ; $68fd: $19
	ld a, [hl]                                       ; $68fe: $7e
	inc [hl]                                         ; $68ff: $34
	push af                                          ; $6900: $f5
	call HLequDEplus3A                               ; $6901: $cd $15 $52
	ld bc, $0020                                     ; $6904: $01 $20 $00
	add hl, bc                                       ; $6907: $09
	pop af                                           ; $6908: $f1
	pop bc                                           ; $6909: $c1
	ld [hl], c                                       ; $690a: $71
	inc hl                                           ; $690b: $23
	ld [hl], b                                       ; $690c: $70
	inc hl                                           ; $690d: $23
	pop bc                                           ; $690e: $c1
	ld [hl], b                                       ; $690f: $70
	ld c, a                                          ; $6910: $4f
	ld b, $00                                        ; $6911: $06 $00
	ld hl, $000c                                     ; $6913: $21 $0c $00
	add hl, de                                       ; $6916: $19
	ld a, [sIdxForCompactScriptLocList1]                                    ; $6917: $fa $c9 $bd
	sub [hl]                                         ; $691a: $96
	jr nc, jr_003_691f                               ; $691b: $30 $02

	ld a, $ff                                        ; $691d: $3e $ff

jr_003_691f:
	ld hl, $002c                                     ; $691f: $21 $2c $00
	add hl, de                                       ; $6922: $19
	add hl, bc                                       ; $6923: $09
	ld [hl], a                                       ; $6924: $77
	ret                                              ; $6925: $c9


Call_003_6926:
	call Push3BytesInWordAfterOntoScriptStack                               ; $6926: $cd $82 $52
	dw sTempLHBFromScriptRelatedReturns
	call BCequScriptByteOrWordPlusNextOffset                               ; $692b: $cd $84 $55

jr_003_692e:
	call CpCurrOffsetIntoScriptToBC                               ; $692e: $cd $98 $55
	jp nc, Jump_003_63ea                             ; $6931: $d2 $ea $63

	call GetAndOrNext3of4TaskParamBytes                               ; $6934: $cd $25 $6f
	jr nz, jr_003_693e                               ; $6937: $20 $05

	call Call_003_6844                               ; $6939: $cd $44 $68
	jr jr_003_692e                                   ; $693c: $18 $f0

jr_003_693e:
	call CpCurrOffsetIntoScriptToBC                               ; $693e: $cd $98 $55
	jr nz, jr_003_694c                               ; $6941: $20 $09

	call BHLequFFFFFFh                               ; $6943: $cd $fd $66
	call Copy3BytesFromScriptStackToWordAfter                               ; $6946: $cd $df $52
	dw sTempLHBFromScriptRelatedReturns
	ret                                              ; $694b: $c9


jr_003_694c:
	push bc                                          ; $694c: $c5
	call Call_003_65ef                               ; $694d: $cd $ef $65
	call SetTempLHBforScriptRelatedReturnsToLHB                               ; $6950: $cd $38 $65
	pop de                                           ; $6953: $d1
	ld a, e                                          ; $6954: $7b
	ld [sCurrOffsetIntoScript], a                                    ; $6955: $ea $bc $bd
	ld a, d                                          ; $6958: $7a
	ld [sCurrOffsetIntoScript+1], a                                    ; $6959: $ea $bd $bd
	call Copy3BytesFromScriptStackToWordAfter                               ; $695c: $cd $df $52
	dw sTempLHBFromScriptRelatedReturns
	ret                                              ; $6961: $c9


Call_003_6962:
	call BCequScriptByteOrWordPlusNextOffset                               ; $6962: $cd $84 $55
	jp z, Call_003_65ef                              ; $6965: $ca $ef $65

jr_003_6968:
	call CpCurrOffsetIntoScriptToBC                               ; $6968: $cd $98 $55
	jr nc, jr_003_6997                               ; $696b: $30 $2a

	push bc                                          ; $696d: $c5
	call DEHLequTaskParams                               ; $696e: $cd $ba $58
	ld a, [sTempTaskParams_word0]                                    ; $6971: $fa $ac $bd
	ld c, a                                          ; $6974: $4f
	ld a, [sTempTaskParams_word0+1]                                    ; $6975: $fa $ad $bd
	ld b, a                                          ; $6978: $47
	call wCpBCtoDE                                       ; $6979: $cd $8c $ce
	pop bc                                           ; $697c: $c1
	jr nz, jr_003_6968                               ; $697d: $20 $e9

	ld a, [sTempTaskParams_word1]                                    ; $697f: $fa $ae $bd
	ld e, a                                          ; $6982: $5f
	ld a, [sTempTaskParams_word1+1]                                    ; $6983: $fa $af $bd
	ld d, a                                          ; $6986: $57
	call wCpHLtoDE                                       ; $6987: $cd $80 $ce
	jr nz, jr_003_6968                               ; $698a: $20 $dc

	ld a, c                                          ; $698c: $79
	ld [sCurrOffsetIntoScript], a                                    ; $698d: $ea $bc $bd
	ld a, b                                          ; $6990: $78
	ld [sCurrOffsetIntoScript+1], a                                    ; $6991: $ea $bd $bd
	jp Call_003_65ef                                 ; $6994: $c3 $ef $65


jr_003_6997:
	call Call_003_6844                               ; $6997: $cd $44 $68

BHLequNoSubScriptRan:
	ld hl, NO_SUBSCRIPT_RAN                                         ; $699a
	ld b, $ff                                                       ; $699d
	ret                                                             ; $699f


Call_003_69a0:
	call Push3BytesInWordAfterOntoScriptStack                               ; $69a0: $cd $82 $52
	dw sTempLHBFromScriptRelatedReturns
	call Push4BytesInWordAfterOntoScriptStack                               ; $69a5: $cd $93 $52
	dw sTempTaskParams
	call BHLequFFFFFFh                               ; $69aa: $cd $fd $66
	call SetTempLHBforScriptRelatedReturnsToLHB                               ; $69ad: $cd $38 $65
	call BCequScriptByteOrWordPlusNextOffset                               ; $69b0: $cd $84 $55
	call PushBContoScriptStack                               ; $69b3: $cd $51 $52
	call DEHLequTaskParams                               ; $69b6: $cd $ba $58
	call SetTempTaskParamsToDEHL                               ; $69b9: $cd $ee $69
	call PopBCfromScriptStack                               ; $69bc: $cd $bd $52

jr_003_69bf:
	call CpCurrOffsetIntoScriptToBC                               ; $69bf: $cd $98 $55
	jr nc, jr_003_69d8                               ; $69c2: $30 $14

	call PushBContoScriptStack                               ; $69c4: $cd $51 $52
	call Call_003_6962                               ; $69c7: $cd $62 $69
	call SetTempLHBforScriptRelatedReturnsToLHB                               ; $69ca: $cd $38 $65
	call PopBCfromScriptStack                               ; $69cd: $cd $bd $52
	ld de, NO_SUBSCRIPT_RAN                                     ; $69d0: $11 $9d $ff
	call wCpHLtoDE                                       ; $69d3: $cd $80 $ce
	jr z, jr_003_69bf                                ; $69d6: $28 $e7

jr_003_69d8:
	ld a, c                                          ; $69d8: $79
	ld [sCurrOffsetIntoScript], a                                    ; $69d9: $ea $bc $bd
	ld a, b                                          ; $69dc: $78
	ld [sCurrOffsetIntoScript+1], a                                    ; $69dd: $ea $bd $bd
	call Copy4BytesFromScriptStackToWordAfter                               ; $69e0: $cd $e8 $52
	dw sTempTaskParams
	call LHBequTempBytesForScriptRelatedReturns                               ; $69e5: $cd $45 $65
	call Copy3BytesFromScriptStackToWordAfter                               ; $69e8: $cd $df $52
	dw sTempLHBFromScriptRelatedReturns
	ret                                              ; $69ed: $c9


SetTempTaskParamsToDEHL:
	ld a, e                                                         ; $69ee
	ld [sTempTaskParams_word0], a                                   ; $69ef
	ld a, d                                                         ; $69f2
	ld [sTempTaskParams_word0+1], a                                 ; $69f3
	ld a, l                                                         ; $69f6
	ld [sTempTaskParams_word1], a                                   ; $69f7
	ld a, h                                                         ; $69fa
	ld [sTempTaskParams_word1+1], a                                 ; $69fb
	ret                                                             ; $69fe


SetTempTaskParamsToNextTaskParams:
	call DEHLequTaskParams                                          ; $69ff
	jp SetTempTaskParamsToDEHL                                      ; $6a02


; Returns Z set if equal
CheckIfNextTaskParamsEquTempTaskParams:
; Compare next task params word 0 to curr, returning if not equal
	push bc                                                         ; $6a05
	call DEHLequTaskParams                                          ; $6a06
	ld a, [sTempTaskParams_word0]                                   ; $6a09
	ld c, a                                                         ; $6a0c
	ld a, [sTempTaskParams_word0+1]                                 ; $6a0d
	ld b, a                                                         ; $6a10
	call wCpBCtoDE                                                  ; $6a11
	pop bc                                                          ; $6a14
	ret nz                                                          ; $6a15

; Else compare similarly with the word 1 values
	push bc                                                         ; $6a16
	ld a, [sTempTaskParams_word1]                                   ; $6a17
	ld c, a                                                         ; $6a1a
	ld a, [sTempTaskParams_word1+1]                                 ; $6a1b
	ld b, a                                                         ; $6a1e
	call wCpHLtoBC                                                  ; $6a1f
	pop bc                                                          ; $6a22
	ret                                                             ; $6a23


Call_003_6a24:
	call Push3BytesInWordAfterOntoScriptStack                               ; $6a24: $cd $82 $52
	dw $bdb8
	call Push4BytesInWordAfterOntoScriptStack                               ; $6a29: $cd $93 $52
	dw $bdb4
	call BCequScriptByteOrWordPlusNextOffset                               ; $6a2e: $cd $84 $55
	call Call_003_5805                               ; $6a31: $cd $05 $58

jr_003_6a34:
	call CpCurrOffsetIntoScriptToBC                               ; $6a34: $cd $98 $55
	jr nc, jr_003_6a65                               ; $6a37: $30 $2c

	call AequNextMainScriptByte                               ; $6a39: $cd $09 $55
	ld hl, $bdb4                                     ; $6a3c: $21 $b4 $bd
	cp [hl]                                          ; $6a3f: $be
	jr c, jr_003_6a60                                ; $6a40: $38 $1e

	push bc                                          ; $6a42: $c5
	call Call_003_65ef                               ; $6a43: $cd $ef $65
	call SetTempLHBforScriptRelatedReturnsToLHB                               ; $6a46: $cd $38 $65
	pop bc                                           ; $6a49: $c1
	ld a, c                                          ; $6a4a: $79
	ld [sCurrOffsetIntoScript], a                                    ; $6a4b: $ea $bc $bd
	ld a, b                                          ; $6a4e: $78
	ld [sCurrOffsetIntoScript+1], a                                    ; $6a4f: $ea $bd $bd
	call LHBequTempBytesForScriptRelatedReturns                               ; $6a52: $cd $45 $65

jr_003_6a55:
	call Copy4BytesFromScriptStackToWordAfter                               ; $6a55: $cd $e8 $52
	dw $bdb4
	call Copy3BytesFromScriptStackToWordAfter                               ; $6a5a: $cd $df $52
	dw $bdb8
	ret                                              ; $6a5f: $c9


jr_003_6a60:
	call Call_003_6844                               ; $6a60: $cd $44 $68
	jr jr_003_6a34                                   ; $6a63: $18 $cf

jr_003_6a65:
	call BHLequFFFFFFh                               ; $6a65: $cd $fd $66
	jr jr_003_6a55                                   ; $6a68: $18 $eb


todo_Set_bdb8_to_bdba_toLHB:
	ld a, l                                          ; $6a6a: $7d
	ld [$bdb8], a                                    ; $6a6b: $ea $b8 $bd
	ld a, h                                          ; $6a6e: $7c
	ld [$bdb9], a                                    ; $6a6f: $ea $b9 $bd
	ld a, b                                          ; $6a72: $78
	ld [$bdba], a                                    ; $6a73: $ea $ba $bd
	ret                                              ; $6a76: $c9


Call_003_6a77:
	call Push4BytesInWordAfterOntoScriptStack                               ; $6a77: $cd $93 $52
	dw $bdb0
	call Call_003_6ac5                               ; $6a7c: $cd $c5 $6a
	ld a, e                                          ; $6a7f: $7b
	ld [$bdb0], a                                    ; $6a80: $ea $b0 $bd
	ld a, d                                          ; $6a83: $7a
	ld [$bdb1], a                                    ; $6a84: $ea $b1 $bd
	ld a, l                                          ; $6a87: $7d
	ld [$bdb2], a                                    ; $6a88: $ea $b2 $bd
	ld a, h                                          ; $6a8b: $7c
	ld [$bdb3], a                                    ; $6a8c: $ea $b3 $bd
	call BCequScriptByteOrWordPlusNextOffset                               ; $6a8f: $cd $84 $55

jr_003_6a92:
	call CpCurrOffsetIntoScriptToBC                               ; $6a92: $cd $98 $55
	jr nc, jr_003_6abd                               ; $6a95: $30 $26

	call AequNextMainScriptByte                               ; $6a97: $cd $09 $55
	ld hl, $bdb0                                     ; $6a9a: $21 $b0 $bd
	cp [hl]                                          ; $6a9d: $be
	jr nc, jr_003_6ab8                               ; $6a9e: $30 $18

	push bc                                          ; $6aa0: $c5
	call Call_003_65ef                               ; $6aa1: $cd $ef $65
	call SetTempLHBforScriptRelatedReturnsToLHB                               ; $6aa4: $cd $38 $65
	pop bc                                           ; $6aa7: $c1
	ld a, c                                          ; $6aa8: $79
	ld [sCurrOffsetIntoScript], a                                    ; $6aa9: $ea $bc $bd
	ld a, b                                          ; $6aac: $78
	ld [sCurrOffsetIntoScript+1], a                                    ; $6aad: $ea $bd $bd
	call Copy4BytesFromScriptStackToWordAfter                               ; $6ab0: $cd $e8 $52
	dw $bdb0
	jp LHBequTempBytesForScriptRelatedReturns                                 ; $6ab5: $c3 $45 $65


jr_003_6ab8:
	call Call_003_6844                               ; $6ab8: $cd $44 $68
	jr jr_003_6a92                                   ; $6abb: $18 $d5

jr_003_6abd:
	call Copy4BytesFromScriptStackToWordAfter                               ; $6abd: $cd $e8 $52
	dw $bdb0
	jp BHLequFFFFFFh                                 ; $6ac2: $c3 $fd $66


Call_003_6ac5:
	call Call_000_1309                                       ; $6ac5: $cd $09 $13
	ld e, a                                          ; $6ac8: $5f
	ld d, $00                                        ; $6ac9: $16 $00
	ld hl, $0000                                     ; $6acb: $21 $00 $00
	ret                                              ; $6ace: $c9


_todo_Script1stByte08h:
;
	call Push3BytesInWordAfterOntoScriptStack                               ; $6acf: $cd $82 $52
	dw sTempLHBFromScriptRelatedReturns

; DE = curr offset into the script
	ld a, [sCurrOffsetIntoScript]                                    ; $6ad4: $fa $bc $bd
	ld e, a                                          ; $6ad7: $5f
	ld a, [sCurrOffsetIntoScript+1]                                    ; $6ad8: $fa $bd $bd
	ld d, a                                          ; $6adb: $57

.massiveLoop_6adc:
	ld a, e                                          ; $6adc: $7b
	ld [sCurrOffsetIntoScript], a                                    ; $6add: $ea $bc $bd
	ld a, d                                          ; $6ae0: $7a
	ld [sCurrOffsetIntoScript+1], a                                    ; $6ae1: $ea $bd $bd
	push de                                          ; $6ae4: $d5
	xor a                                            ; $6ae5: $af
	ld [$bdc0], a                                    ; $6ae6: $ea $c0 $bd
	ld [$bdc1], a                                    ; $6ae9: $ea $c1 $bd
	ld a, [sIdxForCompactScriptLocList1]                                    ; $6aec: $fa $c9 $bd
	ld [$bdc2], a                                    ; $6aef: $ea $c2 $bd
	call Call_003_6cb7                               ; $6af2: $cd $b7 $6c
	ld a, [$bdc0]                                    ; $6af5: $fa $c0 $bd
	and a                                            ; $6af8: $a7
	jr nz, .br_6b05                               ; $6af9: $20 $0a

	pop de                                           ; $6afb: $d1
	call BHLequFFFFFFh                               ; $6afc: $cd $fd $66
	call Copy3BytesFromScriptStackToWordAfter                               ; $6aff: $cd $df $52
	dw sTempLHBFromScriptRelatedReturns
	ret                                              ; $6b04: $c9

.br_6b05:
	call todo_HLequ_ba80_plus_bdca_times30h                               ; $6b05: $cd $d6 $65
	ld bc, $000d                                     ; $6b08: $01 $0d $00
	add hl, bc                                       ; $6b0b: $09
	ld a, [hl+]                                      ; $6b0c: $2a
	or [hl]                                          ; $6b0d: $b6
	jr nz, .br_6b1c                               ; $6b0e: $20 $0c

:	call Call_003_70e5                               ; $6b10: $cd $e5 $70
	ld a, [$bdaa]                                    ; $6b13: $fa $aa $bd
	bit 7, a                                         ; $6b16: $cb $7f
	jr nz, :-                               ; $6b18: $20 $f6

	jr .br_6b30                                   ; $6b1a: $18 $14

.br_6b1c:
	call Call_003_70e5                               ; $6b1c: $cd $e5 $70
	ld a, [$bdaa]                                    ; $6b1f: $fa $aa $bd
	bit 7, a                                         ; $6b22: $cb $7f
	jr z, .br_6b30                                ; $6b24: $28 $0a

	pop de                                           ; $6b26: $d1
	call BHLequFFFFFEh                               ; $6b27: $cd $f7 $66
	call Copy3BytesFromScriptStackToWordAfter                               ; $6b2a: $cd $df $52
	dw sTempLHBFromScriptRelatedReturns
	ret                                              ; $6b2f: $c9

.br_6b30:
	call todo_DEequ_ba80_plus_bdca_times30h                               ; $6b30: $cd $e6 $65
	ld a, [$bdc2]                                    ; $6b33: $fa $c2 $bd
	ld hl, $000c                                     ; $6b36: $21 $0c $00
	add hl, de                                       ; $6b39: $19
	sub [hl]                                         ; $6b3a: $96
	ld b, a                                          ; $6b3b: $47
	ld c, $00                                        ; $6b3c: $0e $00

.loop_6b3e:
	ld a, c                                          ; $6b3e: $79
	cp b                                             ; $6b3f: $b8
	jr nc, .brLoop_6b4b                               ; $6b40: $30 $09

	call Call_003_6bb5                               ; $6b42: $cd $b5 $6b
	call Call_003_6bc7                               ; $6b45: $cd $c7 $6b
	inc c                                            ; $6b48: $0c
	jr .loop_6b3e                                   ; $6b49: $18 $f3

.brLoop_6b4b:
	ld a, c                                          ; $6b4b: $79
	cp $04                                           ; $6b4c: $fe $04
	jr nc, .cont_6b71                               ; $6b4e: $30 $21

	push bc                                          ; $6b50: $c5
	push de                                          ; $6b51: $d5
	sub b                                            ; $6b52: $90
	ld d, a                                          ; $6b53: $57
	call $731f                                       ; $6b54: $cd $1f $73
	call Call_003_6c01                               ; $6b57: $cd $01 $6c
	pop de                                           ; $6b5a: $d1
	ld a, c                                          ; $6b5b: $79
	call Call_003_6bc7                               ; $6b5c: $cd $c7 $6b
	push de                                          ; $6b5f: $d5
	push hl                                          ; $6b60: $e5
	call Call_003_6bb5                               ; $6b61: $cd $b5 $6b
	pop de                                           ; $6b64: $d1
	call Call_003_6be3                               ; $6b65: $cd $e3 $6b
	pop de                                           ; $6b68: $d1
	pop bc                                           ; $6b69: $c1
	bit 7, a                                         ; $6b6a: $cb $7f
	jr nz, .cont_6b71                               ; $6b6c: $20 $03

	inc c                                            ; $6b6e: $0c
	jr .brLoop_6b4b                                   ; $6b6f: $18 $da

.cont_6b71:
	ld hl, $000c                                     ; $6b71: $21 $0c $00
	add hl, de                                       ; $6b74: $19
	ld a, [hl]                                       ; $6b75: $7e
	add c                                            ; $6b76: $81
	ld [sIdxForCompactScriptLocList1], a                                    ; $6b77: $ea $c9 $bd
	push bc                                          ; $6b7a: $c5
	push de                                          ; $6b7b: $d5
	call $731f                                       ; $6b7c: $cd $1f $73
	ld de, $bcc4                                     ; $6b7f: $11 $c4 $bc
	call HLequDEplus3A                               ; $6b82: $cd $15 $52
	ld e, [hl]                                       ; $6b85: $5e
	inc hl                                           ; $6b86: $23
	ld d, [hl]                                       ; $6b87: $56
	inc hl                                           ; $6b88: $23
	ld b, [hl]                                       ; $6b89: $46
	call wSwapDEandHL                                       ; $6b8a: $cd $d4 $ce
	call Call_003_6552                               ; $6b8d: $cd $52 $65
	call SetTempLHBforScriptRelatedReturnsToLHB                               ; $6b90: $cd $38 $65
	pop de                                           ; $6b93: $d1
	pop bc                                           ; $6b94: $c1
	ld a, [sTempLHBFromScriptRelatedReturns+2]                                    ; $6b95: $fa $a5 $bd
	bit 7, a                                         ; $6b98: $cb $7f
	pop de                                           ; $6b9a: $d1
	jr z, .br_6bac                                ; $6b9b: $28 $0f

	ld a, [sTempLHBFromScriptRelatedReturns]                                    ; $6b9d: $fa $a3 $bd
	ld l, a                                          ; $6ba0: $6f
	ld a, [sTempLHBFromScriptRelatedReturns+1]                                    ; $6ba1: $fa $a4 $bd
	ld h, a                                          ; $6ba4: $67
	inc hl                                           ; $6ba5: $23
	inc hl                                           ; $6ba6: $23
	ld a, h                                          ; $6ba7: $7c
	or l                                             ; $6ba8: $b5
	jp z, .massiveLoop_6adc                              ; $6ba9: $ca $dc $6a

.br_6bac:
	call LHBequTempBytesForScriptRelatedReturns                               ; $6bac: $cd $45 $65
	call Copy3BytesFromScriptStackToWordAfter                               ; $6baf: $cd $df $52
	dw sTempLHBFromScriptRelatedReturns
	ret                                              ; $6bb4: $c9


Call_003_6bb5:
	push af                                          ; $6bb5: $f5
	push bc                                          ; $6bb6: $c5
	push de                                          ; $6bb7: $d5
	ld hl, $000c                                     ; $6bb8: $21 $0c $00
	add hl, de                                       ; $6bbb: $19
	add [hl]                                         ; $6bbc: $86
	ld de, $bba0                                     ; $6bbd: $11 $a0 $bb
	call HLequDEplus3A                               ; $6bc0: $cd $15 $52
	pop de                                           ; $6bc3: $d1
	pop bc                                           ; $6bc4: $c1
	pop af                                           ; $6bc5: $f1
	ret                                              ; $6bc6: $c9


Call_003_6bc7:
Jump_003_6bc7:
	push af                                          ; $6bc7: $f5
	push de                                          ; $6bc8: $d5
	call Call_003_6bef                               ; $6bc9: $cd $ef $6b
	call Call_003_6be3                               ; $6bcc: $cd $e3 $6b
	pop de                                           ; $6bcf: $d1
	pop af                                           ; $6bd0: $f1
	ret                                              ; $6bd1: $c9


	push af                                          ; $6bd2: $f5
	push de                                          ; $6bd3: $d5
	call Call_003_6bef                               ; $6bd4: $cd $ef $6b
	call wSwapDEandHL                                       ; $6bd7: $cd $d4 $ce
	call Call_003_6be3                               ; $6bda: $cd $e3 $6b
	call wSwapDEandHL                                       ; $6bdd: $cd $d4 $ce
	pop de                                           ; $6be0: $d1
	pop af                                           ; $6be1: $f1
	ret                                              ; $6be2: $c9


Call_003_6be3:
	ld a, [de]                                       ; $6be3: $1a
	ld [hl+], a                                      ; $6be4: $22
	inc de                                           ; $6be5: $13
	ld a, [de]                                       ; $6be6: $1a
	ld [hl+], a                                      ; $6be7: $22
	inc de                                           ; $6be8: $13
	ld a, [de]                                       ; $6be9: $1a
	ld [hl-], a                                      ; $6bea: $32
	dec de                                           ; $6beb: $1b
	dec de                                           ; $6bec: $1b
	dec hl                                           ; $6bed: $2b
	ret                                              ; $6bee: $c9


Call_003_6bef:
	push bc                                          ; $6bef: $c5
	push hl                                          ; $6bf0: $e5
	push de                                          ; $6bf1: $d5
	ld de, $0000                                     ; $6bf2: $11 $00 $00
	call HLequDEplus3A                               ; $6bf5: $cd $15 $52
	pop de                                           ; $6bf8: $d1
	add hl, de                                       ; $6bf9: $19
	pop de                                           ; $6bfa: $d1
	pop bc                                           ; $6bfb: $c1
	ret                                              ; $6bfc: $c9


Call_003_6bfd:
	ld d, c                                          ; $6bfd: $51
	ld a, [$bdc0]                                    ; $6bfe: $fa $c0 $bd

Call_003_6c01:
	push bc                                          ; $6c01: $c5
	push de                                          ; $6c02: $d5
	push de                                          ; $6c03: $d5
	ld b, a                                          ; $6c04: $47
	ld c, $0c                                        ; $6c05: $0e $0c
	call BCequBtimesC                                       ; $6c07: $cd $5f $12
	pop af                                           ; $6c0a: $f1
	call HLequ3A                               ; $6c0b: $cd $0c $52
	add hl, bc                                       ; $6c0e: $09
	ld de, $bca0                                     ; $6c0f: $11 $a0 $bc
	add hl, de                                       ; $6c12: $19
	pop de                                           ; $6c13: $d1
	pop bc                                           ; $6c14: $c1
	ret                                              ; $6c15: $c9


Call_003_6c16:
	call Call_003_6bb5                               ; $6c16: $cd $b5 $6b
	jp Jump_003_6bc7                                 ; $6c19: $c3 $c7 $6b


Call_003_6c1c:
	ld a, [sIdxForCompactScriptLocList1]                                    ; $6c1c: $fa $c9 $bd
	ld hl, $bdc2                                     ; $6c1f: $21 $c2 $bd
	sub [hl]                                         ; $6c22: $96
	ld b, a                                          ; $6c23: $47
	ld c, $00                                        ; $6c24: $0e $00
	jr jr_003_6c3c                                   ; $6c26: $18 $14

jr_003_6c28:
	add [hl]                                         ; $6c28: $86
	ld de, $bba0                                     ; $6c29: $11 $a0 $bb
	call HLequDEplus3A                               ; $6c2c: $cd $15 $52
	push de                                          ; $6c2f: $d5
	push hl                                          ; $6c30: $e5
	call Call_003_6bfd                               ; $6c31: $cd $fd $6b
	ld e, l                                          ; $6c34: $5d
	ld d, h                                          ; $6c35: $54
	pop hl                                           ; $6c36: $e1
	call $ccd7                                       ; $6c37: $cd $d7 $cc
	pop de                                           ; $6c3a: $d1
	inc c                                            ; $6c3b: $0c

jr_003_6c3c:
	ld a, c                                          ; $6c3c: $79
	cp b                                             ; $6c3d: $b8
	jr c, jr_003_6c28                                ; $6c3e: $38 $e8

	ld a, c                                          ; $6c40: $79
	cp $04                                           ; $6c41: $fe $04
	ret nc                                           ; $6c43: $d0

	call Call_003_6bfd                               ; $6c44: $cd $fd $6b
	ld a, $ff                                        ; $6c47: $3e $ff
	ld [hl+], a                                      ; $6c49: $22
	ld [hl+], a                                      ; $6c4a: $22
	ld [hl], a                                       ; $6c4b: $77
	ret                                              ; $6c4c: $c9


Call_003_6c4d:
	call SetFarTextByteSrc                               ; $6c4d: $cd $6a $4b
	ld a, [$bdc0]                                    ; $6c50: $fa $c0 $bd
	ld b, a                                          ; $6c53: $47
	ld c, $40                                        ; $6c54: $0e $40
	call BCequBtimesC                                       ; $6c56: $cd $5f $12
	ld hl, $bcd0                                     ; $6c59: $21 $d0 $bc
	add hl, bc                                       ; $6c5c: $09
	ld bc, $0000                                     ; $6c5d: $01 $00 $00
	add hl, bc                                       ; $6c60: $09

jr_003_6c61:
	call AequNextFarTextByte                               ; $6c61: $cd $26 $4b
	ld [hl+], a                                      ; $6c64: $22
	cp $09                                           ; $6c65: $fe $09
	jr z, jr_003_6c7f                                ; $6c67: $28 $16

	cp $30                                           ; $6c69: $fe $30
	jr c, jr_003_6c61                                ; $6c6b: $38 $f4

	cp $a0                                           ; $6c6d: $fe $a0
	jr c, jr_003_6c61                                ; $6c6f: $38 $f0

	cp $a8                                           ; $6c71: $fe $a8
	jr c, jr_003_6c7f                                ; $6c73: $38 $0a

	cp $e8                                           ; $6c75: $fe $e8
	jr c, jr_003_6c61                                ; $6c77: $38 $e8

	call AequNextFarTextByte                               ; $6c79: $cd $26 $4b
	ld [hl+], a                                      ; $6c7c: $22
	jr jr_003_6c61                                   ; $6c7d: $18 $e2

jr_003_6c7f:
	ld a, $00                                        ; $6c7f: $3e $00

Jump_003_6c81:
	push af                                          ; $6c81: $f5
	ld hl, $bdc0                                     ; $6c82: $21 $c0 $bd
	ld a, [hl]                                       ; $6c85: $7e
	ld de, $bcc4                                     ; $6c86: $11 $c4 $bc
	call HLequDEplus3A                               ; $6c89: $cd $15 $52
	call wSwapDEandHL                                       ; $6c8c: $cd $d4 $ce
	ld a, [sCurrOffsetIntoScript]                                    ; $6c8f: $fa $bc $bd
	ld l, a                                          ; $6c92: $6f
	ld a, [sCurrOffsetIntoScript+1]                                    ; $6c93: $fa $bd $bd
	ld h, a                                          ; $6c96: $67
	ld a, [sCurrScriptIdx]                                    ; $6c97: $fa $cc $bd
	ld b, a                                          ; $6c9a: $47
	srl b                                            ; $6c9b: $cb $38
	res 7, h                                         ; $6c9d: $cb $bc
	jr nc, jr_003_6ca3                               ; $6c9f: $30 $02

	set 7, h                                         ; $6ca1: $cb $fc

jr_003_6ca3:
	ld a, l                                          ; $6ca3: $7d
	ld [de], a                                       ; $6ca4: $12
	inc de                                           ; $6ca5: $13
	ld a, h                                          ; $6ca6: $7c
	ld [de], a                                       ; $6ca7: $12
	inc de                                           ; $6ca8: $13
	ld a, b                                          ; $6ca9: $78
	ld [de], a                                       ; $6caa: $12
	call Call_003_6c1c                               ; $6cab: $cd $1c $6c
	ld hl, $bdc0                                     ; $6cae: $21 $c0 $bd
	inc [hl]                                         ; $6cb1: $34
	pop af                                           ; $6cb2: $f1
	ld [$bdda], a                                    ; $6cb3: $ea $da $bd
	ret                                              ; $6cb6: $c9


Call_003_6cb7:
	push af                                          ; $6cb7: $f5
	push bc                                          ; $6cb8: $c5

; BC points to end of current script chunk
	call BCequScriptByteOrWordPlusNextOffset                               ; $6cb9: $cd $84 $55

.loop_6cbc:
	push bc                                          ; $6cbc: $c5
	call Call_003_6d16                               ; $6cbd: $cd $16 $6d
	pop bc                                           ; $6cc0: $c1

; Exit once past the chunk
	call CpCurrOffsetIntoScriptToBC                               ; $6cc1: $cd $98 $55
	jr c, .loop_6cbc                                ; $6cc4: $38 $f6

	pop bc                                           ; $6cc6: $c1
	pop af                                           ; $6cc7: $f1
	ret                                              ; $6cc8: $c9


;
	ld a, l                                          ; $6cc9: $7d
	ld [sCompactScriptLoc], a                                    ; $6cca: $ea $9f $bd
	ld a, h                                          ; $6ccd: $7c
	ld [sCompactScriptLoc+1], a                                    ; $6cce: $ea $a0 $bd
	ld a, b                                          ; $6cd1: $78
	ld [sCompactScriptLoc+2], a                                    ; $6cd2: $ea $a1 $bd
	call Push2BytesInWordAfterOntoScriptStack                               ; $6cd5: $cd $6a $52
	dw sCurrOffsetIntoScript
	call Push2BytesInWordAfterOntoScriptStack                               ; $6cda: $cd $6a $52
	dw sCurrScriptIdx
	call Push2BytesInWordAfterOntoScriptStack                                   ; $6cdf: $cd $6a $52
	dw sExecScript1stByte
	call SetScriptIdxFromCompactScriptLoc                               ; $6ce4: $cd $f7 $54
	call SetScriptOffsetFromCompactScriptLoc                               ; $6ce7: $cd $36 $52
	call AequNextMainScriptByte                               ; $6cea: $cd $09 $55
	ld [sExecScript1stByte], a                                    ; $6ced: $ea $96 $bd
	and a                                            ; $6cf0: $a7
	jr nz, jr_003_6cf8                               ; $6cf1: $20 $05

	call Call_003_6cb7                               ; $6cf3: $cd $b7 $6c
	jr jr_003_6d08                                   ; $6cf6: $18 $10

jr_003_6cf8:
	and $3f                                          ; $6cf8: $e6 $3f
	ld h, a                                          ; $6cfa: $67
	call AequNextMainScriptByte                               ; $6cfb: $cd $09 $55
	ld l, a                                          ; $6cfe: $6f
	call Call_003_70c3                               ; $6cff: $cd $c3 $70
	call Call_003_6cb7                               ; $6d02: $cd $b7 $6c
	call Call_003_70de                               ; $6d05: $cd $de $70

jr_003_6d08:
	call Copy2BytesFromScriptStackToWordAfter                               ; $6d08: $cd $d6 $52
	dw sExecScript1stByte
	call SetScriptIdxFromScriptStack                               ; $6d0d: $cd $ed $54
	call Copy2BytesFromScriptStackToWordAfter                               ; $6d10: $cd $d6 $52
	dw sCurrOffsetIntoScript
	ret                                              ; $6d15: $c9


Call_003_6d16:
	call Push2BytesInWordAfterOntoScriptStack                               ; $6d16: $cd $6a $52
	dw sExecScript1stByte

	call Call_003_6d24                               ; $6d1b: $cd $24 $6d

	call Copy2BytesFromScriptStackToWordAfter                               ; $6d1e: $cd $d6 $52
	dw sExecScript1stByte
	ret                                              ; $6d23: $c9


Call_003_6d24:
	call SetMainScript_GetNextByte                               ; $6d24: $cd $3d $55
	ld [sExecScript1stByte], a                                    ; $6d27: $ea $96 $bd
	bit 7, a                                         ; $6d2a: $cb $7f
	jr nz, .br_6d37                               ; $6d2c: $20 $09

	call GetTextSourceForScriptsTextsIdxedByMainScriptWord                               ; $6d2e: $cd $ab $55
	call Call_003_6c4d                               ; $6d31: $cd $4d $6c
	jp Jump_003_6844                                 ; $6d34: $c3 $44 $68

.br_6d37:
	and $c0                                          ; $6d37: $e6 $c0
	cp $80                                           ; $6d39: $fe $80
	jr nz, .br_6d42                               ; $6d3b: $20 $05

	ld a, $01                                        ; $6d3d: $3e $01
	jp Jump_003_6ddf                                 ; $6d3f: $c3 $df $6d

.br_6d42:
	call IncMainScriptSavedOffset                               ; $6d42: $cd $78 $5b
	ld a, [sExecScript1stByte]                                    ; $6d45: $fa $96 $bd
	and $f8                                          ; $6d48: $e6 $f8
	cp $c0                                           ; $6d4a: $fe $c0
	jr z, jr_003_6d8e                                ; $6d4c: $28 $40

	cp $c8                                           ; $6d4e: $fe $c8
	jr z, jr_003_6d8e                                ; $6d50: $28 $3c

	cp $d0                                           ; $6d52: $fe $d0
	jr z, jr_003_6d96                                ; $6d54: $28 $40

	cp $d8                                           ; $6d56: $fe $d8
	jr z, jr_003_6d96                                ; $6d58: $28 $3c

	cp $e0                                           ; $6d5a: $fe $e0
	jr z, jr_003_6d9e                                ; $6d5c: $28 $40

	cp $e8                                           ; $6d5e: $fe $e8
	jr z, jr_003_6da6                                ; $6d60: $28 $44

	ld a, [sExecScript1stByte]                                    ; $6d62: $fa $96 $bd
	and $fc                                          ; $6d65: $e6 $fc
	cp $f0                                           ; $6d67: $fe $f0
	jr z, jr_003_6dae                                ; $6d69: $28 $43

	ld a, [sExecScript1stByte]                                    ; $6d6b: $fa $96 $bd
	cp $f4                                           ; $6d6e: $fe $f4
	jr c, jr_003_6d8d                                      ; $6d70: $38 $1b

	sub $f4                                          ; $6d72: $d6 $f4
	rst JumpTable                                          ; $6d74: $c7
	dw $6db8
	dw $6db8
	dw $6db8
	dw $6db8
	dw $6dc0
	dw $6d8d
	dw $6d8d
	dw $6dc6
	dw $6dcb
	dw $6dd0
	dw $6dd5
	dw $6dda

jr_003_6d8d:
	ret                                      ; $6d8d: $c9

jr_003_6d8e:
	ld a, [sExecScript1stByte]                                    ; $6d8e: $fa $96 $bd
	and $0f                                          ; $6d91: $e6 $0f
	jp Jump_003_6ec9                                 ; $6d93: $c3 $c9 $6e


jr_003_6d96:
	ld a, [sExecScript1stByte]                                    ; $6d96: $fa $96 $bd
	and $0f                                          ; $6d99: $e6 $0f
	jp Jump_003_6f51                                 ; $6d9b: $c3 $51 $6f


jr_003_6d9e:
	ld a, [sExecScript1stByte]                                    ; $6d9e: $fa $96 $bd
	and $07                                          ; $6da1: $e6 $07
	jp Jump_003_6fb7                                 ; $6da3: $c3 $b7 $6f


jr_003_6da6:
	ld a, [sExecScript1stByte]                                    ; $6da6: $fa $96 $bd
	and $07                                          ; $6da9: $e6 $07
	jp Jump_003_7054                                 ; $6dab: $c3 $54 $70


jr_003_6dae:
	ld a, [sExecScript1stByte]                                    ; $6dae: $fa $96 $bd
	and $03                                          ; $6db1: $e6 $03
	inc a                                            ; $6db3: $3c
	inc a                                            ; $6db4: $3c
	jp Jump_003_6ddf                                 ; $6db5: $c3 $df $6d


	ld a, [sExecScript1stByte]                                    ; $6db8: $fa $96 $bd
	and $03                                          ; $6dbb: $e6 $03
	jp Jump_003_6e56                                 ; $6dbd: $c3 $56 $6e


	call AequNextMainScriptByte                               ; $6dc0: $cd $09 $55
	jp Jump_003_6ddf                                 ; $6dc3: $c3 $df $6d


	ld a, $fe                                        ; $6dc6: $3e $fe
	jp Jump_003_6ec9                                 ; $6dc8: $c3 $c9 $6e


	ld a, $ff                                        ; $6dcb: $3e $ff
	jp Jump_003_6ec9                                 ; $6dcd: $c3 $c9 $6e


	ld a, $ff                                        ; $6dd0: $3e $ff
	jp Jump_003_6f51                                 ; $6dd2: $c3 $51 $6f


	ld a, $ff                                        ; $6dd5: $3e $ff
	jp Jump_003_6fb7                                 ; $6dd7: $c3 $b7 $6f


	ld a, $ff                                        ; $6dda: $3e $ff
	jp Jump_003_7054                                 ; $6ddc: $c3 $54 $70


Jump_003_6ddf:
	ld b, a                                          ; $6ddf: $47
	ld c, $00                                        ; $6de0: $0e $00
	jr jr_003_6def                                   ; $6de2: $18 $0b

jr_003_6de4:
	call HLequMainScriptBigEndianWord                               ; $6de4: $cd $43 $55
	res 7, h                                         ; $6de7: $cb $bc
	res 6, h                                         ; $6de9: $cb $b4
	call Call_003_70c3                               ; $6deb: $cd $c3 $70
	inc c                                            ; $6dee: $0c

jr_003_6def:
	ld a, c                                          ; $6def: $79
	cp b                                             ; $6df0: $b8
	jr c, jr_003_6de4                                ; $6df1: $38 $f1

	push bc                                          ; $6df3: $c5
	call Call_003_6e07                               ; $6df4: $cd $07 $6e
	pop bc                                           ; $6df7: $c1
	ld c, $00                                        ; $6df8: $0e $00
	jr jr_003_6e00                                   ; $6dfa: $18 $04

jr_003_6dfc:
	call Call_003_70de                               ; $6dfc: $cd $de $70
	inc c                                            ; $6dff: $0c

jr_003_6e00:
	ld a, c                                          ; $6e00: $79
	cp b                                             ; $6e01: $b8
	jr c, jr_003_6dfc                                ; $6e02: $38 $f8

	jp Jump_003_6844                                 ; $6e04: $c3 $44 $68


Call_003_6e07:
	ld c, $00                                        ; $6e07: $0e $00

jr_003_6e09:
	ld a, c                                          ; $6e09: $79
	cp $20                                           ; $6e0a: $fe $20
	jr nc, jr_003_6e24                               ; $6e0c: $30 $16

	ld hl, $bdc1                                     ; $6e0e: $21 $c1 $bd
	cp [hl]                                          ; $6e11: $be
	jr nc, jr_003_6e24                               ; $6e12: $30 $10

	add a                                            ; $6e14: $87
	ld e, a                                          ; $6e15: $5f
	ld d, $00                                        ; $6e16: $16 $00
	ld hl, $bc60                                     ; $6e18: $21 $60 $bc
	add hl, de                                       ; $6e1b: $19
	ld a, [hl]                                       ; $6e1c: $7e
	call Call_003_6e38                               ; $6e1d: $cd $38 $6e
	ld [hl], a                                       ; $6e20: $77
	inc c                                            ; $6e21: $0c
	jr jr_003_6e09                                   ; $6e22: $18 $e5

jr_003_6e24:
	ld a, c                                          ; $6e24: $79
	cp $20                                           ; $6e25: $fe $20
	jr nc, jr_003_6e33                               ; $6e27: $30 $0a

	call Call_003_6e38                               ; $6e29: $cd $38 $6e
	ld a, $ff                                        ; $6e2c: $3e $ff
	ld [hl+], a                                      ; $6e2e: $22
	ld [hl], a                                       ; $6e2f: $77
	inc c                                            ; $6e30: $0c
	jr jr_003_6e24                                   ; $6e31: $18 $f1

jr_003_6e33:
	ld a, $01                                        ; $6e33: $3e $01
	jp Jump_003_6c81                                 ; $6e35: $c3 $81 $6c


Call_003_6e38:
	push af                                          ; $6e38: $f5
	push bc                                          ; $6e39: $c5
	ld l, c                                          ; $6e3a: $69
	ld h, $00                                        ; $6e3b: $26 $00
	add hl, hl                                       ; $6e3d: $29
	ld a, [$bdc0]                                    ; $6e3e: $fa $c0 $bd
	ld b, a                                          ; $6e41: $47
	ld c, $40                                        ; $6e42: $0e $40
	call BCequBtimesC                                       ; $6e44: $cd $5f $12
	call wSwapBCandHL                                       ; $6e47: $cd $d9 $ce
	add hl, bc                                       ; $6e4a: $09
	ld bc, $bcd0                                     ; $6e4b: $01 $d0 $bc
	add hl, bc                                       ; $6e4e: $09
	ld bc, $0000                                     ; $6e4f: $01 $00 $00
	add hl, bc                                       ; $6e52: $09
	pop bc                                           ; $6e53: $c1
	pop af                                           ; $6e54: $f1
	ret                                              ; $6e55: $c9


Jump_003_6e56:
	ld b, a                                          ; $6e56: $47
	ld de, $6cc9                                     ; $6e57: $11 $c9 $6c

; B - eg 1
; DE - ??? a jump addr
Call_003_6e5a:
; store a jump addr, preserve bytes
	ld a, _JP                                        ; $6e5a: $3e $c3
	ld [$c0f0], a                                    ; $6e5c: $ea $f0 $c0
	ld a, e                                          ; $6e5f: $7b
	ld [$c0f1], a                                    ; $6e60: $ea $f1 $c0
	ld a, d                                          ; $6e63: $7a
	ld [$c0f2], a                                    ; $6e64: $ea $f2 $c0

	call Push3BytesInWordAfterOntoScriptStack                               ; $6e67: $cd $82 $52
	dw sCompactScriptLoc

; eg 1, push it
	ld a, b                                          ; $6e6c: $78
	push bc                                          ; $6e6d: $c5

; set new mixed script offset/idx from script
	call BHLequCompactScriptLocFromScriptAddrInScriptBytes                               ; $6e6e: $cd $d3 $55
	ld a, l                                          ; $6e71: $7d
	ld [sCompactScriptLoc], a                                    ; $6e72: $ea $9f $bd
	ld a, h                                          ; $6e75: $7c
	ld [sCompactScriptLoc+1], a                                    ; $6e76: $ea $a0 $bd
	ld a, b                                          ; $6e79: $78
	ld [sCompactScriptLoc+2], a                                    ; $6e7a: $ea $a1 $bd

; pop orig B param, jumping if bit 1 clear
	pop af                                           ; $6e7d: $f1
	and $02                                          ; $6e7e: $e6 $02
	jr z, .cont_6e9b                                ; $6e80: $28 $19

; if bit 1 set, get this counter, push, store a big end word converted back in
	ld a, [$bd90]                                    ; $6e82: $fa $90 $bd
	ld l, a                                          ; $6e85: $6f
	ld a, [$bd91]                                    ; $6e86: $fa $91 $bd
	ld h, a                                          ; $6e89: $67
	push hl                                          ; $6e8a: $e5
	call HLequMainScriptBigEndianWord                               ; $6e8b: $cd $43 $55
	call todo_retHLifLtA000hOrUseTable2WordAndConvHL                               ; $6e8e: $cd $01 $56
	ld a, l                                          ; $6e91: $7d
	ld [$bd90], a                                    ; $6e92: $ea $90 $bd
	ld a, h                                          ; $6e95: $7c
	ld [$bd91], a                                    ; $6e96: $ea $91 $bd

;
	or $02                                           ; $6e99: $f6 $02

.cont_6e9b:
; push orig param
	push af                                          ; $6e9b: $f5
	call PushCompactScriptLocInList1andLHB                               ; $6e9c: $cd $dd $54
	ld a, [sCompactScriptLoc]                                    ; $6e9f: $fa $9f $bd
	ld l, a                                          ; $6ea2: $6f
	ld a, [sCompactScriptLoc+1]                                    ; $6ea3: $fa $a0 $bd
	ld h, a                                          ; $6ea6: $67
	ld a, [sCompactScriptLoc+2]                                    ; $6ea7: $fa $a1 $bd
	ld b, a                                          ; $6eaa: $47
	call $c0f0                                       ; $6eab: $cd $f0 $c0
	call SetTempLHBforScriptRelatedReturnsToLHB                               ; $6eae: $cd $38 $65
	call DecIdxForCompactScriptLocList1                               ; $6eb1: $cd $e8 $54

; jump if bit 1 was clear
	pop af                                           ; $6eb4: $f1
	jr z, .cont_6ec0                                ; $6eb5: $28 $09

; restore orig bd90/1 above
	pop hl                                           ; $6eb7: $e1
	ld a, l                                          ; $6eb8: $7d
	ld [$bd90], a                                    ; $6eb9: $ea $90 $bd
	ld a, h                                          ; $6ebc: $7c
	ld [$bd91], a                                    ; $6ebd: $ea $91 $bd

.cont_6ec0:
	call Copy3BytesFromScriptStackToWordAfter                               ; $6ec0: $cd $df $52
	dw sCompactScriptLoc
	call LHBequTempBytesForScriptRelatedReturns                               ; $6ec5: $cd $45 $65
	ret                                              ; $6ec8: $c9


Jump_003_6ec9:
	ld b, a                                          ; $6ec9: $47
	bit 7, b                                         ; $6eca: $cb $78
	jr nz, jr_003_6ef5                               ; $6ecc: $20 $27

	inc b                                            ; $6ece: $04
	ld c, $00                                        ; $6ecf: $0e $00

jr_003_6ed1:
	call GetAndOrNext3of4TaskParamBytes                               ; $6ed1: $cd $25 $6f
	jr nz, jr_003_6ede                               ; $6ed4: $20 $08

	call AddScriptByteOrWordOntoNextScriptOffset                               ; $6ed6: $cd $be $5b
	inc c                                            ; $6ed9: $0c
	ld a, c                                          ; $6eda: $79
	cp b                                             ; $6edb: $b8
	jr c, jr_003_6ed1                                ; $6edc: $38 $f3

jr_003_6ede:
	push bc                                          ; $6ede: $c5
	call Call_003_6cb7                               ; $6edf: $cd $b7 $6c
	pop bc                                           ; $6ee2: $c1
	ld a, c                                          ; $6ee3: $79
	cp b                                             ; $6ee4: $b8
	ret nc                                           ; $6ee5: $d0

	inc c                                            ; $6ee6: $0c

jr_003_6ee7:
	ld a, c                                          ; $6ee7: $79
	cp b                                             ; $6ee8: $b8
	jp nc, AddScriptByteOrWordOntoNextScriptOffset                             ; $6ee9: $d2 $be $5b

	call Call_003_5aea                               ; $6eec: $cd $ea $5a
	call AddScriptByteOrWordOntoNextScriptOffset                               ; $6eef: $cd $be $5b
	inc c                                            ; $6ef2: $0c
	jr jr_003_6ee7                                   ; $6ef3: $18 $f2

jr_003_6ef5:
	ld a, b                                          ; $6ef5: $78
	inc a                                            ; $6ef6: $3c
	bit 7, a                                         ; $6ef7: $cb $7f
	jr nz, jr_003_6f18                               ; $6ef9: $20 $1d

	call BCequScriptByteOrWordPlusNextOffset                               ; $6efb: $cd $84 $55

jr_003_6efe:
	call CpCurrOffsetIntoScriptToBC                               ; $6efe: $cd $98 $55
	ret nc                                           ; $6f01: $d0

	call GetAndOrNext3of4TaskParamBytes                               ; $6f02: $cd $25 $6f
	jr z, jr_003_6f13                                ; $6f05: $28 $0c

	call Call_003_6cb7                               ; $6f07: $cd $b7 $6c
	ld a, c                                          ; $6f0a: $79
	ld [sCurrOffsetIntoScript], a                                    ; $6f0b: $ea $bc $bd
	ld a, b                                          ; $6f0e: $78
	ld [sCurrOffsetIntoScript+1], a                                    ; $6f0f: $ea $bd $bd
	ret                                              ; $6f12: $c9


jr_003_6f13:
	call AddScriptByteOrWordOntoNextScriptOffset                               ; $6f13: $cd $be $5b
	jr jr_003_6efe                                   ; $6f16: $18 $e6

jr_003_6f18:
	call GetAndOrNext3of4TaskParamBytes                               ; $6f18: $cd $25 $6f
	jp nz, Call_003_6cb7                             ; $6f1b: $c2 $b7 $6c

	jp AddScriptByteOrWordOntoNextScriptOffset                                 ; $6f1e: $c3 $be $5b


OrDEL:
	ld a, e                                                         ; $6f21
	or d                                                            ; $6f22
	or l                                                            ; $6f23
	ret                                                             ; $6f24


GetAndOrNext3of4TaskParamBytes:
	push bc                                                         ; $6f25
	call DEHLequTaskParams                                          ; $6f26
	call OrDEL                                                      ; $6f29
	pop bc                                                          ; $6f2c
	ret                                                             ; $6f2d


Call_003_6f2e:
	call BCequScriptByteOrWordPlusNextOffset                               ; $6f2e: $cd $84 $55
	jr z, jr_003_6f45                                ; $6f31: $28 $12

jr_003_6f33:
	call CpCurrOffsetIntoScriptToBC                               ; $6f33: $cd $98 $55
	jr nc, jr_003_6f4b                               ; $6f36: $30 $13

	call CheckIfNextTaskParamsEquTempTaskParams                               ; $6f38: $cd $05 $6a
	jr nz, jr_003_6f33                               ; $6f3b: $20 $f6

	ld a, c                                          ; $6f3d: $79
	ld [sCurrOffsetIntoScript], a                                    ; $6f3e: $ea $bc $bd
	ld a, b                                          ; $6f41: $78
	ld [sCurrOffsetIntoScript+1], a                                    ; $6f42: $ea $bd $bd

jr_003_6f45:
	call Call_003_6cb7                               ; $6f45: $cd $b7 $6c
	jp BHLequFFFFFFh                                 ; $6f48: $c3 $fd $66


jr_003_6f4b:
	call AddScriptByteOrWordOntoNextScriptOffset                               ; $6f4b: $cd $be $5b
	jp BHLequNoSubScriptRan                                 ; $6f4e: $c3 $9a $69


Jump_003_6f51:
	ld b, a                                          ; $6f51: $47
	call Push4BytesInWordAfterOntoScriptStack                               ; $6f52: $cd $93 $52
	dw sTempTaskParams
	bit 7, b                                         ; $6f57: $cb $78
	jr nz, jr_003_6f8a                               ; $6f59: $20 $2f

	inc b                                            ; $6f5b: $04
	call PushBContoScriptStack                               ; $6f5c: $cd $51 $52
	call SetTempTaskParamsToNextTaskParams                               ; $6f5f: $cd $ff $69
	call PopBCfromScriptStack                               ; $6f62: $cd $bd $52
	ld c, $00                                        ; $6f65: $0e $00
	jr jr_003_6f78                                   ; $6f67: $18 $0f

jr_003_6f69:
	call PushBContoScriptStack                               ; $6f69: $cd $51 $52
	call Call_003_6f2e                               ; $6f6c: $cd $2e $6f
	call PopBCfromScriptStack                               ; $6f6f: $cd $bd $52
	inc hl                                           ; $6f72: $23
	ld a, h                                          ; $6f73: $7c
	or l                                             ; $6f74: $b5
	jr z, jr_003_6f7c                                ; $6f75: $28 $05

	inc c                                            ; $6f77: $0c

jr_003_6f78:
	ld a, c                                          ; $6f78: $79
	cp b                                             ; $6f79: $b8
	jr c, jr_003_6f69                                ; $6f7a: $38 $ed

jr_003_6f7c:
	inc c                                            ; $6f7c: $0c

jr_003_6f7d:
	ld a, c                                          ; $6f7d: $79
	cp b                                             ; $6f7e: $b8
	jr nc, jr_003_6fb1                               ; $6f7f: $30 $30

	call AddScriptByteOrWordOntoNextScriptOffset                               ; $6f81: $cd $be $5b
	call AddScriptByteOrWordOntoNextScriptOffset                               ; $6f84: $cd $be $5b
	inc c                                            ; $6f87: $0c
	jr jr_003_6f7d                                   ; $6f88: $18 $f3

jr_003_6f8a:
	call BCequScriptByteOrWordPlusNextOffset                               ; $6f8a: $cd $84 $55
	call PushBContoScriptStack                               ; $6f8d: $cd $51 $52
	call SetTempTaskParamsToNextTaskParams                               ; $6f90: $cd $ff $69
	call PopBCfromScriptStack                               ; $6f93: $cd $bd $52

jr_003_6f96:
	call CpCurrOffsetIntoScriptToBC                               ; $6f96: $cd $98 $55
	jr nc, jr_003_6fa9                               ; $6f99: $30 $0e

	call PushBContoScriptStack                               ; $6f9b: $cd $51 $52
	call Call_003_6f2e                               ; $6f9e: $cd $2e $6f
	ld a, b                                          ; $6fa1: $78
	call PopBCfromScriptStack                               ; $6fa2: $cd $bd $52
	bit 7, a                                         ; $6fa5: $cb $7f
	jr nz, jr_003_6f96                               ; $6fa7: $20 $ed

jr_003_6fa9:
	ld a, c                                          ; $6fa9: $79
	ld [sCurrOffsetIntoScript], a                                    ; $6faa: $ea $bc $bd
	ld a, b                                          ; $6fad: $78
	ld [sCurrOffsetIntoScript+1], a                                    ; $6fae: $ea $bd $bd

jr_003_6fb1:
	call Copy4BytesFromScriptStackToWordAfter                               ; $6fb1: $cd $e8 $52
	dw sTempTaskParams
	ret                                              ; $6fb6: $c9


Jump_003_6fb7:
	ld b, a                                          ; $6fb7: $47
	call Push3BytesInWordAfterOntoScriptStack                               ; $6fb8: $cd $82 $52
	dw $bdb8
	call Push4BytesInWordAfterOntoScriptStack                               ; $6fbd: $cd $93 $52
	dw $bdb4
	bit 7, a                                         ; $6fc2: $cb $7f
	jr nz, jr_003_6ffc                               ; $6fc4: $20 $36

	inc b                                            ; $6fc6: $04
	inc b                                            ; $6fc7: $04
	call Call_003_5805                               ; $6fc8: $cd $05 $58
	ld c, $00                                        ; $6fcb: $0e $00
	jr jr_003_6fdf                                   ; $6fcd: $18 $10

jr_003_6fcf:
	push bc                                          ; $6fcf: $c5
	call AequNextMainScriptByte                               ; $6fd0: $cd $09 $55
	ld hl, $bdb4                                     ; $6fd3: $21 $b4 $bd
	cp [hl]                                          ; $6fd6: $be
	call c, Call_003_6cb7                            ; $6fd7: $dc $b7 $6c
	call AddScriptByteOrWordOntoNextScriptOffset                               ; $6fda: $cd $be $5b
	pop bc                                           ; $6fdd: $c1
	inc c                                            ; $6fde: $0c

jr_003_6fdf:
	ld a, c                                          ; $6fdf: $79
	cp b                                             ; $6fe0: $b8
	jr nc, jr_003_6fcf                               ; $6fe1: $30 $ec

	inc c                                            ; $6fe3: $0c

jr_003_6fe4:
	ld a, c                                          ; $6fe4: $79
	cp b                                             ; $6fe5: $b8
	jr nc, jr_003_6ff1                               ; $6fe6: $30 $09

	call IncMainScriptSavedOffset                               ; $6fe8: $cd $78 $5b
	call AddScriptByteOrWordOntoNextScriptOffset                               ; $6feb: $cd $be $5b
	inc c                                            ; $6fee: $0c
	jr jr_003_6fe4                                   ; $6fef: $18 $f3

jr_003_6ff1:
	call Copy4BytesFromScriptStackToWordAfter                               ; $6ff1: $cd $e8 $52
	dw $bdb4
	call Copy3BytesFromScriptStackToWordAfter                               ; $6ff6: $cd $df $52
	dw $bdb8
	ret                                              ; $6ffb: $c9


jr_003_6ffc:
	call BCequScriptByteOrWordPlusNextOffset                               ; $6ffc: $cd $84 $55
	call Call_003_5805                               ; $6fff: $cd $05 $58

jr_003_7002:
	call CpCurrOffsetIntoScriptToBC                               ; $7002: $cd $98 $55
	jr nc, jr_003_7022                               ; $7005: $30 $1b

	call AequNextMainScriptByte                               ; $7007: $cd $09 $55
	ld hl, $bdb4                                     ; $700a: $21 $b4 $bd
	cp [hl]                                          ; $700d: $be
	jr nc, jr_003_701d                               ; $700e: $30 $0d

	call Call_003_6cb7                               ; $7010: $cd $b7 $6c
	ld a, c                                          ; $7013: $79
	ld [sCurrOffsetIntoScript], a                                    ; $7014: $ea $bc $bd
	ld a, b                                          ; $7017: $78
	ld [sCurrOffsetIntoScript+1], a                                    ; $7018: $ea $bd $bd
	jr jr_003_7022                                   ; $701b: $18 $05

jr_003_701d:
	call AddScriptByteOrWordOntoNextScriptOffset                               ; $701d: $cd $be $5b
	jr jr_003_7002                                   ; $7020: $18 $e0

jr_003_7022:
	call Copy4BytesFromScriptStackToWordAfter                               ; $7022: $cd $e8 $52
	dw $bdb4
	call Copy3BytesFromScriptStackToWordAfter                               ; $7027: $cd $df $52
	dw $bdb8
	ret                                              ; $702c: $c9


Call_003_702d:
	ld a, e                                          ; $702d: $7b
	ld [$bdb4], a                                    ; $702e: $ea $b4 $bd
	ld a, d                                          ; $7031: $7a
	ld [$bdb5], a                                    ; $7032: $ea $b5 $bd
	ld a, l                                          ; $7035: $7d
	ld [$bdb6], a                                    ; $7036: $ea $b6 $bd
	ld a, h                                          ; $7039: $7c
	ld [$bdb7], a                                    ; $703a: $ea $b7 $bd
	inc de                                           ; $703d: $13
	ld a, d                                          ; $703e: $7a
	or e                                             ; $703f: $b3
	jr nz, jr_003_7043                               ; $7040: $20 $01

	inc hl                                           ; $7042: $23

jr_003_7043:
	ld a, e                                          ; $7043: $7b
	ld [$bdce], a                                    ; $7044: $ea $ce $bd
	ld a, d                                          ; $7047: $7a
	ld [$bdcf], a                                    ; $7048: $ea $cf $bd
	ld a, l                                          ; $704b: $7d
	ld [$bdd0], a                                    ; $704c: $ea $d0 $bd
	ld a, h                                          ; $704f: $7c
	ld [$bdd1], a                                    ; $7050: $ea $d1 $bd
	ret                                              ; $7053: $c9


Jump_003_7054:
	ld b, a                                          ; $7054: $47
	call Push4BytesInWordAfterOntoScriptStack                               ; $7055: $cd $93 $52
	dw $bdb0
	push bc                                          ; $705a: $c5
	call Call_003_6ac5                               ; $705b: $cd $c5 $6a
	ld a, e                                          ; $705e: $7b
	ld [$bdb0], a                                    ; $705f: $ea $b0 $bd
	ld a, d                                          ; $7062: $7a
	ld [$bdb1], a                                    ; $7063: $ea $b1 $bd
	ld a, l                                          ; $7066: $7d
	ld [$bdb2], a                                    ; $7067: $ea $b2 $bd
	ld a, h                                          ; $706a: $7c
	ld [$bdb3], a                                    ; $706b: $ea $b3 $bd
	pop bc                                           ; $706e: $c1
	bit 7, b                                         ; $706f: $cb $78
	jr nz, jr_003_709a                               ; $7071: $20 $27

	inc b                                            ; $7073: $04
	inc b                                            ; $7074: $04
	ld c, $00                                        ; $7075: $0e $00

jr_003_7077:
	ld a, c                                          ; $7077: $79
	cp b                                             ; $7078: $b8
	jr nc, jr_003_7087                               ; $7079: $30 $0c

	call AequNextMainScriptByte                               ; $707b: $cd $09 $55
	ld hl, $bdb0                                     ; $707e: $21 $b0 $bd
	cp [hl]                                          ; $7081: $be
	jr nc, jr_003_7094                               ; $7082: $30 $10

	call Call_003_6cb7                               ; $7084: $cd $b7 $6c

jr_003_7087:
	inc c                                            ; $7087: $0c
	ld a, c                                          ; $7088: $79
	cp b                                             ; $7089: $b8
	jr nc, jr_003_70bd                               ; $708a: $30 $31

	call IncMainScriptSavedOffset                               ; $708c: $cd $78 $5b
	call AddScriptByteOrWordOntoNextScriptOffset                               ; $708f: $cd $be $5b
	jr jr_003_7087                                   ; $7092: $18 $f3

jr_003_7094:
	call AddScriptByteOrWordOntoNextScriptOffset                               ; $7094: $cd $be $5b
	inc c                                            ; $7097: $0c
	jr jr_003_7077                                   ; $7098: $18 $dd

jr_003_709a:
	call BCequScriptByteOrWordPlusNextOffset                               ; $709a: $cd $84 $55

jr_003_709d:
	call CpCurrOffsetIntoScriptToBC                               ; $709d: $cd $98 $55
	jr nc, jr_003_70bd                               ; $70a0: $30 $1b

	call AequNextMainScriptByte                               ; $70a2: $cd $09 $55
	ld hl, $bdb0                                     ; $70a5: $21 $b0 $bd
	cp [hl]                                          ; $70a8: $be
	jr c, jr_003_70b8                                ; $70a9: $38 $0d

	call Call_003_6cb7                               ; $70ab: $cd $b7 $6c
	ld a, c                                          ; $70ae: $79
	ld [sCurrOffsetIntoScript], a                                    ; $70af: $ea $bc $bd
	ld a, b                                          ; $70b2: $78
	ld [sCurrOffsetIntoScript+1], a                                    ; $70b3: $ea $bd $bd
	jr jr_003_70bd                                   ; $70b6: $18 $05

jr_003_70b8:
	call AddScriptByteOrWordOntoNextScriptOffset                               ; $70b8: $cd $be $5b
	jr jr_003_709d                                   ; $70bb: $18 $e0

jr_003_70bd:
	call Copy4BytesFromScriptStackToWordAfter                               ; $70bd: $cd $e8 $52
	dw $bdb0
	ret                                              ; $70c2: $c9


Call_003_70c3:
	push de                                          ; $70c3: $d5
	push hl                                          ; $70c4: $e5
	call wSwapDEandHL                                       ; $70c5: $cd $d4 $ce
	ld hl, $bdc1                                     ; $70c8: $21 $c1 $bd
	ld a, [de]                                       ; $70cb: $1a
	inc [hl]                                         ; $70cc: $34
	ld l, a                                          ; $70cd: $6f
	ld h, $00                                        ; $70ce: $26 $00
	add hl, hl                                       ; $70d0: $29
	ld de, $bc60                                     ; $70d1: $11 $60 $bc
	add hl, de                                       ; $70d4: $19
	call wSwapDEandHL                                       ; $70d5: $cd $d4 $ce
	pop hl                                           ; $70d8: $e1
	ld [hl], e                                       ; $70d9: $73
	inc hl                                           ; $70da: $23
	ld [hl], d                                       ; $70db: $72
	pop de                                           ; $70dc: $d1
	ret                                              ; $70dd: $c9


Call_003_70de:
	push hl                                          ; $70de: $e5
	ld hl, $bdc1                                     ; $70df: $21 $c1 $bd
	dec [hl]                                         ; $70e2: $35
	pop hl                                           ; $70e3: $e1
	ret                                              ; $70e4: $c9


Call_003_70e5:
	call Push2BytesInWordAfterOntoScriptStack                               ; $70e5: $cd $6a $52
	dw $bde6
	ld a, [$c163]                                    ; $70ea: $fa $63 $c1
	ld [$bde4], a                                    ; $70ed: $ea $e4 $bd
	xor a                                            ; $70f0: $af
	ld [$c163], a                                    ; $70f1: $ea $63 $c1
	call Call_003_72ef                               ; $70f4: $cd $ef $72
	ld a, [$bdda]                                    ; $70f7: $fa $da $bd
	and a                                            ; $70fa: $a7
	call z, Call_003_718c                            ; $70fb: $cc $8c $71
	ld a, [$bde5]                                    ; $70fe: $fa $e5 $bd
	ld hl, $bdaa                                     ; $7101: $21 $aa $bd
	ld [hl], a                                       ; $7104: $77
	call Call_003_71bf                               ; $7105: $cd $bf $71
	push hl                                          ; $7108: $e5
	push bc                                          ; $7109: $c5
	ld a, [$d818]                                    ; $710a: $fa $18 $d8
	and a                                            ; $710d: $a7
	ld c, $03                                        ; $710e: $0e $03
	jr nz, jr_003_7116                               ; $7110: $20 $04

	ld a, [$bdc0]                                    ; $7112: $fa $c0 $bd
	ld c, a                                          ; $7115: $4f

jr_003_7116:
	dec c                                            ; $7116: $0d
	push af                                          ; $7117: $f5
	push bc                                          ; $7118: $c5
	call Call_003_71aa                               ; $7119: $cd $aa $71
	call Call_003_4a89                               ; $711c: $cd $89 $4a
	pop bc                                           ; $711f: $c1
	pop af                                           ; $7120: $f1
	jr nz, jr_003_7116                               ; $7121: $20 $f3

	pop bc                                           ; $7123: $c1
	pop hl                                           ; $7124: $e1
	call Call_003_71cb                               ; $7125: $cd $cb $71
	ld a, [$bdc0]                                    ; $7128: $fa $c0 $bd
	ld b, a                                          ; $712b: $47
	dec b                                            ; $712c: $05

jr_003_712d:
	push hl                                          ; $712d: $e5
	push bc                                          ; $712e: $c5
	push de                                          ; $712f: $d5
	call Call_000_1c71                                       ; $7130: $cd $71 $1c
	pop de                                           ; $7133: $d1
	pop bc                                           ; $7134: $c1
	pop hl                                           ; $7135: $e1
	ld a, [wButtonsPressed]                                    ; $7136: $fa $25 $c1
	ld c, a                                          ; $7139: $4f
	ld hl, $bdaa                                     ; $713a: $21 $aa $bd
	ld a, [hl]                                       ; $713d: $7e
	bit 2, c                                         ; $713e: $cb $51
	call nz, Call_003_7168                           ; $7140: $c4 $68 $71
	bit 3, c                                         ; $7143: $cb $59
	call nz, Call_003_717e                           ; $7145: $c4 $7e $71
	bit 4, c                                         ; $7148: $cb $61
	jr z, jr_003_712d                                ; $714a: $28 $e1

	call Call_003_720c                               ; $714c: $cd $0c $72
	ld de, $0003                                     ; $714f: $11 $03 $00
	call Call_003_729f                               ; $7152: $cd $9f $72
	call Call_003_4c22                               ; $7155: $cd $22 $4c
	xor a                                            ; $7158: $af
	ld [$bde5], a                                    ; $7159: $ea $e5 $bd
	ld a, [$bde4]                                    ; $715c: $fa $e4 $bd
	ld [$c163], a                                    ; $715f: $ea $63 $c1
	call Copy2BytesFromScriptStackToWordAfter                               ; $7162: $cd $d6 $52
	dw $bde6
	ret                                              ; $7167: $c9


Call_003_7168:
	and a                                            ; $7168: $a7
	ret z                                            ; $7169: $c8

	push af                                          ; $716a: $f5
	push bc                                          ; $716b: $c5
	push hl                                          ; $716c: $e5
	call Call_003_7200                               ; $716d: $cd $00 $72
	call Call_003_7225                               ; $7170: $cd $25 $72
	dec [hl]                                         ; $7173: $35

jr_003_7174:
	call Call_003_71bf                               ; $7174: $cd $bf $71
	call Call_003_71cb                               ; $7177: $cd $cb $71
	pop hl                                           ; $717a: $e1
	pop bc                                           ; $717b: $c1
	pop af                                           ; $717c: $f1
	ret                                              ; $717d: $c9


Call_003_717e:
	cp b                                             ; $717e: $b8
	ret nc                                           ; $717f: $d0

	push af                                          ; $7180: $f5
	push bc                                          ; $7181: $c5
	push hl                                          ; $7182: $e5
	call Call_003_7200                               ; $7183: $cd $00 $72
	call Call_003_7225                               ; $7186: $cd $25 $72
	inc [hl]                                         ; $7189: $34
	jr jr_003_7174                                   ; $718a: $18 $e8

Call_003_718c:
	call Call_003_4c3d                               ; $718c: $cd $3d $4c
	xor a                                            ; $718f: $af
	ld bc, $4228                                     ; $7190: $01 $28 $42
	call Call_003_71b5                               ; $7193: $cd $b5 $71
	call Call_003_72cd                               ; $7196: $cd $cd $72
	ld c, $00                                        ; $7199: $0e $00

jr_003_719b:
	ld a, [$bdc0]                                    ; $719b: $fa $c0 $bd
	ld b, a                                          ; $719e: $47
	ld a, c                                          ; $719f: $79
	cp b                                             ; $71a0: $b8
	ret nc                                           ; $71a1: $d0

	push bc                                          ; $71a2: $c5
	call Call_003_7201                               ; $71a3: $cd $01 $72
	pop bc                                           ; $71a6: $c1
	inc c                                            ; $71a7: $0c
	jr jr_003_719b                                   ; $71a8: $18 $f1

Call_003_71aa:
	ld a, [$d80b]                                    ; $71aa: $fa $0b $d8
	ld h, a                                          ; $71ad: $67
	ld a, $20                                        ; $71ae: $3e $20
	add c                                            ; $71b0: $81
	ld l, a                                          ; $71b1: $6f
	jp Func_1ceb                                         ; $71b2: $c3 $eb $1c


Call_003_71b5:
	xor a                                            ; $71b5: $af
	call $191b                                       ; $71b6: $cd $1b $19

jr_003_71b9:
	call Call_000_1c71                                       ; $71b9: $cd $71 $1c
	jr z, jr_003_71b9                                ; $71bc: $28 $fb

	ret                                              ; $71be: $c9


Call_003_71bf:
	ld c, [hl]                                       ; $71bf: $4e
	push hl                                          ; $71c0: $e5
	push bc                                          ; $71c1: $c5
	ld de, $0001                                     ; $71c2: $11 $01 $00
	call Call_003_725e                               ; $71c5: $cd $5e $72
	pop bc                                           ; $71c8: $c1
	pop hl                                           ; $71c9: $e1
	ret                                              ; $71ca: $c9


Call_003_71cb:
	push bc                                          ; $71cb: $c5
	push hl                                          ; $71cc: $e5
	push bc                                          ; $71cd: $c5
	call Call_003_71aa                               ; $71ce: $cd $aa $71
	pop bc                                           ; $71d1: $c1
	call Call_003_724f                               ; $71d2: $cd $4f $72
	push hl                                          ; $71d5: $e5
	inc hl                                           ; $71d6: $23
	ld a, $01                                        ; $71d7: $3e $01
	res 7, h                                         ; $71d9: $cb $bc
	call EnqueueDataCopyType4FullHeader                                       ; $71db: $cd $83 $16
	ld [hl], $00                                     ; $71de: $36 $00
	pop hl                                           ; $71e0: $e1
	ld a, $02                                        ; $71e1: $3e $02
	call EnqueueDataCopyType4FullHeader                                       ; $71e3: $cd $83 $16
	ld a, [wCharTilesDataDest]                                    ; $71e6: $fa $fc $d7
	swap a                                           ; $71e9: $cb $37
	and $0f                                          ; $71eb: $e6 $0f
	ld c, a                                          ; $71ed: $4f
	ld a, [wCharTilesDataDest+1]                                    ; $71ee: $fa $fd $d7
	swap a                                           ; $71f1: $cb $37
	and $f0                                          ; $71f3: $e6 $f0
	or c                                             ; $71f5: $b1
	ld [hl+], a                                      ; $71f6: $22
	inc a                                            ; $71f7: $3c
	ld [hl], a                                       ; $71f8: $77
	rst FarCall                                          ; $71f9: $f7
	AddrBank SafelyExecuteDataCopies
	pop hl                                           ; $71fd: $e1
	pop bc                                           ; $71fe: $c1
	ret                                              ; $71ff: $c9


Call_003_7200:
	ld c, [hl]                                       ; $7200: $4e

Call_003_7201:
	push hl                                          ; $7201: $e5
	push bc                                          ; $7202: $c5
	ld de, $0003                                     ; $7203: $11 $03 $00
	call Call_003_725e                               ; $7206: $cd $5e $72
	pop bc                                           ; $7209: $c1
	pop hl                                           ; $720a: $e1
	ret                                              ; $720b: $c9


Call_003_720c:
	push hl                                          ; $720c: $e5
	push bc                                          ; $720d: $c5
	call Call_003_7200                               ; $720e: $cd $00 $72
	call Call_003_7224                               ; $7211: $cd $24 $72
	xor a                                            ; $7214: $af
	ld bc, $4217                                     ; $7215: $01 $17 $42
	call Call_003_71b5                               ; $7218: $cd $b5 $71
	ld de, $0003                                     ; $721b: $11 $03 $00
	call Call_003_729f                               ; $721e: $cd $9f $72
	pop bc                                           ; $7221: $c1
	pop hl                                           ; $7222: $e1
	ret                                              ; $7223: $c9


Call_003_7224:
	ld c, [hl]                                       ; $7224: $4e

Call_003_7225:
	push bc                                          ; $7225: $c5
	push hl                                          ; $7226: $e5
	push bc                                          ; $7227: $c5
	call Call_003_71aa                               ; $7228: $cd $aa $71
	pop bc                                           ; $722b: $c1
	call Call_003_724f                               ; $722c: $cd $4f $72
	push hl                                          ; $722f: $e5
	inc hl                                           ; $7230: $23
	ld a, $01                                        ; $7231: $3e $01
	res 7, h                                         ; $7233: $cb $bc
	call EnqueueDataCopyType4FullHeader                                       ; $7235: $cd $83 $16
	ld [hl], $01                                     ; $7238: $36 $01
	pop hl                                           ; $723a: $e1
	ld a, $02                                        ; $723b: $3e $02
	call EnqueueDataCopyType4FullHeader                                       ; $723d: $cd $83 $16
	ld a, [$d7fb]                                    ; $7240: $fa $fb $d7
	add $a0                                          ; $7243: $c6 $a0
	ld [hl+], a                                      ; $7245: $22
	ld [hl], $9d                                     ; $7246: $36 $9d
	rst FarCall                                          ; $7248: $f7
	AddrBank SafelyExecuteDataCopies
	pop hl                                           ; $724c: $e1
	pop bc                                           ; $724d: $c1
	ret                                              ; $724e: $c9


Call_003_724f:
	ld a, c                                          ; $724f: $79
	ld hl, $9f12                                     ; $7250: $21 $12 $9f
	and a                                            ; $7253: $a7
	ret z                                            ; $7254: $c8

	ld hl, $9f52                                     ; $7255: $21 $52 $9f
	dec a                                            ; $7258: $3d
	ret z                                            ; $7259: $c8

	ld hl, $9f92                                     ; $725a: $21 $92 $9f
	ret                                              ; $725d: $c9


Call_003_725e:
	call Call_003_729f                               ; $725e: $cd $9f $72
	push hl                                          ; $7261: $e5
	push bc                                          ; $7262: $c5
	push de                                          ; $7263: $d5
	ld a, c                                          ; $7264: $79
	call Call_003_7322                               ; $7265: $cd $22 $73
	ld c, a                                          ; $7268: $4f
	ld b, $40                                        ; $7269: $06 $40
	call BCequBtimesC                                       ; $726b: $cd $5f $12
	ld hl, $bcd0                                     ; $726e: $21 $d0 $bc
	add hl, bc                                       ; $7271: $09
	ld a, l                                          ; $7272: $7d
	ld [$bdc3], a                                    ; $7273: $ea $c3 $bd
	ld a, h                                          ; $7276: $7c
	ld [$bdc4], a                                    ; $7277: $ea $c4 $bd
	pop de                                           ; $727a: $d1
	pop bc                                           ; $727b: $c1
	push bc                                          ; $727c: $c5
	ld a, c                                          ; $727d: $79
	add $20                                          ; $727e: $c6 $20
	ld l, a                                          ; $7280: $6f
	ld h, $00                                        ; $7281: $26 $00
	call Func_1ceb                                       ; $7283: $cd $eb $1c
	ld b, $ff                                        ; $7286: $06 $ff
	ld a, [$bdc3]                                    ; $7288: $fa $c3 $bd
	ld l, a                                          ; $728b: $6f
	ld a, [$bdc4]                                    ; $728c: $fa $c4 $bd
	ld h, a                                          ; $728f: $67
	call $1c27                                       ; $7290: $cd $27 $1c
	pop bc                                           ; $7293: $c1
	push bc                                          ; $7294: $c5
	ld a, $0c                                        ; $7295: $3e $0c
	add c                                            ; $7297: $81
	rst FarCall                                          ; $7298: $f7
	AddrBank Jump_003_41b5
	pop bc                                           ; $729c: $c1
	pop hl                                           ; $729d: $e1
	ret                                              ; $729e: $c9


Call_003_729f:
	ld a, d                                          ; $729f: $7a
	ld [$d7fa], a                                    ; $72a0: $ea $fa $d7
	ld a, e                                          ; $72a3: $7b
	ld [$d7f9], a                                    ; $72a4: $ea $f9 $d7
	ld [$d7fb], a                                    ; $72a7: $ea $fb $d7
	ld [$d819], a                                    ; $72aa: $ea $19 $d8
	ld [$d81a], a                                    ; $72ad: $ea $1a $d8
	ld [$d81b], a                                    ; $72b0: $ea $1b $d8
	ret                                              ; $72b3: $c9


Func_03_72b4::
	push af                                          ; $72b4: $f5
	push bc                                          ; $72b5: $c5
	push de                                          ; $72b6: $d5
	push hl                                          ; $72b7: $e5
	xor a                                            ; $72b8: $af
	ld [$bde6], a                                    ; $72b9: $ea $e6 $bd
	ld a, [$d818]                                    ; $72bc: $fa $18 $d8
	and a                                            ; $72bf: $a7
	call nz, Call_003_72c8                           ; $72c0: $c4 $c8 $72
	pop hl                                           ; $72c3: $e1
	pop de                                           ; $72c4: $d1
	pop bc                                           ; $72c5: $c1
	pop af                                           ; $72c6: $f1
	ret                                              ; $72c7: $c9


Call_003_72c8::
	ld a, [$bde6]                                    ; $72c8: $fa $e6 $bd
	jr :+                                   ; $72cb: $18 $06

Call_003_72cd:
	call Call_003_51c0                               ; $72cd: $cd $c0 $51
	ld a, [$bdc0]                                    ; $72d0: $fa $c0 $bd

:	cp $03                                           ; $72d3: $fe $03
	jr c, .br_72e3                                ; $72d5: $38 $0c

	ld [$bde6], a                                    ; $72d7: $ea $e6 $bd
	ld a, [$d818]                                    ; $72da: $fa $18 $d8
	and a                                            ; $72dd: $a7
	ret nz                                           ; $72de: $c0

	ld a, $08                                        ; $72df: $3e $08
	jr .cont_72ea                                   ; $72e1: $18 $07

.br_72e3:
	ld a, [$d818]                                    ; $72e3: $fa $18 $d8
	and a                                            ; $72e6: $a7
	ret z                                            ; $72e7: $c8

	ld a, $09                                        ; $72e8: $3e $09

.cont_72ea:
	rst FarCall                                          ; $72ea: $f7
	AddrBank Jump_003_41b5
	ret                                              ; $72ee: $c9


Call_003_72ef:
	xor a                                            ; $72ef: $af
	ld [$bde3], a                                    ; $72f0: $ea $e3 $bd
	ld a, [$bde2]                                    ; $72f3: $fa $e2 $bd
	and a                                            ; $72f6: $a7
	ret z                                            ; $72f7: $c8

	ld a, [$bdc0]                                    ; $72f8: $fa $c0 $bd
	and a                                            ; $72fb: $a7
	ret z                                            ; $72fc: $c8

	ld [$bde3], a                                    ; $72fd: $ea $e3 $bd
	cp $03                                           ; $7300: $fe $03
	jr c, jr_003_7306                                ; $7302: $38 $02

	ld a, $06                                        ; $7304: $3e $06

jr_003_7306:
	call Call_000_12fc                                       ; $7306: $cd $fc $12
	ld [$bde3], a                                    ; $7309: $ea $e3 $bd
	ret                                              ; $730c: $c9


	nop                                              ; $730d: $00
	ld bc, $0102                                     ; $730e: $01 $02 $01
	nop                                              ; $7311: $00
	ld [bc], a                                       ; $7312: $02
	ld [bc], a                                       ; $7313: $02
	ld bc, $0000                                     ; $7314: $01 $00 $00
	ld [bc], a                                       ; $7317: $02
	ld bc, $0201                                     ; $7318: $01 $01 $02
	nop                                              ; $731b: $00
	ld [bc], a                                       ; $731c: $02
	nop                                              ; $731d: $00
	ld bc, $aafa                                     ; $731e: $01 $fa $aa
	cp l                                             ; $7321: $bd

Call_003_7322:
	push de                                          ; $7322: $d5
	push hl                                          ; $7323: $e5
	push af                                          ; $7324: $f5
	ld a, [$bde3]                                    ; $7325: $fa $e3 $bd
	ld de, $730d                                     ; $7328: $11 $0d $73
	call HLequDEplus3A                               ; $732b: $cd $15 $52
	pop af                                           ; $732e: $f1
	ld e, a                                          ; $732f: $5f
	ld d, $00                                        ; $7330: $16 $00
	add hl, de                                       ; $7332: $19
	ld a, [hl]                                       ; $7333: $7e
	pop hl                                           ; $7334: $e1
	pop de                                           ; $7335: $d1
	ret                                              ; $7336: $c9


SafePerformScriptTask:
; Preserve some regs
	call Push3BytesInWordAfterOntoScriptStack                               ; $7337: $cd $82 $52
	dw sTempLHBFromScriptRelatedReturns
	call Push2BytesInWordAfterOntoScriptStack                               ; $733c: $cd $6a $52
	dw wTaskParam0_word0
	call Push2BytesInWordAfterOntoScriptStack                               ; $7341: $cd $6a $52
	dw wTaskParam1_word0
	call Push2BytesInWordAfterOntoScriptStack                               ; $7346: $cd $6a $52
	dw wTaskParam2_word0
	call Push2BytesInWordAfterOntoScriptStack                               ; $734b: $cd $6a $52
	dw wTaskParam3_word0
	call Push2BytesInWordAfterOntoScriptStack                               ; $7350: $cd $6a $52
	dw wTaskParam4_word0
	call Push2BytesInWordAfterOntoScriptStack                               ; $7355: $cd $6a $52
	dw wTaskParam5_word0
	call Push2BytesInWordAfterOntoScriptStack                                   ; $735a: $cd $6a $52
	dw $bd9d
	call Push2BytesInWordAfterOntoScriptStack                               ; $735f: $cd $6a $52
	dw sTaskCtrlByteHighNybbleTimes2

	rst FarCall                                          ; $7364: $f7
	AddrBank PerformScriptTask

	call Copy2BytesFromScriptStackToWordAfter                               ; $7368: $cd $d6 $52
	dw sTaskCtrlByteHighNybbleTimes2
	call Copy2BytesFromScriptStackToWordAfter                               ; $736d: $cd $d6 $52
	dw $bd9d
	call Copy2BytesFromScriptStackToWordAfter                               ; $7372: $cd $d6 $52
	dw wTaskParam5_word0
	call Copy2BytesFromScriptStackToWordAfter                                          ; $7377: $cd $d6 $52
	dw wTaskParam4_word0
	call Copy2BytesFromScriptStackToWordAfter                               ; $737c: $cd $d6 $52
	dw wTaskParam3_word0
	call Copy2BytesFromScriptStackToWordAfter                               ; $7381: $cd $d6 $52
	dw wTaskParam2_word0
	call Copy2BytesFromScriptStackToWordAfter                               ; $7386: $cd $d6 $52
	dw wTaskParam1_word0
	call Copy2BytesFromScriptStackToWordAfter                               ; $738b: $cd $d6 $52
	dw wTaskParam0_word0
	call Copy3BytesFromScriptStackToWordAfter                               ; $7390: $cd $df $52
	dw sTempLHBFromScriptRelatedReturns
	ret                                              ; $7395: $c9


;
	call $087a                                       ; $7396: $cd $7a $08
	ld hl, $73ca                                     ; $7399: $21 $ca $73
	ld de, $a100                                     ; $739c: $11 $00 $a1

jr_003_739f:
	ld a, [de]                                       ; $739f: $1a
	inc de                                           ; $73a0: $13
	cp [hl]                                          ; $73a1: $be
	jr nz, jr_003_73a9                               ; $73a2: $20 $05

	ld a, [hl+]                                      ; $73a4: $2a
	and a                                            ; $73a5: $a7
	jr nz, jr_003_739f                               ; $73a6: $20 $f7

	ret                                              ; $73a8: $c9


jr_003_73a9:
	ld hl, $73ca                                     ; $73a9: $21 $ca $73
	ld de, $a100                                     ; $73ac: $11 $00 $a1

jr_003_73af:
	ld a, [hl+]                                      ; $73af: $2a
	ld [de], a                                       ; $73b0: $12
	inc de                                           ; $73b1: $13
	and a                                            ; $73b2: $a7
	jr nz, jr_003_73af                               ; $73b3: $20 $fa

	ld bc, $00f0                                     ; $73b5: $01 $f0 $00
	ld hl, $a110                                     ; $73b8: $21 $10 $a1
	call wMemSetBC                                       ; $73bb: $cd $cc $cf
	ld bc, $0380                                     ; $73be: $01 $80 $03
	ld hl, sUnmappedPlayer1stName                                     ; $73c1: $21 $00 $a2
	call wMemSetBC                                       ; $73c4: $cd $cc $cf
	or $ff                                           ; $73c7: $f6 $ff
	ret                                              ; $73c9: $c9


	ld [hl], h                                       ; $73ca: $74
	ld l, a                                          ; $73cb: $6f
	ld l, e                                          ; $73cc: $6b
	ld l, c                                          ; $73cd: $69
	ld l, l                                          ; $73ce: $6d
	ld h, l                                          ; $73cf: $65
	ld l, l                                          ; $73d0: $6d
	ld l, a                                          ; $73d1: $6f
	db $20, $65

	ld a, b                                          ; $73d4: $78
	ld [hl], b                                       ; $73d5: $70
	db $20, $72

	ld h, c                                          ; $73d8: $61
	ld l, l                                          ; $73d9: $6d
	nop                                              ; $73da: $00
