; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $035", ROMX[$4000], BANK[$35]

	or [hl]                                          ; $4000: $b6

jr_035_4001:
	sub [hl]                                         ; $4001: $96
	or c                                             ; $4002: $b1
	nop                                              ; $4003: $00

jr_035_4004:
	inc d                                            ; $4004: $14

jr_035_4005:
	rlca                                             ; $4005: $07
	ld [hl+], a                                      ; $4006: $22
	inc c                                            ; $4007: $0c
	dec de                                           ; $4008: $1b
	inc c                                            ; $4009: $0c
	inc hl                                           ; $400a: $23

jr_035_400b:
	jr jr_035_400b                                   ; $400b: $18 $fe

	or l                                             ; $400d: $b5
	and d                                            ; $400e: $a2
	ld [bc], a                                       ; $400f: $02
	inc d                                            ; $4010: $14
	dec b                                            ; $4011: $05
	ei                                               ; $4012: $fb
	db $fd                                           ; $4013: $fd
	or l                                             ; $4014: $b5
	ld b, b                                          ; $4015: $40
	ei                                               ; $4016: $fb
	inc b                                            ; $4017: $04
	or l                                             ; $4018: $b5
	and d                                            ; $4019: $a2
	ld [bc], a                                       ; $401a: $02
	inc d                                            ; $401b: $14
	rlca                                             ; $401c: $07
	jp z, $fdfb                                      ; $401d: $ca $fb $fd

	or l                                             ; $4020: $b5
	ld b, b                                          ; $4021: $40
	ei                                               ; $4022: $fb
	inc b                                            ; $4023: $04

jr_035_4024:
	or l                                             ; $4024: $b5
	jp nc, $3c03                                     ; $4025: $d2 $03 $3c

	rlca                                             ; $4028: $07
	ld a, [hl]                                       ; $4029: $7e
	dec l                                            ; $402a: $2d
	ld e, $a0                                        ; $402b: $1e $a0
	nop                                              ; $402d: $00
	jr nc, jr_035_4057                               ; $402e: $30 $27

jr_035_4030:
	jr nc, jr_035_4005                               ; $4030: $30 $d3

jr_035_4032:
	ld h, $60                                        ; $4032: $26 $60

jr_035_4034:
	jp nc, $5425                                     ; $4034: $d2 $25 $54

	daa                                              ; $4037: $27
	inc h                                            ; $4038: $24
	or l                                             ; $4039: $b5
	sub e                                            ; $403a: $93
	ld [bc], a                                       ; $403b: $02
	inc d                                            ; $403c: $14
	rlca                                             ; $403d: $07
	ld a, [hl]                                       ; $403e: $7e
	nop                                              ; $403f: $00
	dec hl                                           ; $4040: $2b
	inc c                                            ; $4041: $0c
	inc l                                            ; $4042: $2c
	jr jr_035_4073                                   ; $4043: $18 $2e

	jr jr_035_4004                                   ; $4045: $18 $bd

	ld [bc], a                                       ; $4047: $02
	daa                                              ; $4048: $27
	inc c                                            ; $4049: $0c
	jr nc, jr_035_4001                               ; $404a: $30 $b5

	ldh [c], a                                       ; $404c: $e2
	inc bc                                           ; $404d: $03

jr_035_404e:
	inc a                                            ; $404e: $3c
	rlca                                             ; $404f: $07
	ld a, [hl]                                       ; $4050: $7e
	dec l                                            ; $4051: $2d
	add hl, de                                       ; $4052: $19
	and b                                            ; $4053: $a0
	inc hl                                           ; $4054: $23
	jr nc, jr_035_4024                               ; $4055: $30 $cd

jr_035_4057:
	db $d3                                           ; $4057: $d3
	ld h, $30                                        ; $4058: $26 $30
	call z, $29d2                                    ; $405a: $cc $d2 $29
	jr nc, jr_035_4032                               ; $405d: $30 $d3

	ld a, [hl+]                                      ; $405f: $2a
	jr nc, jr_035_4034                               ; $4060: $30 $d2

	inc l                                            ; $4062: $2c
	jr nc, jr_035_4030                               ; $4063: $30 $cb

	db $d3                                           ; $4065: $d3
	ld l, $30                                        ; $4066: $2e $30
	jp nc, $02bd                                     ; $4068: $d2 $bd $02

	daa                                              ; $406b: $27
	jr nc, jr_035_409e                               ; $406c: $30 $30

	adc $d2                                          ; $406e: $ce $d2
	sub e                                            ; $4070: $93
	ld a, [hl]                                       ; $4071: $7e

jr_035_4072:
	dec l                                            ; $4072: $2d

jr_035_4073:
	ld e, $a0                                        ; $4073: $1e $a0
	sub [hl]                                         ; $4075: $96
	inc a                                            ; $4076: $3c
	rlca                                             ; $4077: $07
	daa                                              ; $4078: $27
	jr nc, jr_035_404e                               ; $4079: $30 $d3

	ld h, $60                                        ; $407b: $26 $60
	jp nc, $5425                                     ; $407d: $d2 $25 $54

jr_035_4080:
	db $d3                                           ; $4080: $d3
	daa                                              ; $4081: $27
	inc a                                            ; $4082: $3c
	jp nc, $3022                                     ; $4083: $d2 $22 $30

	ret z                                            ; $4086: $c8

	pop de                                           ; $4087: $d1
	sub d                                            ; $4088: $92
	ld a, [hl]                                       ; $4089: $7e
	nop                                              ; $408a: $00
	cp [hl]                                          ; $408b: $be
	inc h                                            ; $408c: $24
	daa                                              ; $408d: $27
	ld a, [hl+]                                      ; $408e: $2a
	daa                                              ; $408f: $27
	ld a, [hl+]                                      ; $4090: $2a
	cp [hl]                                          ; $4091: $be
	daa                                              ; $4092: $27
	jr jr_035_40bc                                   ; $4093: $18 $27

	jr @+$29                                         ; $4095: $18 $27

	inc c                                            ; $4097: $0c
	ld h, $18                                        ; $4098: $26 $18
	jp nc, $2acf                                     ; $409a: $d2 $cf $2a

	inc c                                            ; $409d: $0c

jr_035_409e:
	add hl, hl                                       ; $409e: $29
	jr jr_035_4072                                   ; $409f: $18 $d1

	sra d                                            ; $40a1: $cb $2a
	inc c                                            ; $40a3: $0c
	add hl, hl                                       ; $40a4: $29
	jr @-$49                                         ; $40a5: $18 $b5

	or e                                             ; $40a7: $b3
	ld [bc], a                                       ; $40a8: $02
	ret z                                            ; $40a9: $c8

	ld [bc], a                                       ; $40aa: $02
	inc sp                                           ; $40ab: $33
	inc c                                            ; $40ac: $0c
	inc sp                                           ; $40ad: $33
	jr jr_035_40e2                                   ; $40ae: $18 $32

	inc c                                            ; $40b0: $0c
	ld [hl-], a                                      ; $40b1: $32
	inc h                                            ; $40b2: $24
	cp $ff                                           ; $40b3: $fe $ff
	cp [hl]                                          ; $40b5: $be
	inc c                                            ; $40b6: $0c
	ld a, [hl-]                                      ; $40b7: $3a
	inc sp                                           ; $40b8: $33
	ld [hl], $33                                     ; $40b9: $36 $33
	ld a, [hl-]                                      ; $40bb: $3a

jr_035_40bc:
	inc sp                                           ; $40bc: $33
	ld [hl], $be                                     ; $40bd: $36 $be
	ld a, [hl-]                                      ; $40bf: $3a
	jr jr_035_4080                                   ; $40c0: $18 $be

	inc c                                            ; $40c2: $0c
	inc sp                                           ; $40c3: $33
	ld [hl], $33                                     ; $40c4: $36 $33
	ld a, [hl-]                                      ; $40c6: $3a
	inc sp                                           ; $40c7: $33
	ld [hl], $38                                     ; $40c8: $36 $38
	cp [hl]                                          ; $40ca: $be
	db $fd                                           ; $40cb: $fd
	or [hl]                                          ; $40cc: $b6
	sub [hl]                                         ; $40cd: $96
	add c                                            ; $40ce: $81
	inc bc                                           ; $40cf: $03

jr_035_40d0:
	ld [hl-], a                                      ; $40d0: $32
	dec b                                            ; $40d1: $05
	daa                                              ; $40d2: $27
	inc c                                            ; $40d3: $0c
	ld [hl+], a                                      ; $40d4: $22
	inc c                                            ; $40d5: $0c
	jr z, jr_035_40de                                ; $40d6: $28 $06

	ld a, [hl+]                                      ; $40d8: $2a
	ld b, $2c                                        ; $40d9: $06 $2c
	inc c                                            ; $40db: $0c
	cp $b5                                           ; $40dc: $fe $b5

jr_035_40de:
	pop de                                           ; $40de: $d1
	nop                                              ; $40df: $00
	nop                                              ; $40e0: $00
	nop                                              ; $40e1: $00

jr_035_40e2:
	ld a, [hl]                                       ; $40e2: $7e
	nop                                              ; $40e3: $00
	dec de                                           ; $40e4: $1b
	inc c                                            ; $40e5: $0c
	db $fd                                           ; $40e6: $fd
	add h                                            ; $40e7: $84
	ld b, d                                          ; $40e8: $42
	call $181d                                       ; $40e9: $cd $1d $18
	ld a, [hl]                                       ; $40ec: $7e
	inc l                                            ; $40ed: $2c
	nop                                              ; $40ee: $00
	and b                                            ; $40ef: $a0
	jp z, $0c1d                                      ; $40f0: $ca $1d $0c

jr_035_40f3:
	rst JumpTable                                          ; $40f3: $c7
	dec e                                            ; $40f4: $1d
	inc c                                            ; $40f5: $0c
	call $007e                                       ; $40f6: $cd $7e $00
	ld e, $06                                        ; $40f9: $1e $06
	dec e                                            ; $40fb: $1d
	ld b, $cd                                        ; $40fc: $06 $cd
	dec de                                           ; $40fe: $1b
	inc a                                            ; $40ff: $3c
	jp z, $2c7e                                      ; $4100: $ca $7e $2c

	nop                                              ; $4103: $00
	and c                                            ; $4104: $a1
	dec de                                           ; $4105: $1b
	jr jr_035_40d0                                   ; $4106: $18 $c8

	dec de                                           ; $4108: $1b
	inc c                                            ; $4109: $0c
	adc $d3                                          ; $410a: $ce $d3
	ld a, [hl]                                       ; $410c: $7e
	nop                                              ; $410d: $00
	dec h                                            ; $410e: $25
	inc h                                            ; $410f: $24
	inc h                                            ; $4110: $24
	ld b, $23                                        ; $4111: $06 $23
	ld b, $96                                        ; $4113: $06 $96
	ld [hl-], a                                      ; $4115: $32
	ld [bc], a                                       ; $4116: $02
	ld [hl+], a                                      ; $4117: $22
	inc c                                            ; $4118: $0c
	or c                                             ; $4119: $b1
	pop hl                                           ; $411a: $e1
	nop                                              ; $411b: $00
	nop                                              ; $411c: $00
	db $fd                                           ; $411d: $fd
	add h                                            ; $411e: $84
	ld b, d                                          ; $411f: $42
	call $3c22                                       ; $4120: $cd $22 $3c
	jp z, $2c7e                                      ; $4123: $ca $7e $2c

	nop                                              ; $4126: $00
	and b                                            ; $4127: $a0
	ld [hl+], a                                      ; $4128: $22
	jr jr_035_40f3                                   ; $4129: $18 $c8

	ld [hl+], a                                      ; $412b: $22
	ld [de], a                                       ; $412c: $12
	add $22                                          ; $412d: $c6 $22
	ld b, $cd                                        ; $412f: $06 $cd
	ld a, [hl]                                       ; $4131: $7e
	nop                                              ; $4132: $00
	jr nz, jr_035_414d                               ; $4133: $20 $18

	ret z                                            ; $4135: $c8

	jr nz, jr_035_4144                               ; $4136: $20 $0c

	call $0f1d                                       ; $4138: $cd $1d $0f

jr_035_413b:
	ret z                                            ; $413b: $c8

	dec e                                            ; $413c: $1d
	add hl, bc                                       ; $413d: $09
	call $0c1e                                       ; $413e: $cd $1e $0c
	jr nz, jr_035_414f                               ; $4141: $20 $0c

	ret z                                            ; $4143: $c8

jr_035_4144:
	jr nz, jr_035_4152                               ; $4144: $20 $0c

	or l                                             ; $4146: $b5
	pop de                                           ; $4147: $d1
	nop                                              ; $4148: $00
	nop                                              ; $4149: $00
	nop                                              ; $414a: $00
	ld a, [hl]                                       ; $414b: $7e
	inc l                                            ; $414c: $2c

jr_035_414d:
	inc d                                            ; $414d: $14
	and b                                            ; $414e: $a0

jr_035_414f:
	dec de                                           ; $414f: $1b
	inc c                                            ; $4150: $0c
	db $fd                                           ; $4151: $fd

jr_035_4152:
	add h                                            ; $4152: $84
	ld b, d                                          ; $4153: $42
	call $181d                                       ; $4154: $cd $1d $18
	ld a, [hl]                                       ; $4157: $7e

jr_035_4158:
	inc l                                            ; $4158: $2c
	nop                                              ; $4159: $00
	and b                                            ; $415a: $a0
	jp z, $0c1d                                      ; $415b: $ca $1d $0c

jr_035_415e:
	rst JumpTable                                          ; $415e: $c7
	dec e                                            ; $415f: $1d
	inc c                                            ; $4160: $0c
	call $007e                                       ; $4161: $cd $7e $00
	ld e, $06                                        ; $4164: $1e $06
	dec e                                            ; $4166: $1d
	ld b, $cd                                        ; $4167: $06 $cd
	dec de                                           ; $4169: $1b
	inc a                                            ; $416a: $3c
	jp z, $2c7e                                      ; $416b: $ca $7e $2c

	nop                                              ; $416e: $00
	and c                                            ; $416f: $a1
	dec de                                           ; $4170: $1b
	jr jr_035_413b                                   ; $4171: $18 $c8

	dec de                                           ; $4173: $1b
	inc c                                            ; $4174: $0c
	adc $d3                                          ; $4175: $ce $d3
	ld a, [hl]                                       ; $4177: $7e
	nop                                              ; $4178: $00
	dec h                                            ; $4179: $25
	inc h                                            ; $417a: $24
	inc h                                            ; $417b: $24
	ld b, $23                                        ; $417c: $06 $23
	ld b, $96                                        ; $417e: $06 $96
	ld [hl-], a                                      ; $4180: $32
	ld [bc], a                                       ; $4181: $02
	ld [hl+], a                                      ; $4182: $22
	inc c                                            ; $4183: $0c
	or c                                             ; $4184: $b1
	pop hl                                           ; $4185: $e1
	nop                                              ; $4186: $00
	nop                                              ; $4187: $00
	db $fd                                           ; $4188: $fd
	add h                                            ; $4189: $84
	ld b, d                                          ; $418a: $42
	call $3c22                                       ; $418b: $cd $22 $3c
	jp z, $2c7e                                      ; $418e: $ca $7e $2c

	nop                                              ; $4191: $00

jr_035_4192:
	and b                                            ; $4192: $a0
	ld [hl+], a                                      ; $4193: $22
	jr jr_035_415e                                   ; $4194: $18 $c8

	ld [hl+], a                                      ; $4196: $22
	ld [de], a                                       ; $4197: $12
	add $22                                          ; $4198: $c6 $22
	ld b, $cd                                        ; $419a: $06 $cd
	ld a, [hl]                                       ; $419c: $7e
	nop                                              ; $419d: $00
	jr nz, jr_035_41b8                               ; $419e: $20 $18

	ret z                                            ; $41a0: $c8

	jr nz, jr_035_41af                               ; $41a1: $20 $0c

	call $0c23                                       ; $41a3: $cd $23 $0c
	ret z                                            ; $41a6: $c8

	inc hl                                           ; $41a7: $23
	inc c                                            ; $41a8: $0c
	call $1822                                       ; $41a9: $cd $22 $18
	ret z                                            ; $41ac: $c8

	ld [hl+], a                                      ; $41ad: $22
	inc c                                            ; $41ae: $0c

jr_035_41af:
	or l                                             ; $41af: $b5
	ld [hl], c                                       ; $41b0: $71
	ld [bc], a                                       ; $41b1: $02
	nop                                              ; $41b2: $00
	nop                                              ; $41b3: $00
	ld a, [hl]                                       ; $41b4: $7e
	inc l                                            ; $41b5: $2c
	jr z, jr_035_4158                                ; $41b6: $28 $a0

jr_035_41b8:
	ld l, $5a                                        ; $41b8: $2e $5a
	push bc                                          ; $41ba: $c5
	ld a, [hl]                                       ; $41bb: $7e
	inc l                                            ; $41bc: $2c
	nop                                              ; $41bd: $00
	and b                                            ; $41be: $a0
	ld l, $14                                        ; $41bf: $2e $14
	jp $0a2e                                         ; $41c1: $c3 $2e $0a


	or c                                             ; $41c4: $b1
	ld [hl], c                                       ; $41c5: $71
	ld [hl-], a                                      ; $41c6: $32
	dec b                                            ; $41c7: $05
	ld a, [hl]                                       ; $41c8: $7e
	nop                                              ; $41c9: $00
	cpl                                              ; $41ca: $2f
	dec c                                            ; $41cb: $0d
	push bc                                          ; $41cc: $c5
	cpl                                              ; $41cd: $2f
	dec bc                                           ; $41ce: $0b
	rst JumpTable                                          ; $41cf: $c7
	ld sp, $2e0c                                     ; $41d0: $31 $0c $2e
	ld de, $2ec5                                     ; $41d3: $11 $c5 $2e
	rlca                                             ; $41d6: $07
	rst JumpTable                                          ; $41d7: $c7
	ld a, [hl+]                                      ; $41d8: $2a
	ld b, $2e                                        ; $41d9: $06 $2e
	ld b, $96                                        ; $41db: $06 $96
	nop                                              ; $41dd: $00
	nop                                              ; $41de: $00
	inc l                                            ; $41df: $2c
	dec sp                                           ; $41e0: $3b
	push bc                                          ; $41e1: $c5
	ld a, [hl]                                       ; $41e2: $7e
	inc l                                            ; $41e3: $2c
	nop                                              ; $41e4: $00
	and b                                            ; $41e5: $a0
	inc l                                            ; $41e6: $2c
	rrca                                             ; $41e7: $0f
	jp $0a2c                                         ; $41e8: $c3 $2c $0a


	or c                                             ; $41eb: $b1
	ld [hl], c                                       ; $41ec: $71
	ld [hl-], a                                      ; $41ed: $32

jr_035_41ee:
	dec b                                            ; $41ee: $05
	ld a, [hl]                                       ; $41ef: $7e
	nop                                              ; $41f0: $00
	dec hl                                           ; $41f1: $2b
	jr jr_035_421f                                   ; $41f2: $18 $2b

	inc c                                            ; $41f4: $0c
	inc l                                            ; $41f5: $2c
	jr jr_035_4226                                   ; $41f6: $18 $2e

	jr jr_035_4221                                   ; $41f8: $18 $27

	jr jr_035_4192                                   ; $41fa: $18 $96

	nop                                              ; $41fc: $00
	nop                                              ; $41fd: $00
	ld l, $50                                        ; $41fe: $2e $50
	push bc                                          ; $4200: $c5
	ld a, [hl]                                       ; $4201: $7e
	inc l                                            ; $4202: $2c
	nop                                              ; $4203: $00
	and b                                            ; $4204: $a0
	ld l, $19                                        ; $4205: $2e $19
	jp $0f2e                                         ; $4207: $c3 $2e $0f


	rst JumpTable                                          ; $420a: $c7
	ld a, [hl]                                       ; $420b: $7e
	nop                                              ; $420c: $00
	inc l                                            ; $420d: $2c
	ld de, $2cc5                                     ; $420e: $11 $c5 $2c
	rlca                                             ; $4211: $07
	or c                                             ; $4212: $b1
	ld [hl], c                                       ; $4213: $71
	ld [hl-], a                                      ; $4214: $32
	dec b                                            ; $4215: $05
	cp [hl]                                          ; $4216: $be
	inc c                                            ; $4217: $0c
	cpl                                              ; $4218: $2f
	ld l, $2c                                        ; $4219: $2e $2c
	ld l, $be                                        ; $421b: $2e $be
	or c                                             ; $421d: $b1
	ld [hl], c                                       ; $421e: $71

jr_035_421f:
	nop                                              ; $421f: $00
	nop                                              ; $4220: $00

jr_035_4221:
	inc l                                            ; $4221: $2c
	ld [de], a                                       ; $4222: $12
	add $2c                                          ; $4223: $c6 $2c
	add hl, bc                                       ; $4225: $09

jr_035_4226:
	push bc                                          ; $4226: $c5
	inc l                                            ; $4227: $2c
	add hl, bc                                       ; $4228: $09
	rst JumpTable                                          ; $4229: $c7
	ld a, [hl+]                                      ; $422a: $2a
	inc a                                            ; $422b: $3c
	push bc                                          ; $422c: $c5
	ld a, [hl]                                       ; $422d: $7e
	inc l                                            ; $422e: $2c
	nop                                              ; $422f: $00
	and b                                            ; $4230: $a0
	ld a, [hl+]                                      ; $4231: $2a
	inc c                                            ; $4232: $0c
	jp $0c2a                                         ; $4233: $c3 $2a $0c


	rst JumpTable                                          ; $4236: $c7
	ld a, [hl]                                       ; $4237: $7e
	nop                                              ; $4238: $00
	sub [hl]                                         ; $4239: $96
	ld [hl-], a                                      ; $423a: $32
	dec b                                            ; $423b: $05
	cp [hl]                                          ; $423c: $be
	inc c                                            ; $423d: $0c
	add hl, hl                                       ; $423e: $29
	ld a, [hl+]                                      ; $423f: $2a
	inc l                                            ; $4240: $2c
	add hl, hl                                       ; $4241: $29
	ld a, [hl+]                                      ; $4242: $2a
	inc l                                            ; $4243: $2c
	cp [hl]                                          ; $4244: $be
	or l                                             ; $4245: $b5
	ld [hl], c                                       ; $4246: $71
	ld [bc], a                                       ; $4247: $02
	ld [hl-], a                                      ; $4248: $32
	dec b                                            ; $4249: $05
	ld a, [hl]                                       ; $424a: $7e
	inc l                                            ; $424b: $2c
	jr z, jr_035_41ee                                ; $424c: $28 $a0

	ld l, $78                                        ; $424e: $2e $78
	cpl                                              ; $4250: $2f
	jr jr_035_4284                                   ; $4251: $18 $31

	inc c                                            ; $4253: $0c
	ld l, $18                                        ; $4254: $2e $18
	ld a, [hl+]                                      ; $4256: $2a
	ld b, $2e                                        ; $4257: $06 $2e
	ld b, $2c                                        ; $4259: $06 $2c
	ld d, h                                          ; $425b: $54
	dec hl                                           ; $425c: $2b
	inc a                                            ; $425d: $3c
	daa                                              ; $425e: $27
	jr jr_035_428a                                   ; $425f: $18 $29

	jr jr_035_4221                                   ; $4261: $18 $be

	inc h                                            ; $4263: $24
	ld a, [hl+]                                      ; $4264: $2a
	cpl                                              ; $4265: $2f
	ld a, [hl+]                                      ; $4266: $2a
	cpl                                              ; $4267: $2f
	cp [hl]                                          ; $4268: $be
	ld a, [hl+]                                      ; $4269: $2a
	jr @+$2e                                         ; $426a: $18 $2c

	jr @+$2c                                         ; $426c: $18 $2a

	inc c                                            ; $426e: $0c
	add hl, hl                                       ; $426f: $29
	inc a                                            ; $4270: $3c
	cpl                                              ; $4271: $2f
	inc c                                            ; $4272: $0c
	ld l, $18                                        ; $4273: $2e $18
	or l                                             ; $4275: $b5
	or e                                             ; $4276: $b3
	ld [bc], a                                       ; $4277: $02
	ret z                                            ; $4278: $c8

	ld [bc], a                                       ; $4279: $02
	dec sp                                           ; $427a: $3b
	inc c                                            ; $427b: $0c
	dec sp                                           ; $427c: $3b
	jr jr_035_42b9                                   ; $427d: $18 $3a

	inc c                                            ; $427f: $0c
	ld a, [hl-]                                      ; $4280: $3a
	inc h                                            ; $4281: $24
	cp $ff                                           ; $4282: $fe $ff

jr_035_4284:
	ld d, $0c                                        ; $4284: $16 $0c
	ld [hl+], a                                      ; $4286: $22
	inc c                                            ; $4287: $0c
	jr nz, jr_035_4299                               ; $4288: $20 $0f

jr_035_428a:
	ret z                                            ; $428a: $c8

	pop de                                           ; $428b: $d1
	jr nz, @+$0b                                     ; $428c: $20 $09

	call $1ed1                                       ; $428e: $cd $d1 $1e
	rrca                                             ; $4291: $0f
	ret z                                            ; $4292: $c8

	pop de                                           ; $4293: $d1
	ld e, $09                                        ; $4294: $1e $09
	call $1dd1                                       ; $4296: $cd $d1 $1d

jr_035_4299:
	rrca                                             ; $4299: $0f
	ret z                                            ; $429a: $c8

	pop de                                           ; $429b: $d1
	dec e                                            ; $429c: $1d
	add hl, bc                                       ; $429d: $09
	call $d1d1                                       ; $429e: $cd $d1 $d1
	jr nz, jr_035_42b2                               ; $42a1: $20 $0f

	ret z                                            ; $42a3: $c8

	pop de                                           ; $42a4: $d1
	jr nz, @+$0b                                     ; $42a5: $20 $09

	call $1dd1                                       ; $42a7: $cd $d1 $1d
	rrca                                             ; $42aa: $0f
	ret z                                            ; $42ab: $c8

	pop de                                           ; $42ac: $d1
	dec e                                            ; $42ad: $1d
	add hl, bc                                       ; $42ae: $09
	call $19d1                                       ; $42af: $cd $d1 $19

jr_035_42b2:
	rrca                                             ; $42b2: $0f
	ret z                                            ; $42b3: $c8

	pop de                                           ; $42b4: $d1
	add hl, de                                       ; $42b5: $19
	add hl, bc                                       ; $42b6: $09
	db $fd                                           ; $42b7: $fd
	or [hl]                                          ; $42b8: $b6

jr_035_42b9:
	sub [hl]                                         ; $42b9: $96
	ld hl, $0425                                     ; $42ba: $21 $25 $04
	ld bc, $0c1b                                     ; $42bd: $01 $1b $0c
	ld d, $0c                                        ; $42c0: $16 $0c
	inc e                                            ; $42c2: $1c
	ld b, $1e                                        ; $42c3: $06 $1e
	ld b, $20                                        ; $42c5: $06 $20
	inc c                                            ; $42c7: $0c
	cp $96                                           ; $42c8: $fe $96
	nop                                              ; $42ca: $00
	nop                                              ; $42cb: $00
	ei                                               ; $42cc: $fb
	db $fd                                           ; $42cd: $fd
	ld e, e                                          ; $42ce: $5b
	ld b, e                                          ; $42cf: $43
	db $fd                                           ; $42d0: $fd
	adc h                                            ; $42d1: $8c
	ld b, e                                          ; $42d2: $43
	ei                                               ; $42d3: $fb
	ld [bc], a                                       ; $42d4: $02
	or l                                             ; $42d5: $b5
	ld hl, $0025                                     ; $42d6: $21 $25 $00
	nop                                              ; $42d9: $00
	ei                                               ; $42da: $fb
	db $fd                                           ; $42db: $fd
	ld e, e                                          ; $42dc: $5b
	ld b, e                                          ; $42dd: $43
	db $fd                                           ; $42de: $fd
	adc h                                            ; $42df: $8c
	ld b, e                                          ; $42e0: $43
	ei                                               ; $42e1: $fb
	ld [bc], a                                       ; $42e2: $02
	or l                                             ; $42e3: $b5
	ld hl, $0025                                     ; $42e4: $21 $25 $00
	nop                                              ; $42e7: $00
	ld [hl], h                                       ; $42e8: $74
	db $fd                                           ; $42e9: $fd
	ld e, e                                          ; $42ea: $5b
	ld b, e                                          ; $42eb: $43
	ld [hl], c                                       ; $42ec: $71
	db $fd                                           ; $42ed: $fd
	dec l                                            ; $42ee: $2d
	ld b, h                                          ; $42ef: $44
	ld [hl], b                                       ; $42f0: $70
	db $fd                                           ; $42f1: $fd
	ld e, e                                          ; $42f2: $5b
	ld b, e                                          ; $42f3: $43
	db $fd                                           ; $42f4: $fd
	ld h, [hl]                                       ; $42f5: $66
	ld b, h                                          ; $42f6: $44
	ld [hl], h                                       ; $42f7: $74
	db $fd                                           ; $42f8: $fd
	ld e, e                                          ; $42f9: $5b
	ld b, e                                          ; $42fa: $43
	ld [hl], c                                       ; $42fb: $71
	db $fd                                           ; $42fc: $fd
	dec l                                            ; $42fd: $2d
	ld b, h                                          ; $42fe: $44
	ld [hl], b                                       ; $42ff: $70
	db $fd                                           ; $4300: $fd
	ld e, e                                          ; $4301: $5b
	ld b, e                                          ; $4302: $43
	jp nz, $19d1                                     ; $4303: $c2 $d1 $19

	db $10                                           ; $4306: $10
	call nz, $19d1                                   ; $4307: $c4 $d1 $19
	ld [$d1c2], sp                                   ; $430a: $08 $c2 $d1
	add hl, de                                       ; $430d: $19
	ld [$d1c4], sp                                   ; $430e: $08 $c4 $d1
	add hl, de                                       ; $4311: $19
	inc b                                            ; $4312: $04
	jp nz, $25d1                                     ; $4313: $c2 $d1 $25

	ld b, $c4                                        ; $4316: $06 $c4
	pop de                                           ; $4318: $d1
	dec h                                            ; $4319: $25
	ld b, $c2                                        ; $431a: $06 $c2
	pop de                                           ; $431c: $d1
	jr jr_035_432f                                   ; $431d: $18 $10

	call nz, $18d1                                   ; $431f: $c4 $d1 $18
	ld [$d1c2], sp                                   ; $4322: $08 $c2 $d1
	inc h                                            ; $4325: $24
	ld b, $c4                                        ; $4326: $06 $c4
	pop de                                           ; $4328: $d1
	inc h                                            ; $4329: $24
	ld b, $fb                                        ; $432a: $06 $fb
	jp nz, $18d1                                     ; $432c: $c2 $d1 $18

jr_035_432f:
	ld [$d1c4], sp                                   ; $432f: $08 $c4 $d1
	jr @+$06                                         ; $4332: $18 $04

	ei                                               ; $4334: $fb
	ld [bc], a                                       ; $4335: $02
	or l                                             ; $4336: $b5
	ld hl, $0025                                     ; $4337: $21 $25 $00
	nop                                              ; $433a: $00
	ld [hl], h                                       ; $433b: $74
	db $fd                                           ; $433c: $fd
	ld e, e                                          ; $433d: $5b
	ld b, e                                          ; $433e: $43
	ld [hl], c                                       ; $433f: $71
	db $fd                                           ; $4340: $fd
	dec l                                            ; $4341: $2d
	ld b, h                                          ; $4342: $44
	ld [hl], b                                       ; $4343: $70
	db $fd                                           ; $4344: $fd
	ld e, e                                          ; $4345: $5b
	ld b, e                                          ; $4346: $43
	db $fd                                           ; $4347: $fd
	ld h, [hl]                                       ; $4348: $66
	ld b, h                                          ; $4349: $44
	ld [hl], a                                       ; $434a: $77
	db $fd                                           ; $434b: $fd
	ld e, e                                          ; $434c: $5b
	ld b, e                                          ; $434d: $43
	db $fd                                           ; $434e: $fd
	dec l                                            ; $434f: $2d
	ld b, h                                          ; $4350: $44
	ld [hl], l                                       ; $4351: $75
	db $fd                                           ; $4352: $fd
	ld e, e                                          ; $4353: $5b
	ld b, e                                          ; $4354: $43
	db $fd                                           ; $4355: $fd
	dec l                                            ; $4356: $2d
	ld b, h                                          ; $4357: $44
	ld [hl], b                                       ; $4358: $70
	cp $ff                                           ; $4359: $fe $ff
	jp nz, $1bd1                                     ; $435b: $c2 $d1 $1b

	ld [$d1c4], sp                                   ; $435e: $08 $c4 $d1
	dec de                                           ; $4361: $1b
	inc b                                            ; $4362: $04
	jp nz, $1bd1                                     ; $4363: $c2 $d1 $1b

	ld [$d1c4], sp                                   ; $4366: $08 $c4 $d1
	dec de                                           ; $4369: $1b
	inc b                                            ; $436a: $04
	jp nz, $27d1                                     ; $436b: $c2 $d1 $27

	ld b, $c4                                        ; $436e: $06 $c4
	pop de                                           ; $4370: $d1
	daa                                              ; $4371: $27
	ld b, $c2                                        ; $4372: $06 $c2
	pop de                                           ; $4374: $d1
	dec de                                           ; $4375: $1b
	db $10                                           ; $4376: $10
	call nz, $1bd1                                   ; $4377: $c4 $d1 $1b
	ld [$d1c2], sp                                   ; $437a: $08 $c2 $d1
	daa                                              ; $437d: $27
	ld b, $c4                                        ; $437e: $06 $c4
	pop de                                           ; $4380: $d1
	daa                                              ; $4381: $27
	ld b, $c2                                        ; $4382: $06 $c2
	pop de                                           ; $4384: $d1
	dec de                                           ; $4385: $1b
	ld [$d1c4], sp                                   ; $4386: $08 $c4 $d1
	dec de                                           ; $4389: $1b
	inc b                                            ; $438a: $04
	db $fd                                           ; $438b: $fd
	jp nz, $19d1                                     ; $438c: $c2 $d1 $19

	db $10                                           ; $438f: $10
	call nz, $19d1                                   ; $4390: $c4 $d1 $19
	ld [$d1c2], sp                                   ; $4393: $08 $c2 $d1
	add hl, de                                       ; $4396: $19
	ld [$d1c4], sp                                   ; $4397: $08 $c4 $d1
	add hl, de                                       ; $439a: $19
	inc b                                            ; $439b: $04
	jp nz, $25d1                                     ; $439c: $c2 $d1 $25

	ld b, $c4                                        ; $439f: $06 $c4
	pop de                                           ; $43a1: $d1
	dec h                                            ; $43a2: $25
	ld b, $c2                                        ; $43a3: $06 $c2
	pop de                                           ; $43a5: $d1
	add hl, de                                       ; $43a6: $19
	db $10                                           ; $43a7: $10
	call nz, $19d1                                   ; $43a8: $c4 $d1 $19
	ld [$d1c2], sp                                   ; $43ab: $08 $c2 $d1
	dec h                                            ; $43ae: $25
	ld b, $c4                                        ; $43af: $06 $c4
	pop de                                           ; $43b1: $d1
	dec h                                            ; $43b2: $25
	ld b, $c2                                        ; $43b3: $06 $c2
	pop de                                           ; $43b5: $d1
	add hl, de                                       ; $43b6: $19
	ld [$d1c4], sp                                   ; $43b7: $08 $c4 $d1
	add hl, de                                       ; $43ba: $19
	inc b                                            ; $43bb: $04
	jp nz, $18d1                                     ; $43bc: $c2 $d1 $18

	ld [$d1c4], sp                                   ; $43bf: $08 $c4 $d1
	jr @+$06                                         ; $43c2: $18 $04

	jp nz, $17d1                                     ; $43c4: $c2 $d1 $17

	ld [$d1c4], sp                                   ; $43c7: $08 $c4 $d1
	rla                                              ; $43ca: $17
	inc b                                            ; $43cb: $04
	jp nz, $17d1                                     ; $43cc: $c2 $d1 $17

	ld [$d1c4], sp                                   ; $43cf: $08 $c4 $d1
	rla                                              ; $43d2: $17
	inc b                                            ; $43d3: $04
	jp nz, $23d1                                     ; $43d4: $c2 $d1 $23

	ld b, $c4                                        ; $43d7: $06 $c4
	pop de                                           ; $43d9: $d1
	inc hl                                           ; $43da: $23
	ld b, $c2                                        ; $43db: $06 $c2
	pop de                                           ; $43dd: $d1
	rla                                              ; $43de: $17
	db $10                                           ; $43df: $10
	call nz, $17d1                                   ; $43e0: $c4 $d1 $17
	ld [$d1c2], sp                                   ; $43e3: $08 $c2 $d1
	inc hl                                           ; $43e6: $23
	ld b, $c4                                        ; $43e7: $06 $c4
	pop de                                           ; $43e9: $d1
	inc hl                                           ; $43ea: $23
	ld b, $c2                                        ; $43eb: $06 $c2
	pop de                                           ; $43ed: $d1
	rla                                              ; $43ee: $17
	ld [$d1c4], sp                                   ; $43ef: $08 $c4 $d1
	rla                                              ; $43f2: $17
	inc b                                            ; $43f3: $04
	jp nz, $14d1                                     ; $43f4: $c2 $d1 $14

	db $10                                           ; $43f7: $10
	call nz, $14d1                                   ; $43f8: $c4 $d1 $14
	ld [$d1c2], sp                                   ; $43fb: $08 $c2 $d1
	jr nz, jr_035_4406                               ; $43fe: $20 $06

	call nz, $20d1                                   ; $4400: $c4 $d1 $20
	ld b, $c2                                        ; $4403: $06 $c2
	pop de                                           ; $4405: $d1

jr_035_4406:
	inc d                                            ; $4406: $14
	ld [$d1c4], sp                                   ; $4407: $08 $c4 $d1
	inc d                                            ; $440a: $14
	inc b                                            ; $440b: $04
	jp nz, $16d1                                     ; $440c: $c2 $d1 $16

	db $10                                           ; $440f: $10
	call nz, $16d1                                   ; $4410: $c4 $d1 $16
	ld [$d1c2], sp                                   ; $4413: $08 $c2 $d1
	ld [hl+], a                                      ; $4416: $22
	ld b, $c4                                        ; $4417: $06 $c4
	pop de                                           ; $4419: $d1
	ld [hl+], a                                      ; $441a: $22
	ld b, $c2                                        ; $441b: $06 $c2
	pop de                                           ; $441d: $d1
	add hl, de                                       ; $441e: $19
	ld [$d1c4], sp                                   ; $441f: $08 $c4 $d1
	add hl, de                                       ; $4422: $19
	inc b                                            ; $4423: $04
	jp nz, $25d1                                     ; $4424: $c2 $d1 $25

	ld b, $c4                                        ; $4427: $06 $c4
	pop de                                           ; $4429: $d1
	dec h                                            ; $442a: $25
	ld b, $fd                                        ; $442b: $06 $fd
	jp nz, $1bd1                                     ; $442d: $c2 $d1 $1b

	db $10                                           ; $4430: $10
	call nz, $1bd1                                   ; $4431: $c4 $d1 $1b
	ld [$d1c2], sp                                   ; $4434: $08 $c2 $d1
	dec de                                           ; $4437: $1b
	ld [$d1c4], sp                                   ; $4438: $08 $c4 $d1
	dec de                                           ; $443b: $1b
	inc b                                            ; $443c: $04
	jp nz, $27d1                                     ; $443d: $c2 $d1 $27

	ld b, $c4                                        ; $4440: $06 $c4
	pop de                                           ; $4442: $d1
	daa                                              ; $4443: $27
	ld b, $c2                                        ; $4444: $06 $c2
	pop de                                           ; $4446: $d1
	dec de                                           ; $4447: $1b
	db $10                                           ; $4448: $10
	call nz, $1bd1                                   ; $4449: $c4 $d1 $1b
	ld [$d1c2], sp                                   ; $444c: $08 $c2 $d1
	daa                                              ; $444f: $27
	ld b, $c4                                        ; $4450: $06 $c4
	pop de                                           ; $4452: $d1
	daa                                              ; $4453: $27
	ld b, $c2                                        ; $4454: $06 $c2
	pop de                                           ; $4456: $d1
	dec de                                           ; $4457: $1b
	ld [$d1c4], sp                                   ; $4458: $08 $c4 $d1
	dec de                                           ; $445b: $1b
	inc b                                            ; $445c: $04
	jp nz, $1bd1                                     ; $445d: $c2 $d1 $1b

	ld [$d1c4], sp                                   ; $4460: $08 $c4 $d1
	dec de                                           ; $4463: $1b
	inc b                                            ; $4464: $04
	db $fd                                           ; $4465: $fd
	jp nz, $1bd1                                     ; $4466: $c2 $d1 $1b

	db $10                                           ; $4469: $10
	call nz, $1bd1                                   ; $446a: $c4 $d1 $1b
	ld [$d1c2], sp                                   ; $446d: $08 $c2 $d1
	daa                                              ; $4470: $27
	ld b, $c4                                        ; $4471: $06 $c4
	pop de                                           ; $4473: $d1
	daa                                              ; $4474: $27
	ld b, $c2                                        ; $4475: $06 $c2
	pop de                                           ; $4477: $d1
	dec e                                            ; $4478: $1d
	ld [$d1c4], sp                                   ; $4479: $08 $c4 $d1
	dec e                                            ; $447c: $1d
	inc b                                            ; $447d: $04
	jp nz, $29d1                                     ; $447e: $c2 $d1 $29

	ld b, $c4                                        ; $4481: $06 $c4
	pop de                                           ; $4483: $d1
	add hl, hl                                       ; $4484: $29
	ld b, $c2                                        ; $4485: $06 $c2
	pop de                                           ; $4487: $d1
	ld e, $08                                        ; $4488: $1e $08
	call nz, $1ed1                                   ; $448a: $c4 $d1 $1e
	inc b                                            ; $448d: $04
	jp nz, $2ad1                                     ; $448e: $c2 $d1 $2a

	ld b, $c4                                        ; $4491: $06 $c4
	pop de                                           ; $4493: $d1
	ld a, [hl+]                                      ; $4494: $2a
	ld b, $c2                                        ; $4495: $06 $c2
	pop de                                           ; $4497: $d1
	dec de                                           ; $4498: $1b
	ld [$d1c4], sp                                   ; $4499: $08 $c4 $d1
	dec de                                           ; $449c: $1b
	inc b                                            ; $449d: $04

jr_035_449e:
	jp nz, $27d1                                     ; $449e: $c2 $d1 $27

	ld b, $c4                                        ; $44a1: $06 $c4
	pop de                                           ; $44a3: $d1
	daa                                              ; $44a4: $27
	ld b, $fd                                        ; $44a5: $06 $fd
	ret nc                                           ; $44a7: $d0

	sub [hl]                                         ; $44a8: $96
	dec a                                            ; $44a9: $3d
	ld b, $37                                        ; $44aa: $06 $37
	ld b, $3b                                        ; $44ac: $06 $3b
	inc c                                            ; $44ae: $0c
	rrca                                             ; $44af: $0f

jr_035_44b0:
	jr jr_035_44b0                                   ; $44b0: $18 $fe

	ei                                               ; $44b2: $fb
	db $fd                                           ; $44b3: $fd
	ld [hl], l                                       ; $44b4: $75
	ld b, l                                          ; $44b5: $45
	ei                                               ; $44b6: $fb
	inc bc                                           ; $44b7: $03
	scf                                              ; $44b8: $37
	inc c                                            ; $44b9: $0c
	ld sp, $3d0c                                     ; $44ba: $31 $0c $3d
	inc c                                            ; $44bd: $0c
	scf                                              ; $44be: $37
	jr @-$40                                         ; $44bf: $18 $be

	inc c                                            ; $44c1: $0c
	ld sp, $373d                                     ; $44c2: $31 $3d $37
	inc sp                                           ; $44c5: $33
	ld sp, $be3d                                     ; $44c6: $31 $3d $be
	scf                                              ; $44c9: $37
	jr jr_035_4509                                   ; $44ca: $18 $3d

	inc c                                            ; $44cc: $0c
	ld b, d                                          ; $44cd: $42
	inc c                                            ; $44ce: $0c

jr_035_44cf:
	dec a                                            ; $44cf: $3d
	inc c                                            ; $44d0: $0c
	ei                                               ; $44d1: $fb
	db $fd                                           ; $44d2: $fd
	ld [hl], l                                       ; $44d3: $75
	ld b, l                                          ; $44d4: $45
	ei                                               ; $44d5: $fb
	inc bc                                           ; $44d6: $03
	scf                                              ; $44d7: $37
	inc c                                            ; $44d8: $0c
	ld sp, $3d0c                                     ; $44d9: $31 $0c $3d
	inc c                                            ; $44dc: $0c
	scf                                              ; $44dd: $37
	jr jr_035_449e                                   ; $44de: $18 $be

	inc c                                            ; $44e0: $0c
	ld sp, $373d                                     ; $44e1: $31 $3d $37
	ld [hl-], a                                      ; $44e4: $32
	ld sp, $3740                                     ; $44e5: $31 $40 $37
	cp [hl]                                          ; $44e8: $be
	dec a                                            ; $44e9: $3d
	ld [$083d], sp                                   ; $44ea: $08 $3d $08
	dec a                                            ; $44ed: $3d
	ld [$0c3b], sp                                   ; $44ee: $08 $3b $0c
	dec [hl]                                         ; $44f1: $35
	inc c                                            ; $44f2: $0c
	inc c                                            ; $44f3: $0c
	jr jr_035_4533                                   ; $44f4: $18 $3d

	inc c                                            ; $44f6: $0c
	scf                                              ; $44f7: $37
	jr jr_035_4531                                   ; $44f8: $18 $37

	inc c                                            ; $44fa: $0c
	dec a                                            ; $44fb: $3d
	inc c                                            ; $44fc: $0c
	ld sp, $fd0c                                     ; $44fd: $31 $0c $fd
	sub c                                            ; $4500: $91
	ld b, l                                          ; $4501: $45
	scf                                              ; $4502: $37
	inc c                                            ; $4503: $0c
	ld sp, $3d0c                                     ; $4504: $31 $0c $3d
	inc c                                            ; $4507: $0c
	scf                                              ; $4508: $37

jr_035_4509:
	jr @+$39                                         ; $4509: $18 $37

	inc c                                            ; $450b: $0c
	dec a                                            ; $450c: $3d
	inc c                                            ; $450d: $0c
	scf                                              ; $450e: $37
	jr jr_035_44cf                                   ; $450f: $18 $be

	inc c                                            ; $4511: $0c
	inc [hl]                                         ; $4512: $34
	dec a                                            ; $4513: $3d
	inc [hl]                                         ; $4514: $34
	scf                                              ; $4515: $37
	dec [hl]                                         ; $4516: $35
	scf                                              ; $4517: $37
	dec [hl]                                         ; $4518: $35
	cp [hl]                                          ; $4519: $be
	ei                                               ; $451a: $fb
	db $fd                                           ; $451b: $fd
	sub c                                            ; $451c: $91
	ld b, l                                          ; $451d: $45
	ei                                               ; $451e: $fb

jr_035_451f:
	inc bc                                           ; $451f: $03
	scf                                              ; $4520: $37
	inc c                                            ; $4521: $0c
	ld sp, $3d0c                                     ; $4522: $31 $0c $3d
	inc c                                            ; $4525: $0c
	scf                                              ; $4526: $37
	jr @+$3f                                         ; $4527: $18 $3d

	inc c                                            ; $4529: $0c
	ld sp, $350c                                     ; $452a: $31 $0c $35
	inc c                                            ; $452d: $0c
	ei                                               ; $452e: $fb
	db $fd                                           ; $452f: $fd
	sub c                                            ; $4530: $91

jr_035_4531:
	ld b, l                                          ; $4531: $45
	ei                                               ; $4532: $fb

jr_035_4533:
	ld [bc], a                                       ; $4533: $02
	scf                                              ; $4534: $37
	inc c                                            ; $4535: $0c
	ld sp, $3d0c                                     ; $4536: $31 $0c $3d
	inc c                                            ; $4539: $0c
	scf                                              ; $453a: $37
	jr @+$33                                         ; $453b: $18 $31

	inc c                                            ; $453d: $0c
	dec a                                            ; $453e: $3d
	inc c                                            ; $453f: $0c
	scf                                              ; $4540: $37
	jr @+$33                                         ; $4541: $18 $31

	inc c                                            ; $4543: $0c
	dec a                                            ; $4544: $3d
	inc c                                            ; $4545: $0c
	scf                                              ; $4546: $37
	jr jr_035_457a                                   ; $4547: $18 $31

	inc c                                            ; $4549: $0c
	ld sp, $340c                                     ; $454a: $31 $0c $34
	inc c                                            ; $454d: $0c
	cp [hl]                                          ; $454e: $be
	inc c                                            ; $454f: $0c
	inc c                                            ; $4550: $0c
	ld [hl-], a                                      ; $4551: $32
	dec a                                            ; $4552: $3d
	scf                                              ; $4553: $37
	ld [hl-], a                                      ; $4554: $32
	scf                                              ; $4555: $37
	dec a                                            ; $4556: $3d
	ld [hl-], a                                      ; $4557: $32
	cp [hl]                                          ; $4558: $be
	db $fd                                           ; $4559: $fd
	sub c                                            ; $455a: $91
	ld b, l                                          ; $455b: $45
	inc c                                            ; $455c: $0c
	inc c                                            ; $455d: $0c
	dec [hl]                                         ; $455e: $35
	jr jr_035_451f                                   ; $455f: $18 $be

	inc c                                            ; $4561: $0c
	scf                                              ; $4562: $37
	scf                                              ; $4563: $37
	ld sp, $be0c                                     ; $4564: $31 $0c $be
	dec [hl]                                         ; $4567: $35
	jr @-$40                                         ; $4568: $18 $be

	inc c                                            ; $456a: $0c
	scf                                              ; $456b: $37
	scf                                              ; $456c: $37
	ld sp, $3d3d                                     ; $456d: $31 $3d $3d
	dec a                                            ; $4570: $3d
	scf                                              ; $4571: $37
	cp [hl]                                          ; $4572: $be
	cp $ff                                           ; $4573: $fe $ff
	scf                                              ; $4575: $37
	inc c                                            ; $4576: $0c
	ld sp, $3d0c                                     ; $4577: $31 $0c $3d

jr_035_457a:
	inc c                                            ; $457a: $0c
	scf                                              ; $457b: $37
	jr @-$40                                         ; $457c: $18 $be

	inc c                                            ; $457e: $0c
	ld sp, $373d                                     ; $457f: $31 $3d $37
	ld [hl-], a                                      ; $4582: $32
	ld sp, $be3d                                     ; $4583: $31 $3d $be
	scf                                              ; $4586: $37
	jr @+$39                                         ; $4587: $18 $37

	inc c                                            ; $4589: $0c
	dec a                                            ; $458a: $3d
	ld b, $44                                        ; $458b: $06 $44
	ld b, $1e                                        ; $458d: $06 $1e
	inc c                                            ; $458f: $0c
	db $fd                                           ; $4590: $fd
	scf                                              ; $4591: $37
	inc c                                            ; $4592: $0c
	ld sp, $3d0c                                     ; $4593: $31 $0c $3d
	inc c                                            ; $4596: $0c
	scf                                              ; $4597: $37
	jr jr_035_45d1                                   ; $4598: $18 $37

	inc c                                            ; $459a: $0c
	dec a                                            ; $459b: $3d
	inc c                                            ; $459c: $0c
	ld sp, $fd0c                                     ; $459d: $31 $0c $fd
	ret nc                                           ; $45a0: $d0

	ld e, [hl]                                       ; $45a1: $5e
	cp $b5                                           ; $45a2: $fe $b5
	ld b, c                                          ; $45a4: $41
	ld [bc], a                                       ; $45a5: $02
	rst $38                                          ; $45a6: $ff
	dec b                                            ; $45a7: $05
	ld a, l                                          ; $45a8: $7d
	inc b                                            ; $45a9: $04
	ld a, [hl]                                       ; $45aa: $7e
	ld [bc], a                                       ; $45ab: $02
	nop                                              ; $45ac: $00
	xor c                                            ; $45ad: $a9
	nop                                              ; $45ae: $00
	ld b, $1b                                        ; $45af: $06 $1b
	inc c                                            ; $45b1: $0c
	rra                                              ; $45b2: $1f
	inc c                                            ; $45b3: $0c
	jr nz, jr_035_45c2                               ; $45b4: $20 $0c

	sub [hl]                                         ; $45b6: $96
	rst $38                                          ; $45b7: $ff
	inc b                                            ; $45b8: $04
	rra                                              ; $45b9: $1f
	ld b, $1b                                        ; $45ba: $06 $1b
	inc c                                            ; $45bc: $0c
	sub [hl]                                         ; $45bd: $96
	rst $38                                          ; $45be: $ff
	ld b, $1b                                        ; $45bf: $06 $1b
	inc c                                            ; $45c1: $0c

jr_035_45c2:
	sub [hl]                                         ; $45c2: $96
	rst $38                                          ; $45c3: $ff
	inc bc                                           ; $45c4: $03
	rra                                              ; $45c5: $1f
	ld b, $96                                        ; $45c6: $06 $96
	rst $38                                          ; $45c8: $ff
	inc b                                            ; $45c9: $04
	dec de                                           ; $45ca: $1b
	inc c                                            ; $45cb: $0c
	cp l                                             ; $45cc: $bd
	ld [bc], a                                       ; $45cd: $02
	add hl, de                                       ; $45ce: $19
	ld b, $06                                        ; $45cf: $06 $06

jr_035_45d1:
	sub [hl]                                         ; $45d1: $96
	rst $38                                          ; $45d2: $ff
	inc b                                            ; $45d3: $04
	dec de                                           ; $45d4: $1b
	inc c                                            ; $45d5: $0c
	rra                                              ; $45d6: $1f
	inc c                                            ; $45d7: $0c
	jr nz, jr_035_45e6                               ; $45d8: $20 $0c

	sub [hl]                                         ; $45da: $96
	rst $38                                          ; $45db: $ff
	inc b                                            ; $45dc: $04
	rra                                              ; $45dd: $1f
	ld b, $1b                                        ; $45de: $06 $1b
	inc c                                            ; $45e0: $0c
	sub [hl]                                         ; $45e1: $96
	rst $38                                          ; $45e2: $ff
	ld b, $1b                                        ; $45e3: $06 $1b
	inc c                                            ; $45e5: $0c

jr_035_45e6:
	sub [hl]                                         ; $45e6: $96
	rst $38                                          ; $45e7: $ff
	ld [bc], a                                       ; $45e8: $02
	rra                                              ; $45e9: $1f
	ld b, $96                                        ; $45ea: $06 $96
	rst $38                                          ; $45ec: $ff
	inc b                                            ; $45ed: $04
	dec de                                           ; $45ee: $1b
	inc c                                            ; $45ef: $0c
	ld a, [hl]                                       ; $45f0: $7e
	inc bc                                           ; $45f1: $03
	nop                                              ; $45f2: $00
	and b                                            ; $45f3: $a0
	cp l                                             ; $45f4: $bd
	ld [bc], a                                       ; $45f5: $02
	dec h                                            ; $45f6: $25
	ld b, $0c                                        ; $45f7: $06 $0c
	or l                                             ; $45f9: $b5
	ld [hl], c                                       ; $45fa: $71
	ld [bc], a                                       ; $45fb: $02
	rst $38                                          ; $45fc: $ff
	inc b                                            ; $45fd: $04
	ld a, [hl]                                       ; $45fe: $7e
	nop                                              ; $45ff: $00
	ld a, l                                          ; $4600: $7d
	nop                                              ; $4601: $00
	dec de                                           ; $4602: $1b
	inc c                                            ; $4603: $0c
	jp $0c1b                                         ; $4604: $c3 $1b $0c


	add $16                                          ; $4607: $c6 $16
	inc c                                            ; $4609: $0c
	jp $0c16                                         ; $460a: $c3 $16 $0c


	ret z                                            ; $460d: $c8

	rra                                              ; $460e: $1f
	inc c                                            ; $460f: $0c
	jp $0c1f                                         ; $4610: $c3 $1f $0c


	ret z                                            ; $4613: $c8

	dec e                                            ; $4614: $1d
	inc c                                            ; $4615: $0c
	jp $0c1b                                         ; $4616: $c3 $1b $0c


	ret z                                            ; $4619: $c8

	dec de                                           ; $461a: $1b
	inc c                                            ; $461b: $0c
	jp $0c1b                                         ; $461c: $c3 $1b $0c


	or l                                             ; $461f: $b5
	sub c                                            ; $4620: $91
	inc bc                                           ; $4621: $03
	rst $38                                          ; $4622: $ff
	ld [bc], a                                       ; $4623: $02
	rra                                              ; $4624: $1f
	ld b, $c9                                        ; $4625: $06 $c9
	ld a, [hl]                                       ; $4627: $7e
	inc bc                                           ; $4628: $03
	nop                                              ; $4629: $00
	and b                                            ; $462a: $a0
	sub [hl]                                         ; $462b: $96
	rst $38                                          ; $462c: $ff
	ld b, $22                                        ; $462d: $06 $22
	dec bc                                           ; $462f: $0b
	nop                                              ; $4630: $00
	ld bc, $007e                                     ; $4631: $01 $7e $00
	sub [hl]                                         ; $4634: $96
	nop                                              ; $4635: $00
	nop                                              ; $4636: $00
	ld [hl+], a                                      ; $4637: $22
	inc b                                            ; $4638: $04
	nop                                              ; $4639: $00
	ld [bc], a                                       ; $463a: $02
	or c                                             ; $463b: $b1
	or c                                             ; $463c: $b1
	rst $38                                          ; $463d: $ff
	inc bc                                           ; $463e: $03
	dec de                                           ; $463f: $1b
	inc c                                            ; $4640: $0c
	ld a, [de]                                       ; $4641: $1a
	inc c                                            ; $4642: $0c
	add hl, de                                       ; $4643: $19
	inc c                                            ; $4644: $0c
	or l                                             ; $4645: $b5
	add c                                            ; $4646: $81
	ld bc, $070c                                     ; $4647: $01 $0c $07
	jr @+$0e                                         ; $464a: $18 $0c

	sub [hl]                                         ; $464c: $96
	ld b, $01                                        ; $464d: $06 $01
	jr nz, jr_035_4657                               ; $464f: $20 $06

	sub [hl]                                         ; $4651: $96
	inc c                                            ; $4652: $0c
	ld bc, $0c18                                     ; $4653: $01 $18 $0c
	sub [hl]                                         ; $4656: $96

jr_035_4657:
	ld b, $02                                        ; $4657: $06 $02
	jr jr_035_4661                                   ; $4659: $18 $06

	sub [hl]                                         ; $465b: $96
	ld b, $01                                        ; $465c: $06 $01
	jr nz, jr_035_4666                               ; $465e: $20 $06

	sub [hl]                                         ; $4660: $96

jr_035_4661:
	inc c                                            ; $4661: $0c
	ld bc, $0c18                                     ; $4662: $01 $18 $0c
	sub [hl]                                         ; $4665: $96

jr_035_4666:
	ld b, $02                                        ; $4666: $06 $02
	jr jr_035_4670                                   ; $4668: $18 $06

	sub [hl]                                         ; $466a: $96
	ld b, $02                                        ; $466b: $06 $02
	cp [hl]                                          ; $466d: $be
	ld b, $22                                        ; $466e: $06 $22

jr_035_4670:
	dec de                                           ; $4670: $1b
	inc h                                            ; $4671: $24
	dec de                                           ; $4672: $1b
	ld [hl+], a                                      ; $4673: $22
	dec de                                           ; $4674: $1b
	cp [hl]                                          ; $4675: $be
	or c                                             ; $4676: $b1
	ld [hl], c                                       ; $4677: $71
	ld b, $02                                        ; $4678: $06 $02
	cp [hl]                                          ; $467a: $be
	ld b, $24                                        ; $467b: $06 $24
	jr nz, jr_035_469f                               ; $467d: $20 $20

	jr nz, jr_035_46a5                               ; $467f: $20 $24

	jr nz, @+$22                                     ; $4681: $20 $20

	inc h                                            ; $4683: $24
	jr nz, @+$22                                     ; $4684: $20 $20

	dec h                                            ; $4686: $25
	jr nz, jr_035_46ad                               ; $4687: $20 $24

	jr nz, jr_035_46ab                               ; $4689: $20 $20

	jr nz, @-$40                                     ; $468b: $20 $be

	cp [hl]                                          ; $468d: $be
	ld b, $27                                        ; $468e: $06 $27
	ld [hl+], a                                      ; $4690: $22
	ld [hl+], a                                      ; $4691: $22
	ld [hl+], a                                      ; $4692: $22
	daa                                              ; $4693: $27
	ld [hl+], a                                      ; $4694: $22
	ld [hl+], a                                      ; $4695: $22
	daa                                              ; $4696: $27
	ld [hl+], a                                      ; $4697: $22
	ld [hl+], a                                      ; $4698: $22
	add hl, hl                                       ; $4699: $29
	ld [hl+], a                                      ; $469a: $22
	dec hl                                           ; $469b: $2b
	ld [hl+], a                                      ; $469c: $22
	cp [hl]                                          ; $469d: $be
	or l                                             ; $469e: $b5

jr_035_469f:
	ld h, c                                          ; $469f: $61
	ld [bc], a                                       ; $46a0: $02
	rst $38                                          ; $46a1: $ff
	ld b, $7e                                        ; $46a2: $06 $7e
	ld [de], a                                       ; $46a4: $12

jr_035_46a5:
	ld b, $a3                                        ; $46a5: $06 $a3
	ld l, $0c                                        ; $46a7: $2e $0c
	or c                                             ; $46a9: $b1
	ld h, c                                          ; $46aa: $61

jr_035_46ab:
	nop                                              ; $46ab: $00
	nop                                              ; $46ac: $00

jr_035_46ad:
	ld a, [hl]                                       ; $46ad: $7e
	inc bc                                           ; $46ae: $03
	rlca                                             ; $46af: $07
	and b                                            ; $46b0: $a0
	dec hl                                           ; $46b1: $2b
	ld [de], a                                       ; $46b2: $12
	ld a, [hl]                                       ; $46b3: $7e
	ld bc, $a000                                     ; $46b4: $01 $00 $a0
	daa                                              ; $46b7: $27
	ld [de], a                                       ; $46b8: $12
	ld a, [hl]                                       ; $46b9: $7e
	ld bc, $a018                                     ; $46ba: $01 $18 $a0
	ld l, $24                                        ; $46bd: $2e $24
	push bc                                          ; $46bf: $c5
	ld a, [hl]                                       ; $46c0: $7e
	ld bc, $a000                                     ; $46c1: $01 $00 $a0
	ld l, $0c                                        ; $46c4: $2e $0c
	call nz, $0c2e                                   ; $46c6: $c4 $2e $0c
	ld a, [hl]                                       ; $46c9: $7e
	nop                                              ; $46ca: $00
	or l                                             ; $46cb: $b5
	ld b, c                                          ; $46cc: $41
	ld [bc], a                                       ; $46cd: $02
	nop                                              ; $46ce: $00
	nop                                              ; $46cf: $00
	ei                                               ; $46d0: $fb
	db $fd                                           ; $46d1: $fd
	ld h, l                                          ; $46d2: $65
	ld c, b                                          ; $46d3: $48
	db $fd                                           ; $46d4: $fd
	halt                                             ; $46d5: $76
	ld c, b                                          ; $46d6: $48
	db $fd                                           ; $46d7: $fd
	ld h, l                                          ; $46d8: $65
	ld c, b                                          ; $46d9: $48
	db $fd                                           ; $46da: $fd
	halt                                             ; $46db: $76
	ld c, b                                          ; $46dc: $48
	ei                                               ; $46dd: $fb
	ld [bc], a                                       ; $46de: $02
	push bc                                          ; $46df: $c5
	inc l                                            ; $46e0: $2c
	inc bc                                           ; $46e1: $03
	jp nz, $032c                                     ; $46e2: $c2 $2c $03

	db $fd                                           ; $46e5: $fd
	ld h, l                                          ; $46e6: $65
	ld c, b                                          ; $46e7: $48
	db $fd                                           ; $46e8: $fd
	halt                                             ; $46e9: $76
	ld c, b                                          ; $46ea: $48
	db $fd                                           ; $46eb: $fd
	ld h, l                                          ; $46ec: $65
	ld c, b                                          ; $46ed: $48
	db $fd                                           ; $46ee: $fd
	halt                                             ; $46ef: $76
	ld c, b                                          ; $46f0: $48
	db $fd                                           ; $46f1: $fd
	ld h, l                                          ; $46f2: $65
	ld c, b                                          ; $46f3: $48
	db $fd                                           ; $46f4: $fd
	halt                                             ; $46f5: $76
	ld c, b                                          ; $46f6: $48
	db $fd                                           ; $46f7: $fd
	ld h, l                                          ; $46f8: $65
	ld c, b                                          ; $46f9: $48
	push bc                                          ; $46fa: $c5
	inc l                                            ; $46fb: $2c
	inc bc                                           ; $46fc: $03
	jp nz, $032c                                     ; $46fd: $c2 $2c $03

	or c                                             ; $4700: $b1
	ld [hl], c                                       ; $4701: $71
	nop                                              ; $4702: $00
	nop                                              ; $4703: $00
	ld l, $12                                        ; $4704: $2e $12
	dec l                                            ; $4706: $2d
	inc bc                                           ; $4707: $03
	inc l                                            ; $4708: $2c
	inc bc                                           ; $4709: $03
	or c                                             ; $470a: $b1
	add c                                            ; $470b: $81
	rst $38                                          ; $470c: $ff
	rlca                                             ; $470d: $07
	dec hl                                           ; $470e: $2b
	dec de                                           ; $470f: $1b
	jp $032b                                         ; $4710: $c3 $2b $03


	nop                                              ; $4713: $00
	ld b, $b5                                        ; $4714: $06 $b5
	ld [hl], c                                       ; $4716: $71
	ld [bc], a                                       ; $4717: $02
	rst $38                                          ; $4718: $ff
	rlca                                             ; $4719: $07
	ld a, l                                          ; $471a: $7d
	ld c, $71                                        ; $471b: $0e $71
	ld a, [hl]                                       ; $471d: $7e
	ld [bc], a                                       ; $471e: $02
	nop                                              ; $471f: $00
	and b                                            ; $4720: $a0
	dec h                                            ; $4721: $25
	inc c                                            ; $4722: $0c
	inc h                                            ; $4723: $24
	ld b, $22                                        ; $4724: $06 $22
	inc c                                            ; $4726: $0c
	cp l                                             ; $4727: $bd
	ld [bc], a                                       ; $4728: $02
	jr nz, @+$08                                     ; $4729: $20 $06

	ld b, $96                                        ; $472b: $06 $96
	rst $38                                          ; $472d: $ff
	rlca                                             ; $472e: $07
	daa                                              ; $472f: $27
	jr @-$68                                         ; $4730: $18 $96

	rst $38                                          ; $4732: $ff
	ld b, $be                                        ; $4733: $06 $be
	inc c                                            ; $4735: $0c
	ld [hl+], a                                      ; $4736: $22
	rra                                              ; $4737: $1f
	dec h                                            ; $4738: $25
	inc h                                            ; $4739: $24
	dec h                                            ; $473a: $25
	cp [hl]                                          ; $473b: $be
	ld h, $06                                        ; $473c: $26 $06
	add $92                                          ; $473e: $c6 $92
	ld h, $06                                        ; $4740: $26 $06
	daa                                              ; $4742: $27
	inc c                                            ; $4743: $0c
	ld a, [hl]                                       ; $4744: $7e
	nop                                              ; $4745: $00
	ld [hl], b                                       ; $4746: $70
	nop                                              ; $4747: $00
	inc c                                            ; $4748: $0c
	or c                                             ; $4749: $b1
	ld h, c                                          ; $474a: $61
	inc c                                            ; $474b: $0c
	ld [bc], a                                       ; $474c: $02
	ld a, l                                          ; $474d: $7d
	nop                                              ; $474e: $00
	daa                                              ; $474f: $27
	inc c                                            ; $4750: $0c
	daa                                              ; $4751: $27
	inc c                                            ; $4752: $0c
	call nz, $0c22                                   ; $4753: $c4 $22 $0c
	ld [hl+], a                                      ; $4756: $22
	inc c                                            ; $4757: $0c
	add $22                                          ; $4758: $c6 $22
	inc c                                            ; $475a: $0c
	ld [hl+], a                                      ; $475b: $22

jr_035_475c:
	inc c                                            ; $475c: $0c
	rst JumpTable                                          ; $475d: $c7
	ld [hl+], a                                      ; $475e: $22
	inc c                                            ; $475f: $0c
	ld [hl+], a                                      ; $4760: $22
	inc c                                            ; $4761: $0c
	ret z                                            ; $4762: $c8

	ld [hl+], a                                      ; $4763: $22
	inc c                                            ; $4764: $0c
	ret z                                            ; $4765: $c8

	ld [hl+], a                                      ; $4766: $22
	inc c                                            ; $4767: $0c
	rst JumpTable                                          ; $4768: $c7
	ld [hl+], a                                      ; $4769: $22
	inc c                                            ; $476a: $0c
	or c                                             ; $476b: $b1
	ld h, c                                          ; $476c: $61
	ld b, $02                                        ; $476d: $06 $02
	ld [hl+], a                                      ; $476f: $22
	ld b, $c8                                        ; $4770: $06 $c8
	ld a, [hl]                                       ; $4772: $7e
	ld bc, sUnmappedPlayer1stName                                     ; $4773: $01 $00 $a2

jr_035_4776:
	rla                                              ; $4776: $17
	jr @-$4d                                         ; $4777: $18 $b1

	ld hl, $07ff                                     ; $4779: $21 $ff $07
	ld a, [hl]                                       ; $477c: $7e
	nop                                              ; $477d: $00
	ld d, $18                                        ; $477e: $16 $18
	or c                                             ; $4780: $b1
	pop de                                           ; $4781: $d1
	rst $38                                          ; $4782: $ff
	rlca                                             ; $4783: $07
	dec de                                           ; $4784: $1b
	ld d, $c3                                        ; $4785: $16 $c3
	dec de                                           ; $4787: $1b
	ld [bc], a                                       ; $4788: $02
	or c                                             ; $4789: $b1
	pop de                                           ; $478a: $d1
	rst $38                                          ; $478b: $ff
	rlca                                             ; $478c: $07
	jr nz, @+$24                                     ; $478d: $20 $22

	jp $0220                                         ; $478f: $c3 $20 $02


	or c                                             ; $4792: $b1
	pop de                                           ; $4793: $d1
	inc c                                            ; $4794: $0c
	rlca                                             ; $4795: $07
	rra                                              ; $4796: $1f
	inc c                                            ; $4797: $0c
	jp nz, $0c1f                                     ; $4798: $c2 $1f $0c

	or c                                             ; $479b: $b1
	pop de                                           ; $479c: $d1
	rst $38                                          ; $479d: $ff
	inc bc                                           ; $479e: $03
	rra                                              ; $479f: $1f
	dec bc                                           ; $47a0: $0b
	nop                                              ; $47a1: $00
	ld bc, $0c1f                                     ; $47a2: $01 $1f $0c
	sub [hl]                                         ; $47a5: $96
	rst $38                                          ; $47a6: $ff
	ld bc, $061d                                     ; $47a7: $01 $1d $06
	sub [hl]                                         ; $47aa: $96
	rst $38                                          ; $47ab: $ff
	rlca                                             ; $47ac: $07
	rra                                              ; $47ad: $1f
	inc c                                            ; $47ae: $0c
	or c                                             ; $47af: $b1
	ld hl, $0000                                     ; $47b0: $21 $00 $00
	rra                                              ; $47b3: $1f
	inc c                                            ; $47b4: $0c
	pop bc                                           ; $47b5: $c1
	rra                                              ; $47b6: $1f
	inc c                                            ; $47b7: $0c
	pop bc                                           ; $47b8: $c1
	nop                                              ; $47b9: $00
	ld [de], a                                       ; $47ba: $12
	sub b                                            ; $47bb: $90
	sub a                                            ; $47bc: $97
	ccf                                              ; $47bd: $3f
	ld a, [hl]                                       ; $47be: $7e
	ld bc, $a918                                     ; $47bf: $01 $18 $a9
	inc l                                            ; $47c2: $2c
	jr nc, jr_035_475c                               ; $47c3: $30 $97

	inc a                                            ; $47c5: $3c
	ld a, [hl]                                       ; $47c6: $7e
	ld bc, $a900                                     ; $47c7: $01 $00 $a9
	ld l, $18                                        ; $47ca: $2e $18
	jr nc, @+$1a                                     ; $47cc: $30 $18

	sub a                                            ; $47ce: $97
	ld c, a                                          ; $47cf: $4f
	ld a, [hl]                                       ; $47d0: $7e
	ld bc, $a918                                     ; $47d1: $01 $18 $a9
	dec hl                                           ; $47d4: $2b
	jr nc, jr_035_4855                               ; $47d5: $30 $7e

	ld bc, $a900                                     ; $47d7: $01 $00 $a9
	sub a                                            ; $47da: $97
	inc a                                            ; $47db: $3c
	daa                                              ; $47dc: $27
	jr jr_035_4776                                   ; $47dd: $18 $97

	ld e, h                                          ; $47df: $5c
	dec hl                                           ; $47e0: $2b
	inc c                                            ; $47e1: $0c
	daa                                              ; $47e2: $27
	inc c                                            ; $47e3: $0c
	ld a, [hl]                                       ; $47e4: $7e
	ld bc, $a918                                     ; $47e5: $01 $18 $a9
	sub a                                            ; $47e8: $97
	ld c, a                                          ; $47e9: $4f
	add hl, hl                                       ; $47ea: $29
	jr nc, @+$80                                     ; $47eb: $30 $7e

	ld bc, $a900                                     ; $47ed: $01 $00 $a9
	sub a                                            ; $47f0: $97
	inc a                                            ; $47f1: $3c
	dec hl                                           ; $47f2: $2b
	jr jr_035_4821                                   ; $47f3: $18 $2c

	jr @-$4d                                         ; $47f5: $18 $b1

	and c                                            ; $47f7: $a1
	ld b, $02                                        ; $47f8: $06 $02
	ld a, [hl]                                       ; $47fa: $7e
	nop                                              ; $47fb: $00
	sub a                                            ; $47fc: $97
	nop                                              ; $47fd: $00
	sub d                                            ; $47fe: $92
	cp [hl]                                          ; $47ff: $be
	ld b, $13                                        ; $4800: $06 $13
	ld d, $1b                                        ; $4802: $16 $1b
	rra                                              ; $4804: $1f
	ld h, $1d                                        ; $4805: $26 $1d
	inc l                                            ; $4807: $2c
	cp [hl]                                          ; $4808: $be
	sub [hl]                                         ; $4809: $96
	ld b, $07                                        ; $480a: $06 $07
	dec hl                                           ; $480c: $2b
	ld b, $b1                                        ; $480d: $06 $b1
	ld sp, $0000                                     ; $480f: $31 $00 $00
	dec hl                                           ; $4812: $2b
	ld b, $b1                                        ; $4813: $06 $b1
	or c                                             ; $4815: $b1
	ld b, $01                                        ; $4816: $06 $01
	ld [hl+], a                                      ; $4818: $22
	ld b, $b1                                        ; $4819: $06 $b1
	and c                                            ; $481b: $a1
	inc c                                            ; $481c: $0c
	inc b                                            ; $481d: $04
	jr nz, @+$0e                                     ; $481e: $20 $0c

	dec de                                           ; $4820: $1b

jr_035_4821:
	inc c                                            ; $4821: $0c
	dec e                                            ; $4822: $1d
	inc c                                            ; $4823: $0c
	sub [hl]                                         ; $4824: $96
	nop                                              ; $4825: $00
	nop                                              ; $4826: $00
	sub b                                            ; $4827: $90
	sub a                                            ; $4828: $97
	ccf                                              ; $4829: $3f
	ld a, [hl]                                       ; $482a: $7e
	ld bc, $a918                                     ; $482b: $01 $18 $a9
	inc l                                            ; $482e: $2c
	jr nc, @-$67                                     ; $482f: $30 $97

	inc a                                            ; $4831: $3c
	ld a, [hl]                                       ; $4832: $7e
	ld bc, $a900                                     ; $4833: $01 $00 $a9
	ld l, $18                                        ; $4836: $2e $18
	jr nc, jr_035_4852                               ; $4838: $30 $18

	or l                                             ; $483a: $b5
	ld h, c                                          ; $483b: $61
	ld [bc], a                                       ; $483c: $02
	rst $38                                          ; $483d: $ff
	rlca                                             ; $483e: $07
	sub a                                            ; $483f: $97
	nop                                              ; $4840: $00
	ld a, [hl]                                       ; $4841: $7e
	nop                                              ; $4842: $00
	ld l, $0c                                        ; $4843: $2e $0c
	or c                                             ; $4845: $b1
	ld sp, $0000                                     ; $4846: $31 $00 $00
	ld l, $0c                                        ; $4849: $2e $0c
	or l                                             ; $484b: $b5
	sub c                                            ; $484c: $91
	inc bc                                           ; $484d: $03
	rst $38                                          ; $484e: $ff
	inc bc                                           ; $484f: $03
	add hl, hl                                       ; $4850: $29
	ld [de], a                                       ; $4851: $12

jr_035_4852:
	sub [hl]                                         ; $4852: $96
	ld b, $02                                        ; $4853: $06 $02

jr_035_4855:
	add hl, hl                                       ; $4855: $29
	ld b, $b5                                        ; $4856: $06 $b5
	or c                                             ; $4858: $b1
	inc bc                                           ; $4859: $03
	inc c                                            ; $485a: $0c
	dec b                                            ; $485b: $05
	cp [hl]                                          ; $485c: $be
	inc c                                            ; $485d: $0c
	ld d, $17                                        ; $485e: $16 $17
	jr @+$1c                                         ; $4860: $18 $1a

	cp [hl]                                          ; $4862: $be
	cp $ff                                           ; $4863: $fe $ff
	pop de                                           ; $4865: $d1
	call nz, $033a                                   ; $4866: $c4 $3a $03
	pop de                                           ; $4869: $d1
	jp nz, $033a                                     ; $486a: $c2 $3a $03

	pop de                                           ; $486d: $d1
	call nz, $033a                                   ; $486e: $c4 $3a $03
	pop de                                           ; $4871: $d1
	jp nz, $033a                                     ; $4872: $c2 $3a $03

	db $fd                                           ; $4875: $fd
	pop de                                           ; $4876: $d1
	add $2c                                          ; $4877: $c6 $2c
	inc bc                                           ; $4879: $03
	pop de                                           ; $487a: $d1
	jp nz, $032c                                     ; $487b: $c2 $2c $03

	pop de                                           ; $487e: $d1
	add $2c                                          ; $487f: $c6 $2c
	inc bc                                           ; $4881: $03
	pop de                                           ; $4882: $d1
	jp nz, $032c                                     ; $4883: $c2 $2c $03

	db $fd                                           ; $4886: $fd
	ret nc                                           ; $4887: $d0

	ld e, [hl]                                       ; $4888: $5e
	cp $b5                                           ; $4889: $fe $b5
	pop de                                           ; $488b: $d1
	ld bc, $04ff                                     ; $488c: $01 $ff $04
	ld a, [hl]                                       ; $488f: $7e
	ld [bc], a                                       ; $4890: $02
	nop                                              ; $4891: $00
	xor c                                            ; $4892: $a9
	dec de                                           ; $4893: $1b
	inc c                                            ; $4894: $0c
	rra                                              ; $4895: $1f
	inc c                                            ; $4896: $0c
	jr nz, jr_035_48a5                               ; $4897: $20 $0c

	rra                                              ; $4899: $1f
	ld b, $1b                                        ; $489a: $06 $1b
	ld b, $b1                                        ; $489c: $06 $b1
	ld sp, $0000                                     ; $489e: $31 $00 $00
	dec de                                           ; $48a1: $1b
	ld b, $b1                                        ; $48a2: $06 $b1
	pop de                                           ; $48a4: $d1

jr_035_48a5:
	rst $38                                          ; $48a5: $ff
	inc b                                            ; $48a6: $04
	dec de                                           ; $48a7: $1b
	inc c                                            ; $48a8: $0c
	sub [hl]                                         ; $48a9: $96
	rst $38                                          ; $48aa: $ff
	inc bc                                           ; $48ab: $03
	rra                                              ; $48ac: $1f
	ld b, $96                                        ; $48ad: $06 $96
	rst $38                                          ; $48af: $ff
	inc b                                            ; $48b0: $04
	dec de                                           ; $48b1: $1b
	inc c                                            ; $48b2: $0c
	add hl, de                                       ; $48b3: $19
	inc c                                            ; $48b4: $0c
	sub [hl]                                         ; $48b5: $96
	rst $38                                          ; $48b6: $ff
	inc b                                            ; $48b7: $04
	dec de                                           ; $48b8: $1b
	inc c                                            ; $48b9: $0c
	rra                                              ; $48ba: $1f
	inc c                                            ; $48bb: $0c
	jr nz, jr_035_48ca                               ; $48bc: $20 $0c

	rra                                              ; $48be: $1f
	ld b, $1b                                        ; $48bf: $06 $1b
	ld b, $b1                                        ; $48c1: $06 $b1
	ld sp, $0000                                     ; $48c3: $31 $00 $00
	dec de                                           ; $48c6: $1b
	ld b, $b1                                        ; $48c7: $06 $b1
	pop de                                           ; $48c9: $d1

jr_035_48ca:
	rst $38                                          ; $48ca: $ff
	inc b                                            ; $48cb: $04
	dec de                                           ; $48cc: $1b
	inc c                                            ; $48cd: $0c
	sub [hl]                                         ; $48ce: $96
	rst $38                                          ; $48cf: $ff
	inc bc                                           ; $48d0: $03
	rra                                              ; $48d1: $1f
	ld b, $96                                        ; $48d2: $06 $96
	rst $38                                          ; $48d4: $ff
	inc b                                            ; $48d5: $04
	dec de                                           ; $48d6: $1b
	inc c                                            ; $48d7: $0c
	ld a, [hl]                                       ; $48d8: $7e
	inc bc                                           ; $48d9: $03
	nop                                              ; $48da: $00
	and b                                            ; $48db: $a0
	dec h                                            ; $48dc: $25
	inc c                                            ; $48dd: $0c
	ld a, [hl]                                       ; $48de: $7e
	ld [bc], a                                       ; $48df: $02
	nop                                              ; $48e0: $00
	xor c                                            ; $48e1: $a9
	sub [hl]                                         ; $48e2: $96
	rst $38                                          ; $48e3: $ff
	inc b                                            ; $48e4: $04
	dec de                                           ; $48e5: $1b
	inc c                                            ; $48e6: $0c
	rra                                              ; $48e7: $1f
	inc c                                            ; $48e8: $0c
	jr nz, jr_035_48f7                               ; $48e9: $20 $0c

	rra                                              ; $48eb: $1f
	ld b, $1b                                        ; $48ec: $06 $1b
	ld b, $b1                                        ; $48ee: $06 $b1
	ld sp, $0000                                     ; $48f0: $31 $00 $00
	dec de                                           ; $48f3: $1b
	ld b, $b1                                        ; $48f4: $06 $b1
	pop de                                           ; $48f6: $d1

jr_035_48f7:
	rst $38                                          ; $48f7: $ff
	inc b                                            ; $48f8: $04
	dec de                                           ; $48f9: $1b
	inc c                                            ; $48fa: $0c
	sub [hl]                                         ; $48fb: $96
	rst $38                                          ; $48fc: $ff
	inc bc                                           ; $48fd: $03
	rra                                              ; $48fe: $1f
	ld b, $96                                        ; $48ff: $06 $96
	rst $38                                          ; $4901: $ff
	inc b                                            ; $4902: $04
	dec de                                           ; $4903: $1b
	inc c                                            ; $4904: $0c
	add hl, de                                       ; $4905: $19
	inc c                                            ; $4906: $0c
	dec de                                           ; $4907: $1b
	inc c                                            ; $4908: $0c
	rra                                              ; $4909: $1f
	inc c                                            ; $490a: $0c
	jr nz, jr_035_4919                               ; $490b: $20 $0c

	sub [hl]                                         ; $490d: $96
	rst $38                                          ; $490e: $ff
	inc bc                                           ; $490f: $03
	rra                                              ; $4910: $1f
	ld b, $cc                                        ; $4911: $06 $cc
	ld a, [hl]                                       ; $4913: $7e
	inc bc                                           ; $4914: $03
	nop                                              ; $4915: $00
	and b                                            ; $4916: $a0
	daa                                              ; $4917: $27
	dec bc                                           ; $4918: $0b

jr_035_4919:
	nop                                              ; $4919: $00
	ld bc, $007e                                     ; $491a: $01 $7e $00
	or c                                             ; $491d: $b1
	pop bc                                           ; $491e: $c1
	nop                                              ; $491f: $00
	nop                                              ; $4920: $00
	daa                                              ; $4921: $27
	inc bc                                           ; $4922: $03
	or c                                             ; $4923: $b1
	ld sp, $0000                                     ; $4924: $31 $00 $00
	daa                                              ; $4927: $27
	inc bc                                           ; $4928: $03
	call z, $0a25                                    ; $4929: $cc $25 $0a
	nop                                              ; $492c: $00
	ld [bc], a                                       ; $492d: $02
	or c                                             ; $492e: $b1
	or c                                             ; $492f: $b1
	rst $38                                          ; $4930: $ff
	ld [bc], a                                       ; $4931: $02
	inc h                                            ; $4932: $24
	ld b, $92                                        ; $4933: $06 $92
	call $051b                                       ; $4935: $cd $1b $05
	jp $011b                                         ; $4938: $c3 $1b $01


	call $0322                                       ; $493b: $cd $22 $03
	jp $0322                                         ; $493e: $c3 $22 $03


	call $0324                                       ; $4941: $cd $24 $03
	jp $0324                                         ; $4944: $c3 $24 $03


	or l                                             ; $4947: $b5
	pop bc                                           ; $4948: $c1
	ld [bc], a                                       ; $4949: $02
	rst $38                                          ; $494a: $ff
	rlca                                             ; $494b: $07
	ld a, [hl]                                       ; $494c: $7e
	ld de, $a206                                     ; $494d: $11 $06 $a2
	jr nz, jr_035_4963                               ; $4950: $20 $11

	nop                                              ; $4952: $00
	ld bc, $0a96                                     ; $4953: $01 $96 $0a
	inc b                                            ; $4956: $04
	ld a, [hl]                                       ; $4957: $7e
	nop                                              ; $4958: $00
	dec de                                           ; $4959: $1b
	ld a, [bc]                                       ; $495a: $0a
	nop                                              ; $495b: $00
	ld [bc], a                                       ; $495c: $02
	sub [hl]                                         ; $495d: $96
	rst $38                                          ; $495e: $ff
	ld bc, $061b                                     ; $495f: $01 $1b $06
	ld [hl+], a                                      ; $4962: $22

jr_035_4963:
	ld b, $96                                        ; $4963: $06 $96
	rst $38                                          ; $4965: $ff
	inc bc                                           ; $4966: $03
	daa                                              ; $4967: $27
	ld b, $25                                        ; $4968: $06 $25
	ld b, $96                                        ; $496a: $06 $96
	rst $38                                          ; $496c: $ff
	ld bc, $0624                                     ; $496d: $01 $24 $06
	ld [hl+], a                                      ; $4970: $22
	ld b, $24                                        ; $4971: $06 $24
	ld b, $96                                        ; $4973: $06 $96
	rst $38                                          ; $4975: $ff
	inc bc                                           ; $4976: $03
	ld [hl+], a                                      ; $4977: $22
	ld b, $96                                        ; $4978: $06 $96
	rst $38                                          ; $497a: $ff
	ld bc, $0620                                     ; $497b: $01 $20 $06
	rra                                              ; $497e: $1f
	ld b, $1d                                        ; $497f: $06 $1d
	ld b, $96                                        ; $4981: $06 $96
	rst $38                                          ; $4983: $ff
	rlca                                             ; $4984: $07
	dec de                                           ; $4985: $1b
	ld [de], a                                       ; $4986: $12
	sub [hl]                                         ; $4987: $96
	ld b, $01                                        ; $4988: $06 $01
	jr nz, @+$08                                     ; $498a: $20 $06

	sub [hl]                                         ; $498c: $96
	nop                                              ; $498d: $00
	nop                                              ; $498e: $00

jr_035_498f:
	ld a, [hl]                                       ; $498f: $7e
	ld bc, $a014                                     ; $4990: $01 $14 $a0

jr_035_4993:
	jr nz, jr_035_49c5                               ; $4993: $20 $30

	or c                                             ; $4995: $b1
	ld sp, $0000                                     ; $4996: $31 $00 $00
	jr nz, jr_035_49a7                               ; $4999: $20 $0c

	call z, $037e                                    ; $499b: $cc $7e $03
	nop                                              ; $499e: $00
	and b                                            ; $499f: $a0
	jr nz, jr_035_49ae                               ; $49a0: $20 $0c

	ld a, [hl]                                       ; $49a2: $7e
	inc bc                                           ; $49a3: $03
	rlca                                             ; $49a4: $07
	and b                                            ; $49a5: $a0
	rra                                              ; $49a6: $1f

jr_035_49a7:
	ld [de], a                                       ; $49a7: $12
	ld a, [hl]                                       ; $49a8: $7e
	ld bc, $a000                                     ; $49a9: $01 $00 $a0
	dec de                                           ; $49ac: $1b
	ld [de], a                                       ; $49ad: $12

jr_035_49ae:
	ld [hl+], a                                      ; $49ae: $22
	inc c                                            ; $49af: $0c
	bit 7, [hl]                                      ; $49b0: $cb $7e
	ld de, $a205                                     ; $49b2: $11 $05 $a2
	ld [hl+], a                                      ; $49b5: $22
	inc c                                            ; $49b6: $0c
	ld [hl+], a                                      ; $49b7: $22
	inc c                                            ; $49b8: $0c
	ld a, [hl]                                       ; $49b9: $7e
	nop                                              ; $49ba: $00
	ld [hl+], a                                      ; $49bb: $22
	jr jr_035_4a3c                                   ; $49bc: $18 $7e

	ld bc, $a000                                     ; $49be: $01 $00 $a0
	sla d                                            ; $49c1: $cb $22
	jr jr_035_498f                                   ; $49c3: $18 $ca

jr_035_49c5:
	ld [hl+], a                                      ; $49c5: $22
	jr @-$35                                         ; $49c6: $18 $c9

	ld [hl+], a                                      ; $49c8: $22
	jr jr_035_4993                                   ; $49c9: $18 $c8

	ld [hl+], a                                      ; $49cb: $22
	inc c                                            ; $49cc: $0c
	jp $0c22                                         ; $49cd: $c3 $22 $0c


	ld a, [hl]                                       ; $49d0: $7e
	nop                                              ; $49d1: $00
	call $0091                                       ; $49d2: $cd $91 $00
	ld b, $96                                        ; $49d5: $06 $96
	rst $38                                          ; $49d7: $ff
	rlca                                             ; $49d8: $07
	dec e                                            ; $49d9: $1d
	ld b, $96                                        ; $49da: $06 $96
	rst $38                                          ; $49dc: $ff
	ld bc, $0624                                     ; $49dd: $01 $24 $06
	ld h, $06                                        ; $49e0: $26 $06
	sub [hl]                                         ; $49e2: $96
	rst $38                                          ; $49e3: $ff
	rlca                                             ; $49e4: $07
	ld [hl+], a                                      ; $49e5: $22
	ld b, $96                                        ; $49e6: $06 $96
	rst $38                                          ; $49e8: $ff
	ld bc, $0624                                     ; $49e9: $01 $24 $06
	ld h, $06                                        ; $49ec: $26 $06
	ld [hl+], a                                      ; $49ee: $22
	ld b, $7e                                        ; $49ef: $06 $7e
	ld bc, $a900                                     ; $49f1: $01 $00 $a9
	sub [hl]                                         ; $49f4: $96
	rst $38                                          ; $49f5: $ff
	rlca                                             ; $49f6: $07
	add hl, hl                                       ; $49f7: $29
	inc c                                            ; $49f8: $0c
	ld a, [hl]                                       ; $49f9: $7e
	nop                                              ; $49fa: $00
	sub [hl]                                         ; $49fb: $96
	rst $38                                          ; $49fc: $ff
	ld bc, $0626                                     ; $49fd: $01 $26 $06
	ld [hl+], a                                      ; $4a00: $22
	ld b, $96                                        ; $4a01: $06 $96
	rst $38                                          ; $4a03: $ff
	dec b                                            ; $4a04: $05
	daa                                              ; $4a05: $27
	ld b, $96                                        ; $4a06: $06 $96
	rst $38                                          ; $4a08: $ff
	ld bc, $0626                                     ; $4a09: $01 $26 $06
	inc h                                            ; $4a0c: $24
	ld b, $26                                        ; $4a0d: $06 $26
	ld b, $b1                                        ; $4a0f: $06 $b1
	ld sp, $0000                                     ; $4a11: $31 $00 $00
	ld h, $06                                        ; $4a14: $26 $06
	or c                                             ; $4a16: $b1
	pop de                                           ; $4a17: $d1
	rst $38                                          ; $4a18: $ff

jr_035_4a19:
	rlca                                             ; $4a19: $07
	jr nz, jr_035_4a22                               ; $4a1a: $20 $06

	sub [hl]                                         ; $4a1c: $96
	rst $38                                          ; $4a1d: $ff
	ld bc, $0622                                     ; $4a1e: $01 $22 $06
	inc h                                            ; $4a21: $24

jr_035_4a22:
	ld b, $96                                        ; $4a22: $06 $96
	rst $38                                          ; $4a24: $ff
	rlca                                             ; $4a25: $07
	jr nz, jr_035_4a2e                               ; $4a26: $20 $06

	sub [hl]                                         ; $4a28: $96
	rst $38                                          ; $4a29: $ff
	ld bc, $0622                                     ; $4a2a: $01 $22 $06
	inc hl                                           ; $4a2d: $23

jr_035_4a2e:
	ld b, $20                                        ; $4a2e: $06 $20
	ld b, $96                                        ; $4a30: $06 $96
	rst $38                                          ; $4a32: $ff
	dec b                                            ; $4a33: $05
	ld a, [hl]                                       ; $4a34: $7e
	dec b                                            ; $4a35: $05
	nop                                              ; $4a36: $00
	and b                                            ; $4a37: $a0
	daa                                              ; $4a38: $27
	inc c                                            ; $4a39: $0c
	ld a, [hl]                                       ; $4a3a: $7e
	nop                                              ; $4a3b: $00

jr_035_4a3c:
	sub [hl]                                         ; $4a3c: $96
	rst $38                                          ; $4a3d: $ff
	inc b                                            ; $4a3e: $04
	add hl, hl                                       ; $4a3f: $29
	inc c                                            ; $4a40: $0c
	call z, $057e                                    ; $4a41: $cc $7e $05
	nop                                              ; $4a44: $00
	and b                                            ; $4a45: $a0
	ld a, [hl+]                                      ; $4a46: $2a
	ld b, $b1                                        ; $4a47: $06 $b1
	pop bc                                           ; $4a49: $c1
	rst $38                                          ; $4a4a: $ff
	ld bc, $007e                                     ; $4a4b: $01 $7e $00
	add hl, hl                                       ; $4a4e: $29
	ld b, $27                                        ; $4a4f: $06 $27
	ld b, $29                                        ; $4a51: $06 $29
	ld b, $b1                                        ; $4a53: $06 $b1
	pop bc                                           ; $4a55: $c1
	nop                                              ; $4a56: $00
	nop                                              ; $4a57: $00
	ld a, [hl]                                       ; $4a58: $7e
	ld [bc], a                                       ; $4a59: $02
	nop                                              ; $4a5a: $00
	and b                                            ; $4a5b: $a0
	daa                                              ; $4a5c: $27
	ld [de], a                                       ; $4a5d: $12
	call z, $007e                                    ; $4a5e: $cc $7e $00
	dec h                                            ; $4a61: $25
	inc bc                                           ; $4a62: $03
	inc h                                            ; $4a63: $24
	inc bc                                           ; $4a64: $03
	sub [hl]                                         ; $4a65: $96
	rst $38                                          ; $4a66: $ff
	rlca                                             ; $4a67: $07
	ld [hl+], a                                      ; $4a68: $22
	dec de                                           ; $4a69: $1b
	or c                                             ; $4a6a: $b1
	ld sp, $0000                                     ; $4a6b: $31 $00 $00
	ld [hl+], a                                      ; $4a6e: $22
	inc bc                                           ; $4a6f: $03
	or l                                             ; $4a70: $b5
	pop bc                                           ; $4a71: $c1
	ld [bc], a                                       ; $4a72: $02
	rst $38                                          ; $4a73: $ff
	rlca                                             ; $4a74: $07
	dec h                                            ; $4a75: $25
	inc c                                            ; $4a76: $0c
	inc h                                            ; $4a77: $24
	ld b, $22                                        ; $4a78: $06 $22
	inc c                                            ; $4a7a: $0c
	jr nz, jr_035_4a89                               ; $4a7b: $20 $0c

	sub [hl]                                         ; $4a7d: $96
	rst $38                                          ; $4a7e: $ff
	rlca                                             ; $4a7f: $07
	daa                                              ; $4a80: $27
	jr jr_035_4a19                                   ; $4a81: $18 $96

	rst $38                                          ; $4a83: $ff
	inc b                                            ; $4a84: $04
	cp [hl]                                          ; $4a85: $be
	inc c                                            ; $4a86: $0c
	ld [hl+], a                                      ; $4a87: $22
	rra                                              ; $4a88: $1f

jr_035_4a89:
	dec h                                            ; $4a89: $25
	inc h                                            ; $4a8a: $24
	dec h                                            ; $4a8b: $25
	ld h, $be                                        ; $4a8c: $26 $be
	or l                                             ; $4a8e: $b5
	or c                                             ; $4a8f: $b1
	ld [bc], a                                       ; $4a90: $02
	inc c                                            ; $4a91: $0c
	rlca                                             ; $4a92: $07
	daa                                              ; $4a93: $27
	inc c                                            ; $4a94: $0c
	or c                                             ; $4a95: $b1
	ld sp, $0000                                     ; $4a96: $31 $00 $00
	daa                                              ; $4a99: $27
	inc c                                            ; $4a9a: $0c
	or c                                             ; $4a9b: $b1
	ld [hl], c                                       ; $4a9c: $71
	rst $38                                          ; $4a9d: $ff
	inc b                                            ; $4a9e: $04
	ld a, [hl]                                       ; $4a9f: $7e
	ld a, [bc]                                       ; $4aa0: $0a
	nop                                              ; $4aa1: $00
	and c                                            ; $4aa2: $a1
	rra                                              ; $4aa3: $1f
	inc c                                            ; $4aa4: $0c
	ld hl, $230c                                     ; $4aa5: $21 $0c $23
	inc c                                            ; $4aa8: $0c
	ld a, [hl]                                       ; $4aa9: $7e
	ld a, [bc]                                       ; $4aaa: $0a
	nop                                              ; $4aab: $00
	and b                                            ; $4aac: $a0
	dec h                                            ; $4aad: $25
	inc c                                            ; $4aae: $0c
	daa                                              ; $4aaf: $27
	inc c                                            ; $4ab0: $0c
	add hl, hl                                       ; $4ab1: $29
	inc c                                            ; $4ab2: $0c
	daa                                              ; $4ab3: $27
	inc c                                            ; $4ab4: $0c
	dec h                                            ; $4ab5: $25
	inc c                                            ; $4ab6: $0c
	ld a, [hl]                                       ; $4ab7: $7e
	ld a, [bc]                                       ; $4ab8: $0a
	nop                                              ; $4ab9: $00
	and c                                            ; $4aba: $a1
	cp [hl]                                          ; $4abb: $be
	inc c                                            ; $4abc: $0c
	inc hl                                           ; $4abd: $23
	ld hl, $1d1f                                     ; $4abe: $21 $1f $1d
	rla                                              ; $4ac1: $17
	cp [hl]                                          ; $4ac2: $be
	ld a, [hl]                                       ; $4ac3: $7e
	ld [bc], a                                       ; $4ac4: $02
	nop                                              ; $4ac5: $00
	and b                                            ; $4ac6: $a0
	rla                                              ; $4ac7: $17
	inc c                                            ; $4ac8: $0c
	or c                                             ; $4ac9: $b1
	ld hl, $0000                                     ; $4aca: $21 $00 $00
	ld d, $0c                                        ; $4acd: $16 $0c
	ld a, [hl]                                       ; $4acf: $7e
	nop                                              ; $4ad0: $00
	nop                                              ; $4ad1: $00
	inc c                                            ; $4ad2: $0c
	or c                                             ; $4ad3: $b1
	add c                                            ; $4ad4: $81
	rst $38                                          ; $4ad5: $ff
	rlca                                             ; $4ad6: $07
	ld d, $16                                        ; $4ad7: $16 $16
	jp $0216                                         ; $4ad9: $c3 $16 $02


	or c                                             ; $4adc: $b1
	sub c                                            ; $4add: $91
	rst $38                                          ; $4ade: $ff
	rlca                                             ; $4adf: $07
	ld a, [hl]                                       ; $4ae0: $7e
	ld bc, $a900                                     ; $4ae1: $01 $00 $a9
	dec de                                           ; $4ae4: $1b
	ld [hl+], a                                      ; $4ae5: $22
	jp $021b                                         ; $4ae6: $c3 $1b $02


	or c                                             ; $4ae9: $b1
	sub c                                            ; $4aea: $91
	rst $38                                          ; $4aeb: $ff
	rlca                                             ; $4aec: $07
	dec de                                           ; $4aed: $1b
	inc c                                            ; $4aee: $0c
	jp nz, $0c1b                                     ; $4aef: $c2 $1b $0c

	or c                                             ; $4af2: $b1
	sub c                                            ; $4af3: $91
	rst $38                                          ; $4af4: $ff
	inc bc                                           ; $4af5: $03
	dec de                                           ; $4af6: $1b
	dec bc                                           ; $4af7: $0b
	nop                                              ; $4af8: $00
	ld bc, $0c1b                                     ; $4af9: $01 $1b $0c
	sub [hl]                                         ; $4afc: $96
	rst $38                                          ; $4afd: $ff
	ld bc, $061a                                     ; $4afe: $01 $1a $06
	sub [hl]                                         ; $4b01: $96
	rst $38                                          ; $4b02: $ff
	rlca                                             ; $4b03: $07
	dec de                                           ; $4b04: $1b
	inc c                                            ; $4b05: $0c
	or c                                             ; $4b06: $b1
	ld hl, $0000                                     ; $4b07: $21 $00 $00
	dec de                                           ; $4b0a: $1b
	inc c                                            ; $4b0b: $0c
	pop bc                                           ; $4b0c: $c1
	dec de                                           ; $4b0d: $1b
	inc c                                            ; $4b0e: $0c
	pop bc                                           ; $4b0f: $c1
	nop                                              ; $4b10: $00
	ld [de], a                                       ; $4b11: $12
	or l                                             ; $4b12: $b5
	pop de                                           ; $4b13: $d1
	inc bc                                           ; $4b14: $03
	rst $38                                          ; $4b15: $ff
	ld [bc], a                                       ; $4b16: $02
	inc h                                            ; $4b17: $24
	ld b, $96                                        ; $4b18: $06 $96
	rst $38                                          ; $4b1a: $ff
	ld bc, $0620                                     ; $4b1b: $01 $20 $06
	sub [hl]                                         ; $4b1e: $96
	rst $38                                          ; $4b1f: $ff
	ld [bc], a                                       ; $4b20: $02
	dec de                                           ; $4b21: $1b
	inc c                                            ; $4b22: $0c
	dec de                                           ; $4b23: $1b
	inc c                                            ; $4b24: $0c
	sub [hl]                                         ; $4b25: $96
	rst $38                                          ; $4b26: $ff
	rlca                                             ; $4b27: $07
	jr nz, jr_035_4b30                               ; $4b28: $20 $06

	sub [hl]                                         ; $4b2a: $96
	rst $38                                          ; $4b2b: $ff
	ld [bc], a                                       ; $4b2c: $02
	inc h                                            ; $4b2d: $24
	inc c                                            ; $4b2e: $0c
	sub [hl]                                         ; $4b2f: $96

jr_035_4b30:
	rst $38                                          ; $4b30: $ff
	ld bc, $0624                                     ; $4b31: $01 $24 $06
	or c                                             ; $4b34: $b1
	or c                                             ; $4b35: $b1
	rst $38                                          ; $4b36: $ff
	ld b, $26                                        ; $4b37: $06 $26
	inc c                                            ; $4b39: $0c
	sub [hl]                                         ; $4b3a: $96
	rst $38                                          ; $4b3b: $ff
	inc bc                                           ; $4b3c: $03
	inc h                                            ; $4b3d: $24
	ld b, $96                                        ; $4b3e: $06 $96
	rst $38                                          ; $4b40: $ff
	ld bc, $0626                                     ; $4b41: $01 $26 $06
	sub [hl]                                         ; $4b44: $96
	rst $38                                          ; $4b45: $ff
	inc bc                                           ; $4b46: $03
	inc h                                            ; $4b47: $24
	ld b, $96                                        ; $4b48: $06 $96
	rst $38                                          ; $4b4a: $ff
	ld bc, $0626                                     ; $4b4b: $01 $26 $06
	or c                                             ; $4b4e: $b1
	pop de                                           ; $4b4f: $d1
	rst $38                                          ; $4b50: $ff
	rlca                                             ; $4b51: $07
	ld [hl+], a                                      ; $4b52: $22
	ld b, $96                                        ; $4b53: $06 $96
	rst $38                                          ; $4b55: $ff
	ld bc, $061f                                     ; $4b56: $01 $1f $06
	or c                                             ; $4b59: $b1
	or c                                             ; $4b5a: $b1
	rst $38                                          ; $4b5b: $ff
	ld [bc], a                                       ; $4b5c: $02
	dec de                                           ; $4b5d: $1b
	inc c                                            ; $4b5e: $0c
	dec de                                           ; $4b5f: $1b
	inc c                                            ; $4b60: $0c
	or c                                             ; $4b61: $b1
	pop de                                           ; $4b62: $d1
	rst $38                                          ; $4b63: $ff
	rlca                                             ; $4b64: $07
	rra                                              ; $4b65: $1f
	ld b, $96                                        ; $4b66: $06 $96
	rst $38                                          ; $4b68: $ff
	ld [bc], a                                       ; $4b69: $02
	ld [hl+], a                                      ; $4b6a: $22
	inc c                                            ; $4b6b: $0c
	sub [hl]                                         ; $4b6c: $96
	rst $38                                          ; $4b6d: $ff
	ld bc, $0622                                     ; $4b6e: $01 $22 $06
	sub [hl]                                         ; $4b71: $96
	rst $38                                          ; $4b72: $ff
	ld bc, $06be                                     ; $4b73: $01 $be $06
	inc h                                            ; $4b76: $24
	inc h                                            ; $4b77: $24
	ld h, $26                                        ; $4b78: $26 $26
	daa                                              ; $4b7a: $27
	daa                                              ; $4b7b: $27
	cp [hl]                                          ; $4b7c: $be
	sub [hl]                                         ; $4b7d: $96
	rst $38                                          ; $4b7e: $ff
	ld b, $1d                                        ; $4b7f: $06 $1d
	ld b, $96                                        ; $4b81: $06 $96
	rst $38                                          ; $4b83: $ff
	ld bc, $0622                                     ; $4b84: $01 $22 $06
	sub [hl]                                         ; $4b87: $96
	rst $38                                          ; $4b88: $ff
	ld [bc], a                                       ; $4b89: $02
	jr nz, jr_035_4b98                               ; $4b8a: $20 $0c

	call z, $0c20                                    ; $4b8c: $cc $20 $0c
	rra                                              ; $4b8f: $1f
	ld b, $b1                                        ; $4b90: $06 $b1
	pop de                                           ; $4b92: $d1
	rst $38                                          ; $4b93: $ff
	ld [bc], a                                       ; $4b94: $02
	dec e                                            ; $4b95: $1d
	inc c                                            ; $4b96: $0c
	sub [hl]                                         ; $4b97: $96

jr_035_4b98:
	rst $38                                          ; $4b98: $ff
	ld bc, $061d                                     ; $4b99: $01 $1d $06
	or c                                             ; $4b9c: $b1
	or c                                             ; $4b9d: $b1
	rst $38                                          ; $4b9e: $ff
	ld b, $7e                                        ; $4b9f: $06 $7e
	ld bc, $a900                                     ; $4ba1: $01 $00 $a9
	rra                                              ; $4ba4: $1f
	inc c                                            ; $4ba5: $0c
	or c                                             ; $4ba6: $b1
	pop de                                           ; $4ba7: $d1
	rst $38                                          ; $4ba8: $ff
	ld bc, $007e                                     ; $4ba9: $01 $7e $00
	cp [hl]                                          ; $4bac: $be
	ld b, $1d                                        ; $4bad: $06 $1d
	rra                                              ; $4baf: $1f
	dec e                                            ; $4bb0: $1d
	rra                                              ; $4bb1: $1f
	cp [hl]                                          ; $4bb2: $be
	sub [hl]                                         ; $4bb3: $96
	rst $38                                          ; $4bb4: $ff
	ld [bc], a                                       ; $4bb5: $02
	cp [hl]                                          ; $4bb6: $be
	ld b, $1b                                        ; $4bb7: $06 $1b
	dec e                                            ; $4bb9: $1d
	rra                                              ; $4bba: $1f
	ld [hl+], a                                      ; $4bbb: $22
	rra                                              ; $4bbc: $1f
	ld [hl+], a                                      ; $4bbd: $22
	inc h                                            ; $4bbe: $24
	cp [hl]                                          ; $4bbf: $be
	or c                                             ; $4bc0: $b1
	pop bc                                           ; $4bc1: $c1
	rst $38                                          ; $4bc2: $ff
	rlca                                             ; $4bc3: $07
	daa                                              ; $4bc4: $27
	ld b, $b1                                        ; $4bc5: $06 $b1
	ld sp, $0000                                     ; $4bc7: $31 $00 $00
	daa                                              ; $4bca: $27
	ld b, $b1                                        ; $4bcb: $06 $b1
	pop de                                           ; $4bcd: $d1
	rst $38                                          ; $4bce: $ff
	ld bc, $0627                                     ; $4bcf: $01 $27 $06
	sub [hl]                                         ; $4bd2: $96
	rst $38                                          ; $4bd3: $ff
	dec b                                            ; $4bd4: $05
	dec h                                            ; $4bd5: $25
	inc c                                            ; $4bd6: $0c
	inc h                                            ; $4bd7: $24
	inc c                                            ; $4bd8: $0c
	ld [hl+], a                                      ; $4bd9: $22
	inc c                                            ; $4bda: $0c
	or l                                             ; $4bdb: $b5
	pop de                                           ; $4bdc: $d1
	inc bc                                           ; $4bdd: $03
	rst $38                                          ; $4bde: $ff
	ld [bc], a                                       ; $4bdf: $02
	inc h                                            ; $4be0: $24
	ld b, $96                                        ; $4be1: $06 $96
	rst $38                                          ; $4be3: $ff
	ld bc, $0620                                     ; $4be4: $01 $20 $06
	sub [hl]                                         ; $4be7: $96
	rst $38                                          ; $4be8: $ff
	ld [bc], a                                       ; $4be9: $02
	dec de                                           ; $4bea: $1b
	inc c                                            ; $4beb: $0c
	dec de                                           ; $4bec: $1b
	inc c                                            ; $4bed: $0c
	sub [hl]                                         ; $4bee: $96
	rst $38                                          ; $4bef: $ff
	rlca                                             ; $4bf0: $07
	jr nz, jr_035_4bf9                               ; $4bf1: $20 $06

	sub [hl]                                         ; $4bf3: $96
	rst $38                                          ; $4bf4: $ff
	ld bc, $0624                                     ; $4bf5: $01 $24 $06
	or c                                             ; $4bf8: $b1

jr_035_4bf9:
	ld sp, $0000                                     ; $4bf9: $31 $00 $00
	inc h                                            ; $4bfc: $24
	ld b, $b1                                        ; $4bfd: $06 $b1
	pop bc                                           ; $4bff: $c1
	rst $38                                          ; $4c00: $ff
	ld bc, $0624                                     ; $4c01: $01 $24 $06
	sub [hl]                                         ; $4c04: $96
	rst $38                                          ; $4c05: $ff
	ld b, $26                                        ; $4c06: $06 $26
	inc c                                            ; $4c08: $0c
	sub [hl]                                         ; $4c09: $96
	rst $38                                          ; $4c0a: $ff
	ld [bc], a                                       ; $4c0b: $02
	inc h                                            ; $4c0c: $24
	ld b, $96                                        ; $4c0d: $06 $96
	rst $38                                          ; $4c0f: $ff
	ld bc, $0626                                     ; $4c10: $01 $26 $06
	sub [hl]                                         ; $4c13: $96
	rst $38                                          ; $4c14: $ff
	ld [bc], a                                       ; $4c15: $02
	inc h                                            ; $4c16: $24
	ld b, $96                                        ; $4c17: $06 $96
	rst $38                                          ; $4c19: $ff
	ld bc, $0626                                     ; $4c1a: $01 $26 $06
	sub [hl]                                         ; $4c1d: $96
	rst $38                                          ; $4c1e: $ff
	rlca                                             ; $4c1f: $07
	ld [hl+], a                                      ; $4c20: $22
	inc c                                            ; $4c21: $0c
	or c                                             ; $4c22: $b1
	ld sp, $0000                                     ; $4c23: $31 $00 $00
	ld [hl+], a                                      ; $4c26: $22
	inc c                                            ; $4c27: $0c
	or l                                             ; $4c28: $b5
	pop de                                           ; $4c29: $d1
	nop                                              ; $4c2a: $00
	rst $38                                          ; $4c2b: $ff
	inc bc                                           ; $4c2c: $03
	dec e                                            ; $4c2d: $1d
	ld [de], a                                       ; $4c2e: $12
	sub [hl]                                         ; $4c2f: $96
	rst $38                                          ; $4c30: $ff
	ld [bc], a                                       ; $4c31: $02
	dec e                                            ; $4c32: $1d
	ld b, $b1                                        ; $4c33: $06 $b1
	pop hl                                           ; $4c35: $e1
	rst $38                                          ; $4c36: $ff
	inc bc                                           ; $4c37: $03
	ld a, [hl]                                       ; $4c38: $7e
	dec b                                            ; $4c39: $05
	nop                                              ; $4c3a: $00
	and b                                            ; $4c3b: $a0
	cp [hl]                                          ; $4c3c: $be
	inc c                                            ; $4c3d: $0c
	ld [hl+], a                                      ; $4c3e: $22
	jr nz, @+$21                                     ; $4c3f: $20 $1f

	dec e                                            ; $4c41: $1d
	cp [hl]                                          ; $4c42: $be
	ld a, [hl]                                       ; $4c43: $7e
	nop                                              ; $4c44: $00
	cp $ff                                           ; $4c45: $fe $ff
	ret nc                                           ; $4c47: $d0

	ld e, [hl]                                       ; $4c48: $5e
	cp $c2                                           ; $4c49: $fe $c2
	ld a, [hl]                                       ; $4c4b: $7e
	nop                                              ; $4c4c: $00
	add e                                            ; $4c4d: $83
	rrca                                             ; $4c4e: $0f
	inc c                                            ; $4c4f: $0c
	call nz, $060f                                   ; $4c50: $c4 $0f $06
	add $0f                                          ; $4c53: $c6 $0f
	ld b, $00                                        ; $4c55: $06 $00
	ld c, b                                          ; $4c57: $48
	jp nz, $017e                                     ; $4c58: $c2 $7e $01

	nop                                              ; $4c5b: $00
	and d                                            ; $4c5c: $a2
	rrca                                             ; $4c5d: $0f
	ld c, b                                          ; $4c5e: $48
	call nz, $0c0f                                   ; $4c5f: $c4 $0f $0c
	add $0f                                          ; $4c62: $c6 $0f
	inc c                                            ; $4c64: $0c
	add $0f                                          ; $4c65: $c6 $0f
	inc c                                            ; $4c67: $0c
	ld a, [hl]                                       ; $4c68: $7e
	dec b                                            ; $4c69: $05
	nop                                              ; $4c6a: $00
	and b                                            ; $4c6b: $a0
	jp nz, $0c1b                                     ; $4c6c: $c2 $1b $0c

	add $1b                                          ; $4c6f: $c6 $1b
	inc c                                            ; $4c71: $0c
	jp nz, $0c1b                                     ; $4c72: $c2 $1b $0c

	add $1b                                          ; $4c75: $c6 $1b
	inc c                                            ; $4c77: $0c
	jp nz, $0c1b                                     ; $4c78: $c2 $1b $0c

	add $1b                                          ; $4c7b: $c6 $1b
	inc c                                            ; $4c7d: $0c
	jp nz, $0c1b                                     ; $4c7e: $c2 $1b $0c

	add $1b                                          ; $4c81: $c6 $1b
	inc c                                            ; $4c83: $0c
	jp nz, $0c1b                                     ; $4c84: $c2 $1b $0c

	add $1b                                          ; $4c87: $c6 $1b
	inc c                                            ; $4c89: $0c
	jp nz, $050f                                     ; $4c8a: $c2 $0f $05

	nop                                              ; $4c8d: $00
	ld bc, $111b                                     ; $4c8e: $01 $1b $11
	nop                                              ; $4c91: $00
	ld bc, $0b19                                     ; $4c92: $01 $19 $0b
	nop                                              ; $4c95: $00
	ld bc, $0b18                                     ; $4c96: $01 $18 $0b
	nop                                              ; $4c99: $00
	ld bc, $0b16                                     ; $4c9a: $01 $16 $0b
	nop                                              ; $4c9d: $00
	ld bc, $83c2                                     ; $4c9e: $01 $c2 $83
	ld a, [hl]                                       ; $4ca1: $7e
	nop                                              ; $4ca2: $00
	inc d                                            ; $4ca3: $14
	ld b, $c6                                        ; $4ca4: $06 $c6
	inc d                                            ; $4ca6: $14
	ld b, $c2                                        ; $4ca7: $06 $c2
	inc d                                            ; $4ca9: $14
	ld b, $c6                                        ; $4caa: $06 $c6
	inc d                                            ; $4cac: $14
	ld b, $c2                                        ; $4cad: $06 $c2
	inc d                                            ; $4caf: $14
	inc c                                            ; $4cb0: $0c
	jr @+$07                                         ; $4cb1: $18 $05

	nop                                              ; $4cb3: $00
	ld bc, $0614                                     ; $4cb4: $01 $14 $06
	add $14                                          ; $4cb7: $c6 $14
	ld b, $c2                                        ; $4cb9: $06 $c2
	inc d                                            ; $4cbb: $14
	ld b, $c6                                        ; $4cbc: $06 $c6
	inc d                                            ; $4cbe: $14
	ld b, $c2                                        ; $4cbf: $06 $c2
	inc d                                            ; $4cc1: $14
	dec b                                            ; $4cc2: $05
	nop                                              ; $4cc3: $00
	ld bc, $0c14                                     ; $4cc4: $01 $14 $0c
	rrca                                             ; $4cc7: $0f
	dec b                                            ; $4cc8: $05
	nop                                              ; $4cc9: $00
	ld bc, $0518                                     ; $4cca: $01 $18 $05
	nop                                              ; $4ccd: $00
	ld bc, $0614                                     ; $4cce: $01 $14 $06
	add $14                                          ; $4cd1: $c6 $14
	ld b, $c2                                        ; $4cd3: $06 $c2
	inc d                                            ; $4cd5: $14
	ld b, $c6                                        ; $4cd6: $06 $c6
	inc d                                            ; $4cd8: $14
	ld b, $c2                                        ; $4cd9: $06 $c2
	inc d                                            ; $4cdb: $14
	inc c                                            ; $4cdc: $0c
	jr @+$07                                         ; $4cdd: $18 $05

	nop                                              ; $4cdf: $00
	ld bc, $061b                                     ; $4ce0: $01 $1b $06
	add $1b                                          ; $4ce3: $c6 $1b
	ld b, $c2                                        ; $4ce5: $06 $c2
	dec de                                           ; $4ce7: $1b
	dec b                                            ; $4ce8: $05
	nop                                              ; $4ce9: $00
	ld bc, $0b19                                     ; $4cea: $01 $19 $0b
	nop                                              ; $4ced: $00
	ld bc, $0b18                                     ; $4cee: $01 $18 $0b
	nop                                              ; $4cf1: $00
	ld bc, $0b14                                     ; $4cf2: $01 $14 $0b
	nop                                              ; $4cf5: $00
	ld bc, $060f                                     ; $4cf6: $01 $0f $06
	add $0f                                          ; $4cf9: $c6 $0f
	ld b, $c2                                        ; $4cfb: $06 $c2
	rrca                                             ; $4cfd: $0f
	ld b, $c6                                        ; $4cfe: $06 $c6
	rrca                                             ; $4d00: $0f
	ld b, $c2                                        ; $4d01: $06 $c2
	rrca                                             ; $4d03: $0f
	inc c                                            ; $4d04: $0c
	ld d, $05                                        ; $4d05: $16 $05
	nop                                              ; $4d07: $00
	ld bc, $060f                                     ; $4d08: $01 $0f $06
	add $0f                                          ; $4d0b: $c6 $0f
	dec b                                            ; $4d0d: $05
	jp nz, Boot                                      ; $4d0e: $c2 $00 $01

	rrca                                             ; $4d11: $0f
	ld b, $7e                                        ; $4d12: $06 $7e
	dec b                                            ; $4d14: $05
	nop                                              ; $4d15: $00
	and c                                            ; $4d16: $a1
	ld d, $0b                                        ; $4d17: $16 $0b
	ld a, [hl]                                       ; $4d19: $7e
	nop                                              ; $4d1a: $00
	nop                                              ; $4d1b: $00
	ld bc, $0b14                                     ; $4d1c: $01 $14 $0b
	nop                                              ; $4d1f: $00
	ld bc, $0b13                                     ; $4d20: $01 $13 $0b
	nop                                              ; $4d23: $00
	ld bc, $060f                                     ; $4d24: $01 $0f $06
	add $0f                                          ; $4d27: $c6 $0f
	ld b, $c2                                        ; $4d29: $06 $c2
	rrca                                             ; $4d2b: $0f
	ld b, $c6                                        ; $4d2c: $06 $c6
	rrca                                             ; $4d2e: $0f
	ld b, $c2                                        ; $4d2f: $06 $c2
	rrca                                             ; $4d31: $0f
	dec bc                                           ; $4d32: $0b
	nop                                              ; $4d33: $00
	ld bc, $0516                                     ; $4d34: $01 $16 $05
	nop                                              ; $4d37: $00
	ld bc, $060f                                     ; $4d38: $01 $0f $06
	add $0f                                          ; $4d3b: $c6 $0f
	ld b, $c2                                        ; $4d3d: $06 $c2
	rrca                                             ; $4d3f: $0f
	dec b                                            ; $4d40: $05
	nop                                              ; $4d41: $00
	ld bc, $0b0a                                     ; $4d42: $01 $0a $0b
	nop                                              ; $4d45: $00
	ld bc, $0b0f                                     ; $4d46: $01 $0f $0b
	nop                                              ; $4d49: $00
	ld bc, $057e                                     ; $4d4a: $01 $7e $05
	nop                                              ; $4d4d: $00
	and c                                            ; $4d4e: $a1
	inc de                                           ; $4d4f: $13
	dec bc                                           ; $4d50: $0b
	nop                                              ; $4d51: $00
	ld bc, $007e                                     ; $4d52: $01 $7e $00
	jp nz, Jump_035_7e83                             ; $4d55: $c2 $83 $7e

	nop                                              ; $4d58: $00
	ld d, $06                                        ; $4d59: $16 $06
	add $16                                          ; $4d5b: $c6 $16
	ld b, $c2                                        ; $4d5d: $06 $c2
	ld d, $06                                        ; $4d5f: $16 $06
	add $16                                          ; $4d61: $c6 $16
	ld b, $c2                                        ; $4d63: $06 $c2
	ld d, $0c                                        ; $4d65: $16 $0c
	ld c, $05                                        ; $4d67: $0e $05
	nop                                              ; $4d69: $00
	ld bc, $0611                                     ; $4d6a: $01 $11 $06
	add $11                                          ; $4d6d: $c6 $11
	ld b, $c2                                        ; $4d6f: $06 $c2
	ld de, $0005                                     ; $4d71: $11 $05 $00
	ld bc, $0b0f                                     ; $4d74: $01 $0f $0b
	nop                                              ; $4d77: $00
	ld bc, $0b0e                                     ; $4d78: $01 $0e $0b
	nop                                              ; $4d7b: $00
	ld bc, $0b0a                                     ; $4d7c: $01 $0a $0b
	nop                                              ; $4d7f: $00
	ld bc, $0614                                     ; $4d80: $01 $14 $06
	add $14                                          ; $4d83: $c6 $14
	ld b, $c2                                        ; $4d85: $06 $c2
	inc d                                            ; $4d87: $14
	ld b, $c6                                        ; $4d88: $06 $c6
	inc d                                            ; $4d8a: $14
	ld b, $c2                                        ; $4d8b: $06 $c2
	inc d                                            ; $4d8d: $14
	inc c                                            ; $4d8e: $0c
	rla                                              ; $4d8f: $17
	dec b                                            ; $4d90: $05
	nop                                              ; $4d91: $00
	ld bc, $0614                                     ; $4d92: $01 $14 $06
	add $14                                          ; $4d95: $c6 $14
	ld b, $c2                                        ; $4d97: $06 $c2
	inc d                                            ; $4d99: $14
	dec b                                            ; $4d9a: $05
	nop                                              ; $4d9b: $00
	ld bc, $0b17                                     ; $4d9c: $01 $17 $0b
	nop                                              ; $4d9f: $00
	ld bc, $0b19                                     ; $4da0: $01 $19 $0b
	nop                                              ; $4da3: $00
	ld bc, $0b1a                                     ; $4da4: $01 $1a $0b
	nop                                              ; $4da7: $00
	ld bc, $060f                                     ; $4da8: $01 $0f $06
	add $0f                                          ; $4dab: $c6 $0f
	ld b, $c2                                        ; $4dad: $06 $c2
	rrca                                             ; $4daf: $0f
	ld b, $c6                                        ; $4db0: $06 $c6
	rrca                                             ; $4db2: $0f
	ld b, $c2                                        ; $4db3: $06 $c2
	rrca                                             ; $4db5: $0f
	inc c                                            ; $4db6: $0c
	ld d, $05                                        ; $4db7: $16 $05
	nop                                              ; $4db9: $00
	ld bc, $060f                                     ; $4dba: $01 $0f $06
	add $0f                                          ; $4dbd: $c6 $0f
	ld b, $c2                                        ; $4dbf: $06 $c2
	rrca                                             ; $4dc1: $0f
	ld b, $c6                                        ; $4dc2: $06 $c6
	rrca                                             ; $4dc4: $0f
	ld b, $c2                                        ; $4dc5: $06 $c2
	rrca                                             ; $4dc7: $0f
	dec b                                            ; $4dc8: $05
	nop                                              ; $4dc9: $00
	ld bc, $0b0f                                     ; $4dca: $01 $0f $0b
	nop                                              ; $4dcd: $00
	ld bc, $0b0a                                     ; $4dce: $01 $0a $0b
	nop                                              ; $4dd1: $00
	ld bc, $060f                                     ; $4dd2: $01 $0f $06
	add $0f                                          ; $4dd5: $c6 $0f
	ld b, $c2                                        ; $4dd7: $06 $c2
	rrca                                             ; $4dd9: $0f
	ld b, $c6                                        ; $4dda: $06 $c6
	rrca                                             ; $4ddc: $0f
	ld b, $c2                                        ; $4ddd: $06 $c2
	rrca                                             ; $4ddf: $0f
	inc c                                            ; $4de0: $0c
	ld d, $05                                        ; $4de1: $16 $05
	nop                                              ; $4de3: $00
	ld bc, $060f                                     ; $4de4: $01 $0f $06
	add $0f                                          ; $4de7: $c6 $0f
	ld b, $c2                                        ; $4de9: $06 $c2
	rrca                                             ; $4deb: $0f
	dec b                                            ; $4dec: $05
	nop                                              ; $4ded: $00
	ld bc, $050f                                     ; $4dee: $01 $0f $05
	nop                                              ; $4df1: $00
	ld bc, $050f                                     ; $4df2: $01 $0f $05
	nop                                              ; $4df5: $00
	ld bc, $0b0f                                     ; $4df6: $01 $0f $0b
	nop                                              ; $4df9: $00
	ld bc, $0b0a                                     ; $4dfa: $01 $0a $0b
	nop                                              ; $4dfd: $00
	ld bc, $81c2                                     ; $4dfe: $01 $c2 $81
	ld a, [hl]                                       ; $4e01: $7e
	nop                                              ; $4e02: $00
	rrca                                             ; $4e03: $0f
	ld a, [bc]                                       ; $4e04: $0a
	call nz, $020f                                   ; $4e05: $c4 $0f $02
	jp nz, $0a11                                     ; $4e08: $c2 $11 $0a

	call nz, $020f                                   ; $4e0b: $c4 $0f $02
	jp nz, $0a13                                     ; $4e0e: $c2 $13 $0a

	call nz, $0211                                   ; $4e11: $c4 $11 $02
	jp nz, $0a15                                     ; $4e14: $c2 $15 $0a

	call nz, $0213                                   ; $4e17: $c4 $13 $02
	jp nz, $0a17                                     ; $4e1a: $c2 $17 $0a

	call nz, $0215                                   ; $4e1d: $c4 $15 $02
	jp nz, $0a19                                     ; $4e20: $c2 $19 $0a

	call nz, $0217                                   ; $4e23: $c4 $17 $02
	jp nz, $0a1b                                     ; $4e26: $c2 $1b $0a

	call nz, $0219                                   ; $4e29: $c4 $19 $02
	jp nz, $0a1d                                     ; $4e2c: $c2 $1d $0a

	call nz, $021b                                   ; $4e2f: $c4 $1b $02
	jp nz, $0a1b                                     ; $4e32: $c2 $1b $0a

	call nz, $021d                                   ; $4e35: $c4 $1d $02
	jp nz, $0a19                                     ; $4e38: $c2 $19 $0a

	call nz, $021b                                   ; $4e3b: $c4 $1b $02
	jp nz, $0a17                                     ; $4e3e: $c2 $17 $0a

	call nz, $0219                                   ; $4e41: $c4 $19 $02
	jp nz, $0a15                                     ; $4e44: $c2 $15 $0a

	call nz, $0217                                   ; $4e47: $c4 $17 $02
	jp nz, $0a13                                     ; $4e4a: $c2 $13 $0a

	call nz, $0215                                   ; $4e4d: $c4 $15 $02
	jp nz, $0a11                                     ; $4e50: $c2 $11 $0a

	call nz, $0213                                   ; $4e53: $c4 $13 $02
	jp nz, $017e                                     ; $4e56: $c2 $7e $01

	nop                                              ; $4e59: $00
	and b                                            ; $4e5a: $a0
	rla                                              ; $4e5b: $17
	ld [de], a                                       ; $4e5c: $12
	call nz, $0611                                   ; $4e5d: $c4 $11 $06
	ld a, [hl]                                       ; $4e60: $7e
	nop                                              ; $4e61: $00
	add e                                            ; $4e62: $83
	jp nz, $060f                                     ; $4e63: $c2 $0f $06

	add $0f                                          ; $4e66: $c6 $0f
	ld b, $c2                                        ; $4e68: $06 $c2
	rrca                                             ; $4e6a: $0f
	ld b, $c6                                        ; $4e6b: $06 $c6
	rrca                                             ; $4e6d: $0f
	ld b, $c2                                        ; $4e6e: $06 $c2
	rrca                                             ; $4e70: $0f
	inc c                                            ; $4e71: $0c
	ld d, $05                                        ; $4e72: $16 $05
	nop                                              ; $4e74: $00
	ld bc, $060f                                     ; $4e75: $01 $0f $06
	add $0f                                          ; $4e78: $c6 $0f
	ld b, $c2                                        ; $4e7a: $06 $c2
	rrca                                             ; $4e7c: $0f
	dec b                                            ; $4e7d: $05
	nop                                              ; $4e7e: $00
	ld bc, $0516                                     ; $4e7f: $01 $16 $05
	nop                                              ; $4e82: $00
	ld bc, $050a                                     ; $4e83: $01 $0a $05
	nop                                              ; $4e86: $00
	ld bc, $0b0f                                     ; $4e87: $01 $0f $0b
	nop                                              ; $4e8a: $00
	ld bc, $0b13                                     ; $4e8b: $01 $13 $0b
	nop                                              ; $4e8e: $00
	ld bc, $060f                                     ; $4e8f: $01 $0f $06
	add $0f                                          ; $4e92: $c6 $0f
	ld b, $c2                                        ; $4e94: $06 $c2
	rrca                                             ; $4e96: $0f
	ld b, $c6                                        ; $4e97: $06 $c6
	rrca                                             ; $4e99: $0f
	ld b, $c2                                        ; $4e9a: $06 $c2
	rrca                                             ; $4e9c: $0f
	inc c                                            ; $4e9d: $0c
	ld d, $05                                        ; $4e9e: $16 $05
	nop                                              ; $4ea0: $00
	ld bc, $0f0f                                     ; $4ea1: $01 $0f $0f
	call nz, $030f                                   ; $4ea4: $c4 $0f $03
	jp nz, $0b0d                                     ; $4ea7: $c2 $0d $0b

	nop                                              ; $4eaa: $00
	ld bc, $057e                                     ; $4eab: $01 $7e $05
	nop                                              ; $4eae: $00
	and c                                            ; $4eaf: $a1
	jr jr_035_4ebd                                   ; $4eb0: $18 $0b

	nop                                              ; $4eb2: $00
	ld bc, $007e                                     ; $4eb3: $01 $7e $00
	ld d, $0b                                        ; $4eb6: $16 $0b
	nop                                              ; $4eb8: $00
	ld bc, $83c2                                     ; $4eb9: $01 $c2 $83
	ld a, [hl]                                       ; $4ebc: $7e

jr_035_4ebd:
	nop                                              ; $4ebd: $00
	inc d                                            ; $4ebe: $14
	dec d                                            ; $4ebf: $15
	add $14                                          ; $4ec0: $c6 $14
	inc bc                                           ; $4ec2: $03
	jp nz, $1118                                     ; $4ec3: $c2 $18 $11

	nop                                              ; $4ec6: $00
	ld bc, $0619                                     ; $4ec7: $01 $19 $06
	add $19                                          ; $4eca: $c6 $19
	ld b, $c2                                        ; $4ecc: $06 $c2
	add hl, de                                       ; $4ece: $19
	ld b, $c6                                        ; $4ecf: $06 $c6
	add hl, de                                       ; $4ed1: $19
	ld b, $c2                                        ; $4ed2: $06 $c2
	add hl, de                                       ; $4ed4: $19
	dec b                                            ; $4ed5: $05
	nop                                              ; $4ed6: $00
	ld bc, $0b1a                                     ; $4ed7: $01 $1a $0b
	nop                                              ; $4eda: $00
	ld bc, $0b1a                                     ; $4edb: $01 $1a $0b
	nop                                              ; $4ede: $00
	ld bc, $057e                                     ; $4edf: $01 $7e $05
	nop                                              ; $4ee2: $00
	and b                                            ; $4ee3: $a0
	dec de                                           ; $4ee4: $1b
	dec d                                            ; $4ee5: $15
	add $1b                                          ; $4ee6: $c6 $1b
	inc bc                                           ; $4ee8: $03
	ld a, [hl]                                       ; $4ee9: $7e
	nop                                              ; $4eea: $00
	jp nz, $1113                                     ; $4eeb: $c2 $13 $11

	nop                                              ; $4eee: $00
	ld bc, $0614                                     ; $4eef: $01 $14 $06
	add $14                                          ; $4ef2: $c6 $14
	ld b, $c2                                        ; $4ef4: $06 $c2
	inc d                                            ; $4ef6: $14
	ld b, $c6                                        ; $4ef7: $06 $c6
	inc d                                            ; $4ef9: $14
	ld b, $c2                                        ; $4efa: $06 $c2
	dec d                                            ; $4efc: $15
	dec b                                            ; $4efd: $05
	nop                                              ; $4efe: $00
	ld bc, $0b16                                     ; $4eff: $01 $16 $0b
	nop                                              ; $4f02: $00
	ld bc, $0b13                                     ; $4f03: $01 $13 $0b
	nop                                              ; $4f06: $00
	ld bc, $017e                                     ; $4f07: $01 $7e $01
	nop                                              ; $4f0a: $00
	and b                                            ; $4f0b: $a0
	ld d, $15                                        ; $4f0c: $16 $15
	add $16                                          ; $4f0e: $c6 $16
	inc bc                                           ; $4f10: $03
	ld a, [hl]                                       ; $4f11: $7e
	nop                                              ; $4f12: $00
	jp nz, $110e                                     ; $4f13: $c2 $0e $11

	nop                                              ; $4f16: $00
	ld bc, $060f                                     ; $4f17: $01 $0f $06
	add $0f                                          ; $4f1a: $c6 $0f
	ld b, $c2                                        ; $4f1c: $06 $c2
	rrca                                             ; $4f1e: $0f
	ld b, $c6                                        ; $4f1f: $06 $c6
	rrca                                             ; $4f21: $0f
	ld b, $c2                                        ; $4f22: $06 $c2
	db $10                                           ; $4f24: $10
	dec b                                            ; $4f25: $05
	nop                                              ; $4f26: $00
	ld bc, $0b11                                     ; $4f27: $01 $11 $0b
	nop                                              ; $4f2a: $00
	ld bc, $0b14                                     ; $4f2b: $01 $14 $0b
	nop                                              ; $4f2e: $00
	ld bc, $017e                                     ; $4f2f: $01 $7e $01
	nop                                              ; $4f32: $00
	and b                                            ; $4f33: $a0
	inc de                                           ; $4f34: $13
	dec d                                            ; $4f35: $15
	add $13                                          ; $4f36: $c6 $13
	inc bc                                           ; $4f38: $03
	ld a, [hl]                                       ; $4f39: $7e
	nop                                              ; $4f3a: $00
	jp nz, $110f                                     ; $4f3b: $c2 $0f $11

	nop                                              ; $4f3e: $00
	ld bc, $060f                                     ; $4f3f: $01 $0f $06
	add $0f                                          ; $4f42: $c6 $0f
	ld b, $c2                                        ; $4f44: $06 $c2
	rrca                                             ; $4f46: $0f
	dec b                                            ; $4f47: $05
	nop                                              ; $4f48: $00
	ld bc, $057e                                     ; $4f49: $01 $7e $05
	nop                                              ; $4f4c: $00
	and b                                            ; $4f4d: $a0
	inc de                                           ; $4f4e: $13
	dec bc                                           ; $4f4f: $0b
	nop                                              ; $4f50: $00
	ld bc, $007e                                     ; $4f51: $01 $7e $00
	ld a, [bc]                                       ; $4f54: $0a
	dec bc                                           ; $4f55: $0b
	nop                                              ; $4f56: $00
	ld bc, $0b0f                                     ; $4f57: $01 $0f $0b
	nop                                              ; $4f5a: $00
	ld bc, $83c2                                     ; $4f5b: $01 $c2 $83
	ld a, [hl]                                       ; $4f5e: $7e
	dec b                                            ; $4f5f: $05
	nop                                              ; $4f60: $00
	and b                                            ; $4f61: $a0
	inc d                                            ; $4f62: $14
	dec d                                            ; $4f63: $15
	add $14                                          ; $4f64: $c6 $14
	inc bc                                           ; $4f66: $03
	ld a, [hl]                                       ; $4f67: $7e
	ld bc, $a000                                     ; $4f68: $01 $00 $a0
	jp nz, $1118                                     ; $4f6b: $c2 $18 $11

	nop                                              ; $4f6e: $00
	ld bc, $007e                                     ; $4f6f: $01 $7e $00
	inc d                                            ; $4f72: $14
	ld b, $c6                                        ; $4f73: $06 $c6
	inc d                                            ; $4f75: $14
	ld b, $c2                                        ; $4f76: $06 $c2
	inc d                                            ; $4f78: $14
	ld b, $c6                                        ; $4f79: $06 $c6
	inc d                                            ; $4f7b: $14
	ld b, $c2                                        ; $4f7c: $06 $c2
	inc d                                            ; $4f7e: $14
	dec b                                            ; $4f7f: $05
	nop                                              ; $4f80: $00
	ld bc, $057e                                     ; $4f81: $01 $7e $05
	nop                                              ; $4f84: $00
	and b                                            ; $4f85: $a0
	ld a, [de]                                       ; $4f86: $1a
	dec bc                                           ; $4f87: $0b
	nop                                              ; $4f88: $00
	ld bc, $0b18                                     ; $4f89: $01 $18 $0b
	nop                                              ; $4f8c: $00
	ld bc, $007e                                     ; $4f8d: $01 $7e $00
	ld d, $0c                                        ; $4f90: $16 $0c
	add $16                                          ; $4f92: $c6 $16
	inc c                                            ; $4f94: $0c
	jp nz, $0c11                                     ; $4f95: $c2 $11 $0c

	add $11                                          ; $4f98: $c6 $11
	ld b, $c2                                        ; $4f9a: $06 $c2
	ld de, $0005                                     ; $4f9c: $11 $05 $00
	ld bc, $057e                                     ; $4f9f: $01 $7e $05
	nop                                              ; $4fa2: $00
	and b                                            ; $4fa3: $a0
	ld d, $0b                                        ; $4fa4: $16 $0b
	nop                                              ; $4fa6: $00
	ld bc, $0b14                                     ; $4fa7: $01 $14 $0b
	nop                                              ; $4faa: $00
	ld bc, $0b13                                     ; $4fab: $01 $13 $0b
	nop                                              ; $4fae: $00
	ld bc, $0b11                                     ; $4faf: $01 $11 $0b
	nop                                              ; $4fb2: $00
	ld bc, $fffe                                     ; $4fb3: $01 $fe $ff
	ret nc                                           ; $4fb6: $d0

	ld e, [hl]                                       ; $4fb7: $5e
	cp $14                                           ; $4fb8: $fe $14
	jr jr_035_4fbc                                   ; $4fba: $18 $00

jr_035_4fbc:
	ld c, b                                          ; $4fbc: $48
	inc d                                            ; $4fbd: $14
	jr nc, jr_035_4fde                               ; $4fbe: $30 $1e

	jr jr_035_4fe0                                   ; $4fc0: $18 $1e

	jr @-$40                                         ; $4fc2: $18 $be

	inc c                                            ; $4fc4: $0c
	add hl, bc                                       ; $4fc5: $09
	inc c                                            ; $4fc6: $0c
	add hl, bc                                       ; $4fc7: $09
	inc c                                            ; $4fc8: $0c
	add hl, bc                                       ; $4fc9: $09
	inc c                                            ; $4fca: $0c
	add hl, bc                                       ; $4fcb: $09
	inc c                                            ; $4fcc: $0c
	cp [hl]                                          ; $4fcd: $be
	add hl, bc                                       ; $4fce: $09
	inc c                                            ; $4fcf: $0c
	inc c                                            ; $4fd0: $0c
	inc c                                            ; $4fd1: $0c
	add hl, bc                                       ; $4fd2: $09
	inc c                                            ; $4fd3: $0c
	inc c                                            ; $4fd4: $0c
	ld b, $14                                        ; $4fd5: $06 $14
	inc c                                            ; $4fd7: $0c
	cp [hl]                                          ; $4fd8: $be
	ld b, $0d                                        ; $4fd9: $06 $0d
	inc c                                            ; $4fdb: $0c
	inc de                                           ; $4fdc: $13
	inc c                                            ; $4fdd: $0c

jr_035_4fde:
	inc de                                           ; $4fde: $13
	inc c                                            ; $4fdf: $0c

jr_035_4fe0:
	inc c                                            ; $4fe0: $0c
	cp [hl]                                          ; $4fe1: $be
	inc d                                            ; $4fe2: $14
	inc c                                            ; $4fe3: $0c
	inc c                                            ; $4fe4: $0c
	ld b, $09                                        ; $4fe5: $06 $09
	ld b, $fb                                        ; $4fe7: $06 $fb
	cp [hl]                                          ; $4fe9: $be
	ld b, $09                                        ; $4fea: $06 $09
	ld [de], a                                       ; $4fec: $12
	inc c                                            ; $4fed: $0c
	add hl, bc                                       ; $4fee: $09
	cp [hl]                                          ; $4fef: $be
	ei                                               ; $4ff0: $fb
	ld b, $be                                        ; $4ff1: $06 $be
	ld b, $09                                        ; $4ff3: $06 $09
	ld [de], a                                       ; $4ff5: $12
	inc c                                            ; $4ff6: $0c
	inc c                                            ; $4ff7: $0c
	cp [hl]                                          ; $4ff8: $be
	cp [hl]                                          ; $4ff9: $be
	ld b, $09                                        ; $4ffa: $06 $09
	ld [de], a                                       ; $4ffc: $12
	inc c                                            ; $4ffd: $0c
	add hl, bc                                       ; $4ffe: $09
	add hl, bc                                       ; $4fff: $09
	ld [de], a                                       ; $5000: $12
	inc c                                            ; $5001: $0c
	add hl, bc                                       ; $5002: $09
	nop                                              ; $5003: $00
	add hl, bc                                       ; $5004: $09
	inc c                                            ; $5005: $0c
	add hl, bc                                       ; $5006: $09
	add hl, bc                                       ; $5007: $09
	ld [de], a                                       ; $5008: $12
	inc c                                            ; $5009: $0c
	add hl, bc                                       ; $500a: $09
	cp [hl]                                          ; $500b: $be
	cp [hl]                                          ; $500c: $be
	ld b, $09                                        ; $500d: $06 $09
	ld [de], a                                       ; $500f: $12
	inc c                                            ; $5010: $0c
	add hl, bc                                       ; $5011: $09
	add hl, bc                                       ; $5012: $09
	ld [de], a                                       ; $5013: $12
	inc c                                            ; $5014: $0c
	add hl, bc                                       ; $5015: $09
	nop                                              ; $5016: $00
	add hl, bc                                       ; $5017: $09
	inc c                                            ; $5018: $0c
	add hl, bc                                       ; $5019: $09
	add hl, bc                                       ; $501a: $09
	ld [de], a                                       ; $501b: $12
	inc c                                            ; $501c: $0c
	add hl, bc                                       ; $501d: $09
	cp [hl]                                          ; $501e: $be
	inc d                                            ; $501f: $14
	inc c                                            ; $5020: $0c
	cp [hl]                                          ; $5021: $be
	ld b, $0c                                        ; $5022: $06 $0c
	add hl, bc                                       ; $5024: $09
	add hl, bc                                       ; $5025: $09
	ld [de], a                                       ; $5026: $12
	inc c                                            ; $5027: $0c
	add hl, bc                                       ; $5028: $09
	cp [hl]                                          ; $5029: $be
	ld e, $0c                                        ; $502a: $1e $0c
	cp [hl]                                          ; $502c: $be
	ld b, $0c                                        ; $502d: $06 $0c
	add hl, bc                                       ; $502f: $09
	add hl, bc                                       ; $5030: $09
	ld [de], a                                       ; $5031: $12
	inc c                                            ; $5032: $0c
	add hl, bc                                       ; $5033: $09
	cp [hl]                                          ; $5034: $be
	ld e, $0c                                        ; $5035: $1e $0c
	cp [hl]                                          ; $5037: $be
	ld b, $0c                                        ; $5038: $06 $0c
	add hl, bc                                       ; $503a: $09
	add hl, bc                                       ; $503b: $09
	ld [de], a                                       ; $503c: $12
	inc c                                            ; $503d: $0c
	add hl, bc                                       ; $503e: $09
	cp [hl]                                          ; $503f: $be
	ld e, $0c                                        ; $5040: $1e $0c
	inc c                                            ; $5042: $0c
	ld b, $09                                        ; $5043: $06 $09
	ld b, $1e                                        ; $5045: $06 $1e
	inc c                                            ; $5047: $0c
	inc c                                            ; $5048: $0c
	ld b, $09                                        ; $5049: $06 $09
	ld b, $14                                        ; $504b: $06 $14
	inc c                                            ; $504d: $0c
	cp [hl]                                          ; $504e: $be
	ld b, $0c                                        ; $504f: $06 $0c
	inc de                                           ; $5051: $13
	inc c                                            ; $5052: $0c
	add hl, bc                                       ; $5053: $09
	inc c                                            ; $5054: $0c
	inc c                                            ; $5055: $0c
	add hl, bc                                       ; $5056: $09
	ld [de], a                                       ; $5057: $12
	inc c                                            ; $5058: $0c
	add hl, bc                                       ; $5059: $09
	add hl, bc                                       ; $505a: $09
	ld [de], a                                       ; $505b: $12
	ld a, [bc]                                       ; $505c: $0a
	inc c                                            ; $505d: $0c
	cp [hl]                                          ; $505e: $be
	cp [hl]                                          ; $505f: $be
	ld b, $09                                        ; $5060: $06 $09
	inc c                                            ; $5062: $0c
	inc c                                            ; $5063: $0c
	add hl, bc                                       ; $5064: $09
	inc c                                            ; $5065: $0c
	add hl, bc                                       ; $5066: $09
	add hl, bc                                       ; $5067: $09
	ld a, [bc]                                       ; $5068: $0a
	add hl, bc                                       ; $5069: $09
	ld a, [bc]                                       ; $506a: $0a
	inc c                                            ; $506b: $0c
	ld a, [bc]                                       ; $506c: $0a
	add hl, bc                                       ; $506d: $09
	ld a, [bc]                                       ; $506e: $0a
	add hl, bc                                       ; $506f: $09
	cp [hl]                                          ; $5070: $be
	inc de                                           ; $5071: $13
	inc bc                                           ; $5072: $03
	inc de                                           ; $5073: $13
	inc bc                                           ; $5074: $03
	cp [hl]                                          ; $5075: $be
	ld b, $0c                                        ; $5076: $06 $0c
	inc c                                            ; $5078: $0c
	dec d                                            ; $5079: $15
	dec d                                            ; $507a: $15
	ld d, $16                                        ; $507b: $16 $16
	rla                                              ; $507d: $17
	rla                                              ; $507e: $17
	rla                                              ; $507f: $17
	rla                                              ; $5080: $17
	cp [hl]                                          ; $5081: $be
	nop                                              ; $5082: $00
	inc h                                            ; $5083: $24
	nop                                              ; $5084: $00
	ld c, b                                          ; $5085: $48
	inc c                                            ; $5086: $0c
	ld b, $09                                        ; $5087: $06 $09
	inc bc                                           ; $5089: $03
	add hl, bc                                       ; $508a: $09
	inc bc                                           ; $508b: $03
	inc c                                            ; $508c: $0c
	ld b, $1e                                        ; $508d: $06 $1e
	ld b, $09                                        ; $508f: $06 $09
	ld b, $0a                                        ; $5091: $06 $0a
	ld b, $0c                                        ; $5093: $06 $0c
	inc c                                            ; $5095: $0c
	cp [hl]                                          ; $5096: $be
	ld b, $09                                        ; $5097: $06 $09
	ld [de], a                                       ; $5099: $12
	inc c                                            ; $509a: $0c
	add hl, bc                                       ; $509b: $09
	nop                                              ; $509c: $00
	ld [de], a                                       ; $509d: $12
	inc c                                            ; $509e: $0c
	add hl, bc                                       ; $509f: $09
	add hl, bc                                       ; $50a0: $09
	ld [de], a                                       ; $50a1: $12
	inc c                                            ; $50a2: $0c
	inc c                                            ; $50a3: $0c
	cp [hl]                                          ; $50a4: $be
	cp [hl]                                          ; $50a5: $be
	ld b, $0a                                        ; $50a6: $06 $0a
	ld d, $0c                                        ; $50a8: $16 $0c
	add hl, bc                                       ; $50aa: $09
	inc c                                            ; $50ab: $0c
	add hl, bc                                       ; $50ac: $09
	inc c                                            ; $50ad: $0c
	inc c                                            ; $50ae: $0c
	nop                                              ; $50af: $00
	inc c                                            ; $50b0: $0c
	inc c                                            ; $50b1: $0c
	inc c                                            ; $50b2: $0c
	inc c                                            ; $50b3: $0c
	inc c                                            ; $50b4: $0c
	inc c                                            ; $50b5: $0c
	inc c                                            ; $50b6: $0c
	cp [hl]                                          ; $50b7: $be
	inc d                                            ; $50b8: $14
	ld [de], a                                       ; $50b9: $12
	add hl, bc                                       ; $50ba: $09
	ld b, $0c                                        ; $50bb: $06 $0c
	inc c                                            ; $50bd: $0c
	ld [de], a                                       ; $50be: $12
	ld b, $09                                        ; $50bf: $06 $09
	inc c                                            ; $50c1: $0c
	inc de                                           ; $50c2: $13
	ld b, $09                                        ; $50c3: $06 $09
	inc c                                            ; $50c5: $0c
	inc c                                            ; $50c6: $0c
	inc c                                            ; $50c7: $0c
	ld [de], a                                       ; $50c8: $12
	ld b, $0d                                        ; $50c9: $06 $0d
	inc bc                                           ; $50cb: $03
	dec c                                            ; $50cc: $0d
	inc bc                                           ; $50cd: $03
	cp [hl]                                          ; $50ce: $be
	ld b, $09                                        ; $50cf: $06 $09
	inc de                                           ; $50d1: $13
	add hl, bc                                       ; $50d2: $09
	nop                                              ; $50d3: $00
	inc c                                            ; $50d4: $0c
	nop                                              ; $50d5: $00
	add hl, bc                                       ; $50d6: $09
	ld [de], a                                       ; $50d7: $12
	add hl, bc                                       ; $50d8: $09
	inc de                                           ; $50d9: $13
	add hl, bc                                       ; $50da: $09
	nop                                              ; $50db: $00
	inc c                                            ; $50dc: $0c
	nop                                              ; $50dd: $00
	add hl, bc                                       ; $50de: $09
	cp [hl]                                          ; $50df: $be
	dec c                                            ; $50e0: $0d
	inc bc                                           ; $50e1: $03
	dec c                                            ; $50e2: $0d
	inc bc                                           ; $50e3: $03
	cp [hl]                                          ; $50e4: $be
	ld b, $09                                        ; $50e5: $06 $09
	inc de                                           ; $50e7: $13
	add hl, bc                                       ; $50e8: $09
	nop                                              ; $50e9: $00
	inc c                                            ; $50ea: $0c
	nop                                              ; $50eb: $00
	add hl, bc                                       ; $50ec: $09
	ld [de], a                                       ; $50ed: $12
	add hl, bc                                       ; $50ee: $09
	dec c                                            ; $50ef: $0d
	add hl, bc                                       ; $50f0: $09
	inc de                                           ; $50f1: $13
	inc c                                            ; $50f2: $0c
	add hl, bc                                       ; $50f3: $09
	add hl, bc                                       ; $50f4: $09
	inc de                                           ; $50f5: $13
	cp [hl]                                          ; $50f6: $be
	ld a, [bc]                                       ; $50f7: $0a
	inc c                                            ; $50f8: $0c
	cp [hl]                                          ; $50f9: $be
	ld b, $09                                        ; $50fa: $06 $09
	ld [de], a                                       ; $50fc: $12
	add hl, bc                                       ; $50fd: $09
	inc c                                            ; $50fe: $0c
	add hl, bc                                       ; $50ff: $09
	inc de                                           ; $5100: $13
	add hl, bc                                       ; $5101: $09
	inc de                                           ; $5102: $13
	add hl, bc                                       ; $5103: $09
	nop                                              ; $5104: $00
	cp [hl]                                          ; $5105: $be
	inc c                                            ; $5106: $0c
	inc c                                            ; $5107: $0c
	add hl, bc                                       ; $5108: $09
	ld b, $0d                                        ; $5109: $06 $0d
	ld b, $14                                        ; $510b: $06 $14
	jr jr_035_511b                                   ; $510d: $18 $0c

	inc c                                            ; $510f: $0c
	add hl, bc                                       ; $5110: $09
	ld b, $13                                        ; $5111: $06 $13
	ld b, $0a                                        ; $5113: $06 $0a
	inc c                                            ; $5115: $0c
	cp [hl]                                          ; $5116: $be
	ld b, $09                                        ; $5117: $06 $09
	ld a, [bc]                                       ; $5119: $0a
	add hl, bc                                       ; $511a: $09

jr_035_511b:
	inc c                                            ; $511b: $0c
	add hl, bc                                       ; $511c: $09
	inc de                                           ; $511d: $13
	cp [hl]                                          ; $511e: $be
	inc d                                            ; $511f: $14
	jr jr_035_5134                                   ; $5120: $18 $12

	jr jr_035_5124                                   ; $5122: $18 $00

jr_035_5124:
	ld [de], a                                       ; $5124: $12
	cp [hl]                                          ; $5125: $be
	ld b, $13                                        ; $5126: $06 $13
	dec c                                            ; $5128: $0d
	inc c                                            ; $5129: $0c
	inc c                                            ; $512a: $0c
	inc c                                            ; $512b: $0c
	cp [hl]                                          ; $512c: $be
	cp $ff                                           ; $512d: $fe $ff
	or h                                             ; $512f: $b4
	adc h                                            ; $5130: $8c
	ld h, c                                          ; $5131: $61
	nop                                              ; $5132: $00
	ld h, d                                          ; $5133: $62

jr_035_5134:
	add hl, hl                                       ; $5134: $29
	inc c                                            ; $5135: $0c
	jp nz, $1829                                     ; $5136: $c2 $29 $18

	rst JumpTable                                          ; $5139: $c7
	ld a, [hl]                                       ; $513a: $7e
	dec e                                            ; $513b: $1d
	inc d                                            ; $513c: $14
	and b                                            ; $513d: $a0
	dec h                                            ; $513e: $25
	jr jr_035_51bf                                   ; $513f: $18 $7e

	dec e                                            ; $5141: $1d
	nop                                              ; $5142: $00
	jp nz, $0c25                                     ; $5143: $c2 $25 $0c

	ld a, [hl]                                       ; $5146: $7e
	nop                                              ; $5147: $00
	and b                                            ; $5148: $a0
	ret                                              ; $5149: $c9


	sub d                                            ; $514a: $92
	jp nc, $06be                                     ; $514b: $d2 $be $06

	ld a, [hl+]                                      ; $514e: $2a
	add hl, hl                                       ; $514f: $29
	ld a, [hl+]                                      ; $5150: $2a
	inc l                                            ; $5151: $2c
	cp [hl]                                          ; $5152: $be
	pop de                                           ; $5153: $d1
	sub b                                            ; $5154: $90
	rst JumpTable                                          ; $5155: $c7
	dec h                                            ; $5156: $25
	inc c                                            ; $5157: $0c
	jp nz, $1825                                     ; $5158: $c2 $25 $18

	ret z                                            ; $515b: $c8

	ld a, [hl]                                       ; $515c: $7e
	dec e                                            ; $515d: $1d
	inc d                                            ; $515e: $14
	and b                                            ; $515f: $a0
	jr nz, jr_035_517a                               ; $5160: $20 $18

	ld a, [hl]                                       ; $5162: $7e
	dec e                                            ; $5163: $1d
	nop                                              ; $5164: $00
	jp $0c20                                         ; $5165: $c3 $20 $0c


	ld a, [hl]                                       ; $5168: $7e
	nop                                              ; $5169: $00
	and b                                            ; $516a: $a0
	db $d3                                           ; $516b: $d3
	ret                                              ; $516c: $c9


	sub d                                            ; $516d: $92
	add hl, hl                                       ; $516e: $29
	ld b, $27                                        ; $516f: $06 $27
	ld b, $29                                        ; $5171: $06 $29
	ld b, $cb                                        ; $5173: $06 $cb
	ld l, $06                                        ; $5175: $2e $06
	rst JumpTable                                          ; $5177: $c7
	pop de                                           ; $5178: $d1
	sub b                                            ; $5179: $90

jr_035_517a:
	dec h                                            ; $517a: $25

jr_035_517b:
	inc c                                            ; $517b: $0c
	jp nz, $1825                                     ; $517c: $c2 $25 $18

	rst JumpTable                                          ; $517f: $c7
	jr nz, @+$0e                                     ; $5180: $20 $0c

	jp nz, $0c20                                     ; $5182: $c2 $20 $0c

	rst JumpTable                                          ; $5185: $c7

jr_035_5186:
	dec h                                            ; $5186: $25
	inc c                                            ; $5187: $0c
	jp nz, $0c25                                     ; $5188: $c2 $25 $0c

	rst JumpTable                                          ; $518b: $c7
	dec h                                            ; $518c: $25
	ld b, $c2                                        ; $518d: $06 $c2
	dec h                                            ; $518f: $25
	ld b, $c5                                        ; $5190: $06 $c5
	dec h                                            ; $5192: $25
	inc c                                            ; $5193: $0c
	inc h                                            ; $5194: $24
	inc c                                            ; $5195: $0c
	ld [hl+], a                                      ; $5196: $22
	inc c                                            ; $5197: $0c
	ld a, [hl]                                       ; $5198: $7e
	dec e                                            ; $5199: $1d
	nop                                              ; $519a: $00
	and b                                            ; $519b: $a0

jr_035_519c:
	jr nz, jr_035_51aa                               ; $519c: $20 $0c

	call nz, $0c20                                   ; $519e: $c4 $20 $0c
	nop                                              ; $51a1: $00
	rrca                                             ; $51a2: $0f
	sub d                                            ; $51a3: $92
	pop de                                           ; $51a4: $d1
	push bc                                          ; $51a5: $c5
	ld a, [hl]                                       ; $51a6: $7e

jr_035_51a7:
	dec e                                            ; $51a7: $1d
	nop                                              ; $51a8: $00
	and b                                            ; $51a9: $a0

jr_035_51aa:
	jr nz, jr_035_51c1                               ; $51aa: $20 $15

	ld a, [hl]                                       ; $51ac: $7e
	nop                                              ; $51ad: $00
	and b                                            ; $51ae: $a0
	cp $c3                                           ; $51af: $fe $c3
	pop de                                           ; $51b1: $d1

jr_035_51b2:
	sub d                                            ; $51b2: $92
	ld h, d                                          ; $51b3: $62
	ld a, [hl]                                       ; $51b4: $7e
	dec e                                            ; $51b5: $1d
	nop                                              ; $51b6: $00
	xor c                                            ; $51b7: $a9
	jr nz, jr_035_51cc                               ; $51b8: $20 $12

	dec h                                            ; $51ba: $25
	jr jr_035_517b                                   ; $51bb: $18 $be

	inc c                                            ; $51bd: $0c
	dec h                                            ; $51be: $25

jr_035_51bf:
	daa                                              ; $51bf: $27
	add hl, hl                                       ; $51c0: $29

jr_035_51c1:
	add hl, hl                                       ; $51c1: $29
	add hl, hl                                       ; $51c2: $29
	add hl, hl                                       ; $51c3: $29
	cp [hl]                                          ; $51c4: $be
	ld a, [hl+]                                      ; $51c5: $2a
	jr jr_035_5186                                   ; $51c6: $18 $be

	inc c                                            ; $51c8: $0c
	ld a, [hl+]                                      ; $51c9: $2a
	daa                                              ; $51ca: $27
	add hl, hl                                       ; $51cb: $29

jr_035_51cc:
	add hl, hl                                       ; $51cc: $29
	inc l                                            ; $51cd: $2c
	inc l                                            ; $51ce: $2c
	cp [hl]                                          ; $51cf: $be
	dec h                                            ; $51d0: $25
	jr @-$40                                         ; $51d1: $18 $be

	inc c                                            ; $51d3: $0c
	dec h                                            ; $51d4: $25
	daa                                              ; $51d5: $27
	dec h                                            ; $51d6: $25
	dec h                                            ; $51d7: $25
	dec h                                            ; $51d8: $25
	dec h                                            ; $51d9: $25
	cp [hl]                                          ; $51da: $be
	inc h                                            ; $51db: $24
	jr jr_035_519c                                   ; $51dc: $18 $be

	inc c                                            ; $51de: $0c
	inc h                                            ; $51df: $24
	dec h                                            ; $51e0: $25
	daa                                              ; $51e1: $27
	daa                                              ; $51e2: $27
	jr nz, jr_035_5205                               ; $51e3: $20 $20

	cp [hl]                                          ; $51e5: $be
	dec h                                            ; $51e6: $25
	jr jr_035_51a7                                   ; $51e7: $18 $be

	inc c                                            ; $51e9: $0c
	dec h                                            ; $51ea: $25
	daa                                              ; $51eb: $27
	add hl, hl                                       ; $51ec: $29
	add hl, hl                                       ; $51ed: $29
	add hl, hl                                       ; $51ee: $29
	add hl, hl                                       ; $51ef: $29
	cp [hl]                                          ; $51f0: $be
	ld a, [hl+]                                      ; $51f1: $2a
	jr jr_035_51b2                                   ; $51f2: $18 $be

	inc c                                            ; $51f4: $0c
	ld a, [hl+]                                      ; $51f5: $2a
	daa                                              ; $51f6: $27
	add hl, hl                                       ; $51f7: $29
	add hl, hl                                       ; $51f8: $29
	inc l                                            ; $51f9: $2c
	inc l                                            ; $51fa: $2c
	cp [hl]                                          ; $51fb: $be
	cp [hl]                                          ; $51fc: $be
	inc c                                            ; $51fd: $0c
	dec h                                            ; $51fe: $25
	ld a, [hl+]                                      ; $51ff: $2a
	ld a, [hl+]                                      ; $5200: $2a
	add hl, hl                                       ; $5201: $29
	dec h                                            ; $5202: $25
	dec h                                            ; $5203: $25
	cp [hl]                                          ; $5204: $be

jr_035_5205:
	daa                                              ; $5205: $27
	ld b, $d1                                        ; $5206: $06 $d1
	jp z, Jump_035_6292                              ; $5208: $ca $92 $62

	jr nz, jr_035_5219                               ; $520b: $20 $0c

	jp nz, $1820                                     ; $520d: $c2 $20 $18

	nop                                              ; $5210: $00
	inc c                                            ; $5211: $0c
	jp z, $0c20                                      ; $5212: $ca $20 $0c

	jp nz, $1820                                     ; $5215: $c2 $20 $18

	nop                                              ; $5218: $00

jr_035_5219:
	inc c                                            ; $5219: $0c
	jp z, $0c22                                      ; $521a: $ca $22 $0c

	jp nz, $0c22                                     ; $521d: $c2 $22 $0c

	nop                                              ; $5220: $00
	inc c                                            ; $5221: $0c
	ret                                              ; $5222: $c9


	inc h                                            ; $5223: $24
	inc c                                            ; $5224: $0c
	nop                                              ; $5225: $00
	inc c                                            ; $5226: $0c
	ld a, [hl]                                       ; $5227: $7e
	dec e                                            ; $5228: $1d
	nop                                              ; $5229: $00
	xor c                                            ; $522a: $a9
	inc h                                            ; $522b: $24
	inc h                                            ; $522c: $24
	ld a, [hl]                                       ; $522d: $7e
	nop                                              ; $522e: $00
	and b                                            ; $522f: $a0
	nop                                              ; $5230: $00
	inc c                                            ; $5231: $0c
	jp z, $0c20                                      ; $5232: $ca $20 $0c

	jp nz, $0c20                                     ; $5235: $c2 $20 $0c

	nop                                              ; $5238: $00
	inc c                                            ; $5239: $0c
	jp z, $0c20                                      ; $523a: $ca $20 $0c

	jp nz, $1820                                     ; $523d: $c2 $20 $18

	nop                                              ; $5240: $00
	inc c                                            ; $5241: $0c
	jp z, $0c22                                      ; $5242: $ca $22 $0c

	jp nz, $0c22                                     ; $5245: $c2 $22 $0c

	nop                                              ; $5248: $00
	inc c                                            ; $5249: $0c
	ret                                              ; $524a: $c9


	inc h                                            ; $524b: $24
	inc c                                            ; $524c: $0c
	call nz, $0c24                                   ; $524d: $c4 $24 $0c
	nop                                              ; $5250: $00
	rrca                                             ; $5251: $0f
	call nz, $1d7e                                   ; $5252: $c4 $7e $1d
	nop                                              ; $5255: $00
	and b                                            ; $5256: $a0
	jr nz, jr_035_526e                               ; $5257: $20 $15

	ld a, [hl]                                       ; $5259: $7e
	nop                                              ; $525a: $00
	and b                                            ; $525b: $a0
	cp $ff                                           ; $525c: $fe $ff
	or h                                             ; $525e: $b4
	adc h                                            ; $525f: $8c
	ld h, c                                          ; $5260: $61
	inc bc                                           ; $5261: $03
	ld h, d                                          ; $5262: $62
	ld sp, $c20c                                     ; $5263: $31 $0c $c2
	ld sp, $c718                                     ; $5266: $31 $18 $c7
	ld a, [hl]                                       ; $5269: $7e
	dec e                                            ; $526a: $1d
	inc d                                            ; $526b: $14
	xor d                                            ; $526c: $aa
	inc l                                            ; $526d: $2c

jr_035_526e:
	jr z, jr_035_52ee                                ; $526e: $28 $7e

	dec e                                            ; $5270: $1d
	nop                                              ; $5271: $00
	jp $142c                                         ; $5272: $c3 $2c $14


	ld a, [hl]                                       ; $5275: $7e
	nop                                              ; $5276: $00
	and b                                            ; $5277: $a0
	ret                                              ; $5278: $c9


	ld l, $0c                                        ; $5279: $2e $0c
	jp $182e                                         ; $527b: $c3 $2e $18


	add $7e                                          ; $527e: $c6 $7e
	dec e                                            ; $5280: $1d
	inc d                                            ; $5281: $14
	xor d                                            ; $5282: $aa
	add hl, hl                                       ; $5283: $29
	jr z, @+$80                                      ; $5284: $28 $7e

	dec e                                            ; $5286: $1d
	nop                                              ; $5287: $00
	jp $1429                                         ; $5288: $c3 $29 $14


	ld a, [hl]                                       ; $528b: $7e
	nop                                              ; $528c: $00
	and b                                            ; $528d: $a0
	rst JumpTable                                          ; $528e: $c7
	inc l                                            ; $528f: $2c
	inc c                                            ; $5290: $0c
	call nz, $182c                                   ; $5291: $c4 $2c $18
	add $27                                          ; $5294: $c6 $27
	inc c                                            ; $5296: $0c
	jp $0c27                                         ; $5297: $c3 $27 $0c


	rst JumpTable                                          ; $529a: $c7
	inc l                                            ; $529b: $2c
	inc c                                            ; $529c: $0c
	jp nz, $0c2c                                     ; $529d: $c2 $2c $0c

	rst JumpTable                                          ; $52a0: $c7
	inc l                                            ; $52a1: $2c
	ld b, $c2                                        ; $52a2: $06 $c2
	inc l                                            ; $52a4: $2c
	ld b, $c7                                        ; $52a5: $06 $c7
	inc l                                            ; $52a7: $2c
	inc c                                            ; $52a8: $0c
	rst JumpTable                                          ; $52a9: $c7
	ld a, [hl+]                                      ; $52aa: $2a
	inc c                                            ; $52ab: $0c
	rst JumpTable                                          ; $52ac: $c7
	add hl, hl                                       ; $52ad: $29
	inc c                                            ; $52ae: $0c
	ld a, [hl]                                       ; $52af: $7e
	dec e                                            ; $52b0: $1d
	nop                                              ; $52b1: $00
	xor d                                            ; $52b2: $aa
	add $27                                          ; $52b3: $c6 $27
	inc c                                            ; $52b5: $0c
	jp nz, $0c27                                     ; $52b6: $c2 $27 $0c

	nop                                              ; $52b9: $00
	inc c                                            ; $52ba: $0c
	sub d                                            ; $52bb: $92
	ret                                              ; $52bc: $c9


	jr nz, @+$1a                                     ; $52bd: $20 $18

	ld a, [hl]                                       ; $52bf: $7e
	nop                                              ; $52c0: $00
	and b                                            ; $52c1: $a0
	cp $d1                                           ; $52c2: $fe $d1
	sub d                                            ; $52c4: $92
	bit 7, [hl]                                      ; $52c5: $cb $7e
	dec e                                            ; $52c7: $1d
	inc c                                            ; $52c8: $0c
	xor d                                            ; $52c9: $aa
	ld h, d                                          ; $52ca: $62
	dec h                                            ; $52cb: $25
	jr @-$3a                                         ; $52cc: $18 $c4

	dec h                                            ; $52ce: $25
	inc c                                            ; $52cf: $0c
	ret                                              ; $52d0: $c9


	daa                                              ; $52d1: $27
	inc c                                            ; $52d2: $0c
	rst JumpTable                                          ; $52d3: $c7
	add hl, hl                                       ; $52d4: $29
	inc c                                            ; $52d5: $0c
	jp nz, $0c29                                     ; $52d6: $c2 $29 $0c

	rst JumpTable                                          ; $52d9: $c7
	add hl, hl                                       ; $52da: $29
	inc c                                            ; $52db: $0c
	jp nz, $0c29                                     ; $52dc: $c2 $29 $0c

	ret z                                            ; $52df: $c8

	ld a, [hl+]                                      ; $52e0: $2a
	jr @-$3b                                         ; $52e1: $18 $c3

	ld a, [hl+]                                      ; $52e3: $2a
	inc c                                            ; $52e4: $0c
	ret                                              ; $52e5: $c9


jr_035_52e6:
	daa                                              ; $52e6: $27
	inc c                                            ; $52e7: $0c
	rst JumpTable                                          ; $52e8: $c7
	add hl, hl                                       ; $52e9: $29
	inc c                                            ; $52ea: $0c
	jp nz, $0c29                                     ; $52eb: $c2 $29 $0c

jr_035_52ee:
	rst JumpTable                                          ; $52ee: $c7
	inc l                                            ; $52ef: $2c
	inc c                                            ; $52f0: $0c
	jp $0c2c                                         ; $52f1: $c3 $2c $0c


	jp z, $1825                                      ; $52f4: $ca $25 $18

	call nz, $0c25                                   ; $52f7: $c4 $25 $0c

jr_035_52fa:
	jp z, $0c27                                      ; $52fa: $ca $27 $0c

	jp z, $0c25                                      ; $52fd: $ca $25 $0c

	call nz, $0c25                                   ; $5300: $c4 $25 $0c
	jp z, $0c25                                      ; $5303: $ca $25 $0c

	call nz, $0c25                                   ; $5306: $c4 $25 $0c
	call z, $1824                                    ; $5309: $cc $24 $18
	call nz, $0c24                                   ; $530c: $c4 $24 $0c
	sla l                                            ; $530f: $cb $25
	inc c                                            ; $5311: $0c
	ret                                              ; $5312: $c9


	daa                                              ; $5313: $27
	inc c                                            ; $5314: $0c
	jp nz, $0c27                                     ; $5315: $c2 $27 $0c

	call $0c20                                       ; $5318: $cd $20 $0c
	call nz, $0c20                                   ; $531b: $c4 $20 $0c
	sla l                                            ; $531e: $cb $25
	jr jr_035_52e6                                   ; $5320: $18 $c4

	dec h                                            ; $5322: $25
	inc c                                            ; $5323: $0c
	jp z, $0c27                                      ; $5324: $ca $27 $0c

	rst JumpTable                                          ; $5327: $c7
	add hl, hl                                       ; $5328: $29
	inc c                                            ; $5329: $0c
	jp nz, $0c29                                     ; $532a: $c2 $29 $0c

	rst JumpTable                                          ; $532d: $c7

jr_035_532e:
	add hl, hl                                       ; $532e: $29
	inc c                                            ; $532f: $0c
	jp nz, $0c29                                     ; $5330: $c2 $29 $0c

	ret z                                            ; $5333: $c8

	ld a, [hl+]                                      ; $5334: $2a
	jr jr_035_52fa                                   ; $5335: $18 $c3

	ld a, [hl+]                                      ; $5337: $2a
	inc c                                            ; $5338: $0c
	jp z, $0c27                                      ; $5339: $ca $27 $0c

	rst JumpTable                                          ; $533c: $c7
	add hl, hl                                       ; $533d: $29
	inc c                                            ; $533e: $0c
	jp nz, $0c29                                     ; $533f: $c2 $29 $0c

	rst JumpTable                                          ; $5342: $c7
	inc l                                            ; $5343: $2c
	inc c                                            ; $5344: $0c
	jp $0c2c                                         ; $5345: $c3 $2c $0c


	sla l                                            ; $5348: $cb $25
	inc c                                            ; $534a: $0c
	ret z                                            ; $534b: $c8

	ld a, [hl+]                                      ; $534c: $2a
	inc c                                            ; $534d: $0c
	jp $0c2a                                         ; $534e: $c3 $2a $0c


	rst JumpTable                                          ; $5351: $c7
	add hl, hl                                       ; $5352: $29
	inc c                                            ; $5353: $0c
	sla l                                            ; $5354: $cb $25
	inc c                                            ; $5356: $0c
	call nz, $0c25                                   ; $5357: $c4 $25 $0c
	ret z                                            ; $535a: $c8

	daa                                              ; $535b: $27
	inc c                                            ; $535c: $0c
	call nz, $0c27                                   ; $535d: $c4 $27 $0c
	pop de                                           ; $5360: $d1
	sub d                                            ; $5361: $92
	bit 4, d                                         ; $5362: $cb $62
	dec h                                            ; $5364: $25
	inc c                                            ; $5365: $0c
	jp nz, $1825                                     ; $5366: $c2 $25 $18

	nop                                              ; $5369: $00
	inc c                                            ; $536a: $0c
	rst JumpTable                                          ; $536b: $c7
	add hl, hl                                       ; $536c: $29
	inc c                                            ; $536d: $0c
	jp nz, $1829                                     ; $536e: $c2 $29 $18

	nop                                              ; $5371: $00
	inc c                                            ; $5372: $0c
	ret                                              ; $5373: $c9


	ld a, [hl+]                                      ; $5374: $2a
	inc c                                            ; $5375: $0c
	jp nz, $0c2a                                     ; $5376: $c2 $2a $0c

	nop                                              ; $5379: $00
	inc c                                            ; $537a: $0c
	ret z                                            ; $537b: $c8

	inc l                                            ; $537c: $2c
	inc c                                            ; $537d: $0c
	nop                                              ; $537e: $00
	inc c                                            ; $537f: $0c
	rst JumpTable                                          ; $5380: $c7
	ld a, [hl]                                       ; $5381: $7e
	dec e                                            ; $5382: $1d

jr_035_5383:
	jr jr_035_532e                                   ; $5383: $18 $a9

	inc l                                            ; $5385: $2c
	inc h                                            ; $5386: $24
	ld a, [hl]                                       ; $5387: $7e
	nop                                              ; $5388: $00
	and b                                            ; $5389: $a0
	nop                                              ; $538a: $00
	inc c                                            ; $538b: $0c
	jp z, $0c25                                      ; $538c: $ca $25 $0c

	jp nz, $0c25                                     ; $538f: $c2 $25 $0c

	nop                                              ; $5392: $00
	inc c                                            ; $5393: $0c
	rst JumpTable                                          ; $5394: $c7
	add hl, hl                                       ; $5395: $29
	inc c                                            ; $5396: $0c
	jp nz, $1829                                     ; $5397: $c2 $29 $18

	nop                                              ; $539a: $00
	inc c                                            ; $539b: $0c
	ret                                              ; $539c: $c9


	ld a, [hl+]                                      ; $539d: $2a
	inc c                                            ; $539e: $0c
	jp nz, $0c2a                                     ; $539f: $c2 $2a $0c

	nop                                              ; $53a2: $00
	inc c                                            ; $53a3: $0c
	ret z                                            ; $53a4: $c8

	inc l                                            ; $53a5: $2c
	inc c                                            ; $53a6: $0c
	call nz, $182c                                   ; $53a7: $c4 $2c $18
	ret z                                            ; $53aa: $c8

	ld a, [hl]                                       ; $53ab: $7e
	dec e                                            ; $53ac: $1d
	nop                                              ; $53ad: $00
	xor c                                            ; $53ae: $a9

jr_035_53af:
	jr nz, jr_035_53c9                               ; $53af: $20 $18

	ld a, [hl]                                       ; $53b1: $7e
	nop                                              ; $53b2: $00
	and b                                            ; $53b3: $a0
	cp $ff                                           ; $53b4: $fe $ff
	or h                                             ; $53b6: $b4
	adc h                                            ; $53b7: $8c
	ld hl, $6218                                     ; $53b8: $21 $18 $62
	dec c                                            ; $53bb: $0d
	inc c                                            ; $53bc: $0c
	add $0d                                          ; $53bd: $c6 $0d
	jr jr_035_5383                                   ; $53bf: $18 $c2

	ld a, [hl]                                       ; $53c1: $7e
	dec e                                            ; $53c2: $1d
	inc d                                            ; $53c3: $14
	and e                                            ; $53c4: $a3
	ld [$7e28], sp                                   ; $53c5: $08 $28 $7e
	dec e                                            ; $53c8: $1d

jr_035_53c9:
	nop                                              ; $53c9: $00
	add $08                                          ; $53ca: $c6 $08
	inc d                                            ; $53cc: $14
	ld a, [hl]                                       ; $53cd: $7e
	nop                                              ; $53ce: $00
	and b                                            ; $53cf: $a0
	jp nz, $0c0a                                     ; $53d0: $c2 $0a $0c

	add $0a                                          ; $53d3: $c6 $0a
	jr @-$3c                                         ; $53d5: $18 $c2

	ld a, [hl]                                       ; $53d7: $7e
	dec e                                            ; $53d8: $1d
	inc d                                            ; $53d9: $14
	and e                                            ; $53da: $a3
	ld [$7e28], sp                                   ; $53db: $08 $28 $7e
	dec e                                            ; $53de: $1d
	nop                                              ; $53df: $00
	add $08                                          ; $53e0: $c6 $08
	inc d                                            ; $53e2: $14
	ld a, [hl]                                       ; $53e3: $7e
	nop                                              ; $53e4: $00
	and b                                            ; $53e5: $a0
	jp nz, $0c06                                     ; $53e6: $c2 $06 $0c

	add $06                                          ; $53e9: $c6 $06
	jr jr_035_53af                                   ; $53eb: $18 $c2

	ld a, [hl]                                       ; $53ed: $7e
	dec e                                            ; $53ee: $1d
	inc d                                            ; $53ef: $14
	and e                                            ; $53f0: $a3
	inc bc                                           ; $53f1: $03
	inc c                                            ; $53f2: $0c
	ld a, [hl]                                       ; $53f3: $7e
	dec e                                            ; $53f4: $1d
	nop                                              ; $53f5: $00
	add $03                                          ; $53f6: $c6 $03
	inc c                                            ; $53f8: $0c
	ld a, [hl]                                       ; $53f9: $7e
	nop                                              ; $53fa: $00
	and b                                            ; $53fb: $a0
	jp nz, $06be                                     ; $53fc: $c2 $be $06

	ld [$0800], sp                                   ; $53ff: $08 $00 $08
	nop                                              ; $5402: $00
	ld [$be00], sp                                   ; $5403: $08 $00 $be
	jp nz, $0c03                                     ; $5406: $c2 $03 $0c

	dec b                                            ; $5409: $05
	inc c                                            ; $540a: $0c
	ld b, $0c                                        ; $540b: $06 $0c
	ld a, [hl]                                       ; $540d: $7e
	dec e                                            ; $540e: $1d
	nop                                              ; $540f: $00
	and e                                            ; $5410: $a3
	ld [$7e0c], sp                                   ; $5411: $08 $0c $7e
	nop                                              ; $5414: $00
	and b                                            ; $5415: $a0
	call nz, $0c08                                   ; $5416: $c4 $08 $0c
	nop                                              ; $5419: $00
	inc h                                            ; $541a: $24
	cp $d1                                           ; $541b: $fe $d1
	jp nz, $187f                                     ; $541d: $c2 $7f $18

	ld h, d                                          ; $5420: $62
	db $fd                                           ; $5421: $fd
	rla                                              ; $5422: $17
	ld d, l                                          ; $5423: $55
	ld b, $0c                                        ; $5424: $06 $0c
	ld a, a                                          ; $5426: $7f
	inc e                                            ; $5427: $1c
	cp [hl]                                          ; $5428: $be
	inc bc                                           ; $5429: $03
	ld [de], a                                       ; $542a: $12
	nop                                              ; $542b: $00
	ld [de], a                                       ; $542c: $12
	nop                                              ; $542d: $00
	cp [hl]                                          ; $542e: $be
	ld a, a                                          ; $542f: $7f
	jr jr_035_5438                                   ; $5430: $18 $06

	inc c                                            ; $5432: $0c
	ld a, a                                          ; $5433: $7f
	inc e                                            ; $5434: $1c
	cp [hl]                                          ; $5435: $be
	inc bc                                           ; $5436: $03
	ld [de], a                                       ; $5437: $12

jr_035_5438:
	nop                                              ; $5438: $00
	ld [de], a                                       ; $5439: $12
	nop                                              ; $543a: $00
	cp [hl]                                          ; $543b: $be
	ld a, a                                          ; $543c: $7f
	jr jr_035_5445                                   ; $543d: $18 $06

	inc c                                            ; $543f: $0c
	ld a, a                                          ; $5440: $7f
	inc e                                            ; $5441: $1c
	cp [hl]                                          ; $5442: $be
	inc bc                                           ; $5443: $03
	ld [de], a                                       ; $5444: $12

jr_035_5445:
	nop                                              ; $5445: $00
	ld [de], a                                       ; $5446: $12
	nop                                              ; $5447: $00
	cp [hl]                                          ; $5448: $be
	ld a, a                                          ; $5449: $7f
	jr jr_035_5452                                   ; $544a: $18 $06

	inc c                                            ; $544c: $0c
	ld a, a                                          ; $544d: $7f
	inc e                                            ; $544e: $1c
	cp [hl]                                          ; $544f: $be
	inc bc                                           ; $5450: $03
	ld [de], a                                       ; $5451: $12

jr_035_5452:
	nop                                              ; $5452: $00
	ld [de], a                                       ; $5453: $12
	nop                                              ; $5454: $00
	cp [hl]                                          ; $5455: $be
	ld a, a                                          ; $5456: $7f
	jr jr_035_5461                                   ; $5457: $18 $08

	inc c                                            ; $5459: $0c
	ld a, a                                          ; $545a: $7f
	inc e                                            ; $545b: $1c
	cp [hl]                                          ; $545c: $be
	inc bc                                           ; $545d: $03
	inc d                                            ; $545e: $14
	nop                                              ; $545f: $00
	inc d                                            ; $5460: $14

jr_035_5461:
	nop                                              ; $5461: $00
	cp [hl]                                          ; $5462: $be
	ld a, a                                          ; $5463: $7f
	jr jr_035_546e                                   ; $5464: $18 $08

	inc c                                            ; $5466: $0c
	ld a, a                                          ; $5467: $7f
	inc e                                            ; $5468: $1c
	cp [hl]                                          ; $5469: $be
	inc bc                                           ; $546a: $03
	inc d                                            ; $546b: $14
	nop                                              ; $546c: $00
	inc d                                            ; $546d: $14

jr_035_546e:
	nop                                              ; $546e: $00
	cp [hl]                                          ; $546f: $be
	ld a, a                                          ; $5470: $7f
	jr jr_035_547d                                   ; $5471: $18 $0a

	inc c                                            ; $5473: $0c
	ld a, a                                          ; $5474: $7f
	inc e                                            ; $5475: $1c
	cp [hl]                                          ; $5476: $be
	inc bc                                           ; $5477: $03
	ld d, $00                                        ; $5478: $16 $00
	ld d, $00                                        ; $547a: $16 $00
	cp [hl]                                          ; $547c: $be

jr_035_547d:
	ld a, a                                          ; $547d: $7f
	jr @+$0e                                         ; $547e: $18 $0c

	inc c                                            ; $5480: $0c
	ld a, a                                          ; $5481: $7f
	inc e                                            ; $5482: $1c
	cp [hl]                                          ; $5483: $be
	inc bc                                           ; $5484: $03
	jr jr_035_5487                                   ; $5485: $18 $00

jr_035_5487:
	jr jr_035_5489                                   ; $5487: $18 $00

jr_035_5489:
	cp [hl]                                          ; $5489: $be

jr_035_548a:
	ld a, a                                          ; $548a: $7f
	jr jr_035_548a                                   ; $548b: $18 $fd

	rla                                              ; $548d: $17
	ld d, l                                          ; $548e: $55
	ld a, a                                          ; $548f: $7f
	jr jr_035_5498                                   ; $5490: $18 $06

jr_035_5492:
	inc c                                            ; $5492: $0c
	ld a, a                                          ; $5493: $7f
	inc e                                            ; $5494: $1c
	cp [hl]                                          ; $5495: $be
	inc bc                                           ; $5496: $03
	ld [de], a                                       ; $5497: $12

jr_035_5498:
	nop                                              ; $5498: $00
	ld [de], a                                       ; $5499: $12

jr_035_549a:
	nop                                              ; $549a: $00
	cp [hl]                                          ; $549b: $be
	ld a, a                                          ; $549c: $7f
	jr jr_035_54a5                                   ; $549d: $18 $06

	inc c                                            ; $549f: $0c
	ld a, a                                          ; $54a0: $7f
	inc e                                            ; $54a1: $1c
	cp [hl]                                          ; $54a2: $be
	inc bc                                           ; $54a3: $03
	ld [de], a                                       ; $54a4: $12

jr_035_54a5:
	nop                                              ; $54a5: $00
	ld [de], a                                       ; $54a6: $12
	nop                                              ; $54a7: $00
	cp [hl]                                          ; $54a8: $be
	ld a, a                                          ; $54a9: $7f
	jr jr_035_54b4                                   ; $54aa: $18 $08

	inc c                                            ; $54ac: $0c
	ld a, a                                          ; $54ad: $7f
	inc e                                            ; $54ae: $1c
	cp [hl]                                          ; $54af: $be
	inc bc                                           ; $54b0: $03
	inc d                                            ; $54b1: $14
	nop                                              ; $54b2: $00
	inc d                                            ; $54b3: $14

jr_035_54b4:
	nop                                              ; $54b4: $00
	cp [hl]                                          ; $54b5: $be
	ld a, a                                          ; $54b6: $7f
	jr jr_035_54c1                                   ; $54b7: $18 $08

	inc c                                            ; $54b9: $0c
	ld a, a                                          ; $54ba: $7f
	inc e                                            ; $54bb: $1c
	cp [hl]                                          ; $54bc: $be
	inc bc                                           ; $54bd: $03
	inc d                                            ; $54be: $14
	nop                                              ; $54bf: $00
	inc d                                            ; $54c0: $14

jr_035_54c1:
	nop                                              ; $54c1: $00

jr_035_54c2:
	cp [hl]                                          ; $54c2: $be
	pop de                                           ; $54c3: $d1
	jp nz, $187f                                     ; $54c4: $c2 $7f $18

	ld h, d                                          ; $54c7: $62
	dec c                                            ; $54c8: $0d
	inc c                                            ; $54c9: $0c
	add $0d                                          ; $54ca: $c6 $0d
	inc c                                            ; $54cc: $0c
	nop                                              ; $54cd: $00
	jr jr_035_5492                                   ; $54ce: $18 $c2

	ld [$c60c], sp                                   ; $54d0: $08 $0c $c6
	ld [$000c], sp                                   ; $54d3: $08 $0c $00
	jr jr_035_549a                                   ; $54d6: $18 $c2

	ld b, $0c                                        ; $54d8: $06 $0c
	add $06                                          ; $54da: $c6 $06
	inc c                                            ; $54dc: $0c
	nop                                              ; $54dd: $00
	inc c                                            ; $54de: $0c
	jp nz, $0c08                                     ; $54df: $c2 $08 $0c

	nop                                              ; $54e2: $00
	inc c                                            ; $54e3: $0c
	ld a, [hl]                                       ; $54e4: $7e
	dec e                                            ; $54e5: $1d
	nop                                              ; $54e6: $00
	and c                                            ; $54e7: $a1
	ld [$7e24], sp                                   ; $54e8: $08 $24 $7e
	nop                                              ; $54eb: $00
	and b                                            ; $54ec: $a0
	nop                                              ; $54ed: $00
	inc c                                            ; $54ee: $0c
	jp nz, $0c0d                                     ; $54ef: $c2 $0d $0c

	add $0d                                          ; $54f2: $c6 $0d
	inc c                                            ; $54f4: $0c
	nop                                              ; $54f5: $00
	inc c                                            ; $54f6: $0c
	jp nz, $0c08                                     ; $54f7: $c2 $08 $0c

	add $08                                          ; $54fa: $c6 $08
	inc c                                            ; $54fc: $0c
	nop                                              ; $54fd: $00
	jr jr_035_54c2                                   ; $54fe: $18 $c2

	ld b, $0c                                        ; $5500: $06 $0c
	add $06                                          ; $5502: $c6 $06
	inc c                                            ; $5504: $0c
	nop                                              ; $5505: $00
	inc c                                            ; $5506: $0c
	jp nz, $0c08                                     ; $5507: $c2 $08 $0c

	nop                                              ; $550a: $00
	jr @+$80                                         ; $550b: $18 $7e

	dec e                                            ; $550d: $1d
	nop                                              ; $550e: $00
	and c                                            ; $550f: $a1
	ld [$7e18], sp                                   ; $5510: $08 $18 $7e
	nop                                              ; $5513: $00
	and b                                            ; $5514: $a0
	cp $ff                                           ; $5515: $fe $ff
	pop de                                           ; $5517: $d1
	jp nz, $187f                                     ; $5518: $c2 $7f $18

	ld bc, $be0c                                     ; $551b: $01 $0c $be
	inc bc                                           ; $551e: $03
	dec c                                            ; $551f: $0d
	nop                                              ; $5520: $00
	dec c                                            ; $5521: $0d
	nop                                              ; $5522: $00
	cp [hl]                                          ; $5523: $be
	ld bc, $be0c                                     ; $5524: $01 $0c $be
	inc bc                                           ; $5527: $03
	dec c                                            ; $5528: $0d
	nop                                              ; $5529: $00
	dec c                                            ; $552a: $0d
	nop                                              ; $552b: $00
	cp [hl]                                          ; $552c: $be
	ld bc, $be0c                                     ; $552d: $01 $0c $be
	inc bc                                           ; $5530: $03
	dec c                                            ; $5531: $0d
	nop                                              ; $5532: $00
	dec c                                            ; $5533: $0d
	nop                                              ; $5534: $00
	cp [hl]                                          ; $5535: $be
	ld bc, $be0c                                     ; $5536: $01 $0c $be
	inc bc                                           ; $5539: $03
	dec c                                            ; $553a: $0d
	nop                                              ; $553b: $00
	dec c                                            ; $553c: $0d
	nop                                              ; $553d: $00
	cp [hl]                                          ; $553e: $be
	ld b, $0c                                        ; $553f: $06 $0c
	ld a, a                                          ; $5541: $7f
	inc e                                            ; $5542: $1c
	cp [hl]                                          ; $5543: $be
	inc bc                                           ; $5544: $03
	ld [de], a                                       ; $5545: $12
	nop                                              ; $5546: $00
	ld [de], a                                       ; $5547: $12
	nop                                              ; $5548: $00
	cp [hl]                                          ; $5549: $be
	ld a, a                                          ; $554a: $7f
	jr jr_035_5553                                   ; $554b: $18 $06

	inc c                                            ; $554d: $0c

jr_035_554e:
	ld a, a                                          ; $554e: $7f
	inc e                                            ; $554f: $1c
	cp [hl]                                          ; $5550: $be
	inc bc                                           ; $5551: $03
	ld [de], a                                       ; $5552: $12

jr_035_5553:
	nop                                              ; $5553: $00
	ld [de], a                                       ; $5554: $12
	nop                                              ; $5555: $00
	cp [hl]                                          ; $5556: $be
	ld a, a                                          ; $5557: $7f
	jr jr_035_555b                                   ; $5558: $18 $01

	inc c                                            ; $555a: $0c

jr_035_555b:
	cp [hl]                                          ; $555b: $be
	inc bc                                           ; $555c: $03
	dec c                                            ; $555d: $0d
	nop                                              ; $555e: $00
	dec c                                            ; $555f: $0d
	nop                                              ; $5560: $00
	cp [hl]                                          ; $5561: $be

jr_035_5562:
	ld bc, $be0c                                     ; $5562: $01 $0c $be
	inc bc                                           ; $5565: $03
	dec c                                            ; $5566: $0d
	nop                                              ; $5567: $00
	dec c                                            ; $5568: $0d
	nop                                              ; $5569: $00
	cp [hl]                                          ; $556a: $be
	db $fd                                           ; $556b: $fd
	ret nc                                           ; $556c: $d0

	adc h                                            ; $556d: $8c
	ei                                               ; $556e: $fb
	db $fd                                           ; $556f: $fd
	ld a, [$fb55]                                    ; $5570: $fa $55 $fb
	inc bc                                           ; $5573: $03
	cp [hl]                                          ; $5574: $be
	inc c                                            ; $5575: $0c
	jr nz, jr_035_5598                               ; $5576: $20 $20

	jr nz, jr_035_559a                               ; $5578: $20 $20

	nop                                              ; $557a: $00
	rra                                              ; $557b: $1f
	jr nz, jr_035_559b                               ; $557c: $20 $1d

	cp [hl]                                          ; $557e: $be
	cp $fc                                           ; $557f: $fe $fc
	db $fd                                           ; $5581: $fd
	ld a, [bc]                                       ; $5582: $0a
	ld d, [hl]                                       ; $5583: $56
	db $fc                                           ; $5584: $fc
	inc bc                                           ; $5585: $03
	cp [hl]                                          ; $5586: $be
	inc c                                            ; $5587: $0c
	rra                                              ; $5588: $1f
	dec e                                            ; $5589: $1d
	jr nz, @+$1f                                     ; $558a: $20 $1d

	jr nz, jr_035_55ad                               ; $558c: $20 $1f

	jr nz, jr_035_554e                               ; $558e: $20 $be

	jr nz, jr_035_5598                               ; $5590: $20 $06

	jr nz, jr_035_559a                               ; $5592: $20 $06

	db $fd                                           ; $5594: $fd
	ld a, [bc]                                       ; $5595: $0a
	ld d, [hl]                                       ; $5596: $56
	db $fd                                           ; $5597: $fd

jr_035_5598:
	ld a, [bc]                                       ; $5598: $0a
	ld d, [hl]                                       ; $5599: $56

jr_035_559a:
	cp [hl]                                          ; $559a: $be

jr_035_559b:
	inc c                                            ; $559b: $0c
	rra                                              ; $559c: $1f
	dec e                                            ; $559d: $1d
	jr nz, jr_035_55bd                               ; $559e: $20 $1d

	jr nz, jr_035_55c1                               ; $55a0: $20 $1f

	jr nz, jr_035_5562                               ; $55a2: $20 $be

	jr nz, @+$08                                     ; $55a4: $20 $06

	jr nz, @+$08                                     ; $55a6: $20 $06

	jr nz, jr_035_55b6                               ; $55a8: $20 $0c

	dec e                                            ; $55aa: $1d
	ld b, $1d                                        ; $55ab: $06 $1d

jr_035_55ad:
	ld b, $1f                                        ; $55ad: $06 $1f
	inc c                                            ; $55af: $0c
	dec e                                            ; $55b0: $1d
	ld b, $1d                                        ; $55b1: $06 $1d
	ld b, $20                                        ; $55b3: $06 $20
	inc c                                            ; $55b5: $0c

jr_035_55b6:
	dec e                                            ; $55b6: $1d
	ld b, $1d                                        ; $55b7: $06 $1d
	ld b, $1f                                        ; $55b9: $06 $1f
	inc c                                            ; $55bb: $0c
	dec e                                            ; $55bc: $1d

jr_035_55bd:
	ld b, $1d                                        ; $55bd: $06 $1d
	ld b, $be                                        ; $55bf: $06 $be

jr_035_55c1:
	inc c                                            ; $55c1: $0c
	jr nz, jr_035_55e3                               ; $55c2: $20 $1f

	nop                                              ; $55c4: $00
	jr nz, jr_035_55c7                               ; $55c5: $20 $00

jr_035_55c7:
	jr nz, @+$1f                                     ; $55c7: $20 $1d

	cp [hl]                                          ; $55c9: $be
	dec e                                            ; $55ca: $1d
	ld b, $1d                                        ; $55cb: $06 $1d
	ld b, $1d                                        ; $55cd: $06 $1d
	inc c                                            ; $55cf: $0c
	jr nz, @+$08                                     ; $55d0: $20 $06

	dec e                                            ; $55d2: $1d
	ld b, $1f                                        ; $55d3: $06 $1f
	inc c                                            ; $55d5: $0c
	dec e                                            ; $55d6: $1d
	ld b, $1d                                        ; $55d7: $06 $1d
	ld b, $20                                        ; $55d9: $06 $20
	inc c                                            ; $55db: $0c
	dec e                                            ; $55dc: $1d
	ld b, $1d                                        ; $55dd: $06 $1d
	ld b, $1f                                        ; $55df: $06 $1f
	inc c                                            ; $55e1: $0c
	dec e                                            ; $55e2: $1d

jr_035_55e3:
	ld b, $1d                                        ; $55e3: $06 $1d
	ld b, $20                                        ; $55e5: $06 $20
	inc c                                            ; $55e7: $0c
	dec e                                            ; $55e8: $1d

jr_035_55e9:
	ld b, $1d                                        ; $55e9: $06 $1d
	ld b, $be                                        ; $55eb: $06 $be
	inc c                                            ; $55ed: $0c
	nop                                              ; $55ee: $00
	jr nz, jr_035_55f1                               ; $55ef: $20 $00

jr_035_55f1:
	dec e                                            ; $55f1: $1d
	dec e                                            ; $55f2: $1d
	cp [hl]                                          ; $55f3: $be
	dec e                                            ; $55f4: $1d
	ld b, $1d                                        ; $55f5: $06 $1d
	ld b, $fe                                        ; $55f7: $06 $fe
	rst $38                                          ; $55f9: $ff
	cp [hl]                                          ; $55fa: $be
	inc c                                            ; $55fb: $0c
	jr nz, jr_035_55fe                               ; $55fc: $20 $00

jr_035_55fe:
	dec e                                            ; $55fe: $1d
	jr nz, jr_035_5601                               ; $55ff: $20 $00

jr_035_5601:
	dec e                                            ; $5601: $1d
	cp [hl]                                          ; $5602: $be
	dec e                                            ; $5603: $1d
	ld b, $1d                                        ; $5604: $06 $1d
	ld b, $1d                                        ; $5606: $06 $1d
	inc c                                            ; $5608: $0c
	db $fd                                           ; $5609: $fd
	cp [hl]                                          ; $560a: $be
	inc c                                            ; $560b: $0c
	rra                                              ; $560c: $1f
	dec e                                            ; $560d: $1d
	jr nz, jr_035_562d                               ; $560e: $20 $1d

	rra                                              ; $5610: $1f
	rra                                              ; $5611: $1f
	jr nz, @+$1f                                     ; $5612: $20 $1d

	cp [hl]                                          ; $5614: $be
	db $fd                                           ; $5615: $fd
	or [hl]                                          ; $5616: $b6
	ret z                                            ; $5617: $c8

	sub c                                            ; $5618: $91
	ld bc, $0532                                     ; $5619: $01 $32 $05
	ld a, l                                          ; $561c: $7d
	nop                                              ; $561d: $00
	jr nz, jr_035_563c                               ; $561e: $20 $1c

	push bc                                          ; $5620: $c5
	cp [hl]                                          ; $5621: $be
	inc c                                            ; $5622: $0c
	daa                                              ; $5623: $27
	inc l                                            ; $5624: $2c
	jr z, jr_035_564e                                ; $5625: $28 $27

	dec h                                            ; $5627: $25
	ld [hl+], a                                      ; $5628: $22
	jr nz, jr_035_55e9                               ; $5629: $20 $be

	cp [hl]                                          ; $562b: $be
	inc c                                            ; $562c: $0c

jr_035_562d:
	daa                                              ; $562d: $27
	dec h                                            ; $562e: $25
	ld [hl+], a                                      ; $562f: $22
	jr nz, jr_035_564e                               ; $5630: $20 $1c

	dec de                                           ; $5632: $1b
	add hl, de                                       ; $5633: $19
	dec de                                           ; $5634: $1b
	cp [hl]                                          ; $5635: $be
	cp [hl]                                          ; $5636: $be
	inc c                                            ; $5637: $0c
	inc e                                            ; $5638: $1c
	jr nz, @+$24                                     ; $5639: $20 $22

	dec h                                            ; $563b: $25

jr_035_563c:
	daa                                              ; $563c: $27
	dec h                                            ; $563d: $25
	daa                                              ; $563e: $27
	inc l                                            ; $563f: $2c
	cp [hl]                                          ; $5640: $be
	cp [hl]                                          ; $5641: $be
	inc c                                            ; $5642: $0c
	ld l, $31                                        ; $5643: $2e $31
	inc sp                                           ; $5645: $33
	ld sp, $3833                                     ; $5646: $31 $33 $38
	ld a, [hl-]                                      ; $5649: $3a
	dec a                                            ; $564a: $3d
	cp [hl]                                          ; $564b: $be
	ccf                                              ; $564c: $3f
	inc c                                            ; $564d: $0c

jr_035_564e:
	ld b, b                                          ; $564e: $40
	inc c                                            ; $564f: $0c
	ld a, [hl]                                       ; $5650: $7e
	ld a, [hl+]                                      ; $5651: $2a
	nop                                              ; $5652: $00
	and b                                            ; $5653: $a0
	ccf                                              ; $5654: $3f
	ld d, h                                          ; $5655: $54
	nop                                              ; $5656: $00
	ld b, h                                          ; $5657: $44
	cp $b5                                           ; $5658: $fe $b5
	pop de                                           ; $565a: $d1
	ld bc, $0264                                     ; $565b: $01 $64 $02
	ld a, [hl]                                       ; $565e: $7e
	ld a, [hl+]                                      ; $565f: $2a
	nop                                              ; $5660: $00
	and b                                            ; $5661: $a0
	ld a, l                                          ; $5662: $7d
	nop                                              ; $5663: $00
	ei                                               ; $5664: $fb
	cp [hl]                                          ; $5665: $be
	jr @+$18                                         ; $5666: $18 $16

	dec e                                            ; $5668: $1d
	add hl, de                                       ; $5669: $19
	dec e                                            ; $566a: $1d
	cp [hl]                                          ; $566b: $be
	ei                                               ; $566c: $fb
	ld [bc], a                                       ; $566d: $02
	cp [hl]                                          ; $566e: $be
	jr @+$18                                         ; $566f: $18 $16

	ld e, $1b                                        ; $5671: $1e $1b
	ld e, $16                                        ; $5673: $1e $16
	ld e, $1b                                        ; $5675: $1e $1b
	dec e                                            ; $5677: $1d
	cp [hl]                                          ; $5678: $be
	ei                                               ; $5679: $fb
	cp [hl]                                          ; $567a: $be
	jr @+$11                                         ; $567b: $18 $0f

	ld d, $12                                        ; $567d: $16 $12
	ld d, $be                                        ; $567f: $16 $be
	ei                                               ; $5681: $fb
	ld [bc], a                                       ; $5682: $02
	cp [hl]                                          ; $5683: $be
	jr jr_035_5697                                   ; $5684: $18 $11

	jr @+$18                                         ; $5686: $18 $16

	jr @-$40                                         ; $5688: $18 $be

	rst GetHLinHL                                          ; $568a: $cf
	jp nc, Jump_035_7e92                             ; $568b: $d2 $92 $7e

	ld a, [hl+]                                      ; $568e: $2a
	nop                                              ; $568f: $00
	xor d                                            ; $5690: $aa

jr_035_5691:
	cp [hl]                                          ; $5691: $be
	inc c                                            ; $5692: $0c
	jr nc, @+$37                                     ; $5693: $30 $35

	jr nc, jr_035_56c5                               ; $5695: $30 $2e

jr_035_5697:
	cp [hl]                                          ; $5697: $be
	jr nc, @+$32                                     ; $5698: $30 $30

	or l                                             ; $569a: $b5
	pop de                                           ; $569b: $d1
	ld bc, $0264                                     ; $569c: $01 $64 $02
	ld a, [hl]                                       ; $569f: $7e
	ld a, [hl+]                                      ; $56a0: $2a
	nop                                              ; $56a1: $00
	and b                                            ; $56a2: $a0
	ld a, l                                          ; $56a3: $7d
	nop                                              ; $56a4: $00
	ei                                               ; $56a5: $fb
	cp [hl]                                          ; $56a6: $be
	jr @+$18                                         ; $56a7: $18 $16

	dec e                                            ; $56a9: $1d
	add hl, de                                       ; $56aa: $19
	dec e                                            ; $56ab: $1d
	cp [hl]                                          ; $56ac: $be
	ei                                               ; $56ad: $fb
	ld [bc], a                                       ; $56ae: $02
	cp [hl]                                          ; $56af: $be
	jr @+$18                                         ; $56b0: $18 $16

	ld e, $1b                                        ; $56b2: $1e $1b
	ld e, $16                                        ; $56b4: $1e $16
	ld e, $1b                                        ; $56b6: $1e $1b
	dec e                                            ; $56b8: $1d
	cp [hl]                                          ; $56b9: $be
	ei                                               ; $56ba: $fb
	cp [hl]                                          ; $56bb: $be
	jr @+$11                                         ; $56bc: $18 $0f

	ld d, $12                                        ; $56be: $16 $12
	ld d, $be                                        ; $56c0: $16 $be
	ei                                               ; $56c2: $fb
	ld [bc], a                                       ; $56c3: $02
	cp [hl]                                          ; $56c4: $be

jr_035_56c5:
	jr jr_035_56d8                                   ; $56c5: $18 $11

	jr @+$18                                         ; $56c7: $18 $16

	jr @-$40                                         ; $56c9: $18 $be

	call $92d2                                       ; $56cb: $cd $d2 $92
	ld a, [hl]                                       ; $56ce: $7e
	ld a, [hl+]                                      ; $56cf: $2a
	nop                                              ; $56d0: $00
	xor e                                            ; $56d1: $ab
	cp [hl]                                          ; $56d2: $be
	inc c                                            ; $56d3: $0c
	jr nc, jr_035_5704                               ; $56d4: $30 $2e

	jr nc, jr_035_570b                               ; $56d6: $30 $33

jr_035_56d8:
	cp [hl]                                          ; $56d8: $be
	dec [hl]                                         ; $56d9: $35
	jr nc, jr_035_5691                               ; $56da: $30 $b5

	ld [hl], c                                       ; $56dc: $71
	ld bc, $0564                                     ; $56dd: $01 $64 $05
	ld a, [hl]                                       ; $56e0: $7e
	ld a, [hl+]                                      ; $56e1: $2a
	nop                                              ; $56e2: $00
	xor d                                            ; $56e3: $aa
	nop                                              ; $56e4: $00
	jr jr_035_571d                                   ; $56e5: $18 $36

	inc c                                            ; $56e7: $0c
	inc sp                                           ; $56e8: $33
	inc c                                            ; $56e9: $0c
	dec [hl]                                         ; $56ea: $35
	ld c, b                                          ; $56eb: $48
	jr nc, jr_035_56fa                               ; $56ec: $30 $0c

	ld l, $0c                                        ; $56ee: $2e $0c
	jr nc, jr_035_573a                               ; $56f0: $30 $48

	ld [hl], $0c                                     ; $56f2: $36 $0c
	inc sp                                           ; $56f4: $33
	inc c                                            ; $56f5: $0c
	dec [hl]                                         ; $56f6: $35
	jr jr_035_572e                                   ; $56f7: $18 $35

	inc c                                            ; $56f9: $0c

jr_035_56fa:
	inc sp                                           ; $56fa: $33
	inc c                                            ; $56fb: $0c
	jr nc, jr_035_5716                               ; $56fc: $30 $18

	inc sp                                           ; $56fe: $33
	jr jr_035_577f                                   ; $56ff: $18 $7e

	ld a, [hl+]                                      ; $5701: $2a
	nop                                              ; $5702: $00
	xor c                                            ; $5703: $a9

jr_035_5704:
	ld l, $18                                        ; $5704: $2e $18

jr_035_5706:
	ld l, $0c                                        ; $5706: $2e $0c
	ld a, [hl+]                                      ; $5708: $2a
	inc c                                            ; $5709: $0c
	add hl, hl                                       ; $570a: $29

jr_035_570b:
	jr jr_035_573b                                   ; $570b: $18 $2e

	jr @+$29                                         ; $570d: $18 $27

	jr @+$29                                         ; $570f: $18 $27

	inc c                                            ; $5711: $0c
	inc hl                                           ; $5712: $23
	inc c                                            ; $5713: $0c
	add $d1                                          ; $5714: $c6 $d1

jr_035_5716:
	sub c                                            ; $5716: $91
	ld [hl+], a                                      ; $5717: $22
	inc c                                            ; $5718: $0c

jr_035_5719:
	or c                                             ; $5719: $b1
	pop af                                           ; $571a: $f1
	ld e, $01                                        ; $571b: $1e $01

jr_035_571d:
	ld a, [hl]                                       ; $571d: $7e
	ld a, [hl+]                                      ; $571e: $2a
	nop                                              ; $571f: $00
	and b                                            ; $5720: $a0
	cp [hl]                                          ; $5721: $be
	jr @+$16                                         ; $5722: $18 $14

	ld d, $19                                        ; $5724: $16 $19
	dec de                                           ; $5726: $1b
	inc e                                            ; $5727: $1c
	dec de                                           ; $5728: $1b
	inc e                                            ; $5729: $1c
	cp [hl]                                          ; $572a: $be
	adc $7e                                          ; $572b: $ce $7e
	ld a, [hl+]                                      ; $572d: $2a

jr_035_572e:
	nop                                              ; $572e: $00
	and b                                            ; $572f: $a0
	jr nz, jr_035_574a                               ; $5730: $20 $18

	ld [hl+], a                                      ; $5732: $22
	jr jr_035_5755                                   ; $5733: $18 $20

	jr jr_035_5759                                   ; $5735: $18 $22

	jr jr_035_5706                                   ; $5737: $18 $cd

	ld a, [hl]                                       ; $5739: $7e

jr_035_573a:
	ld a, [hl+]                                      ; $573a: $2a

jr_035_573b:
	nop                                              ; $573b: $00
	xor c                                            ; $573c: $a9
	cp [hl]                                          ; $573d: $be
	jr @+$27                                         ; $573e: $18 $25

	daa                                              ; $5740: $27
	dec h                                            ; $5741: $25
	daa                                              ; $5742: $27
	cp [hl]                                          ; $5743: $be
	call z, $182c                                    ; $5744: $cc $2c $18
	cp [hl]                                          ; $5747: $be
	jr jr_035_5778                                   ; $5748: $18 $2e

jr_035_574a:
	inc l                                            ; $574a: $2c
	ld l, $31                                        ; $574b: $2e $31
	cp [hl]                                          ; $574d: $be
	or c                                             ; $574e: $b1
	and c                                            ; $574f: $a1
	ld h, h                                          ; $5750: $64
	inc b                                            ; $5751: $04
	inc sp                                           ; $5752: $33
	inc a                                            ; $5753: $3c
	ld a, [hl]                                       ; $5754: $7e

jr_035_5755:
	ld a, [hl+]                                      ; $5755: $2a
	nop                                              ; $5756: $00
	xor c                                            ; $5757: $a9
	cpl                                              ; $5758: $2f

jr_035_5759:
	inc c                                            ; $5759: $0c
	inc l                                            ; $575a: $2c
	inc c                                            ; $575b: $0c
	ld l, $48                                        ; $575c: $2e $48
	cpl                                              ; $575e: $2f
	inc c                                            ; $575f: $0c
	inc l                                            ; $5760: $2c
	inc c                                            ; $5761: $0c
	sub [hl]                                         ; $5762: $96
	ld h, h                                          ; $5763: $64
	ld b, $2e                                        ; $5764: $06 $2e
	jr jr_035_5719                                   ; $5766: $18 $b1

	sub e                                            ; $5768: $93
	ld b, [hl]                                       ; $5769: $46
	rlca                                             ; $576a: $07
	inc sp                                           ; $576b: $33
	jr nc, @-$38                                     ; $576c: $30 $c6

	inc sp                                           ; $576e: $33
	ld c, b                                          ; $576f: $48
	or l                                             ; $5770: $b5
	ld h, c                                          ; $5771: $61
	ld bc, $01ff                                     ; $5772: $01 $ff $01
	ld a, [hl]                                       ; $5775: $7e
	ld a, [hl+]                                      ; $5776: $2a
	nop                                              ; $5777: $00

jr_035_5778:
	xor d                                            ; $5778: $aa
	nop                                              ; $5779: $00
	ld b, $33                                        ; $577a: $06 $33
	inc c                                            ; $577c: $0c
	inc sp                                           ; $577d: $33
	inc c                                            ; $577e: $0c

jr_035_577f:
	rst JumpTable                                          ; $577f: $c7
	inc sp                                           ; $5780: $33
	inc c                                            ; $5781: $0c
	inc sp                                           ; $5782: $33
	inc c                                            ; $5783: $0c
	ret                                              ; $5784: $c9


	inc sp                                           ; $5785: $33
	inc c                                            ; $5786: $0c
	inc sp                                           ; $5787: $33
	inc c                                            ; $5788: $0c
	res 7, [hl]                                      ; $5789: $cb $be
	inc c                                            ; $578b: $0c
	inc sp                                           ; $578c: $33
	inc sp                                           ; $578d: $33
	inc sp                                           ; $578e: $33
	inc sp                                           ; $578f: $33
	cp [hl]                                          ; $5790: $be
	ret                                              ; $5791: $c9


	inc sp                                           ; $5792: $33
	inc c                                            ; $5793: $0c
	inc sp                                           ; $5794: $33
	dec c                                            ; $5795: $0d
	rst JumpTable                                          ; $5796: $c7
	inc sp                                           ; $5797: $33
	ld c, $33                                        ; $5798: $0e $33
	rrca                                             ; $579a: $0f
	push bc                                          ; $579b: $c5
	inc sp                                           ; $579c: $33
	ld de, $1833                                     ; $579d: $11 $33 $18
	inc sp                                           ; $57a0: $33
	ld [de], a                                       ; $57a1: $12
	or l                                             ; $57a2: $b5
	ld sp, $c801                                     ; $57a3: $31 $01 $c8
	inc b                                            ; $57a6: $04
	ld a, [hl]                                       ; $57a7: $7e
	ld a, [hl+]                                      ; $57a8: $2a
	nop                                              ; $57a9: $00
	xor c                                            ; $57aa: $a9
	nop                                              ; $57ab: $00
	inc c                                            ; $57ac: $0c
	ld sp, $2e0c                                     ; $57ad: $31 $0c $2e
	dec bc                                           ; $57b0: $0b
	inc l                                            ; $57b1: $2c
	ld a, [bc]                                       ; $57b2: $0a
	jr z, jr_035_57be                                ; $57b3: $28 $09

	ld l, $08                                        ; $57b5: $2e $08
	call nz, $08be                                   ; $57b7: $c4 $be $08
	inc l                                            ; $57ba: $2c
	jr z, jr_035_57e4                                ; $57bb: $28 $27

	inc l                                            ; $57bd: $2c

jr_035_57be:
	jr z, @+$29                                      ; $57be: $28 $27

	cp [hl]                                          ; $57c0: $be
	push bc                                          ; $57c1: $c5
	dec h                                            ; $57c2: $25
	ld [$0928], sp                                   ; $57c3: $08 $28 $09
	daa                                              ; $57c6: $27
	add hl, bc                                       ; $57c7: $09
	dec h                                            ; $57c8: $25
	add hl, bc                                       ; $57c9: $09
	ld [hl+], a                                      ; $57ca: $22
	ld a, [bc]                                       ; $57cb: $0a
	daa                                              ; $57cc: $27
	ld a, [bc]                                       ; $57cd: $0a
	dec h                                            ; $57ce: $25
	ld a, [bc]                                       ; $57cf: $0a
	add $22                                          ; $57d0: $c6 $22
	dec bc                                           ; $57d2: $0b
	jr nz, jr_035_57e0                               ; $57d3: $20 $0b

	dec h                                            ; $57d5: $25
	dec bc                                           ; $57d6: $0b
	ld [hl+], a                                      ; $57d7: $22
	dec c                                            ; $57d8: $0d
	jr nz, jr_035_57e8                               ; $57d9: $20 $0d

	inc e                                            ; $57db: $1c
	ld c, $22                                        ; $57dc: $0e $22
	rrca                                             ; $57de: $0f
	push bc                                          ; $57df: $c5

jr_035_57e0:
	jr nz, jr_035_57f1                               ; $57e0: $20 $0f

	inc e                                            ; $57e2: $1c
	db $10                                           ; $57e3: $10

jr_035_57e4:
	sub [hl]                                         ; $57e4: $96
	add d                                            ; $57e5: $82
	ld b, $1b                                        ; $57e6: $06 $1b

jr_035_57e8:
	rrca                                             ; $57e8: $0f
	call nz, $1320                                   ; $57e9: $c4 $20 $13
	inc e                                            ; $57ec: $1c
	rla                                              ; $57ed: $17

jr_035_57ee:
	dec de                                           ; $57ee: $1b
	ld a, [de]                                       ; $57ef: $1a
	add hl, de                                       ; $57f0: $19

jr_035_57f1:
	ld c, a                                          ; $57f1: $4f
	or l                                             ; $57f2: $b5
	sub e                                            ; $57f3: $93
	ld bc, $0682                                     ; $57f4: $01 $82 $06
	ld a, [hl]                                       ; $57f7: $7e
	ld a, [hl+]                                      ; $57f8: $2a
	nop                                              ; $57f9: $00
	and b                                            ; $57fa: $a0
	nop                                              ; $57fb: $00
	jr jr_035_5817                                   ; $57fc: $18 $19

	jr nc, jr_035_581b                               ; $57fe: $30 $1b

	jr nc, @+$1e                                     ; $5800: $30 $1c

	jr nc, jr_035_5824                               ; $5802: $30 $20

	ld a, $96                                        ; $5804: $3e $96
	cp [hl]                                          ; $5806: $be
	ld b, $7e                                        ; $5807: $06 $7e
	ld [hl-], a                                      ; $5809: $32
	nop                                              ; $580a: $00
	xor c                                            ; $580b: $a9
	dec de                                           ; $580c: $1b
	xor [hl]                                         ; $580d: $ae
	add $7e                                          ; $580e: $c6 $7e
	ld a, [hl+]                                      ; $5810: $2a
	nop                                              ; $5811: $00
	xor e                                            ; $5812: $ab
	dec [hl]                                         ; $5813: $35
	jr @+$33                                         ; $5814: $18 $31

	ld [de], a                                       ; $5816: $12

jr_035_5817:
	cp $ff                                           ; $5817: $fe $ff
	or [hl]                                          ; $5819: $b6
	ret z                                            ; $581a: $c8

jr_035_581b:
	or c                                             ; $581b: $b1
	ld bc, $0114                                     ; $581c: $01 $14 $01
	ld a, l                                          ; $581f: $7d
	nop                                              ; $5820: $00
	ld a, [hl]                                       ; $5821: $7e
	ld a, [hl+]                                      ; $5822: $2a
	nop                                              ; $5823: $00

jr_035_5824:
	xor d                                            ; $5824: $aa
	cp [hl]                                          ; $5825: $be
	inc c                                            ; $5826: $0c
	jr z, jr_035_5850                                ; $5827: $28 $27

	inc l                                            ; $5829: $2c
	jr z, jr_035_5853                                ; $582a: $28 $27

	dec h                                            ; $582c: $25
	ld [hl+], a                                      ; $582d: $22
	jr nz, jr_035_57ee                               ; $582e: $20 $be

	cp [hl]                                          ; $5830: $be
	inc c                                            ; $5831: $0c
	daa                                              ; $5832: $27
	dec h                                            ; $5833: $25
	ld [hl+], a                                      ; $5834: $22
	jr nz, jr_035_5853                               ; $5835: $20 $1c

	dec de                                           ; $5837: $1b
	add hl, de                                       ; $5838: $19
	dec de                                           ; $5839: $1b
	cp [hl]                                          ; $583a: $be
	cp [hl]                                          ; $583b: $be
	inc c                                            ; $583c: $0c
	inc e                                            ; $583d: $1c
	jr nz, jr_035_5862                               ; $583e: $20 $22

	dec h                                            ; $5840: $25
	daa                                              ; $5841: $27
	dec h                                            ; $5842: $25
	daa                                              ; $5843: $27
	inc l                                            ; $5844: $2c
	cp [hl]                                          ; $5845: $be
	ld l, $0c                                        ; $5846: $2e $0c
	res 7, [hl]                                      ; $5848: $cb $be
	inc c                                            ; $584a: $0c
	ld sp, $3133                                     ; $584b: $31 $33 $31
	inc sp                                           ; $584e: $33
	cp [hl]                                          ; $584f: $be

jr_035_5850:
	jp z, $0c38                                      ; $5850: $ca $38 $0c

jr_035_5853:
	ld a, [hl-]                                      ; $5853: $3a
	inc c                                            ; $5854: $0c
	ret                                              ; $5855: $c9


	dec a                                            ; $5856: $3d
	inc c                                            ; $5857: $0c
	ccf                                              ; $5858: $3f
	inc c                                            ; $5859: $0c
	ld b, b                                          ; $585a: $40
	inc c                                            ; $585b: $0c
	ld a, [hl]                                       ; $585c: $7e
	ld a, [hl+]                                      ; $585d: $2a
	nop                                              ; $585e: $00
	and b                                            ; $585f: $a0
	sub [hl]                                         ; $5860: $96
	sub [hl]                                         ; $5861: $96

jr_035_5862:
	inc b                                            ; $5862: $04
	ccf                                              ; $5863: $3f
	ld d, h                                          ; $5864: $54
	nop                                              ; $5865: $00
	ld d, h                                          ; $5866: $54
	cp $b5                                           ; $5867: $fe $b5
	or c                                             ; $5869: $b1
	ld bc, $0264                                     ; $586a: $01 $64 $02
	ld a, [hl]                                       ; $586d: $7e
	ld a, [hl+]                                      ; $586e: $2a
	nop                                              ; $586f: $00
	xor d                                            ; $5870: $aa
	cp [hl]                                          ; $5871: $be
	jr nc, jr_035_58a2                               ; $5872: $30 $2e

	jr nc, jr_035_58a7                               ; $5874: $30 $31

	ld l, $be                                        ; $5876: $2e $be
	cp [hl]                                          ; $5878: $be
	jr jr_035_58ab                                   ; $5879: $18 $30

	ld l, $2a                                        ; $587b: $2e $2a
	ld l, $be                                        ; $587d: $2e $be
	ld a, [hl+]                                      ; $587f: $2a
	jr nc, jr_035_58ab                               ; $5880: $30 $29

	jr nc, jr_035_5850                               ; $5882: $30 $cc

	daa                                              ; $5884: $27
	jr nc, @+$29                                     ; $5885: $30 $27

	jr @+$2b                                         ; $5887: $18 $29

	jr jr_035_58b5                                   ; $5889: $18 $2a

	jr nc, @+$29                                     ; $588b: $30 $27

	jr nc, jr_035_58b8                               ; $588d: $30 $29

	jr nc, jr_035_58b5                               ; $588f: $30 $24

	jr jr_035_58b5                                   ; $5891: $18 $22

	jr jr_035_58b9                                   ; $5893: $18 $24

	ld h, b                                          ; $5895: $60
	or l                                             ; $5896: $b5
	or c                                             ; $5897: $b1
	ld bc, $0264                                     ; $5898: $01 $64 $02
	ld a, [hl]                                       ; $589b: $7e
	ld a, [hl+]                                      ; $589c: $2a
	nop                                              ; $589d: $00
	xor d                                            ; $589e: $aa
	cp [hl]                                          ; $589f: $be
	jr nc, jr_035_58d0                               ; $58a0: $30 $2e

jr_035_58a2:
	jr nc, jr_035_58d5                               ; $58a2: $30 $31

	ld l, $be                                        ; $58a4: $2e $be
	cp [hl]                                          ; $58a6: $be

jr_035_58a7:
	jr jr_035_58d9                                   ; $58a7: $18 $30

	ld l, $2a                                        ; $58a9: $2e $2a

jr_035_58ab:
	ld l, $be                                        ; $58ab: $2e $be
	call z, $302a                                    ; $58ad: $cc $2a $30
	add hl, hl                                       ; $58b0: $29
	jr nc, @+$29                                     ; $58b1: $30 $27

	jr nc, @-$40                                     ; $58b3: $30 $be

jr_035_58b5:
	jr @+$29                                         ; $58b5: $18 $27

	add hl, hl                                       ; $58b7: $29

jr_035_58b8:
	ld a, [hl+]                                      ; $58b8: $2a

jr_035_58b9:
	add hl, hl                                       ; $58b9: $29
	ld a, [hl+]                                      ; $58ba: $2a
	cp [hl]                                          ; $58bb: $be
	sra [hl]                                         ; $58bc: $cb $2e
	jr jr_035_58f0                                   ; $58be: $18 $30

	jr jr_035_58f0                                   ; $58c0: $18 $2e

	jr jr_035_58f4                                   ; $58c2: $18 $30

	jr @-$34                                         ; $58c4: $18 $ca

	inc sp                                           ; $58c6: $33
	jr jr_035_58fe                                   ; $58c7: $18 $35

	ld c, b                                          ; $58c9: $48
	ld [hl], $0c                                     ; $58ca: $36 $0c
	inc sp                                           ; $58cc: $33
	inc c                                            ; $58cd: $0c
	or l                                             ; $58ce: $b5
	and c                                            ; $58cf: $a1

jr_035_58d0:
	ld bc, $0382                                     ; $58d0: $01 $82 $03
	ld a, [hl]                                       ; $58d3: $7e
	ld a, [hl+]                                      ; $58d4: $2a

jr_035_58d5:
	nop                                              ; $58d5: $00
	xor d                                            ; $58d6: $aa
	dec [hl]                                         ; $58d7: $35
	ld c, b                                          ; $58d8: $48

jr_035_58d9:
	jr nc, jr_035_58e7                               ; $58d9: $30 $0c

	ld l, $0c                                        ; $58db: $2e $0c
	jr nc, jr_035_5927                               ; $58dd: $30 $48

	ld [hl], $0c                                     ; $58df: $36 $0c
	inc sp                                           ; $58e1: $33
	inc c                                            ; $58e2: $0c
	dec [hl]                                         ; $58e3: $35
	jr jr_035_591b                                   ; $58e4: $18 $35

	inc c                                            ; $58e6: $0c

jr_035_58e7:
	inc sp                                           ; $58e7: $33
	inc c                                            ; $58e8: $0c
	jr nc, jr_035_5903                               ; $58e9: $30 $18

	ld a, [hl]                                       ; $58eb: $7e
	ld a, [hl+]                                      ; $58ec: $2a
	nop                                              ; $58ed: $00
	and c                                            ; $58ee: $a1
	inc sp                                           ; $58ef: $33

jr_035_58f0:
	jr jr_035_5970                                   ; $58f0: $18 $7e

	ld a, [hl+]                                      ; $58f2: $2a
	nop                                              ; $58f3: $00

jr_035_58f4:
	xor c                                            ; $58f4: $a9
	ld l, $18                                        ; $58f5: $2e $18
	ld l, $0c                                        ; $58f7: $2e $0c
	ld a, [hl+]                                      ; $58f9: $2a
	inc c                                            ; $58fa: $0c
	add hl, hl                                       ; $58fb: $29
	jr jr_035_597c                                   ; $58fc: $18 $7e

jr_035_58fe:
	ld a, [hl+]                                      ; $58fe: $2a
	nop                                              ; $58ff: $00
	and c                                            ; $5900: $a1
	ld l, $18                                        ; $5901: $2e $18

jr_035_5903:
	ld a, [hl]                                       ; $5903: $7e
	ld a, [hl+]                                      ; $5904: $2a
	nop                                              ; $5905: $00
	xor c                                            ; $5906: $a9
	daa                                              ; $5907: $27
	jr jr_035_5931                                   ; $5908: $18 $27

	inc c                                            ; $590a: $0c
	inc hl                                           ; $590b: $23
	inc c                                            ; $590c: $0c
	ld [hl+], a                                      ; $590d: $22
	jr nc, @-$49                                     ; $590e: $30 $b5

jr_035_5910:
	pop af                                           ; $5910: $f1
	ld bc, $011e                                     ; $5911: $01 $1e $01
	ld a, [hl]                                       ; $5914: $7e
	ld a, [hl+]                                      ; $5915: $2a
	nop                                              ; $5916: $00
	and d                                            ; $5917: $a2
	cp [hl]                                          ; $5918: $be
	jr @+$0a                                         ; $5919: $18 $08

jr_035_591b:
	ld a, [bc]                                       ; $591b: $0a
	dec c                                            ; $591c: $0d

jr_035_591d:
	rrca                                             ; $591d: $0f
	db $10                                           ; $591e: $10
	rrca                                             ; $591f: $0f
	db $10                                           ; $5920: $10
	cp [hl]                                          ; $5921: $be
	adc $7e                                          ; $5922: $ce $7e
	ld a, [hl+]                                      ; $5924: $2a
	nop                                              ; $5925: $00
	and c                                            ; $5926: $a1

jr_035_5927:
	inc d                                            ; $5927: $14
	jr @+$18                                         ; $5928: $18 $16

jr_035_592a:
	jr @+$16                                         ; $592a: $18 $14

	jr jr_035_5944                                   ; $592c: $18 $16

	jr @-$31                                         ; $592e: $18 $cd

	ld a, [hl]                                       ; $5930: $7e

jr_035_5931:
	ld a, [hl+]                                      ; $5931: $2a
	nop                                              ; $5932: $00
	xor c                                            ; $5933: $a9
	cp [hl]                                          ; $5934: $be
	jr jr_035_5950                                   ; $5935: $18 $19

	dec de                                           ; $5937: $1b
	add hl, de                                       ; $5938: $19
	dec de                                           ; $5939: $1b
	cp [hl]                                          ; $593a: $be
	call z, $1820                                    ; $593b: $cc $20 $18
	cp [hl]                                          ; $593e: $be
	jr jr_035_5963                                   ; $593f: $18 $22

	jr nz, jr_035_5965                               ; $5941: $20 $22

	dec h                                            ; $5943: $25

jr_035_5944:
	cp [hl]                                          ; $5944: $be
	or c                                             ; $5945: $b1
	and c                                            ; $5946: $a1
	ld h, h                                          ; $5947: $64
	inc b                                            ; $5948: $04
	daa                                              ; $5949: $27
	ld c, b                                          ; $594a: $48
	ld a, [hl]                                       ; $594b: $7e
	ld a, [hl+]                                      ; $594c: $2a

jr_035_594d:
	nop                                              ; $594d: $00
	xor c                                            ; $594e: $a9
	inc [hl]                                         ; $594f: $34

jr_035_5950:
	inc c                                            ; $5950: $0c
	ld sp, $330c                                     ; $5951: $31 $0c $33
	ld c, b                                          ; $5954: $48
	jr c, jr_035_5963                                ; $5955: $38 $0c

	inc [hl]                                         ; $5957: $34
	inc c                                            ; $5958: $0c
	sub [hl]                                         ; $5959: $96
	ld h, h                                          ; $595a: $64
	ld b, $33                                        ; $595b: $06 $33
	jr nc, jr_035_5910                               ; $595d: $30 $b1

	add d                                            ; $595f: $82
	ld b, [hl]                                       ; $5960: $46
	rlca                                             ; $5961: $07
	inc sp                                           ; $5962: $33

jr_035_5963:
	jr nc, jr_035_592a                               ; $5963: $30 $c5

jr_035_5965:
	inc sp                                           ; $5965: $33
	jr nc, jr_035_591d                               ; $5966: $30 $b5

	add c                                            ; $5968: $81
	ld bc, $01ff                                     ; $5969: $01 $ff $01
	ld a, [hl]                                       ; $596c: $7e
	ld a, [hl+]                                      ; $596d: $2a
	nop                                              ; $596e: $00
	xor d                                            ; $596f: $aa

jr_035_5970:
	inc sp                                           ; $5970: $33
	inc c                                            ; $5971: $0c
	inc sp                                           ; $5972: $33
	inc c                                            ; $5973: $0c
	jp z, $0c33                                      ; $5974: $ca $33 $0c

	inc sp                                           ; $5977: $33
	inc c                                            ; $5978: $0c
	call z, $0c33                                    ; $5979: $cc $33 $0c

jr_035_597c:
	inc sp                                           ; $597c: $33
	inc c                                            ; $597d: $0c
	adc $be                                          ; $597e: $ce $be
	inc c                                            ; $5980: $0c
	inc sp                                           ; $5981: $33
	inc sp                                           ; $5982: $33
	inc sp                                           ; $5983: $33
	inc sp                                           ; $5984: $33
	cp [hl]                                          ; $5985: $be
	call z, $0c33                                    ; $5986: $cc $33 $0c
	inc sp                                           ; $5989: $33
	dec c                                            ; $598a: $0d
	jp z, $0e33                                      ; $598b: $ca $33 $0e

	inc sp                                           ; $598e: $33
	rrca                                             ; $598f: $0f
	ret                                              ; $5990: $c9


	inc sp                                           ; $5991: $33
	ld de, $1833                                     ; $5992: $11 $33 $18
	inc sp                                           ; $5995: $33
	jr jr_035_594d                                   ; $5996: $18 $b5

	add c                                            ; $5998: $81
	ld bc, $01c8                                     ; $5999: $01 $c8 $01
	ld a, [hl]                                       ; $599c: $7e
	ld a, [hl+]                                      ; $599d: $2a
	nop                                              ; $599e: $00
	xor c                                            ; $599f: $a9
	ld sp, $2e0c                                     ; $59a0: $31 $0c $2e
	dec bc                                           ; $59a3: $0b
	inc l                                            ; $59a4: $2c
	ld a, [bc]                                       ; $59a5: $0a
	jr z, jr_035_59b1                                ; $59a6: $28 $09

	ld l, $08                                        ; $59a8: $2e $08
	ret                                              ; $59aa: $c9


	cp [hl]                                          ; $59ab: $be
	ld [$282c], sp                                   ; $59ac: $08 $2c $28
	daa                                              ; $59af: $27

jr_035_59b0:
	inc l                                            ; $59b0: $2c

jr_035_59b1:
	jr z, jr_035_59da                                ; $59b1: $28 $27

	cp [hl]                                          ; $59b3: $be
	jp z, $0825                                      ; $59b4: $ca $25 $08

	jr z, jr_035_59c2                                ; $59b7: $28 $09

	daa                                              ; $59b9: $27
	add hl, bc                                       ; $59ba: $09
	dec h                                            ; $59bb: $25
	add hl, bc                                       ; $59bc: $09
	ld [hl+], a                                      ; $59bd: $22
	ld a, [bc]                                       ; $59be: $0a
	daa                                              ; $59bf: $27
	ld a, [bc]                                       ; $59c0: $0a
	dec h                                            ; $59c1: $25

jr_035_59c2:
	ld a, [bc]                                       ; $59c2: $0a
	sla d                                            ; $59c3: $cb $22
	dec bc                                           ; $59c5: $0b
	jr nz, jr_035_59d3                               ; $59c6: $20 $0b

	dec h                                            ; $59c8: $25
	dec bc                                           ; $59c9: $0b
	ld [hl+], a                                      ; $59ca: $22
	inc c                                            ; $59cb: $0c
	jr nz, jr_035_59da                               ; $59cc: $20 $0c

	inc e                                            ; $59ce: $1c
	inc c                                            ; $59cf: $0c
	jp z, $0d22                                      ; $59d0: $ca $22 $0d

jr_035_59d3:
	jr nz, jr_035_59e2                               ; $59d3: $20 $0d

	inc e                                            ; $59d5: $1c
	ld c, $1b                                        ; $59d6: $0e $1b
	rrca                                             ; $59d8: $0f
	ret                                              ; $59d9: $c9


jr_035_59da:
	jr nz, jr_035_59ef                               ; $59da: $20 $13

	inc e                                            ; $59dc: $1c
	rla                                              ; $59dd: $17
	dec de                                           ; $59de: $1b
	ld a, [de]                                       ; $59df: $1a
	add hl, de                                       ; $59e0: $19
	ld h, l                                          ; $59e1: $65

jr_035_59e2:
	or l                                             ; $59e2: $b5
	pop de                                           ; $59e3: $d1
	ld bc, $0282                                     ; $59e4: $01 $82 $02
	ld a, [hl]                                       ; $59e7: $7e
	ld a, [hl+]                                      ; $59e8: $2a
	nop                                              ; $59e9: $00
	and b                                            ; $59ea: $a0
	cp [hl]                                          ; $59eb: $be
	jr nc, jr_035_5a07                               ; $59ec: $30 $19

	dec de                                           ; $59ee: $1b

jr_035_59ef:
	inc e                                            ; $59ef: $1c
	jr nz, jr_035_59b0                               ; $59f0: $20 $be

	sub [hl]                                         ; $59f2: $96
	cp [hl]                                          ; $59f3: $be
	inc b                                            ; $59f4: $04
	ld a, [hl]                                       ; $59f5: $7e
	ld [hl-], a                                      ; $59f6: $32
	nop                                              ; $59f7: $00

jr_035_59f8:
	xor c                                            ; $59f8: $a9
	dec de                                           ; $59f9: $1b
	xor [hl]                                         ; $59fa: $ae
	jp z, $2a7e                                      ; $59fb: $ca $7e $2a

	nop                                              ; $59fe: $00
	xor e                                            ; $59ff: $ab
	dec [hl]                                         ; $5a00: $35
	jr jr_035_5a34                                   ; $5a01: $18 $31

	jr @+$32                                         ; $5a03: $18 $30

jr_035_5a05:
	jr nz, jr_035_5a05                               ; $5a05: $20 $fe

jr_035_5a07:
	rst $38                                          ; $5a07: $ff
	ret nc                                           ; $5a08: $d0

	ret z                                            ; $5a09: $c8

	nop                                              ; $5a0a: $00
	rst $38                                          ; $5a0b: $ff
	nop                                              ; $5a0c: $00
	rst $38                                          ; $5a0d: $ff
	nop                                              ; $5a0e: $00
	ld b, d                                          ; $5a0f: $42
	cp $c4                                           ; $5a10: $fe $c4
	db $d3                                           ; $5a12: $d3
	ld a, a                                          ; $5a13: $7f
	ld [hl+], a                                      ; $5a14: $22
	nop                                              ; $5a15: $00
	inc c                                            ; $5a16: $0c
	cp [hl]                                          ; $5a17: $be
	jr nc, @+$3c                                     ; $5a18: $30 $3a

	inc a                                            ; $5a1a: $3c

jr_035_5a1b:
	dec a                                            ; $5a1b: $3d
	ld a, [hl-]                                      ; $5a1c: $3a
	cp [hl]                                          ; $5a1d: $be
	cp [hl]                                          ; $5a1e: $be
	jr jr_035_5a5d                                   ; $5a1f: $18 $3c

	ld a, [hl-]                                      ; $5a21: $3a
	ld [hl], $3a                                     ; $5a22: $36 $3a
	cp [hl]                                          ; $5a24: $be
	ld [hl], $30                                     ; $5a25: $36 $30
	dec [hl]                                         ; $5a27: $35
	jr nc, jr_035_5a5d                               ; $5a28: $30 $33

	jr nc, jr_035_5a5f                               ; $5a2a: $30 $33

	jr @+$37                                         ; $5a2c: $18 $35

	jr jr_035_5a66                                   ; $5a2e: $18 $36

	jr nc, jr_035_5a65                               ; $5a30: $30 $33

	jr nc, jr_035_5a69                               ; $5a32: $30 $35

jr_035_5a34:
	jr nc, jr_035_5a66                               ; $5a34: $30 $30

	jr jr_035_5a66                                   ; $5a36: $18 $2e

	jr jr_035_59f8                                   ; $5a38: $18 $be

	inc c                                            ; $5a3a: $0c
	inc a                                            ; $5a3b: $3c
	ld b, c                                          ; $5a3c: $41
	inc a                                            ; $5a3d: $3c
	ld a, [hl-]                                      ; $5a3e: $3a
	cp [hl]                                          ; $5a3f: $be
	inc a                                            ; $5a40: $3c
	inc h                                            ; $5a41: $24
	ld a, a                                          ; $5a42: $7f
	ld [hl+], a                                      ; $5a43: $22
	db $d3                                           ; $5a44: $d3
	call nz, $0c00                                   ; $5a45: $c4 $00 $0c
	cp [hl]                                          ; $5a48: $be
	jr nc, jr_035_5a85                               ; $5a49: $30 $3a

	inc a                                            ; $5a4b: $3c
	dec a                                            ; $5a4c: $3d
	ld a, [hl-]                                      ; $5a4d: $3a
	cp [hl]                                          ; $5a4e: $be
	cp [hl]                                          ; $5a4f: $be
	jr jr_035_5a8e                                   ; $5a50: $18 $3c

	ld a, [hl-]                                      ; $5a52: $3a
	ld [hl], $3a                                     ; $5a53: $36 $3a
	cp [hl]                                          ; $5a55: $be
	ld [hl], $30                                     ; $5a56: $36 $30

jr_035_5a58:
	dec [hl]                                         ; $5a58: $35
	jr nc, jr_035_5a8e                               ; $5a59: $30 $33

	jr nc, jr_035_5a1b                               ; $5a5b: $30 $be

jr_035_5a5d:
	jr jr_035_5a92                                   ; $5a5d: $18 $33

jr_035_5a5f:
	dec [hl]                                         ; $5a5f: $35
	ld [hl], $35                                     ; $5a60: $36 $35
	ld [hl], $3a                                     ; $5a62: $36 $3a
	cp [hl]                                          ; $5a64: $be

jr_035_5a65:
	cp [hl]                                          ; $5a65: $be

jr_035_5a66:
	jr jr_035_5aa4                                   ; $5a66: $18 $3c

	ld a, [hl-]                                      ; $5a68: $3a

jr_035_5a69:
	inc a                                            ; $5a69: $3c
	ccf                                              ; $5a6a: $3f
	cp [hl]                                          ; $5a6b: $be
	ld b, c                                          ; $5a6c: $41
	inc h                                            ; $5a6d: $24
	add $41                                          ; $5a6e: $c6 $41
	jr nc, jr_035_5a72                               ; $5a70: $30 $00

jr_035_5a72:
	rst $38                                          ; $5a72: $ff
	nop                                              ; $5a73: $00
	pop hl                                           ; $5a74: $e1
	nop                                              ; $5a75: $00
	rst $38                                          ; $5a76: $ff
	nop                                              ; $5a77: $00
	rst $38                                          ; $5a78: $ff
	nop                                              ; $5a79: $00
	rst $38                                          ; $5a7a: $ff
	nop                                              ; $5a7b: $00
	inc sp                                           ; $5a7c: $33
	nop                                              ; $5a7d: $00
	rst AddAOntoHL                                          ; $5a7e: $ef
	nop                                              ; $5a7f: $00
	rst $38                                          ; $5a80: $ff
	nop                                              ; $5a81: $00
	ret                                              ; $5a82: $c9


	nop                                              ; $5a83: $00
	rst $38                                          ; $5a84: $ff

jr_035_5a85:
	nop                                              ; $5a85: $00
	cp a                                             ; $5a86: $bf
	cp $ff                                           ; $5a87: $fe $ff
	or [hl]                                          ; $5a89: $b6
	sub [hl]                                         ; $5a8a: $96
	add c                                            ; $5a8b: $81
	inc bc                                           ; $5a8c: $03
	inc a                                            ; $5a8d: $3c

jr_035_5a8e:
	rlca                                             ; $5a8e: $07
	cp $7e                                           ; $5a8f: $fe $7e
	inc sp                                           ; $5a91: $33

jr_035_5a92:
	nop                                              ; $5a92: $00
	xor e                                            ; $5a93: $ab
	cp l                                             ; $5a94: $bd
	ld [bc], a                                       ; $5a95: $02
	jr nc, jr_035_5a58                               ; $5a96: $30 $c0

	ld [hl], h                                       ; $5a98: $74
	ld a, [hl]                                       ; $5a99: $7e
	inc [hl]                                         ; $5a9a: $34
	nop                                              ; $5a9b: $00
	xor d                                            ; $5a9c: $aa
	cp l                                             ; $5a9d: $bd
	ld [bc], a                                       ; $5a9e: $02
	dec hl                                           ; $5a9f: $2b
	ret nz                                           ; $5aa0: $c0

	sub d                                            ; $5aa1: $92
	cp $ff                                           ; $5aa2: $fe $ff

jr_035_5aa4:
	or [hl]                                          ; $5aa4: $b6
	sub [hl]                                         ; $5aa5: $96
	ld [hl], c                                       ; $5aa6: $71
	ld [bc], a                                       ; $5aa7: $02
	ld d, b                                          ; $5aa8: $50
	rlca                                             ; $5aa9: $07
	ld a, l                                          ; $5aaa: $7d
	nop                                              ; $5aab: $00
	cp $7e                                           ; $5aac: $fe $7e
	dec l                                            ; $5aae: $2d
	ld e, $a9                                        ; $5aaf: $1e $a9
	nop                                              ; $5ab1: $00
	ld d, b                                          ; $5ab2: $50
	dec [hl]                                         ; $5ab3: $35
	ld h, b                                          ; $5ab4: $60
	ret                                              ; $5ab5: $c9


	ld [hl], $0c                                     ; $5ab6: $36 $0c
	dec [hl]                                         ; $5ab8: $35
	inc c                                            ; $5ab9: $0c
	ld [hl], $0c                                     ; $5aba: $36 $0c
	ld a, l                                          ; $5abc: $7d
	ld [bc], a                                       ; $5abd: $02
	dec [hl]                                         ; $5abe: $35
	inc b                                            ; $5abf: $04

jr_035_5ac0:
	ld [hl], $08                                     ; $5ac0: $36 $08
	ld a, l                                          ; $5ac2: $7d
	nop                                              ; $5ac3: $00
	dec [hl]                                         ; $5ac4: $35
	inc h                                            ; $5ac5: $24
	ret z                                            ; $5ac6: $c8

	jr nc, @+$1a                                     ; $5ac7: $30 $18

	rst JumpTable                                          ; $5ac9: $c7
	inc sp                                           ; $5aca: $33
	jr @+$80                                         ; $5acb: $18 $7e

	dec l                                            ; $5acd: $2d
	and b                                            ; $5ace: $a0
	xor c                                            ; $5acf: $a9
	ret z                                            ; $5ad0: $c8

	cp l                                             ; $5ad1: $bd
	ld [bc], a                                       ; $5ad2: $02
	dec [hl]                                         ; $5ad3: $35
	ld h, b                                          ; $5ad4: $60
	ldh a, [c]                                       ; $5ad5: $f2
	ret z                                            ; $5ad6: $c8

	ld a, [hl]                                       ; $5ad7: $7e
	dec l                                            ; $5ad8: $2d
	ld e, $a9                                        ; $5ad9: $1e $a9
	nop                                              ; $5adb: $00
	ld d, b                                          ; $5adc: $50
	dec [hl]                                         ; $5add: $35
	ld h, b                                          ; $5ade: $60
	ret                                              ; $5adf: $c9


	ld [hl], $0c                                     ; $5ae0: $36 $0c
	dec [hl]                                         ; $5ae2: $35
	inc c                                            ; $5ae3: $0c
	ld [hl], $0c                                     ; $5ae4: $36 $0c
	ld a, l                                          ; $5ae6: $7d

jr_035_5ae7:
	ld [bc], a                                       ; $5ae7: $02
	dec [hl]                                         ; $5ae8: $35
	inc b                                            ; $5ae9: $04
	ld [hl], $08                                     ; $5aea: $36 $08
	ld a, l                                          ; $5aec: $7d
	nop                                              ; $5aed: $00
	dec [hl]                                         ; $5aee: $35
	inc h                                            ; $5aef: $24
	jp z, $1830                                      ; $5af0: $ca $30 $18

	ret z                                            ; $5af3: $c8

	inc sp                                           ; $5af4: $33
	jr jr_035_5ac0                                   ; $5af5: $18 $c9

	jr nc, jr_035_5b1d                               ; $5af7: $30 $24

	ret z                                            ; $5af9: $c8

	inc sp                                           ; $5afa: $33
	inc c                                            ; $5afb: $0c
	ret                                              ; $5afc: $c9


	jr nc, @+$0e                                     ; $5afd: $30 $0c

	ld l, $0c                                        ; $5aff: $2e $0c
	jr nc, @+$0a                                     ; $5b01: $30 $08

	ld l, $08                                        ; $5b03: $2e $08
	add hl, hl                                       ; $5b05: $29
	ld [$2ec8], sp                                   ; $5b06: $08 $c8 $2e
	ld [$0830], sp                                   ; $5b09: $08 $30 $08
	ld sp, $7d08                                     ; $5b0c: $31 $08 $7d
	ld [bc], a                                       ; $5b0f: $02
	jr nc, jr_035_5b16                               ; $5b10: $30 $04

	ld sp, $7d08                                     ; $5b12: $31 $08 $7d
	nop                                              ; $5b15: $00

jr_035_5b16:
	rst JumpTable                                          ; $5b16: $c7
	jr nc, jr_035_5ae7                               ; $5b17: $30 $ce

	cp $ff                                           ; $5b19: $fe $ff
	or h                                             ; $5b1b: $b4
	sub [hl]                                         ; $5b1c: $96

jr_035_5b1d:
	pop af                                           ; $5b1d: $f1
	inc h                                            ; $5b1e: $24
	cp $c2                                           ; $5b1f: $fe $c2
	ld a, [hl]                                       ; $5b21: $7e
	inc [hl]                                         ; $5b22: $34
	nop                                              ; $5b23: $00
	xor c                                            ; $5b24: $a9
	cp l                                             ; $5b25: $bd
	ld [bc], a                                       ; $5b26: $02
	ld [hl+], a                                      ; $5b27: $22
	ret nz                                           ; $5b28: $c0

	ld d, b                                          ; $5b29: $50
	ld a, [hl]                                       ; $5b2a: $7e
	nop                                              ; $5b2b: $00
	call nz, $1822                                   ; $5b2c: $c4 $22 $18
	add $22                                          ; $5b2f: $c6 $22
	inc c                                            ; $5b31: $0c
	jp nz, $347e                                     ; $5b32: $c2 $7e $34

	nop                                              ; $5b35: $00
	xor c                                            ; $5b36: $a9
	cp l                                             ; $5b37: $bd
	ld [bc], a                                       ; $5b38: $02
	dec e                                            ; $5b39: $1d
	ret nz                                           ; $5b3a: $c0

	ld h, h                                          ; $5b3b: $64
	ld a, [hl]                                       ; $5b3c: $7e
	nop                                              ; $5b3d: $00
	call nz, $221d                                   ; $5b3e: $c4 $1d $22
	add $1d                                          ; $5b41: $c6 $1d
	inc c                                            ; $5b43: $0c
	cp $ff                                           ; $5b44: $fe $ff
	ret nc                                           ; $5b46: $d0

	ld l, [hl]                                       ; $5b47: $6e
	cp $63                                           ; $5b48: $fe $63
	jp nz, Jump_035_7e92                             ; $5b4a: $c2 $92 $7e

	dec l                                            ; $5b4d: $2d
	nop                                              ; $5b4e: $00
	and c                                            ; $5b4f: $a1
	nop                                              ; $5b50: $00
	rrca                                             ; $5b51: $0f
	jr nz, jr_035_5b6c                               ; $5b52: $20 $18

	jr nz, @+$0e                                     ; $5b54: $20 $0c

	dec h                                            ; $5b56: $25
	inc c                                            ; $5b57: $0c
	dec h                                            ; $5b58: $25
	jr nc, @+$27                                     ; $5b59: $30 $25

	jr @+$26                                         ; $5b5b: $18 $24

	inc c                                            ; $5b5d: $0c
	dec h                                            ; $5b5e: $25
	inc c                                            ; $5b5f: $0c
	daa                                              ; $5b60: $27
	jr @+$26                                         ; $5b61: $18 $24

	jr jr_035_5b8a                                   ; $5b63: $18 $25

	jr @+$27                                         ; $5b65: $18 $25

	inc c                                            ; $5b67: $0c
	inc l                                            ; $5b68: $2c
	add hl, bc                                       ; $5b69: $09
	ld a, [hl]                                       ; $5b6a: $7e
	dec l                                            ; $5b6b: $2d

jr_035_5b6c:
	jr @-$5e                                         ; $5b6c: $18 $a0

	push bc                                          ; $5b6e: $c5
	sub c                                            ; $5b6f: $91
	ld e, $0c                                        ; $5b70: $1e $0c
	dec e                                            ; $5b72: $1d
	inc c                                            ; $5b73: $0c
	ld e, $0c                                        ; $5b74: $1e $0c
	push bc                                          ; $5b76: $c5

jr_035_5b77:
	dec e                                            ; $5b77: $1d
	inc c                                            ; $5b78: $0c
	jp nz, $0c1d                                     ; $5b79: $c2 $1d $0c

	push bc                                          ; $5b7c: $c5
	dec de                                           ; $5b7d: $1b

jr_035_5b7e:
	inc c                                            ; $5b7e: $0c
	jp nz, $0c1b                                     ; $5b7f: $c2 $1b $0c

	push bc                                          ; $5b82: $c5
	add hl, de                                       ; $5b83: $19
	inc c                                            ; $5b84: $0c
	jp nz, $0c19                                     ; $5b85: $c2 $19 $0c

	push bc                                          ; $5b88: $c5
	inc d                                            ; $5b89: $14

jr_035_5b8a:
	inc c                                            ; $5b8a: $0c
	jp nz, $0c14                                     ; $5b8b: $c2 $14 $0c

	jp nz, $0f14                                     ; $5b8e: $c2 $14 $0f

	or l                                             ; $5b91: $b5
	ld hl, $0002                                     ; $5b92: $21 $02 $00
	nop                                              ; $5b95: $00
	ld a, [hl]                                       ; $5b96: $7e
	add hl, sp                                       ; $5b97: $39
	nop                                              ; $5b98: $00
	and b                                            ; $5b99: $a0
	inc l                                            ; $5b9a: $2c
	jr @+$80                                         ; $5b9b: $18 $7e

	dec l                                            ; $5b9d: $2d
	nop                                              ; $5b9e: $00
	and c                                            ; $5b9f: $a1
	inc l                                            ; $5ba0: $2c
	inc c                                            ; $5ba1: $0c
	ld a, [hl+]                                      ; $5ba2: $2a
	ld b, $29                                        ; $5ba3: $06 $29
	ld b, $25                                        ; $5ba5: $06 $25
	jr nc, @+$80                                     ; $5ba7: $30 $7e

	add hl, sp                                       ; $5ba9: $39
	nop                                              ; $5baa: $00
	and b                                            ; $5bab: $a0
	inc l                                            ; $5bac: $2c
	jr @+$80                                         ; $5bad: $18 $7e

	dec l                                            ; $5baf: $2d
	nop                                              ; $5bb0: $00
	and c                                            ; $5bb1: $a1
	inc l                                            ; $5bb2: $2c
	inc c                                            ; $5bb3: $0c
	ld a, [hl+]                                      ; $5bb4: $2a
	ld b, $29                                        ; $5bb5: $06 $29
	ld b, $25                                        ; $5bb7: $06 $25
	ld [de], a                                       ; $5bb9: $12
	dec h                                            ; $5bba: $25
	ld b, $27                                        ; $5bbb: $06 $27
	add hl, bc                                       ; $5bbd: $09
	ld a, [hl]                                       ; $5bbe: $7e
	dec l                                            ; $5bbf: $2d
	jr @-$5e                                         ; $5bc0: $18 $a0

	sub d                                            ; $5bc2: $92
	call nz, $1825                                   ; $5bc3: $c4 $25 $18
	jp nz, $0c25                                     ; $5bc6: $c2 $25 $0c

	or c                                             ; $5bc9: $b1
	ld b, c                                          ; $5bca: $41
	sub [hl]                                         ; $5bcb: $96
	inc b                                            ; $5bcc: $04
	inc h                                            ; $5bcd: $24
	inc c                                            ; $5bce: $0c
	sub [hl]                                         ; $5bcf: $96
	ld h, h                                          ; $5bd0: $64
	rlca                                             ; $5bd1: $07
	inc h                                            ; $5bd2: $24
	inc a                                            ; $5bd3: $3c
	sub [hl]                                         ; $5bd4: $96
	ld h, h                                          ; $5bd5: $64
	inc b                                            ; $5bd6: $04
	ld a, [hl]                                       ; $5bd7: $7e
	nop                                              ; $5bd8: $00
	push bc                                          ; $5bd9: $c5
	ld a, [hl]                                       ; $5bda: $7e
	dec l                                            ; $5bdb: $2d
	jr jr_035_5b7e                                   ; $5bdc: $18 $a0

	inc h                                            ; $5bde: $24
	jr jr_035_5b77                                   ; $5bdf: $18 $96

	ld h, h                                          ; $5be1: $64
	ld [bc], a                                       ; $5be2: $02
	ld a, [hl]                                       ; $5be3: $7e
	nop                                              ; $5be4: $00
	inc h                                            ; $5be5: $24
	inc c                                            ; $5be6: $0c
	push bc                                          ; $5be7: $c5
	inc h                                            ; $5be8: $24
	inc c                                            ; $5be9: $0c
	call nz, $0c24                                   ; $5bea: $c4 $24 $0c
	push bc                                          ; $5bed: $c5
	inc h                                            ; $5bee: $24
	inc c                                            ; $5bef: $0c
	call nz, $0c24                                   ; $5bf0: $c4 $24 $0c
	sub [hl]                                         ; $5bf3: $96
	nop                                              ; $5bf4: $00
	nop                                              ; $5bf5: $00
	sub d                                            ; $5bf6: $92
	ld a, [hl]                                       ; $5bf7: $7e
	dec l                                            ; $5bf8: $2d
	nop                                              ; $5bf9: $00
	and c                                            ; $5bfa: $a1
	jp nz, $0f00                                     ; $5bfb: $c2 $00 $0f

	jr nz, jr_035_5c18                               ; $5bfe: $20 $18

	jr nz, @+$0e                                     ; $5c00: $20 $0c

jr_035_5c02:
	dec h                                            ; $5c02: $25
	inc c                                            ; $5c03: $0c
	dec h                                            ; $5c04: $25
	jr nc, @+$27                                     ; $5c05: $30 $25

	jr @+$26                                         ; $5c07: $18 $24

	inc c                                            ; $5c09: $0c
	dec h                                            ; $5c0a: $25
	inc c                                            ; $5c0b: $0c
	daa                                              ; $5c0c: $27
	jr @+$26                                         ; $5c0d: $18 $24

	jr jr_035_5c36                                   ; $5c0f: $18 $25

	jr jr_035_5c38                                   ; $5c11: $18 $25

	inc c                                            ; $5c13: $0c
	inc l                                            ; $5c14: $2c
	add hl, bc                                       ; $5c15: $09
	ld a, [hl]                                       ; $5c16: $7e
	dec l                                            ; $5c17: $2d

jr_035_5c18:
	inc c                                            ; $5c18: $0c
	and b                                            ; $5c19: $a0
	jp $1e91                                         ; $5c1a: $c3 $91 $1e


	inc c                                            ; $5c1d: $0c
	dec e                                            ; $5c1e: $1d
	inc c                                            ; $5c1f: $0c
	ld e, $0c                                        ; $5c20: $1e $0c
	call nz, $18be                                   ; $5c22: $c4 $be $18
	ld [hl+], a                                      ; $5c25: $22
	jr nz, @+$20                                     ; $5c26: $20 $1e

	dec e                                            ; $5c28: $1d
	cp [hl]                                          ; $5c29: $be
	ld a, l                                          ; $5c2a: $7d
	ld bc, $19c2                                     ; $5c2b: $01 $c2 $19
	rrca                                             ; $5c2e: $0f
	ld a, l                                          ; $5c2f: $7d
	nop                                              ; $5c30: $00
	or l                                             ; $5c31: $b5
	ld hl, $0002                                     ; $5c32: $21 $02 $00
	nop                                              ; $5c35: $00

jr_035_5c36:
	ld a, [hl]                                       ; $5c36: $7e
	add hl, sp                                       ; $5c37: $39

jr_035_5c38:
	nop                                              ; $5c38: $00
	and b                                            ; $5c39: $a0
	inc l                                            ; $5c3a: $2c
	jr jr_035_5cbb                                   ; $5c3b: $18 $7e

	dec l                                            ; $5c3d: $2d
	nop                                              ; $5c3e: $00
	and c                                            ; $5c3f: $a1
	inc l                                            ; $5c40: $2c
	inc c                                            ; $5c41: $0c
	ld a, [hl+]                                      ; $5c42: $2a
	ld b, $29                                        ; $5c43: $06 $29
	ld b, $25                                        ; $5c45: $06 $25
	jr nc, jr_035_5cc7                               ; $5c47: $30 $7e

	add hl, sp                                       ; $5c49: $39
	nop                                              ; $5c4a: $00
	and b                                            ; $5c4b: $a0
	inc l                                            ; $5c4c: $2c
	jr jr_035_5ccd                                   ; $5c4d: $18 $7e

	dec l                                            ; $5c4f: $2d
	nop                                              ; $5c50: $00
	and c                                            ; $5c51: $a1
	inc l                                            ; $5c52: $2c
	inc c                                            ; $5c53: $0c
	ld a, [hl+]                                      ; $5c54: $2a
	ld b, $29                                        ; $5c55: $06 $29
	ld b, $25                                        ; $5c57: $06 $25
	ld [de], a                                       ; $5c59: $12
	dec h                                            ; $5c5a: $25
	ld b, $27                                        ; $5c5b: $06 $27
	add hl, bc                                       ; $5c5d: $09
	ld a, [hl]                                       ; $5c5e: $7e
	dec l                                            ; $5c5f: $2d
	jr jr_035_5c02                                   ; $5c60: $18 $a0

	sub d                                            ; $5c62: $92
	add $25                                          ; $5c63: $c6 $25
	jr nc, @-$68                                     ; $5c65: $30 $96

	ld a, [$2503]                                    ; $5c67: $fa $03 $25
	inc c                                            ; $5c6a: $0c
	dec h                                            ; $5c6b: $25
	inc c                                            ; $5c6c: $0c
	dec h                                            ; $5c6d: $25
	inc c                                            ; $5c6e: $0c
	or c                                             ; $5c6f: $b1
	ld b, c                                          ; $5c70: $41
	dec h                                            ; $5c71: $25
	rlca                                             ; $5c72: $07
	ld a, [hl]                                       ; $5c73: $7e
	dec l                                            ; $5c74: $2d
	inc h                                            ; $5c75: $24
	and b                                            ; $5c76: $a0
	daa                                              ; $5c77: $27
	ld l, h                                          ; $5c78: $6c
	or l                                             ; $5c79: $b5
	ld [hl], c                                       ; $5c7a: $71
	ld [bc], a                                       ; $5c7b: $02
	dec e                                            ; $5c7c: $1d
	rlca                                             ; $5c7d: $07
	ld h, e                                          ; $5c7e: $63
	inc h                                            ; $5c7f: $24
	inc h                                            ; $5c80: $24
	ld [hl+], a                                      ; $5c81: $22
	inc h                                            ; $5c82: $24
	jp nz, $0c22                                     ; $5c83: $c2 $22 $0c

	or l                                             ; $5c86: $b5
	ld h, c                                          ; $5c87: $61
	ld [bc], a                                       ; $5c88: $02
	ld h, h                                          ; $5c89: $64
	dec b                                            ; $5c8a: $05
	ld [hl+], a                                      ; $5c8b: $22
	ld b, $29                                        ; $5c8c: $06 $29
	ld b, $c4                                        ; $5c8e: $06 $c4
	ld l, $0c                                        ; $5c90: $2e $0c
	pop bc                                           ; $5c92: $c1
	add hl, hl                                       ; $5c93: $29
	ld b, $2e                                        ; $5c94: $06 $2e
	ld b, $b5                                        ; $5c96: $06 $b5
	ld d, c                                          ; $5c98: $51
	ld [bc], a                                       ; $5c99: $02
	ld h, h                                          ; $5c9a: $64
	inc b                                            ; $5c9b: $04
	dec e                                            ; $5c9c: $1d
	dec bc                                           ; $5c9d: $0b
	jp nz, $0d1d                                     ; $5c9e: $c2 $1d $0d

	jp z, $0b22                                      ; $5ca1: $ca $22 $0b

	jp nz, $0d22                                     ; $5ca4: $c2 $22 $0d

	jp z, $0b25                                      ; $5ca7: $ca $25 $0b

	jp nz, $0d25                                     ; $5caa: $c2 $25 $0d

	or c                                             ; $5cad: $b1
	ld [hl], c                                       ; $5cae: $71
	inc h                                            ; $5caf: $24
	rlca                                             ; $5cb0: $07
	inc h                                            ; $5cb1: $24
	inc h                                            ; $5cb2: $24
	ld h, $24                                        ; $5cb3: $26 $24
	or l                                             ; $5cb5: $b5
	ld sp, $0002                                     ; $5cb6: $31 $02 $00
	nop                                              ; $5cb9: $00
	add hl, hl                                       ; $5cba: $29

jr_035_5cbb:
	inc c                                            ; $5cbb: $0c
	daa                                              ; $5cbc: $27
	inc c                                            ; $5cbd: $0c
	ld h, $0c                                        ; $5cbe: $26 $0c
	ld [hl+], a                                      ; $5cc0: $22
	inc c                                            ; $5cc1: $0c
	ld h, $18                                        ; $5cc2: $26 $18
	or c                                             ; $5cc4: $b1
	ld h, c                                          ; $5cc5: $61
	inc h                                            ; $5cc6: $24

jr_035_5cc7:
	rlca                                             ; $5cc7: $07
	daa                                              ; $5cc8: $27
	dec bc                                           ; $5cc9: $0b

jr_035_5cca:
	jp nz, $0d27                                     ; $5cca: $c2 $27 $0d

jr_035_5ccd:
	rst JumpTable                                          ; $5ccd: $c7
	add hl, hl                                       ; $5cce: $29
	dec bc                                           ; $5ccf: $0b
	jp nz, $0d29                                     ; $5cd0: $c2 $29 $0d

	sub d                                            ; $5cd3: $92
	push bc                                          ; $5cd4: $c5
	ld h, e                                          ; $5cd5: $63
	sub [hl]                                         ; $5cd6: $96
	ld a, [$2507]                                    ; $5cd7: $fa $07 $25
	jr @-$4d                                         ; $5cda: $18 $b1

	ld sp, $0000                                     ; $5cdc: $31 $00 $00
	dec h                                            ; $5cdf: $25
	ld a, [bc]                                       ; $5ce0: $0a
	ld a, [hl]                                       ; $5ce1: $7e
	dec l                                            ; $5ce2: $2d
	nop                                              ; $5ce3: $00
	and c                                            ; $5ce4: $a1
	inc l                                            ; $5ce5: $2c

jr_035_5ce6:
	inc c                                            ; $5ce6: $0c
	ld a, [hl+]                                      ; $5ce7: $2a
	ld b, $29                                        ; $5ce8: $06 $29
	ld [$2d7e], sp                                   ; $5cea: $08 $7e $2d
	inc c                                            ; $5ced: $0c
	and b                                            ; $5cee: $a0
	call nz, $0631                                   ; $5cef: $c4 $31 $06
	jp nz, $0631                                     ; $5cf2: $c2 $31 $06

	call nz, $0630                                   ; $5cf5: $c4 $30 $06
	jp nz, $0630                                     ; $5cf8: $c2 $30 $06

	call nz, $0631                                   ; $5cfb: $c4 $31 $06
	jp nz, $0631                                     ; $5cfe: $c2 $31 $06

	or c                                             ; $5d01: $b1
	ld b, c                                          ; $5d02: $41
	ld a, [$2507]                                    ; $5d03: $fa $07 $25
	jr jr_035_5cca                                   ; $5d06: $18 $c2

	dec h                                            ; $5d08: $25
	ld a, [bc]                                       ; $5d09: $0a
	ld a, [hl]                                       ; $5d0a: $7e
	dec l                                            ; $5d0b: $2d
	nop                                              ; $5d0c: $00
	and c                                            ; $5d0d: $a1
	inc l                                            ; $5d0e: $2c
	inc c                                            ; $5d0f: $0c
	ld a, [hl+]                                      ; $5d10: $2a
	ld b, $29                                        ; $5d11: $06 $29
	ld b, $96                                        ; $5d13: $06 $96
	ld h, h                                          ; $5d15: $64
	rlca                                             ; $5d16: $07
	dec h                                            ; $5d17: $25
	jr jr_035_5d41                                   ; $5d18: $18 $27

	ld c, $7e                                        ; $5d1a: $0e $7e
	dec l                                            ; $5d1c: $2d
	jr @-$5e                                         ; $5d1d: $18 $a0

	sub d                                            ; $5d1f: $92
	push bc                                          ; $5d20: $c5
	dec h                                            ; $5d21: $25
	jr jr_035_5ce6                                   ; $5d22: $18 $c2

	dec h                                            ; $5d24: $25

jr_035_5d25:
	inc c                                            ; $5d25: $0c
	add $24                                          ; $5d26: $c6 $24
	ld b, $c2                                        ; $5d28: $06 $c2
	inc h                                            ; $5d2a: $24

jr_035_5d2b:
	ld b, $c6                                        ; $5d2b: $06 $c6
	inc h                                            ; $5d2d: $24
	inc h                                            ; $5d2e: $24
	jp nz, $0c24                                     ; $5d2f: $c2 $24 $0c

	inc h                                            ; $5d32: $24
	inc c                                            ; $5d33: $0c
	add $24                                          ; $5d34: $c6 $24
	ld [de], a                                       ; $5d36: $12
	jp nz, $0624                                     ; $5d37: $c2 $24 $06

	add $24                                          ; $5d3a: $c6 $24
	ld b, $c2                                        ; $5d3c: $06 $c2
	inc h                                            ; $5d3e: $24
	ld b, $c6                                        ; $5d3f: $06 $c6

jr_035_5d41:
	dec de                                           ; $5d41: $1b
	ld [$1bc2], sp                                   ; $5d42: $08 $c2 $1b
	ld [$1dc6], sp                                   ; $5d45: $08 $c6 $1d
	ld [$1dc2], sp                                   ; $5d48: $08 $c2 $1d
	ld [$1ec6], sp                                   ; $5d4b: $08 $c6 $1e
	ld [$1ec2], sp                                   ; $5d4e: $08 $c2 $1e
	ld [$fffe], sp                                   ; $5d51: $08 $fe $ff
	ret nc                                           ; $5d54: $d0

	ld l, [hl]                                       ; $5d55: $6e
	cp $63                                           ; $5d56: $fe $63
	pop de                                           ; $5d58: $d1
	sub d                                            ; $5d59: $92
	db $fd                                           ; $5d5a: $fd
	cp a                                             ; $5d5b: $bf
	ld e, [hl]                                       ; $5d5c: $5e
	db $fd                                           ; $5d5d: $fd
	jr z, jr_035_5dbf                                ; $5d5e: $28 $5f

	ld a, [hl]                                       ; $5d60: $7e
	dec l                                            ; $5d61: $2d
	jr @-$5e                                         ; $5d62: $18 $a0

	ret z                                            ; $5d64: $c8

	add hl, hl                                       ; $5d65: $29
	jr jr_035_5d2b                                   ; $5d66: $18 $c3

	add hl, hl                                       ; $5d68: $29
	inc c                                            ; $5d69: $0c
	rst JumpTable                                          ; $5d6a: $c7
	daa                                              ; $5d6b: $27
	ld b, $c2                                        ; $5d6c: $06 $c2
	daa                                              ; $5d6e: $27
	ld b, $c7                                        ; $5d6f: $06 $c7

jr_035_5d71:
	daa                                              ; $5d71: $27
	inc h                                            ; $5d72: $24
	jp nz, $2d7e                                     ; $5d73: $c2 $7e $2d

	nop                                              ; $5d76: $00
	and b                                            ; $5d77: $a0
	cp l                                             ; $5d78: $bd
	ld [bc], a                                       ; $5d79: $02
	daa                                              ; $5d7a: $27
	inc c                                            ; $5d7b: $0c
	inc c                                            ; $5d7c: $0c
	jp nz, $007e                                     ; $5d7d: $c2 $7e $00

	ret z                                            ; $5d80: $c8

	ld a, [hl]                                       ; $5d81: $7e
	dec l                                            ; $5d82: $2d
	jr jr_035_5d25                                   ; $5d83: $18 $a0

jr_035_5d85:
	daa                                              ; $5d85: $27
	ld [de], a                                       ; $5d86: $12
	jp $0627                                         ; $5d87: $c3 $27 $06


	ld a, [hl]                                       ; $5d8a: $7e
	nop                                              ; $5d8b: $00
	and b                                            ; $5d8c: $a0
	ret z                                            ; $5d8d: $c8

	daa                                              ; $5d8e: $27
	ld b, $c3                                        ; $5d8f: $06 $c3
	daa                                              ; $5d91: $27
	ld b, $c8                                        ; $5d92: $06 $c8
	add hl, hl                                       ; $5d94: $29
	ld b, $c2                                        ; $5d95: $06 $c2
	add hl, hl                                       ; $5d97: $29
	ld b, $c8                                        ; $5d98: $06 $c8
	dec h                                            ; $5d9a: $25
	ld b, $c2                                        ; $5d9b: $06 $c2
	add hl, hl                                       ; $5d9d: $29
	ld b, $c8                                        ; $5d9e: $06 $c8
	daa                                              ; $5da0: $27
	ld b, $c2                                        ; $5da1: $06 $c2
	dec h                                            ; $5da3: $25
	ld b, $c8                                        ; $5da4: $06 $c8
	dec h                                            ; $5da6: $25
	ld b, $c2                                        ; $5da7: $06 $c2
	daa                                              ; $5da9: $27
	ld b, $fd                                        ; $5daa: $06 $fd
	cp a                                             ; $5dac: $bf

jr_035_5dad:
	ld e, [hl]                                       ; $5dad: $5e
	db $fd                                           ; $5dae: $fd
	jr z, jr_035_5e10                                ; $5daf: $28 $5f

	ld a, [hl]                                       ; $5db1: $7e
	dec l                                            ; $5db2: $2d
	inc h                                            ; $5db3: $24
	and b                                            ; $5db4: $a0
	ret z                                            ; $5db5: $c8

	add hl, hl                                       ; $5db6: $29
	jr nc, @+$80                                     ; $5db7: $30 $7e

	dec l                                            ; $5db9: $2d
	nop                                              ; $5dba: $00
	and b                                            ; $5dbb: $a0
	push bc                                          ; $5dbc: $c5
	add hl, hl                                       ; $5dbd: $29
	inc c                                            ; $5dbe: $0c

jr_035_5dbf:
	ld a, [hl]                                       ; $5dbf: $7e
	nop                                              ; $5dc0: $00
	ret z                                            ; $5dc1: $c8

	ld a, [hl+]                                      ; $5dc2: $2a
	ld b, $c5                                        ; $5dc3: $06 $c5

jr_035_5dc5:
	ld a, [hl+]                                      ; $5dc5: $2a
	ld b, $c8                                        ; $5dc6: $06 $c8
	add hl, hl                                       ; $5dc8: $29
	ld b, $c5                                        ; $5dc9: $06 $c5
	add hl, hl                                       ; $5dcb: $29
	ld b, $7e                                        ; $5dcc: $06 $7e
	dec l                                            ; $5dce: $2d
	jr nc, jr_035_5d71                               ; $5dcf: $30 $a0

	rst JumpTable                                          ; $5dd1: $c7
	inc l                                            ; $5dd2: $2c
	ld d, h                                          ; $5dd3: $54
	ld a, [hl]                                       ; $5dd4: $7e
	dec l                                            ; $5dd5: $2d
	nop                                              ; $5dd6: $00
	and b                                            ; $5dd7: $a0
	push bc                                          ; $5dd8: $c5
	inc l                                            ; $5dd9: $2c
	jr @+$80                                         ; $5dda: $18 $7e

	nop                                              ; $5ddc: $00
	pop de                                           ; $5ddd: $d1
	sub d                                            ; $5dde: $92
	jp z, Jump_035_7e63                              ; $5ddf: $ca $63 $7e

	dec l                                            ; $5de2: $2d
	jr jr_035_5d85                                   ; $5de3: $18 $a0

	inc l                                            ; $5de5: $2c
	jr jr_035_5dad                                   ; $5de6: $18 $c5

	inc l                                            ; $5de8: $2c
	inc c                                            ; $5de9: $0c
	ret                                              ; $5dea: $c9


	ld a, [hl+]                                      ; $5deb: $2a
	inc c                                            ; $5dec: $0c
	push bc                                          ; $5ded: $c5
	ld a, [hl+]                                      ; $5dee: $2a
	inc c                                            ; $5def: $0c
	ret                                              ; $5df0: $c9


	add hl, hl                                       ; $5df1: $29
	ld b, $c5                                        ; $5df2: $06 $c5
	add hl, hl                                       ; $5df4: $29
	ld b, $c9                                        ; $5df5: $06 $c9
	dec h                                            ; $5df7: $25
	ld b, $c5                                        ; $5df8: $06 $c5
	dec h                                            ; $5dfa: $25
	ld b, $c9                                        ; $5dfb: $06 $c9
	dec h                                            ; $5dfd: $25
	jr jr_035_5dc5                                   ; $5dfe: $18 $c5

	dec h                                            ; $5e00: $25
	inc c                                            ; $5e01: $0c
	jp z, $0b22                                      ; $5e02: $ca $22 $0b

	jp $0d22                                         ; $5e05: $c3 $22 $0d


	jp z, $0b25                                      ; $5e08: $ca $25 $0b

	jp $0d25                                         ; $5e0b: $c3 $25 $0d


	add $29                                          ; $5e0e: $c6 $29

jr_035_5e10:
	dec bc                                           ; $5e10: $0b
	jp $0d29                                         ; $5e11: $c3 $29 $0d


	rst JumpTable                                          ; $5e14: $c7
	inc l                                            ; $5e15: $2c
	inc c                                            ; $5e16: $0c
	add $2c                                          ; $5e17: $c6 $2c
	inc c                                            ; $5e19: $0c
	jp z, $0629                                      ; $5e1a: $ca $29 $06

	push bc                                          ; $5e1d: $c5
	add hl, hl                                       ; $5e1e: $29
	ld b, $c7                                        ; $5e1f: $06 $c7
	ld a, [hl]                                       ; $5e21: $7e
	nop                                              ; $5e22: $00
	ld l, $3c                                        ; $5e23: $2e $3c

jr_035_5e25:
	call nz, $182e                                   ; $5e25: $c4 $2e $18
	rst JumpTable                                          ; $5e28: $c7
	ld a, [hl]                                       ; $5e29: $7e
	dec l                                            ; $5e2a: $2d
	inc h                                            ; $5e2b: $24
	and b                                            ; $5e2c: $a0
	add hl, hl                                       ; $5e2d: $29
	dec bc                                           ; $5e2e: $0b
	jp nz, $0d29                                     ; $5e2f: $c2 $29 $0d

	add $2a                                          ; $5e32: $c6 $2a
	dec bc                                           ; $5e34: $0b
	jp nz, $0d2a                                     ; $5e35: $c2 $2a $0d

	rst JumpTable                                          ; $5e38: $c7
	inc l                                            ; $5e39: $2c
	dec bc                                           ; $5e3a: $0b
	jp nz, $0d2c                                     ; $5e3b: $c2 $2c $0d

	ld a, [hl]                                       ; $5e3e: $7e
	nop                                              ; $5e3f: $00
	sub d                                            ; $5e40: $92
	jp z, $c763                                      ; $5e41: $ca $63 $c7

	ld a, [hl]                                       ; $5e44: $7e
	add hl, sp                                       ; $5e45: $39
	nop                                              ; $5e46: $00
	and b                                            ; $5e47: $a0
	inc l                                            ; $5e48: $2c
	jr jr_035_5ec9                                   ; $5e49: $18 $7e

jr_035_5e4b:
	dec l                                            ; $5e4b: $2d
	inc b                                            ; $5e4c: $04
	and b                                            ; $5e4d: $a0
	add $2c                                          ; $5e4e: $c6 $2c
	inc c                                            ; $5e50: $0c
	ret z                                            ; $5e51: $c8

	ld a, [hl]                                       ; $5e52: $7e
	dec l                                            ; $5e53: $2d
	ld e, $a0                                        ; $5e54: $1e $a0
	ld a, [hl+]                                      ; $5e56: $2a
	ld b, $29                                        ; $5e57: $06 $29
	ld b, $c9                                        ; $5e59: $06 $c9
	dec h                                            ; $5e5b: $25
	jr nc, jr_035_5e25                               ; $5e5c: $30 $c7

	ld a, [hl]                                       ; $5e5e: $7e
	add hl, sp                                       ; $5e5f: $39
	nop                                              ; $5e60: $00
	and b                                            ; $5e61: $a0
	inc l                                            ; $5e62: $2c
	jr jr_035_5ee3                                   ; $5e63: $18 $7e

	dec l                                            ; $5e65: $2d
	inc b                                            ; $5e66: $04
	and b                                            ; $5e67: $a0
	add $2c                                          ; $5e68: $c6 $2c
	inc c                                            ; $5e6a: $0c
	ret z                                            ; $5e6b: $c8

	ld a, [hl]                                       ; $5e6c: $7e
	dec l                                            ; $5e6d: $2d
	inc d                                            ; $5e6e: $14
	and b                                            ; $5e6f: $a0
	ld a, [hl+]                                      ; $5e70: $2a
	ld b, $29                                        ; $5e71: $06 $29
	ld b, $25                                        ; $5e73: $06 $25
	ld [de], a                                       ; $5e75: $12
	call nz, $0625                                   ; $5e76: $c4 $25 $06
	add $27                                          ; $5e79: $c6 $27
	ld [de], a                                       ; $5e7b: $12
	jp $0627                                         ; $5e7c: $c3 $27 $06


	ld a, [hl]                                       ; $5e7f: $7e
	dec l                                            ; $5e80: $2d
	inc h                                            ; $5e81: $24
	and b                                            ; $5e82: $a0
	ret z                                            ; $5e83: $c8

	add hl, hl                                       ; $5e84: $29
	jr nc, jr_035_5f05                               ; $5e85: $30 $7e

	dec l                                            ; $5e87: $2d
	nop                                              ; $5e88: $00
	and b                                            ; $5e89: $a0
	push bc                                          ; $5e8a: $c5
	add hl, hl                                       ; $5e8b: $29
	inc c                                            ; $5e8c: $0c
	ld a, [hl]                                       ; $5e8d: $7e
	dec l                                            ; $5e8e: $2d
	jr @-$5e                                         ; $5e8f: $18 $a0

	ret z                                            ; $5e91: $c8

	ld a, [hl+]                                      ; $5e92: $2a
	ld b, $c5                                        ; $5e93: $06 $c5
	ld a, [hl+]                                      ; $5e95: $2a
	ld b, $c8                                        ; $5e96: $06 $c8
	add hl, hl                                       ; $5e98: $29
	ld b, $c5                                        ; $5e99: $06 $c5
	add hl, hl                                       ; $5e9b: $29
	ld b, $c9                                        ; $5e9c: $06 $c9
	inc l                                            ; $5e9e: $2c
	inc h                                            ; $5e9f: $24
	rst JumpTable                                          ; $5ea0: $c7
	ld a, [hl]                                       ; $5ea1: $7e
	dec l                                            ; $5ea2: $2d
	inc c                                            ; $5ea3: $0c
	and b                                            ; $5ea4: $a0
	inc l                                            ; $5ea5: $2c
	jr jr_035_5f26                                   ; $5ea6: $18 $7e

	dec l                                            ; $5ea8: $2d
	jr jr_035_5e4b                                   ; $5ea9: $18 $a0

	jp z, $0824                                      ; $5eab: $ca $24 $08

	push bc                                          ; $5eae: $c5
	inc h                                            ; $5eaf: $24
	ld [$25c9], sp                                   ; $5eb0: $08 $c9 $25
	ld [$25c5], sp                                   ; $5eb3: $08 $c5 $25
	ld [$27c7], sp                                   ; $5eb6: $08 $c7 $27
	ld [$27c2], sp                                   ; $5eb9: $08 $c2 $27
	ld [$fffe], sp                                   ; $5ebc: $08 $fe $ff
	sub d                                            ; $5ebf: $92
	ld a, [hl]                                       ; $5ec0: $7e
	dec l                                            ; $5ec1: $2d
	inc h                                            ; $5ec2: $24
	and b                                            ; $5ec3: $a0
	pop de                                           ; $5ec4: $d1
	call $1820                                       ; $5ec5: $cd $20 $18
	push bc                                          ; $5ec8: $c5

jr_035_5ec9:
	jr nz, jr_035_5ed7                               ; $5ec9: $20 $0c

	call z, $0625                                    ; $5ecb: $cc $25 $06
	push bc                                          ; $5ece: $c5
	dec h                                            ; $5ecf: $25
	ld b, $cc                                        ; $5ed0: $06 $cc
	dec h                                            ; $5ed2: $25
	jr nc, jr_035_5f53                               ; $5ed3: $30 $7e

	dec l                                            ; $5ed5: $2d
	nop                                              ; $5ed6: $00

jr_035_5ed7:
	and b                                            ; $5ed7: $a0
	push bc                                          ; $5ed8: $c5
	dec h                                            ; $5ed9: $25
	jr jr_035_5f5a                                   ; $5eda: $18 $7e

	dec l                                            ; $5edc: $2d
	inc h                                            ; $5edd: $24
	and b                                            ; $5ede: $a0
	call z, $0624                                    ; $5edf: $cc $24 $06
	push bc                                          ; $5ee2: $c5

jr_035_5ee3:
	inc h                                            ; $5ee3: $24
	ld b, $cc                                        ; $5ee4: $06 $cc
	dec h                                            ; $5ee6: $25
	ld b, $c5                                        ; $5ee7: $06 $c5
	dec h                                            ; $5ee9: $25
	ld b, $c7                                        ; $5eea: $06 $c7
	daa                                              ; $5eec: $27
	jr @-$32                                         ; $5eed: $18 $cc

	inc h                                            ; $5eef: $24
	jr @-$32                                         ; $5ef0: $18 $cc

	dec h                                            ; $5ef2: $25
	jr @-$39                                         ; $5ef3: $18 $c5

	dec h                                            ; $5ef5: $25
	inc c                                            ; $5ef6: $0c
	ret                                              ; $5ef7: $c9


	inc l                                            ; $5ef8: $2c
	ld b, $c5                                        ; $5ef9: $06 $c5
	inc l                                            ; $5efb: $2c
	ld b, $cc                                        ; $5efc: $06 $cc
	ld a, [hl]                                       ; $5efe: $7e
	dec l                                            ; $5eff: $2d
	inc h                                            ; $5f00: $24
	and b                                            ; $5f01: $a0
	dec h                                            ; $5f02: $25
	jr nc, jr_035_5f83                               ; $5f03: $30 $7e

jr_035_5f05:
	dec l                                            ; $5f05: $2d
	nop                                              ; $5f06: $00
	and b                                            ; $5f07: $a0
	push bc                                          ; $5f08: $c5
	dec h                                            ; $5f09: $25
	jr jr_035_5f8a                                   ; $5f0a: $18 $7e

jr_035_5f0c:
	dec l                                            ; $5f0c: $2d
	inc h                                            ; $5f0d: $24
	and b                                            ; $5f0e: $a0
	ret z                                            ; $5f0f: $c8

	add hl, hl                                       ; $5f10: $29
	ld b, $c2                                        ; $5f11: $06 $c2
	add hl, hl                                       ; $5f13: $29
	ld b, $c8                                        ; $5f14: $06 $c8
	ld a, [hl+]                                      ; $5f16: $2a
	ld b, $c2                                        ; $5f17: $06 $c2
	ld a, [hl+]                                      ; $5f19: $2a
	ld b, $c8                                        ; $5f1a: $06 $c8
	inc l                                            ; $5f1c: $2c
	ld [de], a                                       ; $5f1d: $12
	jp $062c                                         ; $5f1e: $c3 $2c $06


	ret                                              ; $5f21: $c9


	dec h                                            ; $5f22: $25
	ld [de], a                                       ; $5f23: $12
	add $25                                          ; $5f24: $c6 $25

jr_035_5f26:
	ld b, $fd                                        ; $5f26: $06 $fd
	sub d                                            ; $5f28: $92
	pop de                                           ; $5f29: $d1
	rst JumpTable                                          ; $5f2a: $c7
	ld a, [hl]                                       ; $5f2b: $7e
	add hl, sp                                       ; $5f2c: $39
	nop                                              ; $5f2d: $00
	and b                                            ; $5f2e: $a0
	inc l                                            ; $5f2f: $2c
	jr jr_035_5fb0                                   ; $5f30: $18 $7e

	dec l                                            ; $5f32: $2d
	inc b                                            ; $5f33: $04
	and b                                            ; $5f34: $a0
	add $2c                                          ; $5f35: $c6 $2c
	inc c                                            ; $5f37: $0c
	ret z                                            ; $5f38: $c8

	ld a, [hl]                                       ; $5f39: $7e
	dec l                                            ; $5f3a: $2d
	ld e, $a0                                        ; $5f3b: $1e $a0
	ld a, [hl+]                                      ; $5f3d: $2a
	ld b, $29                                        ; $5f3e: $06 $29
	ld b, $c8                                        ; $5f40: $06 $c8
	dec h                                            ; $5f42: $25
	jr nc, jr_035_5f0c                               ; $5f43: $30 $c7

	ld a, [hl]                                       ; $5f45: $7e
	add hl, sp                                       ; $5f46: $39
	nop                                              ; $5f47: $00
	and b                                            ; $5f48: $a0
	inc l                                            ; $5f49: $2c
	jr jr_035_5fca                                   ; $5f4a: $18 $7e

	dec l                                            ; $5f4c: $2d
	inc b                                            ; $5f4d: $04
	and b                                            ; $5f4e: $a0
	add $2c                                          ; $5f4f: $c6 $2c
	inc c                                            ; $5f51: $0c
	ret z                                            ; $5f52: $c8

jr_035_5f53:
	ld a, [hl]                                       ; $5f53: $7e
	dec l                                            ; $5f54: $2d
	inc d                                            ; $5f55: $14
	and b                                            ; $5f56: $a0
	ld a, [hl+]                                      ; $5f57: $2a
	ld b, $29                                        ; $5f58: $06 $29

jr_035_5f5a:
	ld b, $25                                        ; $5f5a: $06 $25
	ld [de], a                                       ; $5f5c: $12
	push bc                                          ; $5f5d: $c5
	dec h                                            ; $5f5e: $25
	ld b, $c7                                        ; $5f5f: $06 $c7
	daa                                              ; $5f61: $27
	ld [de], a                                       ; $5f62: $12
	jp nz, $0627                                     ; $5f63: $c2 $27 $06

	db $fd                                           ; $5f66: $fd
	ret nc                                           ; $5f67: $d0

	ld l, [hl]                                       ; $5f68: $6e
	cp $63                                           ; $5f69: $fe $63
	pop de                                           ; $5f6b: $d1
	jp nz, $1c7f                                     ; $5f6c: $c2 $7f $1c

	ei                                               ; $5f6f: $fb
	db $fd                                           ; $5f70: $fd
	ld l, h                                          ; $5f71: $6c
	ld h, b                                          ; $5f72: $60
	db $fd                                           ; $5f73: $fd
	push hl                                          ; $5f74: $e5
	ld h, b                                          ; $5f75: $60
	ei                                               ; $5f76: $fb
	ld [bc], a                                       ; $5f77: $02
	pop de                                           ; $5f78: $d1
	jp nz, $0563                                     ; $5f79: $c2 $63 $05

	inc c                                            ; $5f7c: $0c
	add $05                                          ; $5f7d: $c6 $05
	inc c                                            ; $5f7f: $0c
	jp nz, $0c09                                     ; $5f80: $c2 $09 $0c

jr_035_5f83:
	ld a, [bc]                                       ; $5f83: $0a
	ld d, $00                                        ; $5f84: $16 $00
	ld [bc], a                                       ; $5f86: $02
	ld a, [bc]                                       ; $5f87: $0a
	ld b, $00                                        ; $5f88: $06 $00

jr_035_5f8a:
	ld b, $be                                        ; $5f8a: $06 $be
	inc bc                                           ; $5f8c: $03
	ld a, [bc]                                       ; $5f8d: $0a
	nop                                              ; $5f8e: $00
	ld a, [bc]                                       ; $5f8f: $0a
	nop                                              ; $5f90: $00
	cp [hl]                                          ; $5f91: $be
	ld [$0a06], sp                                   ; $5f92: $08 $06 $0a
	inc bc                                           ; $5f95: $03
	nop                                              ; $5f96: $00
	inc bc                                           ; $5f97: $03
	ld a, [bc]                                       ; $5f98: $0a
	ld d, $00                                        ; $5f99: $16 $00
	ld [bc], a                                       ; $5f9b: $02
	ld a, [bc]                                       ; $5f9c: $0a
	ld b, $00                                        ; $5f9d: $06 $00
	ld b, $be                                        ; $5f9f: $06 $be
	inc bc                                           ; $5fa1: $03
	ld a, [bc]                                       ; $5fa2: $0a
	nop                                              ; $5fa3: $00
	ld a, [bc]                                       ; $5fa4: $0a
	nop                                              ; $5fa5: $00
	ld a, [bc]                                       ; $5fa6: $0a
	nop                                              ; $5fa7: $00
	ld d, $00                                        ; $5fa8: $16 $00
	cp [hl]                                          ; $5faa: $be
	cp [hl]                                          ; $5fab: $be
	ld b, $0a                                        ; $5fac: $06 $0a
	nop                                              ; $5fae: $00
	ld a, [bc]                                       ; $5faf: $0a

jr_035_5fb0:
	nop                                              ; $5fb0: $00
	ld [$08be], sp                                   ; $5fb1: $08 $be $08
	inc bc                                           ; $5fb4: $03
	nop                                              ; $5fb5: $00
	inc bc                                           ; $5fb6: $03
	dec b                                            ; $5fb7: $05
	inc c                                            ; $5fb8: $0c
	add $05                                          ; $5fb9: $c6 $05
	inc c                                            ; $5fbb: $0c
	jp nz, $0c0c                                     ; $5fbc: $c2 $0c $0c

	ld a, [bc]                                       ; $5fbf: $0a
	ld d, $00                                        ; $5fc0: $16 $00
	ld [bc], a                                       ; $5fc2: $02
	ld a, [bc]                                       ; $5fc3: $0a
	ld b, $00                                        ; $5fc4: $06 $00
	ld b, $be                                        ; $5fc6: $06 $be
	inc bc                                           ; $5fc8: $03
	ld a, [bc]                                       ; $5fc9: $0a

jr_035_5fca:
	nop                                              ; $5fca: $00
	ld a, [bc]                                       ; $5fcb: $0a
	nop                                              ; $5fcc: $00
	ld a, [bc]                                       ; $5fcd: $0a
	nop                                              ; $5fce: $00
	ld a, [bc]                                       ; $5fcf: $0a
	nop                                              ; $5fd0: $00
	cp [hl]                                          ; $5fd1: $be
	ld a, [bc]                                       ; $5fd2: $0a
	ld d, $00                                        ; $5fd3: $16 $00
	ld [bc], a                                       ; $5fd5: $02
	ld a, [bc]                                       ; $5fd6: $0a
	ld b, $00                                        ; $5fd7: $06 $00
	ld b, $be                                        ; $5fd9: $06 $be
	inc bc                                           ; $5fdb: $03
	ld a, [bc]                                       ; $5fdc: $0a
	nop                                              ; $5fdd: $00
	ld a, [bc]                                       ; $5fde: $0a
	nop                                              ; $5fdf: $00
	ld a, [bc]                                       ; $5fe0: $0a
	nop                                              ; $5fe1: $00
	ld d, $00                                        ; $5fe2: $16 $00
	cp [hl]                                          ; $5fe4: $be
	cp [hl]                                          ; $5fe5: $be
	ld b, $0a                                        ; $5fe6: $06 $0a
	nop                                              ; $5fe8: $00
	ld a, [bc]                                       ; $5fe9: $0a
	nop                                              ; $5fea: $00
	ld [$be00], sp                                   ; $5feb: $08 $00 $be
	pop de                                           ; $5fee: $d1
	ld a, a                                          ; $5fef: $7f
	ld e, $c2                                        ; $5ff0: $1e $c2
	ld h, e                                          ; $5ff2: $63
	ld b, $16                                        ; $5ff3: $06 $16
	nop                                              ; $5ff5: $00
	ld [bc], a                                       ; $5ff6: $02
	ld b, $06                                        ; $5ff7: $06 $06
	nop                                              ; $5ff9: $00
	ld b, $be                                        ; $5ffa: $06 $be
	inc bc                                           ; $5ffc: $03
	ld b, $00                                        ; $5ffd: $06 $00
	ld b, $00                                        ; $5fff: $06 $00
	ld b, $00                                        ; $6001: $06 $00
	ld [de], a                                       ; $6003: $12
	nop                                              ; $6004: $00
	cp [hl]                                          ; $6005: $be
	cp [hl]                                          ; $6006: $be
	ld b, $06                                        ; $6007: $06 $06
	nop                                              ; $6009: $00
	ld b, $00                                        ; $600a: $06 $00
	dec b                                            ; $600c: $05
	cp [hl]                                          ; $600d: $be
	ld b, $04                                        ; $600e: $06 $04
	nop                                              ; $6010: $00
	ld [bc], a                                       ; $6011: $02
	dec b                                            ; $6012: $05
	ld d, $00                                        ; $6013: $16 $00
	ld [bc], a                                       ; $6015: $02
	dec b                                            ; $6016: $05
	ld b, $00                                        ; $6017: $06 $00
	ld b, $be                                        ; $6019: $06 $be
	inc bc                                           ; $601b: $03
	dec b                                            ; $601c: $05
	nop                                              ; $601d: $00
	dec b                                            ; $601e: $05
	nop                                              ; $601f: $00
	dec b                                            ; $6020: $05
	nop                                              ; $6021: $00
	ld de, $be00                                     ; $6022: $11 $00 $be
	cp [hl]                                          ; $6025: $be
	ld b, $05                                        ; $6026: $06 $05
	nop                                              ; $6028: $00
	dec b                                            ; $6029: $05
	nop                                              ; $602a: $00
	cp [hl]                                          ; $602b: $be
	dec b                                            ; $602c: $05
	inc bc                                           ; $602d: $03
	nop                                              ; $602e: $00
	inc bc                                           ; $602f: $03
	dec b                                            ; $6030: $05
	inc b                                            ; $6031: $04
	nop                                              ; $6032: $00
	ld [bc], a                                       ; $6033: $02
	inc bc                                           ; $6034: $03
	ld d, $00                                        ; $6035: $16 $00
	ld [bc], a                                       ; $6037: $02
	inc bc                                           ; $6038: $03
	ld b, $00                                        ; $6039: $06 $00
	ld b, $be                                        ; $603b: $06 $be
	inc bc                                           ; $603d: $03
	inc bc                                           ; $603e: $03
	nop                                              ; $603f: $00
	inc bc                                           ; $6040: $03
	nop                                              ; $6041: $00
	inc bc                                           ; $6042: $03
	nop                                              ; $6043: $00
	rrca                                             ; $6044: $0f
	nop                                              ; $6045: $00
	cp [hl]                                          ; $6046: $be
	cp [hl]                                          ; $6047: $be
	ld b, $03                                        ; $6048: $06 $03
	nop                                              ; $604a: $00
	inc bc                                           ; $604b: $03
	nop                                              ; $604c: $00
	cp [hl]                                          ; $604d: $be
	inc bc                                           ; $604e: $03
	rlca                                             ; $604f: $07
	nop                                              ; $6050: $00
	dec b                                            ; $6051: $05
	ld [$0016], sp                                   ; $6052: $08 $16 $00
	ld [bc], a                                       ; $6055: $02
	ld [$0006], sp                                   ; $6056: $08 $06 $00
	ld b, $be                                        ; $6059: $06 $be
	inc bc                                           ; $605b: $03
	ld [$0800], sp                                   ; $605c: $08 $00 $08
	nop                                              ; $605f: $00
	cp [hl]                                          ; $6060: $be
	cp [hl]                                          ; $6061: $be
	ld [$0008], sp                                   ; $6062: $08 $08 $00
	ld a, [bc]                                       ; $6065: $0a
	nop                                              ; $6066: $00
	inc c                                            ; $6067: $0c
	nop                                              ; $6068: $00
	cp [hl]                                          ; $6069: $be
	cp $ff                                           ; $606a: $fe $ff
	pop de                                           ; $606c: $d1
	jp nz, $160d                                     ; $606d: $c2 $0d $16

	nop                                              ; $6070: $00
	ld [bc], a                                       ; $6071: $02
	dec c                                            ; $6072: $0d
	ld b, $00                                        ; $6073: $06 $00
	ld b, $be                                        ; $6075: $06 $be
	inc bc                                           ; $6077: $03
	dec c                                            ; $6078: $0d
	nop                                              ; $6079: $00
	dec c                                            ; $607a: $0d
	nop                                              ; $607b: $00
	dec c                                            ; $607c: $0d
	nop                                              ; $607d: $00
	add hl, de                                       ; $607e: $19
	nop                                              ; $607f: $00
	cp [hl]                                          ; $6080: $be
	cp [hl]                                          ; $6081: $be
	ld b, $0d                                        ; $6082: $06 $0d
	nop                                              ; $6084: $00
	dec c                                            ; $6085: $0d
	nop                                              ; $6086: $00
	inc c                                            ; $6087: $0c
	cp [hl]                                          ; $6088: $be
	dec c                                            ; $6089: $0d
	inc bc                                           ; $608a: $03
	nop                                              ; $608b: $00
	inc bc                                           ; $608c: $03
	ld [$0016], sp                                   ; $608d: $08 $16 $00
	ld [bc], a                                       ; $6090: $02
	ld [$0006], sp                                   ; $6091: $08 $06 $00
	ld b, $be                                        ; $6094: $06 $be
	inc bc                                           ; $6096: $03
	ld [$0800], sp                                   ; $6097: $08 $00 $08
	nop                                              ; $609a: $00
	ld [$1400], sp                                   ; $609b: $08 $00 $14
	nop                                              ; $609e: $00
	cp [hl]                                          ; $609f: $be
	cp [hl]                                          ; $60a0: $be
	ld b, $08                                        ; $60a1: $06 $08
	nop                                              ; $60a3: $00
	ld [$0800], sp                                   ; $60a4: $08 $00 $08
	cp [hl]                                          ; $60a7: $be
	add hl, bc                                       ; $60a8: $09
	inc bc                                           ; $60a9: $03
	nop                                              ; $60aa: $00
	inc bc                                           ; $60ab: $03
	ld a, [bc]                                       ; $60ac: $0a
	ld d, $00                                        ; $60ad: $16 $00
	ld [bc], a                                       ; $60af: $02
	ld a, [bc]                                       ; $60b0: $0a
	ld b, $00                                        ; $60b1: $06 $00
	ld b, $be                                        ; $60b3: $06 $be
	inc bc                                           ; $60b5: $03
	ld a, [bc]                                       ; $60b6: $0a
	nop                                              ; $60b7: $00
	ld a, [bc]                                       ; $60b8: $0a
	nop                                              ; $60b9: $00
	ld a, [bc]                                       ; $60ba: $0a
	nop                                              ; $60bb: $00
	ld d, $00                                        ; $60bc: $16 $00
	cp [hl]                                          ; $60be: $be
	cp [hl]                                          ; $60bf: $be
	ld b, $0a                                        ; $60c0: $06 $0a
	nop                                              ; $60c2: $00
	ld a, [bc]                                       ; $60c3: $0a
	nop                                              ; $60c4: $00
	ld a, [bc]                                       ; $60c5: $0a
	nop                                              ; $60c6: $00
	cp [hl]                                          ; $60c7: $be
	ld [$0016], sp                                   ; $60c8: $08 $16 $00
	ld [bc], a                                       ; $60cb: $02
	ld [$0006], sp                                   ; $60cc: $08 $06 $00
	ld b, $be                                        ; $60cf: $06 $be
	inc bc                                           ; $60d1: $03
	ld [$0800], sp                                   ; $60d2: $08 $00 $08
	nop                                              ; $60d5: $00
	ld [$1400], sp                                   ; $60d6: $08 $00 $14
	nop                                              ; $60d9: $00
	cp [hl]                                          ; $60da: $be
	cp [hl]                                          ; $60db: $be
	ld b, $08                                        ; $60dc: $06 $08
	nop                                              ; $60de: $00
	ld [$0700], sp                                   ; $60df: $08 $00 $07
	nop                                              ; $60e2: $00
	cp [hl]                                          ; $60e3: $be
	db $fd                                           ; $60e4: $fd
	pop de                                           ; $60e5: $d1
	jp nz, $1606                                     ; $60e6: $c2 $06 $16

	nop                                              ; $60e9: $00
	ld [bc], a                                       ; $60ea: $02
	ld b, $06                                        ; $60eb: $06 $06
	nop                                              ; $60ed: $00
	ld b, $be                                        ; $60ee: $06 $be
	inc bc                                           ; $60f0: $03
	ld b, $00                                        ; $60f1: $06 $00
	ld b, $00                                        ; $60f3: $06 $00
	ld b, $00                                        ; $60f5: $06 $00
	ld [de], a                                       ; $60f7: $12
	nop                                              ; $60f8: $00
	cp [hl]                                          ; $60f9: $be
	cp [hl]                                          ; $60fa: $be
	ld b, $06                                        ; $60fb: $06 $06
	nop                                              ; $60fd: $00
	ld b, $00                                        ; $60fe: $06 $00
	dec b                                            ; $6100: $05
	cp [hl]                                          ; $6101: $be
	ld b, $03                                        ; $6102: $06 $03
	nop                                              ; $6104: $00
	inc bc                                           ; $6105: $03
	dec b                                            ; $6106: $05
	ld d, $00                                        ; $6107: $16 $00
	ld [bc], a                                       ; $6109: $02
	dec b                                            ; $610a: $05
	ld b, $00                                        ; $610b: $06 $00
	ld b, $be                                        ; $610d: $06 $be
	inc bc                                           ; $610f: $03
	dec b                                            ; $6110: $05
	nop                                              ; $6111: $00
	dec b                                            ; $6112: $05
	nop                                              ; $6113: $00
	dec b                                            ; $6114: $05
	nop                                              ; $6115: $00
	ld de, $be00                                     ; $6116: $11 $00 $be
	cp [hl]                                          ; $6119: $be
	ld b, $05                                        ; $611a: $06 $05
	nop                                              ; $611c: $00
	dec b                                            ; $611d: $05
	nop                                              ; $611e: $00
	inc b                                            ; $611f: $04
	cp [hl]                                          ; $6120: $be
	dec b                                            ; $6121: $05
	inc bc                                           ; $6122: $03
	nop                                              ; $6123: $00
	inc bc                                           ; $6124: $03
	inc bc                                           ; $6125: $03
	ld d, $00                                        ; $6126: $16 $00
	ld [bc], a                                       ; $6128: $02
	inc bc                                           ; $6129: $03
	ld b, $00                                        ; $612a: $06 $00
	ld b, $be                                        ; $612c: $06 $be
	inc bc                                           ; $612e: $03
	inc bc                                           ; $612f: $03
	nop                                              ; $6130: $00
	inc bc                                           ; $6131: $03
	nop                                              ; $6132: $00
	inc bc                                           ; $6133: $03
	nop                                              ; $6134: $00
	rrca                                             ; $6135: $0f
	nop                                              ; $6136: $00
	cp [hl]                                          ; $6137: $be
	cp [hl]                                          ; $6138: $be
	ld b, $03                                        ; $6139: $06 $03
	nop                                              ; $613b: $00
	inc bc                                           ; $613c: $03
	nop                                              ; $613d: $00
	inc bc                                           ; $613e: $03
	nop                                              ; $613f: $00
	cp [hl]                                          ; $6140: $be
	ld [$0016], sp                                   ; $6141: $08 $16 $00
	ld [bc], a                                       ; $6144: $02
	ld [$0006], sp                                   ; $6145: $08 $06 $00
	ld b, $be                                        ; $6148: $06 $be
	inc bc                                           ; $614a: $03
	ld [$0800], sp                                   ; $614b: $08 $00 $08
	nop                                              ; $614e: $00
	ld [$1400], sp                                   ; $614f: $08 $00 $14
	nop                                              ; $6152: $00
	cp [hl]                                          ; $6153: $be
	ld [$0006], sp                                   ; $6154: $08 $06 $00
	ld b, $08                                        ; $6157: $06 $08
	rlca                                             ; $6159: $07
	nop                                              ; $615a: $00
	dec b                                            ; $615b: $05
	ld b, $07                                        ; $615c: $06 $07
	nop                                              ; $615e: $00
	dec b                                            ; $615f: $05
	db $fd                                           ; $6160: $fd
	ret nc                                           ; $6161: $d0

	ld l, [hl]                                       ; $6162: $6e
	cp $fb                                           ; $6163: $fe $fb
	db $fd                                           ; $6165: $fd
	adc $61                                          ; $6166: $ce $61
	ei                                               ; $6168: $fb
	rlca                                             ; $6169: $07
	rra                                              ; $616a: $1f
	ld b, $1d                                        ; $616b: $06 $1d
	ld b, $be                                        ; $616d: $06 $be
	inc c                                            ; $616f: $0c
	dec e                                            ; $6170: $1d
	ld d, d                                          ; $6171: $52
	dec e                                            ; $6172: $1d
	rra                                              ; $6173: $1f
	rra                                              ; $6174: $1f
	ld d, d                                          ; $6175: $52
	dec e                                            ; $6176: $1d
	cp [hl]                                          ; $6177: $be
	db $fc                                           ; $6178: $fc
	db $fd                                           ; $6179: $fd
	adc $61                                          ; $617a: $ce $61
	db $fc                                           ; $617c: $fc
	rlca                                             ; $617d: $07
	rra                                              ; $617e: $1f
	ld b, $1d                                        ; $617f: $06 $1d
	ld b, $1d                                        ; $6181: $06 $1d
	inc c                                            ; $6183: $0c
	ld d, d                                          ; $6184: $52
	inc c                                            ; $6185: $0c
	dec e                                            ; $6186: $1d
	inc c                                            ; $6187: $0c
	rra                                              ; $6188: $1f
	ld b, $1d                                        ; $6189: $06 $1d
	ld b, $1f                                        ; $618b: $06 $1f
	inc c                                            ; $618d: $0c
	ld d, d                                          ; $618e: $52
	inc c                                            ; $618f: $0c
	ld d, d                                          ; $6190: $52
	ld b, $52                                        ; $6191: $06 $52
	ld b, $1f                                        ; $6193: $06 $1f
	ld b, $1d                                        ; $6195: $06 $1d
	ld b, $be                                        ; $6197: $06 $be
	inc c                                            ; $6199: $0c
	dec e                                            ; $619a: $1d
	ld d, d                                          ; $619b: $52
	dec e                                            ; $619c: $1d
	rra                                              ; $619d: $1f
	rra                                              ; $619e: $1f
	ld d, d                                          ; $619f: $52
	dec e                                            ; $61a0: $1d
	cp [hl]                                          ; $61a1: $be
	db $fd                                           ; $61a2: $fd
	adc $61                                          ; $61a3: $ce $61
	rra                                              ; $61a5: $1f
	ld b, $1d                                        ; $61a6: $06 $1d
	ld b, $be                                        ; $61a8: $06 $be
	inc c                                            ; $61aa: $0c
	dec e                                            ; $61ab: $1d
	ld d, d                                          ; $61ac: $52
	dec e                                            ; $61ad: $1d
	rra                                              ; $61ae: $1f
	rra                                              ; $61af: $1f
	ld d, d                                          ; $61b0: $52
	dec e                                            ; $61b1: $1d
	cp [hl]                                          ; $61b2: $be
	db $fd                                           ; $61b3: $fd
	adc $61                                          ; $61b4: $ce $61
	ei                                               ; $61b6: $fb
	db $fd                                           ; $61b7: $fd
	adc $61                                          ; $61b8: $ce $61
	ei                                               ; $61ba: $fb
	inc bc                                           ; $61bb: $03
	rra                                              ; $61bc: $1f
	ld b, $1d                                        ; $61bd: $06 $1d

jr_035_61bf:
	ld b, $1d                                        ; $61bf: $06 $1d

jr_035_61c1:
	inc c                                            ; $61c1: $0c
	jr nz, jr_035_61d0                               ; $61c2: $20 $0c

	dec e                                            ; $61c4: $1d
	inc c                                            ; $61c5: $0c
	jr nz, jr_035_61d8                               ; $61c6: $20 $10

	jr nz, jr_035_61da                               ; $61c8: $20 $10

	jr nz, jr_035_61dc                               ; $61ca: $20 $10

	cp $ff                                           ; $61cc: $fe $ff
	cp [hl]                                          ; $61ce: $be
	inc c                                            ; $61cf: $0c

jr_035_61d0:
	rra                                              ; $61d0: $1f
	dec e                                            ; $61d1: $1d
	ld d, d                                          ; $61d2: $52
	dec e                                            ; $61d3: $1d
	rra                                              ; $61d4: $1f
	rra                                              ; $61d5: $1f
	ld d, d                                          ; $61d6: $52
	dec e                                            ; $61d7: $1d

jr_035_61d8:
	cp [hl]                                          ; $61d8: $be
	db $fd                                           ; $61d9: $fd

jr_035_61da:
	or h                                             ; $61da: $b4
	ld c, [hl]                                       ; $61db: $4e

jr_035_61dc:
	and c                                            ; $61dc: $a1
	ld bc, $0076                                     ; $61dd: $01 $76 $00

jr_035_61e0:
	jr jr_035_61e0                                   ; $61e0: $18 $fe

	ld a, [hl]                                       ; $61e2: $7e
	dec e                                            ; $61e3: $1d
	inc c                                            ; $61e4: $0c
	xor d                                            ; $61e5: $aa
	pop de                                           ; $61e6: $d1
	rr l                                             ; $61e7: $cb $1d
	ld b, $c3                                        ; $61e9: $06 $c3
	dec e                                            ; $61eb: $1d
	ld b, $c8                                        ; $61ec: $06 $c8
	inc h                                            ; $61ee: $24
	ld b, $c2                                        ; $61ef: $06 $c2
	inc h                                            ; $61f1: $24
	ld b, $ca                                        ; $61f2: $06 $ca
	dec h                                            ; $61f4: $25
	ld b, $c2                                        ; $61f5: $06 $c2
	dec h                                            ; $61f7: $25
	ld b, $c8                                        ; $61f8: $06 $c8
	inc l                                            ; $61fa: $2c

jr_035_61fb:
	jr jr_035_61bf                                   ; $61fb: $18 $c2

	inc l                                            ; $61fd: $2c
	jr jr_035_61c1                                   ; $61fe: $18 $c1

	inc l                                            ; $6200: $2c
	inc c                                            ; $6201: $0c
	rr l                                             ; $6202: $cb $1d
	ld b, $c3                                        ; $6204: $06 $c3
	dec e                                            ; $6206: $1d
	ld b, $7d                                        ; $6207: $06 $7d
	ld [bc], a                                       ; $6209: $02
	ret z                                            ; $620a: $c8

	inc h                                            ; $620b: $24
	ld b, $c2                                        ; $620c: $06 $c2
	inc h                                            ; $620e: $24
	ld b, $ca                                        ; $620f: $06 $ca
	dec h                                            ; $6211: $25
	ld b, $c3                                        ; $6212: $06 $c3
	dec h                                            ; $6214: $25
	ld b, $7d                                        ; $6215: $06 $7d
	nop                                              ; $6217: $00
	ret z                                            ; $6218: $c8

	inc l                                            ; $6219: $2c
	jr @-$3b                                         ; $621a: $18 $c3

	inc l                                            ; $621c: $2c
	jr @-$3c                                         ; $621d: $18 $c2

	inc l                                            ; $621f: $2c
	inc c                                            ; $6220: $0c
	rr l                                             ; $6221: $cb $1d
	ld b, $c3                                        ; $6223: $06 $c3
	dec e                                            ; $6225: $1d
	ld b, $c8                                        ; $6226: $06 $c8
	inc h                                            ; $6228: $24
	ld b, $c2                                        ; $6229: $06 $c2
	inc h                                            ; $622b: $24
	ld b, $ca                                        ; $622c: $06 $ca
	dec h                                            ; $622e: $25
	ld b, $c3                                        ; $622f: $06 $c3
	dec h                                            ; $6231: $25
	ld b, $c8                                        ; $6232: $06 $c8
	inc l                                            ; $6234: $2c
	jr @-$3c                                         ; $6235: $18 $c2

	inc l                                            ; $6237: $2c
	jr jr_035_61fb                                   ; $6238: $18 $c1

	inc l                                            ; $623a: $2c
	inc c                                            ; $623b: $0c
	rr l                                             ; $623c: $cb $1d
	ld b, $c3                                        ; $623e: $06 $c3
	dec e                                            ; $6240: $1d
	ld b, $ca                                        ; $6241: $06 $ca
	ld [hl+], a                                      ; $6243: $22
	ld b, $c3                                        ; $6244: $06 $c3
	ld [hl+], a                                      ; $6246: $22
	ld b, $7d                                        ; $6247: $06 $7d
	ld [bc], a                                       ; $6249: $02
	ret z                                            ; $624a: $c8

	dec h                                            ; $624b: $25
	ld b, $c2                                        ; $624c: $06 $c2
	dec h                                            ; $624e: $25
	ld b, $c8                                        ; $624f: $06 $c8
	add hl, hl                                       ; $6251: $29
	inc bc                                           ; $6252: $03
	jp nz, $0329                                     ; $6253: $c2 $29 $03

jr_035_6256:
	ret z                                            ; $6256: $c8

	inc l                                            ; $6257: $2c

jr_035_6258:
	inc bc                                           ; $6258: $03
	jp nz, $032c                                     ; $6259: $c2 $2c $03

	ret z                                            ; $625c: $c8

	jr nz, @+$08                                     ; $625d: $20 $06

	jp nz, $0620                                     ; $625f: $c2 $20 $06

	ret z                                            ; $6262: $c8

	inc h                                            ; $6263: $24
	ld b, $c2                                        ; $6264: $06 $c2
	inc h                                            ; $6266: $24
	ld b, $c8                                        ; $6267: $06 $c8
	daa                                              ; $6269: $27
	ld b, $c2                                        ; $626a: $06 $c2
	daa                                              ; $626c: $27
	ld b, $c8                                        ; $626d: $06 $c8
	inc l                                            ; $626f: $2c
	inc bc                                           ; $6270: $03
	jp nz, $032c                                     ; $6271: $c2 $2c $03

jr_035_6274:
	ld a, l                                          ; $6274: $7d
	ld [bc], a                                       ; $6275: $02
	ret z                                            ; $6276: $c8

	jr nc, jr_035_627c                               ; $6277: $30 $03

	jp nz, $0330                                     ; $6279: $c2 $30 $03

jr_035_627c:
	ld a, l                                          ; $627c: $7d
	nop                                              ; $627d: $00
	rr l                                             ; $627e: $cb $1d
	ld b, $c3                                        ; $6280: $06 $c3
	dec e                                            ; $6282: $1d
	ld b, $c8                                        ; $6283: $06 $c8
	inc h                                            ; $6285: $24
	ld b, $c2                                        ; $6286: $06 $c2
	inc h                                            ; $6288: $24
	ld b, $ca                                        ; $6289: $06 $ca
	dec h                                            ; $628b: $25
	ld b, $c3                                        ; $628c: $06 $c3

jr_035_628e:
	dec h                                            ; $628e: $25
	ld b, $c8                                        ; $628f: $06 $c8
	inc l                                            ; $6291: $2c

Jump_035_6292:
	jr jr_035_6256                                   ; $6292: $18 $c2

	inc l                                            ; $6294: $2c
	jr jr_035_6258                                   ; $6295: $18 $c1

	inc l                                            ; $6297: $2c
	inc c                                            ; $6298: $0c
	rr l                                             ; $6299: $cb $1d
	ld b, $c3                                        ; $629b: $06 $c3
	dec e                                            ; $629d: $1d
	ld b, $c8                                        ; $629e: $06 $c8
	inc h                                            ; $62a0: $24
	ld b, $c2                                        ; $62a1: $06 $c2
	inc h                                            ; $62a3: $24
	ld b, $ca                                        ; $62a4: $06 $ca
	dec h                                            ; $62a6: $25
	ld b, $c3                                        ; $62a7: $06 $c3
	dec h                                            ; $62a9: $25
	ld b, $c9                                        ; $62aa: $06 $c9
	inc l                                            ; $62ac: $2c
	jr @-$3b                                         ; $62ad: $18 $c3

	inc l                                            ; $62af: $2c
	jr jr_035_6274                                   ; $62b0: $18 $c2

	inc l                                            ; $62b2: $2c
	inc c                                            ; $62b3: $0c
	rr l                                             ; $62b4: $cb $1d
	ld b, $c3                                        ; $62b6: $06 $c3
	dec e                                            ; $62b8: $1d
	ld b, $7d                                        ; $62b9: $06 $7d
	ld [bc], a                                       ; $62bb: $02
	ret z                                            ; $62bc: $c8

	inc h                                            ; $62bd: $24
	ld b, $c2                                        ; $62be: $06 $c2
	inc h                                            ; $62c0: $24
	ld b, $ca                                        ; $62c1: $06 $ca
	dec h                                            ; $62c3: $25
	ld b, $c2                                        ; $62c4: $06 $c2
	dec h                                            ; $62c6: $25
	ld b, $c8                                        ; $62c7: $06 $c8
	inc l                                            ; $62c9: $2c
	jr jr_035_628e                                   ; $62ca: $18 $c2

	inc l                                            ; $62cc: $2c
	jr @-$3d                                         ; $62cd: $18 $c1

	inc l                                            ; $62cf: $2c
	inc c                                            ; $62d0: $0c
	ld a, l                                          ; $62d1: $7d
	nop                                              ; $62d2: $00
	rst JumpTable                                          ; $62d3: $c7
	add hl, hl                                       ; $62d4: $29
	ld b, $2c                                        ; $62d5: $06 $2c
	ld b, $2e                                        ; $62d7: $06 $2e
	inc c                                            ; $62d9: $0c
	call nz, $182e                                   ; $62da: $c4 $2e $18
	jp nz, $182e                                     ; $62dd: $c2 $2e $18

	pop bc                                           ; $62e0: $c1
	ld l, $18                                        ; $62e1: $2e $18
	cp $ff                                           ; $62e3: $fe $ff
	or h                                             ; $62e5: $b4
	ld c, [hl]                                       ; $62e6: $4e
	pop hl                                           ; $62e7: $e1
	ld [bc], a                                       ; $62e8: $02
	halt                                             ; $62e9: $76
	add hl, hl                                       ; $62ea: $29
	inc c                                            ; $62eb: $0c
	ld a, [hl]                                       ; $62ec: $7e
	add hl, de                                       ; $62ed: $19
	nop                                              ; $62ee: $00
	xor d                                            ; $62ef: $aa
	call nz, $0c29                                   ; $62f0: $c4 $29 $0c
	cp $cb                                           ; $62f3: $fe $cb
	ld a, [hl]                                       ; $62f5: $7e
	add hl, de                                       ; $62f6: $19
	inc h                                            ; $62f7: $24
	xor d                                            ; $62f8: $aa
	ld l, $30                                        ; $62f9: $2e $30
	ld a, [hl]                                       ; $62fb: $7e
	add hl, de                                       ; $62fc: $19
	nop                                              ; $62fd: $00
	xor d                                            ; $62fe: $aa
	call nz, $182e                                   ; $62ff: $c4 $2e $18
	ld a, [hl]                                       ; $6302: $7e
	ld h, $00                                        ; $6303: $26 $00
	and b                                            ; $6305: $a0
	ret z                                            ; $6306: $c8

	dec [hl]                                         ; $6307: $35
	inc c                                            ; $6308: $0c
	ld a, [hl]                                       ; $6309: $7e
	nop                                              ; $630a: $00
	and b                                            ; $630b: $a0
	ret z                                            ; $630c: $c8

	inc sp                                           ; $630d: $33
	inc c                                            ; $630e: $0c
	ret z                                            ; $630f: $c8

	ld a, [hl]                                       ; $6310: $7e
	add hl, de                                       ; $6311: $19
	inc h                                            ; $6312: $24
	xor d                                            ; $6313: $aa
	jr nc, @+$32                                     ; $6314: $30 $30

	jp nz, $197e                                     ; $6316: $c2 $7e $19

	nop                                              ; $6319: $00
	xor d                                            ; $631a: $aa
	jr nc, jr_035_6335                               ; $631b: $30 $18

	ld a, [hl]                                       ; $631d: $7e
	nop                                              ; $631e: $00
	and b                                            ; $631f: $a0
	ret z                                            ; $6320: $c8

	ld sp, $cc0c                                     ; $6321: $31 $0c $cc
	inc l                                            ; $6324: $2c
	inc c                                            ; $6325: $0c
	ret                                              ; $6326: $c9


	ld a, [hl]                                       ; $6327: $7e

jr_035_6328:
	ld h, $00                                        ; $6328: $26 $00
	and b                                            ; $632a: $a0
	ld l, $30                                        ; $632b: $2e $30
	ld a, [hl]                                       ; $632d: $7e
	nop                                              ; $632e: $00
	and b                                            ; $632f: $a0
	call nz, $182e                                   ; $6330: $c4 $2e $18
	sra [hl]                                         ; $6333: $cb $2e

jr_035_6335:
	inc c                                            ; $6335: $0c
	ret z                                            ; $6336: $c8

	jr nc, @+$0e                                     ; $6337: $30 $0c

	ret z                                            ; $6339: $c8

	ld a, [hl]                                       ; $633a: $7e
	add hl, de                                       ; $633b: $19
	inc c                                            ; $633c: $0c
	xor d                                            ; $633d: $aa
	ld sp, $7e18                                     ; $633e: $31 $18 $7e
	add hl, de                                       ; $6341: $19
	nop                                              ; $6342: $00
	xor d                                            ; $6343: $aa
	call nz, $0c31                                   ; $6344: $c4 $31 $0c
	ld a, [hl]                                       ; $6347: $7e
	nop                                              ; $6348: $00
	and b                                            ; $6349: $a0
	ret z                                            ; $634a: $c8

jr_035_634b:
	jr nc, jr_035_6353                               ; $634b: $30 $06

	call $062e                                       ; $634d: $cd $2e $06
	rst JumpTable                                          ; $6350: $c7
	jr nc, @+$14                                     ; $6351: $30 $12

jr_035_6353:
	call nz, $0630                                   ; $6353: $c4 $30 $06
	call z, $122c                                    ; $6356: $cc $2c $12
	call nz, $062c                                   ; $6359: $c4 $2c $06
	bit 7, [hl]                                      ; $635c: $cb $7e
	add hl, de                                       ; $635e: $19
	inc h                                            ; $635f: $24
	xor d                                            ; $6360: $aa
	ld l, $30                                        ; $6361: $2e $30
	call nz, $182e                                   ; $6363: $c4 $2e $18
	ret z                                            ; $6366: $c8

	ld a, [hl]                                       ; $6367: $7e
	ld h, $00                                        ; $6368: $26 $00
	and b                                            ; $636a: $a0
	dec [hl]                                         ; $636b: $35
	inc c                                            ; $636c: $0c
	ld a, [hl]                                       ; $636d: $7e
	nop                                              ; $636e: $00
	and b                                            ; $636f: $a0
	ret z                                            ; $6370: $c8

	inc sp                                           ; $6371: $33
	inc c                                            ; $6372: $0c
	ret z                                            ; $6373: $c8

	jr c, jr_035_6388                                ; $6374: $38 $12

	jp nz, $0638                                     ; $6376: $c2 $38 $06

	ret z                                            ; $6379: $c8

	ld a, [hl]                                       ; $637a: $7e
	add hl, de                                       ; $637b: $19
	jr jr_035_6328                                   ; $637c: $18 $aa

	dec [hl]                                         ; $637e: $35
	inc h                                            ; $637f: $24
	ld a, [hl]                                       ; $6380: $7e
	add hl, de                                       ; $6381: $19
	nop                                              ; $6382: $00
	xor d                                            ; $6383: $aa
	jp nz, $0c35                                     ; $6384: $c2 $35 $0c

	ret z                                            ; $6387: $c8

jr_035_6388:
	ld a, [hl]                                       ; $6388: $7e
	nop                                              ; $6389: $00
	and b                                            ; $638a: $a0
	inc sp                                           ; $638b: $33
	inc c                                            ; $638c: $0c
	dec [hl]                                         ; $638d: $35
	inc c                                            ; $638e: $0c
	ld a, [hl]                                       ; $638f: $7e
	ld h, $00                                        ; $6390: $26 $00
	and b                                            ; $6392: $a0
	ret z                                            ; $6393: $c8

	inc sp                                           ; $6394: $33
	ld [de], a                                       ; $6395: $12
	ld a, [hl]                                       ; $6396: $7e
	nop                                              ; $6397: $00
	and b                                            ; $6398: $a0
	call nz, $0633                                   ; $6399: $c4 $33 $06
	ret z                                            ; $639c: $c8

	ld a, [hl]                                       ; $639d: $7e
	add hl, de                                       ; $639e: $19
	jr jr_035_634b                                   ; $639f: $18 $aa

	ld sp, $c224                                     ; $63a1: $31 $24 $c2
	ld a, [hl]                                       ; $63a4: $7e
	add hl, de                                       ; $63a5: $19
	nop                                              ; $63a6: $00
	xor d                                            ; $63a7: $aa
	ld sp, $cb0c                                     ; $63a8: $31 $0c $cb
	ld a, [hl]                                       ; $63ab: $7e
	nop                                              ; $63ac: $00
	and b                                            ; $63ad: $a0
	ld l, $0c                                        ; $63ae: $2e $0c
	rst JumpTable                                          ; $63b0: $c7
	jr nc, @+$0e                                     ; $63b1: $30 $0c

	ld sp, $c706                                     ; $63b3: $31 $06 $c7
	jr nc, @+$08                                     ; $63b6: $30 $06

	ret z                                            ; $63b8: $c8

	ld a, [hl]                                       ; $63b9: $7e
	add hl, de                                       ; $63ba: $19
	inc h                                            ; $63bb: $24
	xor d                                            ; $63bc: $aa
	ld sp, $c430                                     ; $63bd: $31 $30 $c4
	ld a, [hl]                                       ; $63c0: $7e
	add hl, de                                       ; $63c1: $19
	nop                                              ; $63c2: $00
	xor d                                            ; $63c3: $aa
	ld sp, $c218                                     ; $63c4: $31 $18 $c2
	ld sp, $7e0c                                     ; $63c7: $31 $0c $7e
	nop                                              ; $63ca: $00
	and b                                            ; $63cb: $a0
	cp $ff                                           ; $63cc: $fe $ff
	or h                                             ; $63ce: $b4
	ld c, [hl]                                       ; $63cf: $4e
	pop af                                           ; $63d0: $f1
	jr jr_035_6449                                   ; $63d1: $18 $76

	nop                                              ; $63d3: $00

jr_035_63d4:
	jr jr_035_63d4                                   ; $63d4: $18 $fe

	db $fd                                           ; $63d6: $fd
	db $fd                                           ; $63d7: $fd
	ld h, e                                          ; $63d8: $63
	rrca                                             ; $63d9: $0f
	inc bc                                           ; $63da: $03
	nop                                              ; $63db: $00
	inc bc                                           ; $63dc: $03
	rrca                                             ; $63dd: $0f
	inc bc                                           ; $63de: $03
	nop                                              ; $63df: $00
	add hl, bc                                       ; $63e0: $09
	rrca                                             ; $63e1: $0f
	ld b, $00                                        ; $63e2: $06 $00
	inc c                                            ; $63e4: $0c
	dec c                                            ; $63e5: $0d
	ld b, $0f                                        ; $63e6: $06 $0f
	ld b, $11                                        ; $63e8: $06 $11
	jr @+$16                                         ; $63ea: $18 $14

	jr @-$01                                         ; $63ec: $18 $fd

	db $fd                                           ; $63ee: $fd
	ld h, e                                          ; $63ef: $63
	ld d, $06                                        ; $63f0: $16 $06
	dec d                                            ; $63f2: $15
	ld b, $16                                        ; $63f3: $06 $16
	inc c                                            ; $63f5: $0c
	add $16                                          ; $63f6: $c6 $16
	jr jr_035_63fa                                   ; $63f8: $18 $00

jr_035_63fa:
	jr nc, jr_035_63fa                               ; $63fa: $30 $fe

	rst $38                                          ; $63fc: $ff
	pop de                                           ; $63fd: $d1
	jp nz, $1d7e                                     ; $63fe: $c2 $7e $1d

	inc c                                            ; $6401: $0c
	and b                                            ; $6402: $a0
	ld d, $06                                        ; $6403: $16 $06
	nop                                              ; $6405: $00
	ld b, $16                                        ; $6406: $06 $16
	ld b, $00                                        ; $6408: $06 $00
	ld [de], a                                       ; $640a: $12
	ld de, $0006                                     ; $640b: $11 $06 $00
	ld b, $16                                        ; $640e: $06 $16
	inc h                                            ; $6410: $24
	jr jr_035_6419                                   ; $6411: $18 $06

	add hl, de                                       ; $6413: $19
	ld b, $14                                        ; $6414: $06 $14
	inc bc                                           ; $6416: $03
	nop                                              ; $6417: $00
	inc bc                                           ; $6418: $03

jr_035_6419:
	inc d                                            ; $6419: $14
	inc bc                                           ; $641a: $03
	nop                                              ; $641b: $00
	add hl, bc                                       ; $641c: $09
	inc d                                            ; $641d: $14
	ld b, $00                                        ; $641e: $06 $00
	ld [de], a                                       ; $6420: $12
	rrca                                             ; $6421: $0f
	ld b, $14                                        ; $6422: $06 $14
	inc h                                            ; $6424: $24
	ld d, $06                                        ; $6425: $16 $06
	jr @+$08                                         ; $6427: $18 $06

	ld [de], a                                       ; $6429: $12
	ld b, $00                                        ; $642a: $06 $00
	ld b, $12                                        ; $642c: $06 $12
	ld b, $00                                        ; $642e: $06 $00
	ld [de], a                                       ; $6430: $12
	dec c                                            ; $6431: $0d
	ld b, $00                                        ; $6432: $06 $00
	ld b, $12                                        ; $6434: $06 $12
	ld [de], a                                       ; $6436: $12
	nop                                              ; $6437: $00
	ld b, $12                                        ; $6438: $06 $12
	inc c                                            ; $643a: $0c
	ld de, $fd0c                                     ; $643b: $11 $0c $fd
	ret nc                                           ; $643e: $d0

	ld c, [hl]                                       ; $643f: $4e
	nop                                              ; $6440: $00

jr_035_6441:
	jr jr_035_6441                                   ; $6441: $18 $fe

	db $fd                                           ; $6443: $fd
	ld [hl], c                                       ; $6444: $71
	ld h, h                                          ; $6445: $64
	db $fd                                           ; $6446: $fd
	sub b                                            ; $6447: $90
	ld h, h                                          ; $6448: $64

jr_035_6449:
	rra                                              ; $6449: $1f
	ld b, $1f                                        ; $644a: $06 $1f
	inc c                                            ; $644c: $0c
	rra                                              ; $644d: $1f
	ld b, $1d                                        ; $644e: $06 $1d
	inc c                                            ; $6450: $0c
	dec e                                            ; $6451: $1d
	ld b, $1f                                        ; $6452: $06 $1f
	ld b, $be                                        ; $6454: $06 $be
	inc c                                            ; $6456: $0c
	jr nz, jr_035_647a                               ; $6457: $20 $21

	ld [hl+], a                                      ; $6459: $22
	inc hl                                           ; $645a: $23
	cp [hl]                                          ; $645b: $be
	db $fd                                           ; $645c: $fd
	ld [hl], c                                       ; $645d: $71
	ld h, h                                          ; $645e: $64
	db $fd                                           ; $645f: $fd
	sub b                                            ; $6460: $90
	ld h, h                                          ; $6461: $64
	jr nz, jr_035_646a                               ; $6462: $20 $06

	jr nz, jr_035_646c                               ; $6464: $20 $06

	cp [hl]                                          ; $6466: $be
	inc c                                            ; $6467: $0c
	jr nz, @+$23                                     ; $6468: $20 $21

jr_035_646a:
	ld [hl+], a                                      ; $646a: $22
	inc hl                                           ; $646b: $23

jr_035_646c:
	cp [hl]                                          ; $646c: $be
	nop                                              ; $646d: $00
	inc h                                            ; $646e: $24
	cp $ff                                           ; $646f: $fe $ff
	cp [hl]                                          ; $6471: $be
	inc c                                            ; $6472: $0c
	rra                                              ; $6473: $1f

jr_035_6474:
	rra                                              ; $6474: $1f
	dec e                                            ; $6475: $1d
	rra                                              ; $6476: $1f
	jr nz, jr_035_649a                               ; $6477: $20 $21

	ld [hl+], a                                      ; $6479: $22

jr_035_647a:
	inc hl                                           ; $647a: $23
	cp [hl]                                          ; $647b: $be
	rra                                              ; $647c: $1f
	ld b, $1f                                        ; $647d: $06 $1f
	inc c                                            ; $647f: $0c
	rra                                              ; $6480: $1f
	ld b, $1d                                        ; $6481: $06 $1d
	inc c                                            ; $6483: $0c
	dec e                                            ; $6484: $1d
	ld b, $1f                                        ; $6485: $06 $1f
	ld b, $be                                        ; $6487: $06 $be
	inc c                                            ; $6489: $0c
	jr nz, @+$23                                     ; $648a: $20 $21

	ld [hl+], a                                      ; $648c: $22
	inc hl                                           ; $648d: $23

jr_035_648e:
	cp [hl]                                          ; $648e: $be
	db $fd                                           ; $648f: $fd
	cp [hl]                                          ; $6490: $be
	inc c                                            ; $6491: $0c
	rra                                              ; $6492: $1f
	rra                                              ; $6493: $1f
	dec e                                            ; $6494: $1d
	rra                                              ; $6495: $1f
	jr nz, jr_035_64b5                               ; $6496: $20 $1d

	jr nz, @+$22                                     ; $6498: $20 $20

jr_035_649a:
	cp [hl]                                          ; $649a: $be

jr_035_649b:
	db $fd                                           ; $649b: $fd
	ret nc                                           ; $649c: $d0

	adc h                                            ; $649d: $8c
	cp $c3                                           ; $649e: $fe $c3
	sub d                                            ; $64a0: $92

jr_035_64a1:
	pop de                                           ; $64a1: $d1
	ld h, e                                          ; $64a2: $63
	nop                                              ; $64a3: $00
	db $10                                           ; $64a4: $10
	ld a, [hl]                                       ; $64a5: $7e
	dec e                                            ; $64a6: $1d
	nop                                              ; $64a7: $00
	xor c                                            ; $64a8: $a9
	inc l                                            ; $64a9: $2c
	jr nc, jr_035_64d5                               ; $64aa: $30 $29

	jr nc, @-$3c                                     ; $64ac: $30 $c2

	daa                                              ; $64ae: $27
	jr nc, jr_035_6474                               ; $64af: $30 $c3

	dec h                                            ; $64b1: $25
	jr nz, @+$80                                     ; $64b2: $20 $7e

	nop                                              ; $64b4: $00

jr_035_64b5:
	ret z                                            ; $64b5: $c8

	pop de                                           ; $64b6: $d1
	jr jr_035_64e9                                   ; $64b7: $18 $30

	jp $1818                                         ; $64b9: $c3 $18 $18


	add $1d                                          ; $64bc: $c6 $1d
	ld [de], a                                       ; $64be: $12
	jp nz, $061d                                     ; $64bf: $c2 $1d $06

	add $1d                                          ; $64c2: $c6 $1d
	jr jr_035_648e                                   ; $64c4: $18 $c8

	jr @+$1a                                         ; $64c6: $18 $18

	add hl, de                                       ; $64c8: $19
	jr jr_035_64e3                                   ; $64c9: $18 $18

	jr @-$68                                         ; $64cb: $18 $96

	jr nc, @+$09                                     ; $64cd: $30 $07

	dec de                                           ; $64cf: $1b
	jr nc, jr_035_649b                               ; $64d0: $30 $c9

	inc h                                            ; $64d2: $24
	jr nc, jr_035_64f6                               ; $64d3: $30 $21

jr_035_64d5:
	jr nc, jr_035_64a1                               ; $64d5: $30 $ca

	dec de                                           ; $64d7: $1b
	jr nc, @-$68                                     ; $64d8: $30 $96

	nop                                              ; $64da: $00
	nop                                              ; $64db: $00
	ret z                                            ; $64dc: $c8

	dec e                                            ; $64dd: $1d
	ld c, b                                          ; $64de: $48
	ld e, $18                                        ; $64df: $1e $18
	jr nz, jr_035_6513                               ; $64e1: $20 $30

jr_035_64e3:
	ret z                                            ; $64e3: $c8

	inc hl                                           ; $64e4: $23
	ld a, [hl+]                                      ; $64e5: $2a
	pop de                                           ; $64e6: $d1
	ld e, $03                                        ; $64e7: $1e $03

jr_035_64e9:
	jr nz, jr_035_64ee                               ; $64e9: $20 $03

	cp [hl]                                          ; $64eb: $be
	inc c                                            ; $64ec: $0c
	ld [hl+], a                                      ; $64ed: $22

jr_035_64ee:
	nop                                              ; $64ee: $00
	add hl, de                                       ; $64ef: $19
	nop                                              ; $64f0: $00
	dec de                                           ; $64f1: $1b
	nop                                              ; $64f2: $00
	cp [hl]                                          ; $64f3: $be
	cp [hl]                                          ; $64f4: $be
	inc b                                            ; $64f5: $04

jr_035_64f6:
	add hl, de                                       ; $64f6: $19
	dec de                                           ; $64f7: $1b
	add hl, de                                       ; $64f8: $19

jr_035_64f9:
	dec de                                           ; $64f9: $1b
	cp [hl]                                          ; $64fa: $be
	add hl, de                                       ; $64fb: $19
	ld [bc], a                                       ; $64fc: $02

jr_035_64fd:
	pop de                                           ; $64fd: $d1
	jr nz, jr_035_6503                               ; $64fe: $20 $03

	ld [hl+], a                                      ; $6500: $22
	inc bc                                           ; $6501: $03
	cp [hl]                                          ; $6502: $be

jr_035_6503:
	inc c                                            ; $6503: $0c

jr_035_6504:
	inc h                                            ; $6504: $24
	nop                                              ; $6505: $00
	inc e                                            ; $6506: $1c
	nop                                              ; $6507: $00
	ld [hl+], a                                      ; $6508: $22
	nop                                              ; $6509: $00
	cp [hl]                                          ; $650a: $be
	ei                                               ; $650b: $fb
	add $1f                                          ; $650c: $c6 $1f
	inc b                                            ; $650e: $04
	ld [hl+], a                                      ; $650f: $22
	inc b                                            ; $6510: $04
	ei                                               ; $6511: $fb
	inc bc                                           ; $6512: $03

jr_035_6513:
	rst JumpTable                                          ; $6513: $c7
	pop de                                           ; $6514: $d1
	cp [hl]                                          ; $6515: $be
	inc c                                            ; $6516: $0c
	jr nz, jr_035_6519                               ; $6517: $20 $00

jr_035_6519:
	rra                                              ; $6519: $1f
	nop                                              ; $651a: $00
	jr nz, jr_035_651d                               ; $651b: $20 $00

jr_035_651d:
	ld [hl+], a                                      ; $651d: $22
	nop                                              ; $651e: $00
	cp [hl]                                          ; $651f: $be
	call nz, $1d7e                                   ; $6520: $c4 $7e $1d
	ld e, $aa                                        ; $6523: $1e $aa
	ld h, $60                                        ; $6525: $26 $60
	ld a, [hl]                                       ; $6527: $7e
	nop                                              ; $6528: $00
	ret                                              ; $6529: $c9


	nop                                              ; $652a: $00
	jr @+$1d                                         ; $652b: $18 $1b

	inc c                                            ; $652d: $0c
	dec e                                            ; $652e: $1d
	inc c                                            ; $652f: $0c
	dec de                                           ; $6530: $1b
	jr jr_035_6549                                   ; $6531: $18 $16

	jr jr_035_654d                                   ; $6533: $18 $18

	jr jr_035_64f9                                   ; $6535: $18 $c2

	jr jr_035_6551                                   ; $6537: $18 $18

	nop                                              ; $6539: $00
	jr nc, jr_035_6504                               ; $653a: $30 $c8

	add hl, de                                       ; $653c: $19
	jr nc, jr_035_64fd                               ; $653d: $30 $be

	jr jr_035_6559                                   ; $653f: $18 $18

	add hl, de                                       ; $6541: $19
	ld d, $19                                        ; $6542: $16 $19
	cp [hl]                                          ; $6544: $be
	rst JumpTable                                          ; $6545: $c7
	inc d                                            ; $6546: $14
	jr jr_035_6513                                   ; $6547: $18 $ca

jr_035_6549:
	add hl, de                                       ; $6549: $19

jr_035_654a:
	jr jr_035_654a                                   ; $654a: $18 $fe

	rst $38                                          ; $654c: $ff

jr_035_654d:
	ret nc                                           ; $654d: $d0

	adc h                                            ; $654e: $8c
	cp $c8                                           ; $654f: $fe $c8

jr_035_6551:
	sub d                                            ; $6551: $92
	pop de                                           ; $6552: $d1
	ld h, e                                          ; $6553: $63
	ld a, [hl]                                       ; $6554: $7e
	ld h, $00                                        ; $6555: $26 $00
	xor c                                            ; $6557: $a9
	inc l                                            ; $6558: $2c

jr_035_6559:
	inc h                                            ; $6559: $24
	jp $0c2c                                         ; $655a: $c3 $2c $0c


	ret z                                            ; $655d: $c8

	add hl, hl                                       ; $655e: $29
	inc h                                            ; $655f: $24
	jp $0c29                                         ; $6560: $c3 $29 $0c


	add $27                                          ; $6563: $c6 $27
	inc h                                            ; $6565: $24
	jp $0c27                                         ; $6566: $c3 $27 $0c


	ret z                                            ; $6569: $c8

	dec h                                            ; $656a: $25
	inc h                                            ; $656b: $24
	jp $0c25                                         ; $656c: $c3 $25 $0c


	ld a, [hl]                                       ; $656f: $7e
	nop                                              ; $6570: $00
	and b                                            ; $6571: $a0
	rst JumpTable                                          ; $6572: $c7
	daa                                              ; $6573: $27
	inc a                                            ; $6574: $3c
	jp nz, $2427                                     ; $6575: $c2 $27 $24

	sla b                                            ; $6578: $cb $20
	inc a                                            ; $657a: $3c
	call nz, $2420                                   ; $657b: $c4 $20 $24
	sla b                                            ; $657e: $cb $20
	inc h                                            ; $6580: $24
	call nz, $0c20                                   ; $6581: $c4 $20 $0c
	ret z                                            ; $6584: $c8

	ld a, [hl+]                                      ; $6585: $2a
	inc h                                            ; $6586: $24
	jp nz, $0c2a                                     ; $6587: $c2 $2a $0c

	rst JumpTable                                          ; $658a: $c7
	add hl, hl                                       ; $658b: $29
	inc h                                            ; $658c: $24
	jp $0c29                                         ; $658d: $c3 $29 $0c


	ret                                              ; $6590: $c9


	inc h                                            ; $6591: $24
	inc h                                            ; $6592: $24
	call nz, $0c24                                   ; $6593: $c4 $24 $0c
	ret z                                            ; $6596: $c8

	dec h                                            ; $6597: $25
	ld h, h                                          ; $6598: $64
	add $25                                          ; $6599: $c6 $25
	ld b, h                                          ; $659b: $44
	jp nz, $0c25                                     ; $659c: $c2 $25 $0c

	pop bc                                           ; $659f: $c1
	dec h                                            ; $65a0: $25
	inc c                                            ; $65a1: $0c
	ret z                                            ; $65a2: $c8

	add hl, hl                                       ; $65a3: $29
	inc h                                            ; $65a4: $24
	jp nz, $0c29                                     ; $65a5: $c2 $29 $0c

	rst JumpTable                                          ; $65a8: $c7
	ld sp, $c224                                     ; $65a9: $31 $24 $c2
	ld sp, $c60c                                     ; $65ac: $31 $0c $c6
	jr nc, jr_035_65d5                               ; $65af: $30 $24

	jp nz, $0c30                                     ; $65b1: $c2 $30 $0c

	rst JumpTable                                          ; $65b4: $c7
	ld l, $24                                        ; $65b5: $2e $24
	jp nz, $0c2e                                     ; $65b7: $c2 $2e $0c

	ret z                                            ; $65ba: $c8

	ld l, $30                                        ; $65bb: $2e $30
	call nz, $182e                                   ; $65bd: $c4 $2e $18
	ret z                                            ; $65c0: $c8

	dec l                                            ; $65c1: $2d
	ld [de], a                                       ; $65c2: $12
	jp $062d                                         ; $65c3: $c3 $2d $06


	rst JumpTable                                          ; $65c6: $c7
	inc l                                            ; $65c7: $2c
	ld c, b                                          ; $65c8: $48
	jp nz, $182c                                     ; $65c9: $c2 $2c $18

	ret z                                            ; $65cc: $c8

	inc l                                            ; $65cd: $2c

jr_035_65ce:
	inc h                                            ; $65ce: $24
	jp $0c2c                                         ; $65cf: $c3 $2c $0c


	ret                                              ; $65d2: $c9


	ld a, [hl+]                                      ; $65d3: $2a
	ld [de], a                                       ; $65d4: $12

jr_035_65d5:
	call nz, $062a                                   ; $65d5: $c4 $2a $06
	ret                                              ; $65d8: $c9


	add hl, hl                                       ; $65d9: $29
	ld [de], a                                       ; $65da: $12

jr_035_65db:
	call nz, $0629                                   ; $65db: $c4 $29 $06
	push bc                                          ; $65de: $c5
	daa                                              ; $65df: $27
	inc h                                            ; $65e0: $24
	jp nz, $2427                                     ; $65e1: $c2 $27 $24

	ret z                                            ; $65e4: $c8

	add hl, hl                                       ; $65e5: $29
	ld [de], a                                       ; $65e6: $12
	call nz, $0629                                   ; $65e7: $c4 $29 $06
	ret z                                            ; $65ea: $c8

	dec h                                            ; $65eb: $25
	ld h, b                                          ; $65ec: $60
	call nz, $3025                                   ; $65ed: $c4 $25 $30
	jp $1825                                         ; $65f0: $c3 $25 $18


	jp nz, $0c25                                     ; $65f3: $c2 $25 $0c

	pop bc                                           ; $65f6: $c1
	dec h                                            ; $65f7: $25
	inc c                                            ; $65f8: $0c
	cp $ff                                           ; $65f9: $fe $ff
	ret nc                                           ; $65fb: $d0

	adc h                                            ; $65fc: $8c
	cp $c2                                           ; $65fd: $fe $c2
	pop de                                           ; $65ff: $d1
	ld a, a                                          ; $6600: $7f
	ld hl, $0d63                                     ; $6601: $21 $63 $0d
	ld a, b                                          ; $6604: $78
	call nz, $180d                                   ; $6605: $c4 $0d $18
	add $0d                                          ; $6608: $c6 $0d
	jr jr_035_65ce                                   ; $660a: $18 $c2

jr_035_660c:
	ld [$000c], sp                                   ; $660c: $08 $0c $00
	inc c                                            ; $660f: $0c
	dec c                                            ; $6610: $0d
	sub b                                            ; $6611: $90
	call nz, $180d                                   ; $6612: $c4 $0d $18
	add $0d                                          ; $6615: $c6 $0d
	jr jr_035_65db                                   ; $6617: $18 $c2

	ld [$003c], sp                                   ; $6619: $08 $3c $00
	inc c                                            ; $661c: $0c
	ld [$000c], sp                                   ; $661d: $08 $0c $00

jr_035_6620:
	inc c                                            ; $6620: $0c

jr_035_6621:
	add hl, bc                                       ; $6621: $09
	jr nc, jr_035_6630                               ; $6622: $30 $0c

	jr nc, jr_035_6630                               ; $6624: $30 $0a

	inc a                                            ; $6626: $3c
	nop                                              ; $6627: $00
	inc c                                            ; $6628: $0c
	ld a, [bc]                                       ; $6629: $0a
	inc c                                            ; $662a: $0c
	nop                                              ; $662b: $00
	inc c                                            ; $662c: $0c

jr_035_662d:
	dec bc                                           ; $662d: $0b
	jr nc, jr_035_6635                               ; $662e: $30 $05

jr_035_6630:
	jr nc, jr_035_662d                               ; $6630: $30 $fb

	jp nz, $1806                                     ; $6632: $c2 $06 $18

jr_035_6635:
	add $06                                          ; $6635: $c6 $06
	jr @-$03                                         ; $6637: $18 $fb

	ld [bc], a                                       ; $6639: $02
	ei                                               ; $663a: $fb
	jp nz, $180c                                     ; $663b: $c2 $0c $18

	add $0c                                          ; $663e: $c6 $0c
	jr @-$03                                         ; $6640: $18 $fb

	ld [bc], a                                       ; $6642: $02
	jp nz, $1805                                     ; $6643: $c2 $05 $18

	add $05                                          ; $6646: $c6 $05
	jr jr_035_660c                                   ; $6648: $18 $c2

	dec b                                            ; $664a: $05
	jr jr_035_6658                                   ; $664b: $18 $0b

	inc c                                            ; $664d: $0c
	add $0b                                          ; $664e: $c6 $0b
	inc c                                            ; $6650: $0c
	jp nz, $180a                                     ; $6651: $c2 $0a $18

	add $0a                                          ; $6654: $c6 $0a

jr_035_6656:
	jr @-$3c                                         ; $6656: $18 $c2

jr_035_6658:
	ld [bc], a                                       ; $6658: $02
	jr jr_035_6621                                   ; $6659: $18 $c6

	ld [bc], a                                       ; $665b: $02
	jr jr_035_6620                                   ; $665c: $18 $c2

	inc bc                                           ; $665e: $03
	inc a                                            ; $665f: $3c
	add $03                                          ; $6660: $c6 $03
	inc c                                            ; $6662: $0c
	jp nz, $0c0a                                     ; $6663: $c2 $0a $0c

	add $0a                                          ; $6666: $c6 $0a
	inc c                                            ; $6668: $0c
	jp nz, $1808                                     ; $6669: $c2 $08 $18

	add $08                                          ; $666c: $c6 $08
	ld c, b                                          ; $666e: $48
	jp nz, $30be                                     ; $666f: $c2 $be $30

	dec c                                            ; $6672: $0d
	ld [$0506], sp                                   ; $6673: $08 $06 $05
	cp [hl]                                          ; $6676: $be
	cp $ff                                           ; $6677: $fe $ff
	ret nc                                           ; $6679: $d0

	adc h                                            ; $667a: $8c
	cp $fb                                           ; $667b: $fe $fb
	db $fd                                           ; $667d: $fd
	sbc a                                            ; $667e: $9f
	ld h, [hl]                                       ; $667f: $66
	ei                                               ; $6680: $fb
	inc b                                            ; $6681: $04
	ei                                               ; $6682: $fb
	db $fc                                           ; $6683: $fc
	jr nz, @+$1a                                     ; $6684: $20 $18

	dec hl                                           ; $6686: $2b
	jr @-$02                                         ; $6687: $18 $fc

	inc b                                            ; $6689: $04
	ei                                               ; $668a: $fb
	ld [bc], a                                       ; $668b: $02
	cp [hl]                                          ; $668c: $be
	inc c                                            ; $668d: $0c
	rra                                              ; $668e: $1f
	add hl, hl                                       ; $668f: $29
	ld h, $29                                        ; $6690: $26 $29
	daa                                              ; $6692: $27
	add hl, hl                                       ; $6693: $29
	jr z, @+$2b                                      ; $6694: $28 $29

	jr nz, jr_035_6656                               ; $6696: $20 $be

	nop                                              ; $6698: $00
	ld d, h                                          ; $6699: $54
	db $fd                                           ; $669a: $fd
	sbc a                                            ; $669b: $9f
	ld h, [hl]                                       ; $669c: $66
	cp $ff                                           ; $669d: $fe $ff
	cp [hl]                                          ; $669f: $be
	inc c                                            ; $66a0: $0c
	rra                                              ; $66a1: $1f
	add hl, hl                                       ; $66a2: $29
	ld h, $29                                        ; $66a3: $26 $29
	daa                                              ; $66a5: $27
	add hl, hl                                       ; $66a6: $29
	jr z, jr_035_66d2                                ; $66a7: $28 $29

	jr nz, jr_035_66d5                               ; $66a9: $20 $2a

	ld hl, $222a                                     ; $66ab: $21 $2a $22
	ld a, [hl+]                                      ; $66ae: $2a
	inc hl                                           ; $66af: $23
	ld a, [hl+]                                      ; $66b0: $2a
	cp [hl]                                          ; $66b1: $be
	db $fd                                           ; $66b2: $fd
	ret nc                                           ; $66b3: $d0

	ld [hl], e                                       ; $66b4: $73
	cp $92                                           ; $66b5: $fe $92
	ld h, l                                          ; $66b7: $65
	ld a, l                                          ; $66b8: $7d
	ld bc, $26fd                                     ; $66b9: $01 $fd $26
	ld h, a                                          ; $66bc: $67
	ei                                               ; $66bd: $fb
	jp nc, $33c9                                     ; $66be: $d2 $c9 $33

	ld b, $c4                                        ; $66c1: $06 $c4
	inc l                                            ; $66c3: $2c
	ld b, $c9                                        ; $66c4: $06 $c9
	ld a, [hl+]                                      ; $66c6: $2a
	ld b, $c4                                        ; $66c7: $06 $c4
	inc sp                                           ; $66c9: $33
	ld b, $c9                                        ; $66ca: $06 $c9
	ld l, $06                                        ; $66cc: $2e $06
	call nz, $062a                                   ; $66ce: $c4 $2a $06
	ret                                              ; $66d1: $c9


jr_035_66d2:
	ld a, [hl+]                                      ; $66d2: $2a
	ld b, $c4                                        ; $66d3: $06 $c4

jr_035_66d5:
	ld l, $06                                        ; $66d5: $2e $06
	ei                                               ; $66d7: $fb
	ld [bc], a                                       ; $66d8: $02
	ld a, l                                          ; $66d9: $7d
	nop                                              ; $66da: $00
	pop de                                           ; $66db: $d1
	push bc                                          ; $66dc: $c5
	nop                                              ; $66dd: $00
	inc c                                            ; $66de: $0c
	inc h                                            ; $66df: $24
	ld [de], a                                       ; $66e0: $12
	jp nz, $0624                                     ; $66e1: $c2 $24 $06

	push bc                                          ; $66e4: $c5
	inc h                                            ; $66e5: $24
	ld b, $c2                                        ; $66e6: $06 $c2
	inc h                                            ; $66e8: $24
	ld b, $c3                                        ; $66e9: $06 $c3
	dec h                                            ; $66eb: $25
	ld b, $c1                                        ; $66ec: $06 $c1
	dec h                                            ; $66ee: $25
	ld b, $c5                                        ; $66ef: $06 $c5
	ld [hl+], a                                      ; $66f1: $22
	ld b, $c2                                        ; $66f2: $06 $c2
	ld [hl+], a                                      ; $66f4: $22
	ld b, $c5                                        ; $66f5: $06 $c5
	inc h                                            ; $66f7: $24
	ld b, $c2                                        ; $66f8: $06 $c2
	inc h                                            ; $66fa: $24
	ld b, $c5                                        ; $66fb: $06 $c5
	jr nz, @+$08                                     ; $66fd: $20 $06

	jp nz, $0620                                     ; $66ff: $c2 $20 $06

	ld a, l                                          ; $6702: $7d
	ld bc, $26fd                                     ; $6703: $01 $fd $26
	ld h, a                                          ; $6706: $67
	ld a, l                                          ; $6707: $7d
	nop                                              ; $6708: $00
	add $d1                                          ; $6709: $c6 $d1
	ld [hl+], a                                      ; $670b: $22
	inc c                                            ; $670c: $0c
	jp nz, $0c22                                     ; $670d: $c2 $22 $0c

	add $20                                          ; $6710: $c6 $20
	inc c                                            ; $6712: $0c
	ld e, $0c                                        ; $6713: $1e $0c
	jp nz, $0c1e                                     ; $6715: $c2 $1e $0c

	add $1b                                          ; $6718: $c6 $1b
	inc c                                            ; $671a: $0c
	ld e, $0c                                        ; $671b: $1e $0c
	dec e                                            ; $671d: $1d
	inc c                                            ; $671e: $0c
	jp nz, $181d                                     ; $671f: $c2 $1d $18

	nop                                              ; $6722: $00
	ld c, b                                          ; $6723: $48
	cp $ff                                           ; $6724: $fe $ff
	ei                                               ; $6726: $fb
	jp nc, $35c9                                     ; $6727: $d2 $c9 $35

	ld b, $c4                                        ; $672a: $06 $c4
	dec [hl]                                         ; $672c: $35
	ld b, $c9                                        ; $672d: $06 $c9
	inc l                                            ; $672f: $2c
	ld b, $c4                                        ; $6730: $06 $c4
	dec [hl]                                         ; $6732: $35
	ld b, $c9                                        ; $6733: $06 $c9
	ld sp, $c406                                     ; $6735: $31 $06 $c4
	jr c, @+$08                                      ; $6738: $38 $06

	ret                                              ; $673a: $c9


	inc l                                            ; $673b: $2c
	ld b, $c4                                        ; $673c: $06 $c4
	ld sp, $fb06                                     ; $673e: $31 $06 $fb
	ld [bc], a                                       ; $6741: $02
	ei                                               ; $6742: $fb
	db $d3                                           ; $6743: $d3
	ret                                              ; $6744: $c9


	dec [hl]                                         ; $6745: $35
	ld b, $c4                                        ; $6746: $06 $c4
	ld sp, $c906                                     ; $6748: $31 $06 $c9
	dec l                                            ; $674b: $2d
	ld b, $c4                                        ; $674c: $06 $c4
	dec [hl]                                         ; $674e: $35
	ld b, $c9                                        ; $674f: $06 $c9
	ld sp, $c406                                     ; $6751: $31 $06 $c4
	dec l                                            ; $6754: $2d
	ld b, $c9                                        ; $6755: $06 $c9
	dec l                                            ; $6757: $2d
	ld b, $c4                                        ; $6758: $06 $c4
	ld sp, $fb06                                     ; $675a: $31 $06 $fb
	ld [bc], a                                       ; $675d: $02
	ei                                               ; $675e: $fb
	jp nc, $35c9                                     ; $675f: $d2 $c9 $35

	ld b, $c4                                        ; $6762: $06 $c4
	dec l                                            ; $6764: $2d
	ld b, $c9                                        ; $6765: $06 $c9
	ld l, $06                                        ; $6767: $2e $06
	call nz, $0635                                   ; $6769: $c4 $35 $06
	ret                                              ; $676c: $c9


	ld sp, $c406                                     ; $676d: $31 $06 $c4
	ld l, $06                                        ; $6770: $2e $06
	ret                                              ; $6772: $c9


	ld l, $06                                        ; $6773: $2e $06
	call nz, $0631                                   ; $6775: $c4 $31 $06
	ei                                               ; $6778: $fb
	ld [bc], a                                       ; $6779: $02
	ei                                               ; $677a: $fb
	db $d3                                           ; $677b: $d3
	ret                                              ; $677c: $c9


	dec [hl]                                         ; $677d: $35
	ld b, $c4                                        ; $677e: $06 $c4
	ld l, $06                                        ; $6780: $2e $06
	ret                                              ; $6782: $c9


	cpl                                              ; $6783: $2f
	ld b, $c4                                        ; $6784: $06 $c4
	dec [hl]                                         ; $6786: $35
	ld b, $c9                                        ; $6787: $06 $c9
	ld sp, $c406                                     ; $6789: $31 $06 $c4
	cpl                                              ; $678c: $2f
	ld b, $c9                                        ; $678d: $06 $c9
	cpl                                              ; $678f: $2f
	ld b, $c4                                        ; $6790: $06 $c4
	ld sp, $fb06                                     ; $6792: $31 $06 $fb
	ld [bc], a                                       ; $6795: $02
	ei                                               ; $6796: $fb
	jp nc, $36c9                                     ; $6797: $d2 $c9 $36

	ld b, $c4                                        ; $679a: $06 $c4
	cpl                                              ; $679c: $2f
	ld b, $c9                                        ; $679d: $06 $c9
	ld l, $06                                        ; $679f: $2e $06
	call nz, $0636                                   ; $67a1: $c4 $36 $06
	ret                                              ; $67a4: $c9


	ld sp, $c406                                     ; $67a5: $31 $06 $c4
	ld l, $06                                        ; $67a8: $2e $06
	ret                                              ; $67aa: $c9


	ld l, $06                                        ; $67ab: $2e $06
	call nz, $0631                                   ; $67ad: $c4 $31 $06
	ei                                               ; $67b0: $fb
	ld [bc], a                                       ; $67b1: $02
	ei                                               ; $67b2: $fb
	db $d3                                           ; $67b3: $d3
	ret                                              ; $67b4: $c9


	dec [hl]                                         ; $67b5: $35
	ld b, $c4                                        ; $67b6: $06 $c4
	ld l, $06                                        ; $67b8: $2e $06
	ret                                              ; $67ba: $c9


	inc l                                            ; $67bb: $2c
	ld b, $c4                                        ; $67bc: $06 $c4
	dec [hl]                                         ; $67be: $35
	ld b, $c9                                        ; $67bf: $06 $c9
	ld sp, $c406                                     ; $67c1: $31 $06 $c4
	inc l                                            ; $67c4: $2c
	ld b, $c9                                        ; $67c5: $06 $c9
	inc l                                            ; $67c7: $2c
	ld b, $c4                                        ; $67c8: $06 $c4
	ld sp, $fb06                                     ; $67ca: $31 $06 $fb
	ld [bc], a                                       ; $67cd: $02
	db $fd                                           ; $67ce: $fd
	ret nc                                           ; $67cf: $d0

	ld [hl], e                                       ; $67d0: $73
	cp $cb                                           ; $67d1: $fe $cb
	pop de                                           ; $67d3: $d1
	sub c                                            ; $67d4: $91
	ld h, l                                          ; $67d5: $65
	db $fd                                           ; $67d6: $fd
	ld sp, $c968                                     ; $67d7: $31 $68 $c9
	add hl, hl                                       ; $67da: $29
	ld [de], a                                       ; $67db: $12
	call nz, $0629                                   ; $67dc: $c4 $29 $06
	ret z                                            ; $67df: $c8

	daa                                              ; $67e0: $27
	ld a, [bc]                                       ; $67e1: $0a
	nop                                              ; $67e2: $00
	ld [bc], a                                       ; $67e3: $02
	daa                                              ; $67e4: $27
	jr z, @-$3c                                      ; $67e5: $28 $c2

	daa                                              ; $67e7: $27
	inc d                                            ; $67e8: $14
	nop                                              ; $67e9: $00
	inc c                                            ; $67ea: $0c
	ret z                                            ; $67eb: $c8

	daa                                              ; $67ec: $27
	ld [de], a                                       ; $67ed: $12
	jp nz, $0627                                     ; $67ee: $c2 $27 $06

	ret z                                            ; $67f1: $c8

	daa                                              ; $67f2: $27
	ld b, $c2                                        ; $67f3: $06 $c2
	daa                                              ; $67f5: $27
	ld b, $c8                                        ; $67f6: $06 $c8
	add hl, hl                                       ; $67f8: $29
	ld b, $c2                                        ; $67f9: $06 $c2
	add hl, hl                                       ; $67fb: $29
	ld b, $c6                                        ; $67fc: $06 $c6
	dec h                                            ; $67fe: $25
	ld b, $c2                                        ; $67ff: $06 $c2
	dec h                                            ; $6801: $25
	ld b, $c8                                        ; $6802: $06 $c8
	daa                                              ; $6804: $27
	ld b, $c2                                        ; $6805: $06 $c2
	daa                                              ; $6807: $27
	ld b, $c7                                        ; $6808: $06 $c7
	inc h                                            ; $680a: $24
	ld b, $c2                                        ; $680b: $06 $c2
	inc h                                            ; $680d: $24
	ld b, $fd                                        ; $680e: $06 $fd
	ld sp, $c968                                     ; $6810: $31 $68 $c9
	ld a, [hl+]                                      ; $6813: $2a
	inc c                                            ; $6814: $0c
	call nz, $0c2a                                   ; $6815: $c4 $2a $0c
	ret                                              ; $6818: $c9


	add hl, hl                                       ; $6819: $29
	inc c                                            ; $681a: $0c
	ret z                                            ; $681b: $c8

	daa                                              ; $681c: $27
	inc c                                            ; $681d: $0c
	jp nz, $0c27                                     ; $681e: $c2 $27 $0c

	ret                                              ; $6821: $c9


	inc h                                            ; $6822: $24
	inc c                                            ; $6823: $0c
	rst JumpTable                                          ; $6824: $c7
	daa                                              ; $6825: $27
	inc c                                            ; $6826: $0c
	ret z                                            ; $6827: $c8

	dec h                                            ; $6828: $25
	inc c                                            ; $6829: $0c
	jp nz, $1825                                     ; $682a: $c2 $25 $18

	nop                                              ; $682d: $00
	ld c, b                                          ; $682e: $48
	cp $ff                                           ; $682f: $fe $ff
	pop de                                           ; $6831: $d1
	call z, $1820                                    ; $6832: $cc $20 $18
	call nz, $0c20                                   ; $6835: $c4 $20 $0c

jr_035_6838:
	ret                                              ; $6838: $c9


	dec h                                            ; $6839: $25
	ld b, $c2                                        ; $683a: $06 $c2
	dec h                                            ; $683c: $25
	ld b, $c9                                        ; $683d: $06 $c9
	dec h                                            ; $683f: $25
	inc h                                            ; $6840: $24
	jp nz, $0c25                                     ; $6841: $c2 $25 $0c

	jp z, $1027                                      ; $6844: $ca $27 $10

	jp $0827                                         ; $6847: $c3 $27 $08


	ret                                              ; $684a: $c9


	dec h                                            ; $684b: $25
	inc c                                            ; $684c: $0c

jr_035_684d:
	inc h                                            ; $684d: $24
	inc c                                            ; $684e: $0c
	call nz, $0c24                                   ; $684f: $c4 $24 $0c
	jp z, $0c25                                      ; $6852: $ca $25 $0c

	call nz, $0c25                                   ; $6855: $c4 $25 $0c
	jp z, $177e                                      ; $6858: $ca $7e $17

	nop                                              ; $685b: $00
	xor e                                            ; $685c: $ab
	inc l                                            ; $685d: $2c
	inc c                                            ; $685e: $0c
	ret z                                            ; $685f: $c8

	ld a, [hl]                                       ; $6860: $7e
	nop                                              ; $6861: $00
	and b                                            ; $6862: $a0
	inc l                                            ; $6863: $2c
	ld c, b                                          ; $6864: $48
	call nz, $182c                                   ; $6865: $c4 $2c $18
	ret z                                            ; $6868: $c8

	ld l, $18                                        ; $6869: $2e $18
	ret                                              ; $686b: $c9


	inc l                                            ; $686c: $2c
	jr jr_035_6838                                   ; $686d: $18 $c9

	add hl, hl                                       ; $686f: $29
	inc c                                            ; $6870: $0c
	ld a, [hl+]                                      ; $6871: $2a
	inc c                                            ; $6872: $0c
	inc l                                            ; $6873: $2c
	ld a, [bc]                                       ; $6874: $0a
	nop                                              ; $6875: $00
	ld [bc], a                                       ; $6876: $02
	inc l                                            ; $6877: $2c
	inc c                                            ; $6878: $0c
	call nz, $0c2c                                   ; $6879: $c4 $2c $0c
	ret z                                            ; $687c: $c8

	dec h                                            ; $687d: $25
	ld a, [bc]                                       ; $687e: $0a
	nop                                              ; $687f: $00
	ld [bc], a                                       ; $6880: $02
	ret z                                            ; $6881: $c8

	ld a, [hl]                                       ; $6882: $7e
	rla                                              ; $6883: $17
	nop                                              ; $6884: $00
	xor e                                            ; $6885: $ab
	dec h                                            ; $6886: $25
	jr z, jr_035_684d                                ; $6887: $28 $c4

	ld a, [hl]                                       ; $6889: $7e
	nop                                              ; $688a: $00
	and b                                            ; $688b: $a0
	dec h                                            ; $688c: $25
	inc d                                            ; $688d: $14
	ret                                              ; $688e: $c9


	inc l                                            ; $688f: $2c
	inc c                                            ; $6890: $0c
	call nz, $0c2c                                   ; $6891: $c4 $2c $0c
	ret z                                            ; $6894: $c8

	dec h                                            ; $6895: $25
	ld a, [bc]                                       ; $6896: $0a
	nop                                              ; $6897: $00
	ld [bc], a                                       ; $6898: $02
	ret z                                            ; $6899: $c8

	ld a, [hl]                                       ; $689a: $7e
	rla                                              ; $689b: $17
	nop                                              ; $689c: $00
	xor d                                            ; $689d: $aa
	dec h                                            ; $689e: $25
	inc h                                            ; $689f: $24
	ld a, [hl]                                       ; $68a0: $7e
	nop                                              ; $68a1: $00
	and b                                            ; $68a2: $a0
	call nz, $0c25                                   ; $68a3: $c4 $25 $0c
	ret                                              ; $68a6: $c9


	ld [hl+], a                                      ; $68a7: $22
	inc c                                            ; $68a8: $0c
	dec h                                            ; $68a9: $25
	inc c                                            ; $68aa: $0c
	db $fd                                           ; $68ab: $fd
	ret nc                                           ; $68ac: $d0

	ld [hl], e                                       ; $68ad: $73
	cp $c2                                           ; $68ae: $fe $c2
	pop de                                           ; $68b0: $d1
	ld a, a                                          ; $68b1: $7f
	jr jr_035_6919                                   ; $68b2: $18 $65

	db $fd                                           ; $68b4: $fd
	rst $38                                          ; $68b5: $ff
	ld l, b                                          ; $68b6: $68
	add $0f                                          ; $68b7: $c6 $0f
	inc c                                            ; $68b9: $0c
	nop                                              ; $68ba: $00
	jr nc, @+$81                                     ; $68bb: $30 $7f

	inc e                                            ; $68bd: $1c
	jp nz, $0c11                                     ; $68be: $c2 $11 $0c

	ld a, a                                          ; $68c1: $7f
	ld e, $12                                        ; $68c2: $1e $12
	inc c                                            ; $68c4: $0c
	inc d                                            ; $68c5: $14
	inc c                                            ; $68c6: $0c
	nop                                              ; $68c7: $00
	inc c                                            ; $68c8: $0c
	ld a, a                                          ; $68c9: $7f
	jr jr_035_694a                                   ; $68ca: $18 $7e

	dec e                                            ; $68cc: $1d
	nop                                              ; $68cd: $00
	and c                                            ; $68ce: $a1
	ld [$7e16], sp                                   ; $68cf: $08 $16 $7e
	nop                                              ; $68d2: $00
	and b                                            ; $68d3: $a0
	nop                                              ; $68d4: $00
	ld [bc], a                                       ; $68d5: $02
	ld [$0a0c], sp                                   ; $68d6: $08 $0c $0a
	inc c                                            ; $68d9: $0c
	ld b, $0c                                        ; $68da: $06 $0c

jr_035_68dc:
	rrca                                             ; $68dc: $0f
	jr jr_035_68dc                                   ; $68dd: $18 $fd

	rst $38                                          ; $68df: $ff
	ld l, b                                          ; $68e0: $68
	jp nz, $0c0f                                     ; $68e1: $c2 $0f $0c

	add $0f                                          ; $68e4: $c6 $0f
	ld [de], a                                       ; $68e6: $12
	nop                                              ; $68e7: $00
	ld b, $7f                                        ; $68e8: $06 $7f
	inc e                                            ; $68ea: $1c
	jp nz, $0c14                                     ; $68eb: $c2 $14 $0c

	add $14                                          ; $68ee: $c6 $14
	ld [de], a                                       ; $68f0: $12
	nop                                              ; $68f1: $00
	ld [de], a                                       ; $68f2: $12
	ld a, a                                          ; $68f3: $7f
	jr @-$3c                                         ; $68f4: $18 $c2

	dec c                                            ; $68f6: $0d
	inc c                                            ; $68f7: $0c
	ret nz                                           ; $68f8: $c0

	dec c                                            ; $68f9: $0d
	inc c                                            ; $68fa: $0c
	nop                                              ; $68fb: $00
	ld d, h                                          ; $68fc: $54
	cp $ff                                           ; $68fd: $fe $ff
	dec c                                            ; $68ff: $0d
	inc c                                            ; $6900: $0c
	pop de                                           ; $6901: $d1
	add $0d                                          ; $6902: $c6 $0d
	inc c                                            ; $6904: $0c
	nop                                              ; $6905: $00
	inc h                                            ; $6906: $24
	jp nz, $0c08                                     ; $6907: $c2 $08 $0c

	dec c                                            ; $690a: $0d
	inc c                                            ; $690b: $0c
	ld [$c20c], sp                                   ; $690c: $08 $0c $c2
	add hl, bc                                       ; $690f: $09

jr_035_6910:
	inc c                                            ; $6910: $0c
	add $09                                          ; $6911: $c6 $09
	inc c                                            ; $6913: $0c
	nop                                              ; $6914: $00
	inc h                                            ; $6915: $24
	jp nz, $060d                                     ; $6916: $c2 $0d $06

jr_035_6919:
	nop                                              ; $6919: $00
	ld b, $09                                        ; $691a: $06 $09
	jr jr_035_699c                                   ; $691c: $18 $7e

	nop                                              ; $691e: $00
	and b                                            ; $691f: $a0

jr_035_6920:
	jp nz, $0c0a                                     ; $6920: $c2 $0a $0c

	add $0a                                          ; $6923: $c6 $0a
	inc c                                            ; $6925: $0c
	nop                                              ; $6926: $00
	inc h                                            ; $6927: $24
	jp nz, $0c0a                                     ; $6928: $c2 $0a $0c

	dec c                                            ; $692b: $0d
	inc c                                            ; $692c: $0c
	ld a, [bc]                                       ; $692d: $0a
	inc c                                            ; $692e: $0c
	jp nz, $0c0b                                     ; $692f: $c2 $0b $0c

	add $0b                                          ; $6932: $c6 $0b
	inc c                                            ; $6934: $0c
	nop                                              ; $6935: $00
	inc h                                            ; $6936: $24
	jp nz, $060d                                     ; $6937: $c2 $0d $06

	nop                                              ; $693a: $00
	ld b, $0b                                        ; $693b: $06 $0b
	jr jr_035_69bd                                   ; $693d: $18 $7e

	nop                                              ; $693f: $00
	and b                                            ; $6940: $a0
	jp nz, $1e7f                                     ; $6941: $c2 $7f $1e

	ld [de], a                                       ; $6944: $12
	inc c                                            ; $6945: $0c
	add $12                                          ; $6946: $c6 $12
	inc c                                            ; $6948: $0c
	nop                                              ; $6949: $00

jr_035_694a:
	inc h                                            ; $694a: $24
	ld a, a                                          ; $694b: $7f
	jr jr_035_6910                                   ; $694c: $18 $c2

	dec c                                            ; $694e: $0d
	inc c                                            ; $694f: $0c
	rrca                                             ; $6950: $0f

jr_035_6951:
	inc c                                            ; $6951: $0c
	ld a, a                                          ; $6952: $7f
	inc e                                            ; $6953: $1c
	ld de, $c60c                                     ; $6954: $11 $0c $c6
	ld de, $000c                                     ; $6957: $11 $0c $00
	jr nc, @+$81                                     ; $695a: $30 $7f

	jr jr_035_6920                                   ; $695c: $18 $c2

	dec c                                            ; $695e: $0d
	inc c                                            ; $695f: $0c
	ld c, $0c                                        ; $6960: $0e $0c
	rrca                                             ; $6962: $0f
	ld a, [bc]                                       ; $6963: $0a
	nop                                              ; $6964: $00
	ld [bc], a                                       ; $6965: $02
	db $fd                                           ; $6966: $fd
	ret nc                                           ; $6967: $d0

	ld [hl], e                                       ; $6968: $73
	cp $fb                                           ; $6969: $fe $fb
	db $fd                                           ; $696b: $fd
	and c                                            ; $696c: $a1
	ld l, c                                          ; $696d: $69
	ei                                               ; $696e: $fb
	rlca                                             ; $696f: $07
	cp [hl]                                          ; $6970: $be
	inc c                                            ; $6971: $0c
	jr nz, jr_035_6993                               ; $6972: $20 $1f

	jr nz, @+$21                                     ; $6974: $20 $1f

	cp [hl]                                          ; $6976: $be
	cp [hl]                                          ; $6977: $be
	ld b, $20                                        ; $6978: $06 $20
	jr nz, jr_035_699c                               ; $697a: $20 $20

	nop                                              ; $697c: $00
	jr nz, jr_035_697f                               ; $697d: $20 $00

jr_035_697f:
	jr nz, jr_035_69a1                               ; $697f: $20 $20

	cp [hl]                                          ; $6981: $be
	db $fc                                           ; $6982: $fc
	db $fd                                           ; $6983: $fd
	and c                                            ; $6984: $a1
	ld l, c                                          ; $6985: $69
	db $fc                                           ; $6986: $fc
	ld b, $be                                        ; $6987: $06 $be
	inc c                                            ; $6989: $0c
	jr nz, jr_035_69a9                               ; $698a: $20 $1d

	dec e                                            ; $698c: $1d
	jr nz, jr_035_69ac                               ; $698d: $20 $1d

	dec e                                            ; $698f: $1d
	dec e                                            ; $6990: $1d
	jr nz, jr_035_6951                               ; $6991: $20 $be

jr_035_6993:
	nop                                              ; $6993: $00
	jr jr_035_69b3                                   ; $6994: $18 $1d

	jr jr_035_69b5                                   ; $6996: $18 $1d

	jr jr_035_69b7                                   ; $6998: $18 $1d

	ld b, $1d                                        ; $699a: $06 $1d

jr_035_699c:
	ld b, $1d                                        ; $699c: $06 $1d
	inc c                                            ; $699e: $0c
	cp $ff                                           ; $699f: $fe $ff

jr_035_69a1:
	cp [hl]                                          ; $69a1: $be
	inc c                                            ; $69a2: $0c
	dec e                                            ; $69a3: $1d
	dec hl                                           ; $69a4: $2b
	jr nz, jr_035_69c4                               ; $69a5: $20 $1d

	dec hl                                           ; $69a7: $2b
	rra                                              ; $69a8: $1f

jr_035_69a9:
	jr nz, jr_035_69ca                               ; $69a9: $20 $1f

	cp [hl]                                          ; $69ab: $be

jr_035_69ac:
	db $fd                                           ; $69ac: $fd
	or [hl]                                          ; $69ad: $b6
	ld e, d                                          ; $69ae: $5a
	or d                                             ; $69af: $b2
	ld [bc], a                                       ; $69b0: $02
	ld h, h                                          ; $69b1: $64
	rlca                                             ; $69b2: $07

jr_035_69b3:
	nop                                              ; $69b3: $00
	inc bc                                           ; $69b4: $03

jr_035_69b5:
	dec [hl]                                         ; $69b5: $35
	inc bc                                           ; $69b6: $03

jr_035_69b7:
	cp $b5                                           ; $69b7: $fe $b5
	or d                                             ; $69b9: $b2
	ld [bc], a                                       ; $69ba: $02
	ld h, h                                          ; $69bb: $64
	rlca                                             ; $69bc: $07

jr_035_69bd:
	jr c, jr_035_69c2                                ; $69bd: $38 $03

	inc a                                            ; $69bf: $3c
	ld a, [bc]                                       ; $69c0: $0a
	ret z                                            ; $69c1: $c8

jr_035_69c2:
	dec [hl]                                         ; $69c2: $35
	inc bc                                           ; $69c3: $03

jr_035_69c4:
	jr c, @+$05                                      ; $69c4: $38 $03

	inc a                                            ; $69c6: $3c
	ld a, [bc]                                       ; $69c7: $0a
	add $35                                          ; $69c8: $c6 $35

jr_035_69ca:
	inc bc                                           ; $69ca: $03
	jr c, @+$05                                      ; $69cb: $38 $03

	inc a                                            ; $69cd: $3c
	ld a, [bc]                                       ; $69ce: $0a
	jp $0335                                         ; $69cf: $c3 $35 $03


	jr c, jr_035_69d7                                ; $69d2: $38 $03

	inc a                                            ; $69d4: $3c
	ld e, [hl]                                       ; $69d5: $5e
	or c                                             ; $69d6: $b1

jr_035_69d7:
	sub c                                            ; $69d7: $91
	ld h, h                                          ; $69d8: $64
	rlca                                             ; $69d9: $07
	ld sp, $c60a                                     ; $69da: $31 $0a $c6
	ld sp, $c906                                     ; $69dd: $31 $06 $c9
	inc sp                                           ; $69e0: $33
	ld a, [bc]                                       ; $69e1: $0a
	add $33                                          ; $69e2: $c6 $33
	ld b, $c8                                        ; $69e4: $06 $c8
	dec [hl]                                         ; $69e6: $35
	add hl, bc                                       ; $69e7: $09
	add $35                                          ; $69e8: $c6 $35
	ld b, $b1                                        ; $69ea: $06 $b1
	sub c                                            ; $69ec: $91
	ld [hl-], a                                      ; $69ed: $32
	rlca                                             ; $69ee: $07
	ld [hl], $0c                                     ; $69ef: $36 $0c
	call nz, $1836                                   ; $69f1: $c4 $36 $18
	or c                                             ; $69f4: $b1
	sub c                                            ; $69f5: $91
	ld h, h                                          ; $69f6: $64
	rlca                                             ; $69f7: $07
	ld l, $09                                        ; $69f8: $2e $09
	call nz, $032e                                   ; $69fa: $c4 $2e $03
	jp z, $0c2e                                      ; $69fd: $ca $2e $0c

	push bc                                          ; $6a00: $c5
	ld l, $54                                        ; $6a01: $2e $54
	or c                                             ; $6a03: $b1
	add c                                            ; $6a04: $81
	ld [hl-], a                                      ; $6a05: $32
	rlca                                             ; $6a06: $07
	dec l                                            ; $6a07: $2d
	inc c                                            ; $6a08: $0c
	call nz, $182d                                   ; $6a09: $c4 $2d $18
	or c                                             ; $6a0c: $b1
	add c                                            ; $6a0d: $81
	ld h, h                                          ; $6a0e: $64
	inc bc                                           ; $6a0f: $03
	dec l                                            ; $6a10: $2d
	ld b, $2d                                        ; $6a11: $06 $2d
	ld b, $b1                                        ; $6a13: $06 $b1
	ld h, c                                          ; $6a15: $61
	nop                                              ; $6a16: $00
	nop                                              ; $6a17: $00
	inc l                                            ; $6a18: $2c
	inc c                                            ; $6a19: $0c
	jp $0c2c                                         ; $6a1a: $c3 $2c $0c


	jp nz, $0c2c                                     ; $6a1d: $c2 $2c $0c

	nop                                              ; $6a20: $00
	ld l, l                                          ; $6a21: $6d
	or c                                             ; $6a22: $b1
	sub c                                            ; $6a23: $91
	ld h, h                                          ; $6a24: $64
	rlca                                             ; $6a25: $07
	ld sp, $c60a                                     ; $6a26: $31 $0a $c6
	ld sp, $c906                                     ; $6a29: $31 $06 $c9
	inc sp                                           ; $6a2c: $33

jr_035_6a2d:
	ld a, [bc]                                       ; $6a2d: $0a
	add $33                                          ; $6a2e: $c6 $33
	ld b, $c8                                        ; $6a30: $06 $c8
	dec [hl]                                         ; $6a32: $35
	add hl, bc                                       ; $6a33: $09
	add $35                                          ; $6a34: $c6 $35
	ld b, $b1                                        ; $6a36: $06 $b1
	sub c                                            ; $6a38: $91
	ld [hl-], a                                      ; $6a39: $32
	rlca                                             ; $6a3a: $07
	ld [hl], $0c                                     ; $6a3b: $36 $0c
	call nz, $1836                                   ; $6a3d: $c4 $36 $18
	ret                                              ; $6a40: $c9


	ld l, $0c                                        ; $6a41: $2e $0c
	call nz, $182e                                   ; $6a43: $c4 $2e $18
	ret                                              ; $6a46: $c9


	ld a, [hl-]                                      ; $6a47: $3a
	inc c                                            ; $6a48: $0c
	call nz, $163a                                   ; $6a49: $c4 $3a $16
	or c                                             ; $6a4c: $b1
	ld [hl], d                                       ; $6a4d: $72
	jr z, @+$09                                      ; $6a4e: $28 $07

	ld [hl], $04                                     ; $6a50: $36 $04
	ld a, [hl-]                                      ; $6a52: $3a
	inc b                                            ; $6a53: $04
	dec a                                            ; $6a54: $3d
	inc b                                            ; $6a55: $04
	call nz, $037d                                   ; $6a56: $c4 $7d $03
	ld b, b                                          ; $6a59: $40
	jr nz, jr_035_6a2d                               ; $6a5a: $20 $d1

	ret                                              ; $6a5c: $c9


	ld a, l                                          ; $6a5d: $7d
	nop                                              ; $6a5e: $00
	ld [hl], $25                                     ; $6a5f: $36 $25
	dec [hl]                                         ; $6a61: $35
	add hl, bc                                       ; $6a62: $09

jr_035_6a63:
	inc sp                                           ; $6a63: $33
	ld a, [bc]                                       ; $6a64: $0a
	cp $ff                                           ; $6a65: $fe $ff
	or [hl]                                          ; $6a67: $b6
	ld e, d                                          ; $6a68: $5a
	pop de                                           ; $6a69: $d1
	ld [bc], a                                       ; $6a6a: $02
	ld h, h                                          ; $6a6b: $64
	inc bc                                           ; $6a6c: $03
	dec [hl]                                         ; $6a6d: $35
	inc bc                                           ; $6a6e: $03
	jr c, @+$05                                      ; $6a6f: $38 $03

	inc a                                            ; $6a71: $3c
	ld a, [bc]                                       ; $6a72: $0a
	cp $b1                                           ; $6a73: $fe $b1
	sub e                                            ; $6a75: $93
	ld h, h                                          ; $6a76: $64
	rlca                                             ; $6a77: $07
	dec [hl]                                         ; $6a78: $35
	inc bc                                           ; $6a79: $03
	jr c, jr_035_6a7f                                ; $6a7a: $38 $03

	inc a                                            ; $6a7c: $3c
	ld a, [bc]                                       ; $6a7d: $0a
	rst JumpTable                                          ; $6a7e: $c7

jr_035_6a7f:
	dec [hl]                                         ; $6a7f: $35
	inc bc                                           ; $6a80: $03
	jr c, @+$05                                      ; $6a81: $38 $03

	inc a                                            ; $6a83: $3c
	ld a, [bc]                                       ; $6a84: $0a
	call nz, $0335                                   ; $6a85: $c4 $35 $03
	jr c, @+$05                                      ; $6a88: $38 $03

	inc a                                            ; $6a8a: $3c
	ld a, [bc]                                       ; $6a8b: $0a
	jp nz, $0335                                     ; $6a8c: $c2 $35 $03

	jr c, jr_035_6a94                                ; $6a8f: $38 $03

	inc a                                            ; $6a91: $3c
	ld d, e                                          ; $6a92: $53
	or c                                             ; $6a93: $b1

jr_035_6a94:
	and c                                            ; $6a94: $a1
	ld h, h                                          ; $6a95: $64
	rlca                                             ; $6a96: $07
	dec [hl]                                         ; $6a97: $35
	ld a, [bc]                                       ; $6a98: $0a
	add $35                                          ; $6a99: $c6 $35
	ld b, $ca                                        ; $6a9b: $06 $ca
	ld [hl], $0a                                     ; $6a9d: $36 $0a
	push bc                                          ; $6a9f: $c5
	ld [hl], $06                                     ; $6aa0: $36 $06
	jp z, $0a38                                      ; $6aa2: $ca $38 $0a

	add $38                                          ; $6aa5: $c6 $38
	ld b, $b1                                        ; $6aa7: $06 $b1
	or c                                             ; $6aa9: $b1
	ld [hl-], a                                      ; $6aaa: $32
	rlca                                             ; $6aab: $07
	ld a, [hl-]                                      ; $6aac: $3a
	inc c                                            ; $6aad: $0c
	add $3a                                          ; $6aae: $c6 $3a
	jr jr_035_6a63                                   ; $6ab0: $18 $b1

	sub c                                            ; $6ab2: $91
	ld h, h                                          ; $6ab3: $64
	rlca                                             ; $6ab4: $07
	ld sp, $c409                                     ; $6ab5: $31 $09 $c4
	ld sp, $c903                                     ; $6ab8: $31 $03 $c9
	ld sp, $c50c                                     ; $6abb: $31 $0c $c5
	ld sp, $b154                                     ; $6abe: $31 $54 $b1
	add c                                            ; $6ac1: $81
	ld [hl-], a                                      ; $6ac2: $32
	rlca                                             ; $6ac3: $07
	inc sp                                           ; $6ac4: $33
	inc c                                            ; $6ac5: $0c
	push bc                                          ; $6ac6: $c5
	inc sp                                           ; $6ac7: $33
	dec d                                            ; $6ac8: $15
	or c                                             ; $6ac9: $b1
	sub c                                            ; $6aca: $91
	ld h, h                                          ; $6acb: $64
	inc bc                                           ; $6acc: $03
	ld sp, $3306                                     ; $6acd: $31 $06 $33
	ld b, $96                                        ; $6ad0: $06 $96
	ld h, h                                          ; $6ad2: $64
	rlca                                             ; $6ad3: $07
	dec [hl]                                         ; $6ad4: $35
	add hl, bc                                       ; $6ad5: $09
	push bc                                          ; $6ad6: $c5
	dec [hl]                                         ; $6ad7: $35
	ld b, $b1                                        ; $6ad8: $06 $b1
	ld [hl], e                                       ; $6ada: $73
	ld h, h                                          ; $6adb: $64
	inc b                                            ; $6adc: $04
	ld sp, $3306                                     ; $6add: $31 $06 $33
	ld b, $35                                        ; $6ae0: $06 $35

jr_035_6ae2:
	ld a, [bc]                                       ; $6ae2: $0a
	push bc                                          ; $6ae3: $c5
	ld sp, $3306                                     ; $6ae4: $31 $06 $33
	ld b, $35                                        ; $6ae7: $06 $35
	ld a, [bc]                                       ; $6ae9: $0a
	call nz, $0631                                   ; $6aea: $c4 $31 $06
	inc sp                                           ; $6aed: $33
	ld b, $35                                        ; $6aee: $06 $35
	ld a, [bc]                                       ; $6af0: $0a
	jp $0631                                         ; $6af1: $c3 $31 $06


	inc sp                                           ; $6af4: $33
	ld b, $35                                        ; $6af5: $06 $35
	scf                                              ; $6af7: $37
	or c                                             ; $6af8: $b1
	and c                                            ; $6af9: $a1
	ld h, h                                          ; $6afa: $64
	rlca                                             ; $6afb: $07
	dec [hl]                                         ; $6afc: $35
	ld a, [bc]                                       ; $6afd: $0a
	add $35                                          ; $6afe: $c6 $35
	ld b, $ca                                        ; $6b00: $06 $ca
	ld [hl], $0a                                     ; $6b02: $36 $0a
	push bc                                          ; $6b04: $c5
	ld [hl], $05                                     ; $6b05: $36 $05
	jp z, $0a38                                      ; $6b07: $ca $38 $0a

	add $38                                          ; $6b0a: $c6 $38
	ld b, $b1                                        ; $6b0c: $06 $b1
	or c                                             ; $6b0e: $b1
	ld [hl-], a                                      ; $6b0f: $32
	rlca                                             ; $6b10: $07
	ld a, l                                          ; $6b11: $7d
	inc b                                            ; $6b12: $04
	add hl, sp                                       ; $6b13: $39
	inc c                                            ; $6b14: $0c
	add $39                                          ; $6b15: $c6 $39
	jr jr_035_6ae2                                   ; $6b17: $18 $c9

	ld a, l                                          ; $6b19: $7d
	nop                                              ; $6b1a: $00
	ld sp, $c40c                                     ; $6b1b: $31 $0c $c4
	ld sp, $c918                                     ; $6b1e: $31 $18 $c9
	ld a, l                                          ; $6b21: $7d
	inc b                                            ; $6b22: $04
	inc a                                            ; $6b23: $3c
	ld a, [bc]                                       ; $6b24: $0a
	call nz, $0b3c                                   ; $6b25: $c4 $3c $0b
	or c                                             ; $6b28: $b1
	ld [hl], c                                       ; $6b29: $71
	ld h, h                                          ; $6b2a: $64
	dec b                                            ; $6b2b: $05
	ld a, l                                          ; $6b2c: $7d
	nop                                              ; $6b2d: $00
	ld [hl], $04                                     ; $6b2e: $36 $04
	ld a, [hl-]                                      ; $6b30: $3a
	inc b                                            ; $6b31: $04
	dec a                                            ; $6b32: $3d
	inc b                                            ; $6b33: $04
	push bc                                          ; $6b34: $c5
	ld a, l                                          ; $6b35: $7d
	inc bc                                           ; $6b36: $03
	ld b, b                                          ; $6b37: $40
	ld e, $cd                                        ; $6b38: $1e $cd
	ld a, l                                          ; $6b3a: $7d
	nop                                              ; $6b3b: $00
	jr c, jr_035_6b4c                                ; $6b3c: $38 $0e

	ld a, [hl-]                                      ; $6b3e: $3a
	dec h                                            ; $6b3f: $25
	jr c, @+$0a                                      ; $6b40: $38 $08

	ld [hl], $09                                     ; $6b42: $36 $09
	sub [hl]                                         ; $6b44: $96
	ld h, h                                          ; $6b45: $64
	rlca                                             ; $6b46: $07
	dec [hl]                                         ; $6b47: $35
	ld a, [bc]                                       ; $6b48: $0a
	cp $ff                                           ; $6b49: $fe $ff
	or h                                             ; $6b4b: $b4

jr_035_6b4c:
	ld e, d                                          ; $6b4c: $5a
	pop af                                           ; $6b4d: $f1
	dec hl                                           ; $6b4e: $2b
	nop                                              ; $6b4f: $00
	ld b, $fe                                        ; $6b50: $06 $fe
	ei                                               ; $6b52: $fb
	jp nz, $063c                                     ; $6b53: $c2 $3c $06

	call nz, $063c                                   ; $6b56: $c4 $3c $06
	jp nz, $0638                                     ; $6b59: $c2 $38 $06

	call nz, $0638                                   ; $6b5c: $c4 $38 $06
	jp nz, $0635                                     ; $6b5f: $c2 $35 $06

	call nz, $0635                                   ; $6b62: $c4 $35 $06
	jp nz, $0631                                     ; $6b65: $c2 $31 $06

	call nz, $0631                                   ; $6b68: $c4 $31 $06
	jp nz, $0630                                     ; $6b6b: $c2 $30 $06

	call nz, $0630                                   ; $6b6e: $c4 $30 $06
	jp nz, $0631                                     ; $6b71: $c2 $31 $06

	call nz, $0631                                   ; $6b74: $c4 $31 $06
	jp nz, $0635                                     ; $6b77: $c2 $35 $06

	call nz, $0635                                   ; $6b7a: $c4 $35 $06
	jp nz, $0638                                     ; $6b7d: $c2 $38 $06

	call nz, $0638                                   ; $6b80: $c4 $38 $06
	ei                                               ; $6b83: $fb
	ld [bc], a                                       ; $6b84: $02
	db $fd                                           ; $6b85: $fd
	rla                                              ; $6b86: $17
	ld l, h                                          ; $6b87: $6c
	jp nz, $063a                                     ; $6b88: $c2 $3a $06

	call nz, $063a                                   ; $6b8b: $c4 $3a $06
	db $fd                                           ; $6b8e: $fd
	rla                                              ; $6b8f: $17
	ld l, h                                          ; $6b90: $6c
	jp nz, $0639                                     ; $6b91: $c2 $39 $06

	call nz, $0639                                   ; $6b94: $c4 $39 $06
	ei                                               ; $6b97: $fb
	jp nz, $063f                                     ; $6b98: $c2 $3f $06

	call nz, $063f                                   ; $6b9b: $c4 $3f $06
	jp nz, $063c                                     ; $6b9e: $c2 $3c $06

	call nz, $063c                                   ; $6ba1: $c4 $3c $06
	jp nz, $0638                                     ; $6ba4: $c2 $38 $06

	call nz, $0638                                   ; $6ba7: $c4 $38 $06
	jp nz, $0635                                     ; $6baa: $c2 $35 $06

	call nz, $0635                                   ; $6bad: $c4 $35 $06
	jp nz, $0633                                     ; $6bb0: $c2 $33 $06

	call nz, $0633                                   ; $6bb3: $c4 $33 $06
	jp nz, $0635                                     ; $6bb6: $c2 $35 $06

	call nz, $0635                                   ; $6bb9: $c4 $35 $06
	jp nz, $0638                                     ; $6bbc: $c2 $38 $06

	call nz, $0638                                   ; $6bbf: $c4 $38 $06
	jp nz, $063c                                     ; $6bc2: $c2 $3c $06

	call nz, $063c                                   ; $6bc5: $c4 $3c $06
	ei                                               ; $6bc8: $fb
	ld [bc], a                                       ; $6bc9: $02
	jp nz, $0641                                     ; $6bca: $c2 $41 $06

	call nz, $0641                                   ; $6bcd: $c4 $41 $06
	jp nz, $063d                                     ; $6bd0: $c2 $3d $06

	call nz, $063d                                   ; $6bd3: $c4 $3d $06
	jp nz, $063a                                     ; $6bd6: $c2 $3a $06

	call nz, $063a                                   ; $6bd9: $c4 $3a $06
	jp nz, $0636                                     ; $6bdc: $c2 $36 $06

	call nz, $0636                                   ; $6bdf: $c4 $36 $06
	jp nz, $0635                                     ; $6be2: $c2 $35 $06

	call nz, $0635                                   ; $6be5: $c4 $35 $06
	jp nz, $0636                                     ; $6be8: $c2 $36 $06

	call nz, $0636                                   ; $6beb: $c4 $36 $06
	jp nz, $063a                                     ; $6bee: $c2 $3a $06

	call nz, $063a                                   ; $6bf1: $c4 $3a $06
	jp nz, $063d                                     ; $6bf4: $c2 $3d $06

	call nz, $063d                                   ; $6bf7: $c4 $3d $06
	jp nz, $2036                                     ; $6bfa: $c2 $36 $20

	call nz, $0e36                                   ; $6bfd: $c4 $36 $0e
	add $36                                          ; $6c00: $c6 $36
	ld [$33c2], sp                                   ; $6c02: $08 $c2 $33
	ld de, $33c4                                     ; $6c05: $11 $c4 $33
	ld b, $c6                                        ; $6c08: $06 $c6
	inc sp                                           ; $6c0a: $33
	dec b                                            ; $6c0b: $05
	jp nz, $1238                                     ; $6c0c: $c2 $38 $12

	call nz, $0638                                   ; $6c0f: $c4 $38 $06
	add $38                                          ; $6c12: $c6 $38
	inc b                                            ; $6c14: $04
	cp $ff                                           ; $6c15: $fe $ff
	jp nz, $063d                                     ; $6c17: $c2 $3d $06

	call nz, $063d                                   ; $6c1a: $c4 $3d $06
	jp nz, $063a                                     ; $6c1d: $c2 $3a $06

	call nz, $063a                                   ; $6c20: $c4 $3a $06
	jp nz, $0636                                     ; $6c23: $c2 $36 $06

	call nz, $0636                                   ; $6c26: $c4 $36 $06
	jp nz, $0633                                     ; $6c29: $c2 $33 $06

	call nz, $0633                                   ; $6c2c: $c4 $33 $06
	jp nz, $0631                                     ; $6c2f: $c2 $31 $06

	call nz, $0631                                   ; $6c32: $c4 $31 $06
	jp nz, $0633                                     ; $6c35: $c2 $33 $06

	call nz, $0633                                   ; $6c38: $c4 $33 $06
	jp nz, $0636                                     ; $6c3b: $c2 $36 $06

	call nz, $0636                                   ; $6c3e: $c4 $36 $06
	db $fd                                           ; $6c41: $fd
	or h                                             ; $6c42: $b4
	ld l, [hl]                                       ; $6c43: $6e
	and c                                            ; $6c44: $a1
	ld bc, $0625                                     ; $6c45: $01 $25 $06
	call nz, $0c25                                   ; $6c48: $c4 $25 $0c
	pop bc                                           ; $6c4b: $c1
	dec h                                            ; $6c4c: $25
	ld [de], a                                       ; $6c4d: $12
	ld a, h                                          ; $6c4e: $7c
	ld a, l                                          ; $6c4f: $7d
	dec b                                            ; $6c50: $05
	sub a                                            ; $6c51: $97
	ld l, c                                          ; $6c52: $69
	add hl, hl                                       ; $6c53: $29
	ld a, [bc]                                       ; $6c54: $0a
	sub a                                            ; $6c55: $97
	nop                                              ; $6c56: $00
	call nz, $0229                                   ; $6c57: $c4 $29 $02
	sub a                                            ; $6c5a: $97
	ld l, c                                          ; $6c5b: $69
	ld a, [hl+]                                      ; $6c5c: $2a
	ld a, [bc]                                       ; $6c5d: $0a
	sub a                                            ; $6c5e: $97
	nop                                              ; $6c5f: $00
	call nz, $022a                                   ; $6c60: $c4 $2a $02
	sub a                                            ; $6c63: $97
	ld l, c                                          ; $6c64: $69
	add hl, hl                                       ; $6c65: $29
	ld a, [bc]                                       ; $6c66: $0a
	sub a                                            ; $6c67: $97
	nop                                              ; $6c68: $00
	call nz, $0229                                   ; $6c69: $c4 $29 $02
	sub a                                            ; $6c6c: $97
	ld l, c                                          ; $6c6d: $69
	daa                                              ; $6c6e: $27
	ld a, [bc]                                       ; $6c6f: $0a
	sub a                                            ; $6c70: $97
	nop                                              ; $6c71: $00
	call nz, $0227                                   ; $6c72: $c4 $27 $02
	sub a                                            ; $6c75: $97
	ld l, c                                          ; $6c76: $69
	dec h                                            ; $6c77: $25
	ld a, [bc]                                       ; $6c78: $0a
	sub a                                            ; $6c79: $97
	nop                                              ; $6c7a: $00
	call nz, $0225                                   ; $6c7b: $c4 $25 $02
	ld a, l                                          ; $6c7e: $7d
	nop                                              ; $6c7f: $00
	sub a                                            ; $6c80: $97
	ld l, h                                          ; $6c81: $6c
	inc h                                            ; $6c82: $24
	jr @-$67                                         ; $6c83: $18 $97

	nop                                              ; $6c85: $00
	ret z                                            ; $6c86: $c8

	add hl, hl                                       ; $6c87: $29
	ld b, $97                                        ; $6c88: $06 $97
	nop                                              ; $6c8a: $00
	call nz, $1229                                   ; $6c8b: $c4 $29 $12
	sub a                                            ; $6c8e: $97
	ld a, h                                          ; $6c8f: $7c
	dec e                                            ; $6c90: $1d
	jr nc, jr_035_6d10                               ; $6c91: $30 $7d

	nop                                              ; $6c93: $00
	ld [hl], b                                       ; $6c94: $70
	cp $d1                                           ; $6c95: $fe $d1
	sub c                                            ; $6c97: $91
	db $fd                                           ; $6c98: $fd
	ld l, d                                          ; $6c99: $6a
	ld l, l                                          ; $6c9a: $6d
	ld a, l                                          ; $6c9b: $7d
	ld [bc], a                                       ; $6c9c: $02
	sub a                                            ; $6c9d: $97
	ld l, c                                          ; $6c9e: $69
	pop de                                           ; $6c9f: $d1
	ld de, $240c                                     ; $6ca0: $11 $0c $24
	ld b, $97                                        ; $6ca3: $06 $97
	nop                                              ; $6ca5: $00
	call nz, $0624                                   ; $6ca6: $c4 $24 $06
	sub a                                            ; $6ca9: $97
	ld l, c                                          ; $6caa: $69
	inc c                                            ; $6cab: $0c
	inc c                                            ; $6cac: $0c
	inc h                                            ; $6cad: $24
	ld b, $97                                        ; $6cae: $06 $97
	nop                                              ; $6cb0: $00
	call nz, $0624                                   ; $6cb1: $c4 $24 $06
	sub a                                            ; $6cb4: $97
	ld l, c                                          ; $6cb5: $69
	ld de, $1d0c                                     ; $6cb6: $11 $0c $1d
	inc bc                                           ; $6cb9: $03
	sub a                                            ; $6cba: $97
	nop                                              ; $6cbb: $00
	call nz, $031d                                   ; $6cbc: $c4 $1d $03
	call z, $031d                                    ; $6cbf: $cc $1d $03
	sub a                                            ; $6cc2: $97
	nop                                              ; $6cc3: $00
	call nz, $031d                                   ; $6cc4: $c4 $1d $03
	sub a                                            ; $6cc7: $97
	ld l, c                                          ; $6cc8: $69
	inc c                                            ; $6cc9: $0c
	inc c                                            ; $6cca: $0c
	dec e                                            ; $6ccb: $1d
	ld b, $97                                        ; $6ccc: $06 $97
	nop                                              ; $6cce: $00
	call nz, $061d                                   ; $6ccf: $c4 $1d $06
	sub a                                            ; $6cd2: $97
	ld l, c                                          ; $6cd3: $69
	ld a, [bc]                                       ; $6cd4: $0a
	inc c                                            ; $6cd5: $0c
	add hl, de                                       ; $6cd6: $19
	ld b, $97                                        ; $6cd7: $06 $97
	nop                                              ; $6cd9: $00
	call nz, $0619                                   ; $6cda: $c4 $19 $06
	sub a                                            ; $6cdd: $97
	ld l, c                                          ; $6cde: $69
	dec b                                            ; $6cdf: $05
	inc c                                            ; $6ce0: $0c
	add hl, de                                       ; $6ce1: $19
	ld b, $97                                        ; $6ce2: $06 $97
	nop                                              ; $6ce4: $00
	call nz, $0619                                   ; $6ce5: $c4 $19 $06
	sub a                                            ; $6ce8: $97
	ld l, c                                          ; $6ce9: $69
	ld a, [bc]                                       ; $6cea: $0a
	inc c                                            ; $6ceb: $0c
	sub a                                            ; $6cec: $97
	adc c                                            ; $6ced: $89
	add hl, de                                       ; $6cee: $19
	inc c                                            ; $6cef: $0c
	sub a                                            ; $6cf0: $97
	nop                                              ; $6cf1: $00
	call nz, $0c19                                   ; $6cf2: $c4 $19 $0c
	call z, $0619                                    ; $6cf5: $cc $19 $06
	sub a                                            ; $6cf8: $97
	nop                                              ; $6cf9: $00
	call nz, $0619                                   ; $6cfa: $c4 $19 $06
	pop de                                           ; $6cfd: $d1
	sub c                                            ; $6cfe: $91
	call z, $027d                                    ; $6cff: $cc $7d $02
	db $fd                                           ; $6d02: $fd
	sub $6d                                          ; $6d03: $d6 $6d
	sub a                                            ; $6d05: $97
	ld l, c                                          ; $6d06: $69
	ld a, [bc]                                       ; $6d07: $0a
	inc c                                            ; $6d08: $0c
	ld d, $06                                        ; $6d09: $16 $06
	sub a                                            ; $6d0b: $97
	nop                                              ; $6d0c: $00
	call nz, $0616                                   ; $6d0d: $c4 $16 $06

jr_035_6d10:
	sub a                                            ; $6d10: $97
	ld l, c                                          ; $6d11: $69
	inc c                                            ; $6d12: $0c
	inc c                                            ; $6d13: $0c
	jr jr_035_6d1c                                   ; $6d14: $18 $06

	sub a                                            ; $6d16: $97
	nop                                              ; $6d17: $00
	call nz, $0618                                   ; $6d18: $c4 $18 $06
	sub a                                            ; $6d1b: $97

jr_035_6d1c:
	ld l, c                                          ; $6d1c: $69
	dec c                                            ; $6d1d: $0d
	inc c                                            ; $6d1e: $0c
	add hl, de                                       ; $6d1f: $19
	inc bc                                           ; $6d20: $03
	sub a                                            ; $6d21: $97
	nop                                              ; $6d22: $00
	call nz, $0319                                   ; $6d23: $c4 $19 $03
	call z, $0319                                    ; $6d26: $cc $19 $03
	sub a                                            ; $6d29: $97
	nop                                              ; $6d2a: $00
	call nz, $0319                                   ; $6d2b: $c4 $19 $03
	sub a                                            ; $6d2e: $97
	ld l, c                                          ; $6d2f: $69
	ld c, $0c                                        ; $6d30: $0e $0c
	ld a, [de]                                       ; $6d32: $1a
	inc bc                                           ; $6d33: $03
	sub a                                            ; $6d34: $97
	nop                                              ; $6d35: $00
	call nz, $031a                                   ; $6d36: $c4 $1a $03
	call z, $031a                                    ; $6d39: $cc $1a $03
	sub a                                            ; $6d3c: $97
	nop                                              ; $6d3d: $00
	call nz, $031a                                   ; $6d3e: $c4 $1a $03
	pop de                                           ; $6d41: $d1
	sub c                                            ; $6d42: $91
	call z, $007d                                    ; $6d43: $cc $7d $00
	db $fd                                           ; $6d46: $fd
	sub $6d                                          ; $6d47: $d6 $6d
	ret nc                                           ; $6d49: $d0

	ld h, h                                          ; $6d4a: $64
	sub a                                            ; $6d4b: $97
	ld l, c                                          ; $6d4c: $69
	ld d, $0c                                        ; $6d4d: $16 $0c
	sub a                                            ; $6d4f: $97
	nop                                              ; $6d50: $00
	call nz, $0c16                                   ; $6d51: $c4 $16 $0c
	sub a                                            ; $6d54: $97
	ld l, c                                          ; $6d55: $69
	ld a, [bc]                                       ; $6d56: $0a
	inc c                                            ; $6d57: $0c
	sub a                                            ; $6d58: $97
	nop                                              ; $6d59: $00
	call nz, $0c0a                                   ; $6d5a: $c4 $0a $0c
	sub a                                            ; $6d5d: $97
	ld l, c                                          ; $6d5e: $69
	ld d, $18                                        ; $6d5f: $16 $18
	sub a                                            ; $6d61: $97
	nop                                              ; $6d62: $00
	call nz, $1816                                   ; $6d63: $c4 $16 $18
	ret nc                                           ; $6d66: $d0

	ld l, [hl]                                       ; $6d67: $6e
	cp $ff                                           ; $6d68: $fe $ff
	ld a, l                                          ; $6d6a: $7d
	ld [bc], a                                       ; $6d6b: $02
	sub a                                            ; $6d6c: $97
	ld l, c                                          ; $6d6d: $69
	pop de                                           ; $6d6e: $d1
	ld de, $240c                                     ; $6d6f: $11 $0c $24
	ld b, $97                                        ; $6d72: $06 $97
	nop                                              ; $6d74: $00
	call nz, $0624                                   ; $6d75: $c4 $24 $06
	sub a                                            ; $6d78: $97
	ld l, c                                          ; $6d79: $69
	inc c                                            ; $6d7a: $0c
	inc c                                            ; $6d7b: $0c
	inc h                                            ; $6d7c: $24
	ld b, $97                                        ; $6d7d: $06 $97
	nop                                              ; $6d7f: $00
	call nz, $0624                                   ; $6d80: $c4 $24 $06
	sub a                                            ; $6d83: $97
	ld l, c                                          ; $6d84: $69
	ld de, $1d0c                                     ; $6d85: $11 $0c $1d
	inc bc                                           ; $6d88: $03
	sub a                                            ; $6d89: $97
	nop                                              ; $6d8a: $00
	call nz, $031d                                   ; $6d8b: $c4 $1d $03
	call z, $031d                                    ; $6d8e: $cc $1d $03
	sub a                                            ; $6d91: $97
	nop                                              ; $6d92: $00
	call nz, $031d                                   ; $6d93: $c4 $1d $03
	sub a                                            ; $6d96: $97
	ld l, c                                          ; $6d97: $69
	inc c                                            ; $6d98: $0c
	inc c                                            ; $6d99: $0c
	dec e                                            ; $6d9a: $1d
	ld b, $97                                        ; $6d9b: $06 $97
	nop                                              ; $6d9d: $00
	call nz, $061d                                   ; $6d9e: $c4 $1d $06
	sub a                                            ; $6da1: $97
	ld l, c                                          ; $6da2: $69
	ld a, [bc]                                       ; $6da3: $0a
	inc c                                            ; $6da4: $0c
	add hl, de                                       ; $6da5: $19
	ld b, $97                                        ; $6da6: $06 $97
	nop                                              ; $6da8: $00
	call nz, $0619                                   ; $6da9: $c4 $19 $06
	sub a                                            ; $6dac: $97
	ld l, c                                          ; $6dad: $69
	dec b                                            ; $6dae: $05
	inc c                                            ; $6daf: $0c
	add hl, de                                       ; $6db0: $19
	ld b, $97                                        ; $6db1: $06 $97
	nop                                              ; $6db3: $00
	call nz, $0619                                   ; $6db4: $c4 $19 $06
	sub a                                            ; $6db7: $97
	ld l, c                                          ; $6db8: $69
	ld a, [bc]                                       ; $6db9: $0a
	inc c                                            ; $6dba: $0c
	ld [hl+], a                                      ; $6dbb: $22
	inc bc                                           ; $6dbc: $03
	sub a                                            ; $6dbd: $97
	nop                                              ; $6dbe: $00
	call nz, $0322                                   ; $6dbf: $c4 $22 $03
	call z, $0322                                    ; $6dc2: $cc $22 $03
	sub a                                            ; $6dc5: $97
	nop                                              ; $6dc6: $00
	call nz, $0322                                   ; $6dc7: $c4 $22 $03
	sub a                                            ; $6dca: $97
	ld l, c                                          ; $6dcb: $69
	dec b                                            ; $6dcc: $05
	inc c                                            ; $6dcd: $0c
	ld [hl+], a                                      ; $6dce: $22
	ld b, $97                                        ; $6dcf: $06 $97
	nop                                              ; $6dd1: $00
	call nz, $0622                                   ; $6dd2: $c4 $22 $06
	db $fd                                           ; $6dd5: $fd
	pop de                                           ; $6dd6: $d1
	sub c                                            ; $6dd7: $91
	sub a                                            ; $6dd8: $97
	ld l, c                                          ; $6dd9: $69
	rrca                                             ; $6dda: $0f
	inc c                                            ; $6ddb: $0c
	dec de                                           ; $6ddc: $1b
	ld d, $c4                                        ; $6ddd: $16 $c4
	sub a                                            ; $6ddf: $97
	nop                                              ; $6de0: $00
	dec de                                           ; $6de1: $1b
	ld [bc], a                                       ; $6de2: $02
	sub a                                            ; $6de3: $97
	ld l, c                                          ; $6de4: $69
	dec de                                           ; $6de5: $1b
	ld b, $97                                        ; $6de6: $06 $97
	nop                                              ; $6de8: $00
	call nz, $061b                                   ; $6de9: $c4 $1b $06
	sub a                                            ; $6dec: $97
	ld l, c                                          ; $6ded: $69
	rrca                                             ; $6dee: $0f
	inc c                                            ; $6def: $0c
	dec de                                           ; $6df0: $1b
	ld b, $97                                        ; $6df1: $06 $97
	nop                                              ; $6df3: $00
	call nz, $061b                                   ; $6df4: $c4 $1b $06
	sub a                                            ; $6df7: $97
	ld l, c                                          ; $6df8: $69
	ld a, [bc]                                       ; $6df9: $0a
	inc c                                            ; $6dfa: $0c
	dec de                                           ; $6dfb: $1b
	ld b, $97                                        ; $6dfc: $06 $97
	nop                                              ; $6dfe: $00
	call nz, $061b                                   ; $6dff: $c4 $1b $06
	sub a                                            ; $6e02: $97
	ld l, c                                          ; $6e03: $69
	ld a, [bc]                                       ; $6e04: $0a
	inc c                                            ; $6e05: $0c
	ld d, $16                                        ; $6e06: $16 $16
	call nz, $0097                                   ; $6e08: $c4 $97 $00
	ld d, $02                                        ; $6e0b: $16 $02
	sub a                                            ; $6e0d: $97
	ld l, c                                          ; $6e0e: $69
	ld d, $06                                        ; $6e0f: $16 $06
	sub a                                            ; $6e11: $97
	nop                                              ; $6e12: $00
	call nz, $0616                                   ; $6e13: $c4 $16 $06
	sub a                                            ; $6e16: $97
	ld l, c                                          ; $6e17: $69
	ld a, [bc]                                       ; $6e18: $0a
	inc c                                            ; $6e19: $0c
	ld d, $06                                        ; $6e1a: $16 $06
	sub a                                            ; $6e1c: $97
	nop                                              ; $6e1d: $00
	call nz, $0616                                   ; $6e1e: $c4 $16 $06
	sub a                                            ; $6e21: $97
	ld l, c                                          ; $6e22: $69
	dec b                                            ; $6e23: $05
	inc c                                            ; $6e24: $0c
	ld d, $06                                        ; $6e25: $16 $06
	sub a                                            ; $6e27: $97
	nop                                              ; $6e28: $00
	call nz, $0616                                   ; $6e29: $c4 $16 $06

jr_035_6e2c:
	sub a                                            ; $6e2c: $97
	ld l, c                                          ; $6e2d: $69
	dec b                                            ; $6e2e: $05
	inc c                                            ; $6e2f: $0c
	dec d                                            ; $6e30: $15
	ld d, $c4                                        ; $6e31: $16 $c4
	sub a                                            ; $6e33: $97
	nop                                              ; $6e34: $00
	dec d                                            ; $6e35: $15
	ld [bc], a                                       ; $6e36: $02
	sub a                                            ; $6e37: $97
	ld l, c                                          ; $6e38: $69
	dec d                                            ; $6e39: $15
	ld b, $97                                        ; $6e3a: $06 $97
	nop                                              ; $6e3c: $00
	call nz, $0615                                   ; $6e3d: $c4 $15 $06
	sub a                                            ; $6e40: $97
	ld l, c                                          ; $6e41: $69
	rlca                                             ; $6e42: $07
	inc c                                            ; $6e43: $0c
	inc de                                           ; $6e44: $13
	ld b, $97                                        ; $6e45: $06 $97
	nop                                              ; $6e47: $00
	call nz, $0613                                   ; $6e48: $c4 $13 $06
	sub a                                            ; $6e4b: $97
	ld l, c                                          ; $6e4c: $69
	add hl, bc                                       ; $6e4d: $09
	inc c                                            ; $6e4e: $0c
	dec d                                            ; $6e4f: $15
	ld b, $97                                        ; $6e50: $06 $97
	nop                                              ; $6e52: $00
	call nz, $0615                                   ; $6e53: $c4 $15 $06
	db $fd                                           ; $6e56: $fd
	or h                                             ; $6e57: $b4
	ld l, [hl]                                       ; $6e58: $6e
	or c                                             ; $6e59: $b1
	ld bc, $062e                                     ; $6e5a: $01 $2e $06
	call nz, $0c2e                                   ; $6e5d: $c4 $2e $0c
	pop bc                                           ; $6e60: $c1
	ld l, $12                                        ; $6e61: $2e $12
	sub a                                            ; $6e63: $97
	ld l, c                                          ; $6e64: $69
	add hl, hl                                       ; $6e65: $29
	ld a, [bc]                                       ; $6e66: $0a
	sub a                                            ; $6e67: $97
	nop                                              ; $6e68: $00
	call nz, $0229                                   ; $6e69: $c4 $29 $02
	sub a                                            ; $6e6c: $97
	ld l, c                                          ; $6e6d: $69
	ld a, [hl+]                                      ; $6e6e: $2a
	ld a, [bc]                                       ; $6e6f: $0a
	sub a                                            ; $6e70: $97
	nop                                              ; $6e71: $00
	call nz, $022a                                   ; $6e72: $c4 $2a $02
	sub a                                            ; $6e75: $97
	ld l, c                                          ; $6e76: $69
	add hl, hl                                       ; $6e77: $29
	ld a, [bc]                                       ; $6e78: $0a
	sub a                                            ; $6e79: $97
	nop                                              ; $6e7a: $00
	call nz, $0229                                   ; $6e7b: $c4 $29 $02
	sub a                                            ; $6e7e: $97
	ld l, c                                          ; $6e7f: $69
	daa                                              ; $6e80: $27
	ld a, [bc]                                       ; $6e81: $0a
	sub a                                            ; $6e82: $97
	nop                                              ; $6e83: $00
	call nz, $0227                                   ; $6e84: $c4 $27 $02
	sub a                                            ; $6e87: $97
	ld l, c                                          ; $6e88: $69
	dec h                                            ; $6e89: $25
	ld a, [bc]                                       ; $6e8a: $0a
	sub a                                            ; $6e8b: $97
	nop                                              ; $6e8c: $00
	call nz, $0225                                   ; $6e8d: $c4 $25 $02
	sub a                                            ; $6e90: $97
	ld l, h                                          ; $6e91: $6c
	inc h                                            ; $6e92: $24
	jr jr_035_6e2c                                   ; $6e93: $18 $97

	nop                                              ; $6e95: $00
	jp z, $0629                                      ; $6e96: $ca $29 $06

	sub a                                            ; $6e99: $97
	nop                                              ; $6e9a: $00
	call nz, $1229                                   ; $6e9b: $c4 $29 $12
	sub a                                            ; $6e9e: $97
	ld a, h                                          ; $6e9f: $7c
	dec e                                            ; $6ea0: $1d

jr_035_6ea1:
	jr nc, jr_035_6ea1                               ; $6ea1: $30 $fe

	pop de                                           ; $6ea3: $d1
	sub b                                            ; $6ea4: $90
	sub a                                            ; $6ea5: $97
	xor d                                            ; $6ea6: $aa
	ld a, [hl]                                       ; $6ea7: $7e
	dec e                                            ; $6ea8: $1d
	ld b, $aa                                        ; $6ea9: $06 $aa
	add hl, hl                                       ; $6eab: $29
	ld [de], a                                       ; $6eac: $12
	sub a                                            ; $6ead: $97
	nop                                              ; $6eae: $00
	call nz, $0629                                   ; $6eaf: $c4 $29 $06
	sub a                                            ; $6eb2: $97
	xor d                                            ; $6eb3: $aa
	inc h                                            ; $6eb4: $24
	ld a, [bc]                                       ; $6eb5: $0a
	sub a                                            ; $6eb6: $97
	nop                                              ; $6eb7: $00
	call nz, $0224                                   ; $6eb8: $c4 $24 $02
	sub a                                            ; $6ebb: $97
	xor d                                            ; $6ebc: $aa
	dec h                                            ; $6ebd: $25
	ld a, [bc]                                       ; $6ebe: $0a
	sub a                                            ; $6ebf: $97
	nop                                              ; $6ec0: $00
	call nz, $0225                                   ; $6ec1: $c4 $25 $02
	sub a                                            ; $6ec4: $97
	ld l, d                                          ; $6ec5: $6a
	ld a, [hl]                                       ; $6ec6: $7e
	jr jr_035_6ec9                                   ; $6ec7: $18 $00

jr_035_6ec9:
	and b                                            ; $6ec9: $a0
	daa                                              ; $6eca: $27
	ld [de], a                                       ; $6ecb: $12
	ld a, [hl]                                       ; $6ecc: $7e
	nop                                              ; $6ecd: $00
	and b                                            ; $6ece: $a0
	sub a                                            ; $6ecf: $97
	nop                                              ; $6ed0: $00
	call nz, $0627                                   ; $6ed1: $c4 $27 $06
	sub a                                            ; $6ed4: $97
	xor d                                            ; $6ed5: $aa
	dec h                                            ; $6ed6: $25
	ld a, [bc]                                       ; $6ed7: $0a
	sub a                                            ; $6ed8: $97
	nop                                              ; $6ed9: $00
	call nz, $0225                                   ; $6eda: $c4 $25 $02
	sub a                                            ; $6edd: $97
	xor d                                            ; $6ede: $aa
	inc h                                            ; $6edf: $24
	ld a, [bc]                                       ; $6ee0: $0a
	sub a                                            ; $6ee1: $97
	nop                                              ; $6ee2: $00
	call nz, $0224                                   ; $6ee3: $c4 $24 $02
	ld a, [hl]                                       ; $6ee6: $7e
	dec e                                            ; $6ee7: $1d
	ld b, $a9                                        ; $6ee8: $06 $a9
	adc $22                                          ; $6eea: $ce $22
	inc c                                            ; $6eec: $0c
	call nz, $0c22                                   ; $6eed: $c4 $22 $0c
	adc $22                                          ; $6ef0: $ce $22
	ld [$22c4], sp                                   ; $6ef2: $08 $c4 $22
	inc b                                            ; $6ef5: $04
	sub a                                            ; $6ef6: $97
	xor d                                            ; $6ef7: $aa
	dec h                                            ; $6ef8: $25
	ld b, $97                                        ; $6ef9: $06 $97
	nop                                              ; $6efb: $00
	dec h                                            ; $6efc: $25
	ld b, $97                                        ; $6efd: $06 $97
	adc d                                            ; $6eff: $8a
	ld a, [hl]                                       ; $6f00: $7e
	dec e                                            ; $6f01: $1d
	ld b, $a9                                        ; $6f02: $06 $a9
	add hl, hl                                       ; $6f04: $29
	ld [de], a                                       ; $6f05: $12
	sub a                                            ; $6f06: $97
	nop                                              ; $6f07: $00
	call nz, $0629                                   ; $6f08: $c4 $29 $06
	sub a                                            ; $6f0b: $97
	xor d                                            ; $6f0c: $aa
	daa                                              ; $6f0d: $27
	ld a, [bc]                                       ; $6f0e: $0a
	sub a                                            ; $6f0f: $97
	nop                                              ; $6f10: $00
	call nz, $0227                                   ; $6f11: $c4 $27 $02
	sub a                                            ; $6f14: $97
	xor d                                            ; $6f15: $aa
	dec h                                            ; $6f16: $25
	ld a, [bc]                                       ; $6f17: $0a
	sub a                                            ; $6f18: $97
	nop                                              ; $6f19: $00
	call nz, $0225                                   ; $6f1a: $c4 $25 $02
	sub a                                            ; $6f1d: $97
	xor d                                            ; $6f1e: $aa
	inc h                                            ; $6f1f: $24
	inc c                                            ; $6f20: $0c
	sub a                                            ; $6f21: $97
	nop                                              ; $6f22: $00
	call nz, $0c24                                   ; $6f23: $c4 $24 $0c
	sub a                                            ; $6f26: $97
	xor d                                            ; $6f27: $aa
	dec h                                            ; $6f28: $25
	inc c                                            ; $6f29: $0c
	sub a                                            ; $6f2a: $97
	nop                                              ; $6f2b: $00
	call nz, $0c25                                   ; $6f2c: $c4 $25 $0c
	sub a                                            ; $6f2f: $97
	adc d                                            ; $6f30: $8a
	daa                                              ; $6f31: $27
	inc c                                            ; $6f32: $0c
	sub a                                            ; $6f33: $97
	nop                                              ; $6f34: $00
	call nz, $0c27                                   ; $6f35: $c4 $27 $0c
	sub a                                            ; $6f38: $97
	adc d                                            ; $6f39: $8a

jr_035_6f3a:
	add hl, hl                                       ; $6f3a: $29
	inc c                                            ; $6f3b: $0c
	daa                                              ; $6f3c: $27
	ld b, $97                                        ; $6f3d: $06 $97
	nop                                              ; $6f3f: $00
	call nz, $0627                                   ; $6f40: $c4 $27 $06
	sub a                                            ; $6f43: $97
	xor d                                            ; $6f44: $aa
	dec h                                            ; $6f45: $25
	inc c                                            ; $6f46: $0c
	sub a                                            ; $6f47: $97
	nop                                              ; $6f48: $00
	call nz, $0c25                                   ; $6f49: $c4 $25 $0c
	sub a                                            ; $6f4c: $97
	xor d                                            ; $6f4d: $aa
	ld [hl+], a                                      ; $6f4e: $22
	inc c                                            ; $6f4f: $0c
	sub a                                            ; $6f50: $97
	nop                                              ; $6f51: $00
	call nz, $0c22                                   ; $6f52: $c4 $22 $0c
	sub a                                            ; $6f55: $97
	xor d                                            ; $6f56: $aa
	ld [hl+], a                                      ; $6f57: $22
	inc c                                            ; $6f58: $0c
	dec h                                            ; $6f59: $25
	inc c                                            ; $6f5a: $0c
	sub a                                            ; $6f5b: $97
	ld a, d                                          ; $6f5c: $7a
	daa                                              ; $6f5d: $27
	inc c                                            ; $6f5e: $0c
	add hl, hl                                       ; $6f5f: $29
	inc c                                            ; $6f60: $0c
	pop de                                           ; $6f61: $d1
	sub b                                            ; $6f62: $90
	db $fd                                           ; $6f63: $fd
	xor e                                            ; $6f64: $ab
	ld l, a                                          ; $6f65: $6f
	sub a                                            ; $6f66: $97
	xor d                                            ; $6f67: $aa
	dec h                                            ; $6f68: $25
	inc c                                            ; $6f69: $0c
	sub a                                            ; $6f6a: $97
	nop                                              ; $6f6b: $00
	call nz, $0c25                                   ; $6f6c: $c4 $25 $0c
	sub a                                            ; $6f6f: $97
	xor d                                            ; $6f70: $aa
	ld [hl+], a                                      ; $6f71: $22
	inc c                                            ; $6f72: $0c
	sub a                                            ; $6f73: $97
	nop                                              ; $6f74: $00
	call nz, $0c22                                   ; $6f75: $c4 $22 $0c
	sub a                                            ; $6f78: $97
	xor d                                            ; $6f79: $aa
	ld [hl+], a                                      ; $6f7a: $22
	inc c                                            ; $6f7b: $0c
	dec h                                            ; $6f7c: $25
	inc c                                            ; $6f7d: $0c
	sub a                                            ; $6f7e: $97
	ld a, d                                          ; $6f7f: $7a
	daa                                              ; $6f80: $27
	inc c                                            ; $6f81: $0c
	add hl, hl                                       ; $6f82: $29
	inc c                                            ; $6f83: $0c
	pop de                                           ; $6f84: $d1
	sub b                                            ; $6f85: $90
	adc $fd                                          ; $6f86: $ce $fd
	xor e                                            ; $6f88: $ab
	ld l, a                                          ; $6f89: $6f
	ret nc                                           ; $6f8a: $d0

	ld h, h                                          ; $6f8b: $64
	sub a                                            ; $6f8c: $97
	xor d                                            ; $6f8d: $aa
	dec h                                            ; $6f8e: $25
	inc c                                            ; $6f8f: $0c
	sub a                                            ; $6f90: $97
	nop                                              ; $6f91: $00

jr_035_6f92:
	call nz, $0c25                                   ; $6f92: $c4 $25 $0c
	sub a                                            ; $6f95: $97
	ld l, c                                          ; $6f96: $69
	ld [hl+], a                                      ; $6f97: $22
	inc c                                            ; $6f98: $0c
	sub a                                            ; $6f99: $97
	nop                                              ; $6f9a: $00
	call nz, $0c22                                   ; $6f9b: $c4 $22 $0c
	sub a                                            ; $6f9e: $97
	xor d                                            ; $6f9f: $aa
	ld [hl+], a                                      ; $6fa0: $22
	jr jr_035_6f3a                                   ; $6fa1: $18 $97

	nop                                              ; $6fa3: $00
	call nz, $1822                                   ; $6fa4: $c4 $22 $18
	ret nc                                           ; $6fa7: $d0

	ld l, [hl]                                       ; $6fa8: $6e
	cp $ff                                           ; $6fa9: $fe $ff
	sub a                                            ; $6fab: $97
	ld e, e                                          ; $6fac: $5b
	ld a, [hl]                                       ; $6fad: $7e
	dec e                                            ; $6fae: $1d
	ld b, $aa                                        ; $6faf: $06 $aa
	nop                                              ; $6fb1: $00
	inc c                                            ; $6fb2: $0c
	ld a, [hl+]                                      ; $6fb3: $2a
	ld [de], a                                       ; $6fb4: $12
	sub a                                            ; $6fb5: $97
	nop                                              ; $6fb6: $00
	pop de                                           ; $6fb7: $d1
	call nz, $062a                                   ; $6fb8: $c4 $2a $06
	sub a                                            ; $6fbb: $97
	xor d                                            ; $6fbc: $aa
	ld a, [hl]                                       ; $6fbd: $7e
	dec e                                            ; $6fbe: $1d
	ld b, $a9                                        ; $6fbf: $06 $a9
	inc l                                            ; $6fc1: $2c
	ld b, $97                                        ; $6fc2: $06 $97
	nop                                              ; $6fc4: $00
	call nz, $062c                                   ; $6fc5: $c4 $2c $06
	sub a                                            ; $6fc8: $97
	ld e, h                                          ; $6fc9: $5c
	ld a, [hl]                                       ; $6fca: $7e
	jr jr_035_6fcd                                   ; $6fcb: $18 $00

jr_035_6fcd:
	xor c                                            ; $6fcd: $a9
	ld l, $12                                        ; $6fce: $2e $12
	ld a, [hl]                                       ; $6fd0: $7e
	nop                                              ; $6fd1: $00
	and b                                            ; $6fd2: $a0
	sub a                                            ; $6fd3: $97
	nop                                              ; $6fd4: $00
	call nz, $062e                                   ; $6fd5: $c4 $2e $06
	sub a                                            ; $6fd8: $97
	sbc d                                            ; $6fd9: $9a
	ld a, [hl]                                       ; $6fda: $7e
	dec e                                            ; $6fdb: $1d
	ld b, $a9                                        ; $6fdc: $06 $a9
	inc l                                            ; $6fde: $2c
	ld b, $97                                        ; $6fdf: $06 $97
	nop                                              ; $6fe1: $00
	call nz, $062c                                   ; $6fe2: $c4 $2c $06
	sub a                                            ; $6fe5: $97
	sbc d                                            ; $6fe6: $9a
	ld a, [hl]                                       ; $6fe7: $7e
	dec e                                            ; $6fe8: $1d
	ld b, $a9                                        ; $6fe9: $06 $a9
	ld a, [hl+]                                      ; $6feb: $2a
	ld b, $97                                        ; $6fec: $06 $97
	nop                                              ; $6fee: $00
	call nz, $062a                                   ; $6fef: $c4 $2a $06
	sub a                                            ; $6ff2: $97
	ld a, h                                          ; $6ff3: $7c
	ld a, [hl]                                       ; $6ff4: $7e
	dec e                                            ; $6ff5: $1d
	ld b, $aa                                        ; $6ff6: $06 $aa
	add hl, hl                                       ; $6ff8: $29
	jr jr_035_6f92                                   ; $6ff9: $18 $97

	nop                                              ; $6ffb: $00
	call nz, $0c29                                   ; $6ffc: $c4 $29 $0c
	sub a                                            ; $6fff: $97
	xor d                                            ; $7000: $aa
	ld a, [hl]                                       ; $7001: $7e
	dec e                                            ; $7002: $1d
	ld b, $aa                                        ; $7003: $06 $aa
	dec h                                            ; $7005: $25
	ld b, $97                                        ; $7006: $06 $97
	nop                                              ; $7008: $00
	call nz, $0625                                   ; $7009: $c4 $25 $06
	sub a                                            ; $700c: $97
	adc d                                            ; $700d: $8a
	ld a, [hl]                                       ; $700e: $7e
	jr jr_035_7011                                   ; $700f: $18 $00

jr_035_7011:
	xor d                                            ; $7011: $aa
	add hl, hl                                       ; $7012: $29
	ld [de], a                                       ; $7013: $12
	sub a                                            ; $7014: $97
	nop                                              ; $7015: $00
	ld a, [hl]                                       ; $7016: $7e
	nop                                              ; $7017: $00
	and b                                            ; $7018: $a0
	call nz, $0629                                   ; $7019: $c4 $29 $06
	sub a                                            ; $701c: $97
	xor d                                            ; $701d: $aa
	ld a, [hl]                                       ; $701e: $7e
	dec e                                            ; $701f: $1d
	ld b, $aa                                        ; $7020: $06 $aa
	daa                                              ; $7022: $27
	ld b, $97                                        ; $7023: $06 $97
	nop                                              ; $7025: $00
	call nz, $0627                                   ; $7026: $c4 $27 $06
	sub a                                            ; $7029: $97
	xor d                                            ; $702a: $aa
	ld a, [hl]                                       ; $702b: $7e
	dec e                                            ; $702c: $1d
	ld b, $aa                                        ; $702d: $06 $aa
	dec h                                            ; $702f: $25
	ld b, $97                                        ; $7030: $06 $97
	nop                                              ; $7032: $00
	call nz, $0625                                   ; $7033: $c4 $25 $06
	sub a                                            ; $7036: $97
	xor d                                            ; $7037: $aa
	inc h                                            ; $7038: $24
	ld [de], a                                       ; $7039: $12
	sub a                                            ; $703a: $97
	nop                                              ; $703b: $00
	call nz, $0624                                   ; $703c: $c4 $24 $06
	sub a                                            ; $703f: $97
	xor d                                            ; $7040: $aa
	dec h                                            ; $7041: $25
	ld [de], a                                       ; $7042: $12
	sub a                                            ; $7043: $97
	nop                                              ; $7044: $00
	call nz, $0625                                   ; $7045: $c4 $25 $06
	sub a                                            ; $7048: $97
	ld a, d                                          ; $7049: $7a
	daa                                              ; $704a: $27
	ld [de], a                                       ; $704b: $12
	sub a                                            ; $704c: $97
	nop                                              ; $704d: $00
	call nz, $0627                                   ; $704e: $c4 $27 $06
	sub a                                            ; $7051: $97
	ld l, d                                          ; $7052: $6a
	add hl, hl                                       ; $7053: $29
	inc c                                            ; $7054: $0c
	daa                                              ; $7055: $27
	ld b, $97                                        ; $7056: $06 $97
	nop                                              ; $7058: $00
	call nz, $0627                                   ; $7059: $c4 $27 $06
	db $fd                                           ; $705c: $fd
	or h                                             ; $705d: $b4
	ld l, [hl]                                       ; $705e: $6e
	ld hl, $1618                                     ; $705f: $21 $18 $16
	ld b, $c6                                        ; $7062: $06 $c6
	ld d, $0c                                        ; $7064: $16 $0c
	nop                                              ; $7066: $00
	ld c, [hl]                                       ; $7067: $4e
	call nz, $1811                                   ; $7068: $c4 $11 $18
	dec d                                            ; $706b: $15
	ld b, $c6                                        ; $706c: $06 $c6
	dec d                                            ; $706e: $15
	ld [de], a                                       ; $706f: $12
	call nz, $3011                                   ; $7070: $c4 $11 $30
	cp $d1                                           ; $7073: $fe $d1

jr_035_7075:
	ld a, a                                          ; $7075: $7f
	jr jr_035_7075                                   ; $7076: $18 $fd

	cp b                                             ; $7078: $b8
	ld [hl], c                                       ; $7079: $71
	ei                                               ; $707a: $fb

jr_035_707b:
	call nz, $0c00                                   ; $707b: $c4 $00 $0c
	ld hl, $c606                                     ; $707e: $21 $06 $c6
	ld hl, $fb06                                     ; $7081: $21 $06 $fb
	ld [bc], a                                       ; $7084: $02
	call nz, $0c00                                   ; $7085: $c4 $00 $0c
	ld hl, $c603                                     ; $7088: $21 $03 $c6
	ld hl, $c403                                     ; $708b: $21 $03 $c4
	ld hl, $c603                                     ; $708e: $21 $03 $c6
	ld hl, $0003                                     ; $7091: $21 $03 $00
	inc c                                            ; $7094: $0c
	call nz, $0621                                   ; $7095: $c4 $21 $06
	add $21                                          ; $7098: $c6 $21
	ld b, $fb                                        ; $709a: $06 $fb
	nop                                              ; $709c: $00
	inc c                                            ; $709d: $0c
	call nz, $061d                                   ; $709e: $c4 $1d $06
	add $1d                                          ; $70a1: $c6 $1d
	ld b, $fb                                        ; $70a3: $06 $fb
	ld [bc], a                                       ; $70a5: $02
	call nz, $0c00                                   ; $70a6: $c4 $00 $0c
	dec e                                            ; $70a9: $1d
	inc c                                            ; $70aa: $0c
	add $1d                                          ; $70ab: $c6 $1d
	inc c                                            ; $70ad: $0c
	dec e                                            ; $70ae: $1d
	ld b, $c6                                        ; $70af: $06 $c6
	dec e                                            ; $70b1: $1d
	ld b, $d1                                        ; $70b2: $06 $d1
	ld a, a                                          ; $70b4: $7f
	jr jr_035_707b                                   ; $70b5: $18 $c4

	nop                                              ; $70b7: $00
	inc c                                            ; $70b8: $0c
	ld d, $0c                                        ; $70b9: $16 $0c
	add $16                                          ; $70bb: $c6 $16
	inc c                                            ; $70bd: $0c
	call nz, $0616                                   ; $70be: $c4 $16 $06
	add $16                                          ; $70c1: $c6 $16
	ld b, $fb                                        ; $70c3: $06 $fb
	nop                                              ; $70c5: $00
	inc c                                            ; $70c6: $0c
	call nz, $0616                                   ; $70c7: $c4 $16 $06
	add $16                                          ; $70ca: $c6 $16
	ld b, $fb                                        ; $70cc: $06 $fb
	ld [bc], a                                       ; $70ce: $02
	nop                                              ; $70cf: $00
	inc c                                            ; $70d0: $0c
	call nz, $0c19                                   ; $70d1: $c4 $19 $0c
	add $19                                          ; $70d4: $c6 $19
	inc c                                            ; $70d6: $0c
	call nz, $0619                                   ; $70d7: $c4 $19 $06
	add $19                                          ; $70da: $c6 $19
	ld b, $fb                                        ; $70dc: $06 $fb
	nop                                              ; $70de: $00
	inc c                                            ; $70df: $0c
	call nz, $0619                                   ; $70e0: $c4 $19 $06
	add $19                                          ; $70e3: $c6 $19
	ld b, $fb                                        ; $70e5: $06 $fb
	ld [bc], a                                       ; $70e7: $02
	nop                                              ; $70e8: $00

jr_035_70e9:
	inc c                                            ; $70e9: $0c
	call nz, $0c18                                   ; $70ea: $c4 $18 $0c
	add $18                                          ; $70ed: $c6 $18
	inc c                                            ; $70ef: $0c
	call nz, $0618                                   ; $70f0: $c4 $18 $06
	add $18                                          ; $70f3: $c6 $18
	ld b, $fb                                        ; $70f5: $06 $fb
	nop                                              ; $70f7: $00
	inc c                                            ; $70f8: $0c
	call nz, $0618                                   ; $70f9: $c4 $18 $06
	add $18                                          ; $70fc: $c6 $18
	ld b, $fb                                        ; $70fe: $06 $fb
	ld [bc], a                                       ; $7100: $02
	nop                                              ; $7101: $00
	inc c                                            ; $7102: $0c
	call nz, $060a                                   ; $7103: $c4 $0a $06
	add $0a                                          ; $7106: $c6 $0a
	ld b, $00                                        ; $7108: $06 $00
	inc c                                            ; $710a: $0c
	call nz, $060c                                   ; $710b: $c4 $0c $06
	add $0c                                          ; $710e: $c6 $0c
	ld b, $00                                        ; $7110: $06 $00
	inc c                                            ; $7112: $0c
	call nz, $060d                                   ; $7113: $c4 $0d $06
	add $0d                                          ; $7116: $c6 $0d
	ld b, $00                                        ; $7118: $06 $00
	inc c                                            ; $711a: $0c
	call nz, $060e                                   ; $711b: $c4 $0e $06
	add $0e                                          ; $711e: $c6 $0e
	ld b, $d1                                        ; $7120: $06 $d1
	ld a, a                                          ; $7122: $7f
	jr jr_035_70e9                                   ; $7123: $18 $c4

	ld a, [hl]                                       ; $7125: $7e
	dec e                                            ; $7126: $1d
	ld b, $a9                                        ; $7127: $06 $a9

jr_035_7129:
	nop                                              ; $7129: $00
	inc c                                            ; $712a: $0c
	daa                                              ; $712b: $27
	ld [de], a                                       ; $712c: $12
	add $27                                          ; $712d: $c6 $27
	ld b, $7e                                        ; $712f: $06 $7e
	dec e                                            ; $7131: $1d
	ld b, $a9                                        ; $7132: $06 $a9
	call nz, $0629                                   ; $7134: $c4 $29 $06
	add $29                                          ; $7137: $c6 $29
	ld b, $7e                                        ; $7139: $06 $7e
	jr jr_035_713d                                   ; $713b: $18 $00

jr_035_713d:
	xor c                                            ; $713d: $a9
	add $2a                                          ; $713e: $c6 $2a
	ld [de], a                                       ; $7140: $12
	ld a, [hl]                                       ; $7141: $7e
	nop                                              ; $7142: $00
	and b                                            ; $7143: $a0
	add $2a                                          ; $7144: $c6 $2a
	ld b, $7e                                        ; $7146: $06 $7e
	dec e                                            ; $7148: $1d
	ld b, $a9                                        ; $7149: $06 $a9
	call nz, $0629                                   ; $714b: $c4 $29 $06
	add $29                                          ; $714e: $c6 $29
	ld b, $7e                                        ; $7150: $06 $7e
	dec e                                            ; $7152: $1d
	ld b, $a9                                        ; $7153: $06 $a9
	call nz, $0627                                   ; $7155: $c4 $27 $06
	add $27                                          ; $7158: $c6 $27
	ld b, $c4                                        ; $715a: $06 $c4
	ld a, [hl]                                       ; $715c: $7e
	dec e                                            ; $715d: $1d
	ld b, $a9                                        ; $715e: $06 $a9
	dec h                                            ; $7160: $25
	jr jr_035_7129                                   ; $7161: $18 $c6

	dec h                                            ; $7163: $25
	inc c                                            ; $7164: $0c
	ld a, [hl]                                       ; $7165: $7e
	dec e                                            ; $7166: $1d
	ld b, $a9                                        ; $7167: $06 $a9
	call nz, $0622                                   ; $7169: $c4 $22 $06
	add $22                                          ; $716c: $c6 $22
	ld b, $7e                                        ; $716e: $06 $7e
	jr jr_035_7172                                   ; $7170: $18 $00

jr_035_7172:
	xor c                                            ; $7172: $a9

jr_035_7173:
	call nz, $1225                                   ; $7173: $c4 $25 $12
	ld a, [hl]                                       ; $7176: $7e
	nop                                              ; $7177: $00

jr_035_7178:
	and b                                            ; $7178: $a0
	add $25                                          ; $7179: $c6 $25
	ld b, $7e                                        ; $717b: $06 $7e
	dec e                                            ; $717d: $1d
	ld b, $a9                                        ; $717e: $06 $a9
	call nz, $0624                                   ; $7180: $c4 $24 $06
	add $24                                          ; $7183: $c6 $24

jr_035_7185:
	ld b, $7e                                        ; $7185: $06 $7e
	dec e                                            ; $7187: $1d
	ld b, $a9                                        ; $7188: $06 $a9
	call nz, $0622                                   ; $718a: $c4 $22 $06
	add $22                                          ; $718d: $c6 $22
	ld b, $c4                                        ; $718f: $06 $c4
	ld hl, $c612                                     ; $7191: $21 $12 $c6
	ld hl, $c406                                     ; $7194: $21 $06 $c4
	ld [hl+], a                                      ; $7197: $22
	ld [de], a                                       ; $7198: $12
	add $22                                          ; $7199: $c6 $22
	ld b, $c4                                        ; $719b: $06 $c4
	inc h                                            ; $719d: $24
	ld [de], a                                       ; $719e: $12
	add $24                                          ; $719f: $c6 $24
	ld b, $c4                                        ; $71a1: $06 $c4
	dec h                                            ; $71a3: $25
	inc c                                            ; $71a4: $0c
	inc h                                            ; $71a5: $24
	ld b, $c6                                        ; $71a6: $06 $c6
	inc h                                            ; $71a8: $24
	ld b, $d0                                        ; $71a9: $06 $d0
	ld h, h                                          ; $71ab: $64
	nop                                              ; $71ac: $00
	jr nc, jr_035_7173                               ; $71ad: $30 $c4

	ld a, [bc]                                       ; $71af: $0a
	jr jr_035_7178                                   ; $71b0: $18 $c6

	ld a, [bc]                                       ; $71b2: $0a
	jr jr_035_7185                                   ; $71b3: $18 $d0

	ld l, [hl]                                       ; $71b5: $6e
	cp $ff                                           ; $71b6: $fe $ff
	pop de                                           ; $71b8: $d1
	call nz, $00fb                                   ; $71b9: $c4 $fb $00
	inc c                                            ; $71bc: $0c
	ld hl, $c606                                     ; $71bd: $21 $06 $c6
	ld hl, $fb06                                     ; $71c0: $21 $06 $fb
	ld [bc], a                                       ; $71c3: $02
	call nz, $0c00                                   ; $71c4: $c4 $00 $0c
	ld hl, $c603                                     ; $71c7: $21 $03 $c6
	ld hl, $c403                                     ; $71ca: $21 $03 $c4
	ld hl, $c603                                     ; $71cd: $21 $03 $c6
	ld hl, $0003                                     ; $71d0: $21 $03 $00
	inc c                                            ; $71d3: $0c
	call nz, $0621                                   ; $71d4: $c4 $21 $06
	add $21                                          ; $71d7: $c6 $21
	ld b, $fb                                        ; $71d9: $06 $fb
	nop                                              ; $71db: $00
	inc c                                            ; $71dc: $0c
	call nz, $061d                                   ; $71dd: $c4 $1d $06
	add $1d                                          ; $71e0: $c6 $1d
	ld b, $fb                                        ; $71e2: $06 $fb
	ld [bc], a                                       ; $71e4: $02
	call nz, $0c00                                   ; $71e5: $c4 $00 $0c
	dec e                                            ; $71e8: $1d
	inc bc                                           ; $71e9: $03
	add $1d                                          ; $71ea: $c6 $1d
	inc bc                                           ; $71ec: $03
	call nz, $031d                                   ; $71ed: $c4 $1d $03
	add $1d                                          ; $71f0: $c6 $1d
	inc bc                                           ; $71f2: $03
	nop                                              ; $71f3: $00
	inc c                                            ; $71f4: $0c
	call nz, $061d                                   ; $71f5: $c4 $1d $06
	add $1d                                          ; $71f8: $c6 $1d
	ld b, $fd                                        ; $71fa: $06 $fd
	ret nc                                           ; $71fc: $d0

	ld l, [hl]                                       ; $71fd: $6e
	inc d                                            ; $71fe: $14
	inc c                                            ; $71ff: $0c
	nop                                              ; $7200: $00
	ld d, h                                          ; $7201: $54
	nop                                              ; $7202: $00
	ld h, b                                          ; $7203: $60
	cp $fb                                           ; $7204: $fe $fb
	db $fd                                           ; $7206: $fd
	ld b, c                                          ; $7207: $41
	ld [hl], d                                       ; $7208: $72
	ei                                               ; $7209: $fb
	inc bc                                           ; $720a: $03
	cp [hl]                                          ; $720b: $be
	inc c                                            ; $720c: $0c
	rra                                              ; $720d: $1f
	dec e                                            ; $720e: $1d
	rra                                              ; $720f: $1f
	dec e                                            ; $7210: $1d
	rra                                              ; $7211: $1f
	cp [hl]                                          ; $7212: $be
	cp [hl]                                          ; $7213: $be
	ld b, $1d                                        ; $7214: $06 $1d
	dec e                                            ; $7216: $1d
	rra                                              ; $7217: $1f
	dec e                                            ; $7218: $1d
	rra                                              ; $7219: $1f
	dec e                                            ; $721a: $1d
	cp [hl]                                          ; $721b: $be
	ei                                               ; $721c: $fb
	db $fd                                           ; $721d: $fd
	ld d, d                                          ; $721e: $52
	ld [hl], d                                       ; $721f: $72
	ei                                               ; $7220: $fb
	inc bc                                           ; $7221: $03
	cp [hl]                                          ; $7222: $be
	inc c                                            ; $7223: $0c
	rra                                              ; $7224: $1f
	dec e                                            ; $7225: $1d
	rra                                              ; $7226: $1f
	dec e                                            ; $7227: $1d
	rra                                              ; $7228: $1f
	cp [hl]                                          ; $7229: $be
	cp [hl]                                          ; $722a: $be
	ld b, $1d                                        ; $722b: $06 $1d
	dec e                                            ; $722d: $1d
	rra                                              ; $722e: $1f
	dec e                                            ; $722f: $1d
	rra                                              ; $7230: $1f
	dec e                                            ; $7231: $1d
	cp [hl]                                          ; $7232: $be
	ei                                               ; $7233: $fb
	db $fd                                           ; $7234: $fd
	ld d, d                                          ; $7235: $52
	ld [hl], d                                       ; $7236: $72
	ei                                               ; $7237: $fb
	inc bc                                           ; $7238: $03
	ret nc                                           ; $7239: $d0

	ld h, h                                          ; $723a: $64
	nop                                              ; $723b: $00
	ld h, b                                          ; $723c: $60
	ret nc                                           ; $723d: $d0

	ld l, [hl]                                       ; $723e: $6e
	cp $ff                                           ; $723f: $fe $ff
	cp [hl]                                          ; $7241: $be
	inc c                                            ; $7242: $0c
	rra                                              ; $7243: $1f
	dec e                                            ; $7244: $1d
	rra                                              ; $7245: $1f
	dec e                                            ; $7246: $1d
	rra                                              ; $7247: $1f
	cp [hl]                                          ; $7248: $be
	dec e                                            ; $7249: $1d
	ld b, $1d                                        ; $724a: $06 $1d
	ld b, $1f                                        ; $724c: $06 $1f
	inc c                                            ; $724e: $0c
	dec e                                            ; $724f: $1d
	inc c                                            ; $7250: $0c
	db $fd                                           ; $7251: $fd
	cp [hl]                                          ; $7252: $be
	inc c                                            ; $7253: $0c
	dec e                                            ; $7254: $1d
	ld e, $1d                                        ; $7255: $1e $1d
	dec e                                            ; $7257: $1d
	rra                                              ; $7258: $1f
	cp [hl]                                          ; $7259: $be
	dec e                                            ; $725a: $1d
	ld b, $1d                                        ; $725b: $06 $1d
	ld b, $1f                                        ; $725d: $06 $1f
	inc c                                            ; $725f: $0c
	dec e                                            ; $7260: $1d
	inc c                                            ; $7261: $0c
	db $fd                                           ; $7262: $fd
	or [hl]                                          ; $7263: $b6
	ld l, [hl]                                       ; $7264: $6e
	add c                                            ; $7265: $81
	ld [bc], a                                       ; $7266: $02
	inc d                                            ; $7267: $14
	inc bc                                           ; $7268: $03
	cp [hl]                                          ; $7269: $be
	ld [$2a1e], sp                                   ; $726a: $08 $1e $2a
	daa                                              ; $726d: $27
	dec h                                            ; $726e: $25
	daa                                              ; $726f: $27
	dec h                                            ; $7270: $25
	inc hl                                           ; $7271: $23
	dec h                                            ; $7272: $25
	inc hl                                           ; $7273: $23
	ld [hl+], a                                      ; $7274: $22
	inc hl                                           ; $7275: $23
	ld [hl+], a                                      ; $7276: $22
	cp [hl]                                          ; $7277: $be
	or l                                             ; $7278: $b5
	or c                                             ; $7279: $b1
	inc bc                                           ; $727a: $03
	inc d                                            ; $727b: $14
	ld bc, $08be                                     ; $727c: $01 $be $08
	inc hl                                           ; $727f: $23
	ld e, $23                                        ; $7280: $1e $23
	dec h                                            ; $7282: $25
	jr nz, jr_035_72aa                               ; $7283: $20 $25

	daa                                              ; $7285: $27
	inc hl                                           ; $7286: $23
	daa                                              ; $7287: $27
	cp [hl]                                          ; $7288: $be
	or c                                             ; $7289: $b1
	add c                                            ; $728a: $81
	inc d                                            ; $728b: $14
	inc bc                                           ; $728c: $03
	ld a, [hl]                                       ; $728d: $7e
	dec l                                            ; $728e: $2d
	rrca                                             ; $728f: $0f
	and c                                            ; $7290: $a1
	add hl, hl                                       ; $7291: $29
	jr nc, @+$01                                     ; $7292: $30 $ff

	or [hl]                                          ; $7294: $b6
	ld l, [hl]                                       ; $7295: $6e
	add c                                            ; $7296: $81
	ld [bc], a                                       ; $7297: $02
	inc d                                            ; $7298: $14
	inc bc                                           ; $7299: $03
	cp [hl]                                          ; $729a: $be
	ld [$3125], sp                                   ; $729b: $08 $25 $31
	cpl                                              ; $729e: $2f
	ld l, $2f                                        ; $729f: $2e $2f
	ld l, $2c                                        ; $72a1: $2e $2c
	ld l, $2c                                        ; $72a3: $2e $2c
	ld a, [hl+]                                      ; $72a5: $2a
	inc l                                            ; $72a6: $2c
	ld a, [hl+]                                      ; $72a7: $2a
	cp [hl]                                          ; $72a8: $be
	or l                                             ; $72a9: $b5

jr_035_72aa:
	or c                                             ; $72aa: $b1
	inc bc                                           ; $72ab: $03
	inc d                                            ; $72ac: $14
	ld bc, $08be                                     ; $72ad: $01 $be $08
	daa                                              ; $72b0: $27
	inc hl                                           ; $72b1: $23
	daa                                              ; $72b2: $27
	add hl, hl                                       ; $72b3: $29
	dec h                                            ; $72b4: $25
	add hl, hl                                       ; $72b5: $29
	ld a, [hl+]                                      ; $72b6: $2a
	daa                                              ; $72b7: $27
	ld a, [hl+]                                      ; $72b8: $2a
	cp [hl]                                          ; $72b9: $be
	or c                                             ; $72ba: $b1
	add c                                            ; $72bb: $81
	inc d                                            ; $72bc: $14
	inc bc                                           ; $72bd: $03
	ld a, [hl]                                       ; $72be: $7e
	dec l                                            ; $72bf: $2d
	rrca                                             ; $72c0: $0f
	and c                                            ; $72c1: $a1
	inc l                                            ; $72c2: $2c
	jr nc, @+$01                                     ; $72c3: $30 $ff

	or [hl]                                          ; $72c5: $b6
	ld l, [hl]                                       ; $72c6: $6e
	ld hl, $0025                                     ; $72c7: $21 $25 $00
	nop                                              ; $72ca: $00
	ld e, $12                                        ; $72cb: $1e $12
	call nz, $061e                                   ; $72cd: $c4 $1e $06
	jp nz, $121e                                     ; $72d0: $c2 $1e $12

	call nz, $061e                                   ; $72d3: $c4 $1e $06
	jp nz, $1219                                     ; $72d6: $c2 $19 $12

	call nz, $0619                                   ; $72d9: $c4 $19 $06
	jp nz, $1212                                     ; $72dc: $c2 $12 $12

	call nz, $0612                                   ; $72df: $c4 $12 $06
	jp nz, $1214                                     ; $72e2: $c2 $14 $12

	call nz, $0614                                   ; $72e5: $c4 $14 $06
	jp nz, $1216                                     ; $72e8: $c2 $16 $12

	call nz, $0616                                   ; $72eb: $c4 $16 $06
	jp nz, $1217                                     ; $72ee: $c2 $17 $12

	call nz, $0617                                   ; $72f1: $c4 $17 $06
	jp nz, $2419                                     ; $72f4: $c2 $19 $24

	call nz, $0619                                   ; $72f7: $c4 $19 $06
	add $19                                          ; $72fa: $c6 $19
	ld b, $ff                                        ; $72fc: $06 $ff
	ret nc                                           ; $72fe: $d0

	ld l, [hl]                                       ; $72ff: $6e
	scf                                              ; $7300: $37
	ld [$043d], sp                                   ; $7301: $08 $3d $04
	dec a                                            ; $7304: $3d
	inc b                                            ; $7305: $04
	cp [hl]                                          ; $7306: $be
	ld [$373d], sp                                   ; $7307: $08 $3d $37
	dec a                                            ; $730a: $3d
	dec a                                            ; $730b: $3d
	scf                                              ; $730c: $37
	dec a                                            ; $730d: $3d
	dec a                                            ; $730e: $3d
	scf                                              ; $730f: $37
	dec a                                            ; $7310: $3d
	inc [hl]                                         ; $7311: $34
	cp [hl]                                          ; $7312: $be
	ld [hl-], a                                      ; $7313: $32
	ld [$04be], sp                                   ; $7314: $08 $be $04
	ld [hl-], a                                      ; $7317: $32
	inc sp                                           ; $7318: $33
	inc sp                                           ; $7319: $33
	inc sp                                           ; $731a: $33
	cp [hl]                                          ; $731b: $be
	ld sp, $be08                                     ; $731c: $31 $08 $be
	inc b                                            ; $731f: $04
	ld [hl-], a                                      ; $7320: $32
	ld [hl-], a                                      ; $7321: $32
	inc sp                                           ; $7322: $33
	inc sp                                           ; $7323: $33
	cp [hl]                                          ; $7324: $be
	ld sp, $be08                                     ; $7325: $31 $08 $be
	inc b                                            ; $7328: $04

jr_035_7329:
	ld sp, $3232                                     ; $7329: $31 $32 $32
	inc sp                                           ; $732c: $33
	cp [hl]                                          ; $732d: $be
	dec [hl]                                         ; $732e: $35
	jr nc, @+$01                                     ; $732f: $30 $ff

	cp $b0                                           ; $7331: $fe $b0
	and b                                            ; $7333: $a0
	ld h, h                                          ; $7334: $64
	inc b                                            ; $7335: $04
	db $fd                                           ; $7336: $fd
	ld b, [hl]                                       ; $7337: $46
	ld [hl], h                                       ; $7338: $74
	db $fd                                           ; $7339: $fd
	ld b, [hl]                                       ; $733a: $46
	ld [hl], h                                       ; $733b: $74
	db $fd                                           ; $733c: $fd
	ld d, c                                          ; $733d: $51
	ld [hl], h                                       ; $733e: $74
	db $fd                                           ; $733f: $fd
	ld [hl], d                                       ; $7340: $72
	ld [hl], h                                       ; $7341: $74
	db $fd                                           ; $7342: $fd
	ld e, h                                          ; $7343: $5c
	ld [hl], h                                       ; $7344: $74
	db $fd                                           ; $7345: $fd
	ld h, a                                          ; $7346: $67
	ld [hl], h                                       ; $7347: $74
	db $fd                                           ; $7348: $fd
	ld d, c                                          ; $7349: $51
	ld [hl], h                                       ; $734a: $74
	nop                                              ; $734b: $00
	inc c                                            ; $734c: $0c
	add hl, hl                                       ; $734d: $29
	inc c                                            ; $734e: $0c
	db $fd                                           ; $734f: $fd
	ld e, h                                          ; $7350: $5c
	ld [hl], h                                       ; $7351: $74
	db $fd                                           ; $7352: $fd
	ld h, a                                          ; $7353: $67
	ld [hl], h                                       ; $7354: $74
	db $fd                                           ; $7355: $fd
	ld b, [hl]                                       ; $7356: $46
	ld [hl], h                                       ; $7357: $74
	db $fd                                           ; $7358: $fd
	ld d, c                                          ; $7359: $51
	ld [hl], h                                       ; $735a: $74
	sub d                                            ; $735b: $92
	ret                                              ; $735c: $c9


	ld hl, $c80c                                     ; $735d: $21 $0c $c8
	sub b                                            ; $7360: $90
	add hl, hl                                       ; $7361: $29
	inc c                                            ; $7362: $0c
	ret                                              ; $7363: $c9


	sub d                                            ; $7364: $92
	inc h                                            ; $7365: $24
	inc c                                            ; $7366: $0c
	ret z                                            ; $7367: $c8

	sub b                                            ; $7368: $90
	add hl, hl                                       ; $7369: $29
	inc c                                            ; $736a: $0c
	ret z                                            ; $736b: $c8

	sub d                                            ; $736c: $92
	ld [hl+], a                                      ; $736d: $22
	inc c                                            ; $736e: $0c
	dec e                                            ; $736f: $1d
	inc c                                            ; $7370: $0c
	dec e                                            ; $7371: $1d
	jr jr_035_7329                                   ; $7372: $18 $b5

	ld [hl], c                                       ; $7374: $71
	ld [bc], a                                       ; $7375: $02
	ld h, h                                          ; $7376: $64
	inc b                                            ; $7377: $04
	add hl, hl                                       ; $7378: $29
	inc c                                            ; $7379: $0c
	sub b                                            ; $737a: $90
	add hl, hl                                       ; $737b: $29
	inc c                                            ; $737c: $0c
	db $fd                                           ; $737d: $fd
	ld b, [hl]                                       ; $737e: $46
	ld [hl], h                                       ; $737f: $74
	db $fd                                           ; $7380: $fd
	ld d, c                                          ; $7381: $51
	ld [hl], h                                       ; $7382: $74
	db $fd                                           ; $7383: $fd
	ld [hl], d                                       ; $7384: $72

jr_035_7385:
	ld [hl], h                                       ; $7385: $74
	db $fd                                           ; $7386: $fd
	ld e, h                                          ; $7387: $5c
	ld [hl], h                                       ; $7388: $74
	db $fd                                           ; $7389: $fd
	ld h, a                                          ; $738a: $67
	ld [hl], h                                       ; $738b: $74
	db $fd                                           ; $738c: $fd
	ld d, c                                          ; $738d: $51
	ld [hl], h                                       ; $738e: $74
	nop                                              ; $738f: $00
	inc c                                            ; $7390: $0c
	add hl, hl                                       ; $7391: $29
	inc c                                            ; $7392: $0c
	sub d                                            ; $7393: $92
	rr l                                             ; $7394: $cb $1d
	inc c                                            ; $7396: $0c
	sub b                                            ; $7397: $90
	rst JumpTable                                          ; $7398: $c7
	inc l                                            ; $7399: $2c
	inc c                                            ; $739a: $0c
	sub d                                            ; $739b: $92
	rr h                                             ; $739c: $cb $1c
	inc c                                            ; $739e: $0c
	sub b                                            ; $739f: $90
	rst JumpTable                                          ; $73a0: $c7
	inc l                                            ; $73a1: $2c
	inc c                                            ; $73a2: $0c
	sub d                                            ; $73a3: $92
	rr e                                             ; $73a4: $cb $1b
	inc c                                            ; $73a6: $0c
	sub b                                            ; $73a7: $90
	rst JumpTable                                          ; $73a8: $c7
	inc l                                            ; $73a9: $2c
	inc c                                            ; $73aa: $0c
	sub d                                            ; $73ab: $92
	rr d                                             ; $73ac: $cb $1a
	inc c                                            ; $73ae: $0c
	sub b                                            ; $73af: $90
	rst JumpTable                                          ; $73b0: $c7
	inc l                                            ; $73b1: $2c
	inc c                                            ; $73b2: $0c
	sub d                                            ; $73b3: $92
	call z, $0c19                                    ; $73b4: $cc $19 $0c
	sub b                                            ; $73b7: $90
	ret z                                            ; $73b8: $c8

	dec hl                                           ; $73b9: $2b
	inc c                                            ; $73ba: $0c
	sub d                                            ; $73bb: $92
	call z, $0c18                                    ; $73bc: $cc $18 $0c
	sub b                                            ; $73bf: $90
	ret z                                            ; $73c0: $c8

	dec hl                                           ; $73c1: $2b
	inc c                                            ; $73c2: $0c
	sub d                                            ; $73c3: $92
	call z, $0c1d                                    ; $73c4: $cc $1d $0c
	sub b                                            ; $73c7: $90
	ret z                                            ; $73c8: $c8

	inc l                                            ; $73c9: $2c
	inc c                                            ; $73ca: $0c
	sub d                                            ; $73cb: $92
	ret                                              ; $73cc: $c9


	dec e                                            ; $73cd: $1d
	jr jr_035_7385                                   ; $73ce: $18 $b5

	sub c                                            ; $73d0: $91
	ld bc, $0464                                     ; $73d1: $01 $64 $04
	db $fd                                           ; $73d4: $fd
	ld b, [hl]                                       ; $73d5: $46
	ld [hl], h                                       ; $73d6: $74
	db $fd                                           ; $73d7: $fd
	ld b, [hl]                                       ; $73d8: $46
	ld [hl], h                                       ; $73d9: $74
	db $fd                                           ; $73da: $fd
	ld d, c                                          ; $73db: $51
	ld [hl], h                                       ; $73dc: $74
	db $fd                                           ; $73dd: $fd
	ld d, c                                          ; $73de: $51
	ld [hl], h                                       ; $73df: $74
	db $fd                                           ; $73e0: $fd
	ld e, h                                          ; $73e1: $5c
	ld [hl], h                                       ; $73e2: $74
	db $fd                                           ; $73e3: $fd
	ld e, h                                          ; $73e4: $5c
	ld [hl], h                                       ; $73e5: $74
	db $fd                                           ; $73e6: $fd
	ld h, a                                          ; $73e7: $67
	ld [hl], h                                       ; $73e8: $74
	db $fd                                           ; $73e9: $fd
	ld h, a                                          ; $73ea: $67
	ld [hl], h                                       ; $73eb: $74
	sub d                                            ; $73ec: $92
	sla h                                            ; $73ed: $cb $24
	inc c                                            ; $73ef: $0c
	sub b                                            ; $73f0: $90
	ret z                                            ; $73f1: $c8

	daa                                              ; $73f2: $27
	inc c                                            ; $73f3: $0c
	sub d                                            ; $73f4: $92
	sla d                                            ; $73f5: $cb $22
	inc c                                            ; $73f7: $0c
	sub b                                            ; $73f8: $90
	ret z                                            ; $73f9: $c8

	daa                                              ; $73fa: $27
	inc c                                            ; $73fb: $0c
	db $fd                                           ; $73fc: $fd
	ld a, l                                          ; $73fd: $7d
	ld [hl], h                                       ; $73fe: $74
	db $fd                                           ; $73ff: $fd
	ld [hl], d                                       ; $7400: $72
	ld [hl], h                                       ; $7401: $74
	sub d                                            ; $7402: $92
	sla h                                            ; $7403: $cb $24
	inc c                                            ; $7405: $0c
	sub b                                            ; $7406: $90
	ret z                                            ; $7407: $c8

	add hl, hl                                       ; $7408: $29
	inc c                                            ; $7409: $0c
	db $fd                                           ; $740a: $fd
	ld d, c                                          ; $740b: $51
	ld [hl], h                                       ; $740c: $74
	db $fd                                           ; $740d: $fd
	ld [hl], d                                       ; $740e: $72
	ld [hl], h                                       ; $740f: $74
	or l                                             ; $7410: $b5
	add c                                            ; $7411: $81
	ld bc, $0464                                     ; $7412: $01 $64 $04
	db $fd                                           ; $7415: $fd
	ld b, [hl]                                       ; $7416: $46
	ld [hl], h                                       ; $7417: $74
	db $fd                                           ; $7418: $fd
	ld b, [hl]                                       ; $7419: $46
	ld [hl], h                                       ; $741a: $74
	db $fd                                           ; $741b: $fd
	ld d, c                                          ; $741c: $51
	ld [hl], h                                       ; $741d: $74
	db $fd                                           ; $741e: $fd
	ld d, c                                          ; $741f: $51
	ld [hl], h                                       ; $7420: $74
	db $fd                                           ; $7421: $fd
	ld e, h                                          ; $7422: $5c
	ld [hl], h                                       ; $7423: $74
	db $fd                                           ; $7424: $fd
	ld e, h                                          ; $7425: $5c
	ld [hl], h                                       ; $7426: $74
	db $fd                                           ; $7427: $fd
	ld h, a                                          ; $7428: $67
	ld [hl], h                                       ; $7429: $74
	db $fd                                           ; $742a: $fd
	ld h, a                                          ; $742b: $67
	ld [hl], h                                       ; $742c: $74
	db $fd                                           ; $742d: $fd
	ld [hl], d                                       ; $742e: $72
	ld [hl], h                                       ; $742f: $74
	db $fd                                           ; $7430: $fd
	ld [hl], d                                       ; $7431: $72
	ld [hl], h                                       ; $7432: $74
	db $fd                                           ; $7433: $fd
	ld d, c                                          ; $7434: $51
	ld [hl], h                                       ; $7435: $74
	db $fd                                           ; $7436: $fd
	ld [hl], d                                       ; $7437: $72
	ld [hl], h                                       ; $7438: $74
	db $fd                                           ; $7439: $fd
	ld a, l                                          ; $743a: $7d
	ld [hl], h                                       ; $743b: $74
	sub d                                            ; $743c: $92
	ret                                              ; $743d: $c9


	add hl, de                                       ; $743e: $19
	inc c                                            ; $743f: $0c
	dec e                                            ; $7440: $1d
	inc c                                            ; $7441: $0c
	ld [hl+], a                                      ; $7442: $22

jr_035_7443:
	jr jr_035_7443                                   ; $7443: $18 $fe

	rst $38                                          ; $7445: $ff
	sub d                                            ; $7446: $92
	set 2, c                                         ; $7447: $cb $d1
	dec e                                            ; $7449: $1d
	inc c                                            ; $744a: $0c
	sub b                                            ; $744b: $90
	ret z                                            ; $744c: $c8

	pop de                                           ; $744d: $d1
	add hl, hl                                       ; $744e: $29
	inc c                                            ; $744f: $0c
	db $fd                                           ; $7450: $fd
	sub d                                            ; $7451: $92
	jp z, $22d1                                      ; $7452: $ca $d1 $22

	inc c                                            ; $7455: $0c
	sub b                                            ; $7456: $90
	ret z                                            ; $7457: $c8

	pop de                                           ; $7458: $d1
	add hl, hl                                       ; $7459: $29
	inc c                                            ; $745a: $0c
	db $fd                                           ; $745b: $fd
	sub d                                            ; $745c: $92
	jp z, $22d1                                      ; $745d: $ca $d1 $22

	inc c                                            ; $7460: $0c
	sub b                                            ; $7461: $90
	ret z                                            ; $7462: $c8

	pop de                                           ; $7463: $d1
	ld a, [hl+]                                      ; $7464: $2a
	inc c                                            ; $7465: $0c
	db $fd                                           ; $7466: $fd
	sub d                                            ; $7467: $92
	ret                                              ; $7468: $c9


	pop de                                           ; $7469: $d1
	daa                                              ; $746a: $27
	inc c                                            ; $746b: $0c
	sub b                                            ; $746c: $90
	ret z                                            ; $746d: $c8

	pop de                                           ; $746e: $d1

jr_035_746f:
	ld a, [hl+]                                      ; $746f: $2a
	inc c                                            ; $7470: $0c

jr_035_7471:
	db $fd                                           ; $7471: $fd

jr_035_7472:
	sub d                                            ; $7472: $92
	ret                                              ; $7473: $c9


	pop de                                           ; $7474: $d1
	dec h                                            ; $7475: $25
	inc c                                            ; $7476: $0c
	sub b                                            ; $7477: $90
	ret z                                            ; $7478: $c8

	pop de                                           ; $7479: $d1
	add hl, hl                                       ; $747a: $29
	inc c                                            ; $747b: $0c
	db $fd                                           ; $747c: $fd
	sub d                                            ; $747d: $92
	jp z, $21d1                                      ; $747e: $ca $d1 $21

	inc c                                            ; $7481: $0c
	sub b                                            ; $7482: $90
	ret z                                            ; $7483: $c8

	pop de                                           ; $7484: $d1
	daa                                              ; $7485: $27
	inc c                                            ; $7486: $0c
	sub d                                            ; $7487: $92
	set 2, c                                         ; $7488: $cb $d1
	dec e                                            ; $748a: $1d
	inc c                                            ; $748b: $0c
	sub b                                            ; $748c: $90
	ret z                                            ; $748d: $c8

	pop de                                           ; $748e: $d1
	daa                                              ; $748f: $27
	inc c                                            ; $7490: $0c
	db $fd                                           ; $7491: $fd
	cp $b6                                           ; $7492: $fe $b6
	and b                                            ; $7494: $a0
	pop bc                                           ; $7495: $c1
	ld [bc], a                                       ; $7496: $02
	ld h, h                                          ; $7497: $64

jr_035_7498:
	inc bc                                           ; $7498: $03
	ld [hl+], a                                      ; $7499: $22

jr_035_749a:
	jr jr_035_74be                                   ; $749a: $18 $22

	inc c                                            ; $749c: $0c
	inc h                                            ; $749d: $24
	inc c                                            ; $749e: $0c
	dec h                                            ; $749f: $25
	jr jr_035_74cb                                   ; $74a0: $18 $29

	jr jr_035_746f                                   ; $74a2: $18 $cb

	ld a, [hl+]                                      ; $74a4: $2a
	jr jr_035_7471                                   ; $74a5: $18 $ca

	ld l, $18                                        ; $74a7: $2e $18
	call z, $3029                                    ; $74a9: $cc $29 $30
	res 7, [hl]                                      ; $74ac: $cb $be
	jr jr_035_74d7                                   ; $74ae: $18 $27

	ld a, [hl+]                                      ; $74b0: $2a
	dec h                                            ; $74b1: $25
	add hl, hl                                       ; $74b2: $29
	inc h                                            ; $74b3: $24
	add hl, hl                                       ; $74b4: $29
	cp [hl]                                          ; $74b5: $be
	dec h                                            ; $74b6: $25
	inc c                                            ; $74b7: $0c
	inc h                                            ; $74b8: $24
	inc c                                            ; $74b9: $0c
	ld [hl+], a                                      ; $74ba: $22
	jr jr_035_7472                                   ; $74bb: $18 $b5

	sub c                                            ; $74bd: $91

jr_035_74be:
	ld [bc], a                                       ; $74be: $02
	ld h, h                                          ; $74bf: $64
	inc bc                                           ; $74c0: $03
	ld l, $18                                        ; $74c1: $2e $18
	call z, $0c22                                    ; $74c3: $cc $22 $0c
	inc h                                            ; $74c6: $24
	inc c                                            ; $74c7: $0c
	dec h                                            ; $74c8: $25
	jr jr_035_74f4                                   ; $74c9: $18 $29

jr_035_74cb:
	jr jr_035_7498                                   ; $74cb: $18 $cb

	ld a, [hl+]                                      ; $74cd: $2a
	jr jr_035_749a                                   ; $74ce: $18 $ca

	ld l, $18                                        ; $74d0: $2e $18
	call z, $3029                                    ; $74d2: $cc $29 $30
	sra c                                            ; $74d5: $cb $29

jr_035_74d7:
	inc c                                            ; $74d7: $0c
	jr z, jr_035_74e6                                ; $74d8: $28 $0c

	add hl, hl                                       ; $74da: $29
	inc c                                            ; $74db: $0c
	jp z, $0cbe                                      ; $74dc: $ca $be $0c

	dec hl                                           ; $74df: $2b
	inc l                                            ; $74e0: $2c
	dec hl                                           ; $74e1: $2b
	inc l                                            ; $74e2: $2c
	ld l, $be                                        ; $74e3: $2e $be
	ret                                              ; $74e5: $c9


jr_035_74e6:
	jr nc, jr_035_7500                               ; $74e6: $30 $18

	dec hl                                           ; $74e8: $2b
	inc c                                            ; $74e9: $0c
	jr nc, jr_035_74f8                               ; $74ea: $30 $0c

	add hl, hl                                       ; $74ec: $29
	jr jr_035_7518                                   ; $74ed: $18 $29

	jr @-$49                                         ; $74ef: $18 $b5

	pop bc                                           ; $74f1: $c1
	ld [bc], a                                       ; $74f2: $02
	ld h, h                                          ; $74f3: $64

jr_035_74f4:
	inc bc                                           ; $74f4: $03
	db $fd                                           ; $74f5: $fd
	ld a, [hl-]                                      ; $74f6: $3a
	ld [hl], l                                       ; $74f7: $75

jr_035_74f8:
	add hl, hl                                       ; $74f8: $29
	jr @+$2b                                         ; $74f9: $18 $29

	inc c                                            ; $74fb: $0c
	sra e                                            ; $74fc: $cb $2b
	inc c                                            ; $74fe: $0c
	dec l                                            ; $74ff: $2d

jr_035_7500:
	jr @-$34                                         ; $7500: $18 $ca

	jr nc, jr_035_751c                               ; $7502: $30 $18

	ld l, $18                                        ; $7504: $2e $18
	ld l, $0c                                        ; $7506: $2e $0c
	jr nc, jr_035_7516                               ; $7508: $30 $0c

jr_035_750a:
	ret                                              ; $750a: $c9


	ld sp, $3518                                     ; $750b: $31 $18 $35
	jr @-$49                                         ; $750e: $18 $b5

	pop bc                                           ; $7510: $c1

jr_035_7511:
	ld [bc], a                                       ; $7511: $02
	ld h, h                                          ; $7512: $64
	inc bc                                           ; $7513: $03
	db $fd                                           ; $7514: $fd
	ld a, [hl-]                                      ; $7515: $3a

jr_035_7516:
	ld [hl], l                                       ; $7516: $75
	add hl, hl                                       ; $7517: $29

jr_035_7518:
	inc c                                            ; $7518: $0c
	jp z, $0c2e                                      ; $7519: $ca $2e $0c

jr_035_751c:
	call z, $1829                                    ; $751c: $cc $29 $18
	dec h                                            ; $751f: $25
	inc c                                            ; $7520: $0c
	add hl, hl                                       ; $7521: $29
	inc c                                            ; $7522: $0c
	sra [hl]                                         ; $7523: $cb $2e
	inc c                                            ; $7525: $0c
	ret                                              ; $7526: $c9


	ld sp, $300c                                     ; $7527: $31 $0c $30
	inc c                                            ; $752a: $0c
	call z, $0c29                                    ; $752b: $cc $29 $0c
	sra l                                            ; $752e: $cb $2d
	inc c                                            ; $7530: $0c
	jp z, $0c30                                      ; $7531: $ca $30 $0c

	ld l, $18                                        ; $7534: $2e $18
	ld l, $18                                        ; $7536: $2e $18
	cp $ff                                           ; $7538: $fe $ff
	ld [hl+], a                                      ; $753a: $22
	jr jr_035_7562                                   ; $753b: $18 $25

	jr jr_035_750a                                   ; $753d: $18 $cb

	pop de                                           ; $753f: $d1
	add hl, hl                                       ; $7540: $29
	jr nc, jr_035_756a                               ; $7541: $30 $27

	jr jr_035_756f                                   ; $7543: $18 $2a

	jr jr_035_7511                                   ; $7545: $18 $ca

	pop de                                           ; $7547: $d1
	ld l, $30                                        ; $7548: $2e $30
	db $fd                                           ; $754a: $fd
	cp $b6                                           ; $754b: $fe $b6
	and b                                            ; $754d: $a0
	ld hl, $0423                                     ; $754e: $21 $23 $04
	ld bc, $e4fd                                     ; $7551: $01 $fd $e4
	ld [hl], l                                       ; $7554: $75
	db $fd                                           ; $7555: $fd
	db $e4                                           ; $7556: $e4
	ld [hl], l                                       ; $7557: $75
	db $fd                                           ; $7558: $fd
	db $ec                                           ; $7559: $ec
	ld [hl], l                                       ; $755a: $75
	db $fd                                           ; $755b: $fd
	db $e4                                           ; $755c: $e4
	ld [hl], l                                       ; $755d: $75
	db $fd                                           ; $755e: $fd
	db $ec                                           ; $755f: $ec
	ld [hl], l                                       ; $7560: $75
	db $fd                                           ; $7561: $fd

jr_035_7562:
	db $e4                                           ; $7562: $e4
	ld [hl], l                                       ; $7563: $75
	cp [hl]                                          ; $7564: $be
	inc c                                            ; $7565: $0c
	ld de, $1824                                     ; $7566: $11 $24 $18
	inc h                                            ; $7569: $24

jr_035_756a:
	ld d, $15                                        ; $756a: $16 $15
	ld d, $11                                        ; $756c: $16 $11
	cp [hl]                                          ; $756e: $be

jr_035_756f:
	jp nz, $237f                                     ; $756f: $c2 $7f $23

	db $fd                                           ; $7572: $fd
	db $e4                                           ; $7573: $e4
	ld [hl], l                                       ; $7574: $75
	db $fd                                           ; $7575: $fd
	db $e4                                           ; $7576: $e4
	ld [hl], l                                       ; $7577: $75
	db $fd                                           ; $7578: $fd
	db $ec                                           ; $7579: $ec
	ld [hl], l                                       ; $757a: $75
	db $fd                                           ; $757b: $fd
	db $e4                                           ; $757c: $e4
	ld [hl], l                                       ; $757d: $75
	ei                                               ; $757e: $fb
	ld de, $7f0c                                     ; $757f: $11 $0c $7f
	inc h                                            ; $7582: $24
	add hl, hl                                       ; $7583: $29
	inc c                                            ; $7584: $0c
	ld a, a                                          ; $7585: $7f
	inc hl                                           ; $7586: $23
	jr jr_035_7595                                   ; $7587: $18 $0c

	ld a, a                                          ; $7589: $7f
	inc h                                            ; $758a: $24
	add hl, hl                                       ; $758b: $29
	inc c                                            ; $758c: $0c
	ei                                               ; $758d: $fb
	ld [bc], a                                       ; $758e: $02
	ld a, a                                          ; $758f: $7f
	inc hl                                           ; $7590: $23
	jr jr_035_759f                                   ; $7591: $18 $0c

	ld a, a                                          ; $7593: $7f
	inc h                                            ; $7594: $24

jr_035_7595:
	jr z, jr_035_75a3                                ; $7595: $28 $0c

	ld a, a                                          ; $7597: $7f
	inc hl                                           ; $7598: $23
	inc de                                           ; $7599: $13
	inc c                                            ; $759a: $0c
	ld a, a                                          ; $759b: $7f
	inc h                                            ; $759c: $24
	jr z, jr_035_75ab                                ; $759d: $28 $0c

jr_035_759f:
	ld a, a                                          ; $759f: $7f
	inc hl                                           ; $75a0: $23
	cp [hl]                                          ; $75a1: $be
	inc c                                            ; $75a2: $0c

jr_035_75a3:
	ld de, $181d                                     ; $75a3: $11 $1d $18
	dec e                                            ; $75a6: $1d
	cp [hl]                                          ; $75a7: $be
	jp nz, $237f                                     ; $75a8: $c2 $7f $23

jr_035_75ab:
	db $fd                                           ; $75ab: $fd
	db $e4                                           ; $75ac: $e4
	ld [hl], l                                       ; $75ad: $75
	db $fd                                           ; $75ae: $fd
	db $e4                                           ; $75af: $e4
	ld [hl], l                                       ; $75b0: $75
	db $fd                                           ; $75b1: $fd
	db $fc                                           ; $75b2: $fc
	ld [hl], l                                       ; $75b3: $75
	db $fd                                           ; $75b4: $fd
	db $fc                                           ; $75b5: $fc
	ld [hl], l                                       ; $75b6: $75
	db $fd                                           ; $75b7: $fd
	db $f4                                           ; $75b8: $f4
	ld [hl], l                                       ; $75b9: $75
	db $fd                                           ; $75ba: $fd
	db $f4                                           ; $75bb: $f4
	ld [hl], l                                       ; $75bc: $75
	db $fd                                           ; $75bd: $fd
	db $e4                                           ; $75be: $e4
	ld [hl], l                                       ; $75bf: $75
	db $fd                                           ; $75c0: $fd
	db $e4                                           ; $75c1: $e4
	ld [hl], l                                       ; $75c2: $75
	jp nz, $237f                                     ; $75c3: $c2 $7f $23

	db $fd                                           ; $75c6: $fd
	db $e4                                           ; $75c7: $e4
	ld [hl], l                                       ; $75c8: $75
	db $fd                                           ; $75c9: $fd
	db $e4                                           ; $75ca: $e4
	ld [hl], l                                       ; $75cb: $75
	db $fd                                           ; $75cc: $fd
	db $fc                                           ; $75cd: $fc
	ld [hl], l                                       ; $75ce: $75
	db $fd                                           ; $75cf: $fd
	db $fc                                           ; $75d0: $fc
	ld [hl], l                                       ; $75d1: $75
	db $fd                                           ; $75d2: $fd
	db $e4                                           ; $75d3: $e4
	ld [hl], l                                       ; $75d4: $75
	db $fd                                           ; $75d5: $fd
	db $e4                                           ; $75d6: $e4
	ld [hl], l                                       ; $75d7: $75
	db $fd                                           ; $75d8: $fd
	db $f4                                           ; $75d9: $f4
	ld [hl], l                                       ; $75da: $75
	cp [hl]                                          ; $75db: $be
	inc c                                            ; $75dc: $0c
	ld d, $22                                        ; $75dd: $16 $22
	ld de, $be1d                                     ; $75df: $11 $1d $be
	cp $ff                                           ; $75e2: $fe $ff
	cp [hl]                                          ; $75e4: $be
	inc c                                            ; $75e5: $0c
	ld d, $25                                        ; $75e6: $16 $25
	ld de, $be25                                     ; $75e8: $11 $25 $be
	db $fd                                           ; $75eb: $fd
	cp [hl]                                          ; $75ec: $be
	inc c                                            ; $75ed: $0c
	ld d, $27                                        ; $75ee: $16 $27
	ld [de], a                                       ; $75f0: $12
	daa                                              ; $75f1: $27

jr_035_75f2:
	cp [hl]                                          ; $75f2: $be
	db $fd                                           ; $75f3: $fd
	cp [hl]                                          ; $75f4: $be
	inc c                                            ; $75f5: $0c
	ld de, $1824                                     ; $75f6: $11 $24 $18
	inc h                                            ; $75f9: $24
	cp [hl]                                          ; $75fa: $be
	db $fd                                           ; $75fb: $fd
	cp [hl]                                          ; $75fc: $be
	inc c                                            ; $75fd: $0c
	dec de                                           ; $75fe: $1b
	daa                                              ; $75ff: $27
	ld [de], a                                       ; $7600: $12
	daa                                              ; $7601: $27
	cp [hl]                                          ; $7602: $be
	db $fd                                           ; $7603: $fd
	or [hl]                                          ; $7604: $b6
	ldh a, [$c3]                                     ; $7605: $f0 $c3
	ld [bc], a                                       ; $7607: $02
	nop                                              ; $7608: $00
	nop                                              ; $7609: $00
	ld a, l                                          ; $760a: $7d
	ld [de], a                                       ; $760b: $12
	ld a, [hl]                                       ; $760c: $7e
	inc l                                            ; $760d: $2c
	nop                                              ; $760e: $00
	and c                                            ; $760f: $a1
	dec h                                            ; $7610: $25
	jr jr_035_7635                                   ; $7611: $18 $22

	inc c                                            ; $7613: $0c
	ld a, l                                          ; $7614: $7d
	nop                                              ; $7615: $00
	pop de                                           ; $7616: $d1
	daa                                              ; $7617: $27
	inc c                                            ; $7618: $0c
	ld a, l                                          ; $7619: $7d
	ld b, $25                                        ; $761a: $06 $25
	jr jr_035_7640                                   ; $761c: $18 $22

	jr jr_035_75f2                                   ; $761e: $18 $d2

	dec h                                            ; $7620: $25
	dec bc                                           ; $7621: $0b
	ld a, l                                          ; $7622: $7d
	ld c, $00                                        ; $7623: $0e $00
	ld bc, $25d1                                     ; $7625: $01 $d1 $25
	inc c                                            ; $7628: $0c
	ld [hl+], a                                      ; $7629: $22
	inc c                                            ; $762a: $0c
	db $d3                                           ; $762b: $d3
	ld a, l                                          ; $762c: $7d
	inc de                                           ; $762d: $13
	daa                                              ; $762e: $27
	inc c                                            ; $762f: $0c
	ld a, l                                          ; $7630: $7d
	ld a, [bc]                                       ; $7631: $0a
	dec h                                            ; $7632: $25
	jr @-$2d                                         ; $7633: $18 $d1

jr_035_7635:
	ld [hl+], a                                      ; $7635: $22
	ld b, b                                          ; $7636: $40
	db $d3                                           ; $7637: $d3
	ld a, [hl]                                       ; $7638: $7e
	dec hl                                           ; $7639: $2b
	nop                                              ; $763a: $00
	and c                                            ; $763b: $a1
	ld b, e                                          ; $763c: $43
	dec b                                            ; $763d: $05
	dec [hl]                                         ; $763e: $35
	add hl, bc                                       ; $763f: $09

jr_035_7640:
	ret z                                            ; $7640: $c8

	cpl                                              ; $7641: $2f
	inc bc                                           ; $7642: $03
	add hl, hl                                       ; $7643: $29
	rlca                                             ; $7644: $07
	jp nc, $23c9                                     ; $7645: $d2 $c9 $23

	rlca                                             ; $7648: $07
	dec e                                            ; $7649: $1d
	inc bc                                           ; $764a: $03
	ld a, [de]                                       ; $764b: $1a
	dec b                                            ; $764c: $05
	jp z, $15d3                                      ; $764d: $ca $d3 $15

	ld [$050e], sp                                   ; $7650: $08 $0e $05
	rrc d                                            ; $7653: $cb $0a
	inc b                                            ; $7655: $04
	jp nc, $0807                                     ; $7656: $d2 $07 $08

	call z, $0406                                    ; $7659: $cc $06 $04
	rst $38                                          ; $765c: $ff
	or [hl]                                          ; $765d: $b6
	ldh a, [$a1]                                     ; $765e: $f0 $a1
	nop                                              ; $7660: $00
	nop                                              ; $7661: $00
	nop                                              ; $7662: $00
	ld a, l                                          ; $7663: $7d
	dec b                                            ; $7664: $05
	ld a, [hl]                                       ; $7665: $7e
	ld sp, $a100                                     ; $7666: $31 $00 $a1
	ld a, [hl+]                                      ; $7669: $2a
	jr @+$29                                         ; $766a: $18 $27

	inc c                                            ; $766c: $0c
	inc l                                            ; $766d: $2c
	inc c                                            ; $766e: $0c
	ld a, [hl+]                                      ; $766f: $2a
	jr jr_035_7699                                   ; $7670: $18 $27

	jr jr_035_769e                                   ; $7672: $18 $2a

	dec bc                                           ; $7674: $0b
	nop                                              ; $7675: $00
	ld bc, $0c2a                                     ; $7676: $01 $2a $0c
	daa                                              ; $7679: $27
	inc c                                            ; $767a: $0c
	inc l                                            ; $767b: $2c
	inc c                                            ; $767c: $0c
	ld a, [hl+]                                      ; $767d: $2a
	jr jr_035_76a7                                   ; $767e: $18 $27

	ld b, b                                          ; $7680: $40
	sub d                                            ; $7681: $92
	ld a, [hl]                                       ; $7682: $7e
	inc l                                            ; $7683: $2c
	nop                                              ; $7684: $00
	and c                                            ; $7685: $a1
	cp [hl]                                          ; $7686: $be
	ld b, $60                                        ; $7687: $06 $60
	ld d, d                                          ; $7689: $52
	ld c, h                                          ; $768a: $4c
	ld b, [hl]                                       ; $768b: $46
	ld b, b                                          ; $768c: $40
	ld a, [hl-]                                      ; $768d: $3a
	scf                                              ; $768e: $37
	cp [hl]                                          ; $768f: $be
	add $32                                          ; $7690: $c6 $32
	ld b, $2b                                        ; $7692: $06 $2b
	ld b, $c4                                        ; $7694: $06 $c4
	daa                                              ; $7696: $27
	ld b, $24                                        ; $7697: $06 $24

jr_035_7699:
	ld b, $c2                                        ; $7699: $06 $c2
	inc hl                                           ; $769b: $23
	ld b, $ff                                        ; $769c: $06 $ff

jr_035_769e:
	or h                                             ; $769e: $b4
	ldh a, [rAUD4ENV]                                ; $769f: $f0 $21
	inc hl                                           ; $76a1: $23
	cp [hl]                                          ; $76a2: $be
	inc c                                            ; $76a3: $0c
	inc h                                            ; $76a4: $24
	inc hl                                           ; $76a5: $23
	ld [hl+], a                                      ; $76a6: $22

jr_035_76a7:
	ld hl, $1f20                                     ; $76a7: $21 $20 $1f
	ld e, $1d                                        ; $76aa: $1e $1d
	inc e                                            ; $76ac: $1c
	dec de                                           ; $76ad: $1b
	ld a, [de]                                       ; $76ae: $1a
	add hl, de                                       ; $76af: $19
	jr jr_035_76c9                                   ; $76b0: $18 $17

	ld d, $be                                        ; $76b2: $16 $be
	dec d                                            ; $76b4: $15
	inc [hl]                                         ; $76b5: $34
	rst $38                                          ; $76b6: $ff
	cp $b6                                           ; $76b7: $fe $b6
	cp [hl]                                          ; $76b9: $be
	sub c                                            ; $76ba: $91
	inc bc                                           ; $76bb: $03
	sub [hl]                                         ; $76bc: $96
	ld [bc], a                                       ; $76bd: $02
	jr z, jr_035_76cc                                ; $76be: $28 $0c

	add hl, hl                                       ; $76c0: $29
	jr jr_035_76ed                                   ; $76c1: $18 $2a

	jr jr_035_76f0                                   ; $76c3: $18 $2b

	jr jr_035_76f3                                   ; $76c5: $18 $2c

jr_035_76c7:
	inc c                                            ; $76c7: $0c
	rst GetHLinHL                                          ; $76c8: $cf

jr_035_76c9:
	db $fd                                           ; $76c9: $fd
	jr z, @+$7a                                      ; $76ca: $28 $78

jr_035_76cc:
	jp nc, $0c20                                     ; $76cc: $d2 $20 $0c

	inc hl                                           ; $76cf: $23
	inc c                                            ; $76d0: $0c
	dec h                                            ; $76d1: $25
	inc c                                            ; $76d2: $0c
	or l                                             ; $76d3: $b5
	pop bc                                           ; $76d4: $c1
	nop                                              ; $76d5: $00
	sub [hl]                                         ; $76d6: $96
	rlca                                             ; $76d7: $07
	inc l                                            ; $76d8: $2c
	inc c                                            ; $76d9: $0c
	rst GetHLinHL                                          ; $76da: $cf
	db $fd                                           ; $76db: $fd
	jr z, jr_035_7756                                ; $76dc: $28 $78

	jp nc, $0c20                                     ; $76de: $d2 $20 $0c

	inc hl                                           ; $76e1: $23
	inc c                                            ; $76e2: $0c
	or l                                             ; $76e3: $b5
	jp nz, $9600                                     ; $76e4: $c2 $00 $96

	dec b                                            ; $76e7: $05
	cpl                                              ; $76e8: $2f
	inc c                                            ; $76e9: $0c
	ld l, $0c                                        ; $76ea: $2e $0c
	rst GetHLinHL                                          ; $76ec: $cf

jr_035_76ed:
	db $fd                                           ; $76ed: $fd
	jr z, @+$7a                                      ; $76ee: $28 $78

jr_035_76f0:
	jp nc, $0c20                                     ; $76f0: $d2 $20 $0c

jr_035_76f3:
	inc hl                                           ; $76f3: $23
	inc c                                            ; $76f4: $0c
	db $d3                                           ; $76f5: $d3
	dec h                                            ; $76f6: $25
	inc c                                            ; $76f7: $0c
	jr nz, jr_035_7706                               ; $76f8: $20 $0c

	jp nc, $0c20                                     ; $76fa: $d2 $20 $0c

	inc hl                                           ; $76fd: $23
	inc c                                            ; $76fe: $0c

jr_035_76ff:
	dec h                                            ; $76ff: $25
	inc c                                            ; $7700: $0c
	db $d3                                           ; $7701: $d3
	cp [hl]                                          ; $7702: $be
	inc c                                            ; $7703: $0c
	jr nz, jr_035_7729                               ; $7704: $20 $23

jr_035_7706:
	daa                                              ; $7706: $27
	jr nz, jr_035_76c7                               ; $7707: $20 $be

	or l                                             ; $7709: $b5
	pop bc                                           ; $770a: $c1
	inc bc                                           ; $770b: $03
	inc d                                            ; $770c: $14
	ld bc, $0cbe                                     ; $770d: $01 $be $0c
	daa                                              ; $7710: $27
	dec h                                            ; $7711: $25
	inc h                                            ; $7712: $24
	dec h                                            ; $7713: $25
	cp [hl]                                          ; $7714: $be
	daa                                              ; $7715: $27
	jr jr_035_7738                                   ; $7716: $18 $20

	inc c                                            ; $7718: $0c
	ld [hl+], a                                      ; $7719: $22
	jr @-$2f                                         ; $771a: $18 $cf

	db $fd                                           ; $771c: $fd
	jr z, @+$7a                                      ; $771d: $28 $78

	jp nc, $0c20                                     ; $771f: $d2 $20 $0c

	inc hl                                           ; $7722: $23
	inc c                                            ; $7723: $0c
	dec h                                            ; $7724: $25
	inc c                                            ; $7725: $0c
	or l                                             ; $7726: $b5
	pop bc                                           ; $7727: $c1
	nop                                              ; $7728: $00

jr_035_7729:
	sub [hl]                                         ; $7729: $96
	rlca                                             ; $772a: $07
	inc l                                            ; $772b: $2c
	inc c                                            ; $772c: $0c
	rst GetHLinHL                                          ; $772d: $cf
	db $fd                                           ; $772e: $fd
	jr z, @+$7a                                      ; $772f: $28 $78

	jp nc, $0c20                                     ; $7731: $d2 $20 $0c

	inc hl                                           ; $7734: $23
	inc c                                            ; $7735: $0c
	or l                                             ; $7736: $b5
	pop bc                                           ; $7737: $c1

jr_035_7738:
	nop                                              ; $7738: $00
	sub [hl]                                         ; $7739: $96
	dec b                                            ; $773a: $05
	cpl                                              ; $773b: $2f
	inc c                                            ; $773c: $0c
	ld l, $0c                                        ; $773d: $2e $0c
	rst GetHLinHL                                          ; $773f: $cf
	db $fd                                           ; $7740: $fd
	jr z, jr_035_77bb                                ; $7741: $28 $78

	jp nc, $0c20                                     ; $7743: $d2 $20 $0c

	inc hl                                           ; $7746: $23
	inc c                                            ; $7747: $0c
	db $d3                                           ; $7748: $d3
	dec h                                            ; $7749: $25
	inc c                                            ; $774a: $0c
	jr nz, jr_035_7759                               ; $774b: $20 $0c

	jp nc, $0c20                                     ; $774d: $d2 $20 $0c

	inc hl                                           ; $7750: $23
	inc c                                            ; $7751: $0c
	dec h                                            ; $7752: $25
	inc c                                            ; $7753: $0c
	db $d3                                           ; $7754: $d3
	cp [hl]                                          ; $7755: $be

jr_035_7756:
	inc c                                            ; $7756: $0c
	jr nz, jr_035_777c                               ; $7757: $20 $23

jr_035_7759:
	daa                                              ; $7759: $27
	jr nz, jr_035_777f                               ; $775a: $20 $23

	cp [hl]                                          ; $775c: $be
	or l                                             ; $775d: $b5
	pop bc                                           ; $775e: $c1
	nop                                              ; $775f: $00
	ld [hl-], a                                      ; $7760: $32
	ld [bc], a                                       ; $7761: $02
	dec h                                            ; $7762: $25
	jr jr_035_778c                                   ; $7763: $18 $27

	inc c                                            ; $7765: $0c
	add hl, hl                                       ; $7766: $29
	jr jr_035_76ff                                   ; $7767: $18 $96

	nop                                              ; $7769: $00
	nop                                              ; $776a: $00
	sub a                                            ; $776b: $97
	ld a, [hl-]                                      ; $776c: $3a
	jr nz, jr_035_7793                               ; $776d: $20 $24

	rst GetHLinHL                                          ; $776f: $cf
	sub a                                            ; $7770: $97
	nop                                              ; $7771: $00
	db $fd                                           ; $7772: $fd
	ld c, h                                          ; $7773: $4c
	ld a, b                                          ; $7774: $78
	db $fd                                           ; $7775: $fd
	ld c, h                                          ; $7776: $4c
	ld a, b                                          ; $7777: $78
	ld [hl], l                                       ; $7778: $75
	db $fd                                           ; $7779: $fd
	ld c, h                                          ; $777a: $4c
	ld a, b                                          ; $777b: $78

jr_035_777c:
	ld [hl], b                                       ; $777c: $70
	add hl, de                                       ; $777d: $19
	inc c                                            ; $777e: $0c

jr_035_777f:
	or l                                             ; $777f: $b5
	or d                                             ; $7780: $b2
	ld bc, $0432                                     ; $7781: $01 $32 $04
	dec h                                            ; $7784: $25
	inc c                                            ; $7785: $0c
	db $d3                                           ; $7786: $d3
	dec h                                            ; $7787: $25
	inc c                                            ; $7788: $0c
	jp nc, $0c29                                     ; $7789: $d2 $29 $0c

jr_035_778c:
	db $d3                                           ; $778c: $d3
	jr nz, jr_035_779b                               ; $778d: $20 $0c

	jp nc, $0c20                                     ; $778f: $d2 $20 $0c

	db $d3                                           ; $7792: $d3

jr_035_7793:
	jr nz, jr_035_77a1                               ; $7793: $20 $0c

	jp nc, $0c20                                     ; $7795: $d2 $20 $0c

	or l                                             ; $7798: $b5
	sub c                                            ; $7799: $91
	nop                                              ; $779a: $00

jr_035_779b:
	ld [hl-], a                                      ; $779b: $32
	ld b, $be                                        ; $779c: $06 $be
	jr jr_035_77ca                                   ; $779e: $18 $2a

	daa                                              ; $77a0: $27

jr_035_77a1:
	dec h                                            ; $77a1: $25
	inc hl                                           ; $77a2: $23
	cp [hl]                                          ; $77a3: $be
	rst GetHLinHL                                          ; $77a4: $cf
	db $fd                                           ; $77a5: $fd
	ld c, h                                          ; $77a6: $4c
	ld a, b                                          ; $77a7: $78
	jp nc, $0c1e                                     ; $77a8: $d2 $1e $0c

	ld [hl+], a                                      ; $77ab: $22
	inc c                                            ; $77ac: $0c
	dec h                                            ; $77ad: $25
	inc c                                            ; $77ae: $0c
	db $d3                                           ; $77af: $d3
	ld e, $0c                                        ; $77b0: $1e $0c
	ld [hl+], a                                      ; $77b2: $22
	inc c                                            ; $77b3: $0c
	daa                                              ; $77b4: $27
	inc c                                            ; $77b5: $0c
	jp nc, $0c1e                                     ; $77b6: $d2 $1e $0c

	ld [hl+], a                                      ; $77b9: $22
	inc c                                            ; $77ba: $0c

jr_035_77bb:
	jp z, $bed1                                      ; $77bb: $ca $d1 $be

	jr jr_035_77f1                                   ; $77be: $18 $31

	ld sp, $2e2f                                     ; $77c0: $31 $2f $2e
	cp [hl]                                          ; $77c3: $be
	rst GetHLinHL                                          ; $77c4: $cf
	ld [hl], l                                       ; $77c5: $75
	db $fd                                           ; $77c6: $fd
	ld c, h                                          ; $77c7: $4c
	ld a, b                                          ; $77c8: $78
	ld [hl], b                                       ; $77c9: $70

jr_035_77ca:
	add hl, de                                       ; $77ca: $19
	inc c                                            ; $77cb: $0c
	dec e                                            ; $77cc: $1d
	inc c                                            ; $77cd: $0c
	jr nz, jr_035_77dc                               ; $77ce: $20 $0c

	db $d3                                           ; $77d0: $d3
	add hl, de                                       ; $77d1: $19
	inc c                                            ; $77d2: $0c
	dec e                                            ; $77d3: $1d
	inc c                                            ; $77d4: $0c
	ld [hl+], a                                      ; $77d5: $22
	inc c                                            ; $77d6: $0c
	jp nc, $0c19                                     ; $77d7: $d2 $19 $0c

	dec e                                            ; $77da: $1d
	inc c                                            ; $77db: $0c

jr_035_77dc:
	inc hl                                           ; $77dc: $23
	inc c                                            ; $77dd: $0c
	or l                                             ; $77de: $b5
	pop af                                           ; $77df: $f1
	inc bc                                           ; $77e0: $03
	ld [hl-], a                                      ; $77e1: $32
	ld b, $00                                        ; $77e2: $06 $00
	inc c                                            ; $77e4: $0c
	jr nz, jr_035_77ff                               ; $77e5: $20 $18

	ld [hl+], a                                      ; $77e7: $22
	jr jr_035_780f                                   ; $77e8: $18 $25

	jr jr_035_77bb                                   ; $77ea: $18 $cf

	ld h, d                                          ; $77ec: $62
	db $fd                                           ; $77ed: $fd
	ld c, h                                          ; $77ee: $4c
	ld a, b                                          ; $77ef: $78
	ld [hl], b                                       ; $77f0: $70

jr_035_77f1:
	jp nc, $0c1e                                     ; $77f1: $d2 $1e $0c

	ld [hl+], a                                      ; $77f4: $22
	inc c                                            ; $77f5: $0c
	dec h                                            ; $77f6: $25
	inc c                                            ; $77f7: $0c
	db $d3                                           ; $77f8: $d3
	ld e, $0c                                        ; $77f9: $1e $0c
	ld [hl+], a                                      ; $77fb: $22
	inc c                                            ; $77fc: $0c
	daa                                              ; $77fd: $27
	inc c                                            ; $77fe: $0c

jr_035_77ff:
	jp nc, $0c1e                                     ; $77ff: $d2 $1e $0c

	ld [hl+], a                                      ; $7802: $22
	inc c                                            ; $7803: $0c
	call $d190                                       ; $7804: $cd $90 $d1
	cp [hl]                                          ; $7807: $be
	jr jr_035_7834                                   ; $7808: $18 $2a

	ld a, [hl+]                                      ; $780a: $2a
	add hl, hl                                       ; $780b: $29
	daa                                              ; $780c: $27
	cp [hl]                                          ; $780d: $be
	rst GetHLinHL                                          ; $780e: $cf

jr_035_780f:
	ld [hl], l                                       ; $780f: $75
	db $fd                                           ; $7810: $fd
	ld c, h                                          ; $7811: $4c
	ld a, b                                          ; $7812: $78
	ld [hl], b                                       ; $7813: $70
	add hl, de                                       ; $7814: $19
	inc c                                            ; $7815: $0c
	dec e                                            ; $7816: $1d
	inc c                                            ; $7817: $0c
	jr nz, jr_035_7826                               ; $7818: $20 $0c

	db $d3                                           ; $781a: $d3
	add hl, de                                       ; $781b: $19
	inc c                                            ; $781c: $0c
	dec e                                            ; $781d: $1d
	inc c                                            ; $781e: $0c
	ld [hl+], a                                      ; $781f: $22
	inc c                                            ; $7820: $0c
	jp nc, $0c19                                     ; $7821: $d2 $19 $0c

	dec e                                            ; $7824: $1d
	inc c                                            ; $7825: $0c

jr_035_7826:
	cp $ff                                           ; $7826: $fe $ff
	or l                                             ; $7828: $b5
	ldh a, [c]                                       ; $7829: $f2
	ld bc, $0196                                     ; $782a: $01 $96 $01
	jr nz, jr_035_783b                               ; $782d: $20 $0c

	inc hl                                           ; $782f: $23
	inc c                                            ; $7830: $0c
	dec h                                            ; $7831: $25
	inc c                                            ; $7832: $0c
	rst GetHLinHL                                          ; $7833: $cf

jr_035_7834:
	db $d3                                           ; $7834: $d3
	jr nz, jr_035_7843                               ; $7835: $20 $0c

	inc hl                                           ; $7837: $23
	inc c                                            ; $7838: $0c
	daa                                              ; $7839: $27
	inc c                                            ; $783a: $0c

jr_035_783b:
	rst GetHLinHL                                          ; $783b: $cf
	jp nc, $0c20                                     ; $783c: $d2 $20 $0c

	inc hl                                           ; $783f: $23
	inc c                                            ; $7840: $0c
	add hl, hl                                       ; $7841: $29
	inc c                                            ; $7842: $0c

jr_035_7843:
	rst GetHLinHL                                          ; $7843: $cf
	db $d3                                           ; $7844: $d3
	jr nz, jr_035_7853                               ; $7845: $20 $0c

	inc hl                                           ; $7847: $23
	inc c                                            ; $7848: $0c
	daa                                              ; $7849: $27
	inc c                                            ; $784a: $0c
	db $fd                                           ; $784b: $fd
	or l                                             ; $784c: $b5
	ldh a, [c]                                       ; $784d: $f2
	ld [bc], a                                       ; $784e: $02
	sub [hl]                                         ; $784f: $96
	ld bc, $0c1e                                     ; $7850: $01 $1e $0c

jr_035_7853:
	ld [hl+], a                                      ; $7853: $22
	inc c                                            ; $7854: $0c
	dec h                                            ; $7855: $25
	inc c                                            ; $7856: $0c
	rst GetHLinHL                                          ; $7857: $cf
	db $d3                                           ; $7858: $d3
	ld e, $0c                                        ; $7859: $1e $0c
	ld [hl+], a                                      ; $785b: $22
	inc c                                            ; $785c: $0c
	daa                                              ; $785d: $27
	inc c                                            ; $785e: $0c
	rst GetHLinHL                                          ; $785f: $cf
	jp nc, $0c1e                                     ; $7860: $d2 $1e $0c

	ld [hl+], a                                      ; $7863: $22
	inc c                                            ; $7864: $0c
	jr z, jr_035_7873                                ; $7865: $28 $0c

	rst GetHLinHL                                          ; $7867: $cf
	db $d3                                           ; $7868: $d3
	ld e, $0c                                        ; $7869: $1e $0c
	ld [hl+], a                                      ; $786b: $22
	inc c                                            ; $786c: $0c
	daa                                              ; $786d: $27
	inc c                                            ; $786e: $0c
	rst GetHLinHL                                          ; $786f: $cf
	jp nc, $0c1e                                     ; $7870: $d2 $1e $0c

jr_035_7873:
	ld [hl+], a                                      ; $7873: $22
	inc c                                            ; $7874: $0c
	rst GetHLinHL                                          ; $7875: $cf
	db $d3                                           ; $7876: $d3
	dec h                                            ; $7877: $25
	inc c                                            ; $7878: $0c
	ld [hl+], a                                      ; $7879: $22
	inc c                                            ; $787a: $0c
	db $fd                                           ; $787b: $fd
	cp $b6                                           ; $787c: $fe $b6
	cp [hl]                                          ; $787e: $be
	sub c                                            ; $787f: $91
	inc bc                                           ; $7880: $03
	ld a, [$2d02]                                    ; $7881: $fa $02 $2d
	inc c                                            ; $7884: $0c
	ld l, $18                                        ; $7885: $2e $18
	cpl                                              ; $7887: $2f
	jr jr_035_78ba                                   ; $7888: $18 $30

	jr @+$33                                         ; $788a: $18 $31

	inc c                                            ; $788c: $0c
	or l                                             ; $788d: $b5
	pop hl                                           ; $788e: $e1
	ld [bc], a                                       ; $788f: $02
	ld [hl-], a                                      ; $7890: $32
	ld bc, $0c38                                     ; $7891: $01 $38 $0c
	jr c, jr_035_78a2                                ; $7894: $38 $0c

	ret z                                            ; $7896: $c8

	jr c, jr_035_78a5                                ; $7897: $38 $0c

	push bc                                          ; $7899: $c5
	jr c, @+$0e                                      ; $789a: $38 $0c

	call $0c36                                       ; $789c: $cd $36 $0c
	ld [hl], $0c                                     ; $789f: $36 $0c
	ret z                                            ; $78a1: $c8

jr_035_78a2:
	ld [hl], $0c                                     ; $78a2: $36 $0c
	push bc                                          ; $78a4: $c5

jr_035_78a5:
	ld [hl], $0c                                     ; $78a5: $36 $0c
	call $0cbe                                       ; $78a7: $cd $be $0c
	dec [hl]                                         ; $78aa: $35
	ld [hl], $38                                     ; $78ab: $36 $38
	ld sp, $c8be                                     ; $78ad: $31 $be $c8
	ld sp, $cd0c                                     ; $78b0: $31 $0c $cd
	ld sp, $c80c                                     ; $78b3: $31 $0c $c8
	ld sp, $b50c                                     ; $78b6: $31 $0c $b5
	pop de                                           ; $78b9: $d1

jr_035_78ba:
	nop                                              ; $78ba: $00
	ld a, [$3107]                                    ; $78bb: $fa $07 $31
	inc c                                            ; $78be: $0c
	or l                                             ; $78bf: $b5
	pop de                                           ; $78c0: $d1
	ld [bc], a                                       ; $78c1: $02
	ld [hl-], a                                      ; $78c2: $32
	ld bc, $0c2f                                     ; $78c3: $01 $2f $0c
	ret z                                            ; $78c6: $c8

	cpl                                              ; $78c7: $2f
	inc c                                            ; $78c8: $0c
	call $0c31                                       ; $78c9: $cd $31 $0c
	cpl                                              ; $78cc: $2f
	inc c                                            ; $78cd: $0c
	ret z                                            ; $78ce: $c8

	cpl                                              ; $78cf: $2f
	inc c                                            ; $78d0: $0c
	call $0c2c                                       ; $78d1: $cd $2c $0c
	ret z                                            ; $78d4: $c8

	inc l                                            ; $78d5: $2c
	inc c                                            ; $78d6: $0c
	call $0c2c                                       ; $78d7: $cd $2c $0c
	ret z                                            ; $78da: $c8

	inc l                                            ; $78db: $2c
	inc c                                            ; $78dc: $0c
	push bc                                          ; $78dd: $c5
	inc l                                            ; $78de: $2c

jr_035_78df:
	inc a                                            ; $78df: $3c
	or l                                             ; $78e0: $b5
	pop bc                                           ; $78e1: $c1
	nop                                              ; $78e2: $00
	ld a, [$2c05]                                    ; $78e3: $fa $05 $2c
	inc c                                            ; $78e6: $0c
	or l                                             ; $78e7: $b5
	pop de                                           ; $78e8: $d1
	ld [bc], a                                       ; $78e9: $02
	ld [hl-], a                                      ; $78ea: $32
	ld bc, $0c2c                                     ; $78eb: $01 $2c $0c
	cp [hl]                                          ; $78ee: $be
	inc c                                            ; $78ef: $0c
	cpl                                              ; $78f0: $2f
	ld sp, $2f2c                                     ; $78f1: $31 $2c $2f
	ld sp, $2f2c                                     ; $78f4: $31 $2c $2f
	ld sp, $2f2c                                     ; $78f7: $31 $2c $2f
	ld sp, $2f2c                                     ; $78fa: $31 $2c $2f
	cp [hl]                                          ; $78fd: $be
	ret z                                            ; $78fe: $c8

	cpl                                              ; $78ff: $2f
	inc c                                            ; $7900: $0c
	call z, $0c31                                    ; $7901: $cc $31 $0c
	ret z                                            ; $7904: $c8

	ld sp, $cd0c                                     ; $7905: $31 $0c $cd
	dec [hl]                                         ; $7908: $35
	inc c                                            ; $7909: $0c
	ret z                                            ; $790a: $c8

	dec [hl]                                         ; $790b: $35
	inc c                                            ; $790c: $0c
	call $0c36                                       ; $790d: $cd $36 $0c
	dec [hl]                                         ; $7910: $35
	inc c                                            ; $7911: $0c
	ret z                                            ; $7912: $c8

	dec [hl]                                         ; $7913: $35
	inc c                                            ; $7914: $0c
	call $0c31                                       ; $7915: $cd $31 $0c
	ret z                                            ; $7918: $c8

	ld sp, $b50c                                     ; $7919: $31 $0c $b5
	pop bc                                           ; $791c: $c1
	inc bc                                           ; $791d: $03
	inc d                                            ; $791e: $14
	ld bc, $0cbe                                     ; $791f: $01 $be $0c
	inc l                                            ; $7922: $2c
	ld a, [hl+]                                      ; $7923: $2a
	add hl, hl                                       ; $7924: $29
	ld a, [hl+]                                      ; $7925: $2a
	cp [hl]                                          ; $7926: $be
	inc l                                            ; $7927: $2c
	jr @+$27                                         ; $7928: $18 $25

	inc c                                            ; $792a: $0c
	daa                                              ; $792b: $27
	jr jr_035_78df                                   ; $792c: $18 $b1

	pop hl                                           ; $792e: $e1
	ld [hl-], a                                      ; $792f: $32
	ld bc, $3892                                     ; $7930: $01 $92 $38
	inc c                                            ; $7933: $0c
	jr c, jr_035_7942                                ; $7934: $38 $0c

	ret z                                            ; $7936: $c8

	jr c, jr_035_7945                                ; $7937: $38 $0c

	push bc                                          ; $7939: $c5
	jr c, @+$0e                                      ; $793a: $38 $0c

	call $0c36                                       ; $793c: $cd $36 $0c
	ld [hl], $0c                                     ; $793f: $36 $0c
	ret z                                            ; $7941: $c8

jr_035_7942:
	ld [hl], $0c                                     ; $7942: $36 $0c
	push bc                                          ; $7944: $c5

jr_035_7945:
	ld [hl], $0c                                     ; $7945: $36 $0c
	call $0cbe                                       ; $7947: $cd $be $0c
	dec [hl]                                         ; $794a: $35
	ld [hl], $38                                     ; $794b: $36 $38
	ld sp, $c8be                                     ; $794d: $31 $be $c8
	ld sp, $cd0c                                     ; $7950: $31 $0c $cd
	ld sp, $c80c                                     ; $7953: $31 $0c $c8
	ld sp, $b50c                                     ; $7956: $31 $0c $b5
	pop bc                                           ; $7959: $c1
	nop                                              ; $795a: $00
	ld a, [$3107]                                    ; $795b: $fa $07 $31
	inc c                                            ; $795e: $0c
	or l                                             ; $795f: $b5
	pop de                                           ; $7960: $d1

jr_035_7961:
	ld [bc], a                                       ; $7961: $02
	ld h, h                                          ; $7962: $64
	ld bc, $0c2f                                     ; $7963: $01 $2f $0c
	ret z                                            ; $7966: $c8

	cpl                                              ; $7967: $2f
	inc c                                            ; $7968: $0c
	call $0c31                                       ; $7969: $cd $31 $0c
	cpl                                              ; $796c: $2f
	inc c                                            ; $796d: $0c
	ret z                                            ; $796e: $c8

	cpl                                              ; $796f: $2f
	inc c                                            ; $7970: $0c
	call $0c2c                                       ; $7971: $cd $2c $0c
	ret z                                            ; $7974: $c8

	inc l                                            ; $7975: $2c
	inc c                                            ; $7976: $0c
	call $0c2c                                       ; $7977: $cd $2c $0c
	ret z                                            ; $797a: $c8

	inc l                                            ; $797b: $2c
	inc c                                            ; $797c: $0c
	push bc                                          ; $797d: $c5
	inc l                                            ; $797e: $2c
	inc a                                            ; $797f: $3c
	or l                                             ; $7980: $b5
	pop bc                                           ; $7981: $c1
	nop                                              ; $7982: $00
	ld a, [$2c05]                                    ; $7983: $fa $05 $2c
	inc c                                            ; $7986: $0c
	or l                                             ; $7987: $b5
	pop de                                           ; $7988: $d1
	ld [bc], a                                       ; $7989: $02
	ld h, h                                          ; $798a: $64
	ld bc, $0c2c                                     ; $798b: $01 $2c $0c
	cp [hl]                                          ; $798e: $be
	inc c                                            ; $798f: $0c
	cpl                                              ; $7990: $2f
	ld sp, $2f2c                                     ; $7991: $31 $2c $2f
	ld sp, $2f2c                                     ; $7994: $31 $2c $2f
	ld sp, $2f2c                                     ; $7997: $31 $2c $2f
	ld sp, $2f2c                                     ; $799a: $31 $2c $2f
	cp [hl]                                          ; $799d: $be
	ret z                                            ; $799e: $c8

	cpl                                              ; $799f: $2f
	inc c                                            ; $79a0: $0c
	call $0c31                                       ; $79a1: $cd $31 $0c
	ret z                                            ; $79a4: $c8

	ld sp, $cd0c                                     ; $79a5: $31 $0c $cd
	dec [hl]                                         ; $79a8: $35
	inc c                                            ; $79a9: $0c
	ret z                                            ; $79aa: $c8

	dec [hl]                                         ; $79ab: $35
	inc c                                            ; $79ac: $0c
	call $0c36                                       ; $79ad: $cd $36 $0c
	dec [hl]                                         ; $79b0: $35
	inc c                                            ; $79b1: $0c
	ret z                                            ; $79b2: $c8

	dec [hl]                                         ; $79b3: $35
	inc c                                            ; $79b4: $0c
	call $0c31                                       ; $79b5: $cd $31 $0c
	ret z                                            ; $79b8: $c8

	ld sp, $c50c                                     ; $79b9: $31 $0c $c5
	ld sp, $b50c                                     ; $79bc: $31 $0c $b5
	pop bc                                           ; $79bf: $c1
	nop                                              ; $79c0: $00
	ld [hl-], a                                      ; $79c1: $32
	ld [bc], a                                       ; $79c2: $02
	add hl, hl                                       ; $79c3: $29
	jr jr_035_79f0                                   ; $79c4: $18 $2a

	inc c                                            ; $79c6: $0c
	inc l                                            ; $79c7: $2c
	jr jr_035_7961                                   ; $79c8: $18 $97

	ld a, [hl-]                                      ; $79ca: $3a
	sub [hl]                                         ; $79cb: $96
	nop                                              ; $79cc: $00
	nop                                              ; $79cd: $00
	dec h                                            ; $79ce: $25
	inc h                                            ; $79cf: $24
	or l                                             ; $79d0: $b5
	pop bc                                           ; $79d1: $c1
	inc bc                                           ; $79d2: $03
	ld [hl-], a                                      ; $79d3: $32
	inc b                                            ; $79d4: $04
	ld a, [hl]                                       ; $79d5: $7e
	inc l                                            ; $79d6: $2c
	ld a, [bc]                                       ; $79d7: $0a
	and b                                            ; $79d8: $a0
	sub a                                            ; $79d9: $97
	nop                                              ; $79da: $00
	cp [hl]                                          ; $79db: $be
	inc h                                            ; $79dc: $24
	ld e, $22                                        ; $79dd: $1e $22
	dec h                                            ; $79df: $25
	ld a, [hl+]                                      ; $79e0: $2a
	cp [hl]                                          ; $79e1: $be
	ld [hl+], a                                      ; $79e2: $22
	jr jr_035_7a0a                                   ; $79e3: $18 $25

	jr jr_035_7a11                                   ; $79e5: $18 $2a

	inc h                                            ; $79e7: $24
	dec h                                            ; $79e8: $25
	inc h                                            ; $79e9: $24
	ld a, [hl+]                                      ; $79ea: $2a
	jr jr_035_7a1b                                   ; $79eb: $18 $2e

	inc c                                            ; $79ed: $0c
	nop                                              ; $79ee: $00
	inc c                                            ; $79ef: $0c

jr_035_79f0:
	ld l, $18                                        ; $79f0: $2e $18
	inc l                                            ; $79f2: $2c
	jr @+$2c                                         ; $79f3: $18 $2a

	jr jr_035_7a20                                   ; $79f5: $18 $29

	jr jr_035_7a25                                   ; $79f7: $18 $2c

	inc c                                            ; $79f9: $0c
	dec h                                            ; $79fa: $25
	inc c                                            ; $79fb: $0c
	call $29d2                                       ; $79fc: $cd $d2 $29
	jr jr_035_7a2d                                   ; $79ff: $18 $2c

	inc c                                            ; $7a01: $0c
	dec h                                            ; $7a02: $25
	inc c                                            ; $7a03: $0c
	jp z, $29d3                                      ; $7a04: $ca $d3 $29

	jr jr_035_7a35                                   ; $7a07: $18 $2c

	inc c                                            ; $7a09: $0c

jr_035_7a0a:
	dec h                                            ; $7a0a: $25
	inc h                                            ; $7a0b: $24
	or l                                             ; $7a0c: $b5
	pop bc                                           ; $7a0d: $c1
	ld bc, $0232                                     ; $7a0e: $01 $32 $02

jr_035_7a11:
	ld a, [hl]                                       ; $7a11: $7e

jr_035_7a12:
	nop                                              ; $7a12: $00
	inc l                                            ; $7a13: $2c
	inc c                                            ; $7a14: $0c
	ld a, [hl+]                                      ; $7a15: $2a
	inc c                                            ; $7a16: $0c
	add hl, hl                                       ; $7a17: $29
	jr jr_035_7a46                                   ; $7a18: $18 $2c

	inc c                                            ; $7a1a: $0c

jr_035_7a1b:
	dec h                                            ; $7a1b: $25
	jr jr_035_7a43                                   ; $7a1c: $18 $25

	jr jr_035_7a45                                   ; $7a1e: $18 $25

jr_035_7a20:
	inc c                                            ; $7a20: $0c
	or l                                             ; $7a21: $b5
	sub c                                            ; $7a22: $91
	nop                                              ; $7a23: $00
	ld [hl-], a                                      ; $7a24: $32

jr_035_7a25:
	ld b, $be                                        ; $7a25: $06 $be
	jr jr_035_7a58                                   ; $7a27: $18 $2f

	inc l                                            ; $7a29: $2c
	ld a, [hl+]                                      ; $7a2a: $2a
	add hl, hl                                       ; $7a2b: $29
	cp [hl]                                          ; $7a2c: $be

jr_035_7a2d:
	or l                                             ; $7a2d: $b5
	pop bc                                           ; $7a2e: $c1
	inc bc                                           ; $7a2f: $03
	ld [hl-], a                                      ; $7a30: $32
	inc b                                            ; $7a31: $04
	ld a, [hl]                                       ; $7a32: $7e
	inc l                                            ; $7a33: $2c
	ld a, [bc]                                       ; $7a34: $0a

jr_035_7a35:
	and b                                            ; $7a35: $a0
	cp [hl]                                          ; $7a36: $be
	inc h                                            ; $7a37: $24
	ld e, $22                                        ; $7a38: $1e $22

jr_035_7a3a:
	dec h                                            ; $7a3a: $25
	ld a, [hl+]                                      ; $7a3b: $2a
	cp [hl]                                          ; $7a3c: $be
	ld [hl+], a                                      ; $7a3d: $22
	jr @+$27                                         ; $7a3e: $18 $25

	jr @+$2c                                         ; $7a40: $18 $2a

	inc h                                            ; $7a42: $24

jr_035_7a43:
	dec h                                            ; $7a43: $25
	inc h                                            ; $7a44: $24

jr_035_7a45:
	ld a, [hl+]                                      ; $7a45: $2a

jr_035_7a46:
	jr jr_035_7a12                                   ; $7a46: $18 $ca

	ld l, $0c                                        ; $7a48: $2e $0c
	nop                                              ; $7a4a: $00
	inc c                                            ; $7a4b: $0c
	ld l, $18                                        ; $7a4c: $2e $18
	inc l                                            ; $7a4e: $2c
	jr jr_035_7a7b                                   ; $7a4f: $18 $2a

	jr @-$32                                         ; $7a51: $18 $cc

	add hl, hl                                       ; $7a53: $29
	jr @+$2e                                         ; $7a54: $18 $2c

	inc c                                            ; $7a56: $0c
	dec h                                            ; $7a57: $25

jr_035_7a58:
	inc c                                            ; $7a58: $0c
	call $29d2                                       ; $7a59: $cd $d2 $29
	jr jr_035_7a8a                                   ; $7a5c: $18 $2c

	inc c                                            ; $7a5e: $0c
	dec h                                            ; $7a5f: $25
	inc c                                            ; $7a60: $0c
	jp z, $29d3                                      ; $7a61: $ca $d3 $29

	jr jr_035_7a92                                   ; $7a64: $18 $2c

	inc c                                            ; $7a66: $0c
	dec h                                            ; $7a67: $25
	inc h                                            ; $7a68: $24
	or l                                             ; $7a69: $b5
	pop bc                                           ; $7a6a: $c1
	ld bc, $0232                                     ; $7a6b: $01 $32 $02
	ld a, [hl]                                       ; $7a6e: $7e

jr_035_7a6f:
	nop                                              ; $7a6f: $00
	inc l                                            ; $7a70: $2c
	inc c                                            ; $7a71: $0c
	ld a, [hl+]                                      ; $7a72: $2a
	inc c                                            ; $7a73: $0c
	add hl, hl                                       ; $7a74: $29
	jr jr_035_7aa3                                   ; $7a75: $18 $2c

	inc c                                            ; $7a77: $0c
	dec h                                            ; $7a78: $25
	ld d, h                                          ; $7a79: $54
	sub [hl]                                         ; $7a7a: $96

jr_035_7a7b:
	ld [hl-], a                                      ; $7a7b: $32
	ld b, $93                                        ; $7a7c: $06 $93
	dec h                                            ; $7a7e: $25
	jr jr_035_7aa8                                   ; $7a7f: $18 $27

	jr jr_035_7aac                                   ; $7a81: $18 $29

	jr jr_035_7a3a                                   ; $7a83: $18 $b5

	pop bc                                           ; $7a85: $c1
	inc bc                                           ; $7a86: $03
	ld [hl-], a                                      ; $7a87: $32
	inc b                                            ; $7a88: $04
	ld a, [hl]                                       ; $7a89: $7e

jr_035_7a8a:
	inc l                                            ; $7a8a: $2c
	ld e, $a0                                        ; $7a8b: $1e $a0
	inc l                                            ; $7a8d: $2c
	sub b                                            ; $7a8e: $90
	ld l, $18                                        ; $7a8f: $2e $18
	inc l                                            ; $7a91: $2c

jr_035_7a92:
	jr jr_035_7abe                                   ; $7a92: $18 $2a

	inc h                                            ; $7a94: $24
	ld l, $3c                                        ; $7a95: $2e $3c
	jp z, $0c31                                      ; $7a97: $ca $31 $0c

	nop                                              ; $7a9a: $00
	inc c                                            ; $7a9b: $0c
	ld sp, $2f18                                     ; $7a9c: $31 $18 $2f
	jr jr_035_7acf                                   ; $7a9f: $18 $2e

	jr jr_035_7a6f                                   ; $7aa1: $18 $cc

jr_035_7aa3:
	add hl, hl                                       ; $7aa3: $29
	jr jr_035_7ad2                                   ; $7aa4: $18 $2c

	inc c                                            ; $7aa6: $0c
	dec h                                            ; $7aa7: $25

jr_035_7aa8:
	inc c                                            ; $7aa8: $0c
	call $29d2                                       ; $7aa9: $cd $d2 $29

jr_035_7aac:
	jr @+$2e                                         ; $7aac: $18 $2c

	inc c                                            ; $7aae: $0c
	dec h                                            ; $7aaf: $25
	inc c                                            ; $7ab0: $0c
	jp z, $29d3                                      ; $7ab1: $ca $d3 $29

	jr jr_035_7ae2                                   ; $7ab4: $18 $2c

	inc c                                            ; $7ab6: $0c
	dec h                                            ; $7ab7: $25
	inc h                                            ; $7ab8: $24
	or l                                             ; $7ab9: $b5
	pop bc                                           ; $7aba: $c1
	ld bc, $0232                                     ; $7abb: $01 $32 $02

jr_035_7abe:
	ld a, [hl]                                       ; $7abe: $7e
	nop                                              ; $7abf: $00
	inc l                                            ; $7ac0: $2c
	inc c                                            ; $7ac1: $0c
	ld a, [hl+]                                      ; $7ac2: $2a
	inc c                                            ; $7ac3: $0c
	add hl, hl                                       ; $7ac4: $29

jr_035_7ac5:
	jr @+$2e                                         ; $7ac5: $18 $2c

	inc c                                            ; $7ac7: $0c
	dec h                                            ; $7ac8: $25
	inc a                                            ; $7ac9: $3c
	cp $ff                                           ; $7aca: $fe $ff
	cp $b6                                           ; $7acc: $fe $b6
	cp [hl]                                          ; $7ace: $be

jr_035_7acf:
	ld hl, $0423                                     ; $7acf: $21 $23 $04

jr_035_7ad2:
	ld bc, $1570                                     ; $7ad2: $01 $70 $15
	inc c                                            ; $7ad5: $0c
	ld d, $18                                        ; $7ad6: $16 $18
	rla                                              ; $7ad8: $17
	jr @+$1a                                         ; $7ad9: $18 $18

	jr jr_035_7af6                                   ; $7adb: $18 $19

	inc c                                            ; $7add: $0c
	ld l, h                                          ; $7ade: $6c
	ld a, a                                          ; $7adf: $7f
	ld [hl+], a                                      ; $7ae0: $22
	db $fd                                           ; $7ae1: $fd

jr_035_7ae2:
	reti                                             ; $7ae2: $d9


	ld a, e                                          ; $7ae3: $7b
	db $fd                                           ; $7ae4: $fd
	rst SubAFromBC                                          ; $7ae5: $e7
	ld a, e                                          ; $7ae6: $7b
	db $fd                                           ; $7ae7: $fd
	reti                                             ; $7ae8: $d9


	ld a, e                                          ; $7ae9: $7b
	cp [hl]                                          ; $7aea: $be
	inc c                                            ; $7aeb: $0c
	nop                                              ; $7aec: $00
	dec c                                            ; $7aed: $0d
	ld de, $be0d                                     ; $7aee: $11 $0d $be
	ld [de], a                                       ; $7af1: $12
	jr jr_035_7a8a                                   ; $7af2: $18 $96

	inc bc                                           ; $7af4: $03
	nop                                              ; $7af5: $00

jr_035_7af6:
	inc d                                            ; $7af6: $14
	inc c                                            ; $7af7: $0c
	jp nc, $0c36                                     ; $7af8: $d2 $36 $0c

	pop de                                           ; $7afb: $d1
	sub [hl]                                         ; $7afc: $96
	inc b                                            ; $7afd: $04
	ld bc, $d9fd                                     ; $7afe: $01 $fd $d9
	ld a, e                                          ; $7b01: $7b
	db $fd                                           ; $7b02: $fd
	rst SubAFromBC                                          ; $7b03: $e7
	ld a, e                                          ; $7b04: $7b
	db $fd                                           ; $7b05: $fd
	reti                                             ; $7b06: $d9


	ld a, e                                          ; $7b07: $7b

jr_035_7b08:
	nop                                              ; $7b08: $00
	inc c                                            ; $7b09: $0c
	ld [$0010], sp                                   ; $7b0a: $08 $10 $00
	ld [$1008], sp                                   ; $7b0d: $08 $08 $10
	nop                                              ; $7b10: $00
	ld [$0c08], sp                                   ; $7b11: $08 $08 $0c
	ld [$b518], sp                                   ; $7b14: $08 $18 $b5
	ld hl, $0422                                     ; $7b17: $21 $22 $04
	ld bc, $fd6c                                     ; $7b1a: $01 $6c $fd
	reti                                             ; $7b1d: $d9


	ld a, e                                          ; $7b1e: $7b
	db $fd                                           ; $7b1f: $fd
	rst SubAFromBC                                          ; $7b20: $e7
	ld a, e                                          ; $7b21: $7b

jr_035_7b22:
	db $fd                                           ; $7b22: $fd
	reti                                             ; $7b23: $d9


	ld a, e                                          ; $7b24: $7b
	cp [hl]                                          ; $7b25: $be
	inc c                                            ; $7b26: $0c
	nop                                              ; $7b27: $00
	dec c                                            ; $7b28: $0d
	ld de, $be0d                                     ; $7b29: $11 $0d $be
	ld [de], a                                       ; $7b2c: $12
	jr jr_035_7ac5                                   ; $7b2d: $18 $96

	dec b                                            ; $7b2f: $05
	nop                                              ; $7b30: $00
	inc d                                            ; $7b31: $14
	inc c                                            ; $7b32: $0c
	jp nc, $0c36                                     ; $7b33: $d2 $36 $0c

	pop de                                           ; $7b36: $d1
	sub [hl]                                         ; $7b37: $96
	inc b                                            ; $7b38: $04
	ld bc, $d9fd                                     ; $7b39: $01 $fd $d9
	ld a, e                                          ; $7b3c: $7b
	db $fd                                           ; $7b3d: $fd
	rst SubAFromBC                                          ; $7b3e: $e7
	ld a, e                                          ; $7b3f: $7b
	cp [hl]                                          ; $7b40: $be
	inc c                                            ; $7b41: $0c
	dec c                                            ; $7b42: $0d
	dec c                                            ; $7b43: $0d
	ld de, $be0d                                     ; $7b44: $11 $0d $be
	ld [de], a                                       ; $7b47: $12
	jr jr_035_7b08                                   ; $7b48: $18 $be

	inc c                                            ; $7b4a: $0c
	inc d                                            ; $7b4b: $14
	rla                                              ; $7b4c: $17
	nop                                              ; $7b4d: $00
	rla                                              ; $7b4e: $17
	inc d                                            ; $7b4f: $14
	nop                                              ; $7b50: $00
	ld [de], a                                       ; $7b51: $12
	cp [hl]                                          ; $7b52: $be
	ld de, $0018                                     ; $7b53: $11 $18 $00
	inc c                                            ; $7b56: $0c
	or l                                             ; $7b57: $b5
	ld hl, $0423                                     ; $7b58: $21 $23 $04
	ld bc, $fd70                                     ; $7b5b: $01 $70 $fd
	di                                               ; $7b5e: $f3
	ld a, e                                          ; $7b5f: $7b
	db $fd                                           ; $7b60: $fd
	di                                               ; $7b61: $f3
	ld a, e                                          ; $7b62: $7b
	ld [hl], l                                       ; $7b63: $75
	db $fd                                           ; $7b64: $fd
	di                                               ; $7b65: $f3
	ld a, e                                          ; $7b66: $7b
	ld [hl], b                                       ; $7b67: $70
	dec c                                            ; $7b68: $0d
	jr @+$0f                                         ; $7b69: $18 $0d

	inc c                                            ; $7b6b: $0c
	ld de, $1118                                     ; $7b6c: $11 $18 $11
	jr @+$0f                                         ; $7b6f: $18 $0d

	inc c                                            ; $7b71: $0c
	cp [hl]                                          ; $7b72: $be
	jr jr_035_7b8c                                   ; $7b73: $18 $17

	inc d                                            ; $7b75: $14
	ld [de], a                                       ; $7b76: $12
	ld de, $b5be                                     ; $7b77: $11 $be $b5
	ld hl, $0423                                     ; $7b7a: $21 $23 $04
	ld bc, $f3fd                                     ; $7b7d: $01 $fd $f3
	ld a, e                                          ; $7b80: $7b
	ld [de], a                                       ; $7b81: $12
	jr jr_035_7b96                                   ; $7b82: $18 $12

	inc c                                            ; $7b84: $0c
	ld d, $18                                        ; $7b85: $16 $18
	ld d, $0c                                        ; $7b87: $16 $0c
	ld [de], a                                       ; $7b89: $12
	jr jr_035_7b22                                   ; $7b8a: $18 $96

jr_035_7b8c:
	ld a, [bc]                                       ; $7b8c: $0a
	ld bc, $18be                                     ; $7b8d: $01 $be $18
	ld [de], a                                       ; $7b90: $12
	ld d, $17                                        ; $7b91: $16 $17
	add hl, de                                       ; $7b93: $19
	cp [hl]                                          ; $7b94: $be
	sub [hl]                                         ; $7b95: $96

jr_035_7b96:
	inc b                                            ; $7b96: $04
	ld bc, $fd75                                     ; $7b97: $01 $75 $fd
	di                                               ; $7b9a: $f3
	ld a, e                                          ; $7b9b: $7b
	ld [hl], b                                       ; $7b9c: $70
	dec c                                            ; $7b9d: $0d
	jr @+$0f                                         ; $7b9e: $18 $0d

	inc c                                            ; $7ba0: $0c
	ld de, $1118                                     ; $7ba1: $11 $18 $11
	jr @+$0f                                         ; $7ba4: $18 $0d

	inc c                                            ; $7ba6: $0c
	cp [hl]                                          ; $7ba7: $be
	jr jr_035_7bc1                                   ; $7ba8: $18 $17

	inc d                                            ; $7baa: $14
	ld [de], a                                       ; $7bab: $12
	ld de, $b5be                                     ; $7bac: $11 $be $b5
	ld hl, $0423                                     ; $7baf: $21 $23 $04
	ld bc, $fd62                                     ; $7bb2: $01 $62 $fd
	di                                               ; $7bb5: $f3
	ld a, e                                          ; $7bb6: $7b
	ld [hl], b                                       ; $7bb7: $70
	ld [de], a                                       ; $7bb8: $12
	jr jr_035_7bcd                                   ; $7bb9: $18 $12

	inc c                                            ; $7bbb: $0c
	ld d, $18                                        ; $7bbc: $16 $18
	ld d, $0c                                        ; $7bbe: $16 $0c
	cp [hl]                                          ; $7bc0: $be

jr_035_7bc1:
	jr @+$14                                         ; $7bc1: $18 $12

	ld [de], a                                       ; $7bc3: $12
	add hl, de                                       ; $7bc4: $19
	rla                                              ; $7bc5: $17
	ld d, $be                                        ; $7bc6: $16 $be
	ld [hl], l                                       ; $7bc8: $75
	db $fd                                           ; $7bc9: $fd
	di                                               ; $7bca: $f3
	ld a, e                                          ; $7bcb: $7b
	ld [hl], b                                       ; $7bcc: $70

jr_035_7bcd:
	dec c                                            ; $7bcd: $0d
	jr jr_035_7bdd                                   ; $7bce: $18 $0d

	inc c                                            ; $7bd0: $0c
	ld de, $1118                                     ; $7bd1: $11 $18 $11
	jr jr_035_7be3                                   ; $7bd4: $18 $0d

	inc c                                            ; $7bd6: $0c
	cp $ff                                           ; $7bd7: $fe $ff
	cp [hl]                                          ; $7bd9: $be
	inc c                                            ; $7bda: $0c
	dec c                                            ; $7bdb: $0d
	dec c                                            ; $7bdc: $0d

jr_035_7bdd:
	ld de, $be0d                                     ; $7bdd: $11 $0d $be
	ld [de], a                                       ; $7be0: $12
	jr jr_035_7bf7                                   ; $7be1: $18 $14

jr_035_7be3:
	inc c                                            ; $7be3: $0c
	dec c                                            ; $7be4: $0d
	inc c                                            ; $7be5: $0c
	db $fd                                           ; $7be6: $fd
	cp [hl]                                          ; $7be7: $be
	inc c                                            ; $7be8: $0c
	nop                                              ; $7be9: $00
	dec c                                            ; $7bea: $0d
	ld de, $be0d                                     ; $7beb: $11 $0d $be
	ld [de], a                                       ; $7bee: $12
	jr @+$16                                         ; $7bef: $18 $14

	jr @-$01                                         ; $7bf1: $18 $fd

	ld [de], a                                       ; $7bf3: $12
	jr jr_035_7c08                                   ; $7bf4: $18 $12

	inc c                                            ; $7bf6: $0c

jr_035_7bf7:
	ld d, $18                                        ; $7bf7: $16 $18
	ld d, $18                                        ; $7bf9: $16 $18
	ld [de], a                                       ; $7bfb: $12
	jr jr_035_7c10                                   ; $7bfc: $18 $12

	inc c                                            ; $7bfe: $0c

jr_035_7bff:
	ld d, $18                                        ; $7bff: $16 $18
	rla                                              ; $7c01: $17
	jr jr_035_7c1d                                   ; $7c02: $18 $19

	jr @-$01                                         ; $7c04: $18 $fd

	cp $d0                                           ; $7c06: $fe $d0

jr_035_7c08:
	cp [hl]                                          ; $7c08: $be
	ld sp, $3d0c                                     ; $7c09: $31 $0c $3d
	jr jr_035_7c4b                                   ; $7c0c: $18 $3d

	jr jr_035_7c41                                   ; $7c0e: $18 $31

jr_035_7c10:
	inc c                                            ; $7c10: $0c
	dec sp                                           ; $7c11: $3b
	inc c                                            ; $7c12: $0c
	ld b, b                                          ; $7c13: $40
	inc c                                            ; $7c14: $0c
	ei                                               ; $7c15: $fb
	db $fd                                           ; $7c16: $fd
	cp b                                             ; $7c17: $b8
	ld a, h                                          ; $7c18: $7c
	ei                                               ; $7c19: $fb
	inc bc                                           ; $7c1a: $03
	cp [hl]                                          ; $7c1b: $be
	inc c                                            ; $7c1c: $0c

jr_035_7c1d:
	ld [hl], $32                                     ; $7c1d: $36 $32
	dec a                                            ; $7c1f: $3d
	inc sp                                           ; $7c20: $33
	ld sp, $343d                                     ; $7c21: $31 $3d $34
	ld [hl], $3d                                     ; $7c24: $36 $3d
	dec a                                            ; $7c26: $3d
	ld [hl-], a                                      ; $7c27: $32
	ld b, b                                          ; $7c28: $40
	ld [hl], $3b                                     ; $7c29: $36 $3b
	cp [hl]                                          ; $7c2b: $be
	dec [hl]                                         ; $7c2c: $35
	jr @-$03                                         ; $7c2d: $18 $fb

	db $fd                                           ; $7c2f: $fd
	cp b                                             ; $7c30: $b8
	ld a, h                                          ; $7c31: $7c
	ei                                               ; $7c32: $fb
	inc bc                                           ; $7c33: $03
	cp [hl]                                          ; $7c34: $be
	inc c                                            ; $7c35: $0c
	ld [hl], $33                                     ; $7c36: $36 $33
	dec a                                            ; $7c38: $3d
	inc sp                                           ; $7c39: $33
	ld [hl], $33                                     ; $7c3a: $36 $33
	dec a                                            ; $7c3c: $3d
	cp [hl]                                          ; $7c3d: $be
	inc [hl]                                         ; $7c3e: $34
	jr jr_035_7bff                                   ; $7c3f: $18 $be

jr_035_7c41:
	inc c                                            ; $7c41: $0c
	ld [hl], $3d                                     ; $7c42: $36 $3d
	inc sp                                           ; $7c44: $33
	dec a                                            ; $7c45: $3d
	dec a                                            ; $7c46: $3d

jr_035_7c47:
	ld sp, $be3d                                     ; $7c47: $31 $3d $be
	ei                                               ; $7c4a: $fb

jr_035_7c4b:
	db $fd                                           ; $7c4b: $fd
	cp b                                             ; $7c4c: $b8
	ld a, h                                          ; $7c4d: $7c
	ei                                               ; $7c4e: $fb
	inc bc                                           ; $7c4f: $03
	cp [hl]                                          ; $7c50: $be
	inc c                                            ; $7c51: $0c
	ld [hl], $33                                     ; $7c52: $36 $33
	dec a                                            ; $7c54: $3d
	inc sp                                           ; $7c55: $33
	ld [hl], $33                                     ; $7c56: $36 $33
	dec a                                            ; $7c58: $3d
	ld sp, $373d                                     ; $7c59: $31 $3d $37
	dec a                                            ; $7c5c: $3d
	scf                                              ; $7c5d: $37
	dec sp                                           ; $7c5e: $3b
	inc sp                                           ; $7c5f: $33
	cp [hl]                                          ; $7c60: $be

jr_035_7c61:
	dec [hl]                                         ; $7c61: $35
	jr jr_035_7c61                                   ; $7c62: $18 $fd

	cp b                                             ; $7c64: $b8
	ld a, h                                          ; $7c65: $7c
	cp [hl]                                          ; $7c66: $be
	inc c                                            ; $7c67: $0c
	ld [hl], $33                                     ; $7c68: $36 $33
	dec a                                            ; $7c6a: $3d
	inc sp                                           ; $7c6b: $33
	ld [hl], $3d                                     ; $7c6c: $36 $3d
	ld [hl-], a                                      ; $7c6e: $32
	ld [hl-], a                                      ; $7c6f: $32
	dec a                                            ; $7c70: $3d
	ld [hl-], a                                      ; $7c71: $32
	dec a                                            ; $7c72: $3d
	ld [hl-], a                                      ; $7c73: $32
	dec a                                            ; $7c74: $3d
	ld sp, $3d3d                                     ; $7c75: $31 $3d $3d
	cp [hl]                                          ; $7c78: $be
	db $fd                                           ; $7c79: $fd
	cp b                                             ; $7c7a: $b8
	ld a, h                                          ; $7c7b: $7c
	cp [hl]                                          ; $7c7c: $be
	inc c                                            ; $7c7d: $0c
	ld [hl], $33                                     ; $7c7e: $36 $33
	dec a                                            ; $7c80: $3d
	inc sp                                           ; $7c81: $33
	ld [hl], $33                                     ; $7c82: $36 $33
	dec a                                            ; $7c84: $3d
	cp [hl]                                          ; $7c85: $be
	dec [hl]                                         ; $7c86: $35
	jr jr_035_7c47                                   ; $7c87: $18 $be

	inc c                                            ; $7c89: $0c
	ld sp, $333d                                     ; $7c8a: $31 $3d $33
	ld sp, $3d3d                                     ; $7c8d: $31 $3d $3d
	inc [hl]                                         ; $7c90: $34
	cp [hl]                                          ; $7c91: $be
	db $fd                                           ; $7c92: $fd
	cp b                                             ; $7c93: $b8
	ld a, h                                          ; $7c94: $7c
	cp [hl]                                          ; $7c95: $be
	inc c                                            ; $7c96: $0c
	ld [hl], $33                                     ; $7c97: $36 $33
	dec a                                            ; $7c99: $3d
	inc sp                                           ; $7c9a: $33
	ld [hl], $33                                     ; $7c9b: $36 $33
	dec a                                            ; $7c9d: $3d
	ld [hl-], a                                      ; $7c9e: $32
	dec a                                            ; $7c9f: $3d
	ld [hl-], a                                      ; $7ca0: $32
	dec a                                            ; $7ca1: $3d
	ld [hl-], a                                      ; $7ca2: $32
	dec a                                            ; $7ca3: $3d
	ld [hl-], a                                      ; $7ca4: $32
	dec a                                            ; $7ca5: $3d
	dec a                                            ; $7ca6: $3d
	cp [hl]                                          ; $7ca7: $be
	db $fd                                           ; $7ca8: $fd
	cp b                                             ; $7ca9: $b8
	ld a, h                                          ; $7caa: $7c
	cp [hl]                                          ; $7cab: $be
	inc c                                            ; $7cac: $0c
	ld [hl], $33                                     ; $7cad: $36 $33
	dec a                                            ; $7caf: $3d
	inc sp                                           ; $7cb0: $33
	ld [hl], $33                                     ; $7cb1: $36 $33
	dec a                                            ; $7cb3: $3d
	inc [hl]                                         ; $7cb4: $34
	cp [hl]                                          ; $7cb5: $be
	cp $ff                                           ; $7cb6: $fe $ff
	cp [hl]                                          ; $7cb8: $be
	inc c                                            ; $7cb9: $0c
	ld [hl], $33                                     ; $7cba: $36 $33
	dec a                                            ; $7cbc: $3d
	inc sp                                           ; $7cbd: $33
	ld [hl], $33                                     ; $7cbe: $36 $33
	dec a                                            ; $7cc0: $3d
	cp [hl]                                          ; $7cc1: $be
	ld [hl], $18                                     ; $7cc2: $36 $18
	cp [hl]                                          ; $7cc4: $be
	inc c                                            ; $7cc5: $0c
	ld [hl], $3d                                     ; $7cc6: $36 $3d
	inc sp                                           ; $7cc8: $33
	ld [hl], $33                                     ; $7cc9: $36 $33
	dec a                                            ; $7ccb: $3d
	inc [hl]                                         ; $7ccc: $34
	cp [hl]                                          ; $7ccd: $be
	db $fd                                           ; $7cce: $fd
	rst $38                                          ; $7ccf: $ff
	rst $38                                          ; $7cd0: $ff
	rst $38                                          ; $7cd1: $ff
	rst $38                                          ; $7cd2: $ff
	rst $38                                          ; $7cd3: $ff
	rst $38                                          ; $7cd4: $ff
	rst $38                                          ; $7cd5: $ff
	rst $38                                          ; $7cd6: $ff
	rst $38                                          ; $7cd7: $ff
	rst $38                                          ; $7cd8: $ff
	rst $38                                          ; $7cd9: $ff
	rst $38                                          ; $7cda: $ff
	rst $38                                          ; $7cdb: $ff
	rst $38                                          ; $7cdc: $ff
	rst $38                                          ; $7cdd: $ff
	rst $38                                          ; $7cde: $ff
	rst $38                                          ; $7cdf: $ff
	rst $38                                          ; $7ce0: $ff
	rst $38                                          ; $7ce1: $ff
	rst $38                                          ; $7ce2: $ff
	rst $38                                          ; $7ce3: $ff
	rst $38                                          ; $7ce4: $ff
	rst $38                                          ; $7ce5: $ff
	rst $38                                          ; $7ce6: $ff
	rst $38                                          ; $7ce7: $ff
	rst $38                                          ; $7ce8: $ff
	rst $38                                          ; $7ce9: $ff
	rst $38                                          ; $7cea: $ff
	rst $38                                          ; $7ceb: $ff
	rst $38                                          ; $7cec: $ff
	rst $38                                          ; $7ced: $ff
	rst $38                                          ; $7cee: $ff
	rst $38                                          ; $7cef: $ff
	rst $38                                          ; $7cf0: $ff
	rst $38                                          ; $7cf1: $ff
	rst $38                                          ; $7cf2: $ff
	rst $38                                          ; $7cf3: $ff
	rst $38                                          ; $7cf4: $ff
	rst $38                                          ; $7cf5: $ff
	rst $38                                          ; $7cf6: $ff
	rst $38                                          ; $7cf7: $ff
	rst $38                                          ; $7cf8: $ff
	rst $38                                          ; $7cf9: $ff
	rst $38                                          ; $7cfa: $ff
	rst $38                                          ; $7cfb: $ff
	rst $38                                          ; $7cfc: $ff
	rst $38                                          ; $7cfd: $ff
	rst $38                                          ; $7cfe: $ff
	rst $38                                          ; $7cff: $ff
	rst $38                                          ; $7d00: $ff
	rst $38                                          ; $7d01: $ff
	rst $38                                          ; $7d02: $ff
	rst $38                                          ; $7d03: $ff
	rst $38                                          ; $7d04: $ff
	rst $38                                          ; $7d05: $ff
	rst $38                                          ; $7d06: $ff
	rst $38                                          ; $7d07: $ff
	rst $38                                          ; $7d08: $ff
	rst $38                                          ; $7d09: $ff
	rst $38                                          ; $7d0a: $ff
	rst $38                                          ; $7d0b: $ff
	rst $38                                          ; $7d0c: $ff
	rst $38                                          ; $7d0d: $ff
	rst $38                                          ; $7d0e: $ff
	rst $38                                          ; $7d0f: $ff
	rst $38                                          ; $7d10: $ff
	rst $38                                          ; $7d11: $ff
	rst $38                                          ; $7d12: $ff
	rst $38                                          ; $7d13: $ff
	rst $38                                          ; $7d14: $ff
	rst $38                                          ; $7d15: $ff
	rst $38                                          ; $7d16: $ff
	rst $38                                          ; $7d17: $ff
	rst $38                                          ; $7d18: $ff
	rst $38                                          ; $7d19: $ff
	rst $38                                          ; $7d1a: $ff
	rst $38                                          ; $7d1b: $ff
	rst $38                                          ; $7d1c: $ff
	rst $38                                          ; $7d1d: $ff
	rst $38                                          ; $7d1e: $ff
	rst $38                                          ; $7d1f: $ff
	rst $38                                          ; $7d20: $ff
	rst $38                                          ; $7d21: $ff
	rst $38                                          ; $7d22: $ff
	rst $38                                          ; $7d23: $ff
	rst $38                                          ; $7d24: $ff
	rst $38                                          ; $7d25: $ff
	rst $38                                          ; $7d26: $ff
	rst $38                                          ; $7d27: $ff
	rst $38                                          ; $7d28: $ff
	rst $38                                          ; $7d29: $ff
	rst $38                                          ; $7d2a: $ff
	rst $38                                          ; $7d2b: $ff
	rst $38                                          ; $7d2c: $ff
	rst $38                                          ; $7d2d: $ff
	rst $38                                          ; $7d2e: $ff
	rst $38                                          ; $7d2f: $ff
	rst $38                                          ; $7d30: $ff
	rst $38                                          ; $7d31: $ff
	rst $38                                          ; $7d32: $ff
	rst $38                                          ; $7d33: $ff
	rst $38                                          ; $7d34: $ff
	rst $38                                          ; $7d35: $ff
	rst $38                                          ; $7d36: $ff
	rst $38                                          ; $7d37: $ff
	rst $38                                          ; $7d38: $ff
	rst $38                                          ; $7d39: $ff
	rst $38                                          ; $7d3a: $ff
	rst $38                                          ; $7d3b: $ff
	rst $38                                          ; $7d3c: $ff
	rst $38                                          ; $7d3d: $ff
	rst $38                                          ; $7d3e: $ff
	rst $38                                          ; $7d3f: $ff
	rst $38                                          ; $7d40: $ff
	rst $38                                          ; $7d41: $ff
	rst $38                                          ; $7d42: $ff
	rst $38                                          ; $7d43: $ff
	rst $38                                          ; $7d44: $ff
	rst $38                                          ; $7d45: $ff
	rst $38                                          ; $7d46: $ff
	rst $38                                          ; $7d47: $ff
	rst $38                                          ; $7d48: $ff
	rst $38                                          ; $7d49: $ff
	rst $38                                          ; $7d4a: $ff
	rst $38                                          ; $7d4b: $ff
	rst $38                                          ; $7d4c: $ff
	rst $38                                          ; $7d4d: $ff
	rst $38                                          ; $7d4e: $ff
	rst $38                                          ; $7d4f: $ff
	rst $38                                          ; $7d50: $ff
	rst $38                                          ; $7d51: $ff
	rst $38                                          ; $7d52: $ff
	rst $38                                          ; $7d53: $ff
	rst $38                                          ; $7d54: $ff
	rst $38                                          ; $7d55: $ff
	rst $38                                          ; $7d56: $ff
	rst $38                                          ; $7d57: $ff
	rst $38                                          ; $7d58: $ff
	rst $38                                          ; $7d59: $ff
	rst $38                                          ; $7d5a: $ff
	rst $38                                          ; $7d5b: $ff
	rst $38                                          ; $7d5c: $ff
	rst $38                                          ; $7d5d: $ff
	rst $38                                          ; $7d5e: $ff
	rst $38                                          ; $7d5f: $ff
	rst $38                                          ; $7d60: $ff
	rst $38                                          ; $7d61: $ff
	rst $38                                          ; $7d62: $ff
	rst $38                                          ; $7d63: $ff
	rst $38                                          ; $7d64: $ff
	rst $38                                          ; $7d65: $ff
	rst $38                                          ; $7d66: $ff
	rst $38                                          ; $7d67: $ff
	rst $38                                          ; $7d68: $ff
	rst $38                                          ; $7d69: $ff
	rst $38                                          ; $7d6a: $ff
	rst $38                                          ; $7d6b: $ff
	rst $38                                          ; $7d6c: $ff
	rst $38                                          ; $7d6d: $ff
	rst $38                                          ; $7d6e: $ff
	rst $38                                          ; $7d6f: $ff
	rst $38                                          ; $7d70: $ff
	rst $38                                          ; $7d71: $ff
	rst $38                                          ; $7d72: $ff
	rst $38                                          ; $7d73: $ff
	rst $38                                          ; $7d74: $ff
	rst $38                                          ; $7d75: $ff
	rst $38                                          ; $7d76: $ff
	rst $38                                          ; $7d77: $ff
	rst $38                                          ; $7d78: $ff
	rst $38                                          ; $7d79: $ff
	rst $38                                          ; $7d7a: $ff
	rst $38                                          ; $7d7b: $ff
	rst $38                                          ; $7d7c: $ff
	rst $38                                          ; $7d7d: $ff
	rst $38                                          ; $7d7e: $ff
	rst $38                                          ; $7d7f: $ff
	rst $38                                          ; $7d80: $ff
	rst $38                                          ; $7d81: $ff
	rst $38                                          ; $7d82: $ff
	rst $38                                          ; $7d83: $ff
	rst $38                                          ; $7d84: $ff
	rst $38                                          ; $7d85: $ff
	rst $38                                          ; $7d86: $ff
	rst $38                                          ; $7d87: $ff
	rst $38                                          ; $7d88: $ff
	rst $38                                          ; $7d89: $ff
	rst $38                                          ; $7d8a: $ff
	rst $38                                          ; $7d8b: $ff
	rst $38                                          ; $7d8c: $ff
	rst $38                                          ; $7d8d: $ff
	rst $38                                          ; $7d8e: $ff
	rst $38                                          ; $7d8f: $ff
	rst $38                                          ; $7d90: $ff
	rst $38                                          ; $7d91: $ff
	rst $38                                          ; $7d92: $ff
	rst $38                                          ; $7d93: $ff
	rst $38                                          ; $7d94: $ff
	rst $38                                          ; $7d95: $ff
	rst $38                                          ; $7d96: $ff
	rst $38                                          ; $7d97: $ff
	rst $38                                          ; $7d98: $ff
	rst $38                                          ; $7d99: $ff
	rst $38                                          ; $7d9a: $ff
	rst $38                                          ; $7d9b: $ff
	rst $38                                          ; $7d9c: $ff
	rst $38                                          ; $7d9d: $ff
	rst $38                                          ; $7d9e: $ff
	rst $38                                          ; $7d9f: $ff
	rst $38                                          ; $7da0: $ff
	rst $38                                          ; $7da1: $ff
	rst $38                                          ; $7da2: $ff
	rst $38                                          ; $7da3: $ff
	rst $38                                          ; $7da4: $ff
	rst $38                                          ; $7da5: $ff
	rst $38                                          ; $7da6: $ff
	rst $38                                          ; $7da7: $ff
	rst $38                                          ; $7da8: $ff
	rst $38                                          ; $7da9: $ff
	rst $38                                          ; $7daa: $ff
	rst $38                                          ; $7dab: $ff
	rst $38                                          ; $7dac: $ff
	rst $38                                          ; $7dad: $ff
	rst $38                                          ; $7dae: $ff
	rst $38                                          ; $7daf: $ff
	rst $38                                          ; $7db0: $ff
	rst $38                                          ; $7db1: $ff
	rst $38                                          ; $7db2: $ff
	rst $38                                          ; $7db3: $ff
	rst $38                                          ; $7db4: $ff
	rst $38                                          ; $7db5: $ff
	rst $38                                          ; $7db6: $ff
	rst $38                                          ; $7db7: $ff
	rst $38                                          ; $7db8: $ff
	rst $38                                          ; $7db9: $ff
	rst $38                                          ; $7dba: $ff
	rst $38                                          ; $7dbb: $ff
	rst $38                                          ; $7dbc: $ff
	rst $38                                          ; $7dbd: $ff
	rst $38                                          ; $7dbe: $ff
	rst $38                                          ; $7dbf: $ff
	rst $38                                          ; $7dc0: $ff
	rst $38                                          ; $7dc1: $ff
	rst $38                                          ; $7dc2: $ff
	rst $38                                          ; $7dc3: $ff
	rst $38                                          ; $7dc4: $ff
	rst $38                                          ; $7dc5: $ff
	rst $38                                          ; $7dc6: $ff
	rst $38                                          ; $7dc7: $ff
	rst $38                                          ; $7dc8: $ff
	rst $38                                          ; $7dc9: $ff
	rst $38                                          ; $7dca: $ff
	rst $38                                          ; $7dcb: $ff
	rst $38                                          ; $7dcc: $ff
	rst $38                                          ; $7dcd: $ff
	rst $38                                          ; $7dce: $ff
	rst $38                                          ; $7dcf: $ff
	rst $38                                          ; $7dd0: $ff
	rst $38                                          ; $7dd1: $ff
	rst $38                                          ; $7dd2: $ff
	rst $38                                          ; $7dd3: $ff
	rst $38                                          ; $7dd4: $ff
	rst $38                                          ; $7dd5: $ff
	rst $38                                          ; $7dd6: $ff
	rst $38                                          ; $7dd7: $ff
	rst $38                                          ; $7dd8: $ff
	rst $38                                          ; $7dd9: $ff
	rst $38                                          ; $7dda: $ff
	rst $38                                          ; $7ddb: $ff
	rst $38                                          ; $7ddc: $ff
	rst $38                                          ; $7ddd: $ff
	rst $38                                          ; $7dde: $ff
	rst $38                                          ; $7ddf: $ff
	rst $38                                          ; $7de0: $ff
	rst $38                                          ; $7de1: $ff
	rst $38                                          ; $7de2: $ff
	rst $38                                          ; $7de3: $ff
	rst $38                                          ; $7de4: $ff
	rst $38                                          ; $7de5: $ff
	rst $38                                          ; $7de6: $ff
	rst $38                                          ; $7de7: $ff
	rst $38                                          ; $7de8: $ff
	rst $38                                          ; $7de9: $ff
	rst $38                                          ; $7dea: $ff
	rst $38                                          ; $7deb: $ff
	rst $38                                          ; $7dec: $ff
	rst $38                                          ; $7ded: $ff
	rst $38                                          ; $7dee: $ff
	rst $38                                          ; $7def: $ff
	rst $38                                          ; $7df0: $ff
	rst $38                                          ; $7df1: $ff
	rst $38                                          ; $7df2: $ff
	rst $38                                          ; $7df3: $ff
	rst $38                                          ; $7df4: $ff
	rst $38                                          ; $7df5: $ff
	rst $38                                          ; $7df6: $ff
	rst $38                                          ; $7df7: $ff
	rst $38                                          ; $7df8: $ff
	rst $38                                          ; $7df9: $ff
	rst $38                                          ; $7dfa: $ff
	rst $38                                          ; $7dfb: $ff
	rst $38                                          ; $7dfc: $ff
	rst $38                                          ; $7dfd: $ff
	rst $38                                          ; $7dfe: $ff
	rst $38                                          ; $7dff: $ff
	rst $38                                          ; $7e00: $ff
	rst $38                                          ; $7e01: $ff
	rst $38                                          ; $7e02: $ff
	rst $38                                          ; $7e03: $ff
	rst $38                                          ; $7e04: $ff
	rst $38                                          ; $7e05: $ff
	rst $38                                          ; $7e06: $ff
	rst $38                                          ; $7e07: $ff
	rst $38                                          ; $7e08: $ff
	rst $38                                          ; $7e09: $ff
	rst $38                                          ; $7e0a: $ff
	rst $38                                          ; $7e0b: $ff
	rst $38                                          ; $7e0c: $ff
	rst $38                                          ; $7e0d: $ff
	rst $38                                          ; $7e0e: $ff
	rst $38                                          ; $7e0f: $ff
	rst $38                                          ; $7e10: $ff
	rst $38                                          ; $7e11: $ff
	rst $38                                          ; $7e12: $ff
	rst $38                                          ; $7e13: $ff
	rst $38                                          ; $7e14: $ff
	rst $38                                          ; $7e15: $ff
	rst $38                                          ; $7e16: $ff
	rst $38                                          ; $7e17: $ff
	rst $38                                          ; $7e18: $ff
	rst $38                                          ; $7e19: $ff
	rst $38                                          ; $7e1a: $ff
	rst $38                                          ; $7e1b: $ff
	rst $38                                          ; $7e1c: $ff
	rst $38                                          ; $7e1d: $ff
	rst $38                                          ; $7e1e: $ff
	rst $38                                          ; $7e1f: $ff
	rst $38                                          ; $7e20: $ff
	rst $38                                          ; $7e21: $ff
	rst $38                                          ; $7e22: $ff
	rst $38                                          ; $7e23: $ff
	rst $38                                          ; $7e24: $ff
	rst $38                                          ; $7e25: $ff
	rst $38                                          ; $7e26: $ff
	rst $38                                          ; $7e27: $ff
	rst $38                                          ; $7e28: $ff
	rst $38                                          ; $7e29: $ff
	rst $38                                          ; $7e2a: $ff
	rst $38                                          ; $7e2b: $ff
	rst $38                                          ; $7e2c: $ff
	rst $38                                          ; $7e2d: $ff
	rst $38                                          ; $7e2e: $ff
	rst $38                                          ; $7e2f: $ff
	rst $38                                          ; $7e30: $ff
	rst $38                                          ; $7e31: $ff
	rst $38                                          ; $7e32: $ff
	rst $38                                          ; $7e33: $ff
	rst $38                                          ; $7e34: $ff
	rst $38                                          ; $7e35: $ff
	rst $38                                          ; $7e36: $ff
	rst $38                                          ; $7e37: $ff
	rst $38                                          ; $7e38: $ff
	rst $38                                          ; $7e39: $ff
	rst $38                                          ; $7e3a: $ff
	rst $38                                          ; $7e3b: $ff
	rst $38                                          ; $7e3c: $ff
	rst $38                                          ; $7e3d: $ff
	rst $38                                          ; $7e3e: $ff
	rst $38                                          ; $7e3f: $ff
	rst $38                                          ; $7e40: $ff
	rst $38                                          ; $7e41: $ff
	rst $38                                          ; $7e42: $ff
	rst $38                                          ; $7e43: $ff
	rst $38                                          ; $7e44: $ff
	rst $38                                          ; $7e45: $ff
	rst $38                                          ; $7e46: $ff
	rst $38                                          ; $7e47: $ff
	rst $38                                          ; $7e48: $ff
	rst $38                                          ; $7e49: $ff
	rst $38                                          ; $7e4a: $ff
	rst $38                                          ; $7e4b: $ff
	rst $38                                          ; $7e4c: $ff
	rst $38                                          ; $7e4d: $ff
	rst $38                                          ; $7e4e: $ff
	rst $38                                          ; $7e4f: $ff
	rst $38                                          ; $7e50: $ff
	rst $38                                          ; $7e51: $ff
	rst $38                                          ; $7e52: $ff
	rst $38                                          ; $7e53: $ff
	rst $38                                          ; $7e54: $ff
	rst $38                                          ; $7e55: $ff
	rst $38                                          ; $7e56: $ff
	rst $38                                          ; $7e57: $ff
	rst $38                                          ; $7e58: $ff
	rst $38                                          ; $7e59: $ff
	rst $38                                          ; $7e5a: $ff
	rst $38                                          ; $7e5b: $ff
	rst $38                                          ; $7e5c: $ff
	rst $38                                          ; $7e5d: $ff
	rst $38                                          ; $7e5e: $ff
	rst $38                                          ; $7e5f: $ff
	rst $38                                          ; $7e60: $ff
	rst $38                                          ; $7e61: $ff
	rst $38                                          ; $7e62: $ff

Jump_035_7e63:
	rst $38                                          ; $7e63: $ff
	rst $38                                          ; $7e64: $ff
	rst $38                                          ; $7e65: $ff
	rst $38                                          ; $7e66: $ff
	rst $38                                          ; $7e67: $ff
	rst $38                                          ; $7e68: $ff
	rst $38                                          ; $7e69: $ff
	rst $38                                          ; $7e6a: $ff
	rst $38                                          ; $7e6b: $ff
	rst $38                                          ; $7e6c: $ff
	rst $38                                          ; $7e6d: $ff
	rst $38                                          ; $7e6e: $ff
	rst $38                                          ; $7e6f: $ff
	rst $38                                          ; $7e70: $ff
	rst $38                                          ; $7e71: $ff
	rst $38                                          ; $7e72: $ff
	rst $38                                          ; $7e73: $ff
	rst $38                                          ; $7e74: $ff
	rst $38                                          ; $7e75: $ff
	rst $38                                          ; $7e76: $ff
	rst $38                                          ; $7e77: $ff
	rst $38                                          ; $7e78: $ff
	rst $38                                          ; $7e79: $ff
	rst $38                                          ; $7e7a: $ff
	rst $38                                          ; $7e7b: $ff
	rst $38                                          ; $7e7c: $ff
	rst $38                                          ; $7e7d: $ff
	rst $38                                          ; $7e7e: $ff
	rst $38                                          ; $7e7f: $ff
	rst $38                                          ; $7e80: $ff
	rst $38                                          ; $7e81: $ff
	rst $38                                          ; $7e82: $ff

Jump_035_7e83:
	rst $38                                          ; $7e83: $ff
	rst $38                                          ; $7e84: $ff
	rst $38                                          ; $7e85: $ff
	rst $38                                          ; $7e86: $ff
	rst $38                                          ; $7e87: $ff
	rst $38                                          ; $7e88: $ff
	rst $38                                          ; $7e89: $ff
	rst $38                                          ; $7e8a: $ff
	rst $38                                          ; $7e8b: $ff
	rst $38                                          ; $7e8c: $ff
	rst $38                                          ; $7e8d: $ff
	rst $38                                          ; $7e8e: $ff
	rst $38                                          ; $7e8f: $ff
	rst $38                                          ; $7e90: $ff
	rst $38                                          ; $7e91: $ff

Jump_035_7e92:
	rst $38                                          ; $7e92: $ff
	rst $38                                          ; $7e93: $ff
	rst $38                                          ; $7e94: $ff
	rst $38                                          ; $7e95: $ff
	rst $38                                          ; $7e96: $ff
	rst $38                                          ; $7e97: $ff
	rst $38                                          ; $7e98: $ff
	rst $38                                          ; $7e99: $ff
	rst $38                                          ; $7e9a: $ff
	rst $38                                          ; $7e9b: $ff
	rst $38                                          ; $7e9c: $ff
	rst $38                                          ; $7e9d: $ff
	rst $38                                          ; $7e9e: $ff
	rst $38                                          ; $7e9f: $ff
	rst $38                                          ; $7ea0: $ff
	rst $38                                          ; $7ea1: $ff
	rst $38                                          ; $7ea2: $ff
	rst $38                                          ; $7ea3: $ff
	rst $38                                          ; $7ea4: $ff
	rst $38                                          ; $7ea5: $ff
	rst $38                                          ; $7ea6: $ff
	rst $38                                          ; $7ea7: $ff
	rst $38                                          ; $7ea8: $ff
	rst $38                                          ; $7ea9: $ff
	rst $38                                          ; $7eaa: $ff
	rst $38                                          ; $7eab: $ff
	rst $38                                          ; $7eac: $ff
	rst $38                                          ; $7ead: $ff
	rst $38                                          ; $7eae: $ff
	rst $38                                          ; $7eaf: $ff
	rst $38                                          ; $7eb0: $ff
	rst $38                                          ; $7eb1: $ff
	rst $38                                          ; $7eb2: $ff
	rst $38                                          ; $7eb3: $ff
	rst $38                                          ; $7eb4: $ff
	rst $38                                          ; $7eb5: $ff
	rst $38                                          ; $7eb6: $ff
	rst $38                                          ; $7eb7: $ff
	rst $38                                          ; $7eb8: $ff
	rst $38                                          ; $7eb9: $ff
	rst $38                                          ; $7eba: $ff
	rst $38                                          ; $7ebb: $ff
	rst $38                                          ; $7ebc: $ff
	rst $38                                          ; $7ebd: $ff
	rst $38                                          ; $7ebe: $ff
	rst $38                                          ; $7ebf: $ff
	rst $38                                          ; $7ec0: $ff
	rst $38                                          ; $7ec1: $ff
	rst $38                                          ; $7ec2: $ff
	rst $38                                          ; $7ec3: $ff
	rst $38                                          ; $7ec4: $ff
	rst $38                                          ; $7ec5: $ff
	rst $38                                          ; $7ec6: $ff
	rst $38                                          ; $7ec7: $ff
	rst $38                                          ; $7ec8: $ff
	rst $38                                          ; $7ec9: $ff
	rst $38                                          ; $7eca: $ff
	rst $38                                          ; $7ecb: $ff
	rst $38                                          ; $7ecc: $ff
	rst $38                                          ; $7ecd: $ff
	rst $38                                          ; $7ece: $ff
	rst $38                                          ; $7ecf: $ff
	rst $38                                          ; $7ed0: $ff
	rst $38                                          ; $7ed1: $ff
	rst $38                                          ; $7ed2: $ff
	rst $38                                          ; $7ed3: $ff
	rst $38                                          ; $7ed4: $ff
	rst $38                                          ; $7ed5: $ff
	rst $38                                          ; $7ed6: $ff
	rst $38                                          ; $7ed7: $ff
	rst $38                                          ; $7ed8: $ff
	rst $38                                          ; $7ed9: $ff
	rst $38                                          ; $7eda: $ff
	rst $38                                          ; $7edb: $ff
	rst $38                                          ; $7edc: $ff
	rst $38                                          ; $7edd: $ff
	rst $38                                          ; $7ede: $ff
	rst $38                                          ; $7edf: $ff
	rst $38                                          ; $7ee0: $ff
	rst $38                                          ; $7ee1: $ff
	rst $38                                          ; $7ee2: $ff
	rst $38                                          ; $7ee3: $ff
	rst $38                                          ; $7ee4: $ff
	rst $38                                          ; $7ee5: $ff
	rst $38                                          ; $7ee6: $ff
	rst $38                                          ; $7ee7: $ff
	rst $38                                          ; $7ee8: $ff
	rst $38                                          ; $7ee9: $ff
	rst $38                                          ; $7eea: $ff
	rst $38                                          ; $7eeb: $ff
	rst $38                                          ; $7eec: $ff
	rst $38                                          ; $7eed: $ff
	rst $38                                          ; $7eee: $ff
	rst $38                                          ; $7eef: $ff
	rst $38                                          ; $7ef0: $ff
	rst $38                                          ; $7ef1: $ff
	rst $38                                          ; $7ef2: $ff
	rst $38                                          ; $7ef3: $ff
	rst $38                                          ; $7ef4: $ff
	rst $38                                          ; $7ef5: $ff
	rst $38                                          ; $7ef6: $ff
	rst $38                                          ; $7ef7: $ff
	rst $38                                          ; $7ef8: $ff
	rst $38                                          ; $7ef9: $ff
	rst $38                                          ; $7efa: $ff
	rst $38                                          ; $7efb: $ff
	rst $38                                          ; $7efc: $ff
	rst $38                                          ; $7efd: $ff
	rst $38                                          ; $7efe: $ff
	rst $38                                          ; $7eff: $ff
	rst $38                                          ; $7f00: $ff
	rst $38                                          ; $7f01: $ff
	rst $38                                          ; $7f02: $ff
	rst $38                                          ; $7f03: $ff
	rst $38                                          ; $7f04: $ff
	rst $38                                          ; $7f05: $ff
	rst $38                                          ; $7f06: $ff
	rst $38                                          ; $7f07: $ff
	rst $38                                          ; $7f08: $ff
	rst $38                                          ; $7f09: $ff
	rst $38                                          ; $7f0a: $ff
	rst $38                                          ; $7f0b: $ff
	rst $38                                          ; $7f0c: $ff
	rst $38                                          ; $7f0d: $ff
	rst $38                                          ; $7f0e: $ff
	rst $38                                          ; $7f0f: $ff
	rst $38                                          ; $7f10: $ff
	rst $38                                          ; $7f11: $ff
	rst $38                                          ; $7f12: $ff
	rst $38                                          ; $7f13: $ff
	rst $38                                          ; $7f14: $ff
	rst $38                                          ; $7f15: $ff
	rst $38                                          ; $7f16: $ff
	rst $38                                          ; $7f17: $ff
	rst $38                                          ; $7f18: $ff
	rst $38                                          ; $7f19: $ff
	rst $38                                          ; $7f1a: $ff
	rst $38                                          ; $7f1b: $ff
	rst $38                                          ; $7f1c: $ff
	rst $38                                          ; $7f1d: $ff
	rst $38                                          ; $7f1e: $ff
	rst $38                                          ; $7f1f: $ff
	rst $38                                          ; $7f20: $ff
	rst $38                                          ; $7f21: $ff
	rst $38                                          ; $7f22: $ff
	rst $38                                          ; $7f23: $ff
	rst $38                                          ; $7f24: $ff
	rst $38                                          ; $7f25: $ff
	rst $38                                          ; $7f26: $ff
	rst $38                                          ; $7f27: $ff
	rst $38                                          ; $7f28: $ff
	rst $38                                          ; $7f29: $ff
	rst $38                                          ; $7f2a: $ff
	rst $38                                          ; $7f2b: $ff
	rst $38                                          ; $7f2c: $ff
	rst $38                                          ; $7f2d: $ff
	rst $38                                          ; $7f2e: $ff
	rst $38                                          ; $7f2f: $ff
	rst $38                                          ; $7f30: $ff
	rst $38                                          ; $7f31: $ff
	rst $38                                          ; $7f32: $ff
	rst $38                                          ; $7f33: $ff
	rst $38                                          ; $7f34: $ff
	rst $38                                          ; $7f35: $ff
	rst $38                                          ; $7f36: $ff
	rst $38                                          ; $7f37: $ff
	rst $38                                          ; $7f38: $ff
	rst $38                                          ; $7f39: $ff
	rst $38                                          ; $7f3a: $ff
	rst $38                                          ; $7f3b: $ff
	rst $38                                          ; $7f3c: $ff
	rst $38                                          ; $7f3d: $ff
	rst $38                                          ; $7f3e: $ff
	rst $38                                          ; $7f3f: $ff
	rst $38                                          ; $7f40: $ff
	rst $38                                          ; $7f41: $ff
	rst $38                                          ; $7f42: $ff
	rst $38                                          ; $7f43: $ff
	rst $38                                          ; $7f44: $ff
	rst $38                                          ; $7f45: $ff
	rst $38                                          ; $7f46: $ff
	rst $38                                          ; $7f47: $ff
	rst $38                                          ; $7f48: $ff
	rst $38                                          ; $7f49: $ff
	rst $38                                          ; $7f4a: $ff
	rst $38                                          ; $7f4b: $ff
	rst $38                                          ; $7f4c: $ff
	rst $38                                          ; $7f4d: $ff
	rst $38                                          ; $7f4e: $ff
	rst $38                                          ; $7f4f: $ff
	rst $38                                          ; $7f50: $ff
	rst $38                                          ; $7f51: $ff
	rst $38                                          ; $7f52: $ff
	rst $38                                          ; $7f53: $ff
	rst $38                                          ; $7f54: $ff
	rst $38                                          ; $7f55: $ff
	rst $38                                          ; $7f56: $ff
	rst $38                                          ; $7f57: $ff
	rst $38                                          ; $7f58: $ff
	rst $38                                          ; $7f59: $ff
	rst $38                                          ; $7f5a: $ff
	rst $38                                          ; $7f5b: $ff
	rst $38                                          ; $7f5c: $ff
	rst $38                                          ; $7f5d: $ff
	rst $38                                          ; $7f5e: $ff
	rst $38                                          ; $7f5f: $ff
	rst $38                                          ; $7f60: $ff
	rst $38                                          ; $7f61: $ff
	rst $38                                          ; $7f62: $ff
	rst $38                                          ; $7f63: $ff
	rst $38                                          ; $7f64: $ff
	rst $38                                          ; $7f65: $ff
	rst $38                                          ; $7f66: $ff
	rst $38                                          ; $7f67: $ff
	rst $38                                          ; $7f68: $ff
	rst $38                                          ; $7f69: $ff
	rst $38                                          ; $7f6a: $ff
	rst $38                                          ; $7f6b: $ff
	rst $38                                          ; $7f6c: $ff
	rst $38                                          ; $7f6d: $ff
	rst $38                                          ; $7f6e: $ff
	rst $38                                          ; $7f6f: $ff
	rst $38                                          ; $7f70: $ff
	rst $38                                          ; $7f71: $ff
	rst $38                                          ; $7f72: $ff
	rst $38                                          ; $7f73: $ff
	rst $38                                          ; $7f74: $ff
	rst $38                                          ; $7f75: $ff
	rst $38                                          ; $7f76: $ff
	rst $38                                          ; $7f77: $ff
	rst $38                                          ; $7f78: $ff
	rst $38                                          ; $7f79: $ff
	rst $38                                          ; $7f7a: $ff
	rst $38                                          ; $7f7b: $ff
	rst $38                                          ; $7f7c: $ff
	rst $38                                          ; $7f7d: $ff
	rst $38                                          ; $7f7e: $ff
	rst $38                                          ; $7f7f: $ff
	rst $38                                          ; $7f80: $ff
	rst $38                                          ; $7f81: $ff
	rst $38                                          ; $7f82: $ff
	rst $38                                          ; $7f83: $ff
	rst $38                                          ; $7f84: $ff
	rst $38                                          ; $7f85: $ff
	rst $38                                          ; $7f86: $ff
	rst $38                                          ; $7f87: $ff
	rst $38                                          ; $7f88: $ff
	rst $38                                          ; $7f89: $ff
	rst $38                                          ; $7f8a: $ff
	rst $38                                          ; $7f8b: $ff
	rst $38                                          ; $7f8c: $ff
	rst $38                                          ; $7f8d: $ff
	rst $38                                          ; $7f8e: $ff
	rst $38                                          ; $7f8f: $ff
	rst $38                                          ; $7f90: $ff
	rst $38                                          ; $7f91: $ff
	rst $38                                          ; $7f92: $ff
	rst $38                                          ; $7f93: $ff
	rst $38                                          ; $7f94: $ff
	rst $38                                          ; $7f95: $ff
	rst $38                                          ; $7f96: $ff
	rst $38                                          ; $7f97: $ff
	rst $38                                          ; $7f98: $ff
	rst $38                                          ; $7f99: $ff
	rst $38                                          ; $7f9a: $ff
	rst $38                                          ; $7f9b: $ff
	rst $38                                          ; $7f9c: $ff
	rst $38                                          ; $7f9d: $ff
	rst $38                                          ; $7f9e: $ff
	rst $38                                          ; $7f9f: $ff
	rst $38                                          ; $7fa0: $ff
	rst $38                                          ; $7fa1: $ff
	rst $38                                          ; $7fa2: $ff
	rst $38                                          ; $7fa3: $ff
	rst $38                                          ; $7fa4: $ff
	rst $38                                          ; $7fa5: $ff
	rst $38                                          ; $7fa6: $ff
	rst $38                                          ; $7fa7: $ff
	rst $38                                          ; $7fa8: $ff
	rst $38                                          ; $7fa9: $ff
	rst $38                                          ; $7faa: $ff
	rst $38                                          ; $7fab: $ff
	rst $38                                          ; $7fac: $ff
	rst $38                                          ; $7fad: $ff
	rst $38                                          ; $7fae: $ff
	rst $38                                          ; $7faf: $ff
	rst $38                                          ; $7fb0: $ff
	rst $38                                          ; $7fb1: $ff
	rst $38                                          ; $7fb2: $ff
	rst $38                                          ; $7fb3: $ff
	rst $38                                          ; $7fb4: $ff
	rst $38                                          ; $7fb5: $ff
	rst $38                                          ; $7fb6: $ff
	rst $38                                          ; $7fb7: $ff
	rst $38                                          ; $7fb8: $ff
	rst $38                                          ; $7fb9: $ff
	rst $38                                          ; $7fba: $ff
	rst $38                                          ; $7fbb: $ff
	rst $38                                          ; $7fbc: $ff
	rst $38                                          ; $7fbd: $ff
	rst $38                                          ; $7fbe: $ff
	rst $38                                          ; $7fbf: $ff
	rst $38                                          ; $7fc0: $ff
	rst $38                                          ; $7fc1: $ff
	rst $38                                          ; $7fc2: $ff
	rst $38                                          ; $7fc3: $ff
	rst $38                                          ; $7fc4: $ff
	rst $38                                          ; $7fc5: $ff
	rst $38                                          ; $7fc6: $ff
	rst $38                                          ; $7fc7: $ff
	rst $38                                          ; $7fc8: $ff
	rst $38                                          ; $7fc9: $ff
	rst $38                                          ; $7fca: $ff
	rst $38                                          ; $7fcb: $ff
	rst $38                                          ; $7fcc: $ff
	rst $38                                          ; $7fcd: $ff
	rst $38                                          ; $7fce: $ff
	rst $38                                          ; $7fcf: $ff
	rst $38                                          ; $7fd0: $ff
	rst $38                                          ; $7fd1: $ff
	rst $38                                          ; $7fd2: $ff
	rst $38                                          ; $7fd3: $ff
	rst $38                                          ; $7fd4: $ff
	rst $38                                          ; $7fd5: $ff
	rst $38                                          ; $7fd6: $ff
	rst $38                                          ; $7fd7: $ff
	rst $38                                          ; $7fd8: $ff
	rst $38                                          ; $7fd9: $ff
	rst $38                                          ; $7fda: $ff
	rst $38                                          ; $7fdb: $ff
	rst $38                                          ; $7fdc: $ff
	rst $38                                          ; $7fdd: $ff
	rst $38                                          ; $7fde: $ff
	rst $38                                          ; $7fdf: $ff
	rst $38                                          ; $7fe0: $ff
	rst $38                                          ; $7fe1: $ff
	rst $38                                          ; $7fe2: $ff
	rst $38                                          ; $7fe3: $ff
	rst $38                                          ; $7fe4: $ff
	rst $38                                          ; $7fe5: $ff
	rst $38                                          ; $7fe6: $ff
	rst $38                                          ; $7fe7: $ff
	rst $38                                          ; $7fe8: $ff
	rst $38                                          ; $7fe9: $ff
	rst $38                                          ; $7fea: $ff
	rst $38                                          ; $7feb: $ff
	rst $38                                          ; $7fec: $ff
	rst $38                                          ; $7fed: $ff
	rst $38                                          ; $7fee: $ff
	rst $38                                          ; $7fef: $ff
	rst $38                                          ; $7ff0: $ff
	rst $38                                          ; $7ff1: $ff
	rst $38                                          ; $7ff2: $ff
	rst $38                                          ; $7ff3: $ff
	rst $38                                          ; $7ff4: $ff
	rst $38                                          ; $7ff5: $ff
	rst $38                                          ; $7ff6: $ff
	rst $38                                          ; $7ff7: $ff
	rst $38                                          ; $7ff8: $ff
	rst $38                                          ; $7ff9: $ff
	rst $38                                          ; $7ffa: $ff
	rst $38                                          ; $7ffb: $ff
	rst $38                                          ; $7ffc: $ff
	rst $38                                          ; $7ffd: $ff
	rst $38                                          ; $7ffe: $ff
	rst $38                                          ; $7fff: $ff
