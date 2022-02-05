; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $080", ROMX[$4000], BANK[$80]

	ld b, $c0                                        ; $4000: $06 $c0
	ld bc, $05a0                                     ; $4002: $01 $a0 $05
	ld [bc], a                                       ; $4005: $02
	dec e                                            ; $4006: $1d
	ccf                                              ; $4007: $3f
	ld [bc], a                                       ; $4008: $02
	ld h, $09                                        ; $4009: $26 $09
	ld de, $02e1                                     ; $400b: $11 $e1 $02
	inc bc                                           ; $400e: $03
	inc de                                           ; $400f: $13
	ret nz                                           ; $4010: $c0

	ld bc, $05a0                                     ; $4011: $01 $a0 $05
	ld [bc], a                                       ; $4014: $02
	inc l                                            ; $4015: $2c
	pop hl                                           ; $4016: $e1
	ld [bc], a                                       ; $4017: $02
	inc bc                                           ; $4018: $03
	or h                                             ; $4019: $b4
	db $e4                                           ; $401a: $e4
	ld [bc], a                                       ; $401b: $02
	di                                               ; $401c: $f3
	ld [bc], a                                       ; $401d: $02
	scf                                              ; $401e: $37
	add hl, bc                                       ; $401f: $09
	ld de, $02e1                                     ; $4020: $11 $e1 $02
	inc bc                                           ; $4023: $03
	dec de                                           ; $4024: $1b
	ret nz                                           ; $4025: $c0

	ld bc, $05a0                                     ; $4026: $01 $a0 $05
	ld [bc], a                                       ; $4029: $02
	ccf                                              ; $402a: $3f
	pop hl                                           ; $402b: $e1
	ld [bc], a                                       ; $402c: $02
	inc bc                                           ; $402d: $03
	rst GetHLinHL                                          ; $402e: $cf
	db $e4                                           ; $402f: $e4
	ld [bc], a                                       ; $4030: $02
	sbc $02                                          ; $4031: $de $02
	ld c, c                                          ; $4033: $49
	add hl, bc                                       ; $4034: $09
	ld de, $02e1                                     ; $4035: $11 $e1 $02
	inc bc                                           ; $4038: $03
	rla                                              ; $4039: $17
	ret nz                                           ; $403a: $c0

	ld bc, $05a0                                     ; $403b: $01 $a0 $05
	ld [bc], a                                       ; $403e: $02
	ld c, l                                          ; $403f: $4d
	pop hl                                           ; $4040: $e1
	ld [bc], a                                       ; $4041: $02
	inc bc                                           ; $4042: $03
	add $e4                                          ; $4043: $c6 $e4
	ld [bc], a                                       ; $4045: $02
	ret                                              ; $4046: $c9


	add hl, bc                                       ; $4047: $09
	ld hl, $59c1                                     ; $4048: $21 $c1 $59
	db $e3                                           ; $404b: $e3
	nop                                              ; $404c: $00
	adc [hl]                                         ; $404d: $8e
	ret nz                                           ; $404e: $c0

	ld bc, $05a0                                     ; $404f: $01 $a0 $05
	ld [bc], a                                       ; $4052: $02
	ld d, l                                          ; $4053: $55
	pop hl                                           ; $4054: $e1
	ld [bc], a                                       ; $4055: $02
	rlca                                             ; $4056: $07
	rst FarCall                                          ; $4057: $f7
	and b                                            ; $4058: $a0
	add b                                            ; $4059: $80
	and b                                            ; $405a: $a0
	ld de, $0300                                     ; $405b: $11 $00 $03
	db $e4                                           ; $405e: $e4
	nop                                              ; $405f: $00
	dec bc                                           ; $4060: $0b
	rst $38                                          ; $4061: $ff
	rlca                                             ; $4062: $07
	ld b, b                                          ; $4063: $40
	add b                                            ; $4064: $80
	and b                                            ; $4065: $a0
	ld de, $00e4                                     ; $4066: $11 $e4 $00
	ld c, d                                          ; $4069: $4a
	jr z, jr_080_4072                                ; $406a: $28 $06

	ret nz                                           ; $406c: $c0

	ld bc, $05a0                                     ; $406d: $01 $a0 $05
	ld [bc], a                                       ; $4070: $02
	ld e, c                                          ; $4071: $59

jr_080_4072:
	ccf                                              ; $4072: $3f
	ld [bc], a                                       ; $4073: $02
	ld e, [hl]                                       ; $4074: $5e
	add hl, bc                                       ; $4075: $09
	ld de, $02e1                                     ; $4076: $11 $e1 $02
	inc bc                                           ; $4079: $03
	inc de                                           ; $407a: $13
	ret nz                                           ; $407b: $c0

	ld bc, $05a0                                     ; $407c: $01 $a0 $05
	ld [bc], a                                       ; $407f: $02
	ld h, b                                          ; $4080: $60
	pop hl                                           ; $4081: $e1
	ld [bc], a                                       ; $4082: $02
	inc bc                                           ; $4083: $03
	cp l                                             ; $4084: $bd
	db $e4                                           ; $4085: $e4
	ld [bc], a                                       ; $4086: $02
	adc b                                            ; $4087: $88
	ld [bc], a                                       ; $4088: $02
	ld h, l                                          ; $4089: $65
	add hl, bc                                       ; $408a: $09
	ld de, $02e1                                     ; $408b: $11 $e1 $02
	inc bc                                           ; $408e: $03
	rra                                              ; $408f: $1f
	ret nz                                           ; $4090: $c0

	ld bc, $05a0                                     ; $4091: $01 $a0 $05
	ld [bc], a                                       ; $4094: $02
	ld h, a                                          ; $4095: $67
	pop hl                                           ; $4096: $e1
	ld [bc], a                                       ; $4097: $02
	inc bc                                           ; $4098: $03
	ret c                                            ; $4099: $d8

	db $e4                                           ; $409a: $e4
	ld [bc], a                                       ; $409b: $02
	ld [hl], e                                       ; $409c: $73
	ld [bc], a                                       ; $409d: $02
	ld l, [hl]                                       ; $409e: $6e
	add hl, bc                                       ; $409f: $09
	ld de, $02e1                                     ; $40a0: $11 $e1 $02
	inc bc                                           ; $40a3: $03
	rla                                              ; $40a4: $17
	ret nz                                           ; $40a5: $c0

	ld bc, $05a0                                     ; $40a6: $01 $a0 $05
	ld [bc], a                                       ; $40a9: $02
	ld [hl], l                                       ; $40aa: $75
	pop hl                                           ; $40ab: $e1
	ld [bc], a                                       ; $40ac: $02
	inc bc                                           ; $40ad: $03
	add $e4                                          ; $40ae: $c6 $e4
	ld [bc], a                                       ; $40b0: $02
	ld e, [hl]                                       ; $40b1: $5e
	jr z, jr_080_40ba                                ; $40b2: $28 $06

	ret nz                                           ; $40b4: $c0

	ld bc, $05a0                                     ; $40b5: $01 $a0 $05
	ld [bc], a                                       ; $40b8: $02
	ld a, a                                          ; $40b9: $7f

jr_080_40ba:
	ccf                                              ; $40ba: $3f
	ld [bc], a                                       ; $40bb: $02
	add h                                            ; $40bc: $84
	add hl, bc                                       ; $40bd: $09
	ld de, $02e1                                     ; $40be: $11 $e1 $02
	inc bc                                           ; $40c1: $03
	rla                                              ; $40c2: $17
	ret nz                                           ; $40c3: $c0

	ld bc, $05a0                                     ; $40c4: $01 $a0 $05
	ld [bc], a                                       ; $40c7: $02
	adc e                                            ; $40c8: $8b
	pop hl                                           ; $40c9: $e1
	ld [bc], a                                       ; $40ca: $02
	inc bc                                           ; $40cb: $03
	add $e4                                          ; $40cc: $c6 $e4
	ld [bc], a                                       ; $40ce: $02
	ld b, b                                          ; $40cf: $40
	ld [bc], a                                       ; $40d0: $02
	sbc c                                            ; $40d1: $99
	add hl, bc                                       ; $40d2: $09
	ld de, $02e1                                     ; $40d3: $11 $e1 $02
	inc bc                                           ; $40d6: $03
	dec de                                           ; $40d7: $1b
	ret nz                                           ; $40d8: $c0

	ld bc, $05a0                                     ; $40d9: $01 $a0 $05
	ld [bc], a                                       ; $40dc: $02
	and b                                            ; $40dd: $a0
	pop hl                                           ; $40de: $e1
	ld [bc], a                                       ; $40df: $02
	inc bc                                           ; $40e0: $03
	rst GetHLinHL                                          ; $40e1: $cf
	db $e4                                           ; $40e2: $e4
	ld [bc], a                                       ; $40e3: $02
	dec hl                                           ; $40e4: $2b
	ld [bc], a                                       ; $40e5: $02
	xor e                                            ; $40e6: $ab
	add hl, bc                                       ; $40e7: $09
	ld de, $02e1                                     ; $40e8: $11 $e1 $02
	inc bc                                           ; $40eb: $03
	rla                                              ; $40ec: $17
	ret nz                                           ; $40ed: $c0

	ld bc, $05a0                                     ; $40ee: $01 $a0 $05
	ld [bc], a                                       ; $40f1: $02
	or d                                             ; $40f2: $b2
	pop hl                                           ; $40f3: $e1
	ld [bc], a                                       ; $40f4: $02
	inc bc                                           ; $40f5: $03
	add $e4                                          ; $40f6: $c6 $e4
	ld [bc], a                                       ; $40f8: $02
	ld d, $09                                        ; $40f9: $16 $09
	daa                                              ; $40fb: $27
	pop bc                                           ; $40fc: $c1
	ld e, c                                          ; $40fd: $59
	db $e3                                           ; $40fe: $e3
	nop                                              ; $40ff: $00
	adc a                                            ; $4100: $8f
	ret nz                                           ; $4101: $c0

	ld bc, $05a0                                     ; $4102: $01 $a0 $05
	ld [bc], a                                       ; $4105: $02
	cp b                                             ; $4106: $b8
	ret nz                                           ; $4107: $c0

	ld bc, $01a0                                     ; $4108: $01 $a0 $01
	ld [bc], a                                       ; $410b: $02
	jp $02e1                                         ; $410c: $c3 $e1 $02


	ld [$a016], sp                                   ; $410f: $08 $16 $a0
	add b                                            ; $4112: $80
	and b                                            ; $4113: $a0
	ld [de], a                                       ; $4114: $12
	nop                                              ; $4115: $00
	inc bc                                           ; $4116: $03
	db $e4                                           ; $4117: $e4
	nop                                              ; $4118: $00
	dec bc                                           ; $4119: $0b
	rst $38                                          ; $411a: $ff
	rlca                                             ; $411b: $07
	ld b, b                                          ; $411c: $40
	add b                                            ; $411d: $80
	and b                                            ; $411e: $a0
	ld [de], a                                       ; $411f: $12
	db $e4                                           ; $4120: $e4
	nop                                              ; $4121: $00
	ld c, d                                          ; $4122: $4a
	jr z, jr_080_412b                                ; $4123: $28 $06

	ret nz                                           ; $4125: $c0

	ld bc, $05a0                                     ; $4126: $01 $a0 $05
	ld [bc], a                                       ; $4129: $02
	rst JumpTable                                          ; $412a: $c7

jr_080_412b:
	ccf                                              ; $412b: $3f
	ld [bc], a                                       ; $412c: $02
	rst GetHLinHL                                          ; $412d: $cf
	add hl, bc                                       ; $412e: $09
	ld de, $02e1                                     ; $412f: $11 $e1 $02
	inc bc                                           ; $4132: $03
	inc de                                           ; $4133: $13
	ret nz                                           ; $4134: $c0

	ld bc, $05a0                                     ; $4135: $01 $a0 $05
	ld [bc], a                                       ; $4138: $02
	jp nc, $02e1                                     ; $4139: $d2 $e1 $02

	inc bc                                           ; $413c: $03
	cp l                                             ; $413d: $bd
	db $e4                                           ; $413e: $e4
	ld bc, $02cf                                     ; $413f: $01 $cf $02
	sbc $09                                          ; $4142: $de $09
	ld de, $02e1                                     ; $4144: $11 $e1 $02
	inc bc                                           ; $4147: $03
	dec de                                           ; $4148: $1b
	ret nz                                           ; $4149: $c0

	ld bc, $05a0                                     ; $414a: $01 $a0 $05
	ld [bc], a                                       ; $414d: $02
	ldh [$e1], a                                     ; $414e: $e0 $e1
	ld [bc], a                                       ; $4150: $02
	inc bc                                           ; $4151: $03
	ret c                                            ; $4152: $d8

	db $e4                                           ; $4153: $e4
	ld bc, $02ba                                     ; $4154: $01 $ba $02
	rst AddAOntoHL                                          ; $4157: $ef
	add hl, bc                                       ; $4158: $09
	ld de, $02e1                                     ; $4159: $11 $e1 $02
	inc bc                                           ; $415c: $03
	rla                                              ; $415d: $17
	ret nz                                           ; $415e: $c0

	ld bc, $05a0                                     ; $415f: $01 $a0 $05
	ld [bc], a                                       ; $4162: $02
	pop af                                           ; $4163: $f1
	pop hl                                           ; $4164: $e1
	ld [bc], a                                       ; $4165: $02
	inc bc                                           ; $4166: $03
	add $e4                                          ; $4167: $c6 $e4
	ld bc, $28a5                                     ; $4169: $01 $a5 $28
	ld b, $c0                                        ; $416c: $06 $c0
	ld bc, $05a0                                     ; $416e: $01 $a0 $05
	ld [bc], a                                       ; $4171: $02
	ld sp, hl                                        ; $4172: $f9
	ccf                                              ; $4173: $3f
	inc bc                                           ; $4174: $03
	nop                                              ; $4175: $00
	add hl, bc                                       ; $4176: $09
	ld de, $02e1                                     ; $4177: $11 $e1 $02
	inc bc                                           ; $417a: $03
	rla                                              ; $417b: $17
	ret nz                                           ; $417c: $c0

	ld bc, $05a0                                     ; $417d: $01 $a0 $05
	inc bc                                           ; $4180: $03
	ld [$02e1], sp                                   ; $4181: $08 $e1 $02
	inc bc                                           ; $4184: $03
	add $e4                                          ; $4185: $c6 $e4
	ld bc, $0387                                     ; $4187: $01 $87 $03
	jr jr_080_4195                                   ; $418a: $18 $09

	ld de, $02e1                                     ; $418c: $11 $e1 $02
	inc bc                                           ; $418f: $03
	dec de                                           ; $4190: $1b
	ret nz                                           ; $4191: $c0

	ld bc, $05a0                                     ; $4192: $01 $a0 $05

jr_080_4195:
	inc bc                                           ; $4195: $03
	ld e, $e1                                        ; $4196: $1e $e1
	ld [bc], a                                       ; $4198: $02
	inc bc                                           ; $4199: $03
	ret c                                            ; $419a: $d8

	db $e4                                           ; $419b: $e4
	ld bc, $0372                                     ; $419c: $01 $72 $03
	jr z, jr_080_41aa                                ; $419f: $28 $09

	ld de, $02e1                                     ; $41a1: $11 $e1 $02
	inc bc                                           ; $41a4: $03
	rla                                              ; $41a5: $17
	ret nz                                           ; $41a6: $c0

	ld bc, $05a0                                     ; $41a7: $01 $a0 $05

jr_080_41aa:
	inc bc                                           ; $41aa: $03
	ld l, $e1                                        ; $41ab: $2e $e1
	ld [bc], a                                       ; $41ad: $02
	inc bc                                           ; $41ae: $03
	add $e4                                          ; $41af: $c6 $e4
	ld bc, $095d                                     ; $41b1: $01 $5d $09
	ld hl, $59c1                                     ; $41b4: $21 $c1 $59
	db $e3                                           ; $41b7: $e3
	nop                                              ; $41b8: $00
	sub b                                            ; $41b9: $90
	ret nz                                           ; $41ba: $c0

	ld bc, $05a0                                     ; $41bb: $01 $a0 $05
	inc bc                                           ; $41be: $03
	inc [hl]                                         ; $41bf: $34
	pop hl                                           ; $41c0: $e1
	ld [bc], a                                       ; $41c1: $02
	ld [$a02a], sp                                   ; $41c2: $08 $2a $a0
	add b                                            ; $41c5: $80
	and b                                            ; $41c6: $a0
	inc de                                           ; $41c7: $13
	nop                                              ; $41c8: $00
	inc bc                                           ; $41c9: $03
	db $e4                                           ; $41ca: $e4
	nop                                              ; $41cb: $00
	dec bc                                           ; $41cc: $0b
	rst $38                                          ; $41cd: $ff
	rlca                                             ; $41ce: $07
	ld b, b                                          ; $41cf: $40
	add b                                            ; $41d0: $80
	and b                                            ; $41d1: $a0
	inc de                                           ; $41d2: $13
	db $e4                                           ; $41d3: $e4
	nop                                              ; $41d4: $00
	ld c, d                                          ; $41d5: $4a
	jr z, jr_080_41de                                ; $41d6: $28 $06

	ret nz                                           ; $41d8: $c0

	ld bc, $05a0                                     ; $41d9: $01 $a0 $05
	inc bc                                           ; $41dc: $03
	dec a                                            ; $41dd: $3d

jr_080_41de:
	ccf                                              ; $41de: $3f
	inc bc                                           ; $41df: $03
	ld c, l                                          ; $41e0: $4d
	add hl, bc                                       ; $41e1: $09
	ld de, $02e1                                     ; $41e2: $11 $e1 $02
	inc bc                                           ; $41e5: $03
	inc de                                           ; $41e6: $13
	ret nz                                           ; $41e7: $c0

	ld bc, $05a0                                     ; $41e8: $01 $a0 $05
	inc bc                                           ; $41eb: $03
	ld e, b                                          ; $41ec: $58
	pop hl                                           ; $41ed: $e1
	ld [bc], a                                       ; $41ee: $02
	inc bc                                           ; $41ef: $03
	cp l                                             ; $41f0: $bd
	db $e4                                           ; $41f1: $e4
	ld bc, $031c                                     ; $41f2: $01 $1c $03
	ld h, a                                          ; $41f5: $67
	add hl, bc                                       ; $41f6: $09
	ld de, $02e1                                     ; $41f7: $11 $e1 $02
	inc bc                                           ; $41fa: $03
	dec de                                           ; $41fb: $1b
	ret nz                                           ; $41fc: $c0

	ld bc, $05a0                                     ; $41fd: $01 $a0 $05
	inc bc                                           ; $4200: $03
	ld l, c                                          ; $4201: $69
	pop hl                                           ; $4202: $e1
	ld [bc], a                                       ; $4203: $02
	inc bc                                           ; $4204: $03
	rst GetHLinHL                                          ; $4205: $cf
	db $e4                                           ; $4206: $e4
	ld bc, $0307                                     ; $4207: $01 $07 $03
	ld l, a                                          ; $420a: $6f
	add hl, bc                                       ; $420b: $09
	ld de, $02e1                                     ; $420c: $11 $e1 $02
	inc bc                                           ; $420f: $03
	rla                                              ; $4210: $17
	ret nz                                           ; $4211: $c0

	ld bc, $05a0                                     ; $4212: $01 $a0 $05
	inc bc                                           ; $4215: $03
	ld [hl], c                                       ; $4216: $71
	pop hl                                           ; $4217: $e1
	ld [bc], a                                       ; $4218: $02
	inc bc                                           ; $4219: $03
	add $e4                                          ; $421a: $c6 $e4
	nop                                              ; $421c: $00
	ldh a, [c]                                       ; $421d: $f2
	jr z, jr_080_4226                                ; $421e: $28 $06

	ret nz                                           ; $4220: $c0

	ld bc, $05a0                                     ; $4221: $01 $a0 $05
	inc bc                                           ; $4224: $03
	halt                                             ; $4225: $76

jr_080_4226:
	ccf                                              ; $4226: $3f
	inc bc                                           ; $4227: $03
	ld a, [hl]                                       ; $4228: $7e
	add hl, bc                                       ; $4229: $09
	ld de, $02e1                                     ; $422a: $11 $e1 $02
	inc bc                                           ; $422d: $03
	inc de                                           ; $422e: $13
	ret nz                                           ; $422f: $c0

	ld bc, $05a0                                     ; $4230: $01 $a0 $05
	inc bc                                           ; $4233: $03
	add l                                            ; $4234: $85
	pop hl                                           ; $4235: $e1
	ld [bc], a                                       ; $4236: $02
	inc bc                                           ; $4237: $03
	cp l                                             ; $4238: $bd
	db $e4                                           ; $4239: $e4
	nop                                              ; $423a: $00
	call nc, $8e03                                   ; $423b: $d4 $03 $8e
	add hl, bc                                       ; $423e: $09
	ld de, $02e1                                     ; $423f: $11 $e1 $02
	inc bc                                           ; $4242: $03
	rra                                              ; $4243: $1f
	ret nz                                           ; $4244: $c0

	ld bc, $05a0                                     ; $4245: $01 $a0 $05
	inc bc                                           ; $4248: $03
	sub h                                            ; $4249: $94
	pop hl                                           ; $424a: $e1
	ld [bc], a                                       ; $424b: $02
	inc bc                                           ; $424c: $03
	ret c                                            ; $424d: $d8

	db $e4                                           ; $424e: $e4
	nop                                              ; $424f: $00
	cp a                                             ; $4250: $bf
	inc bc                                           ; $4251: $03
	sbc h                                            ; $4252: $9c
	add hl, bc                                       ; $4253: $09
	ld de, $02e1                                     ; $4254: $11 $e1 $02
	inc bc                                           ; $4257: $03
	dec de                                           ; $4258: $1b
	ret nz                                           ; $4259: $c0

	ld bc, $05a0                                     ; $425a: $01 $a0 $05
	inc bc                                           ; $425d: $03
	and h                                            ; $425e: $a4
	pop hl                                           ; $425f: $e1
	ld [bc], a                                       ; $4260: $02
	inc bc                                           ; $4261: $03
	rst GetHLinHL                                          ; $4262: $cf
	db $e4                                           ; $4263: $e4
	nop                                              ; $4264: $00
	xor d                                            ; $4265: $aa
	add hl, bc                                       ; $4266: $09
	ld d, $e1                                        ; $4267: $16 $e1
	ld [bc], a                                       ; $4269: $02
	ld [$a03e], sp                                   ; $426a: $08 $3e $a0
	add b                                            ; $426d: $80
	and b                                            ; $426e: $a0
	inc d                                            ; $426f: $14
	nop                                              ; $4270: $00
	inc bc                                           ; $4271: $03
	db $e4                                           ; $4272: $e4
	nop                                              ; $4273: $00
	dec bc                                           ; $4274: $0b
	rst $38                                          ; $4275: $ff
	rlca                                             ; $4276: $07
	ld b, b                                          ; $4277: $40
	add b                                            ; $4278: $80
	and b                                            ; $4279: $a0
	inc d                                            ; $427a: $14
	db $e4                                           ; $427b: $e4
	nop                                              ; $427c: $00
	ld c, d                                          ; $427d: $4a
	jr z, jr_080_4286                                ; $427e: $28 $06

	ret nz                                           ; $4280: $c0

	ld bc, $05a0                                     ; $4281: $01 $a0 $05
	inc bc                                           ; $4284: $03
	xor b                                            ; $4285: $a8

jr_080_4286:
	ccf                                              ; $4286: $3f
	inc bc                                           ; $4287: $03
	xor a                                            ; $4288: $af
	add hl, bc                                       ; $4289: $09
	ld de, $02e1                                     ; $428a: $11 $e1 $02
	inc bc                                           ; $428d: $03
	rla                                              ; $428e: $17
	ret nz                                           ; $428f: $c0

	ld bc, $05a0                                     ; $4290: $01 $a0 $05
	inc bc                                           ; $4293: $03
	or [hl]                                          ; $4294: $b6
	pop hl                                           ; $4295: $e1
	ld [bc], a                                       ; $4296: $02
	inc bc                                           ; $4297: $03
	add $e4                                          ; $4298: $c6 $e4
	nop                                              ; $429a: $00
	ld [hl], h                                       ; $429b: $74
	inc bc                                           ; $429c: $03
	ret nz                                           ; $429d: $c0

	add hl, bc                                       ; $429e: $09
	ld de, $02e1                                     ; $429f: $11 $e1 $02
	inc bc                                           ; $42a2: $03
	rra                                              ; $42a3: $1f
	ret nz                                           ; $42a4: $c0

	ld bc, $05a0                                     ; $42a5: $01 $a0 $05
	inc bc                                           ; $42a8: $03
	jp nz, $02e1                                     ; $42a9: $c2 $e1 $02

	inc bc                                           ; $42ac: $03
	ret c                                            ; $42ad: $d8

	db $e4                                           ; $42ae: $e4
	nop                                              ; $42af: $00
	ld e, a                                          ; $42b0: $5f
	inc bc                                           ; $42b1: $03
	ret z                                            ; $42b2: $c8

	add hl, bc                                       ; $42b3: $09
	ld de, $02e1                                     ; $42b4: $11 $e1 $02
	inc bc                                           ; $42b7: $03
	dec de                                           ; $42b8: $1b
	ret nz                                           ; $42b9: $c0

	ld bc, $05a0                                     ; $42ba: $01 $a0 $05
	inc bc                                           ; $42bd: $03
	set 4, c                                         ; $42be: $cb $e1
	ld [bc], a                                       ; $42c0: $02
	inc bc                                           ; $42c1: $03
	rst GetHLinHL                                          ; $42c2: $cf
	db $e4                                           ; $42c3: $e4
	nop                                              ; $42c4: $00
	ld c, d                                          ; $42c5: $4a
	jr z, @+$08                                      ; $42c6: $28 $06

	ret nz                                           ; $42c8: $c0

	ld bc, $05a0                                     ; $42c9: $01 $a0 $05
	inc bc                                           ; $42cc: $03
	sub $3f                                          ; $42cd: $d6 $3f
	inc bc                                           ; $42cf: $03
	rst SubAFromDE                                          ; $42d0: $df
	add hl, bc                                       ; $42d1: $09
	ld de, $02e1                                     ; $42d2: $11 $e1 $02
	inc bc                                           ; $42d5: $03
	rla                                              ; $42d6: $17
	ret nz                                           ; $42d7: $c0

	ld bc, $05a0                                     ; $42d8: $01 $a0 $05
	inc bc                                           ; $42db: $03
	pop hl                                           ; $42dc: $e1
	pop hl                                           ; $42dd: $e1
	ld [bc], a                                       ; $42de: $02
	inc bc                                           ; $42df: $03
	add $e4                                          ; $42e0: $c6 $e4
	nop                                              ; $42e2: $00
	inc l                                            ; $42e3: $2c
	inc bc                                           ; $42e4: $03
	and $09                                          ; $42e5: $e6 $09
	ld de, $02e1                                     ; $42e7: $11 $e1 $02
	inc bc                                           ; $42ea: $03
	dec de                                           ; $42eb: $1b
	ret nz                                           ; $42ec: $c0

	ld bc, $05a0                                     ; $42ed: $01 $a0 $05
	inc bc                                           ; $42f0: $03
	jp hl                                            ; $42f1: $e9


	pop hl                                           ; $42f2: $e1
	ld [bc], a                                       ; $42f3: $02
	inc bc                                           ; $42f4: $03
	rst GetHLinHL                                          ; $42f5: $cf
	db $e4                                           ; $42f6: $e4
	nop                                              ; $42f7: $00
	rla                                              ; $42f8: $17
	inc bc                                           ; $42f9: $03
	di                                               ; $42fa: $f3
	add hl, bc                                       ; $42fb: $09
	ld de, $02e1                                     ; $42fc: $11 $e1 $02
	inc bc                                           ; $42ff: $03
	dec de                                           ; $4300: $1b
	ret nz                                           ; $4301: $c0

	ld bc, $05a0                                     ; $4302: $01 $a0 $05
	inc bc                                           ; $4305: $03
	push af                                          ; $4306: $f5
	pop hl                                           ; $4307: $e1
	ld [bc], a                                       ; $4308: $02
	inc bc                                           ; $4309: $03
	rst GetHLinHL                                          ; $430a: $cf
	db $e4                                           ; $430b: $e4
	nop                                              ; $430c: $00
	ld [bc], a                                       ; $430d: $02
	inc c                                            ; $430e: $0c
	ld d, c                                          ; $430f: $51
	db $fc                                           ; $4310: $fc
	ret nz                                           ; $4311: $c0

	ld h, l                                          ; $4312: $65
	ret c                                            ; $4313: $d8

	jr z, jr_080_4322                                ; $4314: $28 $0c

	ret nz                                           ; $4316: $c0

	ld bc, $05a0                                     ; $4317: $01 $a0 $05
	inc bc                                           ; $431a: $03
	ei                                               ; $431b: $fb
	ret nz                                           ; $431c: $c0

	ld bc, $01a0                                     ; $431d: $01 $a0 $01
	inc b                                            ; $4320: $04
	nop                                              ; $4321: $00

jr_080_4322:
	jr c, jr_080_4328                                ; $4322: $38 $04

	rlca                                             ; $4324: $07
	add hl, bc                                       ; $4325: $09
	dec l                                            ; $4326: $2d
	pop bc                                           ; $4327: $c1

jr_080_4328:
	ld e, c                                          ; $4328: $59
	db $e3                                           ; $4329: $e3
	nop                                              ; $432a: $00
	sub c                                            ; $432b: $91
	ret nz                                           ; $432c: $c0

	add hl, bc                                       ; $432d: $09
	db $e3                                           ; $432e: $e3
	nop                                              ; $432f: $00
	inc [hl]                                         ; $4330: $34
	and b                                            ; $4331: $a0
	add b                                            ; $4332: $80
	and b                                            ; $4333: $a0
	dec d                                            ; $4334: $15
	nop                                              ; $4335: $00
	ld b, $c0                                        ; $4336: $06 $c0
	ld bc, $05a0                                     ; $4338: $01 $a0 $05
	inc b                                            ; $433b: $04
	add hl, bc                                       ; $433c: $09
	rst $38                                          ; $433d: $ff
	inc c                                            ; $433e: $0c
	ret nz                                           ; $433f: $c0

	ld bc, $05a0                                     ; $4340: $01 $a0 $05
	inc b                                            ; $4343: $04
	ld [de], a                                       ; $4344: $12
	ret nz                                           ; $4345: $c0

	ld bc, $01a0                                     ; $4346: $01 $a0 $01
	inc b                                            ; $4349: $04
	ld a, [de]                                       ; $434a: $1a
	ret nz                                           ; $434b: $c0

	ld d, [hl]                                       ; $434c: $56
	db $d3                                           ; $434d: $d3
	call c, $e5d6                                    ; $434e: $dc $d6 $e5
	rra                                              ; $4351: $1f
	nop                                              ; $4352: $00
	nop                                              ; $4353: $00
	inc b                                            ; $4354: $04
	inc hl                                           ; $4355: $23
	add hl, bc                                       ; $4356: $09
	inc bc                                           ; $4357: $03
	ldh [rP1], a                                     ; $4358: $e0 $00
	ld [$09d1], sp                                   ; $435a: $08 $d1 $09
	inc bc                                           ; $435d: $03
	ldh [rP1], a                                     ; $435e: $e0 $00
	ld [bc], a                                       ; $4360: $02
	ld b, h                                          ; $4361: $44
	pop bc                                           ; $4362: $c1
	ld e, c                                          ; $4363: $59
	db $e3                                           ; $4364: $e3
	nop                                              ; $4365: $00
	adc c                                            ; $4366: $89
	db $fd                                           ; $4367: $fd
	add hl, sp                                       ; $4368: $39
	adc e                                            ; $4369: $8b
	and b                                            ; $436a: $a0
	inc bc                                           ; $436b: $03
	ld [bc], a                                       ; $436c: $02
	or b                                             ; $436d: $b0
	ld a, h                                          ; $436e: $7c
	dec b                                            ; $436f: $05
	ret nz                                           ; $4370: $c0

	ld d, [hl]                                       ; $4371: $56
	db $d3                                           ; $4372: $d3
	call c, $02d1                                    ; $4373: $dc $d1 $02
	or b                                             ; $4376: $b0
	ld a, [hl]                                       ; $4377: $7e
	dec b                                            ; $4378: $05
	ret nz                                           ; $4379: $c0

	ld d, [hl]                                       ; $437a: $56
	db $d3                                           ; $437b: $d3
	call c, $02d2                                    ; $437c: $dc $d2 $02
	or b                                             ; $437f: $b0
	ld a, a                                          ; $4380: $7f
	dec b                                            ; $4381: $05
	ret nz                                           ; $4382: $c0

	ld d, [hl]                                       ; $4383: $56
	db $d3                                           ; $4384: $d3
	call c, $02d3                                    ; $4385: $dc $d3 $02
	or b                                             ; $4388: $b0
	ld a, e                                          ; $4389: $7b
	dec b                                            ; $438a: $05
	ret nz                                           ; $438b: $c0

	ld d, [hl]                                       ; $438c: $56
	db $d3                                           ; $438d: $d3
	call c, $02d4                                    ; $438e: $dc $d4 $02
	or b                                             ; $4391: $b0
	ld a, l                                          ; $4392: $7d
	dec b                                            ; $4393: $05
	ret nz                                           ; $4394: $c0

	ld d, [hl]                                       ; $4395: $56
	db $d3                                           ; $4396: $d3
	call c, $02d5                                    ; $4397: $dc $d5 $02
	or b                                             ; $439a: $b0
	ld a, d                                          ; $439b: $7a
	dec b                                            ; $439c: $05
	ret nz                                           ; $439d: $c0

	ld d, [hl]                                       ; $439e: $56
	db $d3                                           ; $439f: $d3
	call c, $e5d7                                    ; $43a0: $dc $d7 $e5
	rra                                              ; $43a3: $1f
	nop                                              ; $43a4: $00
	nop                                              ; $43a5: $00
	add hl, bc                                       ; $43a6: $09
	dec l                                            ; $43a7: $2d
	ret nz                                           ; $43a8: $c0

	ld bc, $05a0                                     ; $43a9: $01 $a0 $05
	inc b                                            ; $43ac: $04
	dec h                                            ; $43ad: $25
	ret nz                                           ; $43ae: $c0

	ld bc, $01a0                                     ; $43af: $01 $a0 $01
	inc b                                            ; $43b2: $04
	dec l                                            ; $43b3: $2d
	add c                                            ; $43b4: $81
	ret nz                                           ; $43b5: $c0

	ld h, l                                          ; $43b6: $65
	ld b, $d4                                        ; $43b7: $06 $d4
	push de                                          ; $43b9: $d5
	rst SubAFromHL                                          ; $43ba: $d7
	ret c                                            ; $43bb: $d8

	reti                                             ; $43bc: $d9


	jp c, $d008                                      ; $43bd: $da $08 $d0

	add e                                            ; $43c0: $83
	ld bc, $d0de                                     ; $43c1: $01 $de $d0
	db $e4                                           ; $43c4: $e4
	nop                                              ; $43c5: $00
	db $10                                           ; $43c6: $10
	inc b                                            ; $43c7: $04
	pop de                                           ; $43c8: $d1
	db $d3                                           ; $43c9: $d3
	sub $db                                          ; $43ca: $d6 $db
	ld [$83d0], sp                                   ; $43cc: $08 $d0 $83
	ld bc, $d1de                                     ; $43cf: $01 $de $d1
	db $e4                                           ; $43d2: $e4
	nop                                              ; $43d3: $00
	or d                                             ; $43d4: $b2
	add hl, bc                                       ; $43d5: $09
	ld e, $c1                                        ; $43d6: $1e $c1
	inc a                                            ; $43d8: $3c
	pop bc                                           ; $43d9: $c1
	ld e, c                                          ; $43da: $59
	db $e3                                           ; $43db: $e3
	nop                                              ; $43dc: $00
	cp b                                             ; $43dd: $b8
	ret nz                                           ; $43de: $c0

	add hl, bc                                       ; $43df: $09
	db $e3                                           ; $43e0: $e3
	nop                                              ; $43e1: $00
	dec de                                           ; $43e2: $1b
	and b                                            ; $43e3: $a0
	add b                                            ; $43e4: $80
	and b                                            ; $43e5: $a0
	ld d, $00                                        ; $43e6: $16 $00
	inc bc                                           ; $43e8: $03
	db $e4                                           ; $43e9: $e4
	nop                                              ; $43ea: $00
	dec bc                                           ; $43eb: $0b
	rst $38                                          ; $43ec: $ff
	rlca                                             ; $43ed: $07
	ld b, b                                          ; $43ee: $40
	add b                                            ; $43ef: $80
	and b                                            ; $43f0: $a0
	ld d, $e4                                        ; $43f1: $16 $e4
	nop                                              ; $43f3: $00
	ld c, d                                          ; $43f4: $4a
	jr z, jr_080_43fd                                ; $43f5: $28 $06

	ret nz                                           ; $43f7: $c0

	ld bc, $05a0                                     ; $43f8: $01 $a0 $05
	inc b                                            ; $43fb: $04
	ld [hl-], a                                      ; $43fc: $32

jr_080_43fd:
	ccf                                              ; $43fd: $3f
	inc b                                            ; $43fe: $04
	ld b, c                                          ; $43ff: $41
	add hl, bc                                       ; $4400: $09
	ld de, $02e1                                     ; $4401: $11 $e1 $02
	inc bc                                           ; $4404: $03

Jump_080_4405:
	inc de                                           ; $4405: $13
	ret nz                                           ; $4406: $c0

	ld bc, $05a0                                     ; $4407: $01 $a0 $05
	inc b                                            ; $440a: $04
	ld b, e                                          ; $440b: $43
	pop hl                                           ; $440c: $e1
	ld [bc], a                                       ; $440d: $02
	inc bc                                           ; $440e: $03
	cp l                                             ; $440f: $bd
	db $e4                                           ; $4410: $e4
	ld bc, $0424                                     ; $4411: $01 $24 $04
	ld c, d                                          ; $4414: $4a
	add hl, bc                                       ; $4415: $09
	ld de, $02e1                                     ; $4416: $11 $e1 $02
	inc bc                                           ; $4419: $03
	rra                                              ; $441a: $1f
	ret nz                                           ; $441b: $c0

	ld bc, $05a0                                     ; $441c: $01 $a0 $05
	inc b                                            ; $441f: $04
	ld c, h                                          ; $4420: $4c
	pop hl                                           ; $4421: $e1
	ld [bc], a                                       ; $4422: $02
	inc bc                                           ; $4423: $03
	ret c                                            ; $4424: $d8

	db $e4                                           ; $4425: $e4
	ld bc, $040f                                     ; $4426: $01 $0f $04
	ld d, l                                          ; $4429: $55
	add hl, bc                                       ; $442a: $09
	ld de, $02e1                                     ; $442b: $11 $e1 $02
	inc bc                                           ; $442e: $03
	dec de                                           ; $442f: $1b
	ret nz                                           ; $4430: $c0

	ld bc, $05a0                                     ; $4431: $01 $a0 $05
	inc b                                            ; $4434: $04
	ld d, a                                          ; $4435: $57
	pop hl                                           ; $4436: $e1
	ld [bc], a                                       ; $4437: $02
	inc bc                                           ; $4438: $03
	rst GetHLinHL                                          ; $4439: $cf
	db $e4                                           ; $443a: $e4
	nop                                              ; $443b: $00
	ld a, [$0628]                                    ; $443c: $fa $28 $06
	ret nz                                           ; $443f: $c0

	ld bc, $05a0                                     ; $4440: $01 $a0 $05
	inc b                                            ; $4443: $04
	ld h, e                                          ; $4444: $63
	ccf                                              ; $4445: $3f
	inc b                                            ; $4446: $04
	ld l, e                                          ; $4447: $6b
	add hl, bc                                       ; $4448: $09
	ld de, $02e1                                     ; $4449: $11 $e1 $02
	inc bc                                           ; $444c: $03
	inc de                                           ; $444d: $13
	ret nz                                           ; $444e: $c0

	ld bc, $05a0                                     ; $444f: $01 $a0 $05
	inc b                                            ; $4452: $04
	ld [hl], c                                       ; $4453: $71
	pop hl                                           ; $4454: $e1
	ld [bc], a                                       ; $4455: $02
	inc bc                                           ; $4456: $03
	cp l                                             ; $4457: $bd
	db $e4                                           ; $4458: $e4
	nop                                              ; $4459: $00
	call c, Call_080_7904                            ; $445a: $dc $04 $79
	add hl, bc                                       ; $445d: $09
	ld de, $02e1                                     ; $445e: $11 $e1 $02
	inc bc                                           ; $4461: $03
	rra                                              ; $4462: $1f
	ret nz                                           ; $4463: $c0

	ld bc, $05a0                                     ; $4464: $01 $a0 $05
	inc b                                            ; $4467: $04
	ld a, l                                          ; $4468: $7d
	pop hl                                           ; $4469: $e1
	ld [bc], a                                       ; $446a: $02
	inc bc                                           ; $446b: $03
	ret c                                            ; $446c: $d8

	db $e4                                           ; $446d: $e4
	nop                                              ; $446e: $00
	rst JumpTable                                          ; $446f: $c7
	inc b                                            ; $4470: $04
	add [hl]                                         ; $4471: $86
	add hl, bc                                       ; $4472: $09
	ld de, $02e1                                     ; $4473: $11 $e1 $02
	inc bc                                           ; $4476: $03
	rla                                              ; $4477: $17
	ret nz                                           ; $4478: $c0

	ld bc, $05a0                                     ; $4479: $01 $a0 $05
	inc b                                            ; $447c: $04
	adc d                                            ; $447d: $8a
	pop hl                                           ; $447e: $e1
	ld [bc], a                                       ; $447f: $02
	inc bc                                           ; $4480: $03
	add $e4                                          ; $4481: $c6 $e4
	nop                                              ; $4483: $00
	or d                                             ; $4484: $b2
	add hl, bc                                       ; $4485: $09
	ld e, $c1                                        ; $4486: $1e $c1
	inc a                                            ; $4488: $3c
	pop bc                                           ; $4489: $c1
	ld e, c                                          ; $448a: $59
	db $e3                                           ; $448b: $e3
	nop                                              ; $448c: $00
	cp c                                             ; $448d: $b9
	ret nz                                           ; $448e: $c0

	add hl, bc                                       ; $448f: $09
	db $e3                                           ; $4490: $e3
	nop                                              ; $4491: $00
	scf                                              ; $4492: $37
	and b                                            ; $4493: $a0
	add b                                            ; $4494: $80
	and b                                            ; $4495: $a0
	rla                                              ; $4496: $17
	nop                                              ; $4497: $00
	inc bc                                           ; $4498: $03
	db $e4                                           ; $4499: $e4
	nop                                              ; $449a: $00
	dec bc                                           ; $449b: $0b
	rst $38                                          ; $449c: $ff
	rlca                                             ; $449d: $07
	ld b, b                                          ; $449e: $40
	add b                                            ; $449f: $80
	and b                                            ; $44a0: $a0
	rla                                              ; $44a1: $17
	db $e4                                           ; $44a2: $e4
	nop                                              ; $44a3: $00
	ld c, d                                          ; $44a4: $4a
	jr z, jr_080_44ad                                ; $44a5: $28 $06

	ret nz                                           ; $44a7: $c0

	ld bc, $05a0                                     ; $44a8: $01 $a0 $05
	inc b                                            ; $44ab: $04
	sub b                                            ; $44ac: $90

jr_080_44ad:
	ccf                                              ; $44ad: $3f
	inc b                                            ; $44ae: $04
	sub a                                            ; $44af: $97
	add hl, bc                                       ; $44b0: $09
	ld de, $02e1                                     ; $44b1: $11 $e1 $02
	inc bc                                           ; $44b4: $03
	rla                                              ; $44b5: $17
	ret nz                                           ; $44b6: $c0

	ld bc, $05a0                                     ; $44b7: $01 $a0 $05
	inc b                                            ; $44ba: $04
	sbc c                                            ; $44bb: $99
	pop hl                                           ; $44bc: $e1
	ld [bc], a                                       ; $44bd: $02
	inc bc                                           ; $44be: $03
	add $e4                                          ; $44bf: $c6 $e4
	nop                                              ; $44c1: $00
	ld [hl], h                                       ; $44c2: $74
	inc b                                            ; $44c3: $04
	and h                                            ; $44c4: $a4
	add hl, bc                                       ; $44c5: $09
	ld de, $02e1                                     ; $44c6: $11 $e1 $02
	inc bc                                           ; $44c9: $03
	dec de                                           ; $44ca: $1b
	ret nz                                           ; $44cb: $c0

	ld bc, $05a0                                     ; $44cc: $01 $a0 $05
	inc b                                            ; $44cf: $04
	and [hl]                                         ; $44d0: $a6
	pop hl                                           ; $44d1: $e1
	ld [bc], a                                       ; $44d2: $02

Jump_080_44d3:
	inc bc                                           ; $44d3: $03
	rst GetHLinHL                                          ; $44d4: $cf
	db $e4                                           ; $44d5: $e4
	nop                                              ; $44d6: $00
	ld e, a                                          ; $44d7: $5f
	inc b                                            ; $44d8: $04
	xor h                                            ; $44d9: $ac
	add hl, bc                                       ; $44da: $09
	ld de, $02e1                                     ; $44db: $11 $e1 $02
	inc bc                                           ; $44de: $03
	dec de                                           ; $44df: $1b
	ret nz                                           ; $44e0: $c0

	ld bc, $05a0                                     ; $44e1: $01 $a0 $05
	inc b                                            ; $44e4: $04
	xor [hl]                                         ; $44e5: $ae
	pop hl                                           ; $44e6: $e1
	ld [bc], a                                       ; $44e7: $02
	inc bc                                           ; $44e8: $03
	rst GetHLinHL                                          ; $44e9: $cf
	db $e4                                           ; $44ea: $e4
	nop                                              ; $44eb: $00
	ld c, d                                          ; $44ec: $4a
	jr z, jr_080_44f5                                ; $44ed: $28 $06

	ret nz                                           ; $44ef: $c0

	ld bc, $05a0                                     ; $44f0: $01 $a0 $05
	inc b                                            ; $44f3: $04
	or e                                             ; $44f4: $b3

jr_080_44f5:
	ccf                                              ; $44f5: $3f
	inc b                                            ; $44f6: $04
	cp c                                             ; $44f7: $b9
	add hl, bc                                       ; $44f8: $09
	ld de, $02e1                                     ; $44f9: $11 $e1 $02
	inc bc                                           ; $44fc: $03
	rla                                              ; $44fd: $17
	ret nz                                           ; $44fe: $c0

	ld bc, $05a0                                     ; $44ff: $01 $a0 $05
	inc b                                            ; $4502: $04
	cp l                                             ; $4503: $bd
	pop hl                                           ; $4504: $e1
	ld [bc], a                                       ; $4505: $02
	inc bc                                           ; $4506: $03
	add $e4                                          ; $4507: $c6 $e4
	nop                                              ; $4509: $00
	inc l                                            ; $450a: $2c
	inc b                                            ; $450b: $04
	ret z                                            ; $450c: $c8

	add hl, bc                                       ; $450d: $09
	ld de, $02e1                                     ; $450e: $11 $e1 $02
	inc bc                                           ; $4511: $03
	dec de                                           ; $4512: $1b
	ret nz                                           ; $4513: $c0

	ld bc, $05a0                                     ; $4514: $01 $a0 $05
	inc b                                            ; $4517: $04
	rst GetHLinHL                                          ; $4518: $cf
	pop hl                                           ; $4519: $e1
	ld [bc], a                                       ; $451a: $02
	inc bc                                           ; $451b: $03
	rst GetHLinHL                                          ; $451c: $cf
	db $e4                                           ; $451d: $e4
	nop                                              ; $451e: $00
	rla                                              ; $451f: $17
	inc b                                            ; $4520: $04
	push de                                          ; $4521: $d5
	add hl, bc                                       ; $4522: $09
	ld de, $02e1                                     ; $4523: $11 $e1 $02
	inc bc                                           ; $4526: $03
	rla                                              ; $4527: $17
	ret nz                                           ; $4528: $c0

	ld bc, $05a0                                     ; $4529: $01 $a0 $05
	inc b                                            ; $452c: $04
	jp c, $02e1                                      ; $452d: $da $e1 $02

	inc bc                                           ; $4530: $03
	add $e4                                          ; $4531: $c6 $e4
	nop                                              ; $4533: $00
	ld [bc], a                                       ; $4534: $02
	add hl, bc                                       ; $4535: $09
	ld a, [de]                                       ; $4536: $1a
	pop hl                                           ; $4537: $e1
	ld [bc], a                                       ; $4538: $02
	ld [$605c], sp                                   ; $4539: $08 $5c $60
	db $fc                                           ; $453c: $fc
	add e                                            ; $453d: $83
	ld bc, $d0de                                     ; $453e: $01 $de $d0
	dec b                                            ; $4541: $05
	ret nz                                           ; $4542: $c0

	ld d, [hl]                                       ; $4543: $56
	db $d3                                           ; $4544: $d3
	db $dd                                           ; $4545: $dd
	ret nc                                           ; $4546: $d0

	dec b                                            ; $4547: $05
	ret nz                                           ; $4548: $c0

	ld d, [hl]                                       ; $4549: $56
	db $d3                                           ; $454a: $d3
	db $dd                                           ; $454b: $dd
	pop de                                           ; $454c: $d1
	push hl                                          ; $454d: $e5
	rra                                              ; $454e: $1f
	nop                                              ; $454f: $00
	nop                                              ; $4550: $00
	add hl, bc                                       ; $4551: $09
	rrca                                             ; $4552: $0f
	ret nz                                           ; $4553: $c0

	ld bc, $05a0                                     ; $4554: $01 $a0 $05
	inc b                                            ; $4557: $04
	db $dd                                           ; $4558: $dd
	ret nz                                           ; $4559: $c0

	ld bc, $01a0                                     ; $455a: $01 $a0 $01
	inc b                                            ; $455d: $04
	add sp, -$1c                                     ; $455e: $e8 $e4
	nop                                              ; $4560: $00
	ld [bc], a                                       ; $4561: $02
	add hl, bc                                       ; $4562: $09
	adc c                                            ; $4563: $89
	pop bc                                           ; $4564: $c1
	ld e, c                                          ; $4565: $59
	db $e3                                           ; $4566: $e3
	nop                                              ; $4567: $00
	sub h                                            ; $4568: $94
	ret nz                                           ; $4569: $c0

	ld bc, $05a0                                     ; $456a: $01 $a0 $05
	inc b                                            ; $456d: $04
	rst AddAOntoHL                                          ; $456e: $ef
	db $fd                                           ; $456f: $fd
	ld a, h                                          ; $4570: $7c
	adc e                                            ; $4571: $8b
	ld bc, $02ea                                     ; $4572: $01 $ea $02
	or b                                             ; $4575: $b0
	inc l                                            ; $4576: $2c
	rlca                                             ; $4577: $07
	pop hl                                           ; $4578: $e1
	ld [bc], a                                       ; $4579: $02
	dec b                                            ; $457a: $05
	ld c, a                                          ; $457b: $4f
	db $e4                                           ; $457c: $e4
	nop                                              ; $457d: $00
	ld [hl], b                                       ; $457e: $70
	ld [bc], a                                       ; $457f: $02
	or b                                             ; $4580: $b0
	dec l                                            ; $4581: $2d
	rlca                                             ; $4582: $07
	pop hl                                           ; $4583: $e1
	ld [bc], a                                       ; $4584: $02
	dec b                                            ; $4585: $05
	ld h, [hl]                                       ; $4586: $66
	db $e4                                           ; $4587: $e4
	nop                                              ; $4588: $00
	and a                                            ; $4589: $a7
	ld [bc], a                                       ; $458a: $02
	or b                                             ; $458b: $b0
	ld l, $07                                        ; $458c: $2e $07
	pop hl                                           ; $458e: $e1
	ld [bc], a                                       ; $458f: $02
	dec b                                            ; $4590: $05
	ld a, l                                          ; $4591: $7d
	db $e4                                           ; $4592: $e4
	nop                                              ; $4593: $00
	ld e, d                                          ; $4594: $5a
	ld [bc], a                                       ; $4595: $02
	or b                                             ; $4596: $b0
	cpl                                              ; $4597: $2f
	rlca                                             ; $4598: $07
	pop hl                                           ; $4599: $e1
	ld [bc], a                                       ; $459a: $02
	dec b                                            ; $459b: $05
	sub h                                            ; $459c: $94
	db $e4                                           ; $459d: $e4
	nop                                              ; $459e: $00
	ld c, a                                          ; $459f: $4f
	ld [bc], a                                       ; $45a0: $02
	or b                                             ; $45a1: $b0
	jr nc, jr_080_45ab                               ; $45a2: $30 $07

	pop hl                                           ; $45a4: $e1
	ld [bc], a                                       ; $45a5: $02
	dec b                                            ; $45a6: $05
	xor e                                            ; $45a7: $ab
	db $e4                                           ; $45a8: $e4
	nop                                              ; $45a9: $00
	ret z                                            ; $45aa: $c8

jr_080_45ab:
	ld [bc], a                                       ; $45ab: $02
	or b                                             ; $45ac: $b0
	ld sp, $e107                                     ; $45ad: $31 $07 $e1
	ld [bc], a                                       ; $45b0: $02
	dec b                                            ; $45b1: $05
	jp nz, $00e4                                     ; $45b2: $c2 $e4 $00

	cp l                                             ; $45b5: $bd
	ld [bc], a                                       ; $45b6: $02
	or b                                             ; $45b7: $b0
	ld [hl-], a                                      ; $45b8: $32
	rlca                                             ; $45b9: $07
	pop hl                                           ; $45ba: $e1
	ld [bc], a                                       ; $45bb: $02
	dec b                                            ; $45bc: $05
	reti                                             ; $45bd: $d9


	db $e4                                           ; $45be: $e4
	nop                                              ; $45bf: $00
	ld [hl], b                                       ; $45c0: $70
	ld [bc], a                                       ; $45c1: $02
	or b                                             ; $45c2: $b0
	inc sp                                           ; $45c3: $33
	rlca                                             ; $45c4: $07
	pop hl                                           ; $45c5: $e1
	ld [bc], a                                       ; $45c6: $02
	dec b                                            ; $45c7: $05
	ldh a, [$e4]                                     ; $45c8: $f0 $e4
	nop                                              ; $45ca: $00
	inc hl                                           ; $45cb: $23
	ld [bc], a                                       ; $45cc: $02
	or b                                             ; $45cd: $b0
	inc [hl]                                         ; $45ce: $34
	rlca                                             ; $45cf: $07
	pop hl                                           ; $45d0: $e1
	ld [bc], a                                       ; $45d1: $02
	ld b, $07                                        ; $45d2: $06 $07
	db $e4                                           ; $45d4: $e4
	nop                                              ; $45d5: $00
	jr jr_080_45da                                   ; $45d6: $18 $02

	or b                                             ; $45d8: $b0
	dec [hl]                                         ; $45d9: $35

jr_080_45da:
	rlca                                             ; $45da: $07
	pop hl                                           ; $45db: $e1
	ld [bc], a                                       ; $45dc: $02
	ld b, $1e                                        ; $45dd: $06 $1e
	db $e4                                           ; $45df: $e4
	nop                                              ; $45e0: $00
	dec c                                            ; $45e1: $0d
	ld [bc], a                                       ; $45e2: $02
	or b                                             ; $45e3: $b0
	ld [hl], $07                                     ; $45e4: $36 $07
	pop hl                                           ; $45e6: $e1
	ld [bc], a                                       ; $45e7: $02
	ld b, $35                                        ; $45e8: $06 $35
	db $e4                                           ; $45ea: $e4
	nop                                              ; $45eb: $00
	ld b, h                                          ; $45ec: $44
	jr z, jr_080_45ef                                ; $45ed: $28 $00

jr_080_45ef:
	ccf                                              ; $45ef: $3f
	inc b                                            ; $45f0: $04
	rst FarCall                                          ; $45f1: $f7
	add hl, bc                                       ; $45f2: $09
	ld de, $02e1                                     ; $45f3: $11 $e1 $02
	inc bc                                           ; $45f6: $03
	inc de                                           ; $45f7: $13
	ret nz                                           ; $45f8: $c0

	ld bc, $05a0                                     ; $45f9: $01 $a0 $05
	inc b                                            ; $45fc: $04
	ld sp, hl                                        ; $45fd: $f9
	pop hl                                           ; $45fe: $e1
	ld [bc], a                                       ; $45ff: $02
	inc bc                                           ; $4600: $03
	or h                                             ; $4601: $b4
	db $e4                                           ; $4602: $e4
	nop                                              ; $4603: $00
	or b                                             ; $4604: $b0
	inc b                                            ; $4605: $04
	rst $38                                          ; $4606: $ff
	add hl, bc                                       ; $4607: $09
	ld de, $02e1                                     ; $4608: $11 $e1 $02
	inc bc                                           ; $460b: $03
	rla                                              ; $460c: $17
	ret nz                                           ; $460d: $c0

	ld bc, $05a0                                     ; $460e: $01 $a0 $05
	dec b                                            ; $4611: $05
	ld bc, $02e1                                     ; $4612: $01 $e1 $02
	inc bc                                           ; $4615: $03
	add $e4                                          ; $4616: $c6 $e4
	nop                                              ; $4618: $00
	sbc e                                            ; $4619: $9b
	dec b                                            ; $461a: $05
	rlca                                             ; $461b: $07
	add hl, bc                                       ; $461c: $09
	ld de, $02e1                                     ; $461d: $11 $e1 $02
	inc bc                                           ; $4620: $03
	inc de                                           ; $4621: $13
	ret nz                                           ; $4622: $c0

	ld bc, $05a0                                     ; $4623: $01 $a0 $05
	dec b                                            ; $4626: $05
	add hl, bc                                       ; $4627: $09
	pop hl                                           ; $4628: $e1
	ld [bc], a                                       ; $4629: $02
	inc bc                                           ; $462a: $03
	cp l                                             ; $462b: $bd
	db $e4                                           ; $462c: $e4
	nop                                              ; $462d: $00
	add [hl]                                         ; $462e: $86
	jr z, jr_080_4631                                ; $462f: $28 $00

jr_080_4631:
	ccf                                              ; $4631: $3f
	inc b                                            ; $4632: $04
	rst FarCall                                          ; $4633: $f7
	add hl, bc                                       ; $4634: $09
	ld de, $02e1                                     ; $4635: $11 $e1 $02
	inc bc                                           ; $4638: $03
	rra                                              ; $4639: $1f
	ret nz                                           ; $463a: $c0

	ld bc, $05a0                                     ; $463b: $01 $a0 $05
	dec b                                            ; $463e: $05
	rrca                                             ; $463f: $0f
	pop hl                                           ; $4640: $e1
	ld [bc], a                                       ; $4641: $02
	inc bc                                           ; $4642: $03
	ret c                                            ; $4643: $d8

	db $e4                                           ; $4644: $e4
	nop                                              ; $4645: $00
	ld l, [hl]                                       ; $4646: $6e
	inc b                                            ; $4647: $04
	rst $38                                          ; $4648: $ff
	add hl, bc                                       ; $4649: $09
	ld de, $02e1                                     ; $464a: $11 $e1 $02
	inc bc                                           ; $464d: $03
	rla                                              ; $464e: $17
	ret nz                                           ; $464f: $c0

	ld bc, $05a0                                     ; $4650: $01 $a0 $05
	dec b                                            ; $4653: $05
	jr @-$1d                                         ; $4654: $18 $e1

	ld [bc], a                                       ; $4656: $02
	inc bc                                           ; $4657: $03
	rst GetHLinHL                                          ; $4658: $cf
	db $e4                                           ; $4659: $e4
	nop                                              ; $465a: $00
	ld e, c                                          ; $465b: $59
	dec b                                            ; $465c: $05
	rlca                                             ; $465d: $07
	add hl, bc                                       ; $465e: $09
	ld de, $02e1                                     ; $465f: $11 $e1 $02
	inc bc                                           ; $4662: $03
	dec de                                           ; $4663: $1b
	ret nz                                           ; $4664: $c0

	ld bc, $05a0                                     ; $4665: $01 $a0 $05
	dec b                                            ; $4668: $05
	inc h                                            ; $4669: $24
	pop hl                                           ; $466a: $e1
	ld [bc], a                                       ; $466b: $02
	inc bc                                           ; $466c: $03
	ret c                                            ; $466d: $d8

	db $e4                                           ; $466e: $e4
	nop                                              ; $466f: $00
	ld b, h                                          ; $4670: $44
	jr z, jr_080_4673                                ; $4671: $28 $00

jr_080_4673:
	ccf                                              ; $4673: $3f
	inc b                                            ; $4674: $04
	rst FarCall                                          ; $4675: $f7
	add hl, bc                                       ; $4676: $09
	ld de, $02e1                                     ; $4677: $11 $e1 $02
	inc bc                                           ; $467a: $03
	rla                                              ; $467b: $17
	ret nz                                           ; $467c: $c0

	ld bc, $05a0                                     ; $467d: $01 $a0 $05
	dec b                                            ; $4680: $05
	ld sp, $02e1                                     ; $4681: $31 $e1 $02
	inc bc                                           ; $4684: $03
	add $e4                                          ; $4685: $c6 $e4
	nop                                              ; $4687: $00
	inc l                                            ; $4688: $2c
	inc b                                            ; $4689: $04
	rst $38                                          ; $468a: $ff
	add hl, bc                                       ; $468b: $09
	ld de, $02e1                                     ; $468c: $11 $e1 $02
	inc bc                                           ; $468f: $03
	rla                                              ; $4690: $17
	ret nz                                           ; $4691: $c0

	ld bc, $05a0                                     ; $4692: $01 $a0 $05
	dec b                                            ; $4695: $05
	add hl, sp                                       ; $4696: $39
	pop hl                                           ; $4697: $e1
	ld [bc], a                                       ; $4698: $02
	inc bc                                           ; $4699: $03
	add $e4                                          ; $469a: $c6 $e4
	nop                                              ; $469c: $00
	rla                                              ; $469d: $17
	dec b                                            ; $469e: $05
	rlca                                             ; $469f: $07
	add hl, bc                                       ; $46a0: $09
	ld de, $02e1                                     ; $46a1: $11 $e1 $02
	inc bc                                           ; $46a4: $03
	inc de                                           ; $46a5: $13
	ret nz                                           ; $46a6: $c0

	ld bc, $05a0                                     ; $46a7: $01 $a0 $05
	dec b                                            ; $46aa: $05
	ld b, e                                          ; $46ab: $43
	pop hl                                           ; $46ac: $e1
	ld [bc], a                                       ; $46ad: $02
	inc bc                                           ; $46ae: $03
	cp l                                             ; $46af: $bd
	db $e4                                           ; $46b0: $e4
	nop                                              ; $46b1: $00
	ld [bc], a                                       ; $46b2: $02
	add hl, bc                                       ; $46b3: $09
	ld [$02e1], sp                                   ; $46b4: $08 $e1 $02
	ld [$e5b7], sp                                   ; $46b7: $08 $b7 $e5
	rra                                              ; $46ba: $1f
	nop                                              ; $46bb: $00
	nop                                              ; $46bc: $00
	add hl, bc                                       ; $46bd: $09
	rrca                                             ; $46be: $0f
	ret nz                                           ; $46bf: $c0

	ld bc, $05a0                                     ; $46c0: $01 $a0 $05
	dec b                                            ; $46c3: $05
	ld c, c                                          ; $46c4: $49
	ret nz                                           ; $46c5: $c0

	ld bc, $01a0                                     ; $46c6: $01 $a0 $01
	inc b                                            ; $46c9: $04
	add sp, -$1c                                     ; $46ca: $e8 $e4
	nop                                              ; $46cc: $00
	ld [bc], a                                       ; $46cd: $02
	add hl, bc                                       ; $46ce: $09
	ret nz                                           ; $46cf: $c0

	jp z, Jump_080_59c1                              ; $46d0: $ca $c1 $59

	db $e3                                           ; $46d3: $e3
	nop                                              ; $46d4: $00
	sub [hl]                                         ; $46d5: $96
	ret nz                                           ; $46d6: $c0

	ld bc, $05a0                                     ; $46d7: $01 $a0 $05
	dec b                                            ; $46da: $05
	ld d, l                                          ; $46db: $55
	ret nz                                           ; $46dc: $c0

	ld bc, $01a0                                     ; $46dd: $01 $a0 $01
	dec b                                            ; $46e0: $05
	ld e, e                                          ; $46e1: $5b
	db $fd                                           ; $46e2: $fd
	or a                                             ; $46e3: $b7
	adc e                                            ; $46e4: $8b
	ld bc, $02f6                                     ; $46e5: $01 $f6 $02
	or b                                             ; $46e8: $b0
	scf                                              ; $46e9: $37
	dec bc                                           ; $46ea: $0b
	pop hl                                           ; $46eb: $e1
	ld [bc], a                                       ; $46ec: $02
	ld b, $6e                                        ; $46ed: $06 $6e
	pop hl                                           ; $46ef: $e1
	ld [bc], a                                       ; $46f0: $02
	ld bc, $e4b8                                     ; $46f1: $01 $b8 $e4
	nop                                              ; $46f4: $00
	add sp, $02                                      ; $46f5: $e8 $02
	or b                                             ; $46f7: $b0
	jr c, jr_080_4705                                ; $46f8: $38 $0b

	pop hl                                           ; $46fa: $e1
	ld [bc], a                                       ; $46fb: $02
	ld b, $bf                                        ; $46fc: $06 $bf
	pop hl                                           ; $46fe: $e1
	ld [bc], a                                       ; $46ff: $02
	ld bc, $e4b8                                     ; $4700: $01 $b8 $e4
	nop                                              ; $4703: $00
	reti                                             ; $4704: $d9


jr_080_4705:
	ld [bc], a                                       ; $4705: $02
	or b                                             ; $4706: $b0
	add hl, sp                                       ; $4707: $39
	dec bc                                           ; $4708: $0b
	pop hl                                           ; $4709: $e1
	ld [bc], a                                       ; $470a: $02
	ld b, $d6                                        ; $470b: $06 $d6
	pop hl                                           ; $470d: $e1
	ld [bc], a                                       ; $470e: $02
	ld bc, $e4b8                                     ; $470f: $01 $b8 $e4
	nop                                              ; $4712: $00
	adc c                                            ; $4713: $89
	ld [bc], a                                       ; $4714: $02
	or b                                             ; $4715: $b0
	ld a, [hl-]                                      ; $4716: $3a
	dec bc                                           ; $4717: $0b
	pop hl                                           ; $4718: $e1
	ld [bc], a                                       ; $4719: $02
	ld b, $ed                                        ; $471a: $06 $ed
	pop hl                                           ; $471c: $e1
	ld [bc], a                                       ; $471d: $02
	ld bc, $e4b8                                     ; $471e: $01 $b8 $e4
	nop                                              ; $4721: $00
	ld a, d                                          ; $4722: $7a
	ld [bc], a                                       ; $4723: $02
	or b                                             ; $4724: $b0
	dec sp                                           ; $4725: $3b
	dec bc                                           ; $4726: $0b
	pop hl                                           ; $4727: $e1
	ld [bc], a                                       ; $4728: $02
	rlca                                             ; $4729: $07
	inc b                                            ; $472a: $04
	pop hl                                           ; $472b: $e1
	ld [bc], a                                       ; $472c: $02
	ld bc, $e4b8                                     ; $472d: $01 $b8 $e4
	nop                                              ; $4730: $00
	db $ed                                           ; $4731: $ed
	ld [bc], a                                       ; $4732: $02
	or b                                             ; $4733: $b0
	inc a                                            ; $4734: $3c
	dec bc                                           ; $4735: $0b
	pop hl                                           ; $4736: $e1
	ld [bc], a                                       ; $4737: $02
	rlca                                             ; $4738: $07
	dec de                                           ; $4739: $1b
	pop hl                                           ; $473a: $e1
	ld [bc], a                                       ; $473b: $02
	ld bc, $e4b8                                     ; $473c: $01 $b8 $e4
	nop                                              ; $473f: $00
	ld e, h                                          ; $4740: $5c
	ld [bc], a                                       ; $4741: $02
	or b                                             ; $4742: $b0
	dec a                                            ; $4743: $3d
	dec bc                                           ; $4744: $0b
	pop hl                                           ; $4745: $e1
	ld [bc], a                                       ; $4746: $02
	ld b, $89                                        ; $4747: $06 $89
	pop hl                                           ; $4749: $e1
	ld [bc], a                                       ; $474a: $02
	ld bc, $e4b8                                     ; $474b: $01 $b8 $e4
	nop                                              ; $474e: $00
	adc [hl]                                         ; $474f: $8e
	ld [bc], a                                       ; $4750: $02
	or b                                             ; $4751: $b0
	ld a, $0b                                        ; $4752: $3e $0b
	pop hl                                           ; $4754: $e1
	ld [bc], a                                       ; $4755: $02
	rlca                                             ; $4756: $07
	ld [hl-], a                                      ; $4757: $32
	pop hl                                           ; $4758: $e1
	ld [bc], a                                       ; $4759: $02
	ld bc, $e4b8                                     ; $475a: $01 $b8 $e4
	nop                                              ; $475d: $00
	ret nz                                           ; $475e: $c0

	ld [bc], a                                       ; $475f: $02
	or b                                             ; $4760: $b0
	ccf                                              ; $4761: $3f
	dec bc                                           ; $4762: $0b
	pop hl                                           ; $4763: $e1
	ld [bc], a                                       ; $4764: $02
	rlca                                             ; $4765: $07
	ld c, c                                          ; $4766: $49
	pop hl                                           ; $4767: $e1
	ld [bc], a                                       ; $4768: $02
	ld bc, $e4b8                                     ; $4769: $01 $b8 $e4
	nop                                              ; $476c: $00
	ld [hl], b                                       ; $476d: $70
	ld [bc], a                                       ; $476e: $02
	or b                                             ; $476f: $b0
	ld b, b                                          ; $4770: $40
	dec bc                                           ; $4771: $0b
	pop hl                                           ; $4772: $e1
	ld [bc], a                                       ; $4773: $02
	ld b, $a4                                        ; $4774: $06 $a4
	pop hl                                           ; $4776: $e1
	ld [bc], a                                       ; $4777: $02
	ld bc, $e4b8                                     ; $4778: $01 $b8 $e4
	nop                                              ; $477b: $00
	ld h, c                                          ; $477c: $61
	ld [bc], a                                       ; $477d: $02
	or b                                             ; $477e: $b0
	ld b, c                                          ; $477f: $41
	dec bc                                           ; $4780: $0b
	pop hl                                           ; $4781: $e1
	ld [bc], a                                       ; $4782: $02
	rlca                                             ; $4783: $07
	ld h, b                                          ; $4784: $60
	pop hl                                           ; $4785: $e1
	ld [bc], a                                       ; $4786: $02
	ld bc, $e4b8                                     ; $4787: $01 $b8 $e4
	nop                                              ; $478a: $00
	sub e                                            ; $478b: $93
	ld [bc], a                                       ; $478c: $02
	or b                                             ; $478d: $b0
	ld b, d                                          ; $478e: $42
	dec bc                                           ; $478f: $0b
	pop hl                                           ; $4790: $e1
	ld [bc], a                                       ; $4791: $02
	rlca                                             ; $4792: $07
	ld [hl], a                                       ; $4793: $77
	pop hl                                           ; $4794: $e1
	ld [bc], a                                       ; $4795: $02
	ld bc, $e4b8                                     ; $4796: $01 $b8 $e4
	nop                                              ; $4799: $00
	ld [bc], a                                       ; $479a: $02
	ld [$053f], sp                                   ; $479b: $08 $3f $05
	ld h, d                                          ; $479e: $62
	add hl, bc                                       ; $479f: $09
	ld de, $02e1                                     ; $47a0: $11 $e1 $02
	inc bc                                           ; $47a3: $03
	inc de                                           ; $47a4: $13
	ret nz                                           ; $47a5: $c0

	ld bc, $05a0                                     ; $47a6: $01 $a0 $05
	dec b                                            ; $47a9: $05
	ld h, h                                          ; $47aa: $64
	pop hl                                           ; $47ab: $e1
	ld [bc], a                                       ; $47ac: $02
	inc bc                                           ; $47ad: $03
	or h                                             ; $47ae: $b4
	db $e4                                           ; $47af: $e4
	nop                                              ; $47b0: $00
	xor [hl]                                         ; $47b1: $ae
	dec b                                            ; $47b2: $05
	ld h, a                                          ; $47b3: $67
	add hl, bc                                       ; $47b4: $09
	ld de, $02e1                                     ; $47b5: $11 $e1 $02
	inc bc                                           ; $47b8: $03
	rla                                              ; $47b9: $17
	ret nz                                           ; $47ba: $c0

	ld bc, $05a0                                     ; $47bb: $01 $a0 $05
	dec b                                            ; $47be: $05
	ld l, c                                          ; $47bf: $69
	pop hl                                           ; $47c0: $e1
	ld [bc], a                                       ; $47c1: $02
	inc bc                                           ; $47c2: $03
	add $e4                                          ; $47c3: $c6 $e4
	nop                                              ; $47c5: $00
	sbc c                                            ; $47c6: $99
	dec b                                            ; $47c7: $05
	ld [hl], b                                       ; $47c8: $70
	add hl, bc                                       ; $47c9: $09
	ld de, $02e1                                     ; $47ca: $11 $e1 $02
	inc bc                                           ; $47cd: $03
	rla                                              ; $47ce: $17
	ret nz                                           ; $47cf: $c0

	ld bc, $05a0                                     ; $47d0: $01 $a0 $05
	dec b                                            ; $47d3: $05
	ld [hl], d                                       ; $47d4: $72
	pop hl                                           ; $47d5: $e1
	ld [bc], a                                       ; $47d6: $02
	inc bc                                           ; $47d7: $03
	add $e4                                          ; $47d8: $c6 $e4
	nop                                              ; $47da: $00
	add h                                            ; $47db: $84
	ld [$053f], sp                                   ; $47dc: $08 $3f $05
	ld h, d                                          ; $47df: $62
	add hl, bc                                       ; $47e0: $09
	ld de, $02e1                                     ; $47e1: $11 $e1 $02
	inc bc                                           ; $47e4: $03
	rra                                              ; $47e5: $1f
	ret nz                                           ; $47e6: $c0

	ld bc, $05a0                                     ; $47e7: $01 $a0 $05
	dec b                                            ; $47ea: $05
	ld [hl], a                                       ; $47eb: $77
	pop hl                                           ; $47ec: $e1
	ld [bc], a                                       ; $47ed: $02
	inc bc                                           ; $47ee: $03
	ret c                                            ; $47ef: $d8

	db $e4                                           ; $47f0: $e4
	nop                                              ; $47f1: $00
	ld l, l                                          ; $47f2: $6d
	dec b                                            ; $47f3: $05
	ld h, a                                          ; $47f4: $67
	add hl, bc                                       ; $47f5: $09
	ld de, $02e1                                     ; $47f6: $11 $e1 $02
	inc bc                                           ; $47f9: $03
	dec de                                           ; $47fa: $1b
	ret nz                                           ; $47fb: $c0

	ld bc, $05a0                                     ; $47fc: $01 $a0 $05
	dec b                                            ; $47ff: $05
	add l                                            ; $4800: $85
	pop hl                                           ; $4801: $e1
	ld [bc], a                                       ; $4802: $02
	inc bc                                           ; $4803: $03
	rst GetHLinHL                                          ; $4804: $cf
	db $e4                                           ; $4805: $e4
	nop                                              ; $4806: $00
	ld e, b                                          ; $4807: $58
	dec b                                            ; $4808: $05
	ld [hl], b                                       ; $4809: $70
	add hl, bc                                       ; $480a: $09
	ld de, $02e1                                     ; $480b: $11 $e1 $02
	inc bc                                           ; $480e: $03
	rla                                              ; $480f: $17
	ret nz                                           ; $4810: $c0

	ld bc, $05a0                                     ; $4811: $01 $a0 $05
	dec b                                            ; $4814: $05
	adc l                                            ; $4815: $8d
	pop hl                                           ; $4816: $e1
	ld [bc], a                                       ; $4817: $02
	inc bc                                           ; $4818: $03
	ret c                                            ; $4819: $d8

	db $e4                                           ; $481a: $e4
	nop                                              ; $481b: $00
	ld b, e                                          ; $481c: $43
	ld [$053f], sp                                   ; $481d: $08 $3f $05
	ld h, d                                          ; $4820: $62
	add hl, bc                                       ; $4821: $09
	ld de, $02e1                                     ; $4822: $11 $e1 $02
	inc bc                                           ; $4825: $03
	dec de                                           ; $4826: $1b
	ret nz                                           ; $4827: $c0

	ld bc, $05a0                                     ; $4828: $01 $a0 $05
	dec b                                            ; $482b: $05
	sbc d                                            ; $482c: $9a
	pop hl                                           ; $482d: $e1
	ld [bc], a                                       ; $482e: $02
	inc bc                                           ; $482f: $03
	rst GetHLinHL                                          ; $4830: $cf
	db $e4                                           ; $4831: $e4
	nop                                              ; $4832: $00
	inc l                                            ; $4833: $2c
	dec b                                            ; $4834: $05
	ld h, a                                          ; $4835: $67
	add hl, bc                                       ; $4836: $09
	ld de, $02e1                                     ; $4837: $11 $e1 $02
	inc bc                                           ; $483a: $03
	rla                                              ; $483b: $17
	ret nz                                           ; $483c: $c0

	ld bc, $05a0                                     ; $483d: $01 $a0 $05
	dec b                                            ; $4840: $05
	and d                                            ; $4841: $a2
	pop hl                                           ; $4842: $e1
	ld [bc], a                                       ; $4843: $02
	inc bc                                           ; $4844: $03
	add $e4                                          ; $4845: $c6 $e4
	nop                                              ; $4847: $00
	rla                                              ; $4848: $17
	dec b                                            ; $4849: $05
	ld [hl], b                                       ; $484a: $70
	add hl, bc                                       ; $484b: $09
	ld de, $02e1                                     ; $484c: $11 $e1 $02
	inc bc                                           ; $484f: $03
	inc de                                           ; $4850: $13
	ret nz                                           ; $4851: $c0

	ld bc, $05a0                                     ; $4852: $01 $a0 $05
	dec b                                            ; $4855: $05
	xor a                                            ; $4856: $af
	pop hl                                           ; $4857: $e1
	ld [bc], a                                       ; $4858: $02
	inc bc                                           ; $4859: $03
	cp l                                             ; $485a: $bd
	db $e4                                           ; $485b: $e4
	nop                                              ; $485c: $00
	ld [bc], a                                       ; $485d: $02
	add hl, bc                                       ; $485e: $09
	ld [$02e1], sp                                   ; $485f: $08 $e1 $02
	add hl, bc                                       ; $4862: $09
	ld [hl], $e5                                     ; $4863: $36 $e5
	rra                                              ; $4865: $1f
	nop                                              ; $4866: $00
	nop                                              ; $4867: $00
	add hl, bc                                       ; $4868: $09
	inc d                                            ; $4869: $14
	ret nc                                           ; $486a: $d0

	add e                                            ; $486b: $83
	ld bc, $d0de                                     ; $486c: $01 $de $d0
	ret nz                                           ; $486f: $c0

	ld bc, $05a0                                     ; $4870: $01 $a0 $05
	nop                                              ; $4873: $00
	ld bc, $01c0                                     ; $4874: $01 $c0 $01
	and b                                            ; $4877: $a0
	ld bc, $2d04                                     ; $4878: $01 $04 $2d
	db $e4                                           ; $487b: $e4
	nop                                              ; $487c: $00
	ld [bc], a                                       ; $487d: $02
	add hl, bc                                       ; $487e: $09
	ld e, $c0                                        ; $487f: $1e $c0
	set 0, b                                         ; $4881: $cb $c0
	ld de, $00e3                                     ; $4883: $11 $e3 $00
	or d                                             ; $4886: $b2
	ldh [rSC], a                                     ; $4887: $e0 $02
	ld [hl], d                                       ; $4889: $72
	ret nz                                           ; $488a: $c0

	jp z, $80a0                                      ; $488b: $ca $a0 $80

	and b                                            ; $488e: $a0
	jr jr_080_4891                                   ; $488f: $18 $00

jr_080_4891:
	inc bc                                           ; $4891: $03
	db $e4                                           ; $4892: $e4
	nop                                              ; $4893: $00
	dec bc                                           ; $4894: $0b
	rst $38                                          ; $4895: $ff
	rlca                                             ; $4896: $07
	ld b, b                                          ; $4897: $40
	add b                                            ; $4898: $80
	and b                                            ; $4899: $a0
	jr @-$1a                                         ; $489a: $18 $e4

	nop                                              ; $489c: $00
	ld b, e                                          ; $489d: $43
	ld [$053f], sp                                   ; $489e: $08 $3f $05
	or e                                             ; $48a1: $b3
	add hl, bc                                       ; $48a2: $09
	ld de, $02e1                                     ; $48a3: $11 $e1 $02
	inc bc                                           ; $48a6: $03
	rrca                                             ; $48a7: $0f
	ret nz                                           ; $48a8: $c0

	ld bc, $05a0                                     ; $48a9: $01 $a0 $05
	dec b                                            ; $48ac: $05
	or l                                             ; $48ad: $b5
	pop hl                                           ; $48ae: $e1
	ld [bc], a                                       ; $48af: $02
	inc bc                                           ; $48b0: $03
	or h                                             ; $48b1: $b4
	db $e4                                           ; $48b2: $e4
	nop                                              ; $48b3: $00
	adc d                                            ; $48b4: $8a
	dec b                                            ; $48b5: $05
	cp [hl]                                          ; $48b6: $be
	add hl, bc                                       ; $48b7: $09
	ld de, $02e1                                     ; $48b8: $11 $e1 $02
	inc bc                                           ; $48bb: $03
	dec de                                           ; $48bc: $1b
	ret nz                                           ; $48bd: $c0

	ld bc, $05a0                                     ; $48be: $01 $a0 $05
	dec b                                            ; $48c1: $05
	ret nz                                           ; $48c2: $c0

	pop hl                                           ; $48c3: $e1
	ld [bc], a                                       ; $48c4: $02
	inc bc                                           ; $48c5: $03
	rst GetHLinHL                                          ; $48c6: $cf
	db $e4                                           ; $48c7: $e4
	nop                                              ; $48c8: $00
	ld [hl], l                                       ; $48c9: $75
	dec b                                            ; $48ca: $05
	jp z, $1109                                      ; $48cb: $ca $09 $11

	pop hl                                           ; $48ce: $e1
	ld [bc], a                                       ; $48cf: $02
	inc bc                                           ; $48d0: $03
	rrca                                             ; $48d1: $0f
	ret nz                                           ; $48d2: $c0

	ld bc, $05a0                                     ; $48d3: $01 $a0 $05
	dec b                                            ; $48d6: $05
	call z, $02e1                                    ; $48d7: $cc $e1 $02
	inc bc                                           ; $48da: $03
	or h                                             ; $48db: $b4
	db $e4                                           ; $48dc: $e4
	nop                                              ; $48dd: $00
	ld h, b                                          ; $48de: $60
	jr z, jr_080_48e7                                ; $48df: $28 $06

	ret nz                                           ; $48e1: $c0

	ld bc, $05a0                                     ; $48e2: $01 $a0 $05
	dec b                                            ; $48e5: $05
	push de                                          ; $48e6: $d5

jr_080_48e7:
	ld d, l                                          ; $48e7: $55
	dec b                                            ; $48e8: $05
	call c, $2709                                    ; $48e9: $dc $09 $27
	pop hl                                           ; $48ec: $e1
	ld [bc], a                                       ; $48ed: $02
	inc bc                                           ; $48ee: $03
	inc de                                           ; $48ef: $13
	ret nz                                           ; $48f0: $c0

	ld bc, $05a0                                     ; $48f1: $01 $a0 $05
	dec b                                            ; $48f4: $05
	sbc $60                                          ; $48f5: $de $60
	ld hl, sp-$40                                    ; $48f7: $f8 $c0
	add e                                            ; $48f9: $83
	call nc, $28e0                                   ; $48fa: $d4 $e0 $28
	ld a, [bc]                                       ; $48fd: $0a
	ret nz                                           ; $48fe: $c0

	ld bc, $01a0                                     ; $48ff: $01 $a0 $01
	dec b                                            ; $4902: $05
	push hl                                          ; $4903: $e5
	pop hl                                           ; $4904: $e1
	ld [bc], a                                       ; $4905: $02
	inc bc                                           ; $4906: $03
	rst GetHLinHL                                          ; $4907: $cf
	rlca                                             ; $4908: $07
	pop bc                                           ; $4909: $c1
	ld l, l                                          ; $490a: $6d
	db $d3                                           ; $490b: $d3
	pop hl                                           ; $490c: $e1
	ld [bc], a                                       ; $490d: $02
	inc bc                                           ; $490e: $03
	or h                                             ; $490f: $b4
	db $e4                                           ; $4910: $e4
	nop                                              ; $4911: $00
	inc l                                            ; $4912: $2c
	dec b                                            ; $4913: $05
	xor $09                                          ; $4914: $ee $09
	ld de, $02e1                                     ; $4916: $11 $e1 $02
	inc bc                                           ; $4919: $03
	rra                                              ; $491a: $1f
	ret nz                                           ; $491b: $c0

	ld bc, $05a0                                     ; $491c: $01 $a0 $05
	dec b                                            ; $491f: $05
	pop af                                           ; $4920: $f1
	pop hl                                           ; $4921: $e1
	ld [bc], a                                       ; $4922: $02
	inc bc                                           ; $4923: $03
	ret c                                            ; $4924: $d8

	db $e4                                           ; $4925: $e4
	nop                                              ; $4926: $00
	rla                                              ; $4927: $17
	dec b                                            ; $4928: $05
	ld a, [$1109]                                    ; $4929: $fa $09 $11
	pop hl                                           ; $492c: $e1
	ld [bc], a                                       ; $492d: $02
	inc bc                                           ; $492e: $03
	rla                                              ; $492f: $17
	ret nz                                           ; $4930: $c0

	ld bc, $05a0                                     ; $4931: $01 $a0 $05
	ld b, $01                                        ; $4934: $06 $01
	pop hl                                           ; $4936: $e1
	ld [bc], a                                       ; $4937: $02
	inc bc                                           ; $4938: $03
	add $e4                                          ; $4939: $c6 $e4
	nop                                              ; $493b: $00
	ld [bc], a                                       ; $493c: $02
	add hl, bc                                       ; $493d: $09
	dec d                                            ; $493e: $15
	ret nz                                           ; $493f: $c0

	set 0, b                                         ; $4940: $cb $c0
	ld de, $00e3                                     ; $4942: $11 $e3 $00
	or c                                             ; $4945: $b1
	pop hl                                           ; $4946: $e1
	ld [bc], a                                       ; $4947: $02
	ld bc, $c0b8                                     ; $4948: $01 $b8 $c0
	ld d, [hl]                                       ; $494b: $56
	db $d3                                           ; $494c: $d3
	ldh [rAUD1SWEEP], a                              ; $494d: $e0 $10
	ret nc                                           ; $494f: $d0

	push hl                                          ; $4950: $e5
	rra                                              ; $4951: $1f
	nop                                              ; $4952: $00
	nop                                              ; $4953: $00
	add hl, bc                                       ; $4954: $09
	ld c, $d0                                        ; $4955: $0e $d0
	add e                                            ; $4957: $83
	ld bc, $d0de                                     ; $4958: $01 $de $d0
	ret nz                                           ; $495b: $c0

	ld bc, $05a0                                     ; $495c: $01 $a0 $05
	ld b, $06                                        ; $495f: $06 $06
	db $e4                                           ; $4961: $e4
	nop                                              ; $4962: $00
	ld [bc], a                                       ; $4963: $02
	add hl, bc                                       ; $4964: $09
	inc h                                            ; $4965: $24
	pop bc                                           ; $4966: $c1
	ld e, e                                          ; $4967: $5b
	ret nz                                           ; $4968: $c0

	set 0, b                                         ; $4969: $cb $c0
	ld de, $00e3                                     ; $496b: $11 $e3 $00
	xor a                                            ; $496e: $af
	add c                                            ; $496f: $81
	ret nz                                           ; $4970: $c0

	dec de                                           ; $4971: $1b
	db $d3                                           ; $4972: $d3
	ld [bc], a                                       ; $4973: $02
	ret nc                                           ; $4974: $d0

	pop de                                           ; $4975: $d1
	ld c, $a0                                        ; $4976: $0e $a0
	add b                                            ; $4978: $80
	and b                                            ; $4979: $a0
	add hl, de                                       ; $497a: $19
	nop                                              ; $497b: $00
	inc bc                                           ; $497c: $03
	db $e4                                           ; $497d: $e4
	nop                                              ; $497e: $00
	cp h                                             ; $497f: $bc
	rst $38                                          ; $4980: $ff
	inc bc                                           ; $4981: $03
	ldh [rP1], a                                     ; $4982: $e0 $00
	rlca                                             ; $4984: $07
	nop                                              ; $4985: $00
	inc bc                                           ; $4986: $03
	ldh [rP1], a                                     ; $4987: $e0 $00
	ld [bc], a                                       ; $4989: $02
	ld [de], a                                       ; $498a: $12
	and b                                            ; $498b: $a0
	add b                                            ; $498c: $80
	and b                                            ; $498d: $a0
	ld a, [de]                                       ; $498e: $1a
	nop                                              ; $498f: $00
	inc bc                                           ; $4990: $03
	db $e4                                           ; $4991: $e4
	nop                                              ; $4992: $00
	dec bc                                           ; $4993: $0b
	rst $38                                          ; $4994: $ff
	rlca                                             ; $4995: $07
	ld b, b                                          ; $4996: $40
	add b                                            ; $4997: $80
	and b                                            ; $4998: $a0
	ld a, [de]                                       ; $4999: $1a
	db $e4                                           ; $499a: $e4
	nop                                              ; $499b: $00
	ld d, [hl]                                       ; $499c: $56
	jr z, jr_080_49a7                                ; $499d: $28 $08

	ret nz                                           ; $499f: $c0

	jp z, $01c0                                      ; $49a0: $ca $c0 $01

	and b                                            ; $49a3: $a0
	ld bc, $0b06                                     ; $49a4: $01 $06 $0b

jr_080_49a7:
	ld c, c                                          ; $49a7: $49
	ld b, $12                                        ; $49a8: $06 $12
	add hl, bc                                       ; $49aa: $09
	ld [de], a                                       ; $49ab: $12
	ldh [rSB], a                                     ; $49ac: $e0 $01
	ld c, l                                          ; $49ae: $4d
	ret nz                                           ; $49af: $c0

	and l                                            ; $49b0: $a5
	ret nz                                           ; $49b1: $c0

	ld bc, $05a0                                     ; $49b2: $01 $a0 $05
	ld b, $14                                        ; $49b5: $06 $14
	pop hl                                           ; $49b7: $e1
	ld [bc], a                                       ; $49b8: $02
	inc bc                                           ; $49b9: $03
	or h                                             ; $49ba: $b4
	db $e4                                           ; $49bb: $e4
	ld bc, $0627                                     ; $49bc: $01 $27 $06
	ld e, $09                                        ; $49bf: $1e $09
	dec d                                            ; $49c1: $15
	ldh [rSB], a                                     ; $49c2: $e0 $01
	scf                                              ; $49c4: $37
	ret nz                                           ; $49c5: $c0

	xor e                                            ; $49c6: $ab
	call nc, $a5c0                                   ; $49c7: $d4 $c0 $a5
	ret nz                                           ; $49ca: $c0

	ld bc, $05a0                                     ; $49cb: $01 $a0 $05
	ld b, $20                                        ; $49ce: $06 $20
	pop hl                                           ; $49d0: $e1
	ld [bc], a                                       ; $49d1: $02
	inc bc                                           ; $49d2: $03
	ret c                                            ; $49d3: $d8

	db $e4                                           ; $49d4: $e4
	ld bc, $060e                                     ; $49d5: $01 $0e $06
	ld h, $09                                        ; $49d8: $26 $09
	ld d, $c0                                        ; $49da: $16 $c0
	inc c                                            ; $49dc: $0c
	ldh [$50], a                                     ; $49dd: $e0 $50
	ldh [rSB], a                                     ; $49df: $e0 $01
	ld a, [de]                                       ; $49e1: $1a
	ret nz                                           ; $49e2: $c0

	and l                                            ; $49e3: $a5
	ret nz                                           ; $49e4: $c0

	ld bc, $05a0                                     ; $49e5: $01 $a0 $05
	ld b, $28                                        ; $49e8: $06 $28
	pop hl                                           ; $49ea: $e1
	ld [bc], a                                       ; $49eb: $02
	inc bc                                           ; $49ec: $03
	add $e4                                          ; $49ed: $c6 $e4
	nop                                              ; $49ef: $00
	db $f4                                           ; $49f0: $f4
	jr z, @+$09                                      ; $49f1: $28 $07

	ldh [rSB], a                                     ; $49f3: $e0 $01
	ld b, $c1                                        ; $49f5: $06 $c1
	ld e, h                                          ; $49f7: $5c
	ret nz                                           ; $49f8: $c0

	jp z, $063f                                      ; $49f9: $ca $3f $06

	ld [hl], $09                                     ; $49fc: $36 $09
	ld de, $02e1                                     ; $49fe: $11 $e1 $02
	inc bc                                           ; $4a01: $03
	inc de                                           ; $4a02: $13
	ret nz                                           ; $4a03: $c0

	ld bc, $05a0                                     ; $4a04: $01 $a0 $05
	ld b, $3d                                        ; $4a07: $06 $3d
	pop hl                                           ; $4a09: $e1
	ld [bc], a                                       ; $4a0a: $02
	inc bc                                           ; $4a0b: $03
	cp l                                             ; $4a0c: $bd
	db $e4                                           ; $4a0d: $e4
	nop                                              ; $4a0e: $00
	push de                                          ; $4a0f: $d5
	ld b, $46                                        ; $4a10: $06 $46
	add hl, bc                                       ; $4a12: $09
	ld de, $02e1                                     ; $4a13: $11 $e1 $02
	inc bc                                           ; $4a16: $03
	rra                                              ; $4a17: $1f
	ret nz                                           ; $4a18: $c0

	ld bc, $05a0                                     ; $4a19: $01 $a0 $05
	ld b, $4d                                        ; $4a1c: $06 $4d
	pop hl                                           ; $4a1e: $e1
	ld [bc], a                                       ; $4a1f: $02
	inc bc                                           ; $4a20: $03
	ret c                                            ; $4a21: $d8

	db $e4                                           ; $4a22: $e4
	nop                                              ; $4a23: $00
	ret nz                                           ; $4a24: $c0

	ld b, $56                                        ; $4a25: $06 $56
	add hl, bc                                       ; $4a27: $09
	ld de, $02e1                                     ; $4a28: $11 $e1 $02
	inc bc                                           ; $4a2b: $03
	inc de                                           ; $4a2c: $13
	ret nz                                           ; $4a2d: $c0

	ld bc, $05a0                                     ; $4a2e: $01 $a0 $05
	ld b, $5f                                        ; $4a31: $06 $5f
	pop hl                                           ; $4a33: $e1
	ld [bc], a                                       ; $4a34: $02
	inc bc                                           ; $4a35: $03
	cp l                                             ; $4a36: $bd
	db $e4                                           ; $4a37: $e4
	nop                                              ; $4a38: $00
	xor e                                            ; $4a39: $ab
	add hl, bc                                       ; $4a3a: $09
	and a                                            ; $4a3b: $a7
	ldh [rP1], a                                     ; $4a3c: $e0 $00
	cp l                                             ; $4a3e: $bd
	pop hl                                           ; $4a3f: $e1
	ld [bc], a                                       ; $4a40: $02
	inc bc                                           ; $4a41: $03
	dec de                                           ; $4a42: $1b
	pop bc                                           ; $4a43: $c1
	ld e, h                                          ; $4a44: $5c
	ret nz                                           ; $4a45: $c0

	jp z, $01c0                                      ; $4a46: $ca $c0 $01

	and b                                            ; $4a49: $a0
	dec b                                            ; $4a4a: $05
	ld b, $61                                        ; $4a4b: $06 $61
	ret nz                                           ; $4a4d: $c0

	ld bc, $01a0                                     ; $4a4e: $01 $a0 $01
	ld b, $67                                        ; $4a51: $06 $67
	ret nz                                           ; $4a53: $c0

	ld bc, $05a0                                     ; $4a54: $01 $a0 $05
	ld b, $71                                        ; $4a57: $06 $71
	ret nz                                           ; $4a59: $c0

	ld bc, $01a0                                     ; $4a5a: $01 $a0 $01
	ld b, $77                                        ; $4a5d: $06 $77
	ret nz                                           ; $4a5f: $c0

	set 0, c                                         ; $4a60: $cb $c1
	ld e, e                                          ; $4a62: $5b
	ret nz                                           ; $4a63: $c0

	rrca                                             ; $4a64: $0f
	db $e3                                           ; $4a65: $e3
	nop                                              ; $4a66: $00
	ldh a, [c]                                       ; $4a67: $f2
	ret nz                                           ; $4a68: $c0

	ld bc, $05a0                                     ; $4a69: $01 $a0 $05
	ld b, $7f                                        ; $4a6c: $06 $7f
	ret nz                                           ; $4a6e: $c0

	ld bc, $01a0                                     ; $4a6f: $01 $a0 $01
	ld b, $8a                                        ; $4a72: $06 $8a
	ret nz                                           ; $4a74: $c0

	ld bc, $05a0                                     ; $4a75: $01 $a0 $05
	ld b, $98                                        ; $4a78: $06 $98
	ret nz                                           ; $4a7a: $c0

	ld bc, $01a0                                     ; $4a7b: $01 $a0 $01
	ld b, $9f                                        ; $4a7e: $06 $9f
	ret nz                                           ; $4a80: $c0

	ld bc, $05a0                                     ; $4a81: $01 $a0 $05
	ld b, $a5                                        ; $4a84: $06 $a5
	ret nz                                           ; $4a86: $c0

	ld bc, $01a0                                     ; $4a87: $01 $a0 $01
	ld b, $aa                                        ; $4a8a: $06 $aa
	ret nz                                           ; $4a8c: $c0

	ld bc, $05a0                                     ; $4a8d: $01 $a0 $05
	ld b, $b2                                        ; $4a90: $06 $b2
	pop bc                                           ; $4a92: $c1
	ld d, a                                          ; $4a93: $57
	ret nz                                           ; $4a94: $c0

	ld de, $00e3                                     ; $4a95: $11 $e3 $00
	xor a                                            ; $4a98: $af
	pop bc                                           ; $4a99: $c1
	ld e, h                                          ; $4a9a: $5c
	ret nz                                           ; $4a9b: $c0

	jp z, $01c0                                      ; $4a9c: $ca $c0 $01

	and b                                            ; $4a9f: $a0
	ld bc, $bb06                                     ; $4aa0: $01 $06 $bb
	pop hl                                           ; $4aa3: $e1
	ld [bc], a                                       ; $4aa4: $02
	inc bc                                           ; $4aa5: $03
	dec de                                           ; $4aa6: $1b
	ret nz                                           ; $4aa7: $c0

	ld bc, $05a0                                     ; $4aa8: $01 $a0 $05
	ld b, $c7                                        ; $4aab: $06 $c7
	ret nz                                           ; $4aad: $c0

	ld bc, $01a0                                     ; $4aae: $01 $a0 $01
	ld b, $d0                                        ; $4ab1: $06 $d0
	ret nz                                           ; $4ab3: $c0

	ld bc, $05a0                                     ; $4ab4: $01 $a0 $05
	ld b, $df                                        ; $4ab7: $06 $df
	ret nz                                           ; $4ab9: $c0

	ld bc, $01a0                                     ; $4aba: $01 $a0 $01
	ld b, $ed                                        ; $4abd: $06 $ed
	pop hl                                           ; $4abf: $e1
	ld [bc], a                                       ; $4ac0: $02
	inc bc                                           ; $4ac1: $03
	inc de                                           ; $4ac2: $13
	ret nz                                           ; $4ac3: $c0

	ld bc, $05a0                                     ; $4ac4: $01 $a0 $05
	ld b, $fb                                        ; $4ac7: $06 $fb
	ret nc                                           ; $4ac9: $d0

	add d                                            ; $4aca: $82
	ld bc, $d2cf                                     ; $4acb: $01 $cf $d2
	pop hl                                           ; $4ace: $e1
	ld [bc], a                                       ; $4acf: $02
	inc b                                            ; $4ad0: $04
	pop de                                           ; $4ad1: $d1
	ret nz                                           ; $4ad2: $c0

	ld d, h                                          ; $4ad3: $54
	pop de                                           ; $4ad4: $d1
	ret nz                                           ; $4ad5: $c0

	ld d, e                                          ; $4ad6: $53
	pop de                                           ; $4ad7: $d1
	ret nz                                           ; $4ad8: $c0

	ld d, d                                          ; $4ad9: $52
	ldh [rAUD1HIGH], a                               ; $4ada: $e0 $14
	pop bc                                           ; $4adc: $c1
	ld l, e                                          ; $4add: $6b
	pop de                                           ; $4ade: $d1
	db $d3                                           ; $4adf: $d3
	db $e4                                           ; $4ae0: $e4
	nop                                              ; $4ae1: $00
	ld [bc], a                                       ; $4ae2: $02
	add hl, bc                                       ; $4ae3: $09
	dec d                                            ; $4ae4: $15
	ret nz                                           ; $4ae5: $c0

	set 0, b                                         ; $4ae6: $cb $c0
	ld de, $00e3                                     ; $4ae8: $11 $e3 $00
	xor [hl]                                         ; $4aeb: $ae
	pop hl                                           ; $4aec: $e1
	ld [bc], a                                       ; $4aed: $02
	ld bc, $c0b8                                     ; $4aee: $01 $b8 $c0
	ld d, [hl]                                       ; $4af1: $56
	db $d3                                           ; $4af2: $d3
	ldh [rAUD1LEN], a                                ; $4af3: $e0 $11
	ret nc                                           ; $4af5: $d0

	push hl                                          ; $4af6: $e5
	rra                                              ; $4af7: $1f
	nop                                              ; $4af8: $00
	nop                                              ; $4af9: $00
	rlca                                             ; $4afa: $07

jr_080_4afb:
	ret nz                                           ; $4afb: $c0

	and a                                            ; $4afc: $a7
	db $d3                                           ; $4afd: $d3
	db $d3                                           ; $4afe: $d3
	rst SubAFromHL                                          ; $4aff: $d7
	ret nz                                           ; $4b00: $c0

	xor h                                            ; $4b01: $ac
	jr z, jr_080_4b0d                                ; $4b02: $28 $09

	pop bc                                           ; $4b04: $c1
	cp l                                             ; $4b05: $bd
	ret nc                                           ; $4b06: $d0

	ret nz                                           ; $4b07: $c0

	ld bc, $05a0                                     ; $4b08: $01 $a0 $05
	ld b, $ff                                        ; $4b0b: $06 $ff

jr_080_4b0d:
	add hl, hl                                       ; $4b0d: $29
	rlca                                             ; $4b0e: $07
	inc bc                                           ; $4b0f: $03
	add hl, bc                                       ; $4b10: $09
	ld e, $c0                                        ; $4b11: $1e $c0
	ld bc, $01a0                                     ; $4b13: $01 $a0 $01
	rlca                                             ; $4b16: $07
	dec b                                            ; $4b17: $05
	pop hl                                           ; $4b18: $e1
	ld [bc], a                                       ; $4b19: $02
	inc bc                                           ; $4b1a: $03
	rrca                                             ; $4b1b: $0f
	ret nz                                           ; $4b1c: $c0

	ld bc, $05a0                                     ; $4b1d: $01 $a0 $05
	rlca                                             ; $4b20: $07
	ld c, $c0                                        ; $4b21: $0e $c0
	ld d, c                                          ; $4b23: $51
	pop de                                           ; $4b24: $d1
	ret nz                                           ; $4b25: $c0

	inc c                                            ; $4b26: $0c
	ldh [$3c], a                                     ; $4b27: $e0 $3c
	pop hl                                           ; $4b29: $e1
	ld [bc], a                                       ; $4b2a: $02
	inc bc                                           ; $4b2b: $03
	daa                                              ; $4b2c: $27
	db $e4                                           ; $4b2d: $e4
	nop                                              ; $4b2e: $00
	add hl, bc                                       ; $4b2f: $09
	rlca                                             ; $4b30: $07
	inc d                                            ; $4b31: $14
	add hl, bc                                       ; $4b32: $09
	inc bc                                           ; $4b33: $03
	db $e4                                           ; $4b34: $e4
	nop                                              ; $4b35: $00
	ld [bc], a                                       ; $4b36: $02
	add hl, bc                                       ; $4b37: $09
	jr jr_080_4afb                                   ; $4b38: $18 $c1

	cp l                                             ; $4b3a: $bd
	pop de                                           ; $4b3b: $d1
	add d                                            ; $4b3c: $82
	ret nz                                           ; $4b3d: $c0

	add b                                            ; $4b3e: $80
	ld bc, $03d3                                     ; $4b3f: $01 $d3 $03
	db $e4                                           ; $4b42: $e4
	nop                                              ; $4b43: $00
	adc d                                            ; $4b44: $8a
	ld bc, $03d2                                     ; $4b45: $01 $d2 $03
	db $e4                                           ; $4b48: $e4
	nop                                              ; $4b49: $00
	add hl, sp                                       ; $4b4a: $39
	ld bc, $03d1                                     ; $4b4b: $01 $d1 $03
	db $e4                                           ; $4b4e: $e4
	nop                                              ; $4b4f: $00
	ld [bc], a                                       ; $4b50: $02
	add hl, bc                                       ; $4b51: $09
	cpl                                              ; $4b52: $2f
	ret nz                                           ; $4b53: $c0

	ld bc, $01a0                                     ; $4b54: $01 $a0 $01
	rlca                                             ; $4b57: $07
	ld d, $c0                                        ; $4b58: $16 $c0
	ld bc, $05a0                                     ; $4b5a: $01 $a0 $05
	rlca                                             ; $4b5d: $07
	dec de                                           ; $4b5e: $1b
	pop hl                                           ; $4b5f: $e1
	ld [bc], a                                       ; $4b60: $02
	ld [$c069], sp                                   ; $4b61: $08 $69 $c0
	and a                                            ; $4b64: $a7
	db $d3                                           ; $4b65: $d3
	db $d3                                           ; $4b66: $d3
	pop de                                           ; $4b67: $d1
	ret nz                                           ; $4b68: $c0

	xor h                                            ; $4b69: $ac
	ret nz                                           ; $4b6a: $c0

	and l                                            ; $4b6b: $a5
	ret nz                                           ; $4b6c: $c0

	ld bc, $01a0                                     ; $4b6d: $01 $a0 $01
	rlca                                             ; $4b70: $07
	inc h                                            ; $4b71: $24
	pop hl                                           ; $4b72: $e1
	ld [bc], a                                       ; $4b73: $02
	inc bc                                           ; $4b74: $03
	inc de                                           ; $4b75: $13
	ret nz                                           ; $4b76: $c0

	ld bc, $05a0                                     ; $4b77: $01 $a0 $05
	rlca                                             ; $4b7a: $07
	ld a, [hl+]                                      ; $4b7b: $2a
	ret nz                                           ; $4b7c: $c0

	ld d, c                                          ; $4b7d: $51
	pop de                                           ; $4b7e: $d1
	db $e4                                           ; $4b7f: $e4
	nop                                              ; $4b80: $00
	or b                                             ; $4b81: $b0
	add hl, bc                                       ; $4b82: $09
	ld c, c                                          ; $4b83: $49
	ret nz                                           ; $4b84: $c0

	ld bc, $01a0                                     ; $4b85: $01 $a0 $01
	rlca                                             ; $4b88: $07
	ld sp, $01c0                                     ; $4b89: $31 $c0 $01
	and b                                            ; $4b8c: $a0
	dec b                                            ; $4b8d: $05
	rlca                                             ; $4b8e: $07
	add hl, sp                                       ; $4b8f: $39
	ret nz                                           ; $4b90: $c0

	ld bc, $01a0                                     ; $4b91: $01 $a0 $01
	rlca                                             ; $4b94: $07
	ld b, c                                          ; $4b95: $41
	pop hl                                           ; $4b96: $e1
	ld [bc], a                                       ; $4b97: $02
	ld [$e08d], sp                                   ; $4b98: $08 $8d $e0
	nop                                              ; $4b9b: $00
	call z, $8760                                    ; $4b9c: $cc $60 $87
	ld bc, $13e2                                     ; $4b9f: $01 $e2 $13
	ret nz                                           ; $4ba2: $c0

	ld bc, $01a0                                     ; $4ba3: $01 $a0 $01
	rlca                                             ; $4ba6: $07
	ld c, b                                          ; $4ba7: $48
	pop hl                                           ; $4ba8: $e1
	ld [bc], a                                       ; $4ba9: $02
	inc bc                                           ; $4baa: $03
	rrca                                             ; $4bab: $0f
	ret nz                                           ; $4bac: $c0

	ld bc, $05a0                                     ; $4bad: $01 $a0 $05
	rlca                                             ; $4bb0: $07
	ld c, h                                          ; $4bb1: $4c
	ret nz                                           ; $4bb2: $c0

	ld d, c                                          ; $4bb3: $51
	pop de                                           ; $4bb4: $d1
	db $10                                           ; $4bb5: $10
	ret nz                                           ; $4bb6: $c0

	ld bc, $01a0                                     ; $4bb7: $01 $a0 $01
	rlca                                             ; $4bba: $07
	ld d, l                                          ; $4bbb: $55
	pop hl                                           ; $4bbc: $e1
	ld [bc], a                                       ; $4bbd: $02
	inc bc                                           ; $4bbe: $03
	inc de                                           ; $4bbf: $13
	ret nz                                           ; $4bc0: $c0

	ld bc, $05a0                                     ; $4bc1: $01 $a0 $05
	rlca                                             ; $4bc4: $07
	ld h, b                                          ; $4bc5: $60
	ld b, b                                          ; $4bc6: $40
	add a                                            ; $4bc7: $87
	ld bc, $e4e2                                     ; $4bc8: $01 $e2 $e4
	nop                                              ; $4bcb: $00
	ld h, l                                          ; $4bcc: $65
	add hl, bc                                       ; $4bcd: $09
	add hl, de                                       ; $4bce: $19
	ret nz                                           ; $4bcf: $c0

	ld bc, $01a0                                     ; $4bd0: $01 $a0 $01

Jump_080_4bd3:
	rlca                                             ; $4bd3: $07
	ld l, b                                          ; $4bd4: $68
	ret nz                                           ; $4bd5: $c0

	ld bc, $05a0                                     ; $4bd6: $01 $a0 $05
	ld b, $5f                                        ; $4bd9: $06 $5f
	pop hl                                           ; $4bdb: $e1
	ld [bc], a                                       ; $4bdc: $02
	ld [$e0a4], sp                                   ; $4bdd: $08 $a4 $e0
	nop                                              ; $4be0: $00
	add a                                            ; $4be1: $87
	ret nz                                           ; $4be2: $c0

	ld d, c                                          ; $4be3: $51
	pop de                                           ; $4be4: $d1
	db $e4                                           ; $4be5: $e4
	nop                                              ; $4be6: $00
	ld [bc], a                                       ; $4be7: $02
	jr z, jr_080_4bf0                                ; $4be8: $28 $06

	ret nz                                           ; $4bea: $c0

	ld bc, $05a0                                     ; $4beb: $01 $a0 $05
	rlca                                             ; $4bee: $07
	ld l, [hl]                                       ; $4bef: $6e

jr_080_4bf0:
	ccf                                              ; $4bf0: $3f
	rlca                                             ; $4bf1: $07
	ld [hl], h                                       ; $4bf2: $74
	add hl, bc                                       ; $4bf3: $09
	ld de, $02e1                                     ; $4bf4: $11 $e1 $02
	inc bc                                           ; $4bf7: $03
	inc de                                           ; $4bf8: $13
	ret nz                                           ; $4bf9: $c0

	ld bc, $05a0                                     ; $4bfa: $01 $a0 $05
	rlca                                             ; $4bfd: $07
	halt                                             ; $4bfe: $76
	pop hl                                           ; $4bff: $e1
	ld [bc], a                                       ; $4c00: $02
	inc bc                                           ; $4c01: $03
	cp l                                             ; $4c02: $bd
	db $e4                                           ; $4c03: $e4
	nop                                              ; $4c04: $00
	inc l                                            ; $4c05: $2c
	rlca                                             ; $4c06: $07
	ld a, l                                          ; $4c07: $7d
	add hl, bc                                       ; $4c08: $09
	ld de, $02e1                                     ; $4c09: $11 $e1 $02
	inc bc                                           ; $4c0c: $03
	dec de                                           ; $4c0d: $1b
	ret nz                                           ; $4c0e: $c0

	ld bc, $05a0                                     ; $4c0f: $01 $a0 $05
	rlca                                             ; $4c12: $07
	ld a, a                                          ; $4c13: $7f
	pop hl                                           ; $4c14: $e1
	ld [bc], a                                       ; $4c15: $02
	inc bc                                           ; $4c16: $03
	rst GetHLinHL                                          ; $4c17: $cf
	db $e4                                           ; $4c18: $e4
	nop                                              ; $4c19: $00
	rla                                              ; $4c1a: $17
	rlca                                             ; $4c1b: $07
	add a                                            ; $4c1c: $87
	add hl, bc                                       ; $4c1d: $09
	ld de, $02e1                                     ; $4c1e: $11 $e1 $02
	inc bc                                           ; $4c21: $03
	rla                                              ; $4c22: $17
	ret nz                                           ; $4c23: $c0

	ld bc, $05a0                                     ; $4c24: $01 $a0 $05
	rlca                                             ; $4c27: $07
	adc c                                            ; $4c28: $89
	pop hl                                           ; $4c29: $e1
	ld [bc], a                                       ; $4c2a: $02
	inc bc                                           ; $4c2b: $03
	add $e4                                          ; $4c2c: $c6 $e4
	nop                                              ; $4c2e: $00
	ld [bc], a                                       ; $4c2f: $02
	add hl, bc                                       ; $4c30: $09
	dec [hl]                                         ; $4c31: $35
	add c                                            ; $4c32: $81
	ret nz                                           ; $4c33: $c0

	ld h, h                                          ; $4c34: $64
	ld [bc], a                                       ; $4c35: $02
	ldh [$63], a                                     ; $4c36: $e0 $63
	inc d                                            ; $4c38: $14
	ret nc                                           ; $4c39: $d0

	add d                                            ; $4c3a: $82
	ld bc, $d1cf                                     ; $4c3b: $01 $cf $d1
	pop hl                                           ; $4c3e: $e1
	ld [bc], a                                       ; $4c3f: $02
	inc b                                            ; $4c40: $04
	rst JumpTable                                          ; $4c41: $c7
	ret nc                                           ; $4c42: $d0

	add e                                            ; $4c43: $83
	ld bc, $d1de                                     ; $4c44: $01 $de $d1
	ret nz                                           ; $4c47: $c0

	ld d, [hl]                                       ; $4c48: $56
	db $d3                                           ; $4c49: $d3
	ldh [rAUD1ENV], a                                ; $4c4a: $e0 $12
	pop de                                           ; $4c4c: $d1
	nop                                              ; $4c4d: $00
	inc d                                            ; $4c4e: $14
	ret nc                                           ; $4c4f: $d0

	add d                                            ; $4c50: $82
	ld bc, $d2cf                                     ; $4c51: $01 $cf $d2
	pop hl                                           ; $4c54: $e1
	ld [bc], a                                       ; $4c55: $02
	inc b                                            ; $4c56: $04
	pop de                                           ; $4c57: $d1
	ret nc                                           ; $4c58: $d0

	add e                                            ; $4c59: $83
	ld bc, $d0de                                     ; $4c5a: $01 $de $d0
	ret nz                                           ; $4c5d: $c0

	ld d, [hl]                                       ; $4c5e: $56
	db $d3                                           ; $4c5f: $d3
	ldh [rAUD1ENV], a                                ; $4c60: $e0 $12
	ret nc                                           ; $4c62: $d0

	push hl                                          ; $4c63: $e5
	rra                                              ; $4c64: $1f
	nop                                              ; $4c65: $00
	nop                                              ; $4c66: $00
	dec bc                                           ; $4c67: $0b
	ret nz                                           ; $4c68: $c0

	and a                                            ; $4c69: $a7
	db $d3                                           ; $4c6a: $d3
	db $d3                                           ; $4c6b: $d3
	pop de                                           ; $4c6c: $d1
	ret nz                                           ; $4c6d: $c0

	xor h                                            ; $4c6e: $ac
	pop bc                                           ; $4c6f: $c1
	ld e, h                                          ; $4c70: $5c
	ret nz                                           ; $4c71: $c0

	jp z, $1409                                      ; $4c72: $ca $09 $14

	ret nc                                           ; $4c75: $d0

	add e                                            ; $4c76: $83
	ld bc, $d0de                                     ; $4c77: $01 $de $d0
	ret nz                                           ; $4c7a: $c0

	ld bc, $05a0                                     ; $4c7b: $01 $a0 $05
	rlca                                             ; $4c7e: $07
	adc a                                            ; $4c7f: $8f
	ret nz                                           ; $4c80: $c0

	ld bc, $01a0                                     ; $4c81: $01 $a0 $01
	inc b                                            ; $4c84: $04
	dec l                                            ; $4c85: $2d
	db $e4                                           ; $4c86: $e4
	nop                                              ; $4c87: $00
	ld [bc], a                                       ; $4c88: $02
	add hl, bc                                       ; $4c89: $09
	rla                                              ; $4c8a: $17
	pop bc                                           ; $4c8b: $c1
	ld e, c                                          ; $4c8c: $59
	db $e3                                           ; $4c8d: $e3
	nop                                              ; $4c8e: $00
	xor c                                            ; $4c8f: $a9
	and b                                            ; $4c90: $a0
	add b                                            ; $4c91: $80
	and b                                            ; $4c92: $a0
	dec de                                           ; $4c93: $1b
	nop                                              ; $4c94: $00
	inc bc                                           ; $4c95: $03
	db $e4                                           ; $4c96: $e4
	nop                                              ; $4c97: $00
	dec bc                                           ; $4c98: $0b
	rst $38                                          ; $4c99: $ff
	rlca                                             ; $4c9a: $07
	ld b, b                                          ; $4c9b: $40
	add b                                            ; $4c9c: $80
	and b                                            ; $4c9d: $a0
	dec de                                           ; $4c9e: $1b
	db $e4                                           ; $4c9f: $e4
	nop                                              ; $4ca0: $00
	ld e, l                                          ; $4ca1: $5d
	jr z, jr_080_4caa                                ; $4ca2: $28 $06

	ret nz                                           ; $4ca4: $c0

	ld bc, $05a0                                     ; $4ca5: $01 $a0 $05
	rlca                                             ; $4ca8: $07
	sbc b                                            ; $4ca9: $98

jr_080_4caa:
	ld d, d                                          ; $4caa: $52
	rlca                                             ; $4cab: $07
	sbc h                                            ; $4cac: $9c
	add hl, bc                                       ; $4cad: $09
	inc h                                            ; $4cae: $24
	pop hl                                           ; $4caf: $e1
	ld [bc], a                                       ; $4cb0: $02
	inc bc                                           ; $4cb1: $03
	inc de                                           ; $4cb2: $13
	ret nz                                           ; $4cb3: $c0

	ld bc, $05a0                                     ; $4cb4: $01 $a0 $05
	rlca                                             ; $4cb7: $07
	sbc [hl]                                         ; $4cb8: $9e
	ld h, b                                          ; $4cb9: $60
	ld hl, sp-$40                                    ; $4cba: $f8 $c0
	add e                                            ; $4cbc: $83
	call nc, $28e0                                   ; $4cbd: $d4 $e0 $28
	ld a, [bc]                                       ; $4cc0: $0a
	ret nz                                           ; $4cc1: $c0

	ld bc, $01a0                                     ; $4cc2: $01 $a0 $01
	rlca                                             ; $4cc5: $07
	and [hl]                                         ; $4cc6: $a6
	pop hl                                           ; $4cc7: $e1
	ld [bc], a                                       ; $4cc8: $02
	inc bc                                           ; $4cc9: $03
	rst GetHLinHL                                          ; $4cca: $cf
	inc b                                            ; $4ccb: $04
	pop hl                                           ; $4ccc: $e1
	ld [bc], a                                       ; $4ccd: $02
	inc bc                                           ; $4cce: $03
	or h                                             ; $4ccf: $b4
	db $e4                                           ; $4cd0: $e4
	nop                                              ; $4cd1: $00
	ld [hl], h                                       ; $4cd2: $74
	rlca                                             ; $4cd3: $07
	xor [hl]                                         ; $4cd4: $ae
	add hl, bc                                       ; $4cd5: $09
	ld de, $02e1                                     ; $4cd6: $11 $e1 $02
	inc bc                                           ; $4cd9: $03
	dec de                                           ; $4cda: $1b
	ret nz                                           ; $4cdb: $c0

	ld bc, $05a0                                     ; $4cdc: $01 $a0 $05
	rlca                                             ; $4cdf: $07
	or c                                             ; $4ce0: $b1
	pop hl                                           ; $4ce1: $e1
	ld [bc], a                                       ; $4ce2: $02
	inc bc                                           ; $4ce3: $03
	rst GetHLinHL                                          ; $4ce4: $cf
	db $e4                                           ; $4ce5: $e4
	nop                                              ; $4ce6: $00
	ld e, a                                          ; $4ce7: $5f
	rlca                                             ; $4ce8: $07
	cp d                                             ; $4ce9: $ba
	add hl, bc                                       ; $4cea: $09
	ld de, $02e1                                     ; $4ceb: $11 $e1 $02
	inc bc                                           ; $4cee: $03
	rla                                              ; $4cef: $17
	ret nz                                           ; $4cf0: $c0

	ld bc, $05a0                                     ; $4cf1: $01 $a0 $05
	rlca                                             ; $4cf4: $07
	cp h                                             ; $4cf5: $bc
	pop hl                                           ; $4cf6: $e1
	ld [bc], a                                       ; $4cf7: $02
	inc bc                                           ; $4cf8: $03
	add $e4                                          ; $4cf9: $c6 $e4
	nop                                              ; $4cfb: $00
	ld c, d                                          ; $4cfc: $4a
	jr z, @+$08                                      ; $4cfd: $28 $06

	ret nz                                           ; $4cff: $c0

	ld bc, $05a0                                     ; $4d00: $01 $a0 $05
	rlca                                             ; $4d03: $07
	jp $073f                                         ; $4d04: $c3 $3f $07


	rrc c                                            ; $4d07: $cb $09
	ld de, $02e1                                     ; $4d09: $11 $e1 $02
	inc bc                                           ; $4d0c: $03
	rrca                                             ; $4d0d: $0f
	ret nz                                           ; $4d0e: $c0

	ld bc, $05a0                                     ; $4d0f: $01 $a0 $05
	rlca                                             ; $4d12: $07
	jp nc, $02e1                                     ; $4d13: $d2 $e1 $02

	inc bc                                           ; $4d16: $03
	or h                                             ; $4d17: $b4
	db $e4                                           ; $4d18: $e4
	nop                                              ; $4d19: $00
	inc l                                            ; $4d1a: $2c
	rlca                                             ; $4d1b: $07
	reti                                             ; $4d1c: $d9


	add hl, bc                                       ; $4d1d: $09
	ld de, $02e1                                     ; $4d1e: $11 $e1 $02
	inc bc                                           ; $4d21: $03
	rra                                              ; $4d22: $1f
	ret nz                                           ; $4d23: $c0

	ld bc, $05a0                                     ; $4d24: $01 $a0 $05
	rlca                                             ; $4d27: $07
	db $e3                                           ; $4d28: $e3
	pop hl                                           ; $4d29: $e1
	ld [bc], a                                       ; $4d2a: $02
	inc bc                                           ; $4d2b: $03
	ret c                                            ; $4d2c: $d8

	db $e4                                           ; $4d2d: $e4
	nop                                              ; $4d2e: $00
	rla                                              ; $4d2f: $17
	rlca                                             ; $4d30: $07
	db $eb                                           ; $4d31: $eb
	add hl, bc                                       ; $4d32: $09
	ld de, $02e1                                     ; $4d33: $11 $e1 $02
	inc bc                                           ; $4d36: $03
	dec de                                           ; $4d37: $1b
	ret nz                                           ; $4d38: $c0

	ld bc, $05a0                                     ; $4d39: $01 $a0 $05
	rlca                                             ; $4d3c: $07
	ldh a, [c]                                       ; $4d3d: $f2
	pop hl                                           ; $4d3e: $e1
	ld [bc], a                                       ; $4d3f: $02
	inc bc                                           ; $4d40: $03
	rst GetHLinHL                                          ; $4d41: $cf
	db $e4                                           ; $4d42: $e4
	nop                                              ; $4d43: $00
	ld [bc], a                                       ; $4d44: $02
	add hl, bc                                       ; $4d45: $09
	rrca                                             ; $4d46: $0f
	pop bc                                           ; $4d47: $c1
	ld e, c                                          ; $4d48: $59
	db $e3                                           ; $4d49: $e3
	nop                                              ; $4d4a: $00
	xor b                                            ; $4d4b: $a8
	ret nz                                           ; $4d4c: $c0

	ld d, [hl]                                       ; $4d4d: $56
	db $d3                                           ; $4d4e: $d3
	ldh [rAUD1LOW], a                                ; $4d4f: $e0 $13
	ret nc                                           ; $4d51: $d0

	push hl                                          ; $4d52: $e5
	rra                                              ; $4d53: $1f
	nop                                              ; $4d54: $00
	nop                                              ; $4d55: $00
	and d                                            ; $4d56: $a2
	dec b                                            ; $4d57: $05
	add hl, bc                                       ; $4d58: $09

jr_080_4d59:
	jp nz, $c027                                     ; $4d59: $c2 $27 $c0

	ld c, h                                          ; $4d5c: $4c
	db $d3                                           ; $4d5d: $d3
	ret nc                                           ; $4d5e: $d0

	adc a                                            ; $4d5f: $8f
	nop                                              ; $4d60: $00
	cp b                                             ; $4d61: $b8
	add h                                            ; $4d62: $84
	ld [bc], a                                       ; $4d63: $02
	ld l, $61                                        ; $4d64: $2e $61
	cp $07                                           ; $4d66: $fe $07
	add b                                            ; $4d68: $80
	nop                                              ; $4d69: $00
	set 7, h                                         ; $4d6a: $cb $fc
	ret nz                                           ; $4d6c: $c0

	ld h, a                                          ; $4d6d: $67
	ret nc                                           ; $4d6e: $d0

	inc [hl]                                         ; $4d6f: $34
	ret nz                                           ; $4d70: $c0

	ld bc, $05a0                                     ; $4d71: $01 $a0 $05
	nop                                              ; $4d74: $00
	ld bc, $01c0                                     ; $4d75: $01 $c0 $01
	and b                                            ; $4d78: $a0
	ld bc, $0c00                                     ; $4d79: $01 $00 $0c
	add c                                            ; $4d7c: $81
	ret nz                                           ; $4d7d: $c0

	dec de                                           ; $4d7e: $1b
	db $d3                                           ; $4d7f: $d3
	ld [bc], a                                       ; $4d80: $02
	ret nc                                           ; $4d81: $d0

	pop de                                           ; $4d82: $d1
	ld a, [bc]                                       ; $4d83: $0a
	pop hl                                           ; $4d84: $e1
	ld [bc], a                                       ; $4d85: $02
	inc bc                                           ; $4d86: $03
	rrca                                             ; $4d87: $0f
	ret nz                                           ; $4d88: $c0

	ld bc, $05a0                                     ; $4d89: $01 $a0 $05
	nop                                              ; $4d8c: $00
	dec d                                            ; $4d8d: $15
	nop                                              ; $4d8e: $00
	ld a, [bc]                                       ; $4d8f: $0a
	pop hl                                           ; $4d90: $e1
	ld [bc], a                                       ; $4d91: $02
	inc bc                                           ; $4d92: $03
	inc de                                           ; $4d93: $13
	ret nz                                           ; $4d94: $c0

	ld bc, $05a0                                     ; $4d95: $01 $a0 $05
	nop                                              ; $4d98: $00
	add hl, de                                       ; $4d99: $19
	ret nz                                           ; $4d9a: $c0

	ld bc, $01a0                                     ; $4d9b: $01 $a0 $01
	nop                                              ; $4d9e: $00
	dec de                                           ; $4d9f: $1b
	ld b, b                                          ; $4da0: $40
	add b                                            ; $4da1: $80
	nop                                              ; $4da2: $00
	set 7, h                                         ; $4da3: $cb $fc
	pop bc                                           ; $4da5: $c1
	ld b, c                                          ; $4da6: $41
	db $d3                                           ; $4da7: $d3
	add h                                            ; $4da8: $84
	ld [bc], a                                       ; $4da9: $02
	ld l, $83                                        ; $4daa: $2e $83
	ld bc, $d1de                                     ; $4dac: $01 $de $d1
	inc e                                            ; $4daf: $1c
	pop hl                                           ; $4db0: $e1
	ld [bc], a                                       ; $4db1: $02
	inc bc                                           ; $4db2: $03
	dec de                                           ; $4db3: $1b
	ret nz                                           ; $4db4: $c0

	ld bc, $05a0                                     ; $4db5: $01 $a0 $05
	nop                                              ; $4db8: $00
	ld hl, $01c0                                     ; $4db9: $21 $c0 $01
	and b                                            ; $4dbc: $a0
	ld bc, $2d00                                     ; $4dbd: $01 $00 $2d
	ret nz                                           ; $4dc0: $c0

	dec h                                            ; $4dc1: $25
	pop de                                           ; $4dc2: $d1
	db $d3                                           ; $4dc3: $d3
	ret nz                                           ; $4dc4: $c0

	inc h                                            ; $4dc5: $24
	jp nc, $c0d3                                     ; $4dc6: $d2 $d3 $c0

	inc hl                                           ; $4dc9: $23
	jp c, $c0d3                                      ; $4dca: $da $d3 $c0

	db $dd                                           ; $4dcd: $dd
	add e                                            ; $4dce: $83
	ret nz                                           ; $4dcf: $c0

	dec de                                           ; $4dd0: $1b
	db $d3                                           ; $4dd1: $d3
	ld [bc], a                                       ; $4dd2: $02
	ret nc                                           ; $4dd3: $d0

	pop de                                           ; $4dd4: $d1
	jr c, jr_080_4d59                                ; $4dd5: $38 $82

	add d                                            ; $4dd7: $82
	ld bc, $02cf                                     ; $4dd8: $01 $cf $02
	pop de                                           ; $4ddb: $d1
	jp nc, $e10f                                     ; $4ddc: $d2 $0f $e1

	ld [bc], a                                       ; $4ddf: $02
	inc bc                                           ; $4de0: $03
	inc de                                           ; $4de1: $13
	pop bc                                           ; $4de2: $c1
	or d                                             ; $4de3: $b2
	db $e3                                           ; $4de4: $e3
	nop                                              ; $4de5: $00
	ld c, h                                          ; $4de6: $4c
	ret nz                                           ; $4de7: $c0

	ld bc, $05a0                                     ; $4de8: $01 $a0 $05
	nop                                              ; $4deb: $00
	inc sp                                           ; $4dec: $33
	ld bc, $0ad3                                     ; $4ded: $01 $d3 $0a
	pop hl                                           ; $4df0: $e1
	ld [bc], a                                       ; $4df1: $02
	inc bc                                           ; $4df2: $03
	rla                                              ; $4df3: $17
	ret nz                                           ; $4df4: $c0

	ld bc, $05a0                                     ; $4df5: $01 $a0 $05
	nop                                              ; $4df8: $00
	ld b, b                                          ; $4df9: $40
	ld [bc], a                                       ; $4dfa: $02
	call nc, $0ad5                                   ; $4dfb: $d4 $d5 $0a
	pop hl                                           ; $4dfe: $e1
	ld [bc], a                                       ; $4dff: $02
	inc bc                                           ; $4e00: $03
	dec de                                           ; $4e01: $1b
	ret nz                                           ; $4e02: $c0

	ld bc, $05a0                                     ; $4e03: $01 $a0 $05
	nop                                              ; $4e06: $00
	ld c, e                                          ; $4e07: $4b
	ret nz                                           ; $4e08: $c0

	ld bc, $01a0                                     ; $4e09: $01 $a0 $01
	nop                                              ; $4e0c: $00
	ld d, l                                          ; $4e0d: $55
	ld [bc], a                                       ; $4e0e: $02
	jp nc, Jump_080_44d3                             ; $4e0f: $d2 $d3 $44

	add d                                            ; $4e12: $82
	add d                                            ; $4e13: $82
	ld bc, $02cf                                     ; $4e14: $01 $cf $02
	pop de                                           ; $4e17: $d1
	jp nc, $e115                                     ; $4e18: $d2 $15 $e1

	ld [bc], a                                       ; $4e1b: $02
	inc bc                                           ; $4e1c: $03
	inc de                                           ; $4e1d: $13
	pop bc                                           ; $4e1e: $c1
	or d                                             ; $4e1f: $b2
	db $e3                                           ; $4e20: $e3
	nop                                              ; $4e21: $00
	ld c, h                                          ; $4e22: $4c
	ret nz                                           ; $4e23: $c0

	ld bc, $05a0                                     ; $4e24: $01 $a0 $05
	nop                                              ; $4e27: $00
	ld e, c                                          ; $4e28: $59
	ret nz                                           ; $4e29: $c0

	ld bc, $01a0                                     ; $4e2a: $01 $a0 $01
	nop                                              ; $4e2d: $00
	ld h, [hl]                                       ; $4e2e: $66
	ld bc, $10d3                                     ; $4e2f: $01 $d3 $10
	pop hl                                           ; $4e32: $e1
	ld [bc], a                                       ; $4e33: $02
	inc bc                                           ; $4e34: $03
	rla                                              ; $4e35: $17
	ret nz                                           ; $4e36: $c0

	ld bc, $05a0                                     ; $4e37: $01 $a0 $05
	nop                                              ; $4e3a: $00
	ld l, c                                          ; $4e3b: $69
	ret nz                                           ; $4e3c: $c0

	ld bc, $01a0                                     ; $4e3d: $01 $a0 $01
	nop                                              ; $4e40: $00
	ld h, [hl]                                       ; $4e41: $66
	ld [bc], a                                       ; $4e42: $02
	call nc, $10d5                                   ; $4e43: $d4 $d5 $10
	pop hl                                           ; $4e46: $e1
	ld [bc], a                                       ; $4e47: $02
	inc bc                                           ; $4e48: $03
	dec de                                           ; $4e49: $1b
	ret nz                                           ; $4e4a: $c0

	ld bc, $05a0                                     ; $4e4b: $01 $a0 $05
	nop                                              ; $4e4e: $00
	halt                                             ; $4e4f: $76
	ret nz                                           ; $4e50: $c0

	ld bc, $01a0                                     ; $4e51: $01 $a0 $01
	nop                                              ; $4e54: $00
	ld a, h                                          ; $4e55: $7c
	ld bc, $3fd4                                     ; $4e56: $01 $d4 $3f
	add d                                            ; $4e59: $82
	add d                                            ; $4e5a: $82
	ld bc, $02cf                                     ; $4e5b: $01 $cf $02
	pop de                                           ; $4e5e: $d1
	jp nc, $e110                                     ; $4e5f: $d2 $10 $e1

	ld [bc], a                                       ; $4e62: $02
	inc bc                                           ; $4e63: $03
	inc de                                           ; $4e64: $13
	ret nz                                           ; $4e65: $c0

	ld bc, $05a0                                     ; $4e66: $01 $a0 $05
	nop                                              ; $4e69: $00
	ld a, a                                          ; $4e6a: $7f
	ret nz                                           ; $4e6b: $c0

	ld bc, $01a0                                     ; $4e6c: $01 $a0 $01
	nop                                              ; $4e6f: $00
	ld h, [hl]                                       ; $4e70: $66
	ld bc, $10d3                                     ; $4e71: $01 $d3 $10
	pop hl                                           ; $4e74: $e1
	ld [bc], a                                       ; $4e75: $02
	inc bc                                           ; $4e76: $03
	rla                                              ; $4e77: $17
	ret nz                                           ; $4e78: $c0

	ld bc, $05a0                                     ; $4e79: $01 $a0 $05
	nop                                              ; $4e7c: $00
	add a                                            ; $4e7d: $87
	ret nz                                           ; $4e7e: $c0

	ld bc, $01a0                                     ; $4e7f: $01 $a0 $01
	nop                                              ; $4e82: $00
	adc d                                            ; $4e83: $8a
	ld [bc], a                                       ; $4e84: $02
	call nc, $10d5                                   ; $4e85: $d4 $d5 $10
	pop hl                                           ; $4e88: $e1
	ld [bc], a                                       ; $4e89: $02
	inc bc                                           ; $4e8a: $03
	dec de                                           ; $4e8b: $1b
	ret nz                                           ; $4e8c: $c0

	ld bc, $05a0                                     ; $4e8d: $01 $a0 $05
	nop                                              ; $4e90: $00
	adc [hl]                                         ; $4e91: $8e
	ret nz                                           ; $4e92: $c0

	ld bc, $01a0                                     ; $4e93: $01 $a0 $01
	nop                                              ; $4e96: $00
	ld a, h                                          ; $4e97: $7c
	ld bc, $10d5                                     ; $4e98: $01 $d5 $10
	pop hl                                           ; $4e9b: $e1
	ld [bc], a                                       ; $4e9c: $02
	inc bc                                           ; $4e9d: $03
	dec de                                           ; $4e9e: $1b
	ret nz                                           ; $4e9f: $c0

	ld bc, $05a0                                     ; $4ea0: $01 $a0 $05
	nop                                              ; $4ea3: $00
	sub c                                            ; $4ea4: $91
	ret nz                                           ; $4ea5: $c0

	ld bc, $01a0                                     ; $4ea6: $01 $a0 $01
	nop                                              ; $4ea9: $00
	sbc a                                            ; $4eaa: $9f
	pop hl                                           ; $4eab: $e1
	ld [bc], a                                       ; $4eac: $02
	inc bc                                           ; $4ead: $03
	daa                                              ; $4eae: $27
	ei                                               ; $4eaf: $fb
	cp $0a                                           ; $4eb0: $fe $0a
	db $fc                                           ; $4eb2: $fc
	ret nz                                           ; $4eb3: $c0

	ld h, l                                          ; $4eb4: $65
	ret nz                                           ; $4eb5: $c0

	ld [hl], c                                       ; $4eb6: $71
	db $fc                                           ; $4eb7: $fc
	ret nz                                           ; $4eb8: $c0

	ld h, [hl]                                       ; $4eb9: $66
	ret nz                                           ; $4eba: $c0

	ld [hl], d                                       ; $4ebb: $72
	cpl                                              ; $4ebc: $2f
	ei                                               ; $4ebd: $fb
	ld hl, sp-$40                                    ; $4ebe: $f8 $c0
	rla                                              ; $4ec0: $17
	db $d3                                           ; $4ec1: $d3
	ldh [$3c], a                                     ; $4ec2: $e0 $3c
	daa                                              ; $4ec4: $27
	add b                                            ; $4ec5: $80
	ret nz                                           ; $4ec6: $c0

	dec de                                           ; $4ec7: $1b
	db $d3                                           ; $4ec8: $d3
	ld [bc], a                                       ; $4ec9: $02
	ret nc                                           ; $4eca: $d0

	pop de                                           ; $4ecb: $d1
	rra                                              ; $4ecc: $1f
	ret nz                                           ; $4ecd: $c0

	ld bc, $05a0                                     ; $4ece: $01 $a0 $05
	nop                                              ; $4ed1: $00
	and h                                            ; $4ed2: $a4
	ret nz                                           ; $4ed3: $c0

	ld bc, $01a0                                     ; $4ed4: $01 $a0 $01
	nop                                              ; $4ed7: $00
	and a                                            ; $4ed8: $a7
	ret nc                                           ; $4ed9: $d0

	add e                                            ; $4eda: $83
	ld [bc], a                                       ; $4edb: $02
	ld l, l                                          ; $4edc: $6d
	db $d3                                           ; $4edd: $d3
	pop hl                                           ; $4ede: $e1
	ld b, [hl]                                       ; $4edf: $46
	ld bc, $c0e1                                     ; $4ee0: $01 $e1 $c0
	ld bc, $01a0                                     ; $4ee3: $01 $a0 $01
	nop                                              ; $4ee6: $00
	xor c                                            ; $4ee7: $a9
	nop                                              ; $4ee8: $00
	add b                                            ; $4ee9: $80
	nop                                              ; $4eea: $00
	dec [hl]                                         ; $4eeb: $35
	add d                                            ; $4eec: $82
	ret nz                                           ; $4eed: $c0

	dec de                                           ; $4eee: $1b
	db $d3                                           ; $4eef: $d3
	ld [bc], a                                       ; $4ef0: $02
	ret nc                                           ; $4ef1: $d0

	pop de                                           ; $4ef2: $d1
	ld b, $c0                                        ; $4ef3: $06 $c0
	ld bc, $05a0                                     ; $4ef5: $01 $a0 $05
	nop                                              ; $4ef8: $00
	cp [hl]                                          ; $4ef9: $be
	inc bc                                           ; $4efa: $03
	jp nc, $d4d3                                     ; $4efb: $d2 $d3 $d4

	ld b, $c0                                        ; $4efe: $06 $c0
	ld bc, $05a0                                     ; $4f00: $01 $a0 $05
	nop                                              ; $4f03: $00
	pop bc                                           ; $4f04: $c1
	ld bc, $0cd5                                     ; $4f05: $01 $d5 $0c
	ret nz                                           ; $4f08: $c0

	ld bc, $05a0                                     ; $4f09: $01 $a0 $05
	nop                                              ; $4f0c: $00
	add $c1                                          ; $4f0d: $c6 $c1
	ld e, e                                          ; $4f0f: $5b
	ret nz                                           ; $4f10: $c0

	inc c                                            ; $4f11: $0c
	ldh [rAUD3HIGH], a                               ; $4f12: $e0 $1e
	ei                                               ; $4f14: $fb
	db $fd                                           ; $4f15: $fd
	add h                                            ; $4f16: $84
	ld [bc], a                                       ; $4f17: $02
	ld l, $d0                                        ; $4f18: $2e $d0
	add hl, bc                                       ; $4f1a: $09
	pop bc                                           ; $4f1b: $c1
	ccf                                              ; $4f1c: $3f
	db $d3                                           ; $4f1d: $d3
	add h                                            ; $4f1e: $84
	ld [bc], a                                       ; $4f1f: $02
	ld l, $83                                        ; $4f20: $2e $83
	ld bc, $61de                                     ; $4f22: $01 $de $61
	cp $09                                           ; $4f25: $fe $09
	db $fd                                           ; $4f27: $fd
	ret nz                                           ; $4f28: $c0

	ld h, h                                          ; $4f29: $64
	ldh [$63], a                                     ; $4f2a: $e0 $63
	db $fc                                           ; $4f2c: $fc
	ret nz                                           ; $4f2d: $c0

	ld h, l                                          ; $4f2e: $65
	push de                                          ; $4f2f: $d5
	dec de                                           ; $4f30: $1b
	add d                                            ; $4f31: $82
	ret nz                                           ; $4f32: $c0

	ld h, [hl]                                       ; $4f33: $66
	ld bc, $05d3                                     ; $4f34: $01 $d3 $05
	ret nc                                           ; $4f37: $d0

	add e                                            ; $4f38: $83
	ld bc, $d372                                     ; $4f39: $01 $72 $d3
	ld bc, $05d4                                     ; $4f3c: $01 $d4 $05
	ret nc                                           ; $4f3f: $d0

	add e                                            ; $4f40: $83
	ld bc, $d376                                     ; $4f41: $01 $76 $d3
	ld bc, $05d5                                     ; $4f44: $01 $d5 $05
	ret nc                                           ; $4f47: $d0

	add e                                            ; $4f48: $83
	ld bc, $d37a                                     ; $4f49: $01 $7a $d3
	cp $09                                           ; $4f4c: $fe $09
	db $fc                                           ; $4f4e: $fc
	ret nz                                           ; $4f4f: $c0

	ld h, h                                          ; $4f50: $64
	ldh [$63], a                                     ; $4f51: $e0 $63
	db $fc                                           ; $4f53: $fc
	ret nz                                           ; $4f54: $c0

	ld h, l                                          ; $4f55: $65
	push de                                          ; $4f56: $d5
	inc hl                                           ; $4f57: $23
	add e                                            ; $4f58: $83
	ret nz                                           ; $4f59: $c0

jr_080_4f5a:
	ld h, [hl]                                       ; $4f5a: $66
	ld bc, $05d2                                     ; $4f5b: $01 $d2 $05
	ret nc                                           ; $4f5e: $d0

	add e                                            ; $4f5f: $83
	ld bc, $d372                                     ; $4f60: $01 $72 $d3
	ld bc, $05d3                                     ; $4f63: $01 $d3 $05
	ret nc                                           ; $4f66: $d0

	add e                                            ; $4f67: $83
	ld bc, $d376                                     ; $4f68: $01 $76 $d3
	ld bc, $05d4                                     ; $4f6b: $01 $d4 $05
	ret nc                                           ; $4f6e: $d0

	add e                                            ; $4f6f: $83
	ld bc, $d37a                                     ; $4f70: $01 $7a $d3
	ld bc, $05d5                                     ; $4f73: $01 $d5 $05
	ret nc                                           ; $4f76: $d0

	add e                                            ; $4f77: $83
	ld bc, $d37e                                     ; $4f78: $01 $7e $d3
	nop                                              ; $4f7b: $00
	ret nz                                           ; $4f7c: $c0

	set 4, l                                         ; $4f7d: $cb $e5
	nop                                              ; $4f7f: $00
	jr nz, jr_080_4f5a                               ; $4f80: $20 $d8

	cp [hl]                                          ; $4f82: $be
	dec b                                            ; $4f83: $05
	add hl, bc                                       ; $4f84: $09
	pop bc                                           ; $4f85: $c1
	ld e, e                                          ; $4f86: $5b
	nop                                              ; $4f87: $00
	add b                                            ; $4f88: $80
	ld [bc], a                                       ; $4f89: $02
	halt                                             ; $4f8a: $76
	ld b, b                                          ; $4f8b: $40
	add b                                            ; $4f8c: $80
	and b                                            ; $4f8d: $a0
	nop                                              ; $4f8e: $00
	db $fd                                           ; $4f8f: $fd
	pop bc                                           ; $4f90: $c1
	ld d, b                                          ; $4f91: $50
	adc e                                            ; $4f92: $8b
	ld [bc], a                                       ; $4f93: $02
	inc [hl]                                         ; $4f94: $34
	ld [bc], a                                       ; $4f95: $02
	or b                                             ; $4f96: $b0
	ld e, c                                          ; $4f97: $59
	dec bc                                           ; $4f98: $0b
	pop hl                                           ; $4f99: $e1
	ld [bc], a                                       ; $4f9a: $02
	ld bc, $e0f2                                     ; $4f9b: $01 $f2 $e0
	ld bc, $e544                                     ; $4f9e: $01 $44 $e5
	ld hl, $0000                                     ; $4fa1: $21 $00 $00
	ld [bc], a                                       ; $4fa4: $02
	or b                                             ; $4fa5: $b0
	ld [de], a                                       ; $4fa6: $12
	dec bc                                           ; $4fa7: $0b
	pop hl                                           ; $4fa8: $e1
	ld [bc], a                                       ; $4fa9: $02
	ld bc, $e0f2                                     ; $4faa: $01 $f2 $e0
	ld bc, $e535                                     ; $4fad: $01 $35 $e5
	ld hl, $4901                                     ; $4fb0: $21 $01 $49
	ld [bc], a                                       ; $4fb3: $02
	or b                                             ; $4fb4: $b0
	ld e, d                                          ; $4fb5: $5a
	dec bc                                           ; $4fb6: $0b
	pop hl                                           ; $4fb7: $e1
	ld [bc], a                                       ; $4fb8: $02
	ld bc, $e0f2                                     ; $4fb9: $01 $f2 $e0
	ld bc, $e526                                     ; $4fbc: $01 $26 $e5
	ld hl, $aa02                                     ; $4fbf: $21 $02 $aa
	ld [bc], a                                       ; $4fc2: $02
	or b                                             ; $4fc3: $b0
	inc d                                            ; $4fc4: $14
	dec bc                                           ; $4fc5: $0b
	pop hl                                           ; $4fc6: $e1
	ld [bc], a                                       ; $4fc7: $02
	ld bc, $e0f2                                     ; $4fc8: $01 $f2 $e0
	ld bc, $e517                                     ; $4fcb: $01 $17 $e5
	ld hl, $1f06                                     ; $4fce: $21 $06 $1f
	ld [bc], a                                       ; $4fd1: $02
	or b                                             ; $4fd2: $b0
	ld e, e                                          ; $4fd3: $5b
	dec bc                                           ; $4fd4: $0b
	pop hl                                           ; $4fd5: $e1
	ld [bc], a                                       ; $4fd6: $02
	ld bc, $e0f2                                     ; $4fd7: $01 $f2 $e0
	ld bc, $e508                                     ; $4fda: $01 $08 $e5
	ld hl, $5907                                     ; $4fdd: $21 $07 $59
	ld [bc], a                                       ; $4fe0: $02
	or b                                             ; $4fe1: $b0
	ld d, $0b                                        ; $4fe2: $16 $0b
	pop hl                                           ; $4fe4: $e1
	ld [bc], a                                       ; $4fe5: $02
	ld bc, $e0f2                                     ; $4fe6: $01 $f2 $e0
	nop                                              ; $4fe9: $00
	ld sp, hl                                        ; $4fea: $f9
	push hl                                          ; $4feb: $e5
	ld hl, $8d08                                     ; $4fec: $21 $08 $8d
	ld [bc], a                                       ; $4fef: $02
	or b                                             ; $4ff0: $b0
	jr jr_080_4ffe                                   ; $4ff1: $18 $0b

	pop hl                                           ; $4ff3: $e1
	ld [bc], a                                       ; $4ff4: $02
	ld bc, $e0f2                                     ; $4ff5: $01 $f2 $e0
	nop                                              ; $4ff8: $00
	ld [$21e5], a                                    ; $4ff9: $ea $e5 $21
	add hl, bc                                       ; $4ffc: $09
	ld l, h                                          ; $4ffd: $6c

jr_080_4ffe:
	ld [bc], a                                       ; $4ffe: $02
	or b                                             ; $4fff: $b0
	inc de                                           ; $5000: $13
	dec bc                                           ; $5001: $0b
	pop hl                                           ; $5002: $e1
	ld [bc], a                                       ; $5003: $02
	ld bc, $e0f2                                     ; $5004: $01 $f2 $e0
	nop                                              ; $5007: $00
	db $db                                           ; $5008: $db
	push hl                                          ; $5009: $e5
	ld hl, $690a                                     ; $500a: $21 $0a $69
	ld [bc], a                                       ; $500d: $02
	or b                                             ; $500e: $b0
	ld e, h                                          ; $500f: $5c
	dec bc                                           ; $5010: $0b
	pop hl                                           ; $5011: $e1
	ld [bc], a                                       ; $5012: $02
	ld bc, $e0f2                                     ; $5013: $01 $f2 $e0
	nop                                              ; $5016: $00
	call z, $21e5                                    ; $5017: $cc $e5 $21
	inc c                                            ; $501a: $0c
	or [hl]                                          ; $501b: $b6
	ld [bc], a                                       ; $501c: $02
	or b                                             ; $501d: $b0
	ld e, l                                          ; $501e: $5d
	dec bc                                           ; $501f: $0b
	pop hl                                           ; $5020: $e1
	ld [bc], a                                       ; $5021: $02
	ld bc, $e0f2                                     ; $5022: $01 $f2 $e0
	nop                                              ; $5025: $00
	cp l                                             ; $5026: $bd
	push hl                                          ; $5027: $e5
	ld hl, $c80d                                     ; $5028: $21 $0d $c8
	ld [bc], a                                       ; $502b: $02
	or b                                             ; $502c: $b0
	ld e, [hl]                                       ; $502d: $5e
	dec bc                                           ; $502e: $0b
	pop hl                                           ; $502f: $e1
	ld [bc], a                                       ; $5030: $02
	ld bc, $e0f2                                     ; $5031: $01 $f2 $e0
	nop                                              ; $5034: $00
	xor [hl]                                         ; $5035: $ae
	push hl                                          ; $5036: $e5
	ld [hl+], a                                      ; $5037: $22
	nop                                              ; $5038: $00
	nop                                              ; $5039: $00
	ld [bc], a                                       ; $503a: $02
	or b                                             ; $503b: $b0
	ld e, a                                          ; $503c: $5f
	dec bc                                           ; $503d: $0b
	pop hl                                           ; $503e: $e1
	ld [bc], a                                       ; $503f: $02
	ld bc, $e0f2                                     ; $5040: $01 $f2 $e0
	nop                                              ; $5043: $00
	sbc a                                            ; $5044: $9f
	push hl                                          ; $5045: $e5
	ld [hl+], a                                      ; $5046: $22
	nop                                              ; $5047: $00
	jp z, $b002                                      ; $5048: $ca $02 $b0

	ld h, b                                          ; $504b: $60
	dec bc                                           ; $504c: $0b
	pop hl                                           ; $504d: $e1
	ld [bc], a                                       ; $504e: $02
	ld bc, $e0f2                                     ; $504f: $01 $f2 $e0
	nop                                              ; $5052: $00
	sub b                                            ; $5053: $90
	push hl                                          ; $5054: $e5
	ld [hl+], a                                      ; $5055: $22
	ld bc, $029f                                     ; $5056: $01 $9f $02
	or b                                             ; $5059: $b0
	dec d                                            ; $505a: $15
	dec bc                                           ; $505b: $0b
	pop hl                                           ; $505c: $e1
	ld [bc], a                                       ; $505d: $02
	ld bc, $e0f2                                     ; $505e: $01 $f2 $e0
	nop                                              ; $5061: $00
	add c                                            ; $5062: $81
	push hl                                          ; $5063: $e5
	ld [hl+], a                                      ; $5064: $22
	ld [$0254], sp                                   ; $5065: $08 $54 $02
	or b                                             ; $5068: $b0
	ld h, c                                          ; $5069: $61
	dec bc                                           ; $506a: $0b
	pop hl                                           ; $506b: $e1
	ld [bc], a                                       ; $506c: $02
	ld bc, $e0f2                                     ; $506d: $01 $f2 $e0
	nop                                              ; $5070: $00
	ld [hl], d                                       ; $5071: $72
	push hl                                          ; $5072: $e5
	ld [hl+], a                                      ; $5073: $22
	ld a, [bc]                                       ; $5074: $0a
	add hl, bc                                       ; $5075: $09
	ld [bc], a                                       ; $5076: $02
	or b                                             ; $5077: $b0
	ld h, d                                          ; $5078: $62
	dec bc                                           ; $5079: $0b
	pop hl                                           ; $507a: $e1
	ld [bc], a                                       ; $507b: $02
	ld bc, $e0f2                                     ; $507c: $01 $f2 $e0
	nop                                              ; $507f: $00
	ld h, e                                          ; $5080: $63
	push hl                                          ; $5081: $e5
	ld [hl+], a                                      ; $5082: $22
	dec bc                                           ; $5083: $0b
	ld a, e                                          ; $5084: $7b
	ld [bc], a                                       ; $5085: $02
	or b                                             ; $5086: $b0
	ld h, e                                          ; $5087: $63
	dec bc                                           ; $5088: $0b
	pop hl                                           ; $5089: $e1
	ld [bc], a                                       ; $508a: $02
	ld bc, $e0f2                                     ; $508b: $01 $f2 $e0
	nop                                              ; $508e: $00
	ld d, h                                          ; $508f: $54
	push hl                                          ; $5090: $e5
	ld [hl+], a                                      ; $5091: $22
	dec c                                            ; $5092: $0d
	ld h, $02                                        ; $5093: $26 $02
	or b                                             ; $5095: $b0
	ld h, h                                          ; $5096: $64
	rrca                                             ; $5097: $0f
	nop                                              ; $5098: $00
	add b                                            ; $5099: $80
	and b                                            ; $509a: $a0
	nop                                              ; $509b: $00
	pop hl                                           ; $509c: $e1
	ld [bc], a                                       ; $509d: $02
	ld bc, $e0f2                                     ; $509e: $01 $f2 $e0
	nop                                              ; $50a1: $00
	ld b, c                                          ; $50a2: $41
	push hl                                          ; $50a3: $e5
	ld [hl+], a                                      ; $50a4: $22
	ld c, $07                                        ; $50a5: $0e $07
	ld [bc], a                                       ; $50a7: $02
	or b                                             ; $50a8: $b0
	ld h, l                                          ; $50a9: $65
	ld [de], a                                       ; $50aa: $12
	nop                                              ; $50ab: $00
	add b                                            ; $50ac: $80
	and b                                            ; $50ad: $a0
	nop                                              ; $50ae: $00
	ret nz                                           ; $50af: $c0

	and a                                            ; $50b0: $a7
	rst SubAFromHL                                          ; $50b1: $d7
	db $d3                                           ; $50b2: $d3
	pop de                                           ; $50b3: $d1
	ret nz                                           ; $50b4: $c0

	xor h                                            ; $50b5: $ac
	ldh [rP1], a                                     ; $50b6: $e0 $00
	dec hl                                           ; $50b8: $2b
	push hl                                          ; $50b9: $e5
	ld [hl+], a                                      ; $50ba: $22
	ld c, $b3                                        ; $50bb: $0e $b3
	ld [bc], a                                       ; $50bd: $02
	or b                                             ; $50be: $b0
	ld h, [hl]                                       ; $50bf: $66
	dec bc                                           ; $50c0: $0b
	pop hl                                           ; $50c1: $e1
	ld [bc], a                                       ; $50c2: $02
	ld bc, $e0f2                                     ; $50c3: $01 $f2 $e0
	nop                                              ; $50c6: $00
	inc e                                            ; $50c7: $1c
	push hl                                          ; $50c8: $e5
	ld [hl+], a                                      ; $50c9: $22
	db $10                                           ; $50ca: $10
	ld [hl-], a                                      ; $50cb: $32
	ld [bc], a                                       ; $50cc: $02
	or b                                             ; $50cd: $b0
	ld h, a                                          ; $50ce: $67
	ld [de], a                                       ; $50cf: $12
	nop                                              ; $50d0: $00

jr_080_50d1:
	add b                                            ; $50d1: $80
	and b                                            ; $50d2: $a0
	nop                                              ; $50d3: $00
	ret nz                                           ; $50d4: $c0

	and a                                            ; $50d5: $a7
	rst SubAFromHL                                          ; $50d6: $d7
	db $d3                                           ; $50d7: $d3
	jp nc, $acc0                                     ; $50d8: $d2 $c0 $ac

	ldh [rP1], a                                     ; $50db: $e0 $00
	ld b, $e5                                        ; $50dd: $06 $e5
	ld [hl+], a                                      ; $50df: $22
	ld de, $c223                                     ; $50e0: $11 $23 $c2
	ld c, d                                          ; $50e3: $4a
	ld h, c                                          ; $50e4: $61
	ld hl, sp-$40                                    ; $50e5: $f8 $c0
	add e                                            ; $50e7: $83
	sub $e0                                          ; $50e8: $d6 $e0
	inc hl                                           ; $50ea: $23
	dec a                                            ; $50eb: $3d
	ret nz                                           ; $50ec: $c0

	and l                                            ; $50ed: $a5
	ret nz                                           ; $50ee: $c0

	inc c                                            ; $50ef: $0c
	ldh [$50], a                                     ; $50f0: $e0 $50
	pop hl                                           ; $50f2: $e1
	ld [bc], a                                       ; $50f3: $02
	inc bc                                           ; $50f4: $03
	rra                                              ; $50f5: $1f
	ret nz                                           ; $50f6: $c0

	ld bc, $08a0                                     ; $50f7: $01 $a0 $08
	nop                                              ; $50fa: $00
	ld bc, $5bc1                                     ; $50fb: $01 $c1 $5b
	ret nz                                           ; $50fe: $c0

	ld bc, $01a0                                     ; $50ff: $01 $a0 $01
	nop                                              ; $5102: $00
	ld [bc], a                                       ; $5103: $02
	ret nz                                           ; $5104: $c0

	ld bc, $01a0                                     ; $5105: $01 $a0 $01
	nop                                              ; $5108: $00
	inc c                                            ; $5109: $0c
	ret nz                                           ; $510a: $c0

	ld bc, $01a0                                     ; $510b: $01 $a0 $01
	nop                                              ; $510e: $00
	jr jr_080_50d1                                   ; $510f: $18 $c0

	dec h                                            ; $5111: $25
	pop de                                           ; $5112: $d1
	rst SubAFromHL                                          ; $5113: $d7
	ret nz                                           ; $5114: $c0

	inc h                                            ; $5115: $24
	pop de                                           ; $5116: $d1
	rst SubAFromHL                                          ; $5117: $d7
	ret nz                                           ; $5118: $c0

	inc hl                                           ; $5119: $23
	push de                                          ; $511a: $d5
	rst SubAFromHL                                          ; $511b: $d7
	pop bc                                           ; $511c: $c1
	ld c, h                                          ; $511d: $4c
	db $db                                           ; $511e: $db
	pop bc                                           ; $511f: $c1
	dec sp                                           ; $5120: $3b
	ld b, b                                          ; $5121: $40
	add b                                            ; $5122: $80
	nop                                              ; $5123: $00

jr_080_5124:
	set 4, l                                         ; $5124: $cb $e5
	nop                                              ; $5126: $00
	jr nz, @-$26                                     ; $5127: $20 $d8

jr_080_5129:
	db $fc                                           ; $5129: $fc
	ret nz                                           ; $512a: $c0

	dec de                                           ; $512b: $1b
	rst SubAFromHL                                          ; $512c: $d7
	push de                                          ; $512d: $d5
	dec e                                            ; $512e: $1d

jr_080_512f:
	ret nz                                           ; $512f: $c0

	inc c                                            ; $5130: $0c
	ldh [$78], a                                     ; $5131: $e0 $78
	pop hl                                           ; $5133: $e1
	ld [bc], a                                       ; $5134: $02
	rlca                                             ; $5135: $07
	cp a                                             ; $5136: $bf
	ret nz                                           ; $5137: $c0

	ld bc, $01a0                                     ; $5138: $01 $a0 $01
	nop                                              ; $513b: $00
	ld e, $c0                                        ; $513c: $1e $c0
	ld bc, $01a0                                     ; $513e: $01 $a0 $01
	nop                                              ; $5141: $00
	ld h, $c1                                        ; $5142: $26 $c1
	ld c, h                                          ; $5144: $4c
	db $db                                           ; $5145: $db
	pop bc                                           ; $5146: $c1
	dec sp                                           ; $5147: $3b
	push hl                                          ; $5148: $e5
	nop                                              ; $5149: $00
	jr nz, jr_080_5124                               ; $514a: $20 $d8

	ret nz                                           ; $514c: $c0

	jp c, $8061                                      ; $514d: $da $61 $80

	nop                                              ; $5150: $00
	db $db                                           ; $5151: $db
	ld l, h                                          ; $5152: $6c
	add d                                            ; $5153: $82
	ret nz                                           ; $5154: $c0

	dec de                                           ; $5155: $1b
	rst SubAFromHL                                          ; $5156: $d7
	ld [bc], a                                       ; $5157: $02
	ret nc                                           ; $5158: $d0

	pop de                                           ; $5159: $d1
	ld hl, $26c0                                     ; $515a: $21 $c0 $26
	ldh [$28], a                                     ; $515d: $e0 $28
	rst SubAFromHL                                          ; $515f: $d7
	ret nz                                           ; $5160: $c0

	and l                                            ; $5161: $a5
	ret nz                                           ; $5162: $c0

	ld bc, $01a0                                     ; $5163: $01 $a0 $01
	nop                                              ; $5166: $00
	jr nc, jr_080_5129                               ; $5167: $30 $c0

	ld bc, $08a0                                     ; $5169: $01 $a0 $08
	nop                                              ; $516c: $00
	jr c, jr_080_512f                                ; $516d: $38 $c0

	ld bc, $01a0                                     ; $516f: $01 $a0 $01
	nop                                              ; $5172: $00
	ld b, [hl]                                       ; $5173: $46
	ld b, b                                          ; $5174: $40
	add b                                            ; $5175: $80
	nop                                              ; $5176: $00
	db $db                                           ; $5177: $db
	ret nz                                           ; $5178: $c0

	inc hl                                           ; $5179: $23
	ret c                                            ; $517a: $d8

	rst SubAFromHL                                          ; $517b: $d7
	ld [bc], a                                       ; $517c: $02
	jp nc, $21d3                                     ; $517d: $d2 $d3 $21

	ret nz                                           ; $5180: $c0

	ld h, $e0                                        ; $5181: $26 $e0
	jr z, @-$27                                      ; $5183: $28 $d7

	ret nz                                           ; $5185: $c0

	and l                                            ; $5186: $a5
	ret nz                                           ; $5187: $c0

	ld bc, $01a0                                     ; $5188: $01 $a0 $01
	nop                                              ; $518b: $00
	jr nc, @-$3e                                     ; $518c: $30 $c0

	ld bc, $08a0                                     ; $518e: $01 $a0 $08
	nop                                              ; $5191: $00
	ld c, c                                          ; $5192: $49
	ret nz                                           ; $5193: $c0

	ld bc, $01a0                                     ; $5194: $01 $a0 $01
	nop                                              ; $5197: $00
	ld e, b                                          ; $5198: $58
	ld b, b                                          ; $5199: $40
	add b                                            ; $519a: $80
	nop                                              ; $519b: $00
	db $db                                           ; $519c: $db
	ret nz                                           ; $519d: $c0

	inc hl                                           ; $519e: $23
	ret c                                            ; $519f: $d8

	rst SubAFromHL                                          ; $51a0: $d7
	ld bc, $1bd4                                     ; $51a1: $01 $d4 $1b
	ret nz                                           ; $51a4: $c0

	ld bc, $01a0                                     ; $51a5: $01 $a0 $01

jr_080_51a8:
	nop                                              ; $51a8: $00
	ld h, b                                          ; $51a9: $60
	pop hl                                           ; $51aa: $e1
	ld [bc], a                                       ; $51ab: $02
	rlca                                             ; $51ac: $07
	cp a                                             ; $51ad: $bf
	ret nz                                           ; $51ae: $c0

	ld bc, $01a0                                     ; $51af: $01 $a0 $01
	nop                                              ; $51b2: $00
	ld [hl], b                                       ; $51b3: $70
	ret nz                                           ; $51b4: $c0

	inc hl                                           ; $51b5: $23
	ret c                                            ; $51b6: $d8

	rst SubAFromHL                                          ; $51b7: $d7
	pop bc                                           ; $51b8: $c1
	ld c, h                                          ; $51b9: $4c
	db $db                                           ; $51ba: $db
	push hl                                          ; $51bb: $e5
	nop                                              ; $51bc: $00
	inc e                                            ; $51bd: $1c
	or [hl]                                          ; $51be: $b6
	add b                                            ; $51bf: $80
	ld [bc], a                                       ; $51c0: $02
	dec l                                            ; $51c1: $2d
	ld [$26c0], sp                                   ; $51c2: $08 $c0 $26
	ldh [$28], a                                     ; $51c5: $e0 $28
	rst SubAFromHL                                          ; $51c7: $d7
	ldh [rSB], a                                     ; $51c8: $e0 $01
	ld h, l                                          ; $51ca: $65
	ld d, e                                          ; $51cb: $53
	ret nz                                           ; $51cc: $c0

	ld h, $e0                                        ; $51cd: $26 $e0
	jr z, jr_080_51a8                                ; $51cf: $28 $d7

	or b                                             ; $51d1: $b0
	ld [hl-], a                                      ; $51d2: $32
	ld b, b                                          ; $51d3: $40
	ret nz                                           ; $51d4: $c0

	and l                                            ; $51d5: $a5
	ret nz                                           ; $51d6: $c0

	ld bc, $01a0                                     ; $51d7: $01 $a0 $01
	nop                                              ; $51da: $00
	halt                                             ; $51db: $76
	add d                                            ; $51dc: $82
	ret nz                                           ; $51dd: $c0

	dec de                                           ; $51de: $1b
	rst SubAFromHL                                          ; $51df: $d7
	ld [bc], a                                       ; $51e0: $02
	ret nc                                           ; $51e1: $d0

	pop de                                           ; $51e2: $d1
	ld de, $b2c1                                     ; $51e3: $11 $c1 $b2
	db $e3                                           ; $51e6: $e3
	nop                                              ; $51e7: $00
	ld e, d                                          ; $51e8: $5a
	ret nz                                           ; $51e9: $c0

	ld bc, $08a0                                     ; $51ea: $01 $a0 $08
	nop                                              ; $51ed: $00
	ld a, c                                          ; $51ee: $79
	ret nz                                           ; $51ef: $c0

	ld bc, $01a0                                     ; $51f0: $01 $a0 $01
	nop                                              ; $51f3: $00
	add b                                            ; $51f4: $80
	ld [bc], a                                       ; $51f5: $02
	jp nc, $0cd3                                     ; $51f6: $d2 $d3 $0c

	ret nz                                           ; $51f9: $c0

	ld bc, $08a0                                     ; $51fa: $01 $a0 $08
	nop                                              ; $51fd: $00
	add e                                            ; $51fe: $83
	ret nz                                           ; $51ff: $c0

	ld bc, $01a0                                     ; $5200: $01 $a0 $01
	nop                                              ; $5203: $00
	adc a                                            ; $5204: $8f
	ld bc, $0cd4                                     ; $5205: $01 $d4 $0c
	ret nz                                           ; $5208: $c0

	ld bc, $08a0                                     ; $5209: $01 $a0 $08
	nop                                              ; $520c: $00
	sbc h                                            ; $520d: $9c
	ret nz                                           ; $520e: $c0

	ld bc, $01a0                                     ; $520f: $01 $a0 $01
	nop                                              ; $5212: $00
	xor d                                            ; $5213: $aa
	rst $38                                          ; $5214: $ff
	add hl, bc                                       ; $5215: $09
	ret nz                                           ; $5216: $c0

	ld bc, $01a0                                     ; $5217: $01 $a0 $01
	nop                                              ; $521a: $00
	or h                                             ; $521b: $b4
	ldh [rSB], a                                     ; $521c: $e0 $01
	ld de, $30e1                                     ; $521e: $11 $e1 $30
	nop                                              ; $5221: $00
	nop                                              ; $5222: $00
	pop bc                                           ; $5223: $c1
	ld c, h                                          ; $5224: $4c
	rst SubAFromHL                                          ; $5225: $d7
	ret nz                                           ; $5226: $c0

	ld c, a                                          ; $5227: $4f
	ei                                               ; $5228: $fb
	cp $09                                           ; $5229: $fe $09
	db $fc                                           ; $522b: $fc
	ret nz                                           ; $522c: $c0

	ld h, l                                          ; $522d: $65
	db $d3                                           ; $522e: $d3
	db $fc                                           ; $522f: $fc
	ret nz                                           ; $5230: $c0

	ld h, [hl]                                       ; $5231: $66
	ldh [$15], a                                     ; $5232: $e0 $15
	inc c                                            ; $5234: $0c
	ret nz                                           ; $5235: $c0

	ld bc, $08a0                                     ; $5236: $01 $a0 $08
	nop                                              ; $5239: $00
	cp h                                             ; $523a: $bc
	ret nz                                           ; $523b: $c0

	ld bc, $01a0                                     ; $523c: $01 $a0 $01
	nop                                              ; $523f: $00
	jp $fefb                                         ; $5240: $c3 $fb $fe


	dec d                                            ; $5243: $15
	db $fc                                           ; $5244: $fc
	ret nz                                           ; $5245: $c0

	ld h, l                                          ; $5246: $65
	rst SubAFromHL                                          ; $5247: $d7
	rst $38                                          ; $5248: $ff
	rrca                                             ; $5249: $0f
	db $fc                                           ; $524a: $fc
	ret nz                                           ; $524b: $c0

	ld h, [hl]                                       ; $524c: $66
	ldh [rAUD2HIGH], a                               ; $524d: $e0 $19
	db $fc                                           ; $524f: $fc
	ret nz                                           ; $5250: $c0

	ld h, [hl]                                       ; $5251: $66
	ldh [rAUD3ENA], a                                ; $5252: $e0 $1a
	db $fc                                           ; $5254: $fc
	ret nz                                           ; $5255: $c0

	ld h, [hl]                                       ; $5256: $66
	ldh [rAUD3LEN], a                                ; $5257: $e0 $1b
	inc c                                            ; $5259: $0c
	ret nz                                           ; $525a: $c0

	ld bc, $08a0                                     ; $525b: $01 $a0 $08
	nop                                              ; $525e: $00
	call z, $01c0                                    ; $525f: $cc $c0 $01
	and b                                            ; $5262: $a0
	ld bc, $d000                                     ; $5263: $01 $00 $d0
	ei                                               ; $5266: $fb
	cp $09                                           ; $5267: $fe $09
	db $fc                                           ; $5269: $fc
	ret nz                                           ; $526a: $c0

	ld h, l                                          ; $526b: $65
	reti                                             ; $526c: $d9


	db $fc                                           ; $526d: $fc
	ret nz                                           ; $526e: $c0

	ld h, [hl]                                       ; $526f: $66
	ldh [rAUD2ENV], a                                ; $5270: $e0 $17
	inc c                                            ; $5272: $0c
	ret nz                                           ; $5273: $c0

	ld bc, $08a0                                     ; $5274: $01 $a0 $08
	nop                                              ; $5277: $00
	rst SubAFromHL                                          ; $5278: $d7
	ret nz                                           ; $5279: $c0

	ld bc, $01a0                                     ; $527a: $01 $a0 $01
	nop                                              ; $527d: $00
	rst SubAFromDE                                          ; $527e: $df
	ei                                               ; $527f: $fb
	cp $10                                           ; $5280: $fe $10
	add b                                            ; $5282: $80
	nop                                              ; $5283: $00
	call nc, $c0fc                                   ; $5284: $d4 $fc $c0
	ld h, h                                          ; $5287: $64
	ldh [$61], a                                     ; $5288: $e0 $61
	db $fc                                           ; $528a: $fc
	ret nz                                           ; $528b: $c0

	ld h, l                                          ; $528c: $65
	jp c, $c0fc                                      ; $528d: $da $fc $c0

	ld h, [hl]                                       ; $5290: $66
	push de                                          ; $5291: $d5
	scf                                              ; $5292: $37
	add d                                            ; $5293: $82
	ret nz                                           ; $5294: $c0

	dec de                                           ; $5295: $1b
	rst SubAFromHL                                          ; $5296: $d7
	ld [bc], a                                       ; $5297: $02
	ret nc                                           ; $5298: $d0

	pop de                                           ; $5299: $d1
	inc c                                            ; $529a: $0c
	ret nz                                           ; $529b: $c0

	ld bc, $08a0                                     ; $529c: $01 $a0 $08
	nop                                              ; $529f: $00
	add sp, -$40                                     ; $52a0: $e8 $c0
	ld bc, $01a0                                     ; $52a2: $01 $a0 $01
	nop                                              ; $52a5: $00
	ldh a, [rSC]                                     ; $52a6: $f0 $02
	jp nc, $0cd3                                     ; $52a8: $d2 $d3 $0c

	ret nz                                           ; $52ab: $c0

	ld bc, $08a0                                     ; $52ac: $01 $a0 $08
	nop                                              ; $52af: $00
	push af                                          ; $52b0: $f5
	ret nz                                           ; $52b1: $c0

	ld bc, $01a0                                     ; $52b2: $01 $a0 $01
	nop                                              ; $52b5: $00
	ldh a, [rSB]                                     ; $52b6: $f0 $01
	call nc, $c00c                                   ; $52b8: $d4 $0c $c0
	ld bc, $08a0                                     ; $52bb: $01 $a0 $08
	nop                                              ; $52be: $00
	ld a, [$01c0]                                    ; $52bf: $fa $c0 $01
	and b                                            ; $52c2: $a0
	ld bc, $ff00                                     ; $52c3: $01 $00 $ff
	ld b, b                                          ; $52c6: $40
	add b                                            ; $52c7: $80
	nop                                              ; $52c8: $00
	call nc, $fefb                                   ; $52c9: $d4 $fb $fe
	db $10                                           ; $52cc: $10
	add b                                            ; $52cd: $80
	nop                                              ; $52ce: $00
	push de                                          ; $52cf: $d5
	db $fc                                           ; $52d0: $fc
	ret nz                                           ; $52d1: $c0

	ld h, h                                          ; $52d2: $64
	ldh [$62], a                                     ; $52d3: $e0 $62
	db $fc                                           ; $52d5: $fc
	ret nz                                           ; $52d6: $c0

	ld h, l                                          ; $52d7: $65
	jp c, $c0fc                                      ; $52d8: $da $fc $c0

	ld h, [hl]                                       ; $52db: $66
	call nc, $8237                                   ; $52dc: $d4 $37 $82
	ret nz                                           ; $52df: $c0

	dec de                                           ; $52e0: $1b
	rst SubAFromHL                                          ; $52e1: $d7
	ld [bc], a                                       ; $52e2: $02
	ret nc                                           ; $52e3: $d0

	pop de                                           ; $52e4: $d1
	inc c                                            ; $52e5: $0c
	ret nz                                           ; $52e6: $c0

	ld bc, $08a0                                     ; $52e7: $01 $a0 $08
	ld bc, $c003                                     ; $52ea: $01 $03 $c0
	ld bc, $01a0                                     ; $52ed: $01 $a0 $01
	nop                                              ; $52f0: $00
	ldh a, [rSC]                                     ; $52f1: $f0 $02
	jp nc, $0cd3                                     ; $52f3: $d2 $d3 $0c

	ret nz                                           ; $52f6: $c0

	ld bc, $08a0                                     ; $52f7: $01 $a0 $08
	ld bc, $c008                                     ; $52fa: $01 $08 $c0
	ld bc, $01a0                                     ; $52fd: $01 $a0 $01
	nop                                              ; $5300: $00
	ldh a, [rSB]                                     ; $5301: $f0 $01
	call nc, $c00c                                   ; $5303: $d4 $0c $c0
	ld bc, $08a0                                     ; $5306: $01 $a0 $08
	ld bc, $c011                                     ; $5309: $01 $11 $c0
	ld bc, $01a0                                     ; $530c: $01 $a0 $01
	nop                                              ; $530f: $00
	rst $38                                          ; $5310: $ff
	ld b, b                                          ; $5311: $40
	add b                                            ; $5312: $80
	nop                                              ; $5313: $00
	push de                                          ; $5314: $d5
	ei                                               ; $5315: $fb
	cp $09                                           ; $5316: $fe $09
	db $fc                                           ; $5318: $fc
	ret nz                                           ; $5319: $c0

	ld h, l                                          ; $531a: $65
	call c, $c0fc                                    ; $531b: $dc $fc $c0
	ld h, [hl]                                       ; $531e: $66
	ldh [rAUD2ENV], a                                ; $531f: $e0 $17
	inc c                                            ; $5321: $0c
	ret nz                                           ; $5322: $c0

	ld bc, $08a0                                     ; $5323: $01 $a0 $08
	ld bc, $c015                                     ; $5326: $01 $15 $c0
	ld bc, $01a0                                     ; $5329: $01 $a0 $01
	ld bc, $6b1a                                     ; $532c: $01 $1a $6b
	ret nz                                           ; $532f: $c0

	inc c                                            ; $5330: $0c
	ldh [$78], a                                     ; $5331: $e0 $78
	pop hl                                           ; $5333: $e1
	ld [bc], a                                       ; $5334: $02
	rlca                                             ; $5335: $07
	cp a                                             ; $5336: $bf
	ret nz                                           ; $5337: $c0

	and l                                            ; $5338: $a5
	add e                                            ; $5339: $83
	ret nz                                           ; $533a: $c0

	inc e                                            ; $533b: $1c
	rst SubAFromHL                                          ; $533c: $d7
	ld bc, $2bd2                                     ; $533d: $01 $d2 $2b
	or b                                             ; $5340: $b0
	cp a                                             ; $5341: $bf
	inc c                                            ; $5342: $0c
	ret nz                                           ; $5343: $c0

	ld bc, $08a0                                     ; $5344: $01 $a0 $08
	ld bc, $c01f                                     ; $5347: $01 $1f $c0
	ld bc, $01a0                                     ; $534a: $01 $a0 $01
	ld bc, $ff26                                     ; $534d: $01 $26 $ff
	ld a, [de]                                       ; $5350: $1a
	ld h, b                                          ; $5351: $60
	rst $38                                          ; $5352: $ff
	ld b, $80                                        ; $5353: $06 $80
	and b                                            ; $5355: $a0
	ld bc, $a080                                     ; $5356: $01 $80 $a0
	nop                                              ; $5359: $00
	inc c                                            ; $535a: $0c
	ret nz                                           ; $535b: $c0

	ld bc, $08a0                                     ; $535c: $01 $a0 $08
	ld bc, $c01f                                     ; $535f: $01 $1f $c0
	ld bc, $01a0                                     ; $5362: $01 $a0 $01
	ld bc, $032a                                     ; $5365: $01 $2a $03
	db $e4                                           ; $5368: $e4
	nop                                              ; $5369: $00
	ld sp, $d002                                     ; $536a: $31 $02 $d0
	pop de                                           ; $536d: $d1
	inc c                                            ; $536e: $0c
	ret nz                                           ; $536f: $c0

	ld bc, $08a0                                     ; $5370: $01 $a0 $08
	ld bc, $c02e                                     ; $5373: $01 $2e $c0
	ld bc, $01a0                                     ; $5376: $01 $a0 $01
	ld bc, $022a                                     ; $5379: $01 $2a $02
	jp nc, $0cd3                                     ; $537c: $d2 $d3 $0c

	ret nz                                           ; $537f: $c0

	ld bc, $08a0                                     ; $5380: $01 $a0 $08
	ld bc, $c034                                     ; $5383: $01 $34 $c0
	ld bc, $01a0                                     ; $5386: $01 $a0 $01
	ld bc, $0136                                     ; $5389: $01 $36 $01
	call nc, $c00c                                   ; $538c: $d4 $0c $c0
	ld bc, $08a0                                     ; $538f: $01 $a0 $08
	ld bc, $c044                                     ; $5392: $01 $44 $c0
	ld bc, $01a0                                     ; $5395: $01 $a0 $01
	ld bc, $094e                                     ; $5398: $01 $4e $09
	ld c, l                                          ; $539b: $4d
	pop hl                                           ; $539c: $e1
	ld [bc], a                                       ; $539d: $02
	inc bc                                           ; $539e: $03
	dec de                                           ; $539f: $1b
	ret nz                                           ; $53a0: $c0

	ld bc, $08a0                                     ; $53a1: $01 $a0 $08
	ld bc, $c058                                     ; $53a4: $01 $58 $c0
	ld bc, $01a0                                     ; $53a7: $01 $a0 $01
	ld bc, $c059                                     ; $53aa: $01 $59 $c0
	ld bc, $08a0                                     ; $53ad: $01 $a0 $08
	ld bc, $c060                                     ; $53b0: $01 $60 $c0
	ld bc, $01a0                                     ; $53b3: $01 $a0 $01
	ld bc, $e16e                                     ; $53b6: $01 $6e $e1
	ld [bc], a                                       ; $53b9: $02
	inc bc                                           ; $53ba: $03
	rla                                              ; $53bb: $17
	ret nz                                           ; $53bc: $c0

	ld bc, $08a0                                     ; $53bd: $01 $a0 $08
	ld bc, $c179                                     ; $53c0: $01 $79 $c1
	ld e, e                                          ; $53c3: $5b
	ret nz                                           ; $53c4: $c0

	ld bc, $01a0                                     ; $53c5: $01 $a0 $01
	ld bc, $c081                                     ; $53c8: $01 $81 $c0
	ld bc, $01a0                                     ; $53cb: $01 $a0 $01
	ld bc, $008b                                     ; $53ce: $01 $8b $00
	add b                                            ; $53d1: $80
	and b                                            ; $53d2: $a0
	ld bc, $22c0                                     ; $53d3: $01 $c0 $22
	db $d3                                           ; $53d6: $d3
	rst SubAFromHL                                          ; $53d7: $d7
	ret nz                                           ; $53d8: $c0

	ld hl, $d7d2                                     ; $53d9: $21 $d2 $d7
	ret nz                                           ; $53dc: $c0

	ld h, $e0                                        ; $53dd: $26 $e0
	jr z, @-$27                                      ; $53df: $28 $d7

	pop bc                                           ; $53e1: $c1
	ld l, e                                          ; $53e2: $6b
	call nc, $e5d7                                   ; $53e3: $d4 $d7 $e5
	nop                                              ; $53e6: $00
	jr nz, @-$26                                     ; $53e7: $20 $d8

	cp [hl]                                          ; $53e9: $be
	dec b                                            ; $53ea: $05
	add hl, bc                                       ; $53eb: $09
	ld [hl], $c0                                     ; $53ec: $36 $c0
	ld bc, $08a0                                     ; $53ee: $01 $a0 $08
	nop                                              ; $53f1: $00
	ld bc, $fafb                                     ; $53f2: $01 $fb $fa
	ret nz                                           ; $53f5: $c0

	dec de                                           ; $53f6: $1b
	rst SubAFromHL                                          ; $53f7: $d7

jr_080_53f8:
	call nc, $c026                                   ; $53f8: $d4 $26 $c0
	ld bc, $01a0                                     ; $53fb: $01 $a0 $01
	nop                                              ; $53fe: $00
	ld a, [bc]                                       ; $53ff: $0a
	ret nz                                           ; $5400: $c0

	ld bc, $08a0                                     ; $5401: $01 $a0 $08
	nop                                              ; $5404: $00
	db $10                                           ; $5405: $10
	pop bc                                           ; $5406: $c1
	ld e, e                                          ; $5407: $5b
	ret nz                                           ; $5408: $c0

	ld bc, $01a0                                     ; $5409: $01 $a0 $01
	nop                                              ; $540c: $00
	jr nz, @-$3e                                     ; $540d: $20 $c0

	dec h                                            ; $540f: $25
	pop de                                           ; $5410: $d1
	rst SubAFromHL                                          ; $5411: $d7
	ret nz                                           ; $5412: $c0

	inc h                                            ; $5413: $24
	jp nc, $c0d7                                     ; $5414: $d2 $d7 $c0

	inc hl                                           ; $5417: $23
	jp c, $c0d7                                      ; $5418: $da $d7 $c0

	set 4, l                                         ; $541b: $cb $e5
	nop                                              ; $541d: $00
	jr nz, jr_080_53f8                               ; $541e: $20 $d8

	db $e4                                           ; $5420: $e4
	nop                                              ; $5421: $00
	ld [bc], a                                       ; $5422: $02
	jr z, @+$08                                      ; $5423: $28 $06

	ret nz                                           ; $5425: $c0

	ld bc, $01a0                                     ; $5426: $01 $a0 $01
	nop                                              ; $5429: $00
	ld h, $89                                        ; $542a: $26 $89
	nop                                              ; $542c: $00
	inc l                                            ; $542d: $2c
	add hl, bc                                       ; $542e: $09
	ld a, e                                          ; $542f: $7b
	add e                                            ; $5430: $83
	ret nz                                           ; $5431: $c0

	ld h, l                                          ; $5432: $65
	ld bc, $2cd9                                     ; $5433: $01 $d9 $2c
	add c                                            ; $5436: $81
	ret nz                                           ; $5437: $c0

	ld h, [hl]                                       ; $5438: $66
	rra                                              ; $5439: $1f
	rst SubAFromDE                                          ; $543a: $df
	ldh [rAUD1SWEEP], a                              ; $543b: $e0 $10
	ldh [rAUD1LEN], a                                ; $543d: $e0 $11
	ldh [rAUD1ENV], a                                ; $543f: $e0 $12
	ldh [rAUD1LOW], a                                ; $5441: $e0 $13
	ldh [rAUD1HIGH], a                               ; $5443: $e0 $14
	ldh [$15], a                                     ; $5445: $e0 $15
	ldh [rAUD2LEN], a                                ; $5447: $e0 $16
	ldh [rAUD2ENV], a                                ; $5449: $e0 $17
	ldh [rAUD2LOW], a                                ; $544b: $e0 $18
	ldh [rAUD2HIGH], a                               ; $544d: $e0 $19
	ldh [rAUD3ENA], a                                ; $544f: $e0 $1a
	ldh [rAUD3LEN], a                                ; $5451: $e0 $1b
	ldh [rAUD3LEVEL], a                              ; $5453: $e0 $1c
	ldh [rAUD3LOW], a                                ; $5455: $e0 $1d
	ldh [rAUD3HIGH], a                               ; $5457: $e0 $1e
	inc bc                                           ; $5459: $03
	ldh [rP1], a                                     ; $545a: $e0 $00
	ld e, d                                          ; $545c: $5a
	nop                                              ; $545d: $00
	inc bc                                           ; $545e: $03
	ldh [rP1], a                                     ; $545f: $e0 $00
	ld l, d                                          ; $5461: $6a
	ld bc, $03da                                     ; $5462: $01 $da $03
	ldh [rP1], a                                     ; $5465: $e0 $00
	ld c, a                                          ; $5467: $4f
	ld bc, $1bdb                                     ; $5468: $01 $db $1b
	add c                                            ; $546b: $81
	ret nz                                           ; $546c: $c0

	ld h, [hl]                                       ; $546d: $66
	ld c, $d1                                        ; $546e: $0e $d1
	jp nc, $d4d3                                     ; $5470: $d2 $d3 $d4

	push de                                          ; $5473: $d5
	sub $d7                                          ; $5474: $d6 $d7
	ret c                                            ; $5476: $d8

	reti                                             ; $5477: $d9


	jp c, $dcdb                                      ; $5478: $da $db $dc

	db $dd                                           ; $547b: $dd
	sbc $03                                          ; $547c: $de $03
	ldh [rP1], a                                     ; $547e: $e0 $00
	ld [hl], $00                                     ; $5480: $36 $00
	inc bc                                           ; $5482: $03
	ldh [rP1], a                                     ; $5483: $e0 $00
	ld b, [hl]                                       ; $5485: $46
	nop                                              ; $5486: $00
	jr nz, jr_080_54e9                               ; $5487: $20 $60

	add b                                            ; $5489: $80
	ld [bc], a                                       ; $548a: $02
	ld e, c                                          ; $548b: $59
	inc bc                                           ; $548c: $03
	ldh [rP1], a                                     ; $548d: $e0 $00
	ld e, l                                          ; $548f: $5d
	rla                                              ; $5490: $17
	ld h, b                                          ; $5491: $60
	cp $0c                                           ; $5492: $fe $0c
	ei                                               ; $5494: $fb
	ret nz                                           ; $5495: $c0

	dec d                                            ; $5496: $15
	rst SubAFromHL                                          ; $5497: $d7
	ldh [$50], a                                     ; $5498: $e0 $50
	ei                                               ; $549a: $fb
	ret nz                                           ; $549b: $c0

	ld d, $d7                                        ; $549c: $16 $d7
	ldh [$5a], a                                     ; $549e: $e0 $5a
	inc bc                                           ; $54a0: $03
	ldh [rP1], a                                     ; $54a1: $e0 $00
	ld d, b                                          ; $54a3: $50
	inc bc                                           ; $54a4: $03
	ldh [rP1], a                                     ; $54a5: $e0 $00
	inc h                                            ; $54a7: $24
	db $e4                                           ; $54a8: $e4
	nop                                              ; $54a9: $00
	ld a, e                                          ; $54aa: $7b
	nop                                              ; $54ab: $00
	ld l, $09                                        ; $54ac: $2e $09
	ld b, $e0                                        ; $54ae: $06 $e0
	nop                                              ; $54b0: $00
	ld c, c                                          ; $54b1: $49
	db $e4                                           ; $54b2: $e4
	nop                                              ; $54b3: $00
	ld [hl], c                                       ; $54b4: $71
	inc d                                            ; $54b5: $14
	ld h, b                                          ; $54b6: $60
	add b                                            ; $54b7: $80
	ld [bc], a                                       ; $54b8: $02
	ld e, c                                          ; $54b9: $59
	dec bc                                           ; $54ba: $0b
	or b                                             ; $54bb: $b0
	ld a, a                                          ; $54bc: $7f
	inc bc                                           ; $54bd: $03
	ldh [rP1], a                                     ; $54be: $e0 $00
	dec h                                            ; $54c0: $25

Jump_080_54c1:
	rst $38                                          ; $54c1: $ff
	inc bc                                           ; $54c2: $03
	ldh [rP1], a                                     ; $54c3: $e0 $00
	daa                                              ; $54c5: $27
	inc bc                                           ; $54c6: $03
	ldh [rP1], a                                     ; $54c7: $e0 $00
	inc e                                            ; $54c9: $1c
	add hl, de                                       ; $54ca: $19
	or c                                             ; $54cb: $b1
	ld d, h                                          ; $54cc: $54
	ld b, $c0                                        ; $54cd: $06 $c0
	ld bc, $01a0                                     ; $54cf: $01 $a0 $01
	nop                                              ; $54d2: $00
	jr nc, @-$54                                     ; $54d3: $30 $aa

	ld b, $c0                                        ; $54d5: $06 $c0
	ld bc, $01a0                                     ; $54d7: $01 $a0 $01
	nop                                              ; $54da: $00
	dec sp                                           ; $54db: $3b
	rst $38                                          ; $54dc: $ff
	ld b, $c0                                        ; $54dd: $06 $c0
	ld bc, $01a0                                     ; $54df: $01 $a0 $01
	nop                                              ; $54e2: $00
	ld b, [hl]                                       ; $54e3: $46
	ld b, $c0                                        ; $54e4: $06 $c0
	ld bc, $01a0                                     ; $54e6: $01 $a0 $01

jr_080_54e9:
	nop                                              ; $54e9: $00
	ld d, c                                          ; $54ea: $51
	ld b, $c0                                        ; $54eb: $06 $c0
	ld bc, $01a0                                     ; $54ed: $01 $a0 $01
	nop                                              ; $54f0: $00
	ld e, e                                          ; $54f1: $5b
	ld b, $c0                                        ; $54f2: $06 $c0
	ld bc, $01a0                                     ; $54f4: $01 $a0 $01
	nop                                              ; $54f7: $00
	ld [hl], c                                       ; $54f8: $71
	ld a, [hl+]                                      ; $54f9: $2a
	rst $38                                          ; $54fa: $ff
	jr z, jr_080_552f                                ; $54fb: $28 $32

	ld b, $c0                                        ; $54fd: $06 $c0
	ld bc, $01a0                                     ; $54ff: $01 $a0 $01
	nop                                              ; $5502: $00
	add c                                            ; $5503: $81
	ld h, l                                          ; $5504: $65
	ld b, $c0                                        ; $5505: $06 $c0
	ld bc, $01a0                                     ; $5507: $01 $a0 $01
	nop                                              ; $550a: $00
	adc [hl]                                         ; $550b: $8e
	sbc c                                            ; $550c: $99
	ld b, $c0                                        ; $550d: $06 $c0
	ld bc, $01a0                                     ; $550f: $01 $a0 $01
	nop                                              ; $5512: $00
	sub l                                            ; $5513: $95
	call z, $c006                                    ; $5514: $cc $06 $c0
	ld bc, $01a0                                     ; $5517: $01 $a0 $01
	nop                                              ; $551a: $00
	sbc l                                            ; $551b: $9d
	rst $38                                          ; $551c: $ff
	ld b, $c0                                        ; $551d: $06 $c0
	ld bc, $01a0                                     ; $551f: $01 $a0 $01
	nop                                              ; $5522: $00
	and l                                            ; $5523: $a5
	add hl, bc                                       ; $5524: $09
	ld c, $d0                                        ; $5525: $0e $d0
	add d                                            ; $5527: $82
	ld bc, $d3d2                                     ; $5528: $01 $d2 $d3
	ret nz                                           ; $552b: $c0

	ld d, [hl]                                       ; $552c: $56
	rst SubAFromHL                                          ; $552d: $d7
	ret nc                                           ; $552e: $d0

jr_080_552f:
	ret nc                                           ; $552f: $d0

	push hl                                          ; $5530: $e5
	inc hl                                           ; $5531: $23
	nop                                              ; $5532: $00
	nop                                              ; $5533: $00
	add hl, bc                                       ; $5534: $09
	ld e, b                                          ; $5535: $58
	add c                                            ; $5536: $81
	ret nz                                           ; $5537: $c0

	ld h, l                                          ; $5538: $65
	ld [bc], a                                       ; $5539: $02
	db $d3                                           ; $553a: $d3
	call nc, $d01a                                   ; $553b: $d4 $1a $d0
	add e                                            ; $553e: $83
	ld bc, $d1de                                     ; $553f: $01 $de $d1
	ret nz                                           ; $5542: $c0

	ld bc, $08a0                                     ; $5543: $01 $a0 $08
	nop                                              ; $5546: $00
	xor a                                            ; $5547: $af
	ret nz                                           ; $5548: $c0

	ld bc, $01a0                                     ; $5549: $01 $a0 $01
	nop                                              ; $554c: $00
	or l                                             ; $554d: $b5
	ret nz                                           ; $554e: $c0

	ld bc, $08a0                                     ; $554f: $01 $a0 $08
	nop                                              ; $5552: $00
	cp b                                             ; $5553: $b8
	db $e4                                           ; $5554: $e4
	nop                                              ; $5555: $00
	pop de                                           ; $5556: $d1
	nop                                              ; $5557: $00
	dec [hl]                                         ; $5558: $35
	ret nc                                           ; $5559: $d0

	add e                                            ; $555a: $83
	ld bc, $d0de                                     ; $555b: $01 $de $d0
	ret nz                                           ; $555e: $c0

	ld bc, $08a0                                     ; $555f: $01 $a0 $08
	nop                                              ; $5562: $00
	cp h                                             ; $5563: $bc
	and b                                            ; $5564: $a0
	add b                                            ; $5565: $80
	and b                                            ; $5566: $a0
	nop                                              ; $5567: $00
	nop                                              ; $5568: $00
	rrca                                             ; $5569: $0f
	ret nz                                           ; $556a: $c0

	ld bc, $01a0                                     ; $556b: $01 $a0 $01
	nop                                              ; $556e: $00
	push bc                                          ; $556f: $c5
	ret nz                                           ; $5570: $c0

	ld bc, $08a0                                     ; $5571: $01 $a0 $08
	nop                                              ; $5574: $00
	jp z, $00e4                                      ; $5575: $ca $e4 $00

	rla                                              ; $5578: $17
	rst $38                                          ; $5579: $ff
	inc de                                           ; $557a: $13
	ret nz                                           ; $557b: $c0

	ld bc, $01a0                                     ; $557c: $01 $a0 $01
	nop                                              ; $557f: $00
	set 0, b                                         ; $5580: $cb $c0
	ld bc, $08a0                                     ; $5582: $01 $a0 $08
	nop                                              ; $5585: $00
	jp z, $8040                                      ; $5586: $ca $40 $80

	and b                                            ; $5589: $a0
	nop                                              ; $558a: $00
	db $e4                                           ; $558b: $e4
	nop                                              ; $558c: $00
	ld c, [hl]                                       ; $558d: $4e
	jr z, @+$0c                                      ; $558e: $28 $0a

	pop hl                                           ; $5590: $e1
	ld [bc], a                                       ; $5591: $02
	dec b                                            ; $5592: $05
	dec b                                            ; $5593: $05
	ret nz                                           ; $5594: $c0

	ld bc, $08a0                                     ; $5595: $01 $a0 $08
	nop                                              ; $5598: $00
	jp nc, $003f                                     ; $5599: $d2 $3f $00

	jp c, $1109                                      ; $559c: $da $09 $11

	pop hl                                           ; $559f: $e1
	ld [bc], a                                       ; $55a0: $02
	inc bc                                           ; $55a1: $03
	inc de                                           ; $55a2: $13
	ret nz                                           ; $55a3: $c0

	ld bc, $08a0                                     ; $55a4: $01 $a0 $08
	nop                                              ; $55a7: $00
	call c, $02e1                                    ; $55a8: $dc $e1 $02
	inc bc                                           ; $55ab: $03
	ld [$00e4], a                                    ; $55ac: $ea $e4 $00
	jp z, $e900                                      ; $55af: $ca $00 $e9

	add hl, bc                                       ; $55b2: $09
	ld de, $02e1                                     ; $55b3: $11 $e1 $02
	inc bc                                           ; $55b6: $03
	rra                                              ; $55b7: $1f
	ret nz                                           ; $55b8: $c0

	ld bc, $08a0                                     ; $55b9: $01 $a0 $08
	nop                                              ; $55bc: $00
	db $eb                                           ; $55bd: $eb
	pop hl                                           ; $55be: $e1
	ld [bc], a                                       ; $55bf: $02

Jump_080_55c0:
	inc b                                            ; $55c0: $04
	dec b                                            ; $55c1: $05
	db $e4                                           ; $55c2: $e4
	nop                                              ; $55c3: $00
	or l                                             ; $55c4: $b5
	nop                                              ; $55c5: $00
	db $f4                                           ; $55c6: $f4
	add hl, bc                                       ; $55c7: $09
	ld de, $02e1                                     ; $55c8: $11 $e1 $02
	inc bc                                           ; $55cb: $03
	dec de                                           ; $55cc: $1b
	ret nz                                           ; $55cd: $c0

	ld bc, $08a0                                     ; $55ce: $01 $a0 $08
	nop                                              ; $55d1: $00
	or $e1                                           ; $55d2: $f6 $e1
	ld [bc], a                                       ; $55d4: $02
	inc bc                                           ; $55d5: $03
	db $fc                                           ; $55d6: $fc
	db $e4                                           ; $55d7: $e4
	nop                                              ; $55d8: $00
	and b                                            ; $55d9: $a0
	jr z, @+$0c                                      ; $55da: $28 $0a

	pop hl                                           ; $55dc: $e1
	ld [bc], a                                       ; $55dd: $02
	dec b                                            ; $55de: $05
	rla                                              ; $55df: $17
	ret nz                                           ; $55e0: $c0

	ld bc, $08a0                                     ; $55e1: $01 $a0 $08
	ld bc, $3f05                                     ; $55e4: $01 $05 $3f
	ld bc, $0908                                     ; $55e7: $01 $08 $09
	ld de, $02e1                                     ; $55ea: $11 $e1 $02
	inc bc                                           ; $55ed: $03
	inc de                                           ; $55ee: $13
	ret nz                                           ; $55ef: $c0

	ld bc, $08a0                                     ; $55f0: $01 $a0 $08
	ld bc, $e10e                                     ; $55f3: $01 $0e $e1
	ld [bc], a                                       ; $55f6: $02
	inc bc                                           ; $55f7: $03
	ld [$00e4], a                                    ; $55f8: $ea $e4 $00
	ld a, [hl]                                       ; $55fb: $7e
	ld bc, $091d                                     ; $55fc: $01 $1d $09
	ld de, $02e1                                     ; $55ff: $11 $e1 $02
	inc bc                                           ; $5602: $03
	dec de                                           ; $5603: $1b
	ret nz                                           ; $5604: $c0

	ld bc, $08a0                                     ; $5605: $01 $a0 $08
	ld bc, $e124                                     ; $5608: $01 $24 $e1
	ld [bc], a                                       ; $560b: $02
	inc bc                                           ; $560c: $03
	db $fc                                           ; $560d: $fc
	db $e4                                           ; $560e: $e4
	nop                                              ; $560f: $00
	ld l, c                                          ; $5610: $69
	ld bc, $0933                                     ; $5611: $01 $33 $09
	ld de, $02e1                                     ; $5614: $11 $e1 $02
	inc bc                                           ; $5617: $03
	dec de                                           ; $5618: $1b
	ret nz                                           ; $5619: $c0

	ld bc, $08a0                                     ; $561a: $01 $a0 $08
	ld bc, $e138                                     ; $561d: $01 $38 $e1
	ld [bc], a                                       ; $5620: $02
	inc bc                                           ; $5621: $03
	db $fc                                           ; $5622: $fc
	db $e4                                           ; $5623: $e4
	nop                                              ; $5624: $00
	ld d, h                                          ; $5625: $54
	jr z, @+$0d                                      ; $5626: $28 $0b

	pop bc                                           ; $5628: $c1
	ld e, c                                          ; $5629: $59
	db $e3                                           ; $562a: $e3
	nop                                              ; $562b: $00
	add h                                            ; $562c: $84
	ret nz                                           ; $562d: $c0

	ld bc, $08a0                                     ; $562e: $01 $a0 $08
	ld bc, $4448                                     ; $5631: $01 $48 $44
	ld bc, $094c                                     ; $5634: $01 $4c $09
	ld d, $e1                                        ; $5637: $16 $e1
	ld [bc], a                                       ; $5639: $02
	inc bc                                           ; $563a: $03
	inc de                                           ; $563b: $13
	pop bc                                           ; $563c: $c1
	or d                                             ; $563d: $b2
	db $e3                                           ; $563e: $e3
	nop                                              ; $563f: $00
	ld e, e                                          ; $5640: $5b
	ret nz                                           ; $5641: $c0

	ld bc, $08a0                                     ; $5642: $01 $a0 $08
	ld bc, $e153                                     ; $5645: $01 $53 $e1
	ld [bc], a                                       ; $5648: $02
	inc bc                                           ; $5649: $03
	ld [$00e4], a                                    ; $564a: $ea $e4 $00
	inc l                                            ; $564d: $2c
	ld bc, $0957                                     ; $564e: $01 $57 $09
	ld de, $02e1                                     ; $5651: $11 $e1 $02
	inc bc                                           ; $5654: $03
	rra                                              ; $5655: $1f
	ret nz                                           ; $5656: $c0

	ld bc, $08a0                                     ; $5657: $01 $a0 $08
	ld bc, $e15a                                     ; $565a: $01 $5a $e1
	ld [bc], a                                       ; $565d: $02
	inc b                                            ; $565e: $04
	dec b                                            ; $565f: $05
	db $e4                                           ; $5660: $e4
	nop                                              ; $5661: $00
	rla                                              ; $5662: $17
	ld bc, $0965                                     ; $5663: $01 $65 $09
	ld de, $02e1                                     ; $5666: $11 $e1 $02
	inc bc                                           ; $5669: $03
	rla                                              ; $566a: $17
	ret nz                                           ; $566b: $c0

	ld bc, $08a0                                     ; $566c: $01 $a0 $08
	ld bc, $e167                                     ; $566f: $01 $67 $e1
	ld [bc], a                                       ; $5672: $02
	inc bc                                           ; $5673: $03
	di                                               ; $5674: $f3
	db $e4                                           ; $5675: $e4
	nop                                              ; $5676: $00
	ld [bc], a                                       ; $5677: $02
	add hl, bc                                       ; $5678: $09
	dec de                                           ; $5679: $1b
	pop hl                                           ; $567a: $e1
	ld [bc], a                                       ; $567b: $02
	dec b                                            ; $567c: $05
	add hl, hl                                       ; $567d: $29
	add c                                            ; $567e: $81
	ret nz                                           ; $567f: $c0

	ld h, l                                          ; $5680: $65
	ld [bc], a                                       ; $5681: $02
	db $d3                                           ; $5682: $d3
	call nc, $c005                                   ; $5683: $d4 $05 $c0
	ld d, [hl]                                       ; $5686: $56
	rst SubAFromHL                                          ; $5687: $d7
	pop de                                           ; $5688: $d1
	pop de                                           ; $5689: $d1
	nop                                              ; $568a: $00
	dec b                                            ; $568b: $05
	ret nz                                           ; $568c: $c0

	ld d, [hl]                                       ; $568d: $56
	rst SubAFromHL                                          ; $568e: $d7
	pop de                                           ; $568f: $d1
	ret nc                                           ; $5690: $d0

	push hl                                          ; $5691: $e5
	inc hl                                           ; $5692: $23
	nop                                              ; $5693: $00
	nop                                              ; $5694: $00
	jr z, @+$08                                      ; $5695: $28 $06

	ret nz                                           ; $5697: $c0

	ld bc, $08a0                                     ; $5698: $01 $a0 $08
	ld bc, $486f                                     ; $569b: $01 $6f $48
	ld bc, $097a                                     ; $569e: $01 $7a $09
	inc d                                            ; $56a1: $14
	ret nc                                           ; $56a2: $d0

	add e                                            ; $56a3: $83
	ld bc, $d0de                                     ; $56a4: $01 $de $d0
	ret nz                                           ; $56a7: $c0

	ld bc, $08a0                                     ; $56a8: $01 $a0 $08
	ld bc, $d07c                                     ; $56ab: $01 $7c $d0
	adc e                                            ; $56ae: $8b
	and b                                            ; $56af: $a0
	ld bc, $82b0                                     ; $56b0: $01 $b0 $82
	db $e4                                           ; $56b3: $e4
	nop                                              ; $56b4: $00
	ld [hl-], a                                      ; $56b5: $32
	ld bc, $0981                                     ; $56b6: $01 $81 $09
	inc d                                            ; $56b9: $14
	ret nc                                           ; $56ba: $d0

	add e                                            ; $56bb: $83
	ld bc, $d1de                                     ; $56bc: $01 $de $d1
	ret nz                                           ; $56bf: $c0

	ld bc, $08a0                                     ; $56c0: $01 $a0 $08
	ld bc, $d07c                                     ; $56c3: $01 $7c $d0
	adc e                                            ; $56c6: $8b
	and b                                            ; $56c7: $a0
	ld bc, $83b0                                     ; $56c8: $01 $b0 $83
	db $e4                                           ; $56cb: $e4
	ld bc, $0194                                     ; $56cc: $01 $94 $01
	add e                                            ; $56cf: $83
	add hl, bc                                       ; $56d0: $09
	inc d                                            ; $56d1: $14
	ret nc                                           ; $56d2: $d0

	add e                                            ; $56d3: $83
	ld bc, $d2de                                     ; $56d4: $01 $de $d2
	ret nz                                           ; $56d7: $c0

	ld bc, $08a0                                     ; $56d8: $01 $a0 $08
	ld bc, $d085                                     ; $56db: $01 $85 $d0
	adc e                                            ; $56de: $8b
	and b                                            ; $56df: $a0
	ld bc, $84b0                                     ; $56e0: $01 $b0 $84
	db $e4                                           ; $56e3: $e4
	ld [bc], a                                       ; $56e4: $02
	ld a, [hl+]                                      ; $56e5: $2a
	add hl, bc                                       ; $56e6: $09
	inc l                                            ; $56e7: $2c
	pop bc                                           ; $56e8: $c1
	ld e, c                                          ; $56e9: $59
	db $e3                                           ; $56ea: $e3
	nop                                              ; $56eb: $00
	and b                                            ; $56ec: $a0
	ret nz                                           ; $56ed: $c0

	add hl, bc                                       ; $56ee: $09
	db $e3                                           ; $56ef: $e3
	nop                                              ; $56f0: $00
	inc e                                            ; $56f1: $1c
	ld h, b                                          ; $56f2: $60
	cp $08                                           ; $56f3: $fe $08
	pop af                                           ; $56f5: $f1
	add b                                            ; $56f6: $80
	and b                                            ; $56f7: $a0
	dec c                                            ; $56f8: $0d
	db $fc                                           ; $56f9: $fc
	ret nz                                           ; $56fa: $c0

	ld l, d                                          ; $56fb: $6a
	ret nc                                           ; $56fc: $d0

	inc bc                                           ; $56fd: $03
	db $e4                                           ; $56fe: $e4
	nop                                              ; $56ff: $00
	cp l                                             ; $5700: $bd
	ld [de], a                                       ; $5701: $12
	and b                                            ; $5702: $a0
	add b                                            ; $5703: $80
	and b                                            ; $5704: $a0
	ld c, $00                                        ; $5705: $0e $00
	inc bc                                           ; $5707: $03
	db $e4                                           ; $5708: $e4
	nop                                              ; $5709: $00
	dec bc                                           ; $570a: $0b
	rst $38                                          ; $570b: $ff
	rlca                                             ; $570c: $07
	ld b, b                                          ; $570d: $40
	add b                                            ; $570e: $80
	and b                                            ; $570f: $a0
	ld c, $e4                                        ; $5710: $0e $e4
	nop                                              ; $5712: $00
	ld h, d                                          ; $5713: $62
	jr z, @+$1c                                      ; $5714: $28 $1a

	ret nz                                           ; $5716: $c0

	ld bc, $08a0                                     ; $5717: $01 $a0 $08
	ld bc, $c08c                                     ; $571a: $01 $8c $c0
	ld bc, $01a0                                     ; $571d: $01 $a0 $01
	ld bc, $c195                                     ; $5720: $01 $95 $c1
	ld e, e                                          ; $5723: $5b
	ret nz                                           ; $5724: $c0

	inc c                                            ; $5725: $0c
	ldh [$50], a                                     ; $5726: $e0 $50
	pop bc                                           ; $5728: $c1
	ld e, h                                          ; $5729: $5c
	ret nz                                           ; $572a: $c0

	ld bc, $08a0                                     ; $572b: $01 $a0 $08
	ld bc, $439c                                     ; $572e: $01 $9c $43
	ld bc, $09a0                                     ; $5731: $01 $a0 $09
	inc de                                           ; $5734: $13
	pop hl                                           ; $5735: $e1
	ld [bc], a                                       ; $5736: $02
	inc bc                                           ; $5737: $03
	inc de                                           ; $5738: $13
	ret nz                                           ; $5739: $c0

	ld bc, $08a0                                     ; $573a: $01 $a0 $08
	ld bc, $c1a2                                     ; $573d: $01 $a2 $c1
	ld e, e                                          ; $5740: $5b
	pop hl                                           ; $5741: $e1
	ld [bc], a                                       ; $5742: $02
	inc bc                                           ; $5743: $03
	ld [$02e4], a                                    ; $5744: $ea $e4 $02
	adc b                                            ; $5747: $88
	ld bc, $09ac                                     ; $5748: $01 $ac $09
	ld de, $02e1                                     ; $574b: $11 $e1 $02
	inc bc                                           ; $574e: $03
	dec de                                           ; $574f: $1b
	ret nz                                           ; $5750: $c0

	ld bc, $08a0                                     ; $5751: $01 $a0 $08
	ld bc, $e1ae                                     ; $5754: $01 $ae $e1
	ld [bc], a                                       ; $5757: $02
	inc bc                                           ; $5758: $03
	db $fc                                           ; $5759: $fc
	db $e4                                           ; $575a: $e4
	ld [bc], a                                       ; $575b: $02
	ld l, c                                          ; $575c: $69
	ld bc, $09b9                                     ; $575d: $01 $b9 $09
	inc de                                           ; $5760: $13
	pop hl                                           ; $5761: $e1
	ld [bc], a                                       ; $5762: $02
	inc bc                                           ; $5763: $03
	rla                                              ; $5764: $17
	ret nz                                           ; $5765: $c0

	ld bc, $08a0                                     ; $5766: $01 $a0 $08
	ld bc, $c1bb                                     ; $5769: $01 $bb $c1
	ld e, e                                          ; $576c: $5b
	pop hl                                           ; $576d: $e1
	ld [bc], a                                       ; $576e: $02
	inc bc                                           ; $576f: $03
	di                                               ; $5770: $f3
	db $e4                                           ; $5771: $e4
	ld [bc], a                                       ; $5772: $02
	ld e, h                                          ; $5773: $5c
	jr z, @+$08                                      ; $5774: $28 $06

	ret nz                                           ; $5776: $c0

	ld bc, $08a0                                     ; $5777: $01 $a0 $08
	ld bc, $3fc4                                     ; $577a: $01 $c4 $3f
	ld bc, $09c9                                     ; $577d: $01 $c9 $09
	ld de, $02e1                                     ; $5780: $11 $e1 $02
	inc bc                                           ; $5783: $03
	inc de                                           ; $5784: $13
	ret nz                                           ; $5785: $c0

	ld bc, $08a0                                     ; $5786: $01 $a0 $08
	ld bc, $e1cb                                     ; $5789: $01 $cb $e1
	ld [bc], a                                       ; $578c: $02
	inc bc                                           ; $578d: $03
	ld [$02e4], a                                    ; $578e: $ea $e4 $02
	inc [hl]                                         ; $5791: $34
	ld bc, $09cf                                     ; $5792: $01 $cf $09
	ld de, $02e1                                     ; $5795: $11 $e1 $02
	inc bc                                           ; $5798: $03
	rra                                              ; $5799: $1f
	ret nz                                           ; $579a: $c0

	ld bc, $08a0                                     ; $579b: $01 $a0 $08
	ld bc, $e1d1                                     ; $579e: $01 $d1 $e1
	ld [bc], a                                       ; $57a1: $02
	inc b                                            ; $57a2: $04
	dec b                                            ; $57a3: $05
	db $e4                                           ; $57a4: $e4
	ld [bc], a                                       ; $57a5: $02
	rra                                              ; $57a6: $1f
	ld bc, $09d9                                     ; $57a7: $01 $d9 $09
	ld de, $02e1                                     ; $57aa: $11 $e1 $02
	inc bc                                           ; $57ad: $03
	dec de                                           ; $57ae: $1b
	ret nz                                           ; $57af: $c0

	ld bc, $08a0                                     ; $57b0: $01 $a0 $08
	ld bc, $e1db                                     ; $57b3: $01 $db $e1
	ld [bc], a                                       ; $57b6: $02
	inc bc                                           ; $57b7: $03
	db $fc                                           ; $57b8: $fc
	db $e4                                           ; $57b9: $e4
	ld [bc], a                                       ; $57ba: $02
	ld a, [bc]                                       ; $57bb: $0a
	jr z, @+$18                                      ; $57bc: $28 $16

	nop                                              ; $57be: $00
	add b                                            ; $57bf: $80
	and b                                            ; $57c0: $a0
	dec c                                            ; $57c1: $0d
	ret nz                                           ; $57c2: $c0

	ld bc, $08a0                                     ; $57c3: $01 $a0 $08
	ld bc, $c0ea                                     ; $57c6: $01 $ea $c0
	ld bc, $01a0                                     ; $57c9: $01 $a0 $01
	ld bc, $c0f1                                     ; $57cc: $01 $f1 $c0
	ld bc, $08a0                                     ; $57cf: $01 $a0 $08
	ld bc, $7ef6                                     ; $57d2: $01 $f6 $7e
	ld bc, $09ff                                     ; $57d5: $01 $ff $09
	inc h                                            ; $57d8: $24
	ldh [rP1], a                                     ; $57d9: $e0 $00
	ld a, c                                          ; $57db: $79
	pop bc                                           ; $57dc: $c1
	ld e, c                                          ; $57dd: $59
	db $e3                                           ; $57de: $e3
	nop                                              ; $57df: $00
	ld a, [$b2c1]                                    ; $57e0: $fa $c1 $b2
	db $e3                                           ; $57e3: $e3
	nop                                              ; $57e4: $00
	ld d, c                                          ; $57e5: $51
	ret nz                                           ; $57e6: $c0

	ld bc, $08a0                                     ; $57e7: $01 $a0 $08
	ld [bc], a                                       ; $57ea: $02
	inc b                                            ; $57eb: $04
	ret nz                                           ; $57ec: $c0

	ld bc, $01a0                                     ; $57ed: $01 $a0 $01
	ld [bc], a                                       ; $57f0: $02
	dec bc                                           ; $57f1: $0b
	pop hl                                           ; $57f2: $e1
	ld [bc], a                                       ; $57f3: $02
	inc bc                                           ; $57f4: $03
	pop hl                                           ; $57f5: $e1
	pop bc                                           ; $57f6: $c1
	ld l, e                                          ; $57f7: $6b
	pop de                                           ; $57f8: $d1
	rst SubAFromHL                                          ; $57f9: $d7
	db $e4                                           ; $57fa: $e4
	ld bc, $02d3                                     ; $57fb: $01 $d3 $02
	inc de                                           ; $57fe: $13
	add hl, bc                                       ; $57ff: $09
	daa                                              ; $5800: $27
	ldh [rP1], a                                     ; $5801: $e0 $00
	ld d, c                                          ; $5803: $51
	pop bc                                           ; $5804: $c1
	ld e, c                                          ; $5805: $59
	db $e3                                           ; $5806: $e3
	nop                                              ; $5807: $00
	db $fc                                           ; $5808: $fc
	ret nz                                           ; $5809: $c0

	ld bc, $08a0                                     ; $580a: $01 $a0 $08
	ld [bc], a                                       ; $580d: $02
	add hl, de                                       ; $580e: $19
	ret nz                                           ; $580f: $c0

	ld bc, $01a0                                     ; $5810: $01 $a0 $01
	ld [bc], a                                       ; $5813: $02
	ld [hl+], a                                      ; $5814: $22
	ret nz                                           ; $5815: $c0

	ld bc, $08a0                                     ; $5816: $01 $a0 $08
	ld [bc], a                                       ; $5819: $02
	inc l                                            ; $581a: $2c
	ret nz                                           ; $581b: $c0

	ld bc, $01a0                                     ; $581c: $01 $a0 $01
	ld [bc], a                                       ; $581f: $02
	scf                                              ; $5820: $37
	pop hl                                           ; $5821: $e1
	ld [bc], a                                       ; $5822: $02
	inc b                                            ; $5823: $04
	dec b                                            ; $5824: $05
	db $e4                                           ; $5825: $e4
	ld bc, $02a8                                     ; $5826: $01 $a8 $02
	dec sp                                           ; $5829: $3b
	add hl, bc                                       ; $582a: $09
	daa                                              ; $582b: $27
	ldh [rP1], a                                     ; $582c: $e0 $00
	ld h, $c1                                        ; $582e: $26 $c1
	ld e, c                                          ; $5830: $59
	db $e3                                           ; $5831: $e3
	nop                                              ; $5832: $00
	ei                                               ; $5833: $fb
	ret nz                                           ; $5834: $c0

	ld bc, $08a0                                     ; $5835: $01 $a0 $08
	ld [bc], a                                       ; $5838: $02
	ld b, c                                          ; $5839: $41
	ret nz                                           ; $583a: $c0

	ld bc, $01a0                                     ; $583b: $01 $a0 $01
	ld [bc], a                                       ; $583e: $02
	ld c, e                                          ; $583f: $4b
	ret nz                                           ; $5840: $c0

	ld bc, $08a0                                     ; $5841: $01 $a0 $08
	ld [bc], a                                       ; $5844: $02
	ld d, c                                          ; $5845: $51
	ret nz                                           ; $5846: $c0

	ld bc, $01a0                                     ; $5847: $01 $a0 $01
	ld [bc], a                                       ; $584a: $02
	scf                                              ; $584b: $37
	pop hl                                           ; $584c: $e1
	ld [bc], a                                       ; $584d: $02
	inc bc                                           ; $584e: $03
	di                                               ; $584f: $f3
	db $e4                                           ; $5850: $e4
	ld bc, $0c7d                                     ; $5851: $01 $7d $0c
	ret nz                                           ; $5854: $c0

	ld bc, $08a0                                     ; $5855: $01 $a0 $08
	ld [bc], a                                       ; $5858: $02
	ld e, l                                          ; $5859: $5d
	pop bc                                           ; $585a: $c1
	ld e, e                                          ; $585b: $5b
	ret nz                                           ; $585c: $c0

	inc c                                            ; $585d: $0c
	ldh [$50], a                                     ; $585e: $e0 $50
	add hl, bc                                       ; $5860: $09
	inc e                                            ; $5861: $1c
	pop bc                                           ; $5862: $c1
	ld e, c                                          ; $5863: $59
	db $e3                                           ; $5864: $e3
	nop                                              ; $5865: $00
	and d                                            ; $5866: $a2
	ret nz                                           ; $5867: $c0

	add hl, bc                                       ; $5868: $09
	db $e3                                           ; $5869: $e3
	nop                                              ; $586a: $00
	add hl, hl                                       ; $586b: $29
	and b                                            ; $586c: $a0
	add b                                            ; $586d: $80
	and b                                            ; $586e: $a0
	rrca                                             ; $586f: $0f
	nop                                              ; $5870: $00
	inc bc                                           ; $5871: $03
	db $e4                                           ; $5872: $e4
	nop                                              ; $5873: $00
	dec bc                                           ; $5874: $0b
	rst $38                                          ; $5875: $ff
	rlca                                             ; $5876: $07
	ld b, b                                          ; $5877: $40
	add b                                            ; $5878: $80
	and b                                            ; $5879: $a0
	rrca                                             ; $587a: $0f
	db $e4                                           ; $587b: $e4
	nop                                              ; $587c: $00
	ld c, d                                          ; $587d: $4a
	jr z, jr_080_5886                                ; $587e: $28 $06

	ret nz                                           ; $5880: $c0

	ld bc, $08a0                                     ; $5881: $01 $a0 $08
	ld [bc], a                                       ; $5884: $02
	ld h, a                                          ; $5885: $67

jr_080_5886:
	ccf                                              ; $5886: $3f
	ld [bc], a                                       ; $5887: $02
	ld l, a                                          ; $5888: $6f
	add hl, bc                                       ; $5889: $09
	ld de, $02e1                                     ; $588a: $11 $e1 $02
	inc bc                                           ; $588d: $03
	rrca                                             ; $588e: $0f
	ret nz                                           ; $588f: $c0

	ld bc, $08a0                                     ; $5890: $01 $a0 $08
	ld [bc], a                                       ; $5893: $02
	ld [hl], a                                       ; $5894: $77
	pop hl                                           ; $5895: $e1
	ld [bc], a                                       ; $5896: $02
	inc bc                                           ; $5897: $03
	pop hl                                           ; $5898: $e1
	db $e4                                           ; $5899: $e4
	ld bc, $022a                                     ; $589a: $01 $2a $02
	ld a, [hl]                                       ; $589d: $7e
	add hl, bc                                       ; $589e: $09
	ld de, $02e1                                     ; $589f: $11 $e1 $02
	inc bc                                           ; $58a2: $03
	rra                                              ; $58a3: $1f
	ret nz                                           ; $58a4: $c0

	ld bc, $08a0                                     ; $58a5: $01 $a0 $08
	ld [bc], a                                       ; $58a8: $02
	add b                                            ; $58a9: $80
	pop hl                                           ; $58aa: $e1
	ld [bc], a                                       ; $58ab: $02
	inc b                                            ; $58ac: $04
	dec b                                            ; $58ad: $05
	db $e4                                           ; $58ae: $e4
	ld bc, $0215                                     ; $58af: $01 $15 $02
	add l                                            ; $58b2: $85
	add hl, bc                                       ; $58b3: $09
	ld de, $02e1                                     ; $58b4: $11 $e1 $02
	inc bc                                           ; $58b7: $03
	inc de                                           ; $58b8: $13
	ret nz                                           ; $58b9: $c0

	ld bc, $08a0                                     ; $58ba: $01 $a0 $08
	ld [bc], a                                       ; $58bd: $02
	adc h                                            ; $58be: $8c
	pop hl                                           ; $58bf: $e1
	ld [bc], a                                       ; $58c0: $02
	inc bc                                           ; $58c1: $03
	ld [$01e4], a                                    ; $58c2: $ea $e4 $01
	nop                                              ; $58c5: $00
	jr z, jr_080_58ce                                ; $58c6: $28 $06

	ret nz                                           ; $58c8: $c0

	ld bc, $08a0                                     ; $58c9: $01 $a0 $08
	ld [bc], a                                       ; $58cc: $02
	adc a                                            ; $58cd: $8f

jr_080_58ce:
	ccf                                              ; $58ce: $3f
	ld [bc], a                                       ; $58cf: $02
	sbc c                                            ; $58d0: $99
	add hl, bc                                       ; $58d1: $09
	ld de, $02e1                                     ; $58d2: $11 $e1 $02
	inc bc                                           ; $58d5: $03
	inc de                                           ; $58d6: $13
	ret nz                                           ; $58d7: $c0

	ld bc, $08a0                                     ; $58d8: $01 $a0 $08
	ld [bc], a                                       ; $58db: $02
	sbc e                                            ; $58dc: $9b
	pop hl                                           ; $58dd: $e1
	ld [bc], a                                       ; $58de: $02
	inc bc                                           ; $58df: $03
	ld [$00e4], a                                    ; $58e0: $ea $e4 $00
	ldh [c], a                                       ; $58e3: $e2
	ld [bc], a                                       ; $58e4: $02
	sbc a                                            ; $58e5: $9f
	add hl, bc                                       ; $58e6: $09
	ld de, $02e1                                     ; $58e7: $11 $e1 $02
	inc bc                                           ; $58ea: $03
	rra                                              ; $58eb: $1f
	ret nz                                           ; $58ec: $c0

	ld bc, $08a0                                     ; $58ed: $01 $a0 $08
	ld [bc], a                                       ; $58f0: $02
	and c                                            ; $58f1: $a1
	pop hl                                           ; $58f2: $e1
	ld [bc], a                                       ; $58f3: $02
	inc b                                            ; $58f4: $04
	dec b                                            ; $58f5: $05
	db $e4                                           ; $58f6: $e4
	nop                                              ; $58f7: $00
	call $a802                                       ; $58f8: $cd $02 $a8
	add hl, bc                                       ; $58fb: $09
	ld de, $02e1                                     ; $58fc: $11 $e1 $02
	inc bc                                           ; $58ff: $03
	rla                                              ; $5900: $17
	ret nz                                           ; $5901: $c0

	ld bc, $08a0                                     ; $5902: $01 $a0 $08
	ld [bc], a                                       ; $5905: $02
	xor [hl]                                         ; $5906: $ae
	pop hl                                           ; $5907: $e1
	ld [bc], a                                       ; $5908: $02
	inc bc                                           ; $5909: $03
	di                                               ; $590a: $f3
	db $e4                                           ; $590b: $e4
	nop                                              ; $590c: $00
	cp b                                             ; $590d: $b8
	add hl, bc                                       ; $590e: $09
	inc e                                            ; $590f: $1c
	pop bc                                           ; $5910: $c1
	ld e, c                                          ; $5911: $59
	db $e3                                           ; $5912: $e3
	nop                                              ; $5913: $00
	and e                                            ; $5914: $a3
	ret nz                                           ; $5915: $c0

	add hl, bc                                       ; $5916: $09
	db $e3                                           ; $5917: $e3
	nop                                              ; $5918: $00
	ld l, $a0                                        ; $5919: $2e $a0
	add b                                            ; $591b: $80
	and b                                            ; $591c: $a0
	stop                                             ; $591d: $10 $00
	inc bc                                           ; $591f: $03
	db $e4                                           ; $5920: $e4
	nop                                              ; $5921: $00
	dec bc                                           ; $5922: $0b
	rst $38                                          ; $5923: $ff
	rlca                                             ; $5924: $07
	ld b, b                                          ; $5925: $40
	add b                                            ; $5926: $80
	and b                                            ; $5927: $a0
	db $10                                           ; $5928: $10
	db $e4                                           ; $5929: $e4
	nop                                              ; $592a: $00
	ld c, [hl]                                       ; $592b: $4e
	jr z, jr_080_5938                                ; $592c: $28 $0a

	pop hl                                           ; $592e: $e1
	ld [bc], a                                       ; $592f: $02
	inc bc                                           ; $5930: $03
	dec de                                           ; $5931: $1b
	ret nz                                           ; $5932: $c0

	ld bc, $08a0                                     ; $5933: $01 $a0 $08
	ld [bc], a                                       ; $5936: $02
	or b                                             ; $5937: $b0

jr_080_5938:
	ccf                                              ; $5938: $3f
	ld [bc], a                                       ; $5939: $02
	or l                                             ; $593a: $b5
	add hl, bc                                       ; $593b: $09
	ld de, $02e1                                     ; $593c: $11 $e1 $02
	inc bc                                           ; $593f: $03
	rla                                              ; $5940: $17
	ret nz                                           ; $5941: $c0

	ld bc, $08a0                                     ; $5942: $01 $a0 $08
	ld [bc], a                                       ; $5945: $02
	cp d                                             ; $5946: $ba
	pop hl                                           ; $5947: $e1
	ld [bc], a                                       ; $5948: $02
	inc bc                                           ; $5949: $03
	di                                               ; $594a: $f3
	db $e4                                           ; $594b: $e4
	nop                                              ; $594c: $00
	ld a, b                                          ; $594d: $78
	ld [bc], a                                       ; $594e: $02
	cp a                                             ; $594f: $bf
	add hl, bc                                       ; $5950: $09
	ld de, $02e1                                     ; $5951: $11 $e1 $02
	inc bc                                           ; $5954: $03
	dec de                                           ; $5955: $1b
	ret nz                                           ; $5956: $c0

	ld bc, $08a0                                     ; $5957: $01 $a0 $08
	ld [bc], a                                       ; $595a: $02
	push bc                                          ; $595b: $c5
	pop hl                                           ; $595c: $e1
	ld [bc], a                                       ; $595d: $02
	inc bc                                           ; $595e: $03
	db $fc                                           ; $595f: $fc
	db $e4                                           ; $5960: $e4
	nop                                              ; $5961: $00
	ld h, e                                          ; $5962: $63
	ld [bc], a                                       ; $5963: $02
	call z, $1109                                    ; $5964: $cc $09 $11
	pop hl                                           ; $5967: $e1
	ld [bc], a                                       ; $5968: $02
	inc bc                                           ; $5969: $03

jr_080_596a:
	dec de                                           ; $596a: $1b
	ret nz                                           ; $596b: $c0

	ld bc, $08a0                                     ; $596c: $01 $a0 $08
	ld [bc], a                                       ; $596f: $02
	adc $e1                                          ; $5970: $ce $e1
	ld [bc], a                                       ; $5972: $02
	inc bc                                           ; $5973: $03
	db $fc                                           ; $5974: $fc
	db $e4                                           ; $5975: $e4
	nop                                              ; $5976: $00
	ld c, [hl]                                       ; $5977: $4e
	jr z, jr_080_5984                                ; $5978: $28 $0a

	pop hl                                           ; $597a: $e1
	ld [bc], a                                       ; $597b: $02
	inc bc                                           ; $597c: $03
	rla                                              ; $597d: $17
	ret nz                                           ; $597e: $c0

	ld bc, $08a0                                     ; $597f: $01 $a0 $08
	ld [bc], a                                       ; $5982: $02
	ret nc                                           ; $5983: $d0

jr_080_5984:
	ccf                                              ; $5984: $3f
	ld [bc], a                                       ; $5985: $02
	rst SubAFromHL                                          ; $5986: $d7
	add hl, bc                                       ; $5987: $09
	ld de, $02e1                                     ; $5988: $11 $e1 $02
	inc bc                                           ; $598b: $03
	dec de                                           ; $598c: $1b
	ret nz                                           ; $598d: $c0

	ld bc, $08a0                                     ; $598e: $01 $a0 $08
	ld [bc], a                                       ; $5991: $02
	reti                                             ; $5992: $d9


	pop hl                                           ; $5993: $e1
	ld [bc], a                                       ; $5994: $02
	inc bc                                           ; $5995: $03
	db $fc                                           ; $5996: $fc
	db $e4                                           ; $5997: $e4
	nop                                              ; $5998: $00
	inc l                                            ; $5999: $2c
	ld [bc], a                                       ; $599a: $02
	db $e4                                           ; $599b: $e4
	add hl, bc                                       ; $599c: $09
	ld de, $02e1                                     ; $599d: $11 $e1 $02
	inc bc                                           ; $59a0: $03
	dec de                                           ; $59a1: $1b
	ret nz                                           ; $59a2: $c0

jr_080_59a3:
	ld bc, $08a0                                     ; $59a3: $01 $a0 $08
	ld [bc], a                                       ; $59a6: $02
	and $e1                                          ; $59a7: $e6 $e1
	ld [bc], a                                       ; $59a9: $02
	inc bc                                           ; $59aa: $03
	db $fc                                           ; $59ab: $fc
	db $e4                                           ; $59ac: $e4
	nop                                              ; $59ad: $00
	rla                                              ; $59ae: $17
	ld [bc], a                                       ; $59af: $02
	db $ec                                           ; $59b0: $ec
	add hl, bc                                       ; $59b1: $09
	ld de, $02e1                                     ; $59b2: $11 $e1 $02
	inc bc                                           ; $59b5: $03
	dec de                                           ; $59b6: $1b
	ret nz                                           ; $59b7: $c0

	ld bc, $08a0                                     ; $59b8: $01 $a0 $08
	ld [bc], a                                       ; $59bb: $02
	xor $e1                                          ; $59bc: $ee $e1
	ld [bc], a                                       ; $59be: $02
	inc bc                                           ; $59bf: $03
	db $fc                                           ; $59c0: $fc

Jump_080_59c1:
	db $e4                                           ; $59c1: $e4
	nop                                              ; $59c2: $00
	ld [bc], a                                       ; $59c3: $02
	add hl, bc                                       ; $59c4: $09
	ld [$59c1], sp                                   ; $59c5: $08 $c1 $59
	db $e3                                           ; $59c8: $e3
	nop                                              ; $59c9: $00
	sbc a                                            ; $59ca: $9f
	db $e4                                           ; $59cb: $e4
	nop                                              ; $59cc: $00
	inc d                                            ; $59cd: $14
	add hl, bc                                       ; $59ce: $09
	db $10                                           ; $59cf: $10
	ret nz                                           ; $59d0: $c0

	set 0, b                                         ; $59d1: $cb $c0
	ld de, $00e3                                     ; $59d3: $11 $e3 $00
	sbc a                                            ; $59d6: $9f
	pop bc                                           ; $59d7: $c1
	ld e, h                                          ; $59d8: $5c
	pop hl                                           ; $59d9: $e1
	ld [bc], a                                       ; $59da: $02
	ld [bc], a                                       ; $59db: $02
	nop                                              ; $59dc: $00
	db $e4                                           ; $59dd: $e4
	nop                                              ; $59de: $00
	ld [bc], a                                       ; $59df: $02
	add hl, bc                                       ; $59e0: $09
	jr z, jr_080_59a3                                ; $59e1: $28 $c0

	add hl, bc                                       ; $59e3: $09
	db $e3                                           ; $59e4: $e3
	nop                                              ; $59e5: $00
	jr c, jr_080_596a                                ; $59e6: $38 $82

	adc e                                            ; $59e8: $8b
	and b                                            ; $59e9: $a0
	ld bc, $b002                                     ; $59ea: $01 $02 $b0
	add d                                            ; $59ed: $82
	dec b                                            ; $59ee: $05
	ret nz                                           ; $59ef: $c0

	ld d, [hl]                                       ; $59f0: $56
	rst SubAFromHL                                          ; $59f1: $d7
	jp nc, $02d0                                     ; $59f2: $d2 $d0 $02

	or b                                             ; $59f5: $b0
	add e                                            ; $59f6: $83
	dec b                                            ; $59f7: $05
	ret nz                                           ; $59f8: $c0

	ld d, [hl]                                       ; $59f9: $56
	rst SubAFromHL                                          ; $59fa: $d7
	jp nc, $02d1                                     ; $59fb: $d2 $d1 $02

	or b                                             ; $59fe: $b0
	add h                                            ; $59ff: $84
	dec b                                            ; $5a00: $05

Call_080_5a01:
	ret nz                                           ; $5a01: $c0

	ld d, [hl]                                       ; $5a02: $56
	rst SubAFromHL                                          ; $5a03: $d7
	jp nc, $e5d2                                     ; $5a04: $d2 $d2 $e5

	inc hl                                           ; $5a07: $23
	nop                                              ; $5a08: $00
	nop                                              ; $5a09: $00
	add hl, bc                                       ; $5a0a: $09
	inc d                                            ; $5a0b: $14
	ret nc                                           ; $5a0c: $d0

	add e                                            ; $5a0d: $83
	ld bc, $d0de                                     ; $5a0e: $01 $de $d0
	ret nz                                           ; $5a11: $c0

	ld bc, $08a0                                     ; $5a12: $01 $a0 $08
	ld [bc], a                                       ; $5a15: $02
	ld sp, hl                                        ; $5a16: $f9
	ret nz                                           ; $5a17: $c0

	ld bc, $01a0                                     ; $5a18: $01 $a0 $01
	ld [bc], a                                       ; $5a1b: $02
	db $fc                                           ; $5a1c: $fc
	db $e4                                           ; $5a1d: $e4
	nop                                              ; $5a1e: $00
	ld [bc], a                                       ; $5a1f: $02
	add hl, bc                                       ; $5a20: $09
	inc [hl]                                         ; $5a21: $34
	pop bc                                           ; $5a22: $c1
	ld e, c                                          ; $5a23: $59
	db $e3                                           ; $5a24: $e3
	nop                                              ; $5a25: $00
	xor l                                            ; $5a26: $ad
	ld h, b                                          ; $5a27: $60
	add b                                            ; $5a28: $80
	ld [bc], a                                       ; $5a29: $02
	ld b, c                                          ; $5a2a: $41
	rla                                              ; $5a2b: $17
	and c                                            ; $5a2c: $a1
	add c                                            ; $5a2d: $81
	and b                                            ; $5a2e: $a0
	ld de, $0300                                     ; $5a2f: $11 $00 $03
	db $e4                                           ; $5a32: $e4
	nop                                              ; $5a33: $00
	or e                                             ; $5a34: $b3
	ld bc, $e403                                     ; $5a35: $01 $03 $e4
	nop                                              ; $5a38: $00
	ld e, $ff                                        ; $5a39: $1e $ff
	rlca                                             ; $5a3b: $07
	ld b, b                                          ; $5a3c: $40
	add c                                            ; $5a3d: $81
	and b                                            ; $5a3e: $a0
	ld de, $00e4                                     ; $5a3f: $11 $e4 $00
	ld e, l                                          ; $5a42: $5d
	ld [de], a                                       ; $5a43: $12
	and b                                            ; $5a44: $a0
	add b                                            ; $5a45: $80
	and b                                            ; $5a46: $a0
	inc de                                           ; $5a47: $13
	nop                                              ; $5a48: $00
	inc bc                                           ; $5a49: $03
	db $e4                                           ; $5a4a: $e4
	nop                                              ; $5a4b: $00
	dec bc                                           ; $5a4c: $0b
	rst $38                                          ; $5a4d: $ff
	rlca                                             ; $5a4e: $07
	ld b, b                                          ; $5a4f: $40
	add b                                            ; $5a50: $80
	and b                                            ; $5a51: $a0
	inc de                                           ; $5a52: $13
	db $e4                                           ; $5a53: $e4
	nop                                              ; $5a54: $00
	ld c, d                                          ; $5a55: $4a
	jr z, jr_080_5a5e                                ; $5a56: $28 $06

	ret nz                                           ; $5a58: $c0

	ld bc, $08a0                                     ; $5a59: $01 $a0 $08
	inc bc                                           ; $5a5c: $03
	ld [bc], a                                       ; $5a5d: $02

jr_080_5a5e:
	ccf                                              ; $5a5e: $3f
	inc bc                                           ; $5a5f: $03
	dec b                                            ; $5a60: $05
	add hl, bc                                       ; $5a61: $09
	ld de, $02e1                                     ; $5a62: $11 $e1 $02
	inc bc                                           ; $5a65: $03
	inc de                                           ; $5a66: $13
	ret nz                                           ; $5a67: $c0

	ld bc, $08a0                                     ; $5a68: $01 $a0 $08
	inc bc                                           ; $5a6b: $03
	rlca                                             ; $5a6c: $07
	pop hl                                           ; $5a6d: $e1
	ld [bc], a                                       ; $5a6e: $02
	inc bc                                           ; $5a6f: $03
	pop hl                                           ; $5a70: $e1
	db $e4                                           ; $5a71: $e4
	nop                                              ; $5a72: $00
	jp nz, $1003                                     ; $5a73: $c2 $03 $10

	add hl, bc                                       ; $5a76: $09
	ld de, $02e1                                     ; $5a77: $11 $e1 $02
	inc bc                                           ; $5a7a: $03
	dec de                                           ; $5a7b: $1b
	ret nz                                           ; $5a7c: $c0

	ld bc, $08a0                                     ; $5a7d: $01 $a0 $08
	inc bc                                           ; $5a80: $03
	ld [de], a                                       ; $5a81: $12
	pop hl                                           ; $5a82: $e1
	ld [bc], a                                       ; $5a83: $02
	inc bc                                           ; $5a84: $03
	db $fc                                           ; $5a85: $fc
	db $e4                                           ; $5a86: $e4
	nop                                              ; $5a87: $00
	xor l                                            ; $5a88: $ad
	ld bc, $0965                                     ; $5a89: $01 $65 $09
	ld de, $02e1                                     ; $5a8c: $11 $e1 $02
	inc bc                                           ; $5a8f: $03
	rla                                              ; $5a90: $17
	ret nz                                           ; $5a91: $c0

	ld bc, $08a0                                     ; $5a92: $01 $a0 $08
	inc bc                                           ; $5a95: $03
	dec de                                           ; $5a96: $1b
	pop hl                                           ; $5a97: $e1
	ld [bc], a                                       ; $5a98: $02
	inc bc                                           ; $5a99: $03
	di                                               ; $5a9a: $f3
	db $e4                                           ; $5a9b: $e4
	nop                                              ; $5a9c: $00
	sbc b                                            ; $5a9d: $98
	jr z, jr_080_5aa6                                ; $5a9e: $28 $06

	ret nz                                           ; $5aa0: $c0

	ld bc, $08a0                                     ; $5aa1: $01 $a0 $08
	inc bc                                           ; $5aa4: $03
	daa                                              ; $5aa5: $27

jr_080_5aa6:
	ccf                                              ; $5aa6: $3f
	inc bc                                           ; $5aa7: $03
	ld sp, $1109                                     ; $5aa8: $31 $09 $11
	pop hl                                           ; $5aab: $e1
	ld [bc], a                                       ; $5aac: $02
	inc bc                                           ; $5aad: $03
	inc de                                           ; $5aae: $13
	ret nz                                           ; $5aaf: $c0

	ld bc, $08a0                                     ; $5ab0: $01 $a0 $08
	inc bc                                           ; $5ab3: $03
	ld [hl], $e1                                     ; $5ab4: $36 $e1
	ld [bc], a                                       ; $5ab6: $02
	inc bc                                           ; $5ab7: $03
	ld [$00e4], a                                    ; $5ab8: $ea $e4 $00
	ld a, d                                          ; $5abb: $7a
	inc bc                                           ; $5abc: $03
	ld b, b                                          ; $5abd: $40
	add hl, bc                                       ; $5abe: $09
	ld de, $02e1                                     ; $5abf: $11 $e1 $02
	inc bc                                           ; $5ac2: $03
	rra                                              ; $5ac3: $1f
	ret nz                                           ; $5ac4: $c0

	ld bc, $08a0                                     ; $5ac5: $01 $a0 $08
	inc bc                                           ; $5ac8: $03
	ld c, b                                          ; $5ac9: $48
	pop hl                                           ; $5aca: $e1
	ld [bc], a                                       ; $5acb: $02
	inc b                                            ; $5acc: $04
	dec b                                            ; $5acd: $05
	db $e4                                           ; $5ace: $e4
	nop                                              ; $5acf: $00
	ld h, l                                          ; $5ad0: $65
	inc bc                                           ; $5ad1: $03
	ld d, d                                          ; $5ad2: $52
	add hl, bc                                       ; $5ad3: $09
	ld de, $02e1                                     ; $5ad4: $11 $e1 $02
	inc bc                                           ; $5ad7: $03
	rla                                              ; $5ad8: $17
	ret nz                                           ; $5ad9: $c0

	ld bc, $08a0                                     ; $5ada: $01 $a0 $08
	inc bc                                           ; $5add: $03
	ld d, h                                          ; $5ade: $54
	pop hl                                           ; $5adf: $e1
	ld [bc], a                                       ; $5ae0: $02
	inc bc                                           ; $5ae1: $03
	di                                               ; $5ae2: $f3
	db $e4                                           ; $5ae3: $e4
	nop                                              ; $5ae4: $00
	ld d, b                                          ; $5ae5: $50
	jr z, jr_080_5af4                                ; $5ae6: $28 $0c

	ret nz                                           ; $5ae8: $c0

	ld bc, $01a0                                     ; $5ae9: $01 $a0 $01
	inc bc                                           ; $5aec: $03
	ld e, [hl]                                       ; $5aed: $5e
	ret nz                                           ; $5aee: $c0

	ld bc, $08a0                                     ; $5aef: $01 $a0 $08
	inc bc                                           ; $5af2: $03
	ld h, l                                          ; $5af3: $65

jr_080_5af4:
	ccf                                              ; $5af4: $3f
	inc bc                                           ; $5af5: $03
	ld [hl], c                                       ; $5af6: $71
	add hl, bc                                       ; $5af7: $09
	ld de, $02e1                                     ; $5af8: $11 $e1 $02
	inc bc                                           ; $5afb: $03
	inc de                                           ; $5afc: $13
	ret nz                                           ; $5afd: $c0

	ld bc, $08a0                                     ; $5afe: $01 $a0 $08
	inc bc                                           ; $5b01: $03
	ld a, c                                          ; $5b02: $79
	pop hl                                           ; $5b03: $e1
	ld [bc], a                                       ; $5b04: $02
	inc bc                                           ; $5b05: $03
	ld [$00e4], a                                    ; $5b06: $ea $e4 $00
	inc l                                            ; $5b09: $2c
	inc bc                                           ; $5b0a: $03
	ld a, a                                          ; $5b0b: $7f
	add hl, bc                                       ; $5b0c: $09
	ld de, $02e1                                     ; $5b0d: $11 $e1 $02
	inc bc                                           ; $5b10: $03
	rra                                              ; $5b11: $1f
	ret nz                                           ; $5b12: $c0

	ld bc, $08a0                                     ; $5b13: $01 $a0 $08
	inc bc                                           ; $5b16: $03
	add l                                            ; $5b17: $85
	pop hl                                           ; $5b18: $e1
	ld [bc], a                                       ; $5b19: $02
	inc b                                            ; $5b1a: $04
	dec b                                            ; $5b1b: $05
	db $e4                                           ; $5b1c: $e4
	nop                                              ; $5b1d: $00
	rla                                              ; $5b1e: $17
	inc bc                                           ; $5b1f: $03
	adc e                                            ; $5b20: $8b
	add hl, bc                                       ; $5b21: $09
	ld de, $02e1                                     ; $5b22: $11 $e1 $02
	inc bc                                           ; $5b25: $03
	dec de                                           ; $5b26: $1b
	ret nz                                           ; $5b27: $c0

	ld bc, $08a0                                     ; $5b28: $01 $a0 $08
	inc bc                                           ; $5b2b: $03
	sub d                                            ; $5b2c: $92
	pop hl                                           ; $5b2d: $e1
	ld [bc], a                                       ; $5b2e: $02
	inc bc                                           ; $5b2f: $03
	db $fc                                           ; $5b30: $fc
	db $e4                                           ; $5b31: $e4
	nop                                              ; $5b32: $00
	ld [bc], a                                       ; $5b33: $02
	add hl, bc                                       ; $5b34: $09
	ld c, $c1                                        ; $5b35: $0e $c1
	ld e, c                                          ; $5b37: $59
	db $e3                                           ; $5b38: $e3
	nop                                              ; $5b39: $00
	xor h                                            ; $5b3a: $ac
	ret nz                                           ; $5b3b: $c0

	ld d, [hl]                                       ; $5b3c: $56
	rst SubAFromHL                                          ; $5b3d: $d7
	db $d3                                           ; $5b3e: $d3
	ret nc                                           ; $5b3f: $d0

	push hl                                          ; $5b40: $e5
	inc hl                                           ; $5b41: $23
	nop                                              ; $5b42: $00
	nop                                              ; $5b43: $00
	add hl, bc                                       ; $5b44: $09
	inc d                                            ; $5b45: $14
	ret nc                                           ; $5b46: $d0

	add e                                            ; $5b47: $83
	ld bc, $d0de                                     ; $5b48: $01 $de $d0
	ret nz                                           ; $5b4b: $c0

	ld bc, $08a0                                     ; $5b4c: $01 $a0 $08
	ld [bc], a                                       ; $5b4f: $02
	ld sp, hl                                        ; $5b50: $f9
	ret nz                                           ; $5b51: $c0

	ld bc, $01a0                                     ; $5b52: $01 $a0 $01
	ld [bc], a                                       ; $5b55: $02
	db $fc                                           ; $5b56: $fc
	db $e4                                           ; $5b57: $e4
	nop                                              ; $5b58: $00
	ld [bc], a                                       ; $5b59: $02
	add hl, bc                                       ; $5b5a: $09
	inc [hl]                                         ; $5b5b: $34
	pop bc                                           ; $5b5c: $c1
	ld e, c                                          ; $5b5d: $59
	db $e3                                           ; $5b5e: $e3
	nop                                              ; $5b5f: $00
	xor e                                            ; $5b60: $ab
	ld h, b                                          ; $5b61: $60
	add b                                            ; $5b62: $80
	ld [bc], a                                       ; $5b63: $02
	ld d, c                                          ; $5b64: $51
	rla                                              ; $5b65: $17
	and c                                            ; $5b66: $a1
	add c                                            ; $5b67: $81
	and b                                            ; $5b68: $a0
	inc d                                            ; $5b69: $14
	nop                                              ; $5b6a: $00
	inc bc                                           ; $5b6b: $03
	db $e4                                           ; $5b6c: $e4
	nop                                              ; $5b6d: $00
	or e                                             ; $5b6e: $b3
	ld bc, $e403                                     ; $5b6f: $01 $03 $e4
	nop                                              ; $5b72: $00
	ld e, $ff                                        ; $5b73: $1e $ff
	rlca                                             ; $5b75: $07
	ld b, b                                          ; $5b76: $40
	add c                                            ; $5b77: $81
	and b                                            ; $5b78: $a0
	inc d                                            ; $5b79: $14
	db $e4                                           ; $5b7a: $e4
	nop                                              ; $5b7b: $00
	ld e, l                                          ; $5b7c: $5d
	ld [de], a                                       ; $5b7d: $12
	and b                                            ; $5b7e: $a0
	add b                                            ; $5b7f: $80
	and b                                            ; $5b80: $a0
	ld d, $00                                        ; $5b81: $16 $00
	inc bc                                           ; $5b83: $03
	db $e4                                           ; $5b84: $e4
	nop                                              ; $5b85: $00
	dec bc                                           ; $5b86: $0b
	rst $38                                          ; $5b87: $ff
	rlca                                             ; $5b88: $07
	ld b, b                                          ; $5b89: $40
	add b                                            ; $5b8a: $80
	and b                                            ; $5b8b: $a0
	ld d, $e4                                        ; $5b8c: $16 $e4
	nop                                              ; $5b8e: $00
	ld c, d                                          ; $5b8f: $4a
	jr z, jr_080_5b98                                ; $5b90: $28 $06

	ret nz                                           ; $5b92: $c0

	ld bc, $08a0                                     ; $5b93: $01 $a0 $08
	inc bc                                           ; $5b96: $03
	sbc c                                            ; $5b97: $99

jr_080_5b98:
	ccf                                              ; $5b98: $3f
	inc bc                                           ; $5b99: $03
	xor d                                            ; $5b9a: $aa
	add hl, bc                                       ; $5b9b: $09
	ld de, $02e1                                     ; $5b9c: $11 $e1 $02
	inc bc                                           ; $5b9f: $03
	inc de                                           ; $5ba0: $13
	ret nz                                           ; $5ba1: $c0

	ld bc, $08a0                                     ; $5ba2: $01 $a0 $08
	inc bc                                           ; $5ba5: $03
	or d                                             ; $5ba6: $b2
	pop hl                                           ; $5ba7: $e1
	ld [bc], a                                       ; $5ba8: $02
	inc bc                                           ; $5ba9: $03
	pop hl                                           ; $5baa: $e1
	db $e4                                           ; $5bab: $e4
	nop                                              ; $5bac: $00
	cp h                                             ; $5bad: $bc
	inc bc                                           ; $5bae: $03
	cp l                                             ; $5baf: $bd
	add hl, bc                                       ; $5bb0: $09
	ld de, $02e1                                     ; $5bb1: $11 $e1 $02
	inc bc                                           ; $5bb4: $03
	dec de                                           ; $5bb5: $1b
	ret nz                                           ; $5bb6: $c0

	ld bc, $08a0                                     ; $5bb7: $01 $a0 $08
	inc bc                                           ; $5bba: $03
	call nz, $02e1                                   ; $5bbb: $c4 $e1 $02
	inc bc                                           ; $5bbe: $03
	db $fc                                           ; $5bbf: $fc
	db $e4                                           ; $5bc0: $e4
	nop                                              ; $5bc1: $00
	and a                                            ; $5bc2: $a7
	inc bc                                           ; $5bc3: $03
	call nc, $1109                                   ; $5bc4: $d4 $09 $11
	pop hl                                           ; $5bc7: $e1
	ld [bc], a                                       ; $5bc8: $02
	inc bc                                           ; $5bc9: $03
	dec de                                           ; $5bca: $1b
	ret nz                                           ; $5bcb: $c0

	ld bc, $08a0                                     ; $5bcc: $01 $a0 $08
	inc bc                                           ; $5bcf: $03
	reti                                             ; $5bd0: $d9


	pop hl                                           ; $5bd1: $e1
	ld [bc], a                                       ; $5bd2: $02
	inc bc                                           ; $5bd3: $03
	db $fc                                           ; $5bd4: $fc
	db $e4                                           ; $5bd5: $e4
	nop                                              ; $5bd6: $00
	sub d                                            ; $5bd7: $92
	jr z, jr_080_5be0                                ; $5bd8: $28 $06

	ret nz                                           ; $5bda: $c0

	ld bc, $08a0                                     ; $5bdb: $01 $a0 $08
	inc bc                                           ; $5bde: $03
	rst SubAFromDE                                          ; $5bdf: $df

jr_080_5be0:
	ccf                                              ; $5be0: $3f
	inc bc                                           ; $5be1: $03
	and $09                                          ; $5be2: $e6 $09
	ld de, $02e1                                     ; $5be4: $11 $e1 $02
	inc bc                                           ; $5be7: $03
	inc de                                           ; $5be8: $13
	ret nz                                           ; $5be9: $c0

	ld bc, $08a0                                     ; $5bea: $01 $a0 $08
	inc bc                                           ; $5bed: $03
	xor $e1                                          ; $5bee: $ee $e1
	ld [bc], a                                       ; $5bf0: $02
	inc bc                                           ; $5bf1: $03
	ld [$00e4], a                                    ; $5bf2: $ea $e4 $00
	ld [hl], h                                       ; $5bf5: $74
	inc bc                                           ; $5bf6: $03
	rst FarCall                                          ; $5bf7: $f7
	add hl, bc                                       ; $5bf8: $09
	ld de, $02e1                                     ; $5bf9: $11 $e1 $02
	inc bc                                           ; $5bfc: $03
	rra                                              ; $5bfd: $1f
	ret nz                                           ; $5bfe: $c0

	ld bc, $08a0                                     ; $5bff: $01 $a0 $08
	inc bc                                           ; $5c02: $03
	rst $38                                          ; $5c03: $ff
	pop hl                                           ; $5c04: $e1
	ld [bc], a                                       ; $5c05: $02
	inc b                                            ; $5c06: $04
	dec b                                            ; $5c07: $05
	db $e4                                           ; $5c08: $e4
	nop                                              ; $5c09: $00
	ld e, a                                          ; $5c0a: $5f
	inc b                                            ; $5c0b: $04
	inc c                                            ; $5c0c: $0c
	add hl, bc                                       ; $5c0d: $09
	ld de, $02e1                                     ; $5c0e: $11 $e1 $02
	inc bc                                           ; $5c11: $03
	rla                                              ; $5c12: $17
	ret nz                                           ; $5c13: $c0

	ld bc, $08a0                                     ; $5c14: $01 $a0 $08
	inc b                                            ; $5c17: $04
	db $10                                           ; $5c18: $10
	pop hl                                           ; $5c19: $e1
	ld [bc], a                                       ; $5c1a: $02
	inc bc                                           ; $5c1b: $03
	di                                               ; $5c1c: $f3
	db $e4                                           ; $5c1d: $e4
	nop                                              ; $5c1e: $00
	ld c, d                                          ; $5c1f: $4a
	jr z, jr_080_5c28                                ; $5c20: $28 $06

	ret nz                                           ; $5c22: $c0

	ld bc, $08a0                                     ; $5c23: $01 $a0 $08
	inc b                                            ; $5c26: $04
	inc d                                            ; $5c27: $14

jr_080_5c28:
	ccf                                              ; $5c28: $3f
	inc b                                            ; $5c29: $04
	dec e                                            ; $5c2a: $1d
	add hl, bc                                       ; $5c2b: $09
	ld de, $02e1                                     ; $5c2c: $11 $e1 $02
	inc bc                                           ; $5c2f: $03
	rla                                              ; $5c30: $17
	ret nz                                           ; $5c31: $c0

	ld bc, $08a0                                     ; $5c32: $01 $a0 $08
	inc b                                            ; $5c35: $04
	ld [hl+], a                                      ; $5c36: $22
	pop hl                                           ; $5c37: $e1
	ld [bc], a                                       ; $5c38: $02
	inc bc                                           ; $5c39: $03
	di                                               ; $5c3a: $f3
	db $e4                                           ; $5c3b: $e4
	nop                                              ; $5c3c: $00
	inc l                                            ; $5c3d: $2c
	inc b                                            ; $5c3e: $04
	dec hl                                           ; $5c3f: $2b
	add hl, bc                                       ; $5c40: $09
	ld de, $02e1                                     ; $5c41: $11 $e1 $02
	inc bc                                           ; $5c44: $03
	dec de                                           ; $5c45: $1b
	ret nz                                           ; $5c46: $c0

	ld bc, $08a0                                     ; $5c47: $01 $a0 $08
	inc b                                            ; $5c4a: $04

jr_080_5c4b:
	cpl                                              ; $5c4b: $2f
	pop hl                                           ; $5c4c: $e1
	ld [bc], a                                       ; $5c4d: $02
	inc bc                                           ; $5c4e: $03
	db $fc                                           ; $5c4f: $fc
	db $e4                                           ; $5c50: $e4
	nop                                              ; $5c51: $00
	rla                                              ; $5c52: $17
	inc b                                            ; $5c53: $04
	inc sp                                           ; $5c54: $33
	add hl, bc                                       ; $5c55: $09
	ld de, $02e1                                     ; $5c56: $11 $e1 $02
	inc bc                                           ; $5c59: $03
	dec de                                           ; $5c5a: $1b
	ret nz                                           ; $5c5b: $c0

	ld bc, $08a0                                     ; $5c5c: $01 $a0 $08
	inc b                                            ; $5c5f: $04
	jr c, @-$1d                                      ; $5c60: $38 $e1

	ld [bc], a                                       ; $5c62: $02
	inc bc                                           ; $5c63: $03
	db $fc                                           ; $5c64: $fc
	db $e4                                           ; $5c65: $e4
	nop                                              ; $5c66: $00
	ld [bc], a                                       ; $5c67: $02
	add hl, bc                                       ; $5c68: $09
	ld c, $c1                                        ; $5c69: $0e $c1
	ld e, c                                          ; $5c6b: $59
	db $e3                                           ; $5c6c: $e3
	nop                                              ; $5c6d: $00
	xor d                                            ; $5c6e: $aa
	ret nz                                           ; $5c6f: $c0

	ld d, [hl]                                       ; $5c70: $56
	rst SubAFromHL                                          ; $5c71: $d7
	call nc, $e5d0                                   ; $5c72: $d4 $d0 $e5
	inc hl                                           ; $5c75: $23
	nop                                              ; $5c76: $00
	nop                                              ; $5c77: $00
	add hl, bc                                       ; $5c78: $09
	jr z, jr_080_5c4b                                ; $5c79: $28 $d0

	add e                                            ; $5c7b: $83
	ld bc, $d0de                                     ; $5c7c: $01 $de $d0
	ret nz                                           ; $5c7f: $c0

	ld bc, $08a0                                     ; $5c80: $01 $a0 $08
	ld [bc], a                                       ; $5c83: $02
	ld sp, hl                                        ; $5c84: $f9
	ret nz                                           ; $5c85: $c0

	ld bc, $01a0                                     ; $5c86: $01 $a0 $01
	inc b                                            ; $5c89: $04
	ld b, d                                          ; $5c8a: $42
	pop bc                                           ; $5c8b: $c1
	ld e, c                                          ; $5c8c: $59
	db $e3                                           ; $5c8d: $e3
	nop                                              ; $5c8e: $00
	or h                                             ; $5c8f: $b4
	and b                                            ; $5c90: $a0
	add b                                            ; $5c91: $80
	and b                                            ; $5c92: $a0
	rla                                              ; $5c93: $17
	nop                                              ; $5c94: $00
	inc bc                                           ; $5c95: $03
	db $e4                                           ; $5c96: $e4
	nop                                              ; $5c97: $00
	dec bc                                           ; $5c98: $0b
	rst $38                                          ; $5c99: $ff
	rlca                                             ; $5c9a: $07
	ld b, b                                          ; $5c9b: $40
	add b                                            ; $5c9c: $80
	and b                                            ; $5c9d: $a0
	rla                                              ; $5c9e: $17
	db $e4                                           ; $5c9f: $e4
	nop                                              ; $5ca0: $00
	ld e, a                                          ; $5ca1: $5f
	jr z, jr_080_5caa                                ; $5ca2: $28 $06

	ret nz                                           ; $5ca4: $c0

	ld bc, $08a0                                     ; $5ca5: $01 $a0 $08
	inc b                                            ; $5ca8: $04
	ld c, b                                          ; $5ca9: $48

jr_080_5caa:
	ld d, h                                          ; $5caa: $54
	inc b                                            ; $5cab: $04
	ld c, [hl]                                       ; $5cac: $4e
	add hl, bc                                       ; $5cad: $09
	ld h, $e1                                        ; $5cae: $26 $e1
	ld [bc], a                                       ; $5cb0: $02
	inc bc                                           ; $5cb1: $03
	dec de                                           ; $5cb2: $1b
	ret nz                                           ; $5cb3: $c0

	ld bc, $08a0                                     ; $5cb4: $01 $a0 $08
	inc b                                            ; $5cb7: $04
	ld d, b                                          ; $5cb8: $50
	ret nz                                           ; $5cb9: $c0

	ld bc, $01a0                                     ; $5cba: $01 $a0 $01
	inc b                                            ; $5cbd: $04
	ld d, a                                          ; $5cbe: $57
	pop hl                                           ; $5cbf: $e1
	ld [bc], a                                       ; $5cc0: $02
	inc bc                                           ; $5cc1: $03
	inc de                                           ; $5cc2: $13
	pop bc                                           ; $5cc3: $c1
	or d                                             ; $5cc4: $b2
	db $e3                                           ; $5cc5: $e3
	nop                                              ; $5cc6: $00
	ld e, e                                          ; $5cc7: $5b
	ret nz                                           ; $5cc8: $c0

	ld bc, $08a0                                     ; $5cc9: $01 $a0 $08
	inc b                                            ; $5ccc: $04
	ld h, c                                          ; $5ccd: $61
	pop hl                                           ; $5cce: $e1
	ld [bc], a                                       ; $5ccf: $02
	inc bc                                           ; $5cd0: $03
	ld [$00e4], a                                    ; $5cd1: $ea $e4 $00
	ld [hl], h                                       ; $5cd4: $74
	inc b                                            ; $5cd5: $04
	ld l, d                                          ; $5cd6: $6a
	add hl, bc                                       ; $5cd7: $09
	ld de, $02e1                                     ; $5cd8: $11 $e1 $02
	inc bc                                           ; $5cdb: $03
	rra                                              ; $5cdc: $1f
	ret nz                                           ; $5cdd: $c0

	ld bc, $08a0                                     ; $5cde: $01 $a0 $08
	inc b                                            ; $5ce1: $04
	ld l, [hl]                                       ; $5ce2: $6e
	pop hl                                           ; $5ce3: $e1
	ld [bc], a                                       ; $5ce4: $02
	inc b                                            ; $5ce5: $04
	dec b                                            ; $5ce6: $05
	db $e4                                           ; $5ce7: $e4
	nop                                              ; $5ce8: $00
	ld e, a                                          ; $5ce9: $5f
	inc b                                            ; $5cea: $04
	halt                                             ; $5ceb: $76
	add hl, bc                                       ; $5cec: $09
	ld de, $02e1                                     ; $5ced: $11 $e1 $02
	inc bc                                           ; $5cf0: $03
	dec de                                           ; $5cf1: $1b
	ret nz                                           ; $5cf2: $c0

	ld bc, $08a0                                     ; $5cf3: $01 $a0 $08
	inc b                                            ; $5cf6: $04
	ld a, a                                          ; $5cf7: $7f
	pop hl                                           ; $5cf8: $e1
	ld [bc], a                                       ; $5cf9: $02
	inc bc                                           ; $5cfa: $03
	db $fc                                           ; $5cfb: $fc
	db $e4                                           ; $5cfc: $e4
	nop                                              ; $5cfd: $00
	ld c, d                                          ; $5cfe: $4a
	jr z, jr_080_5d07                                ; $5cff: $28 $06

	ret nz                                           ; $5d01: $c0

	ld bc, $08a0                                     ; $5d02: $01 $a0 $08
	inc b                                            ; $5d05: $04
	add l                                            ; $5d06: $85

jr_080_5d07:
	ccf                                              ; $5d07: $3f
	inc b                                            ; $5d08: $04
	adc d                                            ; $5d09: $8a
	add hl, bc                                       ; $5d0a: $09
	ld de, $02e1                                     ; $5d0b: $11 $e1 $02
	inc bc                                           ; $5d0e: $03
	inc de                                           ; $5d0f: $13
	ret nz                                           ; $5d10: $c0

	ld bc, $08a0                                     ; $5d11: $01 $a0 $08
	inc b                                            ; $5d14: $04
	adc [hl]                                         ; $5d15: $8e
	pop hl                                           ; $5d16: $e1
	ld [bc], a                                       ; $5d17: $02
	inc bc                                           ; $5d18: $03
	ld [$00e4], a                                    ; $5d19: $ea $e4 $00
	inc l                                            ; $5d1c: $2c
	inc b                                            ; $5d1d: $04
	sbc l                                            ; $5d1e: $9d
	add hl, bc                                       ; $5d1f: $09
	ld de, $02e1                                     ; $5d20: $11 $e1 $02
	inc bc                                           ; $5d23: $03
	dec de                                           ; $5d24: $1b
	ret nz                                           ; $5d25: $c0

	ld bc, $08a0                                     ; $5d26: $01 $a0 $08
	inc b                                            ; $5d29: $04
	and c                                            ; $5d2a: $a1
	pop hl                                           ; $5d2b: $e1
	ld [bc], a                                       ; $5d2c: $02
	inc bc                                           ; $5d2d: $03
	db $fc                                           ; $5d2e: $fc
	db $e4                                           ; $5d2f: $e4
	nop                                              ; $5d30: $00
	rla                                              ; $5d31: $17
	inc b                                            ; $5d32: $04
	xor b                                            ; $5d33: $a8
	add hl, bc                                       ; $5d34: $09
	ld de, $02e1                                     ; $5d35: $11 $e1 $02
	inc bc                                           ; $5d38: $03
	rla                                              ; $5d39: $17
	ret nz                                           ; $5d3a: $c0

	ld bc, $08a0                                     ; $5d3b: $01 $a0 $08
	inc b                                            ; $5d3e: $04
	xor e                                            ; $5d3f: $ab
	pop hl                                           ; $5d40: $e1
	ld [bc], a                                       ; $5d41: $02
	inc bc                                           ; $5d42: $03
	di                                               ; $5d43: $f3
	db $e4                                           ; $5d44: $e4
	nop                                              ; $5d45: $00
	ld [bc], a                                       ; $5d46: $02
	add hl, bc                                       ; $5d47: $09
	ld c, $c1                                        ; $5d48: $0e $c1
	ld e, c                                          ; $5d4a: $59
	db $e3                                           ; $5d4b: $e3
	nop                                              ; $5d4c: $00
	or e                                             ; $5d4d: $b3
	ret nz                                           ; $5d4e: $c0

	ld d, [hl]                                       ; $5d4f: $56
	rst SubAFromHL                                          ; $5d50: $d7
	push de                                          ; $5d51: $d5
	ret nc                                           ; $5d52: $d0

	push hl                                          ; $5d53: $e5
	inc hl                                           ; $5d54: $23
	nop                                              ; $5d55: $00
	nop                                              ; $5d56: $00
	add hl, bc                                       ; $5d57: $09
	inc d                                            ; $5d58: $14
	ret nc                                           ; $5d59: $d0

	add e                                            ; $5d5a: $83
	ld bc, $d0de                                     ; $5d5b: $01 $de $d0
	ret nz                                           ; $5d5e: $c0

	ld bc, $08a0                                     ; $5d5f: $01 $a0 $08
	inc b                                            ; $5d62: $04
	or d                                             ; $5d63: $b2
	ret nz                                           ; $5d64: $c0

	ld bc, $01a0                                     ; $5d65: $01 $a0 $01
	ld [bc], a                                       ; $5d68: $02
	db $fc                                           ; $5d69: $fc
	db $e4                                           ; $5d6a: $e4
	nop                                              ; $5d6b: $00
	ld [bc], a                                       ; $5d6c: $02
	add hl, bc                                       ; $5d6d: $09
	daa                                              ; $5d6e: $27
	pop bc                                           ; $5d6f: $c1
	ld e, c                                          ; $5d70: $59
	db $e3                                           ; $5d71: $e3
	nop                                              ; $5d72: $00
	or [hl]                                          ; $5d73: $b6
	ret nz                                           ; $5d74: $c0

	ld bc, $01a0                                     ; $5d75: $01 $a0 $01

jr_080_5d78:
	inc b                                            ; $5d78: $04
	or a                                             ; $5d79: $b7
	ret nz                                           ; $5d7a: $c0

	ld bc, $08a0                                     ; $5d7b: $01 $a0 $08
	inc b                                            ; $5d7e: $04
	jp $02e1                                         ; $5d7f: $c3 $e1 $02


	rlca                                             ; $5d82: $07
	or [hl]                                          ; $5d83: $b6
	and b                                            ; $5d84: $a0
	add b                                            ; $5d85: $80
	and b                                            ; $5d86: $a0
	jr jr_080_5d89                                   ; $5d87: $18 $00

jr_080_5d89:
	inc bc                                           ; $5d89: $03
	db $e4                                           ; $5d8a: $e4
	nop                                              ; $5d8b: $00
	dec bc                                           ; $5d8c: $0b
	rst $38                                          ; $5d8d: $ff
	rlca                                             ; $5d8e: $07
	ld b, b                                          ; $5d8f: $40
	add b                                            ; $5d90: $80
	and b                                            ; $5d91: $a0
	jr jr_080_5d78                                   ; $5d92: $18 $e4

	nop                                              ; $5d94: $00
	ld c, d                                          ; $5d95: $4a
	jr z, @+$08                                      ; $5d96: $28 $06

	ret nz                                           ; $5d98: $c0

	ld bc, $08a0                                     ; $5d99: $01 $a0 $08
	inc b                                            ; $5d9c: $04
	add $3f                                          ; $5d9d: $c6 $3f
	inc b                                            ; $5d9f: $04
	ret nc                                           ; $5da0: $d0

	add hl, bc                                       ; $5da1: $09
	ld de, $02e1                                     ; $5da2: $11 $e1 $02
	inc bc                                           ; $5da5: $03
	inc de                                           ; $5da6: $13
	ret nz                                           ; $5da7: $c0

	ld bc, $08a0                                     ; $5da8: $01 $a0 $08
	inc b                                            ; $5dab: $04
	jp nc, $02e1                                     ; $5dac: $d2 $e1 $02

	inc bc                                           ; $5daf: $03
	ld [$00e4], a                                    ; $5db0: $ea $e4 $00
	sub d                                            ; $5db3: $92
	inc b                                            ; $5db4: $04
	ldh [c], a                                       ; $5db5: $e2
	add hl, bc                                       ; $5db6: $09
	ld de, $02e1                                     ; $5db7: $11 $e1 $02
	inc bc                                           ; $5dba: $03
	rra                                              ; $5dbb: $1f
	ret nz                                           ; $5dbc: $c0

	ld bc, $08a0                                     ; $5dbd: $01 $a0 $08
	inc b                                            ; $5dc0: $04
	and $e1                                          ; $5dc1: $e6 $e1
	ld [bc], a                                       ; $5dc3: $02
	inc b                                            ; $5dc4: $04
	dec b                                            ; $5dc5: $05
	db $e4                                           ; $5dc6: $e4
	nop                                              ; $5dc7: $00
	ld a, l                                          ; $5dc8: $7d
	inc b                                            ; $5dc9: $04
	ldh a, [c]                                       ; $5dca: $f2
	add hl, bc                                       ; $5dcb: $09
	ld de, $02e1                                     ; $5dcc: $11 $e1 $02
	inc bc                                           ; $5dcf: $03
	rla                                              ; $5dd0: $17
	ret nz                                           ; $5dd1: $c0

	ld bc, $08a0                                     ; $5dd2: $01 $a0 $08
	inc b                                            ; $5dd5: $04
	db $f4                                           ; $5dd6: $f4
	pop hl                                           ; $5dd7: $e1
	ld [bc], a                                       ; $5dd8: $02
	inc bc                                           ; $5dd9: $03
	di                                               ; $5dda: $f3
	db $e4                                           ; $5ddb: $e4
	nop                                              ; $5ddc: $00
	ld l, b                                          ; $5ddd: $68
	jr z, jr_080_5de6                                ; $5dde: $28 $06

	ret nz                                           ; $5de0: $c0

	ld bc, $08a0                                     ; $5de1: $01 $a0 $08
	inc b                                            ; $5de4: $04
	rst $38                                          ; $5de5: $ff

jr_080_5de6:
	ld e, l                                          ; $5de6: $5d
	ret nz                                           ; $5de7: $c0

	ei                                               ; $5de8: $fb
	ret nz                                           ; $5de9: $c0

	add e                                            ; $5dea: $83
	jp nc, $78e0                                     ; $5deb: $d2 $e0 $78

	dec d                                            ; $5dee: $15
	dec b                                            ; $5def: $05
	ld b, $09                                        ; $5df0: $06 $09
	ld de, $02e1                                     ; $5df2: $11 $e1 $02
	inc bc                                           ; $5df5: $03
	rla                                              ; $5df6: $17
	ret nz                                           ; $5df7: $c0

	ld bc, $08a0                                     ; $5df8: $01 $a0 $08
	dec b                                            ; $5dfb: $05
	ld [$02e1], sp                                   ; $5dfc: $08 $e1 $02
	inc bc                                           ; $5dff: $03
	di                                               ; $5e00: $f3
	db $e4                                           ; $5e01: $e4
	nop                                              ; $5e02: $00
	ld b, d                                          ; $5e03: $42
	dec d                                            ; $5e04: $15
	dec b                                            ; $5e05: $05
	ld c, $09                                        ; $5e06: $0e $09
	ld de, $02e1                                     ; $5e08: $11 $e1 $02
	inc bc                                           ; $5e0b: $03
	rra                                              ; $5e0c: $1f
	ret nz                                           ; $5e0d: $c0

	ld bc, $08a0                                     ; $5e0e: $01 $a0 $08
	dec b                                            ; $5e11: $05
	db $10                                           ; $5e12: $10
	pop hl                                           ; $5e13: $e1
	ld [bc], a                                       ; $5e14: $02
	inc b                                            ; $5e15: $04
	dec b                                            ; $5e16: $05
	db $e4                                           ; $5e17: $e4
	nop                                              ; $5e18: $00
	inc l                                            ; $5e19: $2c
	dec b                                            ; $5e1a: $05
	dec d                                            ; $5e1b: $15
	add hl, bc                                       ; $5e1c: $09
	ld de, $02e1                                     ; $5e1d: $11 $e1 $02
	inc bc                                           ; $5e20: $03
	rra                                              ; $5e21: $1f
	ret nz                                           ; $5e22: $c0

	ld bc, $08a0                                     ; $5e23: $01 $a0 $08
	dec b                                            ; $5e26: $05
	rla                                              ; $5e27: $17
	pop hl                                           ; $5e28: $e1
	ld [bc], a                                       ; $5e29: $02
	inc b                                            ; $5e2a: $04
	dec b                                            ; $5e2b: $05
	db $e4                                           ; $5e2c: $e4
	nop                                              ; $5e2d: $00
	rla                                              ; $5e2e: $17
	dec b                                            ; $5e2f: $05
	dec e                                            ; $5e30: $1d
	add hl, bc                                       ; $5e31: $09
	ld de, $02e1                                     ; $5e32: $11 $e1 $02
	inc bc                                           ; $5e35: $03
	dec de                                           ; $5e36: $1b
	ret nz                                           ; $5e37: $c0

	ld bc, $08a0                                     ; $5e38: $01 $a0 $08
	dec b                                            ; $5e3b: $05
	rra                                              ; $5e3c: $1f
	pop hl                                           ; $5e3d: $e1
	ld [bc], a                                       ; $5e3e: $02
	inc bc                                           ; $5e3f: $03
	db $fc                                           ; $5e40: $fc
	db $e4                                           ; $5e41: $e4
	nop                                              ; $5e42: $00
	ld [bc], a                                       ; $5e43: $02
	add hl, bc                                       ; $5e44: $09
	ld c, $c1                                        ; $5e45: $0e $c1
	ld e, c                                          ; $5e47: $59
	db $e3                                           ; $5e48: $e3
	nop                                              ; $5e49: $00
	or l                                             ; $5e4a: $b5
	ret nz                                           ; $5e4b: $c0

	ld d, [hl]                                       ; $5e4c: $56
	rst SubAFromHL                                          ; $5e4d: $d7
	sub $d0                                          ; $5e4e: $d6 $d0
	push hl                                          ; $5e50: $e5
	inc hl                                           ; $5e51: $23
	nop                                              ; $5e52: $00
	nop                                              ; $5e53: $00
	add hl, bc                                       ; $5e54: $09
	ld d, d                                          ; $5e55: $52
	ret nz                                           ; $5e56: $c0

	ld bc, $08a0                                     ; $5e57: $01 $a0 $08
	dec b                                            ; $5e5a: $05
	inc h                                            ; $5e5b: $24
	ret nz                                           ; $5e5c: $c0

	ld bc, $01a0                                     ; $5e5d: $01 $a0 $01
	ld [bc], a                                       ; $5e60: $02
	db $fc                                           ; $5e61: $fc
	add e                                            ; $5e62: $83
	adc e                                            ; $5e63: $8b
	ld [bc], a                                       ; $5e64: $02
	ld b, d                                          ; $5e65: $42
	ld [bc], a                                       ; $5e66: $02
	or b                                             ; $5e67: $b0
	ld [hl], e                                       ; $5e68: $73
	ld [$83d0], sp                                   ; $5e69: $08 $d0 $83
	ld bc, $d1de                                     ; $5e6c: $01 $de $d1
	db $e4                                           ; $5e6f: $e4
	nop                                              ; $5e70: $00
	ret c                                            ; $5e71: $d8

	ld [bc], a                                       ; $5e72: $02
	or b                                             ; $5e73: $b0
	ld l, a                                          ; $5e74: $6f
	ld [$83d0], sp                                   ; $5e75: $08 $d0 $83
	ld bc, $d2de                                     ; $5e78: $01 $de $d2
	db $e4                                           ; $5e7b: $e4
	ld bc, $0232                                     ; $5e7c: $01 $32 $02
	or b                                             ; $5e7f: $b0
	ld l, h                                          ; $5e80: $6c
	ld [$83d0], sp                                   ; $5e81: $08 $d0 $83
	ld bc, $d3de                                     ; $5e84: $01 $de $d3
	db $e4                                           ; $5e87: $e4
	ld bc, $0080                                     ; $5e88: $01 $80 $00
	inc e                                            ; $5e8b: $1c
	ret nc                                           ; $5e8c: $d0

	add e                                            ; $5e8d: $83
	ld bc, $d0de                                     ; $5e8e: $01 $de $d0
	pop bc                                           ; $5e91: $c1
	ld e, c                                          ; $5e92: $59
	db $e3                                           ; $5e93: $e3
	nop                                              ; $5e94: $00
	sbc e                                            ; $5e95: $9b
	and b                                            ; $5e96: $a0
	add b                                            ; $5e97: $80
	and b                                            ; $5e98: $a0
	add hl, de                                       ; $5e99: $19
	nop                                              ; $5e9a: $00
	inc bc                                           ; $5e9b: $03
	db $e4                                           ; $5e9c: $e4
	nop                                              ; $5e9d: $00
	dec bc                                           ; $5e9e: $0b
	rst $38                                          ; $5e9f: $ff
	rlca                                             ; $5ea0: $07
	ld b, b                                          ; $5ea1: $40
	add b                                            ; $5ea2: $80
	and b                                            ; $5ea3: $a0
	add hl, de                                       ; $5ea4: $19
	db $e4                                           ; $5ea5: $e4
	nop                                              ; $5ea6: $00
	ld e, d                                          ; $5ea7: $5a
	jr z, jr_080_5eb0                                ; $5ea8: $28 $06

	ret nz                                           ; $5eaa: $c0

	ld bc, $08a0                                     ; $5eab: $01 $a0 $08
	dec b                                            ; $5eae: $05
	ld a, [hl+]                                      ; $5eaf: $2a

jr_080_5eb0:
	ld c, a                                          ; $5eb0: $4f
	dec b                                            ; $5eb1: $05
	cpl                                              ; $5eb2: $2f
	add hl, bc                                       ; $5eb3: $09
	ld de, $02e1                                     ; $5eb4: $11 $e1 $02
	inc bc                                           ; $5eb7: $03
	rla                                              ; $5eb8: $17
	ret nz                                           ; $5eb9: $c0

	ld bc, $08a0                                     ; $5eba: $01 $a0 $08
	dec b                                            ; $5ebd: $05
	ld sp, $02e1                                     ; $5ebe: $31 $e1 $02
	inc bc                                           ; $5ec1: $03
	ld [$01e4], a                                    ; $5ec2: $ea $e4 $01
	xor h                                            ; $5ec5: $ac
	dec b                                            ; $5ec6: $05
	dec [hl]                                         ; $5ec7: $35
	add hl, bc                                       ; $5ec8: $09
	ld hl, $02e1                                     ; $5ec9: $21 $e1 $02
	inc bc                                           ; $5ecc: $03
	rra                                              ; $5ecd: $1f
	ret nz                                           ; $5ece: $c0

	ld bc, $08a0                                     ; $5ecf: $01 $a0 $08
	dec b                                            ; $5ed2: $05
	scf                                              ; $5ed3: $37
	ret nz                                           ; $5ed4: $c0

	ld bc, $01a0                                     ; $5ed5: $01 $a0 $01
	dec b                                            ; $5ed8: $05
	ld b, l                                          ; $5ed9: $45
	pop hl                                           ; $5eda: $e1
	ld [bc], a                                       ; $5edb: $02
	inc bc                                           ; $5edc: $03
	rla                                              ; $5edd: $17
	ret nz                                           ; $5ede: $c0

	ld bc, $08a0                                     ; $5edf: $01 $a0 $08
	dec b                                            ; $5ee2: $05
	ld d, e                                          ; $5ee3: $53
	pop hl                                           ; $5ee4: $e1
	ld [bc], a                                       ; $5ee5: $02
	inc bc                                           ; $5ee6: $03
	db $fc                                           ; $5ee7: $fc
	db $e4                                           ; $5ee8: $e4
	ld bc, $0587                                     ; $5ee9: $01 $87 $05
	ld e, b                                          ; $5eec: $58
	add hl, bc                                       ; $5eed: $09
	ld de, $02e1                                     ; $5eee: $11 $e1 $02
	inc bc                                           ; $5ef1: $03
	dec de                                           ; $5ef2: $1b
	ret nz                                           ; $5ef3: $c0

	ld bc, $08a0                                     ; $5ef4: $01 $a0 $08
	dec b                                            ; $5ef7: $05
	ld e, l                                          ; $5ef8: $5d
	pop hl                                           ; $5ef9: $e1
	ld [bc], a                                       ; $5efa: $02
	inc bc                                           ; $5efb: $03
	db $fc                                           ; $5efc: $fc
	db $e4                                           ; $5efd: $e4
	ld bc, $2872                                     ; $5efe: $01 $72 $28
	ld b, $c0                                        ; $5f01: $06 $c0
	ld bc, $08a0                                     ; $5f03: $01 $a0 $08
	dec b                                            ; $5f06: $05
	ld l, c                                          ; $5f07: $69
	ccf                                              ; $5f08: $3f
	dec b                                            ; $5f09: $05
	ld [hl], d                                       ; $5f0a: $72
	add hl, bc                                       ; $5f0b: $09
	ld de, $02e1                                     ; $5f0c: $11 $e1 $02
	inc bc                                           ; $5f0f: $03
	inc de                                           ; $5f10: $13
	ret nz                                           ; $5f11: $c0

	ld bc, $08a0                                     ; $5f12: $01 $a0 $08
	dec b                                            ; $5f15: $05
	ld a, e                                          ; $5f16: $7b
	pop hl                                           ; $5f17: $e1
	ld [bc], a                                       ; $5f18: $02
	inc bc                                           ; $5f19: $03
	ld [$01e4], a                                    ; $5f1a: $ea $e4 $01
	ld d, h                                          ; $5f1d: $54
	dec b                                            ; $5f1e: $05
	add h                                            ; $5f1f: $84
	add hl, bc                                       ; $5f20: $09
	ld de, $02e1                                     ; $5f21: $11 $e1 $02
	inc bc                                           ; $5f24: $03
	dec de                                           ; $5f25: $1b
	ret nz                                           ; $5f26: $c0

	ld bc, $08a0                                     ; $5f27: $01 $a0 $08
	dec b                                            ; $5f2a: $05
	adc c                                            ; $5f2b: $89
	pop hl                                           ; $5f2c: $e1
	ld [bc], a                                       ; $5f2d: $02
	inc bc                                           ; $5f2e: $03
	db $fc                                           ; $5f2f: $fc
	db $e4                                           ; $5f30: $e4
	ld bc, $053f                                     ; $5f31: $01 $3f $05
	sub [hl]                                         ; $5f34: $96
	add hl, bc                                       ; $5f35: $09
	ld de, $02e1                                     ; $5f36: $11 $e1 $02
	inc bc                                           ; $5f39: $03
	rla                                              ; $5f3a: $17
	ret nz                                           ; $5f3b: $c0

	ld bc, $08a0                                     ; $5f3c: $01 $a0 $08
	dec b                                            ; $5f3f: $05
	sbc [hl]                                         ; $5f40: $9e
	pop hl                                           ; $5f41: $e1
	ld [bc], a                                       ; $5f42: $02
	inc bc                                           ; $5f43: $03
	di                                               ; $5f44: $f3
	db $e4                                           ; $5f45: $e4
	ld bc, $2e2a                                     ; $5f46: $01 $2a $2e
	dec b                                            ; $5f49: $05
	pop bc                                           ; $5f4a: $c1
	ld e, c                                          ; $5f4b: $59
	db $e3                                           ; $5f4c: $e3
	nop                                              ; $5f4d: $00
	sbc h                                            ; $5f4e: $9c
	ld e, [hl]                                       ; $5f4f: $5e
	add b                                            ; $5f50: $80
	and b                                            ; $5f51: $a0
	ld a, [de]                                       ; $5f52: $1a
	nop                                              ; $5f53: $00
	jr z, jr_080_5f5c                                ; $5f54: $28 $06

	ret nz                                           ; $5f56: $c0

	ld bc, $08a0                                     ; $5f57: $01 $a0 $08
	dec b                                            ; $5f5a: $05
	xor d                                            ; $5f5b: $aa

jr_080_5f5c:
	ld c, e                                          ; $5f5c: $4b
	dec b                                            ; $5f5d: $05
	or [hl]                                          ; $5f5e: $b6
	add hl, bc                                       ; $5f5f: $09
	ld de, $02e1                                     ; $5f60: $11 $e1 $02
	inc bc                                           ; $5f63: $03
	rla                                              ; $5f64: $17
	ret nz                                           ; $5f65: $c0

	ld bc, $08a0                                     ; $5f66: $01 $a0 $08
	dec b                                            ; $5f69: $05
	cp b                                             ; $5f6a: $b8
	pop hl                                           ; $5f6b: $e1
	ld [bc], a                                       ; $5f6c: $02
	inc bc                                           ; $5f6d: $03
	di                                               ; $5f6e: $f3
	db $e4                                           ; $5f6f: $e4
	ld bc, $0500                                     ; $5f70: $01 $00 $05
	jp $1d09                                         ; $5f73: $c3 $09 $1d


	pop hl                                           ; $5f76: $e1
	ld [bc], a                                       ; $5f77: $02
	inc bc                                           ; $5f78: $03
	rra                                              ; $5f79: $1f
	ret nz                                           ; $5f7a: $c0

	ld bc, $08a0                                     ; $5f7b: $01 $a0 $08
	dec b                                            ; $5f7e: $05
	jp z, $01c0                                      ; $5f7f: $ca $c0 $01

	and b                                            ; $5f82: $a0
	ld bc, $d705                                     ; $5f83: $01 $05 $d7
	ret nz                                           ; $5f86: $c0

	ld bc, $08a0                                     ; $5f87: $01 $a0 $08
	dec b                                            ; $5f8a: $05
	jp c, $02e1                                      ; $5f8b: $da $e1 $02

	inc b                                            ; $5f8e: $04
	dec b                                            ; $5f8f: $05
	db $e4                                           ; $5f90: $e4
	nop                                              ; $5f91: $00
	rst SubAFromDE                                          ; $5f92: $df
	dec b                                            ; $5f93: $05
	add sp, $09                                      ; $5f94: $e8 $09
	ld de, $02e1                                     ; $5f96: $11 $e1 $02
	inc bc                                           ; $5f99: $03
	dec de                                           ; $5f9a: $1b
	ret nz                                           ; $5f9b: $c0

	ld bc, $08a0                                     ; $5f9c: $01 $a0 $08
	dec b                                            ; $5f9f: $05
	db $eb                                           ; $5fa0: $eb
	pop hl                                           ; $5fa1: $e1
	ld [bc], a                                       ; $5fa2: $02
	inc bc                                           ; $5fa3: $03
	db $fc                                           ; $5fa4: $fc
	db $e4                                           ; $5fa5: $e4
	nop                                              ; $5fa6: $00
	jp z, $09ff                                      ; $5fa7: $ca $ff $09

	inc bc                                           ; $5faa: $03
	ldh [rP1], a                                     ; $5fab: $e0 $00
	or [hl]                                          ; $5fad: $b6
	ld l, $05                                        ; $5fae: $2e $05
	pop bc                                           ; $5fb0: $c1
	ld e, c                                          ; $5fb1: $59
	db $e3                                           ; $5fb2: $e3
	nop                                              ; $5fb3: $00
	sbc l                                            ; $5fb4: $9d
	ld d, d                                          ; $5fb5: $52
	add b                                            ; $5fb6: $80
	and b                                            ; $5fb7: $a0
	dec de                                           ; $5fb8: $1b
	nop                                              ; $5fb9: $00
	jr z, jr_080_5fc2                                ; $5fba: $28 $06

	ret nz                                           ; $5fbc: $c0

	ld bc, $08a0                                     ; $5fbd: $01 $a0 $08
	dec b                                            ; $5fc0: $05
	ldh a, [c]                                       ; $5fc1: $f2

jr_080_5fc2:
	ccf                                              ; $5fc2: $3f
	dec b                                            ; $5fc3: $05
	ld hl, sp+$09                                    ; $5fc4: $f8 $09
	ld de, $02e1                                     ; $5fc6: $11 $e1 $02
	inc bc                                           ; $5fc9: $03
	inc de                                           ; $5fca: $13
	ret nz                                           ; $5fcb: $c0

	ld bc, $08a0                                     ; $5fcc: $01 $a0 $08
	dec b                                            ; $5fcf: $05
	ld a, [$02e1]                                    ; $5fd0: $fa $e1 $02
	inc bc                                           ; $5fd3: $03
	ld [$00e4], a                                    ; $5fd4: $ea $e4 $00
	sbc d                                            ; $5fd7: $9a
	ld b, $04                                        ; $5fd8: $06 $04
	add hl, bc                                       ; $5fda: $09
	ld de, $02e1                                     ; $5fdb: $11 $e1 $02
	inc bc                                           ; $5fde: $03
	dec de                                           ; $5fdf: $1b
	ret nz                                           ; $5fe0: $c0

	ld bc, $08a0                                     ; $5fe1: $01 $a0 $08
	ld b, $06                                        ; $5fe4: $06 $06
	pop hl                                           ; $5fe6: $e1
	ld [bc], a                                       ; $5fe7: $02
	inc bc                                           ; $5fe8: $03
	db $fc                                           ; $5fe9: $fc
	db $e4                                           ; $5fea: $e4
	nop                                              ; $5feb: $00
	add l                                            ; $5fec: $85
	ld b, $11                                        ; $5fed: $06 $11
	add hl, bc                                       ; $5fef: $09
	ld de, $02e1                                     ; $5ff0: $11 $e1 $02
	inc bc                                           ; $5ff3: $03
	dec de                                           ; $5ff4: $1b
	ret nz                                           ; $5ff5: $c0

	ld bc, $08a0                                     ; $5ff6: $01 $a0 $08
	ld b, $13                                        ; $5ff9: $06 $13
	pop hl                                           ; $5ffb: $e1
	ld [bc], a                                       ; $5ffc: $02
	inc bc                                           ; $5ffd: $03
	db $fc                                           ; $5ffe: $fc
	db $e4                                           ; $5fff: $e4
	nop                                              ; $6000: $00
	ld [hl], b                                       ; $6001: $70
	rst $38                                          ; $6002: $ff
	add hl, bc                                       ; $6003: $09
	inc bc                                           ; $6004: $03
	ldh [rP1], a                                     ; $6005: $e0 $00
	ld e, h                                          ; $6007: $5c
	ld l, $05                                        ; $6008: $2e $05
	pop bc                                           ; $600a: $c1
	ld e, c                                          ; $600b: $59
	db $e3                                           ; $600c: $e3
	nop                                              ; $600d: $00
	sbc [hl]                                         ; $600e: $9e
	ld d, d                                          ; $600f: $52
	add b                                            ; $6010: $80
	and b                                            ; $6011: $a0
	inc e                                            ; $6012: $1c
	nop                                              ; $6013: $00
	jr z, jr_080_601c                                ; $6014: $28 $06

	ret nz                                           ; $6016: $c0

	ld bc, $08a0                                     ; $6017: $01 $a0 $08
	ld b, $1c                                        ; $601a: $06 $1c

jr_080_601c:
	ccf                                              ; $601c: $3f
	ld b, $23                                        ; $601d: $06 $23
	add hl, bc                                       ; $601f: $09
	ld de, $02e1                                     ; $6020: $11 $e1 $02
	inc bc                                           ; $6023: $03
	inc de                                           ; $6024: $13
	ret nz                                           ; $6025: $c0

	ld bc, $08a0                                     ; $6026: $01 $a0 $08
	ld b, $28                                        ; $6029: $06 $28
	pop hl                                           ; $602b: $e1
	ld [bc], a                                       ; $602c: $02
	inc bc                                           ; $602d: $03
	ld [$00e4], a                                    ; $602e: $ea $e4 $00
	ld b, b                                          ; $6031: $40
	ld b, $36                                        ; $6032: $06 $36
	add hl, bc                                       ; $6034: $09
	ld de, $02e1                                     ; $6035: $11 $e1 $02
	inc bc                                           ; $6038: $03
	rra                                              ; $6039: $1f
	ret nz                                           ; $603a: $c0

	ld bc, $08a0                                     ; $603b: $01 $a0 $08
	ld b, $3c                                        ; $603e: $06 $3c
	pop hl                                           ; $6040: $e1
	ld [bc], a                                       ; $6041: $02
	inc b                                            ; $6042: $04
	dec b                                            ; $6043: $05
	db $e4                                           ; $6044: $e4
	nop                                              ; $6045: $00
	dec hl                                           ; $6046: $2b
	ld b, $47                                        ; $6047: $06 $47
	add hl, bc                                       ; $6049: $09
	ld de, $02e1                                     ; $604a: $11 $e1 $02
	inc bc                                           ; $604d: $03
	dec de                                           ; $604e: $1b
	ret nz                                           ; $604f: $c0

	ld bc, $08a0                                     ; $6050: $01 $a0 $08
	ld b, $4d                                        ; $6053: $06 $4d
	pop hl                                           ; $6055: $e1
	ld [bc], a                                       ; $6056: $02
	inc bc                                           ; $6057: $03
	db $fc                                           ; $6058: $fc
	db $e4                                           ; $6059: $e4
	nop                                              ; $605a: $00
	ld d, $ff                                        ; $605b: $16 $ff
	add hl, bc                                       ; $605d: $09
	inc bc                                           ; $605e: $03
	ldh [rP1], a                                     ; $605f: $e0 $00
	ld [bc], a                                       ; $6061: $02
	dec c                                            ; $6062: $0d
	ret nz                                           ; $6063: $c0

	ld bc, $08a0                                     ; $6064: $01 $a0 $08
	ld b, $55                                        ; $6067: $06 $55
	pop hl                                           ; $6069: $e1
	ld [bc], a                                       ; $606a: $02
	inc b                                            ; $606b: $04
	dec b                                            ; $606c: $05
	db $e4                                           ; $606d: $e4
	nop                                              ; $606e: $00
	ld [bc], a                                       ; $606f: $02
	add hl, bc                                       ; $6070: $09
	cpl                                              ; $6071: $2f
	pop bc                                           ; $6072: $c1
	ld e, c                                          ; $6073: $59
	db $e3                                           ; $6074: $e3
	nop                                              ; $6075: $00
	sbc d                                            ; $6076: $9a
	add e                                            ; $6077: $83
	adc e                                            ; $6078: $8b
	ld [bc], a                                       ; $6079: $02
	ld b, d                                          ; $607a: $42
	ld [bc], a                                       ; $607b: $02
	or b                                             ; $607c: $b0
	ld [hl], e                                       ; $607d: $73
	dec b                                            ; $607e: $05
	ret nz                                           ; $607f: $c0

	ld d, [hl]                                       ; $6080: $56
	rst SubAFromHL                                          ; $6081: $d7
	rst SubAFromHL                                          ; $6082: $d7
	pop de                                           ; $6083: $d1
	ld [bc], a                                       ; $6084: $02
	or b                                             ; $6085: $b0
	ld l, a                                          ; $6086: $6f
	dec b                                            ; $6087: $05
	ret nz                                           ; $6088: $c0

	ld d, [hl]                                       ; $6089: $56
	rst SubAFromHL                                          ; $608a: $d7
	rst SubAFromHL                                          ; $608b: $d7
	jp nc, $b002                                     ; $608c: $d2 $02 $b0

	ld l, h                                          ; $608f: $6c
	dec b                                            ; $6090: $05
	ret nz                                           ; $6091: $c0

	ld d, [hl]                                       ; $6092: $56
	rst SubAFromHL                                          ; $6093: $d7
	rst SubAFromHL                                          ; $6094: $d7
	db $d3                                           ; $6095: $d3
	nop                                              ; $6096: $00
	dec b                                            ; $6097: $05
	ret nz                                           ; $6098: $c0

	ld d, [hl]                                       ; $6099: $56
	rst SubAFromHL                                          ; $609a: $d7
	rst SubAFromHL                                          ; $609b: $d7
	ret nc                                           ; $609c: $d0

	push hl                                          ; $609d: $e5
	inc hl                                           ; $609e: $23
	nop                                              ; $609f: $00
	nop                                              ; $60a0: $00
	add hl, bc                                       ; $60a1: $09
	inc l                                            ; $60a2: $2c
	ret nc                                           ; $60a3: $d0

	add e                                            ; $60a4: $83
	ld bc, $d0de                                     ; $60a5: $01 $de $d0
	pop bc                                           ; $60a8: $c1
	jp z, $d7d0                                      ; $60a9: $ca $d0 $d7

	ret nz                                           ; $60ac: $c0

	ld bc, $08a0                                     ; $60ad: $01 $a0 $08
	dec b                                            ; $60b0: $05
	inc h                                            ; $60b1: $24
	ret nz                                           ; $60b2: $c0

	ld bc, $01a0                                     ; $60b3: $01 $a0 $01
	ld [bc], a                                       ; $60b6: $02
	db $fc                                           ; $60b7: $fc
	pop bc                                           ; $60b8: $c1

jr_080_60b9:
	ld e, c                                          ; $60b9: $59
	db $e3                                           ; $60ba: $e3
	nop                                              ; $60bb: $00
	and l                                            ; $60bc: $a5
	and b                                            ; $60bd: $a0
	add b                                            ; $60be: $80
	and b                                            ; $60bf: $a0
	dec e                                            ; $60c0: $1d
	nop                                              ; $60c1: $00
	inc bc                                           ; $60c2: $03
	db $e4                                           ; $60c3: $e4
	nop                                              ; $60c4: $00
	dec bc                                           ; $60c5: $0b
	rst $38                                          ; $60c6: $ff
	rlca                                             ; $60c7: $07
	ld b, b                                          ; $60c8: $40
	add b                                            ; $60c9: $80
	and b                                            ; $60ca: $a0
	dec e                                            ; $60cb: $1d
	db $e4                                           ; $60cc: $e4
	nop                                              ; $60cd: $00
	adc [hl]                                         ; $60ce: $8e
	jr z, jr_080_60d7                                ; $60cf: $28 $06

	ret nz                                           ; $60d1: $c0

	ld bc, $08a0                                     ; $60d2: $01 $a0 $08
	ld b, $63                                        ; $60d5: $06 $63

jr_080_60d7:
	add e                                            ; $60d7: $83
	ld b, $6e                                        ; $60d8: $06 $6e
	add hl, bc                                       ; $60da: $09
	ld b, e                                          ; $60db: $43
	pop hl                                           ; $60dc: $e1
	ld [bc], a                                       ; $60dd: $02
	inc bc                                           ; $60de: $03
	rla                                              ; $60df: $17
	ret nz                                           ; $60e0: $c0

	ld bc, $08a0                                     ; $60e1: $01 $a0 $08
	ld b, $70                                        ; $60e4: $06 $70
	ret nz                                           ; $60e6: $c0

	ld bc, $01a0                                     ; $60e7: $01 $a0 $01
	ld b, $77                                        ; $60ea: $06 $77
	ret nz                                           ; $60ec: $c0

	ld bc, $08a0                                     ; $60ed: $01 $a0 $08
	ld b, $7c                                        ; $60f0: $06 $7c
	and b                                            ; $60f2: $a0
	add b                                            ; $60f3: $80
	and b                                            ; $60f4: $a0
	ld e, $00                                        ; $60f5: $1e $00
	jr jr_080_60b9                                   ; $60f7: $18 $c0

	ld bc, $08a0                                     ; $60f9: $01 $a0 $08
	ld b, $8f                                        ; $60fc: $06 $8f
	ret nz                                           ; $60fe: $c0

	ld bc, $01a0                                     ; $60ff: $01 $a0 $01
	ld b, $92                                        ; $6102: $06 $92
	ret nz                                           ; $6104: $c0

	ld bc, $08a0                                     ; $6105: $01 $a0 $08
	ld b, $95                                        ; $6108: $06 $95
	ret nz                                           ; $610a: $c0

	ld bc, $01a0                                     ; $610b: $01 $a0 $01
	ld b, $a2                                        ; $610e: $06 $a2
	rst $38                                          ; $6110: $ff
	ld b, $c0                                        ; $6111: $06 $c0
	ld bc, $01a0                                     ; $6113: $01 $a0 $01
	ld b, $b1                                        ; $6116: $06 $b1
	pop hl                                           ; $6118: $e1
	ld [bc], a                                       ; $6119: $02
	inc bc                                           ; $611a: $03
	ld [$00e4], a                                    ; $611b: $ea $e4 $00
	add [hl]                                         ; $611e: $86
	ld b, $b9                                        ; $611f: $06 $b9
	add hl, bc                                       ; $6121: $09
	rla                                              ; $6122: $17
	pop hl                                           ; $6123: $e1
	ld [bc], a                                       ; $6124: $02
	inc bc                                           ; $6125: $03
	rra                                              ; $6126: $1f
	ret nz                                           ; $6127: $c0

	ld bc, $08a0                                     ; $6128: $01 $a0 $08
	ld b, $bb                                        ; $612b: $06 $bb
	ret nz                                           ; $612d: $c0

	ld bc, $01a0                                     ; $612e: $01 $a0 $01
	ld b, $c9                                        ; $6131: $06 $c9
	pop hl                                           ; $6133: $e1
	ld [bc], a                                       ; $6134: $02
	inc b                                            ; $6135: $04
	dec b                                            ; $6136: $05
	db $e4                                           ; $6137: $e4
	nop                                              ; $6138: $00
	ld l, e                                          ; $6139: $6b
	ld b, $cd                                        ; $613a: $06 $cd
	add hl, bc                                       ; $613c: $09
	dec e                                            ; $613d: $1d
	pop hl                                           ; $613e: $e1
	ld [bc], a                                       ; $613f: $02
	inc bc                                           ; $6140: $03
	rla                                              ; $6141: $17
	ret nz                                           ; $6142: $c0

	ld bc, $08a0                                     ; $6143: $01 $a0 $08
	ld b, $cf                                        ; $6146: $06 $cf
	ret nz                                           ; $6148: $c0

	ld bc, $01a0                                     ; $6149: $01 $a0 $01
	ld b, $d7                                        ; $614c: $06 $d7
	ret nz                                           ; $614e: $c0

	ld bc, $08a0                                     ; $614f: $01 $a0 $08
	ld b, $db                                        ; $6152: $06 $db
	pop hl                                           ; $6154: $e1
	ld [bc], a                                       ; $6155: $02
	inc bc                                           ; $6156: $03
	di                                               ; $6157: $f3
	db $e4                                           ; $6158: $e4
	nop                                              ; $6159: $00
	ld c, d                                          ; $615a: $4a
	jr z, jr_080_6163                                ; $615b: $28 $06

	ret nz                                           ; $615d: $c0

	ld bc, $08a0                                     ; $615e: $01 $a0 $08
	ld b, $ec                                        ; $6161: $06 $ec

jr_080_6163:
	ccf                                              ; $6163: $3f
	ld b, $f3                                        ; $6164: $06 $f3
	add hl, bc                                       ; $6166: $09
	ld de, $02e1                                     ; $6167: $11 $e1 $02
	inc bc                                           ; $616a: $03
	inc de                                           ; $616b: $13
	ret nz                                           ; $616c: $c0

	ld bc, $08a0                                     ; $616d: $01 $a0 $08
	ld b, $f6                                        ; $6170: $06 $f6
	pop hl                                           ; $6172: $e1
	ld [bc], a                                       ; $6173: $02
	inc bc                                           ; $6174: $03
	ld [$00e4], a                                    ; $6175: $ea $e4 $00
	inc l                                            ; $6178: $2c
	rlca                                             ; $6179: $07
	inc bc                                           ; $617a: $03
	add hl, bc                                       ; $617b: $09
	ld de, $02e1                                     ; $617c: $11 $e1 $02
	inc bc                                           ; $617f: $03
	rra                                              ; $6180: $1f
	ret nz                                           ; $6181: $c0

	ld bc, $08a0                                     ; $6182: $01 $a0 $08
	rlca                                             ; $6185: $07
	ld b, $e1                                        ; $6186: $06 $e1
	ld [bc], a                                       ; $6188: $02
	inc b                                            ; $6189: $04
	dec b                                            ; $618a: $05
	db $e4                                           ; $618b: $e4
	nop                                              ; $618c: $00
	rla                                              ; $618d: $17
	rlca                                             ; $618e: $07
	add hl, de                                       ; $618f: $19
	add hl, bc                                       ; $6190: $09
	ld de, $02e1                                     ; $6191: $11 $e1 $02
	inc bc                                           ; $6194: $03
	rla                                              ; $6195: $17
	ret nz                                           ; $6196: $c0

	ld bc, $08a0                                     ; $6197: $01 $a0 $08
	rlca                                             ; $619a: $07
	dec de                                           ; $619b: $1b
	pop hl                                           ; $619c: $e1
	ld [bc], a                                       ; $619d: $02
	inc bc                                           ; $619e: $03
	di                                               ; $619f: $f3
	db $e4                                           ; $61a0: $e4
	nop                                              ; $61a1: $00
	ld [bc], a                                       ; $61a2: $02
	add hl, bc                                       ; $61a3: $09
	ld c, $c1                                        ; $61a4: $0e $c1
	ld e, c                                          ; $61a6: $59
	db $e3                                           ; $61a7: $e3
	nop                                              ; $61a8: $00
	and h                                            ; $61a9: $a4
	ret nz                                           ; $61aa: $c0

	ld d, [hl]                                       ; $61ab: $56
	rst SubAFromHL                                          ; $61ac: $d7
	ret c                                            ; $61ad: $d8

	ret nc                                           ; $61ae: $d0

	push hl                                          ; $61af: $e5
	inc hl                                           ; $61b0: $23
	nop                                              ; $61b1: $00
	nop                                              ; $61b2: $00
	inc l                                            ; $61b3: $2c
	inc c                                            ; $61b4: $0c
	ret nz                                           ; $61b5: $c0

	ld bc, $08a0                                     ; $61b6: $01 $a0 $08
	rlca                                             ; $61b9: $07
	ld hl, $01c0                                     ; $61ba: $21 $c0 $01
	and b                                            ; $61bd: $a0
	ld bc, $2507                                     ; $61be: $01 $07 $25
	add hl, de                                       ; $61c1: $19
	add b                                            ; $61c2: $80
	ld [bc], a                                       ; $61c3: $02
	ld d, [hl]                                       ; $61c4: $56
	ld [$070e], sp                                   ; $61c5: $08 $0e $07
	ld a, [hl+]                                      ; $61c8: $2a
	add hl, bc                                       ; $61c9: $09
	inc bc                                           ; $61ca: $03
	db $e4                                           ; $61cb: $e4
	nop                                              ; $61cc: $00
	rrca                                             ; $61cd: $0f
	rlca                                             ; $61ce: $07
	inc l                                            ; $61cf: $2c
	add hl, bc                                       ; $61d0: $09
	inc bc                                           ; $61d1: $03
	db $e4                                           ; $61d2: $e4
	nop                                              ; $61d3: $00
	inc l                                            ; $61d4: $2c
	pop de                                           ; $61d5: $d1
	add hl, bc                                       ; $61d6: $09
	inc bc                                           ; $61d7: $03
	db $e4                                           ; $61d8: $e4
	nop                                              ; $61d9: $00
	ld [bc], a                                       ; $61da: $02
	add hl, bc                                       ; $61db: $09
	ld [hl+], a                                      ; $61dc: $22
	ret nc                                           ; $61dd: $d0

	add e                                            ; $61de: $83
	ld bc, $d1de                                     ; $61df: $01 $de $d1
	pop bc                                           ; $61e2: $c1
	ld e, c                                          ; $61e3: $59
	db $e3                                           ; $61e4: $e3
	nop                                              ; $61e5: $00
	sbc b                                            ; $61e6: $98
	ret nc                                           ; $61e7: $d0

	adc e                                            ; $61e8: $8b
	and b                                            ; $61e9: $a0
	rra                                              ; $61ea: $1f
	or b                                             ; $61eb: $b0
	ld a, b                                          ; $61ec: $78
	and b                                            ; $61ed: $a0
	add b                                            ; $61ee: $80
	and b                                            ; $61ef: $a0
	dec hl                                           ; $61f0: $2b
	nop                                              ; $61f1: $00
	inc bc                                           ; $61f2: $03
	db $e4                                           ; $61f3: $e4
	nop                                              ; $61f4: $00
	cpl                                              ; $61f5: $2f
	rst $38                                          ; $61f6: $ff
	rlca                                             ; $61f7: $07
	ld b, b                                          ; $61f8: $40
	add b                                            ; $61f9: $80
	and b                                            ; $61fa: $a0
	dec hl                                           ; $61fb: $2b
	db $e4                                           ; $61fc: $e4
	nop                                              ; $61fd: $00
	ld l, [hl]                                       ; $61fe: $6e
	add hl, bc                                       ; $61ff: $09
	ld [hl+], a                                      ; $6200: $22
	ret nc                                           ; $6201: $d0

	add e                                            ; $6202: $83
	ld bc, $d2de                                     ; $6203: $01 $de $d2
	pop bc                                           ; $6206: $c1
	ld e, c                                          ; $6207: $59
	db $e3                                           ; $6208: $e3
	nop                                              ; $6209: $00
	sbc c                                            ; $620a: $99
	ret nc                                           ; $620b: $d0

	adc e                                            ; $620c: $8b
	and b                                            ; $620d: $a0
	rra                                              ; $620e: $1f
	or b                                             ; $620f: $b0
	ld a, c                                          ; $6210: $79
	and b                                            ; $6211: $a0
	add b                                            ; $6212: $80
	and b                                            ; $6213: $a0
	inc l                                            ; $6214: $2c
	nop                                              ; $6215: $00
	inc bc                                           ; $6216: $03
	db $e4                                           ; $6217: $e4
	nop                                              ; $6218: $00
	call $07ff                                       ; $6219: $cd $ff $07
	ld b, b                                          ; $621c: $40
	add b                                            ; $621d: $80
	and b                                            ; $621e: $a0
	inc l                                            ; $621f: $2c
	db $e4                                           ; $6220: $e4
	ld bc, $280c                                     ; $6221: $01 $0c $28
	ld b, $c0                                        ; $6224: $06 $c0
	ld bc, $08a0                                     ; $6226: $01 $a0 $08
	rlca                                             ; $6229: $07
	ld l, $3f                                        ; $622a: $2e $3f
	rlca                                             ; $622c: $07
	jr c, jr_080_6238                                ; $622d: $38 $09

	ld de, $02e1                                     ; $622f: $11 $e1 $02
	inc bc                                           ; $6232: $03
	rla                                              ; $6233: $17
	ret nz                                           ; $6234: $c0

	ld bc, $08a0                                     ; $6235: $01 $a0 $08

jr_080_6238:
	rlca                                             ; $6238: $07
	dec a                                            ; $6239: $3d
	pop hl                                           ; $623a: $e1
	ld [bc], a                                       ; $623b: $02
	inc bc                                           ; $623c: $03
	di                                               ; $623d: $f3
	db $e4                                           ; $623e: $e4
	ld bc, $0736                                     ; $623f: $01 $36 $07
	ld b, h                                          ; $6242: $44
	add hl, bc                                       ; $6243: $09
	ld de, $02e1                                     ; $6244: $11 $e1 $02
	inc bc                                           ; $6247: $03
	rra                                              ; $6248: $1f
	ret nz                                           ; $6249: $c0

	ld bc, $08a0                                     ; $624a: $01 $a0 $08
	rlca                                             ; $624d: $07
	ld c, d                                          ; $624e: $4a
	pop hl                                           ; $624f: $e1
	ld [bc], a                                       ; $6250: $02
	inc b                                            ; $6251: $04
	dec b                                            ; $6252: $05
	db $e4                                           ; $6253: $e4
	ld bc, $0721                                     ; $6254: $01 $21 $07
	ld d, h                                          ; $6257: $54
	add hl, bc                                       ; $6258: $09
	ld de, $02e1                                     ; $6259: $11 $e1 $02
	inc bc                                           ; $625c: $03
	dec de                                           ; $625d: $1b
	ret nz                                           ; $625e: $c0

	ld bc, $08a0                                     ; $625f: $01 $a0 $08
	rlca                                             ; $6262: $07
	ld e, d                                          ; $6263: $5a
	pop hl                                           ; $6264: $e1
	ld [bc], a                                       ; $6265: $02
	inc bc                                           ; $6266: $03
	db $fc                                           ; $6267: $fc
	db $e4                                           ; $6268: $e4
	ld bc, $280c                                     ; $6269: $01 $0c $28
	ld b, $c0                                        ; $626c: $06 $c0
	ld bc, $08a0                                     ; $626e: $01 $a0 $08
	rlca                                             ; $6271: $07
	ld h, e                                          ; $6272: $63
	ld [hl], c                                       ; $6273: $71
	rlca                                             ; $6274: $07
	ld l, l                                          ; $6275: $6d
	add hl, bc                                       ; $6276: $09
	ld b, e                                          ; $6277: $43
	pop hl                                           ; $6278: $e1
	ld [bc], a                                       ; $6279: $02
	inc bc                                           ; $627a: $03
	dec de                                           ; $627b: $1b
	ret nz                                           ; $627c: $c0

	ld bc, $08a0                                     ; $627d: $01 $a0 $08
	rlca                                             ; $6280: $07
	ld l, a                                          ; $6281: $6f
	ret nz                                           ; $6282: $c0

	ld bc, $01a0                                     ; $6283: $01 $a0 $01
	rlca                                             ; $6286: $07
	ld [hl], a                                       ; $6287: $77
	ret nz                                           ; $6288: $c0

	ld bc, $08a0                                     ; $6289: $01 $a0 $08
	rlca                                             ; $628c: $07
	ld a, d                                          ; $628d: $7a
	ret nz                                           ; $628e: $c0

	ld bc, $01a0                                     ; $628f: $01 $a0 $01
	rlca                                             ; $6292: $07
	add e                                            ; $6293: $83
	pop hl                                           ; $6294: $e1
	ld [bc], a                                       ; $6295: $02
	inc bc                                           ; $6296: $03
	rra                                              ; $6297: $1f
	ret nz                                           ; $6298: $c0

	ld bc, $08a0                                     ; $6299: $01 $a0 $08
	rlca                                             ; $629c: $07
	adc b                                            ; $629d: $88
	ret nz                                           ; $629e: $c0

	ld bc, $01a0                                     ; $629f: $01 $a0 $01
	rlca                                             ; $62a2: $07
	sub c                                            ; $62a3: $91
	pop hl                                           ; $62a4: $e1
	ld [bc], a                                       ; $62a5: $02
	inc bc                                           ; $62a6: $03
	inc de                                           ; $62a7: $13
	ret nz                                           ; $62a8: $c0

	ld bc, $08a0                                     ; $62a9: $01 $a0 $08
	rlca                                             ; $62ac: $07
	sbc d                                            ; $62ad: $9a
	ret nz                                           ; $62ae: $c0

	ld bc, $01a0                                     ; $62af: $01 $a0 $01
	rlca                                             ; $62b2: $07
	and l                                            ; $62b3: $a5
	pop hl                                           ; $62b4: $e1
	ld [bc], a                                       ; $62b5: $02
	inc bc                                           ; $62b6: $03
	pop hl                                           ; $62b7: $e1
	db $e4                                           ; $62b8: $e4
	nop                                              ; $62b9: $00
	cp h                                             ; $62ba: $bc
	rlca                                             ; $62bb: $07
	xor l                                            ; $62bc: $ad
	add hl, bc                                       ; $62bd: $09
	ld de, $02e1                                     ; $62be: $11 $e1 $02
	inc bc                                           ; $62c1: $03
	dec de                                           ; $62c2: $1b
	ret nz                                           ; $62c3: $c0

	ld bc, $08a0                                     ; $62c4: $01 $a0 $08
	rlca                                             ; $62c7: $07
	xor a                                            ; $62c8: $af
	pop hl                                           ; $62c9: $e1
	ld [bc], a                                       ; $62ca: $02
	inc bc                                           ; $62cb: $03
	db $fc                                           ; $62cc: $fc
	db $e4                                           ; $62cd: $e4
	nop                                              ; $62ce: $00
	and a                                            ; $62cf: $a7
	rlca                                             ; $62d0: $07
	cp h                                             ; $62d1: $bc
	add hl, bc                                       ; $62d2: $09
	ld de, $02e1                                     ; $62d3: $11 $e1 $02
	inc bc                                           ; $62d6: $03
	rla                                              ; $62d7: $17
	ret nz                                           ; $62d8: $c0

	ld bc, $08a0                                     ; $62d9: $01 $a0 $08
	rlca                                             ; $62dc: $07
	call nz, $02e1                                   ; $62dd: $c4 $e1 $02
	inc bc                                           ; $62e0: $03
	di                                               ; $62e1: $f3
	db $e4                                           ; $62e2: $e4
	nop                                              ; $62e3: $00
	sub d                                            ; $62e4: $92
	jr z, @+$08                                      ; $62e5: $28 $06

	ret nz                                           ; $62e7: $c0

	ld bc, $08a0                                     ; $62e8: $01 $a0 $08
	rlca                                             ; $62eb: $07
	jp z, $073f                                      ; $62ec: $ca $3f $07

	reti                                             ; $62ef: $d9


	add hl, bc                                       ; $62f0: $09
	ld de, $02e1                                     ; $62f1: $11 $e1 $02
	inc bc                                           ; $62f4: $03
	inc de                                           ; $62f5: $13
	ret nz                                           ; $62f6: $c0

	ld bc, $08a0                                     ; $62f7: $01 $a0 $08
	rlca                                             ; $62fa: $07
	rst SubAFromDE                                          ; $62fb: $df
	pop hl                                           ; $62fc: $e1
	ld [bc], a                                       ; $62fd: $02
	inc bc                                           ; $62fe: $03
	ld [$00e4], a                                    ; $62ff: $ea $e4 $00
	ld [hl], h                                       ; $6302: $74
	rlca                                             ; $6303: $07
	ldh [c], a                                       ; $6304: $e2
	add hl, bc                                       ; $6305: $09
	ld de, $02e1                                     ; $6306: $11 $e1 $02
	inc bc                                           ; $6309: $03
	rra                                              ; $630a: $1f
	ret nz                                           ; $630b: $c0

	ld bc, $08a0                                     ; $630c: $01 $a0 $08
	rlca                                             ; $630f: $07
	db $e4                                           ; $6310: $e4
	pop hl                                           ; $6311: $e1
	ld [bc], a                                       ; $6312: $02
	inc b                                            ; $6313: $04
	dec b                                            ; $6314: $05
	db $e4                                           ; $6315: $e4
	nop                                              ; $6316: $00
	ld e, a                                          ; $6317: $5f
	rlca                                             ; $6318: $07
	pop af                                           ; $6319: $f1
	add hl, bc                                       ; $631a: $09
	ld de, $02e1                                     ; $631b: $11 $e1 $02
	inc bc                                           ; $631e: $03
	rla                                              ; $631f: $17
	ret nz                                           ; $6320: $c0

	ld bc, $08a0                                     ; $6321: $01 $a0 $08
	rlca                                             ; $6324: $07
	di                                               ; $6325: $f3
	pop hl                                           ; $6326: $e1
	ld [bc], a                                       ; $6327: $02
	inc bc                                           ; $6328: $03
	db $fc                                           ; $6329: $fc
	db $e4                                           ; $632a: $e4
	nop                                              ; $632b: $00
	ld c, d                                          ; $632c: $4a
	jr z, jr_080_6335                                ; $632d: $28 $06

	ret nz                                           ; $632f: $c0

	ld bc, $08a0                                     ; $6330: $01 $a0 $08
	rlca                                             ; $6333: $07
	rst FarCall                                          ; $6334: $f7

jr_080_6335:
	ccf                                              ; $6335: $3f
	ld [$0908], sp                                   ; $6336: $08 $08 $09
	ld de, $02e1                                     ; $6339: $11 $e1 $02
	inc bc                                           ; $633c: $03
	inc de                                           ; $633d: $13
	ret nz                                           ; $633e: $c0

	ld bc, $08a0                                     ; $633f: $01 $a0 $08
	ld [$e10a], sp                                   ; $6342: $08 $0a $e1
	ld [bc], a                                       ; $6345: $02
	inc bc                                           ; $6346: $03
	pop hl                                           ; $6347: $e1
	db $e4                                           ; $6348: $e4
	nop                                              ; $6349: $00
	inc l                                            ; $634a: $2c
	ld [$091d], sp                                   ; $634b: $08 $1d $09
	ld de, $02e1                                     ; $634e: $11 $e1 $02
	inc bc                                           ; $6351: $03
	dec de                                           ; $6352: $1b
	ret nz                                           ; $6353: $c0

	ld bc, $08a0                                     ; $6354: $01 $a0 $08
	ld [$e11f], sp                                   ; $6357: $08 $1f $e1
	ld [bc], a                                       ; $635a: $02
	inc bc                                           ; $635b: $03
	db $fc                                           ; $635c: $fc
	db $e4                                           ; $635d: $e4
	nop                                              ; $635e: $00
	rla                                              ; $635f: $17
	ld [$0928], sp                                   ; $6360: $08 $28 $09
	ld de, $02e1                                     ; $6363: $11 $e1 $02
	inc bc                                           ; $6366: $03
	rla                                              ; $6367: $17
	ret nz                                           ; $6368: $c0

	ld bc, $08a0                                     ; $6369: $01 $a0 $08
	ld [$e12a], sp                                   ; $636c: $08 $2a $e1
	ld [bc], a                                       ; $636f: $02
	inc bc                                           ; $6370: $03
	di                                               ; $6371: $f3
	db $e4                                           ; $6372: $e4
	nop                                              ; $6373: $00
	ld [bc], a                                       ; $6374: $02
	add hl, bc                                       ; $6375: $09
	rra                                              ; $6376: $1f
	pop bc                                           ; $6377: $c1
	ld e, c                                          ; $6378: $59
	db $e3                                           ; $6379: $e3
	nop                                              ; $637a: $00
	sub a                                            ; $637b: $97
	add c                                            ; $637c: $81
	adc e                                            ; $637d: $8b
	and b                                            ; $637e: $a0
	rra                                              ; $637f: $1f
	ld [bc], a                                       ; $6380: $02
	or b                                             ; $6381: $b0
	ld a, b                                          ; $6382: $78
	dec b                                            ; $6383: $05
	ret nz                                           ; $6384: $c0

	ld d, [hl]                                       ; $6385: $56
	rst SubAFromHL                                          ; $6386: $d7
	reti                                             ; $6387: $d9


	ret nc                                           ; $6388: $d0

	ld [bc], a                                       ; $6389: $02
	or b                                             ; $638a: $b0
	ld a, c                                          ; $638b: $79
	dec b                                            ; $638c: $05
	ret nz                                           ; $638d: $c0

	ld d, [hl]                                       ; $638e: $56
	rst SubAFromHL                                          ; $638f: $d7
	reti                                             ; $6390: $d9


	pop de                                           ; $6391: $d1
	push hl                                          ; $6392: $e5
	inc hl                                           ; $6393: $23
	nop                                              ; $6394: $00
	nop                                              ; $6395: $00
	ret nz                                           ; $6396: $c0

	dec b                                            ; $6397: $05
	add hl, bc                                       ; $6398: $09
	jr z, @-$2e                                      ; $6399: $28 $d0

	add e                                            ; $639b: $83
	ld bc, $d0de                                     ; $639c: $01 $de $d0
	ret nz                                           ; $639f: $c0

	ld bc, $08a0                                     ; $63a0: $01 $a0 $08
	nop                                              ; $63a3: $00
	ld bc, $01c0                                     ; $63a4: $01 $c0 $01
	and b                                            ; $63a7: $a0
	ld bc, $0500                                     ; $63a8: $01 $00 $05
	pop bc                                           ; $63ab: $c1
	ld e, c                                          ; $63ac: $59
	db $e3                                           ; $63ad: $e3
	nop                                              ; $63ae: $00
	cp l                                             ; $63af: $bd
	and b                                            ; $63b0: $a0
	add b                                            ; $63b1: $80
	and b                                            ; $63b2: $a0
	nop                                              ; $63b3: $00
	nop                                              ; $63b4: $00
	inc bc                                           ; $63b5: $03
	db $e4                                           ; $63b6: $e4
	nop                                              ; $63b7: $00
	dec bc                                           ; $63b8: $0b
	rst $38                                          ; $63b9: $ff
	rlca                                             ; $63ba: $07
	ld b, b                                          ; $63bb: $40
	add b                                            ; $63bc: $80
	and b                                            ; $63bd: $a0
	nop                                              ; $63be: $00
	db $e4                                           ; $63bf: $e4
	nop                                              ; $63c0: $00
	ld c, d                                          ; $63c1: $4a
	jr z, jr_080_63ca                                ; $63c2: $28 $06

	ret nz                                           ; $63c4: $c0

	ld bc, $08a0                                     ; $63c5: $01 $a0 $08
	nop                                              ; $63c8: $00
	ld a, [bc]                                       ; $63c9: $0a

jr_080_63ca:
	ccf                                              ; $63ca: $3f
	nop                                              ; $63cb: $00
	ld [de], a                                       ; $63cc: $12
	add hl, bc                                       ; $63cd: $09
	ld de, $02e1                                     ; $63ce: $11 $e1 $02
	inc bc                                           ; $63d1: $03
	inc de                                           ; $63d2: $13
	ret nz                                           ; $63d3: $c0

	ld bc, $08a0                                     ; $63d4: $01 $a0 $08
	nop                                              ; $63d7: $00
	dec d                                            ; $63d8: $15
	pop hl                                           ; $63d9: $e1
	ld [bc], a                                       ; $63da: $02
	inc bc                                           ; $63db: $03
	ld [$00e4], a                                    ; $63dc: $ea $e4 $00
	ld [hl], h                                       ; $63df: $74
	nop                                              ; $63e0: $00
	dec h                                            ; $63e1: $25
	add hl, bc                                       ; $63e2: $09
	ld de, $02e1                                     ; $63e3: $11 $e1 $02
	inc bc                                           ; $63e6: $03
	rra                                              ; $63e7: $1f
	ret nz                                           ; $63e8: $c0

	ld bc, $08a0                                     ; $63e9: $01 $a0 $08
	nop                                              ; $63ec: $00
	jr z, @-$1d                                      ; $63ed: $28 $e1

	ld [bc], a                                       ; $63ef: $02
	inc b                                            ; $63f0: $04
	dec b                                            ; $63f1: $05
	db $e4                                           ; $63f2: $e4
	nop                                              ; $63f3: $00
	ld e, a                                          ; $63f4: $5f
	nop                                              ; $63f5: $00
	dec [hl]                                         ; $63f6: $35
	add hl, bc                                       ; $63f7: $09
	ld de, $02e1                                     ; $63f8: $11 $e1 $02
	inc bc                                           ; $63fb: $03
	rla                                              ; $63fc: $17
	ret nz                                           ; $63fd: $c0

	ld bc, $08a0                                     ; $63fe: $01 $a0 $08
	nop                                              ; $6401: $00
	scf                                              ; $6402: $37
	pop hl                                           ; $6403: $e1
	ld [bc], a                                       ; $6404: $02
	inc bc                                           ; $6405: $03
	di                                               ; $6406: $f3
	db $e4                                           ; $6407: $e4
	nop                                              ; $6408: $00
	ld c, d                                          ; $6409: $4a
	jr z, jr_080_6412                                ; $640a: $28 $06

	ret nz                                           ; $640c: $c0

	ld bc, $08a0                                     ; $640d: $01 $a0 $08
	nop                                              ; $6410: $00
	ld b, d                                          ; $6411: $42

jr_080_6412:
	ccf                                              ; $6412: $3f
	nop                                              ; $6413: $00
	ld d, b                                          ; $6414: $50
	add hl, bc                                       ; $6415: $09
	ld de, $02e1                                     ; $6416: $11 $e1 $02
	inc bc                                           ; $6419: $03
	inc de                                           ; $641a: $13
	ret nz                                           ; $641b: $c0

	ld bc, $08a0                                     ; $641c: $01 $a0 $08
	nop                                              ; $641f: $00
	ld e, c                                          ; $6420: $59
	pop hl                                           ; $6421: $e1
	ld [bc], a                                       ; $6422: $02
	inc bc                                           ; $6423: $03
	ld [$00e4], a                                    ; $6424: $ea $e4 $00
	inc l                                            ; $6427: $2c
	nop                                              ; $6428: $00
	ld h, d                                          ; $6429: $62
	add hl, bc                                       ; $642a: $09
	ld de, $02e1                                     ; $642b: $11 $e1 $02
	inc bc                                           ; $642e: $03
	rra                                              ; $642f: $1f
	ret nz                                           ; $6430: $c0

	ld bc, $08a0                                     ; $6431: $01 $a0 $08
	nop                                              ; $6434: $00

jr_080_6435:
	ld l, b                                          ; $6435: $68
	pop hl                                           ; $6436: $e1
	ld [bc], a                                       ; $6437: $02
	inc b                                            ; $6438: $04
	dec b                                            ; $6439: $05
	db $e4                                           ; $643a: $e4
	nop                                              ; $643b: $00
	rla                                              ; $643c: $17
	nop                                              ; $643d: $00
	ld l, l                                          ; $643e: $6d
	add hl, bc                                       ; $643f: $09
	ld de, $02e1                                     ; $6440: $11 $e1 $02
	inc bc                                           ; $6443: $03
	dec de                                           ; $6444: $1b
	ret nz                                           ; $6445: $c0

	ld bc, $08a0                                     ; $6446: $01 $a0 $08
	nop                                              ; $6449: $00
	ld [hl], l                                       ; $644a: $75
	pop hl                                           ; $644b: $e1
	ld [bc], a                                       ; $644c: $02
	inc bc                                           ; $644d: $03
	db $fc                                           ; $644e: $fc
	db $e4                                           ; $644f: $e4
	nop                                              ; $6450: $00
	ld [bc], a                                       ; $6451: $02
	add hl, bc                                       ; $6452: $09
	ld c, $c1                                        ; $6453: $0e $c1
	ld e, c                                          ; $6455: $59
	db $e3                                           ; $6456: $e3
	nop                                              ; $6457: $00
	cp h                                             ; $6458: $bc
	ret nz                                           ; $6459: $c0

	ld d, [hl]                                       ; $645a: $56
	rst SubAFromHL                                          ; $645b: $d7
	jp c, $e5d0                                      ; $645c: $da $d0 $e5

	inc hl                                           ; $645f: $23
	nop                                              ; $6460: $00
	nop                                              ; $6461: $00
	add hl, bc                                       ; $6462: $09
	jr z, jr_080_6435                                ; $6463: $28 $d0

	add e                                            ; $6465: $83
	ld bc, $d0de                                     ; $6466: $01 $de $d0
	ret nz                                           ; $6469: $c0

	ld bc, $08a0                                     ; $646a: $01 $a0 $08
	nop                                              ; $646d: $00
	ld bc, $01c0                                     ; $646e: $01 $c0 $01
	and b                                            ; $6471: $a0
	ld bc, $0500                                     ; $6472: $01 $00 $05
	pop bc                                           ; $6475: $c1
	ld e, c                                          ; $6476: $59
	db $e3                                           ; $6477: $e3
	nop                                              ; $6478: $00
	cp e                                             ; $6479: $bb
	and b                                            ; $647a: $a0
	add b                                            ; $647b: $80
	and b                                            ; $647c: $a0
	ld bc, $0300                                     ; $647d: $01 $00 $03
	db $e4                                           ; $6480: $e4
	nop                                              ; $6481: $00
	dec bc                                           ; $6482: $0b
	rst $38                                          ; $6483: $ff
	rlca                                             ; $6484: $07
	ld b, b                                          ; $6485: $40
	add b                                            ; $6486: $80
	and b                                            ; $6487: $a0
	ld bc, $00e4                                     ; $6488: $01 $e4 $00
	ld c, a                                          ; $648b: $4f
	jr z, jr_080_6494                                ; $648c: $28 $06

	ret nz                                           ; $648e: $c0

	ld bc, $08a0                                     ; $648f: $01 $a0 $08
	nop                                              ; $6492: $00
	ld a, b                                          ; $6493: $78

jr_080_6494:
	ld b, h                                          ; $6494: $44
	nop                                              ; $6495: $00
	add b                                            ; $6496: $80
	add hl, bc                                       ; $6497: $09
	ld d, $e1                                        ; $6498: $16 $e1
	ld [bc], a                                       ; $649a: $02
	inc bc                                           ; $649b: $03
	inc de                                           ; $649c: $13
	pop bc                                           ; $649d: $c1
	or d                                             ; $649e: $b2
	db $e3                                           ; $649f: $e3
	nop                                              ; $64a0: $00
	ld e, e                                          ; $64a1: $5b
	ret nz                                           ; $64a2: $c0

	ld bc, $08a0                                     ; $64a3: $01 $a0 $08
	nop                                              ; $64a6: $00
	add d                                            ; $64a7: $82
	pop hl                                           ; $64a8: $e1
	ld [bc], a                                       ; $64a9: $02
	inc bc                                           ; $64aa: $03
	ld [$00e4], a                                    ; $64ab: $ea $e4 $00
	ld a, d                                          ; $64ae: $7a
	nop                                              ; $64af: $00
	adc c                                            ; $64b0: $89
	add hl, bc                                       ; $64b1: $09
	ld de, $02e1                                     ; $64b2: $11 $e1 $02
	inc bc                                           ; $64b5: $03
	rra                                              ; $64b6: $1f
	ret nz                                           ; $64b7: $c0

	ld bc, $08a0                                     ; $64b8: $01 $a0 $08
	nop                                              ; $64bb: $00
	sub c                                            ; $64bc: $91
	pop hl                                           ; $64bd: $e1
	ld [bc], a                                       ; $64be: $02
	inc b                                            ; $64bf: $04
	dec b                                            ; $64c0: $05
	db $e4                                           ; $64c1: $e4
	nop                                              ; $64c2: $00
	ld h, l                                          ; $64c3: $65
	nop                                              ; $64c4: $00
	sbc b                                            ; $64c5: $98
	add hl, bc                                       ; $64c6: $09
	ld de, $02e1                                     ; $64c7: $11 $e1 $02
	inc bc                                           ; $64ca: $03
	dec de                                           ; $64cb: $1b
	ret nz                                           ; $64cc: $c0

	ld bc, $08a0                                     ; $64cd: $01 $a0 $08
	nop                                              ; $64d0: $00
	sbc d                                            ; $64d1: $9a
	pop hl                                           ; $64d2: $e1
	ld [bc], a                                       ; $64d3: $02
	inc bc                                           ; $64d4: $03
	db $fc                                           ; $64d5: $fc
	db $e4                                           ; $64d6: $e4
	nop                                              ; $64d7: $00
	ld d, b                                          ; $64d8: $50
	jr z, jr_080_64e1                                ; $64d9: $28 $06

	ret nz                                           ; $64db: $c0

	ld bc, $08a0                                     ; $64dc: $01 $a0 $08
	nop                                              ; $64df: $00

Call_080_64e0:
	and d                                            ; $64e0: $a2

jr_080_64e1:
	ld b, l                                          ; $64e1: $45
	nop                                              ; $64e2: $00
	xor a                                            ; $64e3: $af
	add hl, bc                                       ; $64e4: $09
	ld de, $02e1                                     ; $64e5: $11 $e1 $02
	inc bc                                           ; $64e8: $03
	inc de                                           ; $64e9: $13
	ret nz                                           ; $64ea: $c0

	ld bc, $08a0                                     ; $64eb: $01 $a0 $08
	nop                                              ; $64ee: $00
	or a                                             ; $64ef: $b7
	pop hl                                           ; $64f0: $e1
	ld [bc], a                                       ; $64f1: $02
	inc bc                                           ; $64f2: $03
	ld [$00e4], a                                    ; $64f3: $ea $e4 $00
	ld [hl-], a                                      ; $64f6: $32
	nop                                              ; $64f7: $00
	cp a                                             ; $64f8: $bf
	add hl, bc                                       ; $64f9: $09
	ld de, $02e1                                     ; $64fa: $11 $e1 $02
	inc bc                                           ; $64fd: $03
	rra                                              ; $64fe: $1f
	ret nz                                           ; $64ff: $c0

	ld bc, $08a0                                     ; $6500: $01 $a0 $08
	nop                                              ; $6503: $00
	ret z                                            ; $6504: $c8

	pop hl                                           ; $6505: $e1
	ld [bc], a                                       ; $6506: $02
	inc b                                            ; $6507: $04
	dec b                                            ; $6508: $05
	db $e4                                           ; $6509: $e4
	nop                                              ; $650a: $00
	dec e                                            ; $650b: $1d
	nop                                              ; $650c: $00
	rst GetHLinHL                                          ; $650d: $cf
	add hl, bc                                       ; $650e: $09
	rla                                              ; $650f: $17
	pop hl                                           ; $6510: $e1
	ld [bc], a                                       ; $6511: $02
	inc bc                                           ; $6512: $03
	dec de                                           ; $6513: $1b
	ret nz                                           ; $6514: $c0

	ld bc, $08a0                                     ; $6515: $01 $a0 $08
	nop                                              ; $6518: $00
	reti                                             ; $6519: $d9


	ret nz                                           ; $651a: $c0

	ld bc, $01a0                                     ; $651b: $01 $a0 $01
	nop                                              ; $651e: $00
	rst SubAFromBC                                          ; $651f: $e7
	pop hl                                           ; $6520: $e1
	ld [bc], a                                       ; $6521: $02
	inc bc                                           ; $6522: $03
	db $fc                                           ; $6523: $fc
	db $e4                                           ; $6524: $e4
	nop                                              ; $6525: $00
	ld [bc], a                                       ; $6526: $02
	add hl, bc                                       ; $6527: $09
	ld c, $c1                                        ; $6528: $0e $c1
	ld e, c                                          ; $652a: $59
	db $e3                                           ; $652b: $e3
	nop                                              ; $652c: $00
	cp d                                             ; $652d: $ba
	ret nz                                           ; $652e: $c0

	ld d, [hl]                                       ; $652f: $56
	rst SubAFromHL                                          ; $6530: $d7
	db $db                                           ; $6531: $db
	ret nc                                           ; $6532: $d0

	push hl                                          ; $6533: $e5
	inc hl                                           ; $6534: $23
	nop                                              ; $6535: $00
	nop                                              ; $6536: $00
	add hl, bc                                       ; $6537: $09
	rrca                                             ; $6538: $0f
	ret nz                                           ; $6539: $c0

	ld bc, $08a0                                     ; $653a: $01 $a0 $08
	nop                                              ; $653d: $00
	db $ed                                           ; $653e: $ed
	ret nz                                           ; $653f: $c0

	ld bc, $01a0                                     ; $6540: $01 $a0 $01
	nop                                              ; $6543: $00
	db $f4                                           ; $6544: $f4
	db $e4                                           ; $6545: $e4
	nop                                              ; $6546: $00
	ld [bc], a                                       ; $6547: $02
	inc l                                            ; $6548: $2c

jr_080_6549:
	dec b                                            ; $6549: $05
	pop bc                                           ; $654a: $c1
	ld e, c                                          ; $654b: $59
	db $e3                                           ; $654c: $e3
	nop                                              ; $654d: $00
	adc d                                            ; $654e: $8a
	ld h, e                                          ; $654f: $63
	cp $08                                           ; $6550: $fe $08
	db $fc                                           ; $6552: $fc
	ret nz                                           ; $6553: $c0

	ld h, a                                          ; $6554: $67
	ret nc                                           ; $6555: $d0

	db $fc                                           ; $6556: $fc
	ret nz                                           ; $6557: $c0

	ld l, c                                          ; $6558: $69
	pop de                                           ; $6559: $d1
	jr z, @+$08                                      ; $655a: $28 $06

	ret nz                                           ; $655c: $c0

	ld bc, $01a0                                     ; $655d: $01 $a0 $01
	nop                                              ; $6560: $00
	ld hl, sp+$4c                                    ; $6561: $f8 $4c
	nop                                              ; $6563: $00
	db $fd                                           ; $6564: $fd
	jr z, @+$0e                                      ; $6565: $28 $0c

	ret nz                                           ; $6567: $c0

	ld bc, $01a0                                     ; $6568: $01 $a0 $01
	ld bc, $c000                                     ; $656b: $01 $00 $c0
	ld bc, $08a0                                     ; $656e: $01 $a0 $08
	ld bc, $3607                                     ; $6571: $01 $07 $36
	ld bc, $090b                                     ; $6574: $01 $0b $09
	jr nz, jr_080_6549                               ; $6577: $20 $d0

	add e                                            ; $6579: $83
	ld bc, $d7de                                     ; $657a: $01 $de $d7
	ret nz                                           ; $657d: $c0

	ld bc, $08a0                                     ; $657e: $01 $a0 $08
	ld bc, $c00d                                     ; $6581: $01 $0d $c0
	ld bc, $01a0                                     ; $6584: $01 $a0 $01
	ld bc, $c015                                     ; $6587: $01 $15 $c0
	ld bc, $08a0                                     ; $658a: $01 $a0 $08
	ld bc, $d01b                                     ; $658d: $01 $1b $d0
	adc e                                            ; $6590: $8b
	and b                                            ; $6591: $a0
	ld [bc], a                                       ; $6592: $02
	or b                                             ; $6593: $b0
	ld a, d                                          ; $6594: $7a
	db $e4                                           ; $6595: $e4
	dec b                                            ; $6596: $05
	rrca                                             ; $6597: $0f
	ld bc, $2022                                     ; $6598: $01 $22 $20
	inc c                                            ; $659b: $0c
	ret nz                                           ; $659c: $c0

	ld bc, $08a0                                     ; $659d: $01 $a0 $08
	ld bc, $c024                                     ; $65a0: $01 $24 $c0
	ld bc, $01a0                                     ; $65a3: $01 $a0 $01
	ld bc, $002a                                     ; $65a6: $01 $2a $00
	dec bc                                           ; $65a9: $0b
	ld bc, $0030                                     ; $65aa: $01 $30 $00
	nop                                              ; $65ad: $00
	ld b, $d1                                        ; $65ae: $06 $d1
	nop                                              ; $65b0: $00
	nop                                              ; $65b1: $00
	ld [bc], a                                       ; $65b2: $02
	jr z, @+$08                                      ; $65b3: $28 $06

	ret nz                                           ; $65b5: $c0

	ld bc, $08a0                                     ; $65b6: $01 $a0 $08
	ld bc, $7032                                     ; $65b9: $01 $32 $70
	ei                                               ; $65bc: $fb
	add b                                            ; $65bd: $80
	ld [bc], a                                       ; $65be: $02
	ld d, e                                          ; $65bf: $53
	ld [de], a                                       ; $65c0: $12
	ld bc, $0937                                     ; $65c1: $01 $37 $09
	ld c, $d0                                        ; $65c4: $0e $d0
	add e                                            ; $65c6: $83
	ld bc, $d4de                                     ; $65c7: $01 $de $d4
	ret nc                                           ; $65ca: $d0

	adc e                                            ; $65cb: $8b
	and b                                            ; $65cc: $a0
	ld [bc], a                                       ; $65cd: $02
	or b                                             ; $65ce: $b0
	ld a, e                                          ; $65cf: $7b
	db $e4                                           ; $65d0: $e4
	inc bc                                           ; $65d1: $03
	ld l, b                                          ; $65d2: $68
	ei                                               ; $65d3: $fb
	pop af                                           ; $65d4: $f1
	add b                                            ; $65d5: $80
	ld [bc], a                                       ; $65d6: $02
	ld d, e                                          ; $65d7: $53
	ld [de], a                                       ; $65d8: $12
	ld bc, $0939                                     ; $65d9: $01 $39 $09
	ld c, $d0                                        ; $65dc: $0e $d0
	add e                                            ; $65de: $83
	ld bc, $d1de                                     ; $65df: $01 $de $d1
	ret nc                                           ; $65e2: $d0

	adc e                                            ; $65e3: $8b
	and b                                            ; $65e4: $a0
	ld [bc], a                                       ; $65e5: $02
	or b                                             ; $65e6: $b0
	ld a, h                                          ; $65e7: $7c
	db $e4                                           ; $65e8: $e4
	nop                                              ; $65e9: $00
	ld b, e                                          ; $65ea: $43
	ei                                               ; $65eb: $fb
	add b                                            ; $65ec: $80
	ld [bc], a                                       ; $65ed: $02
	ld e, d                                          ; $65ee: $5a
	ld [de], a                                       ; $65ef: $12
	ld bc, $093b                                     ; $65f0: $01 $3b $09
	ld c, $d0                                        ; $65f3: $0e $d0
	add e                                            ; $65f5: $83
	ld bc, $d5de                                     ; $65f6: $01 $de $d5
	ret nc                                           ; $65f9: $d0

	adc e                                            ; $65fa: $8b
	and b                                            ; $65fb: $a0
	ld [bc], a                                       ; $65fc: $02
	or b                                             ; $65fd: $b0
	ld a, l                                          ; $65fe: $7d
	db $e4                                           ; $65ff: $e4
	inc bc                                           ; $6600: $03
	ldh a, [c]                                       ; $6601: $f2
	ei                                               ; $6602: $fb
	pop af                                           ; $6603: $f1
	add b                                            ; $6604: $80
	ld [bc], a                                       ; $6605: $02
	ld e, d                                          ; $6606: $5a
	ld [de], a                                       ; $6607: $12
	ld bc, $093d                                     ; $6608: $01 $3d $09
	ld c, $d0                                        ; $660b: $0e $d0
	add e                                            ; $660d: $83
	ld bc, $d2de                                     ; $660e: $01 $de $d2
	ret nc                                           ; $6611: $d0

	adc e                                            ; $6612: $8b
	and b                                            ; $6613: $a0
	ld [bc], a                                       ; $6614: $02
	or b                                             ; $6615: $b0
	ld a, [hl]                                       ; $6616: $7e
	db $e4                                           ; $6617: $e4
	nop                                              ; $6618: $00
	rst JumpTable                                          ; $6619: $c7
	ld bc, $093f                                     ; $661a: $01 $3f $09
	ld c, $d0                                        ; $661d: $0e $d0
	add e                                            ; $661f: $83
	ld bc, $d3de                                     ; $6620: $01 $de $d3
	ret nc                                           ; $6623: $d0

	adc e                                            ; $6624: $8b
	and b                                            ; $6625: $a0
	ld [bc], a                                       ; $6626: $02
	or b                                             ; $6627: $b0
	ld a, a                                          ; $6628: $7f
	db $e4                                           ; $6629: $e4
	ld [bc], a                                       ; $662a: $02
	ld e, h                                          ; $662b: $5c
	add hl, bc                                       ; $662c: $09
	ld hl, $59c1                                     ; $662d: $21 $c1 $59
	db $e3                                           ; $6630: $e3
	nop                                              ; $6631: $00
	adc h                                            ; $6632: $8c
	ret nz                                           ; $6633: $c0

	ld bc, $08a0                                     ; $6634: $01 $a0 $08
	ld bc, $e141                                     ; $6637: $01 $41 $e1
	ld [bc], a                                       ; $663a: $02
	rlca                                             ; $663b: $07
	call nz, $80a0                                   ; $663c: $c4 $a0 $80
	and b                                            ; $663f: $a0
	ld c, $00                                        ; $6640: $0e $00
	inc bc                                           ; $6642: $03
	db $e4                                           ; $6643: $e4
	nop                                              ; $6644: $00
	dec bc                                           ; $6645: $0b
	rst $38                                          ; $6646: $ff
	rlca                                             ; $6647: $07
	ld b, b                                          ; $6648: $40
	add b                                            ; $6649: $80
	and b                                            ; $664a: $a0
	ld c, $e4                                        ; $664b: $0e $e4
	nop                                              ; $664d: $00
	ld c, d                                          ; $664e: $4a
	jr z, @+$08                                      ; $664f: $28 $06

	ret nz                                           ; $6651: $c0

	ld bc, $08a0                                     ; $6652: $01 $a0 $08
	ld bc, $3f48                                     ; $6655: $01 $48 $3f
	ld bc, $094c                                     ; $6658: $01 $4c $09
	ld de, $02e1                                     ; $665b: $11 $e1 $02
	inc bc                                           ; $665e: $03
	rla                                              ; $665f: $17
	ret nz                                           ; $6660: $c0

	ld bc, $08a0                                     ; $6661: $01 $a0 $08
	ld bc, $e14e                                     ; $6664: $01 $4e $e1
	ld [bc], a                                       ; $6667: $02
	inc bc                                           ; $6668: $03
	di                                               ; $6669: $f3
	db $e4                                           ; $666a: $e4
	inc b                                            ; $666b: $04
	jp hl                                            ; $666c: $e9


	ld bc, $0951                                     ; $666d: $01 $51 $09
	ld de, $02e1                                     ; $6670: $11 $e1 $02
	inc bc                                           ; $6673: $03
	dec de                                           ; $6674: $1b
	ret nz                                           ; $6675: $c0

	ld bc, $08a0                                     ; $6676: $01 $a0 $08
	ld bc, $e153                                     ; $6679: $01 $53 $e1
	ld [bc], a                                       ; $667c: $02
	inc bc                                           ; $667d: $03
	db $fc                                           ; $667e: $fc
	db $e4                                           ; $667f: $e4
	inc b                                            ; $6680: $04
	call nc, Call_080_5a01                           ; $6681: $d4 $01 $5a
	add hl, bc                                       ; $6684: $09
	ld de, $02e1                                     ; $6685: $11 $e1 $02
	inc bc                                           ; $6688: $03
	dec de                                           ; $6689: $1b
	ret nz                                           ; $668a: $c0

	ld bc, $08a0                                     ; $668b: $01 $a0 $08
	ld bc, $e15f                                     ; $668e: $01 $5f $e1
	ld [bc], a                                       ; $6691: $02
	inc bc                                           ; $6692: $03
	db $fc                                           ; $6693: $fc
	db $e4                                           ; $6694: $e4
	inc b                                            ; $6695: $04
	cp a                                             ; $6696: $bf
	jr z, @+$08                                      ; $6697: $28 $06

	ret nz                                           ; $6699: $c0

	ld bc, $08a0                                     ; $669a: $01 $a0 $08
	ld bc, $3f6a                                     ; $669d: $01 $6a $3f
	ld bc, $0971                                     ; $66a0: $01 $71 $09
	ld de, $02e1                                     ; $66a3: $11 $e1 $02
	inc bc                                           ; $66a6: $03
	rla                                              ; $66a7: $17
	ret nz                                           ; $66a8: $c0

	ld bc, $08a0                                     ; $66a9: $01 $a0 $08
	ld bc, $e179                                     ; $66ac: $01 $79 $e1
	ld [bc], a                                       ; $66af: $02
	inc bc                                           ; $66b0: $03
	di                                               ; $66b1: $f3
	db $e4                                           ; $66b2: $e4
	inc b                                            ; $66b3: $04
	and c                                            ; $66b4: $a1
	ld bc, $098c                                     ; $66b5: $01 $8c $09
	ld de, $02e1                                     ; $66b8: $11 $e1 $02
	inc bc                                           ; $66bb: $03
	rra                                              ; $66bc: $1f
	ret nz                                           ; $66bd: $c0

	ld bc, $08a0                                     ; $66be: $01 $a0 $08
	ld bc, $e192                                     ; $66c1: $01 $92 $e1
	ld [bc], a                                       ; $66c4: $02
	inc b                                            ; $66c5: $04
	dec b                                            ; $66c6: $05
	db $e4                                           ; $66c7: $e4
	inc b                                            ; $66c8: $04
	adc h                                            ; $66c9: $8c
	ld bc, $099e                                     ; $66ca: $01 $9e $09
	ld de, $02e1                                     ; $66cd: $11 $e1 $02
	inc bc                                           ; $66d0: $03
	dec de                                           ; $66d1: $1b
	ret nz                                           ; $66d2: $c0

	ld bc, $08a0                                     ; $66d3: $01 $a0 $08
	ld bc, $e1a4                                     ; $66d6: $01 $a4 $e1
	ld [bc], a                                       ; $66d9: $02
	inc bc                                           ; $66da: $03
	db $fc                                           ; $66db: $fc
	db $e4                                           ; $66dc: $e4
	inc b                                            ; $66dd: $04
	ld [hl], a                                       ; $66de: $77
	add hl, bc                                       ; $66df: $09
	ld de, $59c1                                     ; $66e0: $11 $c1 $59
	db $e3                                           ; $66e3: $e3
	nop                                              ; $66e4: $00
	adc l                                            ; $66e5: $8d
	ld h, b                                          ; $66e6: $60
	add b                                            ; $66e7: $80
	and b                                            ; $66e8: $a0
	rrca                                             ; $66e9: $0f
	inc bc                                           ; $66ea: $03
	db $e4                                           ; $66eb: $e4
	nop                                              ; $66ec: $00
	ld a, e                                          ; $66ed: $7b
	inc bc                                           ; $66ee: $03
	db $e4                                           ; $66ef: $e4
	nop                                              ; $66f0: $00
	ld [bc], a                                       ; $66f1: $02
	jr z, @+$08                                      ; $66f2: $28 $06

	ret nz                                           ; $66f4: $c0

	ld bc, $08a0                                     ; $66f5: $01 $a0 $08
	ld bc, $6caa                                     ; $66f8: $01 $aa $6c
	ld bc, $09b7                                     ; $66fb: $01 $b7 $09
	ld de, $02e1                                     ; $66fe: $11 $e1 $02
	inc bc                                           ; $6701: $03
	rla                                              ; $6702: $17
	ret nz                                           ; $6703: $c0

	ld bc, $08a0                                     ; $6704: $01 $a0 $08
	ld bc, $e1bc                                     ; $6707: $01 $bc $e1
	ld [bc], a                                       ; $670a: $02
	inc bc                                           ; $670b: $03
	di                                               ; $670c: $f3
	db $e4                                           ; $670d: $e4
	inc b                                            ; $670e: $04
	ld b, [hl]                                       ; $670f: $46
	ld bc, $09c0                                     ; $6710: $01 $c0 $09
	ld a, $81                                        ; $6713: $3e $81
	ret nz                                           ; $6715: $c0

	inc e                                            ; $6716: $1c
	rst SubAFromHL                                          ; $6717: $d7
	ld bc, $24d2                                     ; $6718: $01 $d2 $24
	ld h, b                                          ; $671b: $60
	cp $08                                           ; $671c: $fe $08
	db $fc                                           ; $671e: $fc
	ret nz                                           ; $671f: $c0

	add b                                            ; $6720: $80
	db $d3                                           ; $6721: $d3
	db $fc                                           ; $6722: $fc
	ret nz                                           ; $6723: $c0

	ld l, d                                          ; $6724: $6a
	jp nc, $c009                                     ; $6725: $d2 $09 $c0

	ld bc, $08a0                                     ; $6728: $01 $a0 $08
	ld bc, $e4c5                                     ; $672b: $01 $c5 $e4
	nop                                              ; $672e: $00
	ld c, [hl]                                       ; $672f: $4e
	ld c, $e1                                        ; $6730: $0e $e1
	ld [bc], a                                       ; $6732: $02
	inc bc                                           ; $6733: $03
	dec de                                           ; $6734: $1b
	ret nz                                           ; $6735: $c0

	ld bc, $08a0                                     ; $6736: $01 $a0 $08
	ld bc, $e1cf                                     ; $6739: $01 $cf $e1
	ld [bc], a                                       ; $673c: $02
	inc bc                                           ; $673d: $03
	db $fc                                           ; $673e: $fc
	nop                                              ; $673f: $00
	ld c, $e1                                        ; $6740: $0e $e1
	ld [bc], a                                       ; $6742: $02
	inc bc                                           ; $6743: $03
	dec de                                           ; $6744: $1b
	ret nz                                           ; $6745: $c0

	ld bc, $08a0                                     ; $6746: $01 $a0 $08
	ld bc, $e1dc                                     ; $6749: $01 $dc $e1
	ld [bc], a                                       ; $674c: $02
	inc bc                                           ; $674d: $03
	db $fc                                           ; $674e: $fc
	db $e4                                           ; $674f: $e4
	inc b                                            ; $6750: $04
	inc b                                            ; $6751: $04
	ld bc, $09e7                                     ; $6752: $01 $e7 $09
	ld de, $02e1                                     ; $6755: $11 $e1 $02
	inc bc                                           ; $6758: $03
	rla                                              ; $6759: $17
	ret nz                                           ; $675a: $c0

	ld bc, $08a0                                     ; $675b: $01 $a0 $08
	ld bc, $e1ec                                     ; $675e: $01 $ec $e1
	ld [bc], a                                       ; $6761: $02
	inc bc                                           ; $6762: $03
	di                                               ; $6763: $f3
	db $e4                                           ; $6764: $e4
	inc bc                                           ; $6765: $03
	rst AddAOntoHL                                          ; $6766: $ef
	add hl, bc                                       ; $6767: $09
	inc de                                           ; $6768: $13
	ret nz                                           ; $6769: $c0

	ld bc, $08a0                                     ; $676a: $01 $a0 $08
	ld bc, $c0f2                                     ; $676d: $01 $f2 $c0
	ld bc, $01a0                                     ; $6770: $01 $a0 $01
	ld bc, $e1fd                                     ; $6773: $01 $fd $e1
	ld [bc], a                                       ; $6776: $02
	inc b                                            ; $6777: $04
	dec b                                            ; $6778: $05
	db $e4                                           ; $6779: $e4
	inc bc                                           ; $677a: $03
	jp c, wPtrToDataCopyStruct+1                                      ; $677b: $da $09 $c1

	rlca                                             ; $677e: $07
	ret nz                                           ; $677f: $c0

	ld bc, $08a0                                     ; $6780: $01 $a0 $08
	ld [bc], a                                       ; $6783: $02
	inc bc                                           ; $6784: $03
	ret nz                                           ; $6785: $c0

	ld bc, $01a0                                     ; $6786: $01 $a0 $01
	ld [bc], a                                       ; $6789: $02
	ld a, [bc]                                       ; $678a: $0a
	pop hl                                           ; $678b: $e1
	ld [bc], a                                       ; $678c: $02
	inc bc                                           ; $678d: $03
	dec de                                           ; $678e: $1b
	ret nz                                           ; $678f: $c0

	ld bc, $08a0                                     ; $6790: $01 $a0 $08
	ld [bc], a                                       ; $6793: $02
	inc d                                            ; $6794: $14
	ret nz                                           ; $6795: $c0

	ld bc, $01a0                                     ; $6796: $01 $a0 $01
	ld [bc], a                                       ; $6799: $02
	inc e                                            ; $679a: $1c
	ret nz                                           ; $679b: $c0

	ld bc, $08a0                                     ; $679c: $01 $a0 $08
	ld [bc], a                                       ; $679f: $02
	ld hl, $a1c1                                     ; $67a0: $21 $c1 $a1
	ret nz                                           ; $67a3: $c0

	add hl, bc                                       ; $67a4: $09
	db $e3                                           ; $67a5: $e3
	nop                                              ; $67a6: $00
	inc l                                            ; $67a7: $2c
	pop bc                                           ; $67a8: $c1
	ld e, e                                          ; $67a9: $5b
	ret nz                                           ; $67aa: $c0

	ld bc, $08a0                                     ; $67ab: $01 $a0 $08
	ld [bc], a                                       ; $67ae: $02
	ld [hl+], a                                      ; $67af: $22
	ret nz                                           ; $67b0: $c0

	ld bc, $01a0                                     ; $67b1: $01 $a0 $01
	ld [bc], a                                       ; $67b4: $02
	inc h                                            ; $67b5: $24
	ret nz                                           ; $67b6: $c0

	ld bc, $08a0                                     ; $67b7: $01 $a0 $08
	ld [bc], a                                       ; $67ba: $02
	jr z, @-$3e                                      ; $67bb: $28 $c0

	ld bc, $01a0                                     ; $67bd: $01 $a0 $01
	ld [bc], a                                       ; $67c0: $02
	inc l                                            ; $67c1: $2c
	ret nz                                           ; $67c2: $c0

	ld bc, $08a0                                     ; $67c3: $01 $a0 $08
	ld [bc], a                                       ; $67c6: $02
	inc [hl]                                         ; $67c7: $34
	ret nz                                           ; $67c8: $c0

	dec bc                                           ; $67c9: $0b
	db $e3                                           ; $67ca: $e3
	nop                                              ; $67cb: $00
	rra                                              ; $67cc: $1f
	ret nz                                           ; $67cd: $c0

	nop                                              ; $67ce: $00
	ld [bc], a                                       ; $67cf: $02
	dec sp                                           ; $67d0: $3b
	ret nz                                           ; $67d1: $c0

	rrca                                             ; $67d2: $0f
	db $e3                                           ; $67d3: $e3
	nop                                              ; $67d4: $00
	ld sp, hl                                        ; $67d5: $f9
	ret nz                                           ; $67d6: $c0

	ld bc, $08a0                                     ; $67d7: $01 $a0 $08
	ld [bc], a                                       ; $67da: $02
	ccf                                              ; $67db: $3f
	ret nz                                           ; $67dc: $c0

	ld bc, $01a0                                     ; $67dd: $01 $a0 $01
	ld [bc], a                                       ; $67e0: $02
	ld b, d                                          ; $67e1: $42
	ret nz                                           ; $67e2: $c0

	ld bc, $08a0                                     ; $67e3: $01 $a0 $08
	ld [bc], a                                       ; $67e6: $02
	ld b, a                                          ; $67e7: $47
	ret nz                                           ; $67e8: $c0

	ld bc, $01a0                                     ; $67e9: $01 $a0 $01
	ld [bc], a                                       ; $67ec: $02
	ld c, a                                          ; $67ed: $4f
	pop bc                                           ; $67ee: $c1
	and c                                            ; $67ef: $a1
	pop bc                                           ; $67f0: $c1
	ld e, h                                          ; $67f1: $5c
	ret nz                                           ; $67f2: $c0

	add hl, bc                                       ; $67f3: $09
	db $e3                                           ; $67f4: $e3
	nop                                              ; $67f5: $00
	ld b, c                                          ; $67f6: $41
	ret nz                                           ; $67f7: $c0

	ld de, $00e3                                     ; $67f8: $11 $e3 $00
	adc l                                            ; $67fb: $8d
	pop hl                                           ; $67fc: $e1
	ld [bc], a                                       ; $67fd: $02
	ld [bc], a                                       ; $67fe: $02
	nop                                              ; $67ff: $00
	ret nz                                           ; $6800: $c0

	ld bc, $01a0                                     ; $6801: $01 $a0 $01
	ld [bc], a                                       ; $6804: $02
	ld d, e                                          ; $6805: $53
	pop hl                                           ; $6806: $e1
	ld [bc], a                                       ; $6807: $02
	inc bc                                           ; $6808: $03
	dec de                                           ; $6809: $1b
	ret nz                                           ; $680a: $c0

	ld bc, $08a0                                     ; $680b: $01 $a0 $08
	ld [bc], a                                       ; $680e: $02
	ld [hl+], a                                      ; $680f: $22
	ret nz                                           ; $6810: $c0

	ld bc, $01a0                                     ; $6811: $01 $a0 $01
	ld [bc], a                                       ; $6814: $02
	ld e, d                                          ; $6815: $5a
	ret nz                                           ; $6816: $c0

	ld bc, $08a0                                     ; $6817: $01 $a0 $08
	ld [bc], a                                       ; $681a: $02
	ld l, [hl]                                       ; $681b: $6e
	ret nz                                           ; $681c: $c0

	ld bc, $01a0                                     ; $681d: $01 $a0 $01
	ld [bc], a                                       ; $6820: $02
	ld a, [hl]                                       ; $6821: $7e
	pop hl                                           ; $6822: $e1
	ld [bc], a                                       ; $6823: $02
	inc bc                                           ; $6824: $03
	rrca                                             ; $6825: $0f
	ret nz                                           ; $6826: $c0

	ld bc, $08a0                                     ; $6827: $01 $a0 $08
	ld [bc], a                                       ; $682a: $02
	adc a                                            ; $682b: $8f
	ret nz                                           ; $682c: $c0

	ld bc, $01a0                                     ; $682d: $01 $a0 $01
	ld [bc], a                                       ; $6830: $02
	sbc [hl]                                         ; $6831: $9e
	ret nz                                           ; $6832: $c0

	ld bc, $08a0                                     ; $6833: $01 $a0 $08
	ld [bc], a                                       ; $6836: $02
	xor c                                            ; $6837: $a9
	ret nz                                           ; $6838: $c0

	ld bc, $01a0                                     ; $6839: $01 $a0 $01
	ld [bc], a                                       ; $683c: $02
	xor a                                            ; $683d: $af
	ret nz                                           ; $683e: $c0

	ld bc, $08a0                                     ; $683f: $01 $a0 $08
	ld [bc], a                                       ; $6842: $02
	or c                                             ; $6843: $b1
	pop hl                                           ; $6844: $e1
	ld [bc], a                                       ; $6845: $02
	inc bc                                           ; $6846: $03
	inc de                                           ; $6847: $13
	ret nz                                           ; $6848: $c0

	ld bc, $08a0                                     ; $6849: $01 $a0 $08
	ld [bc], a                                       ; $684c: $02
	cp e                                             ; $684d: $bb
	ret nz                                           ; $684e: $c0

	ld bc, $01a0                                     ; $684f: $01 $a0 $01
	ld [bc], a                                       ; $6852: $02
	ret nz                                           ; $6853: $c0

	ret nz                                           ; $6854: $c0

	ld bc, $08a0                                     ; $6855: $01 $a0 $08
	ld [bc], a                                       ; $6858: $02
	ret                                              ; $6859: $c9


	ret nz                                           ; $685a: $c0

	ld bc, $01a0                                     ; $685b: $01 $a0 $01
	ld [bc], a                                       ; $685e: $02
	push de                                          ; $685f: $d5
	ret nz                                           ; $6860: $c0

	ld bc, $08a0                                     ; $6861: $01 $a0 $08
	ld [bc], a                                       ; $6864: $02
	rst SubAFromHL                                          ; $6865: $d7
	ret nz                                           ; $6866: $c0

	ld bc, $01a0                                     ; $6867: $01 $a0 $01
	ld [bc], a                                       ; $686a: $02
	db $dd                                           ; $686b: $dd
	nop                                              ; $686c: $00
	add b                                            ; $686d: $80
	and b                                            ; $686e: $a0
	rrca                                             ; $686f: $0f
	ret nc                                           ; $6870: $d0

	add d                                            ; $6871: $82
	ld bc, $d2d2                                     ; $6872: $01 $d2 $d2
	pop hl                                           ; $6875: $e1
	ld [bc], a                                       ; $6876: $02
	inc b                                            ; $6877: $04
	pop de                                           ; $6878: $d1
	ret nz                                           ; $6879: $c0

	ld d, e                                          ; $687a: $53
	pop de                                           ; $687b: $d1
	ret nz                                           ; $687c: $c0

	ld d, d                                          ; $687d: $52
	jp c, Jump_080_6bc1                              ; $687e: $da $c1 $6b

	push de                                          ; $6881: $d5
	rst SubAFromHL                                          ; $6882: $d7
	db $e4                                           ; $6883: $e4
	ld [bc], a                                       ; $6884: $02
	ret nc                                           ; $6885: $d0

	add hl, bc                                       ; $6886: $09
	ld hl, $59c1                                     ; $6887: $21 $c1 $59
	db $e3                                           ; $688a: $e3
	nop                                              ; $688b: $00
	adc [hl]                                         ; $688c: $8e
	ret nz                                           ; $688d: $c0

	ld bc, $08a0                                     ; $688e: $01 $a0 $08
	ld [bc], a                                       ; $6891: $02
	rst AddAOntoHL                                          ; $6892: $ef
	pop hl                                           ; $6893: $e1
	ld [bc], a                                       ; $6894: $02
	rlca                                             ; $6895: $07
	rst FarCall                                          ; $6896: $f7
	and b                                            ; $6897: $a0
	add b                                            ; $6898: $80
	and b                                            ; $6899: $a0
	stop                                             ; $689a: $10 $00
	inc bc                                           ; $689c: $03
	db $e4                                           ; $689d: $e4
	nop                                              ; $689e: $00
	dec bc                                           ; $689f: $0b
	rst $38                                          ; $68a0: $ff
	rlca                                             ; $68a1: $07
	ld b, b                                          ; $68a2: $40
	add b                                            ; $68a3: $80
	and b                                            ; $68a4: $a0
	db $10                                           ; $68a5: $10
	db $e4                                           ; $68a6: $e4
	nop                                              ; $68a7: $00
	ld c, d                                          ; $68a8: $4a
	jr z, jr_080_68b1                                ; $68a9: $28 $06

	ret nz                                           ; $68ab: $c0

	ld bc, $08a0                                     ; $68ac: $01 $a0 $08
	ld [bc], a                                       ; $68af: $02
	rst FarCall                                          ; $68b0: $f7

jr_080_68b1:
	ccf                                              ; $68b1: $3f
	inc bc                                           ; $68b2: $03
	ld [bc], a                                       ; $68b3: $02
	add hl, bc                                       ; $68b4: $09
	ld de, $02e1                                     ; $68b5: $11 $e1 $02
	inc bc                                           ; $68b8: $03
	inc de                                           ; $68b9: $13
	ret nz                                           ; $68ba: $c0

	ld bc, $08a0                                     ; $68bb: $01 $a0 $08
	inc bc                                           ; $68be: $03
	add hl, bc                                       ; $68bf: $09
	pop hl                                           ; $68c0: $e1
	ld [bc], a                                       ; $68c1: $02
	inc bc                                           ; $68c2: $03
	ld [$02e4], a                                    ; $68c3: $ea $e4 $02
	adc a                                            ; $68c6: $8f
	inc bc                                           ; $68c7: $03
	ld d, $09                                        ; $68c8: $16 $09
	ld de, $02e1                                     ; $68ca: $11 $e1 $02
	inc bc                                           ; $68cd: $03
	rra                                              ; $68ce: $1f
	ret nz                                           ; $68cf: $c0

	ld bc, $08a0                                     ; $68d0: $01 $a0 $08
	inc bc                                           ; $68d3: $03
	jr @-$1d                                         ; $68d4: $18 $e1

	ld [bc], a                                       ; $68d6: $02
	inc b                                            ; $68d7: $04
	dec b                                            ; $68d8: $05
	db $e4                                           ; $68d9: $e4
	ld [bc], a                                       ; $68da: $02
	ld a, d                                          ; $68db: $7a
	inc bc                                           ; $68dc: $03
	dec h                                            ; $68dd: $25
	add hl, bc                                       ; $68de: $09
	ld de, $02e1                                     ; $68df: $11 $e1 $02
	inc bc                                           ; $68e2: $03
	rla                                              ; $68e3: $17
	ret nz                                           ; $68e4: $c0

	ld bc, $08a0                                     ; $68e5: $01 $a0 $08
	inc bc                                           ; $68e8: $03
	daa                                              ; $68e9: $27
	pop hl                                           ; $68ea: $e1
	ld [bc], a                                       ; $68eb: $02
	inc bc                                           ; $68ec: $03
	di                                               ; $68ed: $f3
	db $e4                                           ; $68ee: $e4
	ld [bc], a                                       ; $68ef: $02
	ld h, l                                          ; $68f0: $65
	jr z, @+$08                                      ; $68f1: $28 $06

	ret nz                                           ; $68f3: $c0

	ld bc, $08a0                                     ; $68f4: $01 $a0 $08
	inc bc                                           ; $68f7: $03
	jr nc, jr_080_6939                               ; $68f8: $30 $3f

	inc bc                                           ; $68fa: $03
	add hl, sp                                       ; $68fb: $39
	add hl, bc                                       ; $68fc: $09
	ld de, $02e1                                     ; $68fd: $11 $e1 $02
	inc bc                                           ; $6900: $03
	inc de                                           ; $6901: $13
	ret nz                                           ; $6902: $c0

	ld bc, $08a0                                     ; $6903: $01 $a0 $08
	inc bc                                           ; $6906: $03
	ld b, b                                          ; $6907: $40
	pop hl                                           ; $6908: $e1
	ld [bc], a                                       ; $6909: $02
	inc bc                                           ; $690a: $03
	ld [$02e4], a                                    ; $690b: $ea $e4 $02
	ld b, a                                          ; $690e: $47
	inc bc                                           ; $690f: $03
	ld d, e                                          ; $6910: $53
	add hl, bc                                       ; $6911: $09
	ld de, $02e1                                     ; $6912: $11 $e1 $02
	inc bc                                           ; $6915: $03
	rra                                              ; $6916: $1f
	ret nz                                           ; $6917: $c0

	ld bc, $08a0                                     ; $6918: $01 $a0 $08
	inc bc                                           ; $691b: $03
	ld e, b                                          ; $691c: $58
	pop hl                                           ; $691d: $e1
	ld [bc], a                                       ; $691e: $02
	inc b                                            ; $691f: $04
	dec b                                            ; $6920: $05
	db $e4                                           ; $6921: $e4
	ld [bc], a                                       ; $6922: $02
	ld [hl-], a                                      ; $6923: $32
	inc bc                                           ; $6924: $03
	ld h, c                                          ; $6925: $61
	add hl, bc                                       ; $6926: $09
	ld de, $02e1                                     ; $6927: $11 $e1 $02
	inc bc                                           ; $692a: $03
	rla                                              ; $692b: $17
	ret nz                                           ; $692c: $c0

	ld bc, $08a0                                     ; $692d: $01 $a0 $08
	inc bc                                           ; $6930: $03
	ld l, b                                          ; $6931: $68
	pop hl                                           ; $6932: $e1
	ld [bc], a                                       ; $6933: $02
	inc bc                                           ; $6934: $03
	di                                               ; $6935: $f3
	db $e4                                           ; $6936: $e4
	ld [bc], a                                       ; $6937: $02
	dec e                                            ; $6938: $1d

jr_080_6939:
	add hl, bc                                       ; $6939: $09
	daa                                              ; $693a: $27
	pop bc                                           ; $693b: $c1
	ld e, c                                          ; $693c: $59
	db $e3                                           ; $693d: $e3
	nop                                              ; $693e: $00
	adc a                                            ; $693f: $8f
	ret nz                                           ; $6940: $c0

	ld bc, $08a0                                     ; $6941: $01 $a0 $08
	inc bc                                           ; $6944: $03
	ld [hl], l                                       ; $6945: $75
	ret nz                                           ; $6946: $c0

	ld bc, $01a0                                     ; $6947: $01 $a0 $01
	inc bc                                           ; $694a: $03
	ld a, l                                          ; $694b: $7d
	pop hl                                           ; $694c: $e1
	ld [bc], a                                       ; $694d: $02
	ld [$a016], sp                                   ; $694e: $08 $16 $a0
	add b                                            ; $6951: $80
	and b                                            ; $6952: $a0
	ld de, $0300                                     ; $6953: $11 $00 $03
	db $e4                                           ; $6956: $e4
	nop                                              ; $6957: $00
	dec bc                                           ; $6958: $0b
	rst $38                                          ; $6959: $ff
	rlca                                             ; $695a: $07
	ld b, b                                          ; $695b: $40
	add b                                            ; $695c: $80
	and b                                            ; $695d: $a0
	ld de, $00e4                                     ; $695e: $11 $e4 $00
	ld c, d                                          ; $6961: $4a
	jr z, jr_080_696a                                ; $6962: $28 $06

	ret nz                                           ; $6964: $c0

	ld bc, $08a0                                     ; $6965: $01 $a0 $08
	inc bc                                           ; $6968: $03
	add [hl]                                         ; $6969: $86

jr_080_696a:
	ccf                                              ; $696a: $3f
	inc bc                                           ; $696b: $03
	sub c                                            ; $696c: $91
	add hl, bc                                       ; $696d: $09
	ld de, $02e1                                     ; $696e: $11 $e1 $02
	inc bc                                           ; $6971: $03
	inc de                                           ; $6972: $13
	ret nz                                           ; $6973: $c0

	ld bc, $08a0                                     ; $6974: $01 $a0 $08
	inc bc                                           ; $6977: $03
	sbc c                                            ; $6978: $99
	pop hl                                           ; $6979: $e1
	ld [bc], a                                       ; $697a: $02
	inc bc                                           ; $697b: $03
	ld [$01e4], a                                    ; $697c: $ea $e4 $01
	sub $03                                          ; $697f: $d6 $03
	sbc [hl]                                         ; $6981: $9e
	add hl, bc                                       ; $6982: $09
	ld de, $02e1                                     ; $6983: $11 $e1 $02
	inc bc                                           ; $6986: $03
	rra                                              ; $6987: $1f
	ret nz                                           ; $6988: $c0

	ld bc, $08a0                                     ; $6989: $01 $a0 $08
	inc bc                                           ; $698c: $03
	and h                                            ; $698d: $a4
	pop hl                                           ; $698e: $e1
	ld [bc], a                                       ; $698f: $02
	inc b                                            ; $6990: $04
	dec b                                            ; $6991: $05
	db $e4                                           ; $6992: $e4
	ld bc, $03c1                                     ; $6993: $01 $c1 $03
	xor l                                            ; $6996: $ad
	add hl, bc                                       ; $6997: $09
	ld de, $02e1                                     ; $6998: $11 $e1 $02
	inc bc                                           ; $699b: $03
	rla                                              ; $699c: $17
	ret nz                                           ; $699d: $c0

	ld bc, $08a0                                     ; $699e: $01 $a0 $08
	inc bc                                           ; $69a1: $03
	or e                                             ; $69a2: $b3
	pop hl                                           ; $69a3: $e1
	ld [bc], a                                       ; $69a4: $02
	inc bc                                           ; $69a5: $03
	di                                               ; $69a6: $f3
	db $e4                                           ; $69a7: $e4
	ld bc, $28ac                                     ; $69a8: $01 $ac $28
	ld b, $c0                                        ; $69ab: $06 $c0
	ld bc, $08a0                                     ; $69ad: $01 $a0 $08
	inc bc                                           ; $69b0: $03
	or [hl]                                          ; $69b1: $b6
	ccf                                              ; $69b2: $3f
	inc bc                                           ; $69b3: $03
	jp $1109                                         ; $69b4: $c3 $09 $11


	pop hl                                           ; $69b7: $e1
	ld [bc], a                                       ; $69b8: $02
	inc bc                                           ; $69b9: $03
	inc de                                           ; $69ba: $13
	ret nz                                           ; $69bb: $c0

	ld bc, $08a0                                     ; $69bc: $01 $a0 $08
	inc bc                                           ; $69bf: $03
	jp z, $02e1                                      ; $69c0: $ca $e1 $02

	inc bc                                           ; $69c3: $03
	ld [$01e4], a                                    ; $69c4: $ea $e4 $01
	adc [hl]                                         ; $69c7: $8e
	inc bc                                           ; $69c8: $03
	rst SubAFromHL                                          ; $69c9: $d7
	add hl, bc                                       ; $69ca: $09
	ld de, $02e1                                     ; $69cb: $11 $e1 $02
	inc bc                                           ; $69ce: $03
	rra                                              ; $69cf: $1f
	ret nz                                           ; $69d0: $c0

	ld bc, $08a0                                     ; $69d1: $01 $a0 $08
	inc bc                                           ; $69d4: $03
	sbc $e1                                          ; $69d5: $de $e1
	ld [bc], a                                       ; $69d7: $02
	inc b                                            ; $69d8: $04
	dec b                                            ; $69d9: $05
	db $e4                                           ; $69da: $e4
	ld bc, $0379                                     ; $69db: $01 $79 $03
	rst SubAFromBC                                          ; $69de: $e7
	add hl, bc                                       ; $69df: $09
	ld de, $02e1                                     ; $69e0: $11 $e1 $02
	inc bc                                           ; $69e3: $03
	rla                                              ; $69e4: $17
	ret nz                                           ; $69e5: $c0

	ld bc, $08a0                                     ; $69e6: $01 $a0 $08
	inc bc                                           ; $69e9: $03
	xor $e1                                          ; $69ea: $ee $e1
	ld [bc], a                                       ; $69ec: $02
	inc bc                                           ; $69ed: $03
	di                                               ; $69ee: $f3
	db $e4                                           ; $69ef: $e4
	ld bc, $0964                                     ; $69f0: $01 $64 $09
	ld hl, $59c1                                     ; $69f3: $21 $c1 $59
	db $e3                                           ; $69f6: $e3
	nop                                              ; $69f7: $00
	sub b                                            ; $69f8: $90
	ret nz                                           ; $69f9: $c0

	ld bc, $08a0                                     ; $69fa: $01 $a0 $08
	inc bc                                           ; $69fd: $03
	ld hl, sp-$1f                                    ; $69fe: $f8 $e1
	ld [bc], a                                       ; $6a00: $02
	ld [$a02a], sp                                   ; $6a01: $08 $2a $a0
	add b                                            ; $6a04: $80
	and b                                            ; $6a05: $a0
	ld [de], a                                       ; $6a06: $12
	nop                                              ; $6a07: $00
	inc bc                                           ; $6a08: $03
	db $e4                                           ; $6a09: $e4
	nop                                              ; $6a0a: $00
	dec bc                                           ; $6a0b: $0b
	rst $38                                          ; $6a0c: $ff
	rlca                                             ; $6a0d: $07
	ld b, b                                          ; $6a0e: $40
	add b                                            ; $6a0f: $80
	and b                                            ; $6a10: $a0
	ld [de], a                                       ; $6a11: $12
	db $e4                                           ; $6a12: $e4
	nop                                              ; $6a13: $00
	ld c, d                                          ; $6a14: $4a
	jr z, @+$08                                      ; $6a15: $28 $06

	ret nz                                           ; $6a17: $c0

	ld bc, $08a0                                     ; $6a18: $01 $a0 $08
	inc bc                                           ; $6a1b: $03
	cp $3f                                           ; $6a1c: $fe $3f
	inc b                                            ; $6a1e: $04
	inc b                                            ; $6a1f: $04
	add hl, bc                                       ; $6a20: $09
	ld de, $02e1                                     ; $6a21: $11 $e1 $02
	inc bc                                           ; $6a24: $03
	inc de                                           ; $6a25: $13
	ret nz                                           ; $6a26: $c0

	ld bc, $08a0                                     ; $6a27: $01 $a0 $08
	inc b                                            ; $6a2a: $04
	inc c                                            ; $6a2b: $0c
	pop hl                                           ; $6a2c: $e1
	ld [bc], a                                       ; $6a2d: $02
	inc bc                                           ; $6a2e: $03
	ld [$01e4], a                                    ; $6a2f: $ea $e4 $01
	inc hl                                           ; $6a32: $23
	inc b                                            ; $6a33: $04
	rra                                              ; $6a34: $1f
	add hl, bc                                       ; $6a35: $09
	ld de, $02e1                                     ; $6a36: $11 $e1 $02
	inc bc                                           ; $6a39: $03
	rra                                              ; $6a3a: $1f
	ret nz                                           ; $6a3b: $c0

	ld bc, $08a0                                     ; $6a3c: $01 $a0 $08
	inc b                                            ; $6a3f: $04
	ld [hl+], a                                      ; $6a40: $22
	pop hl                                           ; $6a41: $e1
	ld [bc], a                                       ; $6a42: $02
	inc b                                            ; $6a43: $04
	dec b                                            ; $6a44: $05
	db $e4                                           ; $6a45: $e4
	ld bc, $040e                                     ; $6a46: $01 $0e $04
	ld [hl-], a                                      ; $6a49: $32
	add hl, bc                                       ; $6a4a: $09
	ld de, $02e1                                     ; $6a4b: $11 $e1 $02
	inc bc                                           ; $6a4e: $03
	inc de                                           ; $6a4f: $13
	ret nz                                           ; $6a50: $c0

	ld bc, $08a0                                     ; $6a51: $01 $a0 $08
	inc b                                            ; $6a54: $04
	dec [hl]                                         ; $6a55: $35
	pop hl                                           ; $6a56: $e1
	ld [bc], a                                       ; $6a57: $02
	inc bc                                           ; $6a58: $03
	ld [$00e4], a                                    ; $6a59: $ea $e4 $00
	ld sp, hl                                        ; $6a5c: $f9
	jr z, jr_080_6a65                                ; $6a5d: $28 $06

	ret nz                                           ; $6a5f: $c0

	ld bc, $08a0                                     ; $6a60: $01 $a0 $08
	inc b                                            ; $6a63: $04
	inc a                                            ; $6a64: $3c

jr_080_6a65:
	ccf                                              ; $6a65: $3f
	inc b                                            ; $6a66: $04
	ld b, c                                          ; $6a67: $41
	add hl, bc                                       ; $6a68: $09
	ld de, $02e1                                     ; $6a69: $11 $e1 $02
	inc bc                                           ; $6a6c: $03
	inc de                                           ; $6a6d: $13
	ret nz                                           ; $6a6e: $c0

	ld bc, $08a0                                     ; $6a6f: $01 $a0 $08
	inc b                                            ; $6a72: $04
	ld b, [hl]                                       ; $6a73: $46
	pop hl                                           ; $6a74: $e1
	ld [bc], a                                       ; $6a75: $02
	inc bc                                           ; $6a76: $03
	ld [$00e4], a                                    ; $6a77: $ea $e4 $00
	db $db                                           ; $6a7a: $db
	inc b                                            ; $6a7b: $04
	ld d, b                                          ; $6a7c: $50
	add hl, bc                                       ; $6a7d: $09
	ld de, $02e1                                     ; $6a7e: $11 $e1 $02
	inc bc                                           ; $6a81: $03
	rra                                              ; $6a82: $1f
	ret nz                                           ; $6a83: $c0

	ld bc, $08a0                                     ; $6a84: $01 $a0 $08
	inc b                                            ; $6a87: $04
	ld d, [hl]                                       ; $6a88: $56
	pop hl                                           ; $6a89: $e1
	ld [bc], a                                       ; $6a8a: $02
	inc b                                            ; $6a8b: $04
	dec b                                            ; $6a8c: $05
	db $e4                                           ; $6a8d: $e4
	nop                                              ; $6a8e: $00
	add $04                                          ; $6a8f: $c6 $04
	ld e, c                                          ; $6a91: $59
	add hl, bc                                       ; $6a92: $09
	ld de, $02e1                                     ; $6a93: $11 $e1 $02
	inc bc                                           ; $6a96: $03
	rla                                              ; $6a97: $17
	ret nz                                           ; $6a98: $c0

	ld bc, $08a0                                     ; $6a99: $01 $a0 $08
	inc b                                            ; $6a9c: $04
	ld e, a                                          ; $6a9d: $5f
	pop hl                                           ; $6a9e: $e1
	ld [bc], a                                       ; $6a9f: $02
	inc bc                                           ; $6aa0: $03
	di                                               ; $6aa1: $f3
	db $e4                                           ; $6aa2: $e4
	nop                                              ; $6aa3: $00
	or c                                             ; $6aa4: $b1
	add hl, bc                                       ; $6aa5: $09
	rla                                              ; $6aa6: $17
	pop bc                                           ; $6aa7: $c1
	ld e, c                                          ; $6aa8: $59
	db $e3                                           ; $6aa9: $e3
	nop                                              ; $6aaa: $00
	sub d                                            ; $6aab: $92
	and b                                            ; $6aac: $a0
	add b                                            ; $6aad: $80
	and b                                            ; $6aae: $a0
	inc de                                           ; $6aaf: $13
	nop                                              ; $6ab0: $00
	inc bc                                           ; $6ab1: $03
	db $e4                                           ; $6ab2: $e4
	nop                                              ; $6ab3: $00
	dec bc                                           ; $6ab4: $0b
	rst $38                                          ; $6ab5: $ff
	rlca                                             ; $6ab6: $07
	ld b, b                                          ; $6ab7: $40
	add b                                            ; $6ab8: $80
	and b                                            ; $6ab9: $a0
	inc de                                           ; $6aba: $13
	db $e4                                           ; $6abb: $e4
	nop                                              ; $6abc: $00
	ld c, d                                          ; $6abd: $4a
	jr z, jr_080_6ac6                                ; $6abe: $28 $06

	ret nz                                           ; $6ac0: $c0

	ld bc, $08a0                                     ; $6ac1: $01 $a0 $08
	inc b                                            ; $6ac4: $04
	ld l, c                                          ; $6ac5: $69

jr_080_6ac6:
	ccf                                              ; $6ac6: $3f
	inc b                                            ; $6ac7: $04
	ld [hl], c                                       ; $6ac8: $71
	add hl, bc                                       ; $6ac9: $09
	ld de, $02e1                                     ; $6aca: $11 $e1 $02
	inc bc                                           ; $6acd: $03
	rla                                              ; $6ace: $17
	ret nz                                           ; $6acf: $c0

	ld bc, $08a0                                     ; $6ad0: $01 $a0 $08
	inc b                                            ; $6ad3: $04
	ld [hl], e                                       ; $6ad4: $73
	pop hl                                           ; $6ad5: $e1
	ld [bc], a                                       ; $6ad6: $02
	inc bc                                           ; $6ad7: $03
	di                                               ; $6ad8: $f3
	db $e4                                           ; $6ad9: $e4
	nop                                              ; $6ada: $00
	ld a, d                                          ; $6adb: $7a
	inc b                                            ; $6adc: $04
	ld a, [hl]                                       ; $6add: $7e
	add hl, bc                                       ; $6ade: $09
	ld de, $02e1                                     ; $6adf: $11 $e1 $02
	inc bc                                           ; $6ae2: $03
	rra                                              ; $6ae3: $1f
	ret nz                                           ; $6ae4: $c0

	ld bc, $08a0                                     ; $6ae5: $01 $a0 $08
	inc b                                            ; $6ae8: $04
	add b                                            ; $6ae9: $80
	pop hl                                           ; $6aea: $e1
	ld [bc], a                                       ; $6aeb: $02
	inc b                                            ; $6aec: $04
	dec b                                            ; $6aed: $05
	db $e4                                           ; $6aee: $e4
	nop                                              ; $6aef: $00
	ld h, l                                          ; $6af0: $65
	inc b                                            ; $6af1: $04
	add a                                            ; $6af2: $87
	add hl, bc                                       ; $6af3: $09
	ld de, $02e1                                     ; $6af4: $11 $e1 $02
	inc bc                                           ; $6af7: $03
	rra                                              ; $6af8: $1f
	ret nz                                           ; $6af9: $c0

	ld bc, $08a0                                     ; $6afa: $01 $a0 $08
	inc b                                            ; $6afd: $04
	adc c                                            ; $6afe: $89
	pop hl                                           ; $6aff: $e1
	ld [bc], a                                       ; $6b00: $02
	inc b                                            ; $6b01: $04
	dec b                                            ; $6b02: $05
	db $e4                                           ; $6b03: $e4
	nop                                              ; $6b04: $00
	ld d, b                                          ; $6b05: $50
	jr z, jr_080_6b14                                ; $6b06: $28 $0c

	ret nz                                           ; $6b08: $c0

	ld bc, $01a0                                     ; $6b09: $01 $a0 $01
	inc b                                            ; $6b0c: $04
	adc a                                            ; $6b0d: $8f
	ret nz                                           ; $6b0e: $c0

	ld bc, $08a0                                     ; $6b0f: $01 $a0 $08
	inc b                                            ; $6b12: $04
	sbc b                                            ; $6b13: $98

jr_080_6b14:
	ccf                                              ; $6b14: $3f
	inc b                                            ; $6b15: $04
	and b                                            ; $6b16: $a0
	add hl, bc                                       ; $6b17: $09
	ld de, $02e1                                     ; $6b18: $11 $e1 $02
	inc bc                                           ; $6b1b: $03
	dec de                                           ; $6b1c: $1b
	ret nz                                           ; $6b1d: $c0

	ld bc, $08a0                                     ; $6b1e: $01 $a0 $08
	inc b                                            ; $6b21: $04
	and [hl]                                         ; $6b22: $a6
	pop hl                                           ; $6b23: $e1
	ld [bc], a                                       ; $6b24: $02
	inc bc                                           ; $6b25: $03
	db $fc                                           ; $6b26: $fc
	db $e4                                           ; $6b27: $e4
	nop                                              ; $6b28: $00
	inc l                                            ; $6b29: $2c
	inc b                                            ; $6b2a: $04
	xor e                                            ; $6b2b: $ab
	add hl, bc                                       ; $6b2c: $09
	ld de, $02e1                                     ; $6b2d: $11 $e1 $02
	inc bc                                           ; $6b30: $03
	rra                                              ; $6b31: $1f
	ret nz                                           ; $6b32: $c0

	ld bc, $08a0                                     ; $6b33: $01 $a0 $08
	inc b                                            ; $6b36: $04
	or d                                             ; $6b37: $b2
	pop hl                                           ; $6b38: $e1
	ld [bc], a                                       ; $6b39: $02
	inc b                                            ; $6b3a: $04
	dec b                                            ; $6b3b: $05
	db $e4                                           ; $6b3c: $e4
	nop                                              ; $6b3d: $00
	rla                                              ; $6b3e: $17
	inc b                                            ; $6b3f: $04
	cp c                                             ; $6b40: $b9
	add hl, bc                                       ; $6b41: $09
	ld de, $02e1                                     ; $6b42: $11 $e1 $02
	inc bc                                           ; $6b45: $03
	rra                                              ; $6b46: $1f
	ret nz                                           ; $6b47: $c0

	ld bc, $08a0                                     ; $6b48: $01 $a0 $08
	inc b                                            ; $6b4b: $04
	jp nz, $02e1                                     ; $6b4c: $c2 $e1 $02

	inc b                                            ; $6b4f: $04
	dec b                                            ; $6b50: $05
	db $e4                                           ; $6b51: $e4
	nop                                              ; $6b52: $00
	ld [bc], a                                       ; $6b53: $02
	inc c                                            ; $6b54: $0c
	ld d, c                                          ; $6b55: $51
	db $fc                                           ; $6b56: $fc
	ret nz                                           ; $6b57: $c0

	ld h, l                                          ; $6b58: $65
	ret c                                            ; $6b59: $d8

	jr z, jr_080_6b68                                ; $6b5a: $28 $0c

	ret nz                                           ; $6b5c: $c0

	ld bc, $08a0                                     ; $6b5d: $01 $a0 $08
	inc b                                            ; $6b60: $04
	ret z                                            ; $6b61: $c8

	ret nz                                           ; $6b62: $c0

	ld bc, $01a0                                     ; $6b63: $01 $a0 $01
	inc b                                            ; $6b66: $04
	rst GetHLinHL                                          ; $6b67: $cf

jr_080_6b68:
	jr c, jr_080_6b6e                                ; $6b68: $38 $04

	sub $09                                          ; $6b6a: $d6 $09
	dec l                                            ; $6b6c: $2d
	pop bc                                           ; $6b6d: $c1

jr_080_6b6e:
	ld e, c                                          ; $6b6e: $59
	db $e3                                           ; $6b6f: $e3
	nop                                              ; $6b70: $00
	sub c                                            ; $6b71: $91
	ret nz                                           ; $6b72: $c0

	add hl, bc                                       ; $6b73: $09
	db $e3                                           ; $6b74: $e3
	nop                                              ; $6b75: $00
	inc [hl]                                         ; $6b76: $34
	and b                                            ; $6b77: $a0
	add b                                            ; $6b78: $80
	and b                                            ; $6b79: $a0
	inc d                                            ; $6b7a: $14
	nop                                              ; $6b7b: $00
	ld b, $c0                                        ; $6b7c: $06 $c0
	ld bc, $08a0                                     ; $6b7e: $01 $a0 $08
	inc b                                            ; $6b81: $04
	ret c                                            ; $6b82: $d8

	rst $38                                          ; $6b83: $ff
	inc c                                            ; $6b84: $0c
	ret nz                                           ; $6b85: $c0

	ld bc, $08a0                                     ; $6b86: $01 $a0 $08
	inc b                                            ; $6b89: $04
	ldh [c], a                                       ; $6b8a: $e2
	ret nz                                           ; $6b8b: $c0

	ld bc, $01a0                                     ; $6b8c: $01 $a0 $01
	inc b                                            ; $6b8f: $04
	db $eb                                           ; $6b90: $eb
	ret nz                                           ; $6b91: $c0

	ld d, [hl]                                       ; $6b92: $56
	rst SubAFromHL                                          ; $6b93: $d7
	call c, $e5d6                                    ; $6b94: $dc $d6 $e5
	inc hl                                           ; $6b97: $23
	nop                                              ; $6b98: $00
	nop                                              ; $6b99: $00
	inc b                                            ; $6b9a: $04
	xor $09                                          ; $6b9b: $ee $09
	inc bc                                           ; $6b9d: $03
	ldh [rP1], a                                     ; $6b9e: $e0 $00
	ld [$09d1], sp                                   ; $6ba0: $08 $d1 $09
	inc bc                                           ; $6ba3: $03
	ldh [rP1], a                                     ; $6ba4: $e0 $00
	ld [bc], a                                       ; $6ba6: $02
	ld b, h                                          ; $6ba7: $44
	pop bc                                           ; $6ba8: $c1
	ld e, c                                          ; $6ba9: $59
	db $e3                                           ; $6baa: $e3
	nop                                              ; $6bab: $00
	adc c                                            ; $6bac: $89
	db $fd                                           ; $6bad: $fd
	add hl, sp                                       ; $6bae: $39
	adc e                                            ; $6baf: $8b
	and b                                            ; $6bb0: $a0
	ld [bc], a                                       ; $6bb1: $02
	ld [bc], a                                       ; $6bb2: $02
	or b                                             ; $6bb3: $b0
	ld a, h                                          ; $6bb4: $7c
	dec b                                            ; $6bb5: $05
	ret nz                                           ; $6bb6: $c0

	ld d, [hl]                                       ; $6bb7: $56
	rst SubAFromHL                                          ; $6bb8: $d7
	call c, $02d1                                    ; $6bb9: $dc $d1 $02
	or b                                             ; $6bbc: $b0
	ld a, [hl]                                       ; $6bbd: $7e
	dec b                                            ; $6bbe: $05
	ret nz                                           ; $6bbf: $c0

	ld d, [hl]                                       ; $6bc0: $56

Jump_080_6bc1:
	rst SubAFromHL                                          ; $6bc1: $d7
	call c, $02d2                                    ; $6bc2: $dc $d2 $02
	or b                                             ; $6bc5: $b0
	ld a, a                                          ; $6bc6: $7f
	dec b                                            ; $6bc7: $05
	ret nz                                           ; $6bc8: $c0

	ld d, [hl]                                       ; $6bc9: $56
	rst SubAFromHL                                          ; $6bca: $d7
	call c, $02d3                                    ; $6bcb: $dc $d3 $02
	or b                                             ; $6bce: $b0
	ld a, e                                          ; $6bcf: $7b
	dec b                                            ; $6bd0: $05
	ret nz                                           ; $6bd1: $c0

	ld d, [hl]                                       ; $6bd2: $56
	rst SubAFromHL                                          ; $6bd3: $d7
	call c, $02d4                                    ; $6bd4: $dc $d4 $02
	or b                                             ; $6bd7: $b0
	ld a, l                                          ; $6bd8: $7d
	dec b                                            ; $6bd9: $05
	ret nz                                           ; $6bda: $c0

	ld d, [hl]                                       ; $6bdb: $56
	rst SubAFromHL                                          ; $6bdc: $d7
	call c, $02d5                                    ; $6bdd: $dc $d5 $02
	or b                                             ; $6be0: $b0
	ld a, d                                          ; $6be1: $7a
	dec b                                            ; $6be2: $05
	ret nz                                           ; $6be3: $c0

	ld d, [hl]                                       ; $6be4: $56
	rst SubAFromHL                                          ; $6be5: $d7
	call c, $e5d7                                    ; $6be6: $dc $d7 $e5
	inc hl                                           ; $6be9: $23
	nop                                              ; $6bea: $00
	nop                                              ; $6beb: $00
	add hl, bc                                       ; $6bec: $09
	dec l                                            ; $6bed: $2d
	ret nz                                           ; $6bee: $c0

	ld bc, $08a0                                     ; $6bef: $01 $a0 $08
	inc b                                            ; $6bf2: $04
	ldh a, [$c0]                                     ; $6bf3: $f0 $c0
	ld bc, $01a0                                     ; $6bf5: $01 $a0 $01
	inc b                                            ; $6bf8: $04
	or $81                                           ; $6bf9: $f6 $81
	ret nz                                           ; $6bfb: $c0

	ld h, l                                          ; $6bfc: $65
	ld b, $d4                                        ; $6bfd: $06 $d4
	push de                                          ; $6bff: $d5
	rst SubAFromHL                                          ; $6c00: $d7
	ret c                                            ; $6c01: $d8

	reti                                             ; $6c02: $d9


	jp c, $d008                                      ; $6c03: $da $08 $d0

	add e                                            ; $6c06: $83
	ld bc, $d0de                                     ; $6c07: $01 $de $d0
	db $e4                                           ; $6c0a: $e4
	nop                                              ; $6c0b: $00
	db $10                                           ; $6c0c: $10
	inc b                                            ; $6c0d: $04
	pop de                                           ; $6c0e: $d1
	db $d3                                           ; $6c0f: $d3
	sub $db                                          ; $6c10: $d6 $db
	ld [$83d0], sp                                   ; $6c12: $08 $d0 $83
	ld bc, $d1de                                     ; $6c15: $01 $de $d1
	db $e4                                           ; $6c18: $e4
	nop                                              ; $6c19: $00
	or l                                             ; $6c1a: $b5
	add hl, bc                                       ; $6c1b: $09
	inc e                                            ; $6c1c: $1c
	pop bc                                           ; $6c1d: $c1
	ld e, c                                          ; $6c1e: $59
	db $e3                                           ; $6c1f: $e3
	nop                                              ; $6c20: $00
	cp b                                             ; $6c21: $b8
	ret nz                                           ; $6c22: $c0

	add hl, bc                                       ; $6c23: $09
	db $e3                                           ; $6c24: $e3
	nop                                              ; $6c25: $00
	dec de                                           ; $6c26: $1b
	and b                                            ; $6c27: $a0
	add b                                            ; $6c28: $80
	and b                                            ; $6c29: $a0
	dec d                                            ; $6c2a: $15
	nop                                              ; $6c2b: $00
	inc bc                                           ; $6c2c: $03
	db $e4                                           ; $6c2d: $e4
	nop                                              ; $6c2e: $00
	dec bc                                           ; $6c2f: $0b
	rst $38                                          ; $6c30: $ff
	rlca                                             ; $6c31: $07
	ld b, b                                          ; $6c32: $40
	add b                                            ; $6c33: $80
	and b                                            ; $6c34: $a0
	dec d                                            ; $6c35: $15
	db $e4                                           ; $6c36: $e4
	nop                                              ; $6c37: $00
	ld c, a                                          ; $6c38: $4f
	jr z, jr_080_6c41                                ; $6c39: $28 $06

	ret nz                                           ; $6c3b: $c0

	ld bc, $08a0                                     ; $6c3c: $01 $a0 $08
	inc b                                            ; $6c3f: $04
	ei                                               ; $6c40: $fb

jr_080_6c41:
	ld b, h                                          ; $6c41: $44
	dec b                                            ; $6c42: $05
	ld b, $09                                        ; $6c43: $06 $09
	ld d, $e1                                        ; $6c45: $16 $e1
	ld [bc], a                                       ; $6c47: $02
	inc bc                                           ; $6c48: $03
	inc de                                           ; $6c49: $13
	pop bc                                           ; $6c4a: $c1
	or d                                             ; $6c4b: $b2
	db $e3                                           ; $6c4c: $e3
	nop                                              ; $6c4d: $00
	ld e, e                                          ; $6c4e: $5b
	ret nz                                           ; $6c4f: $c0

	ld bc, $08a0                                     ; $6c50: $01 $a0 $08
	dec b                                            ; $6c53: $05
	dec bc                                           ; $6c54: $0b
	pop hl                                           ; $6c55: $e1
	ld [bc], a                                       ; $6c56: $02
	inc bc                                           ; $6c57: $03
	ld [$01e4], a                                    ; $6c58: $ea $e4 $01
	ld [hl+], a                                      ; $6c5b: $22
	dec b                                            ; $6c5c: $05
	dec d                                            ; $6c5d: $15
	add hl, bc                                       ; $6c5e: $09
	ld de, $02e1                                     ; $6c5f: $11 $e1 $02
	inc bc                                           ; $6c62: $03
	rra                                              ; $6c63: $1f
	ret nz                                           ; $6c64: $c0

	ld bc, $08a0                                     ; $6c65: $01 $a0 $08
	dec b                                            ; $6c68: $05
	dec de                                           ; $6c69: $1b
	pop hl                                           ; $6c6a: $e1
	ld [bc], a                                       ; $6c6b: $02
	inc b                                            ; $6c6c: $04
	dec b                                            ; $6c6d: $05
	db $e4                                           ; $6c6e: $e4
	ld bc, $050d                                     ; $6c6f: $01 $0d $05
	ld [hl+], a                                      ; $6c72: $22
	add hl, bc                                       ; $6c73: $09
	ld de, $02e1                                     ; $6c74: $11 $e1 $02
	inc bc                                           ; $6c77: $03
	dec de                                           ; $6c78: $1b
	ret nz                                           ; $6c79: $c0

	ld bc, $08a0                                     ; $6c7a: $01 $a0 $08
	dec b                                            ; $6c7d: $05
	add hl, hl                                       ; $6c7e: $29
	pop hl                                           ; $6c7f: $e1
	ld [bc], a                                       ; $6c80: $02
	inc bc                                           ; $6c81: $03
	db $fc                                           ; $6c82: $fc
	db $e4                                           ; $6c83: $e4
	nop                                              ; $6c84: $00
	ld hl, sp+$28                                    ; $6c85: $f8 $28
	ld b, $c0                                        ; $6c87: $06 $c0
	ld bc, $08a0                                     ; $6c89: $01 $a0 $08
	dec b                                            ; $6c8c: $05
	ld l, $3f                                        ; $6c8d: $2e $3f
	dec b                                            ; $6c8f: $05
	jr c, jr_080_6c9b                                ; $6c90: $38 $09

	ld de, $02e1                                     ; $6c92: $11 $e1 $02
	inc bc                                           ; $6c95: $03
	dec de                                           ; $6c96: $1b
	ret nz                                           ; $6c97: $c0

	ld bc, $08a0                                     ; $6c98: $01 $a0 $08

jr_080_6c9b:
	dec b                                            ; $6c9b: $05
	ld a, [hl-]                                      ; $6c9c: $3a
	pop hl                                           ; $6c9d: $e1
	ld [bc], a                                       ; $6c9e: $02
	inc bc                                           ; $6c9f: $03
	db $fc                                           ; $6ca0: $fc
	db $e4                                           ; $6ca1: $e4
	nop                                              ; $6ca2: $00
	jp c, Jump_080_4405                              ; $6ca3: $da $05 $44

	add hl, bc                                       ; $6ca6: $09
	ld de, $02e1                                     ; $6ca7: $11 $e1 $02
	inc bc                                           ; $6caa: $03
	rra                                              ; $6cab: $1f
	ret nz                                           ; $6cac: $c0

	ld bc, $08a0                                     ; $6cad: $01 $a0 $08
	dec b                                            ; $6cb0: $05
	ld b, [hl]                                       ; $6cb1: $46
	pop hl                                           ; $6cb2: $e1
	ld [bc], a                                       ; $6cb3: $02
	inc b                                            ; $6cb4: $04
	dec b                                            ; $6cb5: $05
	db $e4                                           ; $6cb6: $e4
	nop                                              ; $6cb7: $00
	push bc                                          ; $6cb8: $c5
	dec b                                            ; $6cb9: $05
	ld c, h                                          ; $6cba: $4c
	add hl, bc                                       ; $6cbb: $09
	ld de, $02e1                                     ; $6cbc: $11 $e1 $02
	inc bc                                           ; $6cbf: $03
	dec de                                           ; $6cc0: $1b
	ret nz                                           ; $6cc1: $c0

	ld bc, $08a0                                     ; $6cc2: $01 $a0 $08
	dec b                                            ; $6cc5: $05
	ld d, c                                          ; $6cc6: $51
	pop hl                                           ; $6cc7: $e1
	ld [bc], a                                       ; $6cc8: $02
	inc bc                                           ; $6cc9: $03
	db $fc                                           ; $6cca: $fc
	db $e4                                           ; $6ccb: $e4
	nop                                              ; $6ccc: $00
	or b                                             ; $6ccd: $b0
	add hl, bc                                       ; $6cce: $09
	inc e                                            ; $6ccf: $1c
	pop bc                                           ; $6cd0: $c1
	ld e, c                                          ; $6cd1: $59
	db $e3                                           ; $6cd2: $e3
	nop                                              ; $6cd3: $00
	cp c                                             ; $6cd4: $b9
	ret nz                                           ; $6cd5: $c0

	add hl, bc                                       ; $6cd6: $09
	db $e3                                           ; $6cd7: $e3
	nop                                              ; $6cd8: $00
	scf                                              ; $6cd9: $37
	and b                                            ; $6cda: $a0
	add b                                            ; $6cdb: $80
	and b                                            ; $6cdc: $a0
	ld d, $00                                        ; $6cdd: $16 $00
	inc bc                                           ; $6cdf: $03
	db $e4                                           ; $6ce0: $e4
	nop                                              ; $6ce1: $00
	dec bc                                           ; $6ce2: $0b
	rst $38                                          ; $6ce3: $ff
	rlca                                             ; $6ce4: $07
	ld b, b                                          ; $6ce5: $40
	add b                                            ; $6ce6: $80
	and b                                            ; $6ce7: $a0
	ld d, $e4                                        ; $6ce8: $16 $e4
	nop                                              ; $6cea: $00
	ld c, d                                          ; $6ceb: $4a
	jr z, jr_080_6cf4                                ; $6cec: $28 $06

	ret nz                                           ; $6cee: $c0

	ld bc, $08a0                                     ; $6cef: $01 $a0 $08
	dec b                                            ; $6cf2: $05
	ld d, a                                          ; $6cf3: $57

jr_080_6cf4:
	ccf                                              ; $6cf4: $3f
	dec b                                            ; $6cf5: $05
	ld b, $09                                        ; $6cf6: $06 $09
	ld de, $02e1                                     ; $6cf8: $11 $e1 $02
	inc bc                                           ; $6cfb: $03
	inc de                                           ; $6cfc: $13
	ret nz                                           ; $6cfd: $c0

	ld bc, $08a0                                     ; $6cfe: $01 $a0 $08
	dec b                                            ; $6d01: $05
	ld h, b                                          ; $6d02: $60
	pop hl                                           ; $6d03: $e1
	ld [bc], a                                       ; $6d04: $02
	inc bc                                           ; $6d05: $03
	ld [$00e4], a                                    ; $6d06: $ea $e4 $00
	ld [hl], h                                       ; $6d09: $74
	dec b                                            ; $6d0a: $05
	ld l, l                                          ; $6d0b: $6d
	add hl, bc                                       ; $6d0c: $09
	ld de, $02e1                                     ; $6d0d: $11 $e1 $02
	inc bc                                           ; $6d10: $03
	rra                                              ; $6d11: $1f
	ret nz                                           ; $6d12: $c0

	ld bc, $08a0                                     ; $6d13: $01 $a0 $08
	dec b                                            ; $6d16: $05
	ld [hl], h                                       ; $6d17: $74
	pop hl                                           ; $6d18: $e1
	ld [bc], a                                       ; $6d19: $02
	inc b                                            ; $6d1a: $04
	dec b                                            ; $6d1b: $05
	db $e4                                           ; $6d1c: $e4
	nop                                              ; $6d1d: $00
	ld e, a                                          ; $6d1e: $5f
	dec b                                            ; $6d1f: $05
	add l                                            ; $6d20: $85
	add hl, bc                                       ; $6d21: $09
	ld de, $02e1                                     ; $6d22: $11 $e1 $02
	inc bc                                           ; $6d25: $03
	dec de                                           ; $6d26: $1b
	ret nz                                           ; $6d27: $c0

	ld bc, $08a0                                     ; $6d28: $01 $a0 $08
	dec b                                            ; $6d2b: $05
	adc d                                            ; $6d2c: $8a
	pop hl                                           ; $6d2d: $e1
	ld [bc], a                                       ; $6d2e: $02
	inc bc                                           ; $6d2f: $03
	db $fc                                           ; $6d30: $fc
	db $e4                                           ; $6d31: $e4
	nop                                              ; $6d32: $00
	ld c, d                                          ; $6d33: $4a
	jr z, jr_080_6d3c                                ; $6d34: $28 $06

	ret nz                                           ; $6d36: $c0

	ld bc, $08a0                                     ; $6d37: $01 $a0 $08
	dec b                                            ; $6d3a: $05
	sub c                                            ; $6d3b: $91

jr_080_6d3c:
	ccf                                              ; $6d3c: $3f
	dec b                                            ; $6d3d: $05
	sbc e                                            ; $6d3e: $9b
	add hl, bc                                       ; $6d3f: $09
	ld de, $02e1                                     ; $6d40: $11 $e1 $02
	inc bc                                           ; $6d43: $03
	inc de                                           ; $6d44: $13
	ret nz                                           ; $6d45: $c0

	ld bc, $08a0                                     ; $6d46: $01 $a0 $08
	dec b                                            ; $6d49: $05
	and c                                            ; $6d4a: $a1
	pop hl                                           ; $6d4b: $e1
	ld [bc], a                                       ; $6d4c: $02
	inc bc                                           ; $6d4d: $03
	ld [$00e4], a                                    ; $6d4e: $ea $e4 $00
	inc l                                            ; $6d51: $2c
	dec b                                            ; $6d52: $05
	xor d                                            ; $6d53: $aa
	add hl, bc                                       ; $6d54: $09
	ld de, $02e1                                     ; $6d55: $11 $e1 $02
	inc bc                                           ; $6d58: $03
	rra                                              ; $6d59: $1f
	ret nz                                           ; $6d5a: $c0

	ld bc, $08a0                                     ; $6d5b: $01 $a0 $08
	dec b                                            ; $6d5e: $05
	or c                                             ; $6d5f: $b1
	pop hl                                           ; $6d60: $e1
	ld [bc], a                                       ; $6d61: $02
	inc b                                            ; $6d62: $04
	dec b                                            ; $6d63: $05
	db $e4                                           ; $6d64: $e4
	nop                                              ; $6d65: $00
	rla                                              ; $6d66: $17
	dec b                                            ; $6d67: $05
	cp l                                             ; $6d68: $bd
	add hl, bc                                       ; $6d69: $09
	ld de, $02e1                                     ; $6d6a: $11 $e1 $02
	inc bc                                           ; $6d6d: $03
	rla                                              ; $6d6e: $17
	ret nz                                           ; $6d6f: $c0

	ld bc, $08a0                                     ; $6d70: $01 $a0 $08
	dec b                                            ; $6d73: $05
	jp $02e1                                         ; $6d74: $c3 $e1 $02


	inc bc                                           ; $6d77: $03
	db $fc                                           ; $6d78: $fc
	db $e4                                           ; $6d79: $e4
	nop                                              ; $6d7a: $00
	ld [bc], a                                       ; $6d7b: $02
	add hl, bc                                       ; $6d7c: $09
	inc hl                                           ; $6d7d: $23
	pop hl                                           ; $6d7e: $e1
	ld [bc], a                                       ; $6d7f: $02
	ld [$815c], sp                                   ; $6d80: $08 $5c $81
	ret nz                                           ; $6d83: $c0

	ld h, l                                          ; $6d84: $65
	ld b, $d4                                        ; $6d85: $06 $d4
	push de                                          ; $6d87: $d5
	rst SubAFromHL                                          ; $6d88: $d7
	ret c                                            ; $6d89: $d8

	reti                                             ; $6d8a: $d9


	jp c, $c005                                      ; $6d8b: $da $05 $c0

	ld d, [hl]                                       ; $6d8e: $56
	rst SubAFromHL                                          ; $6d8f: $d7
	db $dd                                           ; $6d90: $dd
	ret nc                                           ; $6d91: $d0

	inc b                                            ; $6d92: $04
	pop de                                           ; $6d93: $d1
	db $d3                                           ; $6d94: $d3
	sub $db                                          ; $6d95: $d6 $db
	dec b                                            ; $6d97: $05
	ret nz                                           ; $6d98: $c0

	ld d, [hl]                                       ; $6d99: $56
	rst SubAFromHL                                          ; $6d9a: $d7
	db $dd                                           ; $6d9b: $dd
	pop de                                           ; $6d9c: $d1
	push hl                                          ; $6d9d: $e5
	inc hl                                           ; $6d9e: $23
	nop                                              ; $6d9f: $00
	nop                                              ; $6da0: $00
	add hl, bc                                       ; $6da1: $09
	rrca                                             ; $6da2: $0f
	ret nz                                           ; $6da3: $c0

	ld bc, $08a0                                     ; $6da4: $01 $a0 $08
	dec b                                            ; $6da7: $05
	call $01c0                                       ; $6da8: $cd $c0 $01
	and b                                            ; $6dab: $a0
	ld bc, $d305                                     ; $6dac: $01 $05 $d3
	db $e4                                           ; $6daf: $e4
	nop                                              ; $6db0: $00
	ld [bc], a                                       ; $6db1: $02
	add hl, bc                                       ; $6db2: $09
	adc a                                            ; $6db3: $8f
	pop bc                                           ; $6db4: $c1
	ld e, c                                          ; $6db5: $59
	db $e3                                           ; $6db6: $e3
	nop                                              ; $6db7: $00
	sub h                                            ; $6db8: $94
	ret nz                                           ; $6db9: $c0

	ld bc, $01a0                                     ; $6dba: $01 $a0 $01
	dec b                                            ; $6dbd: $05
	jp c, $01c0                                      ; $6dbe: $da $c0 $01

	and b                                            ; $6dc1: $a0
	ld [$e705], sp                                   ; $6dc2: $08 $05 $e7
	db $fd                                           ; $6dc5: $fd
	ld a, h                                          ; $6dc6: $7c
	adc e                                            ; $6dc7: $8b
	ld bc, $02ea                                     ; $6dc8: $01 $ea $02
	or b                                             ; $6dcb: $b0
	inc l                                            ; $6dcc: $2c
	rlca                                             ; $6dcd: $07
	pop hl                                           ; $6dce: $e1
	ld [bc], a                                       ; $6dcf: $02
	dec b                                            ; $6dd0: $05
	ld c, a                                          ; $6dd1: $4f
	db $e4                                           ; $6dd2: $e4
	nop                                              ; $6dd3: $00
	db $f4                                           ; $6dd4: $f4
	ld [bc], a                                       ; $6dd5: $02
	or b                                             ; $6dd6: $b0
	dec l                                            ; $6dd7: $2d
	rlca                                             ; $6dd8: $07
	pop hl                                           ; $6dd9: $e1
	ld [bc], a                                       ; $6dda: $02
	dec b                                            ; $6ddb: $05
	ld h, [hl]                                       ; $6ddc: $66
	db $e4                                           ; $6ddd: $e4
	nop                                              ; $6dde: $00
	ld h, l                                          ; $6ddf: $65
	ld [bc], a                                       ; $6de0: $02
	or b                                             ; $6de1: $b0
	ld l, $07                                        ; $6de2: $2e $07
	pop hl                                           ; $6de4: $e1
	ld [bc], a                                       ; $6de5: $02
	dec b                                            ; $6de6: $05
	ld a, l                                          ; $6de7: $7d
	db $e4                                           ; $6de8: $e4
	nop                                              ; $6de9: $00
	sbc $02                                          ; $6dea: $de $02
	or b                                             ; $6dec: $b0
	cpl                                              ; $6ded: $2f
	rlca                                             ; $6dee: $07
	pop hl                                           ; $6def: $e1
	ld [bc], a                                       ; $6df0: $02
	dec b                                            ; $6df1: $05
	sub h                                            ; $6df2: $94
	db $e4                                           ; $6df3: $e4
	nop                                              ; $6df4: $00
	sub c                                            ; $6df5: $91
	ld [bc], a                                       ; $6df6: $02
	or b                                             ; $6df7: $b0
	jr nc, jr_080_6e01                               ; $6df8: $30 $07

	pop hl                                           ; $6dfa: $e1
	ld [bc], a                                       ; $6dfb: $02
	dec b                                            ; $6dfc: $05
	xor e                                            ; $6dfd: $ab
	db $e4                                           ; $6dfe: $e4
	nop                                              ; $6dff: $00
	add [hl]                                         ; $6e00: $86

jr_080_6e01:
	ld [bc], a                                       ; $6e01: $02
	or b                                             ; $6e02: $b0
	ld sp, $e107                                     ; $6e03: $31 $07 $e1
	ld [bc], a                                       ; $6e06: $02
	dec b                                            ; $6e07: $05
	jp nz, $00e4                                     ; $6e08: $c2 $e4 $00

	ld a, e                                          ; $6e0b: $7b
	ld [bc], a                                       ; $6e0c: $02
	or b                                             ; $6e0d: $b0
	ld [hl-], a                                      ; $6e0e: $32
	rlca                                             ; $6e0f: $07
	pop hl                                           ; $6e10: $e1
	ld [bc], a                                       ; $6e11: $02
	dec b                                            ; $6e12: $05
	reti                                             ; $6e13: $d9


	db $e4                                           ; $6e14: $e4
	nop                                              ; $6e15: $00
	ld l, $02                                        ; $6e16: $2e $02
	or b                                             ; $6e18: $b0
	inc sp                                           ; $6e19: $33
	rlca                                             ; $6e1a: $07
	pop hl                                           ; $6e1b: $e1
	ld [bc], a                                       ; $6e1c: $02
	dec b                                            ; $6e1d: $05
	ldh a, [$e4]                                     ; $6e1e: $f0 $e4
	nop                                              ; $6e20: $00
	and a                                            ; $6e21: $a7
	ld [bc], a                                       ; $6e22: $02
	or b                                             ; $6e23: $b0
	inc [hl]                                         ; $6e24: $34
	rlca                                             ; $6e25: $07
	pop hl                                           ; $6e26: $e1
	ld [bc], a                                       ; $6e27: $02
	ld b, $07                                        ; $6e28: $06 $07
	db $e4                                           ; $6e2a: $e4
	nop                                              ; $6e2b: $00
	ld e, d                                          ; $6e2c: $5a
	ld [bc], a                                       ; $6e2d: $02
	or b                                             ; $6e2e: $b0
	dec [hl]                                         ; $6e2f: $35
	rlca                                             ; $6e30: $07
	pop hl                                           ; $6e31: $e1
	ld [bc], a                                       ; $6e32: $02
	ld b, $1e                                        ; $6e33: $06 $1e
	db $e4                                           ; $6e35: $e4
	nop                                              ; $6e36: $00
	ld c, a                                          ; $6e37: $4f
	ld [bc], a                                       ; $6e38: $02
	or b                                             ; $6e39: $b0
	ld [hl], $07                                     ; $6e3a: $36 $07
	pop hl                                           ; $6e3c: $e1
	ld [bc], a                                       ; $6e3d: $02
	ld b, $35                                        ; $6e3e: $06 $35
	db $e4                                           ; $6e40: $e4
	nop                                              ; $6e41: $00
	ld [bc], a                                       ; $6e42: $02
	jr z, jr_080_6e45                                ; $6e43: $28 $00

jr_080_6e45:
	ccf                                              ; $6e45: $3f
	dec b                                            ; $6e46: $05
	db $ec                                           ; $6e47: $ec
	add hl, bc                                       ; $6e48: $09
	ld de, $02e1                                     ; $6e49: $11 $e1 $02
	inc bc                                           ; $6e4c: $03
	inc de                                           ; $6e4d: $13
	ret nz                                           ; $6e4e: $c0

	ld bc, $08a0                                     ; $6e4f: $01 $a0 $08
	dec b                                            ; $6e52: $05
	xor $e1                                          ; $6e53: $ee $e1
	ld [bc], a                                       ; $6e55: $02
	inc bc                                           ; $6e56: $03
	pop hl                                           ; $6e57: $e1
	db $e4                                           ; $6e58: $e4
	nop                                              ; $6e59: $00
	or b                                             ; $6e5a: $b0
	dec b                                            ; $6e5b: $05
	di                                               ; $6e5c: $f3
	add hl, bc                                       ; $6e5d: $09
	ld de, $02e1                                     ; $6e5e: $11 $e1 $02
	inc bc                                           ; $6e61: $03
	rla                                              ; $6e62: $17
	ret nz                                           ; $6e63: $c0

	ld bc, $08a0                                     ; $6e64: $01 $a0 $08
	dec b                                            ; $6e67: $05
	push af                                          ; $6e68: $f5
	pop hl                                           ; $6e69: $e1
	ld [bc], a                                       ; $6e6a: $02
	inc bc                                           ; $6e6b: $03
	di                                               ; $6e6c: $f3
	db $e4                                           ; $6e6d: $e4
	nop                                              ; $6e6e: $00
	sbc e                                            ; $6e6f: $9b
	ld b, $01                                        ; $6e70: $06 $01
	add hl, bc                                       ; $6e72: $09
	ld de, $02e1                                     ; $6e73: $11 $e1 $02
	inc bc                                           ; $6e76: $03
	inc de                                           ; $6e77: $13
	ret nz                                           ; $6e78: $c0

	ld bc, $08a0                                     ; $6e79: $01 $a0 $08
	ld b, $03                                        ; $6e7c: $06 $03
	pop hl                                           ; $6e7e: $e1
	ld [bc], a                                       ; $6e7f: $02
	inc bc                                           ; $6e80: $03
	ld [$00e4], a                                    ; $6e81: $ea $e4 $00
	add [hl]                                         ; $6e84: $86
	jr z, jr_080_6e87                                ; $6e85: $28 $00

jr_080_6e87:
	ccf                                              ; $6e87: $3f
	dec b                                            ; $6e88: $05
	db $ec                                           ; $6e89: $ec
	add hl, bc                                       ; $6e8a: $09
	ld de, $02e1                                     ; $6e8b: $11 $e1 $02
	inc bc                                           ; $6e8e: $03
	rra                                              ; $6e8f: $1f
	ret nz                                           ; $6e90: $c0

	ld bc, $08a0                                     ; $6e91: $01 $a0 $08
	ld b, $0d                                        ; $6e94: $06 $0d
	pop hl                                           ; $6e96: $e1
	ld [bc], a                                       ; $6e97: $02
	inc b                                            ; $6e98: $04
	dec b                                            ; $6e99: $05
	db $e4                                           ; $6e9a: $e4
	nop                                              ; $6e9b: $00
	ld l, [hl]                                       ; $6e9c: $6e
	dec b                                            ; $6e9d: $05
	di                                               ; $6e9e: $f3
	add hl, bc                                       ; $6e9f: $09
	ld de, $02e1                                     ; $6ea0: $11 $e1 $02
	inc bc                                           ; $6ea3: $03
	rla                                              ; $6ea4: $17
	ret nz                                           ; $6ea5: $c0

	ld bc, $08a0                                     ; $6ea6: $01 $a0 $08
	ld b, $13                                        ; $6ea9: $06 $13
	pop hl                                           ; $6eab: $e1
	ld [bc], a                                       ; $6eac: $02
	inc bc                                           ; $6ead: $03
	di                                               ; $6eae: $f3
	db $e4                                           ; $6eaf: $e4
	nop                                              ; $6eb0: $00
	ld e, c                                          ; $6eb1: $59
	ld b, $01                                        ; $6eb2: $06 $01
	add hl, bc                                       ; $6eb4: $09
	ld de, $02e1                                     ; $6eb5: $11 $e1 $02
	inc bc                                           ; $6eb8: $03
	dec de                                           ; $6eb9: $1b
	ret nz                                           ; $6eba: $c0

	ld bc, $08a0                                     ; $6ebb: $01 $a0 $08
	ld b, $1a                                        ; $6ebe: $06 $1a
	pop hl                                           ; $6ec0: $e1
	ld [bc], a                                       ; $6ec1: $02
	inc bc                                           ; $6ec2: $03
	db $fc                                           ; $6ec3: $fc
	db $e4                                           ; $6ec4: $e4
	nop                                              ; $6ec5: $00
	ld b, h                                          ; $6ec6: $44
	jr z, jr_080_6ec9                                ; $6ec7: $28 $00

jr_080_6ec9:
	ccf                                              ; $6ec9: $3f
	dec b                                            ; $6eca: $05
	db $ec                                           ; $6ecb: $ec
	add hl, bc                                       ; $6ecc: $09
	ld de, $02e1                                     ; $6ecd: $11 $e1 $02
	inc bc                                           ; $6ed0: $03
	rla                                              ; $6ed1: $17
	ret nz                                           ; $6ed2: $c0

	ld bc, $08a0                                     ; $6ed3: $01 $a0 $08
	ld b, $21                                        ; $6ed6: $06 $21
	pop hl                                           ; $6ed8: $e1
	ld [bc], a                                       ; $6ed9: $02
	inc bc                                           ; $6eda: $03
	di                                               ; $6edb: $f3
	db $e4                                           ; $6edc: $e4
	nop                                              ; $6edd: $00
	inc l                                            ; $6ede: $2c
	dec b                                            ; $6edf: $05
	di                                               ; $6ee0: $f3
	add hl, bc                                       ; $6ee1: $09
	ld de, $02e1                                     ; $6ee2: $11 $e1 $02
	inc bc                                           ; $6ee5: $03
	dec de                                           ; $6ee6: $1b
	ret nz                                           ; $6ee7: $c0

	ld bc, $08a0                                     ; $6ee8: $01 $a0 $08
	ld b, $25                                        ; $6eeb: $06 $25
	pop hl                                           ; $6eed: $e1
	ld [bc], a                                       ; $6eee: $02
	inc bc                                           ; $6eef: $03
	db $fc                                           ; $6ef0: $fc
	db $e4                                           ; $6ef1: $e4
	nop                                              ; $6ef2: $00
	rla                                              ; $6ef3: $17
	ld b, $01                                        ; $6ef4: $06 $01
	add hl, bc                                       ; $6ef6: $09
	ld de, $02e1                                     ; $6ef7: $11 $e1 $02
	inc bc                                           ; $6efa: $03
	rla                                              ; $6efb: $17
	ret nz                                           ; $6efc: $c0

	ld bc, $08a0                                     ; $6efd: $01 $a0 $08
	ld b, $31                                        ; $6f00: $06 $31
	pop hl                                           ; $6f02: $e1
	ld [bc], a                                       ; $6f03: $02
	inc bc                                           ; $6f04: $03
	di                                               ; $6f05: $f3
	db $e4                                           ; $6f06: $e4
	nop                                              ; $6f07: $00
	ld [bc], a                                       ; $6f08: $02
	add hl, bc                                       ; $6f09: $09
	ld [$02e1], sp                                   ; $6f0a: $08 $e1 $02
	ld [$e5b7], sp                                   ; $6f0d: $08 $b7 $e5
	inc hl                                           ; $6f10: $23
	nop                                              ; $6f11: $00
	nop                                              ; $6f12: $00
	add hl, bc                                       ; $6f13: $09
	rrca                                             ; $6f14: $0f
	ret nz                                           ; $6f15: $c0

	ld bc, $08a0                                     ; $6f16: $01 $a0 $08
	ld b, $34                                        ; $6f19: $06 $34
	ret nz                                           ; $6f1b: $c0

	ld bc, $01a0                                     ; $6f1c: $01 $a0 $01
	dec b                                            ; $6f1f: $05
	db $d3                                           ; $6f20: $d3
	db $e4                                           ; $6f21: $e4
	nop                                              ; $6f22: $00
	ld [bc], a                                       ; $6f23: $02
	add hl, bc                                       ; $6f24: $09
	ret nz                                           ; $6f25: $c0

	jp z, Jump_080_59c1                              ; $6f26: $ca $c1 $59

	db $e3                                           ; $6f29: $e3
	nop                                              ; $6f2a: $00
	sub [hl]                                         ; $6f2b: $96
	ret nz                                           ; $6f2c: $c0

	ld bc, $08a0                                     ; $6f2d: $01 $a0 $08
	ld b, $3d                                        ; $6f30: $06 $3d
	ret nz                                           ; $6f32: $c0

	ld bc, $01a0                                     ; $6f33: $01 $a0 $01
	ld b, $43                                        ; $6f36: $06 $43
	db $fd                                           ; $6f38: $fd
	or a                                             ; $6f39: $b7
	adc e                                            ; $6f3a: $8b
	ld bc, $02f6                                     ; $6f3b: $01 $f6 $02
	or b                                             ; $6f3e: $b0
	scf                                              ; $6f3f: $37
	dec bc                                           ; $6f40: $0b
	pop hl                                           ; $6f41: $e1
	ld [bc], a                                       ; $6f42: $02
	ld b, $6e                                        ; $6f43: $06 $6e
	pop hl                                           ; $6f45: $e1
	ld [bc], a                                       ; $6f46: $02
	ld [bc], a                                       ; $6f47: $02
	nop                                              ; $6f48: $00
	db $e4                                           ; $6f49: $e4
	ld bc, $0229                                     ; $6f4a: $01 $29 $02
	or b                                             ; $6f4d: $b0
	jr c, jr_080_6f5b                                ; $6f4e: $38 $0b

	pop hl                                           ; $6f50: $e1
	ld [bc], a                                       ; $6f51: $02
	ld b, $bf                                        ; $6f52: $06 $bf
	pop hl                                           ; $6f54: $e1
	ld [bc], a                                       ; $6f55: $02
	ld [bc], a                                       ; $6f56: $02
	nop                                              ; $6f57: $00
	db $e4                                           ; $6f58: $e4
	nop                                              ; $6f59: $00
	sbc b                                            ; $6f5a: $98

jr_080_6f5b:
	ld [bc], a                                       ; $6f5b: $02
	or b                                             ; $6f5c: $b0
	add hl, sp                                       ; $6f5d: $39
	dec bc                                           ; $6f5e: $0b
	pop hl                                           ; $6f5f: $e1
	ld [bc], a                                       ; $6f60: $02
	ld b, $d6                                        ; $6f61: $06 $d6
	pop hl                                           ; $6f63: $e1
	ld [bc], a                                       ; $6f64: $02
	ld [bc], a                                       ; $6f65: $02
	nop                                              ; $6f66: $00
	db $e4                                           ; $6f67: $e4
	nop                                              ; $6f68: $00
	jp z, $b002                                      ; $6f69: $ca $02 $b0

	ld a, [hl-]                                      ; $6f6c: $3a
	dec bc                                           ; $6f6d: $0b
	pop hl                                           ; $6f6e: $e1
	ld [bc], a                                       ; $6f6f: $02
	ld b, $ed                                        ; $6f70: $06 $ed
	pop hl                                           ; $6f72: $e1
	ld [bc], a                                       ; $6f73: $02
	ld [bc], a                                       ; $6f74: $02
	nop                                              ; $6f75: $00
	db $e4                                           ; $6f76: $e4
	nop                                              ; $6f77: $00
	db $fc                                           ; $6f78: $fc
	ld [bc], a                                       ; $6f79: $02
	or b                                             ; $6f7a: $b0
	dec sp                                           ; $6f7b: $3b
	dec bc                                           ; $6f7c: $0b
	pop hl                                           ; $6f7d: $e1
	ld [bc], a                                       ; $6f7e: $02
	rlca                                             ; $6f7f: $07
	inc b                                            ; $6f80: $04
	pop hl                                           ; $6f81: $e1
	ld [bc], a                                       ; $6f82: $02
	ld [bc], a                                       ; $6f83: $02
	nop                                              ; $6f84: $00
	db $e4                                           ; $6f85: $e4
	nop                                              ; $6f86: $00
	xor h                                            ; $6f87: $ac
	ld [bc], a                                       ; $6f88: $02
	or b                                             ; $6f89: $b0
	inc a                                            ; $6f8a: $3c
	dec bc                                           ; $6f8b: $0b
	pop hl                                           ; $6f8c: $e1
	ld [bc], a                                       ; $6f8d: $02
	rlca                                             ; $6f8e: $07
	dec de                                           ; $6f8f: $1b
	pop hl                                           ; $6f90: $e1
	ld [bc], a                                       ; $6f91: $02
	ld [bc], a                                       ; $6f92: $02
	nop                                              ; $6f93: $00
	db $e4                                           ; $6f94: $e4
	nop                                              ; $6f95: $00
	sbc l                                            ; $6f96: $9d
	ld [bc], a                                       ; $6f97: $02
	or b                                             ; $6f98: $b0
	dec a                                            ; $6f99: $3d
	dec bc                                           ; $6f9a: $0b
	pop hl                                           ; $6f9b: $e1
	ld [bc], a                                       ; $6f9c: $02
	ld b, $89                                        ; $6f9d: $06 $89
	pop hl                                           ; $6f9f: $e1
	ld [bc], a                                       ; $6fa0: $02
	ld [bc], a                                       ; $6fa1: $02
	nop                                              ; $6fa2: $00
	db $e4                                           ; $6fa3: $e4
	nop                                              ; $6fa4: $00
	rst GetHLinHL                                          ; $6fa5: $cf
	ld [bc], a                                       ; $6fa6: $02
	or b                                             ; $6fa7: $b0
	ld a, $0b                                        ; $6fa8: $3e $0b
	pop hl                                           ; $6faa: $e1
	ld [bc], a                                       ; $6fab: $02
	rlca                                             ; $6fac: $07
	ld [hl-], a                                      ; $6fad: $32
	pop hl                                           ; $6fae: $e1
	ld [bc], a                                       ; $6faf: $02
	ld [bc], a                                       ; $6fb0: $02
	nop                                              ; $6fb1: $00
	db $e4                                           ; $6fb2: $e4
	nop                                              ; $6fb3: $00
	ret nz                                           ; $6fb4: $c0

	ld [bc], a                                       ; $6fb5: $02
	or b                                             ; $6fb6: $b0
	ccf                                              ; $6fb7: $3f
	dec bc                                           ; $6fb8: $0b
	pop hl                                           ; $6fb9: $e1
	ld [bc], a                                       ; $6fba: $02
	rlca                                             ; $6fbb: $07
	ld c, c                                          ; $6fbc: $49
	pop hl                                           ; $6fbd: $e1
	ld [bc], a                                       ; $6fbe: $02
	ld [bc], a                                       ; $6fbf: $02
	nop                                              ; $6fc0: $00
	db $e4                                           ; $6fc1: $e4
	nop                                              ; $6fc2: $00
	ld [hl], b                                       ; $6fc3: $70
	ld [bc], a                                       ; $6fc4: $02
	or b                                             ; $6fc5: $b0
	ld b, b                                          ; $6fc6: $40
	dec bc                                           ; $6fc7: $0b
	pop hl                                           ; $6fc8: $e1
	ld [bc], a                                       ; $6fc9: $02
	ld b, $a4                                        ; $6fca: $06 $a4
	pop hl                                           ; $6fcc: $e1
	ld [bc], a                                       ; $6fcd: $02
	ld [bc], a                                       ; $6fce: $02
	nop                                              ; $6fcf: $00
	db $e4                                           ; $6fd0: $e4
	nop                                              ; $6fd1: $00
	and d                                            ; $6fd2: $a2
	ld [bc], a                                       ; $6fd3: $02
	or b                                             ; $6fd4: $b0
	ld b, c                                          ; $6fd5: $41
	dec bc                                           ; $6fd6: $0b
	pop hl                                           ; $6fd7: $e1
	ld [bc], a                                       ; $6fd8: $02
	rlca                                             ; $6fd9: $07
	ld h, b                                          ; $6fda: $60
	pop hl                                           ; $6fdb: $e1
	ld [bc], a                                       ; $6fdc: $02
	ld [bc], a                                       ; $6fdd: $02
	nop                                              ; $6fde: $00
	db $e4                                           ; $6fdf: $e4
	nop                                              ; $6fe0: $00
	sub e                                            ; $6fe1: $93
	ld [bc], a                                       ; $6fe2: $02
	or b                                             ; $6fe3: $b0
	ld b, d                                          ; $6fe4: $42
	dec bc                                           ; $6fe5: $0b
	pop hl                                           ; $6fe6: $e1
	ld [bc], a                                       ; $6fe7: $02
	rlca                                             ; $6fe8: $07
	ld [hl], a                                       ; $6fe9: $77
	pop hl                                           ; $6fea: $e1
	ld [bc], a                                       ; $6feb: $02
	ld [bc], a                                       ; $6fec: $02
	nop                                              ; $6fed: $00
	db $e4                                           ; $6fee: $e4
	nop                                              ; $6fef: $00
	ld b, e                                          ; $6ff0: $43
	ld [$063f], sp                                   ; $6ff1: $08 $3f $06
	ld c, d                                          ; $6ff4: $4a
	add hl, bc                                       ; $6ff5: $09
	ld de, $02e1                                     ; $6ff6: $11 $e1 $02
	inc bc                                           ; $6ff9: $03
	inc de                                           ; $6ffa: $13
	ret nz                                           ; $6ffb: $c0

	ld bc, $08a0                                     ; $6ffc: $01 $a0 $08
	ld b, $4c                                        ; $6fff: $06 $4c
	pop hl                                           ; $7001: $e1
	ld [bc], a                                       ; $7002: $02
	inc bc                                           ; $7003: $03
	pop hl                                           ; $7004: $e1
	db $e4                                           ; $7005: $e4
	nop                                              ; $7006: $00
	xor [hl]                                         ; $7007: $ae
	ld b, $50                                        ; $7008: $06 $50
	add hl, bc                                       ; $700a: $09
	ld de, $02e1                                     ; $700b: $11 $e1 $02
	inc bc                                           ; $700e: $03
	rra                                              ; $700f: $1f
	ret nz                                           ; $7010: $c0

	ld bc, $08a0                                     ; $7011: $01 $a0 $08
	ld b, $52                                        ; $7014: $06 $52
	pop hl                                           ; $7016: $e1
	ld [bc], a                                       ; $7017: $02
	inc b                                            ; $7018: $04
	dec b                                            ; $7019: $05
	db $e4                                           ; $701a: $e4
	nop                                              ; $701b: $00
	sbc c                                            ; $701c: $99
	ld b, $60                                        ; $701d: $06 $60
	add hl, bc                                       ; $701f: $09
	ld de, $02e1                                     ; $7020: $11 $e1 $02
	inc bc                                           ; $7023: $03
	inc de                                           ; $7024: $13
	ret nz                                           ; $7025: $c0

	ld bc, $08a0                                     ; $7026: $01 $a0 $08
	ld b, $62                                        ; $7029: $06 $62
	pop hl                                           ; $702b: $e1
	ld [bc], a                                       ; $702c: $02
	inc bc                                           ; $702d: $03
	ld [$00e4], a                                    ; $702e: $ea $e4 $00
	add h                                            ; $7031: $84
	ld [$063f], sp                                   ; $7032: $08 $3f $06
	ld c, d                                          ; $7035: $4a
	add hl, bc                                       ; $7036: $09
	ld de, $02e1                                     ; $7037: $11 $e1 $02
	inc bc                                           ; $703a: $03
	rra                                              ; $703b: $1f
	ret nz                                           ; $703c: $c0

	ld bc, $08a0                                     ; $703d: $01 $a0 $08
	ld b, $65                                        ; $7040: $06 $65
	pop hl                                           ; $7042: $e1
	ld [bc], a                                       ; $7043: $02
	inc b                                            ; $7044: $04
	dec b                                            ; $7045: $05
	db $e4                                           ; $7046: $e4
	nop                                              ; $7047: $00
	ld l, l                                          ; $7048: $6d
	ld b, $50                                        ; $7049: $06 $50
	add hl, bc                                       ; $704b: $09
	ld de, $02e1                                     ; $704c: $11 $e1 $02
	inc bc                                           ; $704f: $03
	dec de                                           ; $7050: $1b
	ret nz                                           ; $7051: $c0

	ld bc, $08a0                                     ; $7052: $01 $a0 $08
	ld b, $72                                        ; $7055: $06 $72
	pop hl                                           ; $7057: $e1
	ld [bc], a                                       ; $7058: $02
	inc bc                                           ; $7059: $03
	db $fc                                           ; $705a: $fc
	db $e4                                           ; $705b: $e4
	nop                                              ; $705c: $00
	ld e, b                                          ; $705d: $58
	ld b, $60                                        ; $705e: $06 $60
	add hl, bc                                       ; $7060: $09
	ld de, $02e1                                     ; $7061: $11 $e1 $02
	inc bc                                           ; $7064: $03
	dec de                                           ; $7065: $1b
	ret nz                                           ; $7066: $c0

	ld bc, $08a0                                     ; $7067: $01 $a0 $08
	ld b, $0d                                        ; $706a: $06 $0d
	pop hl                                           ; $706c: $e1
	ld [bc], a                                       ; $706d: $02
	inc bc                                           ; $706e: $03
	db $fc                                           ; $706f: $fc
	db $e4                                           ; $7070: $e4
	nop                                              ; $7071: $00
	ld b, e                                          ; $7072: $43
	ld [$063f], sp                                   ; $7073: $08 $3f $06
	ld c, d                                          ; $7076: $4a
	add hl, bc                                       ; $7077: $09
	ld de, $02e1                                     ; $7078: $11 $e1 $02
	inc bc                                           ; $707b: $03
	rla                                              ; $707c: $17
	ret nz                                           ; $707d: $c0

	ld bc, $08a0                                     ; $707e: $01 $a0 $08
	ld b, $77                                        ; $7081: $06 $77
	pop hl                                           ; $7083: $e1
	ld [bc], a                                       ; $7084: $02
	inc bc                                           ; $7085: $03
	di                                               ; $7086: $f3
	db $e4                                           ; $7087: $e4
	nop                                              ; $7088: $00
	inc l                                            ; $7089: $2c
	ld b, $50                                        ; $708a: $06 $50
	add hl, bc                                       ; $708c: $09
	ld de, $02e1                                     ; $708d: $11 $e1 $02
	inc bc                                           ; $7090: $03
	rla                                              ; $7091: $17
	ret nz                                           ; $7092: $c0

	ld bc, $08a0                                     ; $7093: $01 $a0 $08
	ld b, $7b                                        ; $7096: $06 $7b
	pop hl                                           ; $7098: $e1
	ld [bc], a                                       ; $7099: $02
	inc bc                                           ; $709a: $03
	di                                               ; $709b: $f3
	db $e4                                           ; $709c: $e4
	nop                                              ; $709d: $00
	rla                                              ; $709e: $17
	ld b, $60                                        ; $709f: $06 $60
	add hl, bc                                       ; $70a1: $09
	ld de, $02e1                                     ; $70a2: $11 $e1 $02
	inc bc                                           ; $70a5: $03
	inc de                                           ; $70a6: $13
	ret nz                                           ; $70a7: $c0

	ld bc, $08a0                                     ; $70a8: $01 $a0 $08
	ld b, $85                                        ; $70ab: $06 $85
	pop hl                                           ; $70ad: $e1
	ld [bc], a                                       ; $70ae: $02
	inc bc                                           ; $70af: $03
	ld [$00e4], a                                    ; $70b0: $ea $e4 $00
	ld [bc], a                                       ; $70b3: $02
	add hl, bc                                       ; $70b4: $09
	ld [$02e1], sp                                   ; $70b5: $08 $e1 $02
	add hl, bc                                       ; $70b8: $09
	ld [hl], $e5                                     ; $70b9: $36 $e5
	inc hl                                           ; $70bb: $23
	nop                                              ; $70bc: $00
	nop                                              ; $70bd: $00
	add hl, bc                                       ; $70be: $09
	ld [de], a                                       ; $70bf: $12
	ret nc                                           ; $70c0: $d0

	add e                                            ; $70c1: $83
	ld bc, $d0de                                     ; $70c2: $01 $de $d0
	ret nz                                           ; $70c5: $c0

	ld bc, $08a0                                     ; $70c6: $01 $a0 $08
	ld b, $89                                        ; $70c9: $06 $89
	pop bc                                           ; $70cb: $c1
	ld e, e                                          ; $70cc: $5b
	ret nz                                           ; $70cd: $c0

	set 4, h                                         ; $70ce: $cb $e4
	nop                                              ; $70d0: $00
	ld [bc], a                                       ; $70d1: $02
	add hl, bc                                       ; $70d2: $09
	ld e, $c0                                        ; $70d3: $1e $c0
	ld de, $00e3                                     ; $70d5: $11 $e3 $00
	or d                                             ; $70d8: $b2
	ldh [rSB], a                                     ; $70d9: $e0 $01
	ld l, c                                          ; $70db: $69
	pop bc                                           ; $70dc: $c1
	ld e, h                                          ; $70dd: $5c
	ret nz                                           ; $70de: $c0

	jp z, $80a0                                      ; $70df: $ca $a0 $80

	and b                                            ; $70e2: $a0
	rla                                              ; $70e3: $17
	nop                                              ; $70e4: $00
	inc bc                                           ; $70e5: $03
	db $e4                                           ; $70e6: $e4
	nop                                              ; $70e7: $00
	dec bc                                           ; $70e8: $0b
	rst $38                                          ; $70e9: $ff
	rlca                                             ; $70ea: $07
	ld b, b                                          ; $70eb: $40
	add b                                            ; $70ec: $80
	and b                                            ; $70ed: $a0
	rla                                              ; $70ee: $17
	db $e4                                           ; $70ef: $e4
	nop                                              ; $70f0: $00
	ld c, d                                          ; $70f1: $4a
	jr z, jr_080_70fa                                ; $70f2: $28 $06

	ret nz                                           ; $70f4: $c0

	ld bc, $08a0                                     ; $70f5: $01 $a0 $08
	ld b, $8d                                        ; $70f8: $06 $8d

jr_080_70fa:
	ccf                                              ; $70fa: $3f
	ld b, $91                                        ; $70fb: $06 $91
	add hl, bc                                       ; $70fd: $09
	ld de, $02e1                                     ; $70fe: $11 $e1 $02
	inc bc                                           ; $7101: $03
	inc de                                           ; $7102: $13
	ret nz                                           ; $7103: $c0

	ld bc, $08a0                                     ; $7104: $01 $a0 $08
	ld b, $93                                        ; $7107: $06 $93
	pop hl                                           ; $7109: $e1
	ld [bc], a                                       ; $710a: $02
	inc bc                                           ; $710b: $03
	pop hl                                           ; $710c: $e1
	db $e4                                           ; $710d: $e4
	nop                                              ; $710e: $00
	ld a, d                                          ; $710f: $7a
	ld b, $a3                                        ; $7110: $06 $a3
	add hl, bc                                       ; $7112: $09
	ld de, $02e1                                     ; $7113: $11 $e1 $02
	inc bc                                           ; $7116: $03
	rra                                              ; $7117: $1f
	ret nz                                           ; $7118: $c0

	ld bc, $08a0                                     ; $7119: $01 $a0 $08
	ld b, $a5                                        ; $711c: $06 $a5
	pop hl                                           ; $711e: $e1
	ld [bc], a                                       ; $711f: $02
	inc b                                            ; $7120: $04
	dec b                                            ; $7121: $05
	db $e4                                           ; $7122: $e4
	nop                                              ; $7123: $00
	ld h, l                                          ; $7124: $65
	ld b, $b5                                        ; $7125: $06 $b5
	add hl, bc                                       ; $7127: $09
	ld de, $02e1                                     ; $7128: $11 $e1 $02
	inc bc                                           ; $712b: $03
	inc de                                           ; $712c: $13
	ret nz                                           ; $712d: $c0

	ld bc, $08a0                                     ; $712e: $01 $a0 $08
	ld b, $bc                                        ; $7131: $06 $bc
	pop hl                                           ; $7133: $e1
	ld [bc], a                                       ; $7134: $02
	inc bc                                           ; $7135: $03
	ld [$00e4], a                                    ; $7136: $ea $e4 $00
	ld d, b                                          ; $7139: $50
	jr z, jr_080_7148                                ; $713a: $28 $0c

	ret nz                                           ; $713c: $c0

	ld bc, $01a0                                     ; $713d: $01 $a0 $01
	ld b, $d1                                        ; $7140: $06 $d1
	ret nz                                           ; $7142: $c0

	ld bc, $08a0                                     ; $7143: $01 $a0 $08
	ld b, $d9                                        ; $7146: $06 $d9

jr_080_7148:
	ccf                                              ; $7148: $3f
	ld b, $dd                                        ; $7149: $06 $dd
	add hl, bc                                       ; $714b: $09
	ld de, $02e1                                     ; $714c: $11 $e1 $02
	inc bc                                           ; $714f: $03
	inc de                                           ; $7150: $13
	ret nz                                           ; $7151: $c0

	ld bc, $08a0                                     ; $7152: $01 $a0 $08
	ld b, $e4                                        ; $7155: $06 $e4
	pop hl                                           ; $7157: $e1
	ld [bc], a                                       ; $7158: $02
	inc bc                                           ; $7159: $03
	ld [$00e4], a                                    ; $715a: $ea $e4 $00
	inc l                                            ; $715d: $2c
	ld b, $ef                                        ; $715e: $06 $ef
	add hl, bc                                       ; $7160: $09
	ld de, $02e1                                     ; $7161: $11 $e1 $02
	inc bc                                           ; $7164: $03
	dec de                                           ; $7165: $1b
	ret nz                                           ; $7166: $c0

	ld bc, $08a0                                     ; $7167: $01 $a0 $08
	ld b, $f7                                        ; $716a: $06 $f7
	pop hl                                           ; $716c: $e1
	ld [bc], a                                       ; $716d: $02
	inc bc                                           ; $716e: $03
	db $fc                                           ; $716f: $fc
	db $e4                                           ; $7170: $e4
	nop                                              ; $7171: $00
	rla                                              ; $7172: $17
	rlca                                             ; $7173: $07
	inc b                                            ; $7174: $04
	add hl, bc                                       ; $7175: $09
	ld de, $02e1                                     ; $7176: $11 $e1 $02
	inc bc                                           ; $7179: $03
	dec de                                           ; $717a: $1b
	ret nz                                           ; $717b: $c0

	ld bc, $08a0                                     ; $717c: $01 $a0 $08
	rlca                                             ; $717f: $07
	dec bc                                           ; $7180: $0b
	pop hl                                           ; $7181: $e1
	ld [bc], a                                       ; $7182: $02
	inc bc                                           ; $7183: $03
	db $fc                                           ; $7184: $fc
	db $e4                                           ; $7185: $e4
	nop                                              ; $7186: $00
	ld [bc], a                                       ; $7187: $02
	add hl, bc                                       ; $7188: $09
	dec d                                            ; $7189: $15
	ret nz                                           ; $718a: $c0

	set 0, b                                         ; $718b: $cb $c0
	ld de, $00e3                                     ; $718d: $11 $e3 $00
	or c                                             ; $7190: $b1
	pop hl                                           ; $7191: $e1
	ld [bc], a                                       ; $7192: $02
	ld [bc], a                                       ; $7193: $02
	nop                                              ; $7194: $00
	ret nz                                           ; $7195: $c0

	ld d, [hl]                                       ; $7196: $56
	rst SubAFromHL                                          ; $7197: $d7
	ldh [rAUD1SWEEP], a                              ; $7198: $e0 $10
	ret nc                                           ; $719a: $d0

	push hl                                          ; $719b: $e5
	inc hl                                           ; $719c: $23
	nop                                              ; $719d: $00
	nop                                              ; $719e: $00
	add hl, bc                                       ; $719f: $09
	db $10                                           ; $71a0: $10
	ret nc                                           ; $71a1: $d0

	add e                                            ; $71a2: $83
	ld bc, $d0de                                     ; $71a3: $01 $de $d0
	ret nz                                           ; $71a6: $c0

	ld bc, $08a0                                     ; $71a7: $01 $a0 $08
	rlca                                             ; $71aa: $07
	ld de, $5bc1                                     ; $71ab: $11 $c1 $5b
	db $e4                                           ; $71ae: $e4
	nop                                              ; $71af: $00
	ld [bc], a                                       ; $71b0: $02
	add hl, bc                                       ; $71b1: $09
	ld a, [bc]                                       ; $71b2: $0a
	ret nz                                           ; $71b3: $c0

	set 0, b                                         ; $71b4: $cb $c0
	ld de, $00e3                                     ; $71b6: $11 $e3 $00
	xor a                                            ; $71b9: $af
	db $e4                                           ; $71ba: $e4
	nop                                              ; $71bb: $00
	ld [bc], a                                       ; $71bc: $02
	add hl, bc                                       ; $71bd: $09
	ld l, l                                          ; $71be: $6d
	ldh [rP1], a                                     ; $71bf: $e0 $00
	add e                                            ; $71c1: $83
	pop bc                                           ; $71c2: $c1
	ld e, h                                          ; $71c3: $5c
	ret nz                                           ; $71c4: $c0

	jp z, $01c0                                      ; $71c5: $ca $c0 $01

	and b                                            ; $71c8: $a0
	ld [$1607], sp                                   ; $71c9: $08 $07 $16
	ret nz                                           ; $71cc: $c0

	ld bc, $01a0                                     ; $71cd: $01 $a0 $01
	rlca                                             ; $71d0: $07
	ld hl, $cbc0                                     ; $71d1: $21 $c0 $cb
	pop bc                                           ; $71d4: $c1
	ld e, e                                          ; $71d5: $5b
	ret nz                                           ; $71d6: $c0

	rrca                                             ; $71d7: $0f
	db $e3                                           ; $71d8: $e3
	nop                                              ; $71d9: $00
	cp $c0                                           ; $71da: $fe $c0
	inc c                                            ; $71dc: $0c
	ldh [$50], a                                     ; $71dd: $e0 $50
	and d                                            ; $71df: $a2
	add c                                            ; $71e0: $81
	and b                                            ; $71e1: $a0
	jr jr_080_71e4                                   ; $71e2: $18 $00

jr_080_71e4:
	ld b, $c0                                        ; $71e4: $06 $c0
	ld bc, $08a0                                     ; $71e6: $01 $a0 $08
	rlca                                             ; $71e9: $07
	ld h, $01                                        ; $71ea: $26 $01
	dec bc                                           ; $71ec: $0b
	pop bc                                           ; $71ed: $c1
	or d                                             ; $71ee: $b2
	db $e3                                           ; $71ef: $e3
	nop                                              ; $71f0: $00
	ld d, b                                          ; $71f1: $50
	ret nz                                           ; $71f2: $c0

	ld bc, $08a0                                     ; $71f3: $01 $a0 $08
	rlca                                             ; $71f6: $07
	ld [hl-], a                                      ; $71f7: $32
	ld [bc], a                                       ; $71f8: $02
	ld b, $c0                                        ; $71f9: $06 $c0
	ld bc, $08a0                                     ; $71fb: $01 $a0 $08
	rlca                                             ; $71fe: $07
	ld a, [hl-]                                      ; $71ff: $3a
	rst $38                                          ; $7200: $ff
	ld b, $c0                                        ; $7201: $06 $c0
	ld bc, $08a0                                     ; $7203: $01 $a0 $08
	rlca                                             ; $7206: $07
	ccf                                              ; $7207: $3f
	ret nz                                           ; $7208: $c0

	inc c                                            ; $7209: $0c
	ldh [$64], a                                     ; $720a: $e0 $64
	ret nz                                           ; $720c: $c0

	ld bc, $01a0                                     ; $720d: $01 $a0 $01
	rlca                                             ; $7210: $07
	ld c, c                                          ; $7211: $49
	ret nc                                           ; $7212: $d0

	add d                                            ; $7213: $82
	ld bc, $d1d2                                     ; $7214: $01 $d2 $d1
	pop hl                                           ; $7217: $e1
	ld [bc], a                                       ; $7218: $02
	inc b                                            ; $7219: $04
	rst JumpTable                                          ; $721a: $c7
	ret nz                                           ; $721b: $c0

	ld d, c                                          ; $721c: $51
	pop de                                           ; $721d: $d1
	ret nz                                           ; $721e: $c0

	ld d, b                                          ; $721f: $50
	pop de                                           ; $7220: $d1
	ret nz                                           ; $7221: $c0

	ld d, l                                          ; $7222: $55
	ldh [rAUD1HIGH], a                               ; $7223: $e0 $14
	pop bc                                           ; $7225: $c1
	ld l, e                                          ; $7226: $6b
	jp nc, $e4d7                                     ; $7227: $d2 $d7 $e4

	nop                                              ; $722a: $00
	ld [bc], a                                       ; $722b: $02
	add hl, bc                                       ; $722c: $09
	dec d                                            ; $722d: $15
	ret nz                                           ; $722e: $c0

	set 0, b                                         ; $722f: $cb $c0
	ld de, $00e3                                     ; $7231: $11 $e3 $00
	xor [hl]                                         ; $7234: $ae
	pop hl                                           ; $7235: $e1
	ld [bc], a                                       ; $7236: $02
	ld [bc], a                                       ; $7237: $02
	nop                                              ; $7238: $00
	ret nz                                           ; $7239: $c0

	ld d, [hl]                                       ; $723a: $56
	rst SubAFromHL                                          ; $723b: $d7
	ldh [rAUD1LEN], a                                ; $723c: $e0 $11
	ret nc                                           ; $723e: $d0

	push hl                                          ; $723f: $e5
	inc hl                                           ; $7240: $23
	nop                                              ; $7241: $00
	nop                                              ; $7242: $00

jr_080_7243:
	rlca                                             ; $7243: $07
	ret nz                                           ; $7244: $c0

	and a                                            ; $7245: $a7
	rst SubAFromHL                                          ; $7246: $d7
	db $d3                                           ; $7247: $d3
	rst SubAFromHL                                          ; $7248: $d7
	ret nz                                           ; $7249: $c0

	xor h                                            ; $724a: $ac
	jr z, jr_080_7256                                ; $724b: $28 $09

	pop bc                                           ; $724d: $c1
	cp l                                             ; $724e: $bd
	ret nc                                           ; $724f: $d0

	ret nz                                           ; $7250: $c0

	ld bc, $08a0                                     ; $7251: $01 $a0 $08
	rlca                                             ; $7254: $07
	ld d, e                                          ; $7255: $53

jr_080_7256:
	add hl, hl                                       ; $7256: $29
	rlca                                             ; $7257: $07
	ld d, a                                          ; $7258: $57
	add hl, bc                                       ; $7259: $09
	ld e, $c0                                        ; $725a: $1e $c0
	ld bc, $01a0                                     ; $725c: $01 $a0 $01
	rlca                                             ; $725f: $07
	ld e, c                                          ; $7260: $59
	pop hl                                           ; $7261: $e1
	ld [bc], a                                       ; $7262: $02
	inc bc                                           ; $7263: $03
	rrca                                             ; $7264: $0f
	ret nz                                           ; $7265: $c0

	ld bc, $08a0                                     ; $7266: $01 $a0 $08
	rlca                                             ; $7269: $07
	ld e, a                                          ; $726a: $5f
	ret nz                                           ; $726b: $c0

	ld d, c                                          ; $726c: $51
	pop de                                           ; $726d: $d1
	ret nz                                           ; $726e: $c0

	inc c                                            ; $726f: $0c
	ldh [$3c], a                                     ; $7270: $e0 $3c
	pop hl                                           ; $7272: $e1
	ld [bc], a                                       ; $7273: $02
	inc bc                                           ; $7274: $03
	daa                                              ; $7275: $27
	ldh [rP1], a                                     ; $7276: $e0 $00
	add hl, bc                                       ; $7278: $09
	rlca                                             ; $7279: $07
	ld l, d                                          ; $727a: $6a
	add hl, bc                                       ; $727b: $09
	inc bc                                           ; $727c: $03
	ldh [rP1], a                                     ; $727d: $e0 $00
	ld [bc], a                                       ; $727f: $02
	jr jr_080_7243                                   ; $7280: $18 $c1

	cp l                                             ; $7282: $bd
	pop de                                           ; $7283: $d1
	add d                                            ; $7284: $82
	ret nz                                           ; $7285: $c0

	add b                                            ; $7286: $80
	ld bc, $03d3                                     ; $7287: $01 $d3 $03
	db $e4                                           ; $728a: $e4
	nop                                              ; $728b: $00
	sbc c                                            ; $728c: $99
	ld bc, $03d2                                     ; $728d: $01 $d2 $03
	db $e4                                           ; $7290: $e4
	nop                                              ; $7291: $00
	add hl, sp                                       ; $7292: $39
	ld bc, $03d1                                     ; $7293: $01 $d1 $03
	db $e4                                           ; $7296: $e4
	nop                                              ; $7297: $00
	ld [bc], a                                       ; $7298: $02
	add hl, bc                                       ; $7299: $09
	cpl                                              ; $729a: $2f
	ret nz                                           ; $729b: $c0

	ld bc, $01a0                                     ; $729c: $01 $a0 $01
	rlca                                             ; $729f: $07
	ld l, h                                          ; $72a0: $6c
	ret nz                                           ; $72a1: $c0

	ld bc, $08a0                                     ; $72a2: $01 $a0 $08
	rlca                                             ; $72a5: $07
	ld [hl], c                                       ; $72a6: $71
	pop hl                                           ; $72a7: $e1
	ld [bc], a                                       ; $72a8: $02
	ld [$c069], sp                                   ; $72a9: $08 $69 $c0
	and a                                            ; $72ac: $a7
	rst SubAFromHL                                          ; $72ad: $d7
	db $d3                                           ; $72ae: $d3
	pop de                                           ; $72af: $d1
	ret nz                                           ; $72b0: $c0

	xor h                                            ; $72b1: $ac
	ret nz                                           ; $72b2: $c0

	and l                                            ; $72b3: $a5
	ret nz                                           ; $72b4: $c0

	ld bc, $01a0                                     ; $72b5: $01 $a0 $01
	rlca                                             ; $72b8: $07
	ld [hl], l                                       ; $72b9: $75
	pop hl                                           ; $72ba: $e1
	ld [bc], a                                       ; $72bb: $02
	inc bc                                           ; $72bc: $03
	inc de                                           ; $72bd: $13
	ret nz                                           ; $72be: $c0

	ld bc, $08a0                                     ; $72bf: $01 $a0 $08
	rlca                                             ; $72c2: $07
	ld a, e                                          ; $72c3: $7b
	ret nz                                           ; $72c4: $c0

	ld d, c                                          ; $72c5: $51
	pop de                                           ; $72c6: $d1
	db $e4                                           ; $72c7: $e4
	nop                                              ; $72c8: $00
	cp a                                             ; $72c9: $bf
	add hl, bc                                       ; $72ca: $09
	ld e, b                                          ; $72cb: $58
	ret nz                                           ; $72cc: $c0

	ld bc, $01a0                                     ; $72cd: $01 $a0 $01
	rlca                                             ; $72d0: $07
	ld a, a                                          ; $72d1: $7f
	ret nz                                           ; $72d2: $c0

	ld bc, $08a0                                     ; $72d3: $01 $a0 $08
	rlca                                             ; $72d6: $07
	add a                                            ; $72d7: $87
	ret nz                                           ; $72d8: $c0

	ld bc, $01a0                                     ; $72d9: $01 $a0 $01
	rlca                                             ; $72dc: $07
	adc d                                            ; $72dd: $8a
	pop hl                                           ; $72de: $e1
	ld [bc], a                                       ; $72df: $02
	ld [$e08d], sp                                   ; $72e0: $08 $8d $e0
	nop                                              ; $72e3: $00
	db $db                                           ; $72e4: $db
	ld h, b                                          ; $72e5: $60
	add a                                            ; $72e6: $87
	ld bc, $1fe2                                     ; $72e7: $01 $e2 $1f
	ret nz                                           ; $72ea: $c0

	ld bc, $01a0                                     ; $72eb: $01 $a0 $01
	rlca                                             ; $72ee: $07
	sub c                                            ; $72ef: $91
	pop hl                                           ; $72f0: $e1
	ld [bc], a                                       ; $72f1: $02
	inc bc                                           ; $72f2: $03
	inc de                                           ; $72f3: $13
	ret nz                                           ; $72f4: $c0

	ld bc, $08a0                                     ; $72f5: $01 $a0 $08
	rlca                                             ; $72f8: $07
	sub l                                            ; $72f9: $95
	ret nz                                           ; $72fa: $c0

	ld bc, $01a0                                     ; $72fb: $01 $a0 $01
	rlca                                             ; $72fe: $07
	sbc [hl]                                         ; $72ff: $9e
	ret nz                                           ; $7300: $c0

	ld bc, $08a0                                     ; $7301: $01 $a0 $08
	rlca                                             ; $7304: $07
	and c                                            ; $7305: $a1
	ret nz                                           ; $7306: $c0

	ld d, c                                          ; $7307: $51
	pop de                                           ; $7308: $d1
	db $10                                           ; $7309: $10
	ret nz                                           ; $730a: $c0

	ld bc, $01a0                                     ; $730b: $01 $a0 $01
	rlca                                             ; $730e: $07
	and e                                            ; $730f: $a3
	pop hl                                           ; $7310: $e1
	ld [bc], a                                       ; $7311: $02
	inc bc                                           ; $7312: $03
	inc de                                           ; $7313: $13
	ret nz                                           ; $7314: $c0

	ld bc, $08a0                                     ; $7315: $01 $a0 $08
	rlca                                             ; $7318: $07
	xor [hl]                                         ; $7319: $ae
	ret nz                                           ; $731a: $c0

	ld d, c                                          ; $731b: $51
	pop de                                           ; $731c: $d1
	ld b, b                                          ; $731d: $40
	add a                                            ; $731e: $87
	ld bc, $e4e2                                     ; $731f: $01 $e2 $e4
	nop                                              ; $7322: $00
	ld h, l                                          ; $7323: $65
	add hl, bc                                       ; $7324: $09
	add hl, de                                       ; $7325: $19
	ret nz                                           ; $7326: $c0

	ld bc, $01a0                                     ; $7327: $01 $a0 $01
	rlca                                             ; $732a: $07
	or h                                             ; $732b: $b4
	ret nz                                           ; $732c: $c0

	ld bc, $08a0                                     ; $732d: $01 $a0 $08
	rlca                                             ; $7330: $07
	cp e                                             ; $7331: $bb
	pop hl                                           ; $7332: $e1
	ld [bc], a                                       ; $7333: $02
	ld [$e0a4], sp                                   ; $7334: $08 $a4 $e0
	nop                                              ; $7337: $00
	add a                                            ; $7338: $87
	ret nz                                           ; $7339: $c0

	ld d, c                                          ; $733a: $51
	pop de                                           ; $733b: $d1
	db $e4                                           ; $733c: $e4
	nop                                              ; $733d: $00
	ld [bc], a                                       ; $733e: $02
	jr z, jr_080_7347                                ; $733f: $28 $06

	ret nz                                           ; $7341: $c0

	ld bc, $08a0                                     ; $7342: $01 $a0 $08
	rlca                                             ; $7345: $07
	cp [hl]                                          ; $7346: $be

jr_080_7347:
	ccf                                              ; $7347: $3f
	rlca                                             ; $7348: $07
	pop bc                                           ; $7349: $c1
	add hl, bc                                       ; $734a: $09
	ld de, $02e1                                     ; $734b: $11 $e1 $02
	inc bc                                           ; $734e: $03
	inc de                                           ; $734f: $13
	ret nz                                           ; $7350: $c0

	ld bc, $08a0                                     ; $7351: $01 $a0 $08
	rlca                                             ; $7354: $07
	add $e1                                          ; $7355: $c6 $e1
	ld [bc], a                                       ; $7357: $02
	inc bc                                           ; $7358: $03
	pop hl                                           ; $7359: $e1
	db $e4                                           ; $735a: $e4
	nop                                              ; $735b: $00
	inc l                                            ; $735c: $2c
	rlca                                             ; $735d: $07
	adc $09                                          ; $735e: $ce $09
	ld de, $02e1                                     ; $7360: $11 $e1 $02
	inc bc                                           ; $7363: $03
	rla                                              ; $7364: $17
	ret nz                                           ; $7365: $c0

	ld bc, $08a0                                     ; $7366: $01 $a0 $08
	rlca                                             ; $7369: $07
	ret nc                                           ; $736a: $d0

	pop hl                                           ; $736b: $e1
	ld [bc], a                                       ; $736c: $02
	inc b                                            ; $736d: $04
	dec b                                            ; $736e: $05
	db $e4                                           ; $736f: $e4
	nop                                              ; $7370: $00
	rla                                              ; $7371: $17
	rlca                                             ; $7372: $07
	call c, $1109                                    ; $7373: $dc $09 $11
	pop hl                                           ; $7376: $e1
	ld [bc], a                                       ; $7377: $02
	inc bc                                           ; $7378: $03
	inc de                                           ; $7379: $13
	ret nz                                           ; $737a: $c0

	ld bc, $08a0                                     ; $737b: $01 $a0 $08
	rlca                                             ; $737e: $07
	sbc $e1                                          ; $737f: $de $e1
	ld [bc], a                                       ; $7381: $02
	inc bc                                           ; $7382: $03
	ld [$00e4], a                                    ; $7383: $ea $e4 $00
	ld [bc], a                                       ; $7386: $02
	add hl, bc                                       ; $7387: $09
	dec [hl]                                         ; $7388: $35
	add c                                            ; $7389: $81
	ret nz                                           ; $738a: $c0

	ld h, h                                          ; $738b: $64
	ld [bc], a                                       ; $738c: $02
	ldh [$63], a                                     ; $738d: $e0 $63
	inc d                                            ; $738f: $14
	ret nc                                           ; $7390: $d0

	add d                                            ; $7391: $82
	ld bc, $d1d2                                     ; $7392: $01 $d2 $d1
	pop hl                                           ; $7395: $e1
	ld [bc], a                                       ; $7396: $02
	inc b                                            ; $7397: $04
	rst JumpTable                                          ; $7398: $c7
	ret nc                                           ; $7399: $d0

	add e                                            ; $739a: $83
	ld bc, $d1de                                     ; $739b: $01 $de $d1
	ret nz                                           ; $739e: $c0

	ld d, [hl]                                       ; $739f: $56
	rst SubAFromHL                                          ; $73a0: $d7
	ldh [rAUD1ENV], a                                ; $73a1: $e0 $12
	pop de                                           ; $73a3: $d1
	nop                                              ; $73a4: $00
	inc d                                            ; $73a5: $14
	ret nc                                           ; $73a6: $d0

	add d                                            ; $73a7: $82
	ld bc, $d2d2                                     ; $73a8: $01 $d2 $d2
	pop hl                                           ; $73ab: $e1
	ld [bc], a                                       ; $73ac: $02
	inc b                                            ; $73ad: $04
	pop de                                           ; $73ae: $d1
	ret nc                                           ; $73af: $d0

	add e                                            ; $73b0: $83
	ld bc, $d0de                                     ; $73b1: $01 $de $d0
	ret nz                                           ; $73b4: $c0

	ld d, [hl]                                       ; $73b5: $56
	rst SubAFromHL                                          ; $73b6: $d7
	ldh [rAUD1ENV], a                                ; $73b7: $e0 $12
	ret nc                                           ; $73b9: $d0

	push hl                                          ; $73ba: $e5
	inc hl                                           ; $73bb: $23
	nop                                              ; $73bc: $00
	nop                                              ; $73bd: $00
	dec bc                                           ; $73be: $0b
	ret nz                                           ; $73bf: $c0

	and a                                            ; $73c0: $a7
	rst SubAFromHL                                          ; $73c1: $d7
	db $d3                                           ; $73c2: $d3
	pop de                                           ; $73c3: $d1
	ret nz                                           ; $73c4: $c0

	xor h                                            ; $73c5: $ac
	pop bc                                           ; $73c6: $c1
	ld e, h                                          ; $73c7: $5c
	ret nz                                           ; $73c8: $c0

	jp z, $1409                                      ; $73c9: $ca $09 $14

	ret nc                                           ; $73cc: $d0

	add e                                            ; $73cd: $83
	ld bc, $d0de                                     ; $73ce: $01 $de $d0
	ret nz                                           ; $73d1: $c0

	ld bc, $08a0                                     ; $73d2: $01 $a0 $08
	rlca                                             ; $73d5: $07
	and $c0                                          ; $73d6: $e6 $c0
	ld bc, $01a0                                     ; $73d8: $01 $a0 $01
	rlca                                             ; $73db: $07
	db $eb                                           ; $73dc: $eb
	db $e4                                           ; $73dd: $e4
	nop                                              ; $73de: $00
	ld [bc], a                                       ; $73df: $02
	add hl, bc                                       ; $73e0: $09
	rla                                              ; $73e1: $17
	pop bc                                           ; $73e2: $c1
	ld e, c                                          ; $73e3: $59
	db $e3                                           ; $73e4: $e3
	nop                                              ; $73e5: $00
	xor c                                            ; $73e6: $a9
	and b                                            ; $73e7: $a0
	add b                                            ; $73e8: $80
	and b                                            ; $73e9: $a0
	ld a, [de]                                       ; $73ea: $1a
	nop                                              ; $73eb: $00
	inc bc                                           ; $73ec: $03
	db $e4                                           ; $73ed: $e4
	nop                                              ; $73ee: $00
	dec bc                                           ; $73ef: $0b
	rst $38                                          ; $73f0: $ff
	rlca                                             ; $73f1: $07
	ld b, b                                          ; $73f2: $40
	add b                                            ; $73f3: $80
	and b                                            ; $73f4: $a0
	ld a, [de]                                       ; $73f5: $1a
	db $e4                                           ; $73f6: $e4
	nop                                              ; $73f7: $00
	ld e, l                                          ; $73f8: $5d
	jr z, jr_080_7401                                ; $73f9: $28 $06

	ret nz                                           ; $73fb: $c0

	ld bc, $08a0                                     ; $73fc: $01 $a0 $08
	rlca                                             ; $73ff: $07
	pop af                                           ; $7400: $f1

jr_080_7401:
	ld d, d                                          ; $7401: $52
	rlca                                             ; $7402: $07
	ld sp, hl                                        ; $7403: $f9
	add hl, bc                                       ; $7404: $09
	inc h                                            ; $7405: $24
	pop hl                                           ; $7406: $e1
	ld [bc], a                                       ; $7407: $02
	inc bc                                           ; $7408: $03
	inc de                                           ; $7409: $13
	ret nz                                           ; $740a: $c0

	ld bc, $08a0                                     ; $740b: $01 $a0 $08
	rlca                                             ; $740e: $07
	ei                                               ; $740f: $fb
	ld h, b                                          ; $7410: $60
	ld hl, sp-$40                                    ; $7411: $f8 $c0
	add e                                            ; $7413: $83
	call nc, $28e0                                   ; $7414: $d4 $e0 $28
	ld a, [bc]                                       ; $7417: $0a
	ret nz                                           ; $7418: $c0

	ld bc, $01a0                                     ; $7419: $01 $a0 $01
	ld [$e103], sp                                   ; $741c: $08 $03 $e1
	ld [bc], a                                       ; $741f: $02
	inc bc                                           ; $7420: $03
	db $fc                                           ; $7421: $fc
	inc b                                            ; $7422: $04
	pop hl                                           ; $7423: $e1
	ld [bc], a                                       ; $7424: $02
	inc bc                                           ; $7425: $03
	ld [$00e4], a                                    ; $7426: $ea $e4 $00
	add d                                            ; $7429: $82
	ld [$090c], sp                                   ; $742a: $08 $0c $09
	ld de, $02e1                                     ; $742d: $11 $e1 $02
	inc bc                                           ; $7430: $03
	rra                                              ; $7431: $1f
	ret nz                                           ; $7432: $c0

	ld bc, $08a0                                     ; $7433: $01 $a0 $08
	ld [$e111], sp                                   ; $7436: $08 $11 $e1
	ld [bc], a                                       ; $7439: $02
	inc b                                            ; $743a: $04
	dec b                                            ; $743b: $05
	db $e4                                           ; $743c: $e4
	nop                                              ; $743d: $00
	ld l, l                                          ; $743e: $6d
	ld [$091b], sp                                   ; $743f: $08 $1b $09
	ld de, $02e1                                     ; $7442: $11 $e1 $02
	inc bc                                           ; $7445: $03
	dec de                                           ; $7446: $1b
	ret nz                                           ; $7447: $c0

	ld bc, $08a0                                     ; $7448: $01 $a0 $08
	ld [$e11d], sp                                   ; $744b: $08 $1d $e1
	ld [bc], a                                       ; $744e: $02
	inc bc                                           ; $744f: $03
	db $fc                                           ; $7450: $fc
	db $e4                                           ; $7451: $e4
	nop                                              ; $7452: $00
	ld e, b                                          ; $7453: $58
	jr z, @+$16                                      ; $7454: $28 $14

	ret nz                                           ; $7456: $c0

	ld bc, $08a0                                     ; $7457: $01 $a0 $08
	ld [wMainLoopCounter], sp                                   ; $745a: $08 $29 $c1
	ld e, e                                          ; $745d: $5b
	ret nz                                           ; $745e: $c0

	inc c                                            ; $745f: $0c
	ldh [$3c], a                                     ; $7460: $e0 $3c
	pop bc                                           ; $7462: $c1
	ld e, h                                          ; $7463: $5c
	ret nz                                           ; $7464: $c0

	ld bc, $08a0                                     ; $7465: $01 $a0 $08
	ld [$3f2a], sp                                   ; $7468: $08 $2a $3f
	ld [$0934], sp                                   ; $746b: $08 $34 $09
	ld de, $02e1                                     ; $746e: $11 $e1 $02
	inc bc                                           ; $7471: $03
	inc de                                           ; $7472: $13
	ret nz                                           ; $7473: $c0

	ld bc, $08a0                                     ; $7474: $01 $a0 $08
	ld [$e13a], sp                                   ; $7477: $08 $3a $e1
	ld [bc], a                                       ; $747a: $02
	inc bc                                           ; $747b: $03
	ld [$00e4], a                                    ; $747c: $ea $e4 $00
	inc l                                            ; $747f: $2c
	ld [$0946], sp                                   ; $7480: $08 $46 $09
	ld de, $02e1                                     ; $7483: $11 $e1 $02
	inc bc                                           ; $7486: $03
	rra                                              ; $7487: $1f
	ret nz                                           ; $7488: $c0

	ld bc, $08a0                                     ; $7489: $01 $a0 $08
	ld [$e14e], sp                                   ; $748c: $08 $4e $e1
	ld [bc], a                                       ; $748f: $02
	inc b                                            ; $7490: $04
	dec b                                            ; $7491: $05
	db $e4                                           ; $7492: $e4
	nop                                              ; $7493: $00
	rla                                              ; $7494: $17
	ld [$0955], sp                                   ; $7495: $08 $55 $09
	ld de, $02e1                                     ; $7498: $11 $e1 $02
	inc bc                                           ; $749b: $03
	dec de                                           ; $749c: $1b
	ret nz                                           ; $749d: $c0

	ld bc, $08a0                                     ; $749e: $01 $a0 $08
	ld [$e15c], sp                                   ; $74a1: $08 $5c $e1
	ld [bc], a                                       ; $74a4: $02
	inc bc                                           ; $74a5: $03
	db $fc                                           ; $74a6: $fc
	db $e4                                           ; $74a7: $e4
	nop                                              ; $74a8: $00
	ld [bc], a                                       ; $74a9: $02
	add hl, bc                                       ; $74aa: $09
	rrca                                             ; $74ab: $0f
	pop bc                                           ; $74ac: $c1
	ld e, c                                          ; $74ad: $59
	db $e3                                           ; $74ae: $e3
	nop                                              ; $74af: $00
	xor b                                            ; $74b0: $a8
	ret nz                                           ; $74b1: $c0

	ld d, [hl]                                       ; $74b2: $56
	rst SubAFromHL                                          ; $74b3: $d7
	ldh [rAUD1LOW], a                                ; $74b4: $e0 $13
	ret nc                                           ; $74b6: $d0

	push hl                                          ; $74b7: $e5
	inc hl                                           ; $74b8: $23
	nop                                              ; $74b9: $00
	nop                                              ; $74ba: $00
	add hl, bc                                       ; $74bb: $09
	inc d                                            ; $74bc: $14
	ret nc                                           ; $74bd: $d0

	add e                                            ; $74be: $83
	ld bc, $d0de                                     ; $74bf: $01 $de $d0
	ret nz                                           ; $74c2: $c0

	ld bc, $08a0                                     ; $74c3: $01 $a0 $08
	ld [$c065], sp                                   ; $74c6: $08 $65 $c0
	ld bc, $01a0                                     ; $74c9: $01 $a0 $01
	ld [$e46a], sp                                   ; $74cc: $08 $6a $e4
	nop                                              ; $74cf: $00
	ld [bc], a                                       ; $74d0: $02
	add hl, bc                                       ; $74d1: $09
	ld a, [de]                                       ; $74d2: $1a
	add c                                            ; $74d3: $81
	ret nz                                           ; $74d4: $c0

	inc e                                            ; $74d5: $1c
	rst SubAFromHL                                          ; $74d6: $d7
	ld bc, $0ed2                                     ; $74d7: $01 $d2 $0e
	and b                                            ; $74da: $a0
	add b                                            ; $74db: $80
	and b                                            ; $74dc: $a0
	dec de                                           ; $74dd: $1b
	nop                                              ; $74de: $00
	inc bc                                           ; $74df: $03
	db $e4                                           ; $74e0: $e4
	nop                                              ; $74e1: $00
	jp z, $03ff                                      ; $74e2: $ca $ff $03

	ldh [rP1], a                                     ; $74e5: $e0 $00
	rlca                                             ; $74e7: $07
	nop                                              ; $74e8: $00
	inc bc                                           ; $74e9: $03
	ldh [rP1], a                                     ; $74ea: $e0 $00
	ld [bc], a                                       ; $74ec: $02
	rla                                              ; $74ed: $17
	pop bc                                           ; $74ee: $c1
	ld e, c                                          ; $74ef: $59
	db $e3                                           ; $74f0: $e3
	nop                                              ; $74f1: $00
	and a                                            ; $74f2: $a7
	and b                                            ; $74f3: $a0
	add b                                            ; $74f4: $80
	and b                                            ; $74f5: $a0
	inc e                                            ; $74f6: $1c
	nop                                              ; $74f7: $00
	inc bc                                           ; $74f8: $03
	db $e4                                           ; $74f9: $e4
	nop                                              ; $74fa: $00
	dec bc                                           ; $74fb: $0b
	rst $38                                          ; $74fc: $ff
	rlca                                             ; $74fd: $07
	ld b, b                                          ; $74fe: $40
	add b                                            ; $74ff: $80
	and b                                            ; $7500: $a0
	inc e                                            ; $7501: $1c
	db $e4                                           ; $7502: $e4
	nop                                              ; $7503: $00
	ld h, b                                          ; $7504: $60
	jr z, @+$08                                      ; $7505: $28 $06

	ret nz                                           ; $7507: $c0

	ld bc, $08a0                                     ; $7508: $01 $a0 $08
	ld [$556e], sp                                   ; $750b: $08 $6e $55
	ld [$0976], sp                                   ; $750e: $08 $76 $09
	daa                                              ; $7511: $27
	pop hl                                           ; $7512: $e1
	ld [bc], a                                       ; $7513: $02
	inc bc                                           ; $7514: $03
	inc de                                           ; $7515: $13
	ret nz                                           ; $7516: $c0

	ld bc, $08a0                                     ; $7517: $01 $a0 $08
	ld [$607d], sp                                   ; $751a: $08 $7d $60
	ld hl, sp-$40                                    ; $751d: $f8 $c0
	add e                                            ; $751f: $83
	call nc, Call_080_64e0                           ; $7520: $d4 $e0 $64
	ld a, [bc]                                       ; $7523: $0a
	ret nz                                           ; $7524: $c0

	ld bc, $01a0                                     ; $7525: $01 $a0 $01
	ld [$e103], sp                                   ; $7528: $08 $03 $e1
	ld [bc], a                                       ; $752b: $02
	inc bc                                           ; $752c: $03
	db $fc                                           ; $752d: $fc
	rlca                                             ; $752e: $07
	pop bc                                           ; $752f: $c1
	ld l, l                                          ; $7530: $6d
	rst SubAFromHL                                          ; $7531: $d7
	pop hl                                           ; $7532: $e1
	ld [bc], a                                       ; $7533: $02
	inc bc                                           ; $7534: $03
	pop hl                                           ; $7535: $e1
	db $e4                                           ; $7536: $e4
	ld bc, $082b                                     ; $7537: $01 $2b $08
	add h                                            ; $753a: $84
	add hl, bc                                       ; $753b: $09
	ld de, $02e1                                     ; $753c: $11 $e1 $02
	inc bc                                           ; $753f: $03
	dec de                                           ; $7540: $1b
	ret nz                                           ; $7541: $c0

	ld bc, $08a0                                     ; $7542: $01 $a0 $08
	ld [$e18d], sp                                   ; $7545: $08 $8d $e1
	ld [bc], a                                       ; $7548: $02
	inc bc                                           ; $7549: $03
	db $fc                                           ; $754a: $fc
	db $e4                                           ; $754b: $e4
	ld bc, $0816                                     ; $754c: $01 $16 $08
	sub l                                            ; $754f: $95
	add hl, bc                                       ; $7550: $09
	ld de, $02e1                                     ; $7551: $11 $e1 $02
	inc bc                                           ; $7554: $03
	rla                                              ; $7555: $17
	ret nz                                           ; $7556: $c0

	ld bc, $08a0                                     ; $7557: $01 $a0 $08
	ld [$e19b], sp                                   ; $755a: $08 $9b $e1
	ld [bc], a                                       ; $755d: $02
	inc bc                                           ; $755e: $03
	di                                               ; $755f: $f3
	db $e4                                           ; $7560: $e4
	ld bc, $2801                                     ; $7561: $01 $01 $28
	ld b, $c0                                        ; $7564: $06 $c0
	ld bc, $08a0                                     ; $7566: $01 $a0 $08
	ld [$3fa4], sp                                   ; $7569: $08 $a4 $3f
	ld [$09aa], sp                                   ; $756c: $08 $aa $09
	ld de, $02e1                                     ; $756f: $11 $e1 $02
	inc bc                                           ; $7572: $03
	inc de                                           ; $7573: $13
	ret nz                                           ; $7574: $c0

	ld bc, $08a0                                     ; $7575: $01 $a0 $08
	ld [$e1b0], sp                                   ; $7578: $08 $b0 $e1
	ld [bc], a                                       ; $757b: $02
	inc bc                                           ; $757c: $03
	ld [$00e4], a                                    ; $757d: $ea $e4 $00
	db $e3                                           ; $7580: $e3
	ld [$09bb], sp                                   ; $7581: $08 $bb $09
	ld de, $02e1                                     ; $7584: $11 $e1 $02
	inc bc                                           ; $7587: $03
	dec de                                           ; $7588: $1b
	ret nz                                           ; $7589: $c0

	ld bc, $08a0                                     ; $758a: $01 $a0 $08
	ld [$e1bd], sp                                   ; $758d: $08 $bd $e1
	ld [bc], a                                       ; $7590: $02
	inc bc                                           ; $7591: $03
	db $fc                                           ; $7592: $fc
	db $e4                                           ; $7593: $e4
	nop                                              ; $7594: $00
	adc $08                                          ; $7595: $ce $08
	rst GetHLinHL                                          ; $7597: $cf
	add hl, bc                                       ; $7598: $09
	ld de, $02e1                                     ; $7599: $11 $e1 $02
	inc bc                                           ; $759c: $03
	inc de                                           ; $759d: $13
	ret nz                                           ; $759e: $c0

	ld bc, $08a0                                     ; $759f: $01 $a0 $08
	ld [$e1d1], sp                                   ; $75a2: $08 $d1 $e1
	ld [bc], a                                       ; $75a5: $02
	inc bc                                           ; $75a6: $03
	ld [$00e4], a                                    ; $75a7: $ea $e4 $00
	cp c                                             ; $75aa: $b9
	add hl, bc                                       ; $75ab: $09
	or l                                             ; $75ac: $b5
	ret nz                                           ; $75ad: $c0

	set 0, c                                         ; $75ae: $cb $c1
	ld e, e                                          ; $75b0: $5b
	ret nz                                           ; $75b1: $c0

	rrca                                             ; $75b2: $0f
	db $e3                                           ; $75b3: $e3
	nop                                              ; $75b4: $00
	and a                                            ; $75b5: $a7
	ret nz                                           ; $75b6: $c0

	ld bc, $01a0                                     ; $75b7: $01 $a0 $01
	ld [$c0db], sp                                   ; $75ba: $08 $db $c0
	ld bc, $08a0                                     ; $75bd: $01 $a0 $08
	ld [wGenericTileDataBytesToCopyUntil21h], sp                                   ; $75c0: $08 $e4 $c0
	ld bc, $01a0                                     ; $75c3: $01 $a0 $01
	ld [$c0ea], sp                                   ; $75c6: $08 $ea $c0
	dec bc                                           ; $75c9: $0b
	db $e3                                           ; $75ca: $e3
	nop                                              ; $75cb: $00
	rrca                                             ; $75cc: $0f
	pop bc                                           ; $75cd: $c1
	ld d, l                                          ; $75ce: $55
	jp nc, Jump_080_54c1                             ; $75cf: $d2 $c1 $54

	ret nz                                           ; $75d2: $c0

	rrca                                             ; $75d3: $0f
	db $e3                                           ; $75d4: $e3
	nop                                              ; $75d5: $00
	db $fd                                           ; $75d6: $fd
	ret nz                                           ; $75d7: $c0

jr_080_75d8:
	ld bc, $01a0                                     ; $75d8: $01 $a0 $01
	ld [$c0ec], sp                                   ; $75db: $08 $ec $c0
	ld bc, $08a0                                     ; $75de: $01 $a0 $08
	ld [$c0f3], sp                                   ; $75e1: $08 $f3 $c0
	ld bc, $01a0                                     ; $75e4: $01 $a0 $01
	ld [$c0fb], sp                                   ; $75e7: $08 $fb $c0
	ld bc, $08a0                                     ; $75ea: $01 $a0 $08
	add hl, bc                                       ; $75ed: $09
	dec bc                                           ; $75ee: $0b
	ret nz                                           ; $75ef: $c0

	set 0, b                                         ; $75f0: $cb $c0
	ld de, $00e3                                     ; $75f2: $11 $e3 $00
	and a                                            ; $75f5: $a7
	pop bc                                           ; $75f6: $c1
	ld e, h                                          ; $75f7: $5c
	ret nz                                           ; $75f8: $c0

	jp z, $01c0                                      ; $75f9: $ca $c0 $01

	and b                                            ; $75fc: $a0
	ld [$0f09], sp                                   ; $75fd: $08 $09 $0f
	ret nz                                           ; $7600: $c0

	ld bc, $01a0                                     ; $7601: $01 $a0 $01
	add hl, bc                                       ; $7604: $09
	ld d, $c0                                        ; $7605: $16 $c0
	ld bc, $08a0                                     ; $7607: $01 $a0 $08
	add hl, bc                                       ; $760a: $09
	jr nz, @+$62                                     ; $760b: $20 $60

	add b                                            ; $760d: $80
	ld [bc], a                                       ; $760e: $02
	ld [hl], a                                       ; $760f: $77
	inc c                                            ; $7610: $0c
	ret nz                                           ; $7611: $c0

	ld bc, $01a0                                     ; $7612: $01 $a0 $01
	add hl, bc                                       ; $7615: $09
	jr nc, jr_080_75d8                               ; $7616: $30 $c0

	ld bc, $08a0                                     ; $7618: $01 $a0 $08
	add hl, bc                                       ; $761b: $09
	ld b, d                                          ; $761c: $42
	inc c                                            ; $761d: $0c
	ret nz                                           ; $761e: $c0

	ld bc, $01a0                                     ; $761f: $01 $a0 $01
	add hl, bc                                       ; $7622: $09
	ld c, [hl]                                       ; $7623: $4e
	ret nz                                           ; $7624: $c0

	ld bc, $08a0                                     ; $7625: $01 $a0 $08
	add hl, bc                                       ; $7628: $09
	ld e, b                                          ; $7629: $58
	ret nz                                           ; $762a: $c0

	ld bc, $01a0                                     ; $762b: $01 $a0 $01
	add hl, bc                                       ; $762e: $09
	ld h, e                                          ; $762f: $63
	ret nz                                           ; $7630: $c0

	ld bc, $08a0                                     ; $7631: $01 $a0 $08
	add hl, bc                                       ; $7634: $09
	ld h, a                                          ; $7635: $67
	ret nz                                           ; $7636: $c0

	ld bc, $01a0                                     ; $7637: $01 $a0 $01
	add hl, bc                                       ; $763a: $09
	ld [hl], d                                       ; $763b: $72
	ret nz                                           ; $763c: $c0

	ld bc, $08a0                                     ; $763d: $01 $a0 $08
	add hl, bc                                       ; $7640: $09
	ld [hl], l                                       ; $7641: $75
	ret nz                                           ; $7642: $c0

	ld bc, $01a0                                     ; $7643: $01 $a0 $01
	add hl, bc                                       ; $7646: $09
	ld a, h                                          ; $7647: $7c
	ret nc                                           ; $7648: $d0

	add d                                            ; $7649: $82
	ld bc, $d1d2                                     ; $764a: $01 $d2 $d1
	pop hl                                           ; $764d: $e1
	ld [bc], a                                       ; $764e: $02
	inc b                                            ; $764f: $04
	rst JumpTable                                          ; $7650: $c7
	ret nz                                           ; $7651: $c0

	ld d, c                                          ; $7652: $51
	db $d3                                           ; $7653: $d3
	ret nz                                           ; $7654: $c0

	ld d, b                                          ; $7655: $50
	jp nc, Jump_080_55c0                             ; $7656: $d2 $c0 $55

	ldh [rAUD1HIGH], a                               ; $7659: $e0 $14
	pop bc                                           ; $765b: $c1
	ld l, e                                          ; $765c: $6b
	rst SubAFromHL                                          ; $765d: $d7
	rst SubAFromHL                                          ; $765e: $d7
	db $e4                                           ; $765f: $e4
	nop                                              ; $7660: $00
	ld [bc], a                                       ; $7661: $02
	add hl, bc                                       ; $7662: $09
	rrca                                             ; $7663: $0f
	pop bc                                           ; $7664: $c1
	ld e, c                                          ; $7665: $59
	db $e3                                           ; $7666: $e3
	nop                                              ; $7667: $00
	and [hl]                                         ; $7668: $a6
	ret nz                                           ; $7669: $c0

	ld d, [hl]                                       ; $766a: $56
	rst SubAFromHL                                          ; $766b: $d7
	ldh [rAUD1HIGH], a                               ; $766c: $e0 $14
	ret nc                                           ; $766e: $d0

	push hl                                          ; $766f: $e5
	inc hl                                           ; $7670: $23
	nop                                              ; $7671: $00
	nop                                              ; $7672: $00
	db $ed                                           ; $7673: $ed
	dec b                                            ; $7674: $05
	add hl, bc                                       ; $7675: $09
	pop bc                                           ; $7676: $c1
	or $c0                                           ; $7677: $f6 $c0
	ld c, h                                          ; $7679: $4c
	rst SubAFromHL                                          ; $767a: $d7
	ret nc                                           ; $767b: $d0

	adc a                                            ; $767c: $8f
	nop                                              ; $767d: $00
	cp b                                             ; $767e: $b8
	add h                                            ; $767f: $84
	ld [bc], a                                       ; $7680: $02
	ld l, $61                                        ; $7681: $2e $61
	cp $07                                           ; $7683: $fe $07
	add b                                            ; $7685: $80
	nop                                              ; $7686: $00
	set 7, h                                         ; $7687: $cb $fc
	ret nz                                           ; $7689: $c0

	ld h, a                                          ; $768a: $67
	ret nc                                           ; $768b: $d0

	inc [hl]                                         ; $768c: $34
	ret nz                                           ; $768d: $c0

	ld bc, $08a0                                     ; $768e: $01 $a0 $08
	nop                                              ; $7691: $00
	ld bc, $01c0                                     ; $7692: $01 $c0 $01
	and b                                            ; $7695: $a0
	ld bc, $0b00                                     ; $7696: $01 $00 $0b
	add c                                            ; $7699: $81
	ret nz                                           ; $769a: $c0

	dec de                                           ; $769b: $1b
	ret nc                                           ; $769c: $d0

	ld [bc], a                                       ; $769d: $02
	ret nc                                           ; $769e: $d0

	pop de                                           ; $769f: $d1
	ld a, [bc]                                       ; $76a0: $0a
	pop hl                                           ; $76a1: $e1
	ld [bc], a                                       ; $76a2: $02
	inc bc                                           ; $76a3: $03
	rrca                                             ; $76a4: $0f
	ret nz                                           ; $76a5: $c0

	ld bc, $08a0                                     ; $76a6: $01 $a0 $08
	nop                                              ; $76a9: $00
	inc d                                            ; $76aa: $14
	nop                                              ; $76ab: $00
	ld a, [bc]                                       ; $76ac: $0a
	pop hl                                           ; $76ad: $e1
	ld [bc], a                                       ; $76ae: $02
	inc bc                                           ; $76af: $03
	inc de                                           ; $76b0: $13
	ret nz                                           ; $76b1: $c0

	ld bc, $08a0                                     ; $76b2: $01 $a0 $08
	nop                                              ; $76b5: $00
	ld e, $c0                                        ; $76b6: $1e $c0
	ld bc, $01a0                                     ; $76b8: $01 $a0 $01
	nop                                              ; $76bb: $00
	dec h                                            ; $76bc: $25
	ld b, b                                          ; $76bd: $40
	add b                                            ; $76be: $80
	nop                                              ; $76bf: $00
	set 7, h                                         ; $76c0: $cb $fc
	pop bc                                           ; $76c2: $c1
	ld b, c                                          ; $76c3: $41
	rst SubAFromHL                                          ; $76c4: $d7
	add h                                            ; $76c5: $84
	ld [bc], a                                       ; $76c6: $02
	ld l, $83                                        ; $76c7: $2e $83
	ld bc, $d1de                                     ; $76c9: $01 $de $d1
	inc e                                            ; $76cc: $1c
	pop hl                                           ; $76cd: $e1
	ld [bc], a                                       ; $76ce: $02
	inc bc                                           ; $76cf: $03
	dec de                                           ; $76d0: $1b
	ret nz                                           ; $76d1: $c0

	ld bc, $08a0                                     ; $76d2: $01 $a0 $08
	nop                                              ; $76d5: $00
	dec hl                                           ; $76d6: $2b
	ret nz                                           ; $76d7: $c0

	ld bc, $01a0                                     ; $76d8: $01 $a0 $01
	nop                                              ; $76db: $00
	scf                                              ; $76dc: $37
	ret nz                                           ; $76dd: $c0

	dec h                                            ; $76de: $25
	pop de                                           ; $76df: $d1
	rst SubAFromHL                                          ; $76e0: $d7
	ret nz                                           ; $76e1: $c0

	inc h                                            ; $76e2: $24
	jp nc, $c0d7                                     ; $76e3: $d2 $d7 $c0

	inc hl                                           ; $76e6: $23
	jp c, $c1d7                                      ; $76e7: $da $d7 $c1

	ld [bc], a                                       ; $76ea: $02
	add e                                            ; $76eb: $83
	ret nz                                           ; $76ec: $c0

	dec de                                           ; $76ed: $1b
	rst SubAFromHL                                          ; $76ee: $d7
	ld [bc], a                                       ; $76ef: $02
	ret nc                                           ; $76f0: $d0

	pop de                                           ; $76f1: $d1
	ld b, h                                          ; $76f2: $44
	add d                                            ; $76f3: $82
	add d                                            ; $76f4: $82
	ld bc, $02d2                                     ; $76f5: $01 $d2 $02
	pop de                                           ; $76f8: $d1
	jp nc, $e115                                     ; $76f9: $d2 $15 $e1

	ld [bc], a                                       ; $76fc: $02
	inc bc                                           ; $76fd: $03
	inc de                                           ; $76fe: $13
	pop bc                                           ; $76ff: $c1
	or d                                             ; $7700: $b2
	db $e3                                           ; $7701: $e3
	nop                                              ; $7702: $00
	ld d, d                                          ; $7703: $52
	ret nz                                           ; $7704: $c0

	ld bc, $08a0                                     ; $7705: $01 $a0 $08
	nop                                              ; $7708: $00
	ld a, $c0                                        ; $7709: $3e $c0
	ld bc, $01a0                                     ; $770b: $01 $a0 $01
	nop                                              ; $770e: $00
	ld b, [hl]                                       ; $770f: $46
	ld bc, $10d3                                     ; $7710: $01 $d3 $10
	pop hl                                           ; $7713: $e1
	ld [bc], a                                       ; $7714: $02
	inc bc                                           ; $7715: $03
	rla                                              ; $7716: $17
	ret nz                                           ; $7717: $c0

	ld bc, $08a0                                     ; $7718: $01 $a0 $08
	nop                                              ; $771b: $00
	ld c, d                                          ; $771c: $4a
	ret nz                                           ; $771d: $c0

	ld bc, $01a0                                     ; $771e: $01 $a0 $01
	nop                                              ; $7721: $00
	ld b, [hl]                                       ; $7722: $46
	ld [bc], a                                       ; $7723: $02
	call nc, $10d5                                   ; $7724: $d4 $d5 $10
	pop hl                                           ; $7727: $e1
	ld [bc], a                                       ; $7728: $02
	inc bc                                           ; $7729: $03
	dec de                                           ; $772a: $1b
	ret nz                                           ; $772b: $c0

	ld bc, $08a0                                     ; $772c: $01 $a0 $08
	nop                                              ; $772f: $00
	ld d, l                                          ; $7730: $55
	ret nz                                           ; $7731: $c0

	ld bc, $01a0                                     ; $7732: $01 $a0 $01
	nop                                              ; $7735: $00
	ld h, e                                          ; $7736: $63
	ld [bc], a                                       ; $7737: $02
	jp nc, Jump_080_4bd3                             ; $7738: $d2 $d3 $4b

	add d                                            ; $773b: $82
	add d                                            ; $773c: $82
	ld bc, $02d2                                     ; $773d: $01 $d2 $02
	pop de                                           ; $7740: $d1
	jp nc, $e110                                     ; $7741: $d2 $10 $e1

	ld [bc], a                                       ; $7744: $02
	inc bc                                           ; $7745: $03
	inc de                                           ; $7746: $13
	ret nz                                           ; $7747: $c0

	ld bc, $08a0                                     ; $7748: $01 $a0 $08
	nop                                              ; $774b: $00
	ld l, l                                          ; $774c: $6d
	ret nz                                           ; $774d: $c0

	ld bc, $01a0                                     ; $774e: $01 $a0 $01
	nop                                              ; $7751: $00
	ld [hl], l                                       ; $7752: $75
	ld bc, $16d3                                     ; $7753: $01 $d3 $16
	pop hl                                           ; $7756: $e1
	ld [bc], a                                       ; $7757: $02
	inc bc                                           ; $7758: $03
	rla                                              ; $7759: $17
	ret nz                                           ; $775a: $c0

	ld bc, $08a0                                     ; $775b: $01 $a0 $08
	nop                                              ; $775e: $00
	ld a, d                                          ; $775f: $7a
	ret nz                                           ; $7760: $c0

	ld bc, $01a0                                     ; $7761: $01 $a0 $01
	nop                                              ; $7764: $00
	add b                                            ; $7765: $80
	ret nz                                           ; $7766: $c0

	ld bc, $08a0                                     ; $7767: $01 $a0 $08
	nop                                              ; $776a: $00
	adc d                                            ; $776b: $8a
	ld [bc], a                                       ; $776c: $02
	call nc, $16d5                                   ; $776d: $d4 $d5 $16
	pop hl                                           ; $7770: $e1
	ld [bc], a                                       ; $7771: $02
	inc bc                                           ; $7772: $03
	dec de                                           ; $7773: $1b
	ret nz                                           ; $7774: $c0

	ld bc, $08a0                                     ; $7775: $01 $a0 $08
	nop                                              ; $7778: $00
	sub l                                            ; $7779: $95
	ret nz                                           ; $777a: $c0

	ld bc, $01a0                                     ; $777b: $01 $a0 $01
	nop                                              ; $777e: $00
	sbc d                                            ; $777f: $9a
	ret nz                                           ; $7780: $c0

	ld bc, $08a0                                     ; $7781: $01 $a0 $08
	nop                                              ; $7784: $00
	adc d                                            ; $7785: $8a
	ld bc, $51d4                                     ; $7786: $01 $d4 $51
	add d                                            ; $7789: $82
	add d                                            ; $778a: $82
	ld bc, $02d2                                     ; $778b: $01 $d2 $02
	pop de                                           ; $778e: $d1
	jp nc, $e116                                     ; $778f: $d2 $16 $e1

	ld [bc], a                                       ; $7792: $02
	inc bc                                           ; $7793: $03
	inc de                                           ; $7794: $13
	ret nz                                           ; $7795: $c0

	ld bc, $08a0                                     ; $7796: $01 $a0 $08
	nop                                              ; $7799: $00
	and d                                            ; $779a: $a2
	ret nz                                           ; $779b: $c0

	ld bc, $01a0                                     ; $779c: $01 $a0 $01
	nop                                              ; $779f: $00
	and a                                            ; $77a0: $a7
	ret nz                                           ; $77a1: $c0

	ld bc, $08a0                                     ; $77a2: $01 $a0 $08
	nop                                              ; $77a5: $00
	adc d                                            ; $77a6: $8a
	ld bc, $1cd3                                     ; $77a7: $01 $d3 $1c
	pop hl                                           ; $77aa: $e1
	ld [bc], a                                       ; $77ab: $02
	inc bc                                           ; $77ac: $03
	rla                                              ; $77ad: $17
	ret nz                                           ; $77ae: $c0

	ld bc, $08a0                                     ; $77af: $01 $a0 $08
	nop                                              ; $77b2: $00
	xor h                                            ; $77b3: $ac
	ret nz                                           ; $77b4: $c0

	ld bc, $01a0                                     ; $77b5: $01 $a0 $01
	nop                                              ; $77b8: $00
	or e                                             ; $77b9: $b3
	ret nz                                           ; $77ba: $c0

	ld bc, $08a0                                     ; $77bb: $01 $a0 $08
	nop                                              ; $77be: $00
	cp c                                             ; $77bf: $b9
	ret nz                                           ; $77c0: $c0

	ld bc, $01a0                                     ; $77c1: $01 $a0 $01
	nop                                              ; $77c4: $00
	ret z                                            ; $77c5: $c8

	ld [bc], a                                       ; $77c6: $02
	call nc, $10d5                                   ; $77c7: $d4 $d5 $10
	pop hl                                           ; $77ca: $e1
	ld [bc], a                                       ; $77cb: $02
	inc bc                                           ; $77cc: $03
	dec de                                           ; $77cd: $1b
	ret nz                                           ; $77ce: $c0

	ld bc, $08a0                                     ; $77cf: $01 $a0 $08
	nop                                              ; $77d2: $00
	set 0, b                                         ; $77d3: $cb $c0
	ld bc, $01a0                                     ; $77d5: $01 $a0 $01
	nop                                              ; $77d8: $00
	ret nc                                           ; $77d9: $d0

	ld bc, $10d5                                     ; $77da: $01 $d5 $10
	pop hl                                           ; $77dd: $e1
	ld [bc], a                                       ; $77de: $02
	inc bc                                           ; $77df: $03
	rra                                              ; $77e0: $1f
	ret nz                                           ; $77e1: $c0

	ld bc, $08a0                                     ; $77e2: $01 $a0 $08
	nop                                              ; $77e5: $00
	db $d3                                           ; $77e6: $d3
	ret nz                                           ; $77e7: $c0

	ld bc, $01a0                                     ; $77e8: $01 $a0 $01
	nop                                              ; $77eb: $00
	call c, $fdfb                                    ; $77ec: $dc $fb $fd
	add h                                            ; $77ef: $84
	ld [bc], a                                       ; $77f0: $02
	ld l, $d0                                        ; $77f1: $2e $d0
	add hl, bc                                       ; $77f3: $09
	pop bc                                           ; $77f4: $c1
	ccf                                              ; $77f5: $3f
	rst SubAFromHL                                          ; $77f6: $d7
	add h                                            ; $77f7: $84
	ld [bc], a                                       ; $77f8: $02
	ld l, $83                                        ; $77f9: $2e $83
	ld bc, $e1de                                     ; $77fb: $01 $de $e1
	ld [bc], a                                       ; $77fe: $02
	inc bc                                           ; $77ff: $03
	daa                                              ; $7800: $27
	ei                                               ; $7801: $fb
	cp $0a                                           ; $7802: $fe $0a
	db $fc                                           ; $7804: $fc
	ret nz                                           ; $7805: $c0

	ld h, l                                          ; $7806: $65
	ret nz                                           ; $7807: $c0

	ld [hl], c                                       ; $7808: $71
	db $fc                                           ; $7809: $fc
	ret nz                                           ; $780a: $c0

jr_080_780b:
	ld h, [hl]                                       ; $780b: $66
	ret nz                                           ; $780c: $c0

	ld [hl], d                                       ; $780d: $72
	cpl                                              ; $780e: $2f
	ei                                               ; $780f: $fb
	ld hl, sp-$40                                    ; $7810: $f8 $c0
	rla                                              ; $7812: $17
	rst SubAFromHL                                          ; $7813: $d7
	ldh [$3c], a                                     ; $7814: $e0 $3c
	daa                                              ; $7816: $27
	add b                                            ; $7817: $80
	ret nz                                           ; $7818: $c0

	dec de                                           ; $7819: $1b
	rst SubAFromHL                                          ; $781a: $d7
	ld [bc], a                                       ; $781b: $02
	ret nc                                           ; $781c: $d0

	pop de                                           ; $781d: $d1
	rra                                              ; $781e: $1f
	ret nz                                           ; $781f: $c0

	ld bc, $08a0                                     ; $7820: $01 $a0 $08
	nop                                              ; $7823: $00
	ldh [$c0], a                                     ; $7824: $e0 $c0
	ld bc, $01a0                                     ; $7826: $01 $a0 $01
	nop                                              ; $7829: $00
	db $e3                                           ; $782a: $e3
	ret nc                                           ; $782b: $d0

	add e                                            ; $782c: $83
	ld [bc], a                                       ; $782d: $02
	ld l, l                                          ; $782e: $6d
	rst SubAFromHL                                          ; $782f: $d7
	pop hl                                           ; $7830: $e1
	ld b, [hl]                                       ; $7831: $46
	ld bc, $c0e1                                     ; $7832: $01 $e1 $c0
	ld bc, $01a0                                     ; $7835: $01 $a0 $01
	nop                                              ; $7838: $00
	push hl                                          ; $7839: $e5
	nop                                              ; $783a: $00
	add b                                            ; $783b: $80
	nop                                              ; $783c: $00
	dec [hl]                                         ; $783d: $35
	ld h, b                                          ; $783e: $60
	cp $08                                           ; $783f: $fe $08
	db $fc                                           ; $7841: $fc
	ret nz                                           ; $7842: $c0

	ld h, l                                          ; $7843: $65
	db $db                                           ; $7844: $db
	db $fc                                           ; $7845: $fc
	ret nz                                           ; $7846: $c0

	ld h, [hl]                                       ; $7847: $66
	rst SubAFromDE                                          ; $7848: $df
	jr nz, jr_080_780b                               ; $7849: $20 $c0

	ld bc, $08a0                                     ; $784b: $01 $a0 $08
	nop                                              ; $784e: $00
	ld a, [$01c0]                                    ; $784f: $fa $c0 $01
	and b                                            ; $7852: $a0
	ld bc, $fd00                                     ; $7853: $01 $00 $fd
	ret nz                                           ; $7856: $c0

	ld bc, $01a0                                     ; $7857: $01 $a0 $01
	ld bc, $d002                                     ; $785a: $01 $02 $d0
	adc e                                            ; $785d: $8b
	nop                                              ; $785e: $00
	or $b0                                           ; $785f: $f6 $b0
	add c                                            ; $7861: $81
	nop                                              ; $7862: $00
	add b                                            ; $7863: $80
	nop                                              ; $7864: $00
	ld e, h                                          ; $7865: $5c
	push hl                                          ; $7866: $e5
	ld b, [hl]                                       ; $7867: $46
	ld [$0362], sp                                   ; $7868: $08 $62 $03
	db $e4                                           ; $786b: $e4
	nop                                              ; $786c: $00
	ld [bc], a                                       ; $786d: $02
	add hl, bc                                       ; $786e: $09
	add [hl]                                         ; $786f: $86
	add d                                            ; $7870: $82
	ret nz                                           ; $7871: $c0

	dec de                                           ; $7872: $1b
	rst SubAFromHL                                          ; $7873: $d7
	ld [bc], a                                       ; $7874: $02
	ret nc                                           ; $7875: $d0

	pop de                                           ; $7876: $d1
	ld b, $c0                                        ; $7877: $06 $c0
	ld bc, $08a0                                     ; $7879: $01 $a0 $08
	ld bc, $030a                                     ; $787c: $01 $0a $03
	jp nc, $d4d3                                     ; $787f: $d2 $d3 $d4

	ld b, $c0                                        ; $7882: $06 $c0
	ld bc, $08a0                                     ; $7884: $01 $a0 $08
	ld bc, $0110                                     ; $7887: $01 $10 $01
	push de                                          ; $788a: $d5
	inc c                                            ; $788b: $0c
	ret nz                                           ; $788c: $c0

	ld bc, $08a0                                     ; $788d: $01 $a0 $08
	ld bc, $c114                                     ; $7890: $01 $14 $c1
	ld e, e                                          ; $7893: $5b
	ret nz                                           ; $7894: $c0

	inc c                                            ; $7895: $0c
	ldh [rAUD3HIGH], a                               ; $7896: $e0 $1e
	ld h, c                                          ; $7898: $61
	cp $09                                           ; $7899: $fe $09
	db $fd                                           ; $789b: $fd
	ret nz                                           ; $789c: $c0

	ld h, h                                          ; $789d: $64
	ldh [$63], a                                     ; $789e: $e0 $63
	db $fc                                           ; $78a0: $fc
	ret nz                                           ; $78a1: $c0

	ld h, l                                          ; $78a2: $65
	push de                                          ; $78a3: $d5
	dec de                                           ; $78a4: $1b
	add d                                            ; $78a5: $82
	ret nz                                           ; $78a6: $c0

	ld h, [hl]                                       ; $78a7: $66
	ld bc, $05d3                                     ; $78a8: $01 $d3 $05
	ret nc                                           ; $78ab: $d0

	add e                                            ; $78ac: $83
	ld bc, $d772                                     ; $78ad: $01 $72 $d7
	ld bc, $05d4                                     ; $78b0: $01 $d4 $05
	ret nc                                           ; $78b3: $d0

	add e                                            ; $78b4: $83
	ld bc, $d776                                     ; $78b5: $01 $76 $d7
	ld bc, $05d5                                     ; $78b8: $01 $d5 $05
	ret nc                                           ; $78bb: $d0

	add e                                            ; $78bc: $83
	ld bc, $d77a                                     ; $78bd: $01 $7a $d7
	cp $09                                           ; $78c0: $fe $09
	db $fc                                           ; $78c2: $fc
	ret nz                                           ; $78c3: $c0

	ld h, h                                          ; $78c4: $64
	ldh [$63], a                                     ; $78c5: $e0 $63
	db $fc                                           ; $78c7: $fc
	ret nz                                           ; $78c8: $c0

	ld h, l                                          ; $78c9: $65
	push de                                          ; $78ca: $d5
	inc hl                                           ; $78cb: $23
	add e                                            ; $78cc: $83
	ret nz                                           ; $78cd: $c0

jr_080_78ce:
	ld h, [hl]                                       ; $78ce: $66
	ld bc, $05d2                                     ; $78cf: $01 $d2 $05
	ret nc                                           ; $78d2: $d0

	add e                                            ; $78d3: $83
	ld bc, $d772                                     ; $78d4: $01 $72 $d7
	ld bc, $05d3                                     ; $78d7: $01 $d3 $05
	ret nc                                           ; $78da: $d0

	add e                                            ; $78db: $83
	ld bc, $d776                                     ; $78dc: $01 $76 $d7
	ld bc, $05d4                                     ; $78df: $01 $d4 $05
	ret nc                                           ; $78e2: $d0

	add e                                            ; $78e3: $83
	ld bc, $d77a                                     ; $78e4: $01 $7a $d7
	ld bc, $05d5                                     ; $78e7: $01 $d5 $05
	ret nc                                           ; $78ea: $d0

	add e                                            ; $78eb: $83
	ld bc, $d77e                                     ; $78ec: $01 $7e $d7
	nop                                              ; $78ef: $00
	ret nz                                           ; $78f0: $c0

	set 4, l                                         ; $78f1: $cb $e5
	nop                                              ; $78f3: $00
	jr nz, jr_080_78ce                               ; $78f4: $20 $d8

	ld a, [bc]                                       ; $78f6: $0a
	ld b, $09                                        ; $78f7: $06 $09
	pop bc                                           ; $78f9: $c1
	ld l, e                                          ; $78fa: $6b
	nop                                              ; $78fb: $00
	add b                                            ; $78fc: $80
	ld [bc], a                                       ; $78fd: $02
	ld a, b                                          ; $78fe: $78
	ld b, c                                          ; $78ff: $41
	add b                                            ; $7900: $80
	and b                                            ; $7901: $a0
	nop                                              ; $7902: $00
	add b                                            ; $7903: $80

Call_080_7904:
	and b                                            ; $7904: $a0
	ld bc, $c1fd                                     ; $7905: $01 $fd $c1
	ld e, l                                          ; $7908: $5d
	adc e                                            ; $7909: $8b
	ld [bc], a                                       ; $790a: $02
	inc [hl]                                         ; $790b: $34
	ld [bc], a                                       ; $790c: $02
	or b                                             ; $790d: $b0
	ld e, c                                          ; $790e: $59
	rrca                                             ; $790f: $0f
	nop                                              ; $7910: $00
	add b                                            ; $7911: $80
	and b                                            ; $7912: $a0
	ld bc, $02e1                                     ; $7913: $01 $e1 $02
	ld [bc], a                                       ; $7916: $02
	ld [hl+], a                                      ; $7917: $22
	ldh [rSB], a                                     ; $7918: $e0 $01
	ld c, l                                          ; $791a: $4d
	push hl                                          ; $791b: $e5
	dec h                                            ; $791c: $25
	nop                                              ; $791d: $00
	nop                                              ; $791e: $00
	ld [bc], a                                       ; $791f: $02
	or b                                             ; $7920: $b0
	ld [de], a                                       ; $7921: $12
	dec bc                                           ; $7922: $0b
	pop hl                                           ; $7923: $e1
	ld [bc], a                                       ; $7924: $02
	ld [bc], a                                       ; $7925: $02
	ld [hl+], a                                      ; $7926: $22
	ldh [rSB], a                                     ; $7927: $e0 $01
	ld a, $e5                                        ; $7929: $3e $e5
	dec h                                            ; $792b: $25
	ld bc, $0209                                     ; $792c: $01 $09 $02
	or b                                             ; $792f: $b0
	ld e, d                                          ; $7930: $5a
	dec bc                                           ; $7931: $0b
	pop hl                                           ; $7932: $e1
	ld [bc], a                                       ; $7933: $02
	ld [bc], a                                       ; $7934: $02
	ld [hl+], a                                      ; $7935: $22
	ldh [rSB], a                                     ; $7936: $e0 $01
	cpl                                              ; $7938: $2f
	push hl                                          ; $7939: $e5
	dec h                                            ; $793a: $25
	ld [bc], a                                       ; $793b: $02
	ld h, l                                          ; $793c: $65
	ld [bc], a                                       ; $793d: $02
	or b                                             ; $793e: $b0
	inc d                                            ; $793f: $14
	rrca                                             ; $7940: $0f
	pop hl                                           ; $7941: $e1
	ld [bc], a                                       ; $7942: $02
	ld [bc], a                                       ; $7943: $02
	ld [hl+], a                                      ; $7944: $22
	ldh [rSB], a                                     ; $7945: $e0 $01
	jr nz, jr_080_7949                               ; $7947: $20 $00

jr_080_7949:
	add b                                            ; $7949: $80
	ld [bc], a                                       ; $794a: $02
	ld a, c                                          ; $794b: $79
	push hl                                          ; $794c: $e5
	dec h                                            ; $794d: $25
	inc b                                            ; $794e: $04
	ld d, h                                          ; $794f: $54
	ld [bc], a                                       ; $7950: $02
	or b                                             ; $7951: $b0
	ld e, e                                          ; $7952: $5b
	dec bc                                           ; $7953: $0b
	pop hl                                           ; $7954: $e1
	ld [bc], a                                       ; $7955: $02
	ld [bc], a                                       ; $7956: $02
	ld [hl+], a                                      ; $7957: $22
	ldh [rSB], a                                     ; $7958: $e0 $01
	dec c                                            ; $795a: $0d
	push hl                                          ; $795b: $e5
	dec h                                            ; $795c: $25
	dec b                                            ; $795d: $05
	adc b                                            ; $795e: $88
	ld [bc], a                                       ; $795f: $02
	or b                                             ; $7960: $b0
	ld d, $0f                                        ; $7961: $16 $0f
	pop hl                                           ; $7963: $e1
	ld [bc], a                                       ; $7964: $02
	ld [bc], a                                       ; $7965: $02
	ld [hl+], a                                      ; $7966: $22
	ldh [rP1], a                                     ; $7967: $e0 $00
	cp $00                                           ; $7969: $fe $00
	add b                                            ; $796b: $80
	ld [bc], a                                       ; $796c: $02
	ld a, d                                          ; $796d: $7a
	push hl                                          ; $796e: $e5
	dec h                                            ; $796f: $25
	ld b, $bc                                        ; $7970: $06 $bc
	ld [bc], a                                       ; $7972: $02
	or b                                             ; $7973: $b0
	jr jr_080_7981                                   ; $7974: $18 $0b

	pop hl                                           ; $7976: $e1
	ld [bc], a                                       ; $7977: $02
	ld [bc], a                                       ; $7978: $02
	ld [hl+], a                                      ; $7979: $22
	ldh [rP1], a                                     ; $797a: $e0 $00
	db $eb                                           ; $797c: $eb
	push hl                                          ; $797d: $e5
	dec h                                            ; $797e: $25
	rlca                                             ; $797f: $07
	add [hl]                                         ; $7980: $86

jr_080_7981:
	ld [bc], a                                       ; $7981: $02
	or b                                             ; $7982: $b0
	inc de                                           ; $7983: $13
	dec bc                                           ; $7984: $0b
	pop hl                                           ; $7985: $e1
	ld [bc], a                                       ; $7986: $02
	ld [bc], a                                       ; $7987: $02
	ld [hl+], a                                      ; $7988: $22
	ldh [rP1], a                                     ; $7989: $e0 $00
	call c, $25e5                                    ; $798b: $dc $e5 $25
	ld [$027d], sp                                   ; $798e: $08 $7d $02
	or b                                             ; $7991: $b0
	ld e, h                                          ; $7992: $5c
	dec bc                                           ; $7993: $0b
	pop hl                                           ; $7994: $e1
	ld [bc], a                                       ; $7995: $02
	ld [bc], a                                       ; $7996: $02
	ld [hl+], a                                      ; $7997: $22
	ldh [rP1], a                                     ; $7998: $e0 $00
	call $25e5                                       ; $799a: $cd $e5 $25
	ld a, [bc]                                       ; $799d: $0a
	xor [hl]                                         ; $799e: $ae
	ld [bc], a                                       ; $799f: $02
	or b                                             ; $79a0: $b0
	ld e, l                                          ; $79a1: $5d
	dec bc                                           ; $79a2: $0b
	pop hl                                           ; $79a3: $e1
	ld [bc], a                                       ; $79a4: $02
	ld [bc], a                                       ; $79a5: $02
	ld [hl+], a                                      ; $79a6: $22
	ldh [rP1], a                                     ; $79a7: $e0 $00
	cp [hl]                                          ; $79a9: $be
	push hl                                          ; $79aa: $e5
	dec h                                            ; $79ab: $25
	inc c                                            ; $79ac: $0c
	rlca                                             ; $79ad: $07
	ld [bc], a                                       ; $79ae: $02
	or b                                             ; $79af: $b0
	ld e, [hl]                                       ; $79b0: $5e
	rrca                                             ; $79b1: $0f
	pop hl                                           ; $79b2: $e1
	ld [bc], a                                       ; $79b3: $02
	ld [bc], a                                       ; $79b4: $02
	ld [hl+], a                                      ; $79b5: $22
	ldh [rP1], a                                     ; $79b6: $e0 $00
	xor a                                            ; $79b8: $af
	nop                                              ; $79b9: $00
	add b                                            ; $79ba: $80
	ld [bc], a                                       ; $79bb: $02
	ld a, e                                          ; $79bc: $7b
	push hl                                          ; $79bd: $e5
	ld h, $00                                        ; $79be: $26 $00
	nop                                              ; $79c0: $00
	ld [bc], a                                       ; $79c1: $02
	or b                                             ; $79c2: $b0
	ld e, a                                          ; $79c3: $5f
	rrca                                             ; $79c4: $0f
	pop hl                                           ; $79c5: $e1
	ld [bc], a                                       ; $79c6: $02
	ld [bc], a                                       ; $79c7: $02
	ld [hl+], a                                      ; $79c8: $22
	ldh [rP1], a                                     ; $79c9: $e0 $00
	sbc h                                            ; $79cb: $9c
	nop                                              ; $79cc: $00
	add b                                            ; $79cd: $80
	ld [bc], a                                       ; $79ce: $02
	ld a, h                                          ; $79cf: $7c
	push hl                                          ; $79d0: $e5
	ld h, $00                                        ; $79d1: $26 $00
	jp z, $b002                                      ; $79d3: $ca $02 $b0

	ld h, b                                          ; $79d6: $60
	rrca                                             ; $79d7: $0f
	pop hl                                           ; $79d8: $e1
	ld [bc], a                                       ; $79d9: $02
	ld [bc], a                                       ; $79da: $02
	ld [hl+], a                                      ; $79db: $22
	ldh [rP1], a                                     ; $79dc: $e0 $00
	adc c                                            ; $79de: $89
	nop                                              ; $79df: $00
	add b                                            ; $79e0: $80
	ld [bc], a                                       ; $79e1: $02
	ld a, l                                          ; $79e2: $7d
	push hl                                          ; $79e3: $e5
	ld h, $01                                        ; $79e4: $26 $01
	sub h                                            ; $79e6: $94
	ld [bc], a                                       ; $79e7: $02
	or b                                             ; $79e8: $b0
	dec d                                            ; $79e9: $15
	dec bc                                           ; $79ea: $0b
	pop hl                                           ; $79eb: $e1
	ld [bc], a                                       ; $79ec: $02
	ld [bc], a                                       ; $79ed: $02
	ld [hl+], a                                      ; $79ee: $22
	ldh [rP1], a                                     ; $79ef: $e0 $00
	halt                                             ; $79f1: $76
	push hl                                          ; $79f2: $e5
	ld h, $07                                        ; $79f3: $26 $07
	push hl                                          ; $79f5: $e5
	ld [bc], a                                       ; $79f6: $02
	or b                                             ; $79f7: $b0
	ld h, c                                          ; $79f8: $61
	dec bc                                           ; $79f9: $0b
	pop hl                                           ; $79fa: $e1
	ld [bc], a                                       ; $79fb: $02
	ld [bc], a                                       ; $79fc: $02
	ld [hl+], a                                      ; $79fd: $22
	ldh [rP1], a                                     ; $79fe: $e0 $00
	ld h, a                                          ; $7a00: $67
	push hl                                          ; $7a01: $e5
	ld h, $09                                        ; $7a02: $26 $09
	sub b                                            ; $7a04: $90
	ld [bc], a                                       ; $7a05: $02
	or b                                             ; $7a06: $b0
	ld h, d                                          ; $7a07: $62
	dec bc                                           ; $7a08: $0b
	pop hl                                           ; $7a09: $e1
	ld [bc], a                                       ; $7a0a: $02
	ld [bc], a                                       ; $7a0b: $02
	ld [hl+], a                                      ; $7a0c: $22
	ldh [rP1], a                                     ; $7a0d: $e0 $00
	ld e, b                                          ; $7a0f: $58
	push hl                                          ; $7a10: $e5
	ld h, $0a                                        ; $7a11: $26 $0a
	cp b                                             ; $7a13: $b8
	ld [bc], a                                       ; $7a14: $02
	or b                                             ; $7a15: $b0
	ld h, e                                          ; $7a16: $63
	dec bc                                           ; $7a17: $0b
	pop hl                                           ; $7a18: $e1
	ld [bc], a                                       ; $7a19: $02
	ld [bc], a                                       ; $7a1a: $02
	ld [hl+], a                                      ; $7a1b: $22
	ldh [rP1], a                                     ; $7a1c: $e0 $00
	ld c, c                                          ; $7a1e: $49
	push hl                                          ; $7a1f: $e5
	ld h, $0c                                        ; $7a20: $26 $0c
	pop af                                           ; $7a22: $f1
	ld [bc], a                                       ; $7a23: $02
	or b                                             ; $7a24: $b0
	ld h, h                                          ; $7a25: $64
	dec bc                                           ; $7a26: $0b
	pop hl                                           ; $7a27: $e1
	ld [bc], a                                       ; $7a28: $02
	ld [bc], a                                       ; $7a29: $02
	ld [hl+], a                                      ; $7a2a: $22
	ldh [rP1], a                                     ; $7a2b: $e0 $00
	ld a, [hl-]                                      ; $7a2d: $3a
	push hl                                          ; $7a2e: $e5
	ld h, $0e                                        ; $7a2f: $26 $0e
	dec b                                            ; $7a31: $05
	ld [bc], a                                       ; $7a32: $02
	or b                                             ; $7a33: $b0
	ld h, l                                          ; $7a34: $65
	rrca                                             ; $7a35: $0f

jr_080_7a36:
	nop                                              ; $7a36: $00
	add b                                            ; $7a37: $80
	and b                                            ; $7a38: $a0
	nop                                              ; $7a39: $00
	pop hl                                           ; $7a3a: $e1
	ld [bc], a                                       ; $7a3b: $02
	ld [bc], a                                       ; $7a3c: $02
	ld [hl+], a                                      ; $7a3d: $22
	ldh [rP1], a                                     ; $7a3e: $e0 $00
	daa                                              ; $7a40: $27
	push hl                                          ; $7a41: $e5
	ld h, $0f                                        ; $7a42: $26 $0f
	jr nc, jr_080_7a48                               ; $7a44: $30 $02

	or b                                             ; $7a46: $b0
	ld h, [hl]                                       ; $7a47: $66

jr_080_7a48:
	dec bc                                           ; $7a48: $0b
	pop hl                                           ; $7a49: $e1
	ld [bc], a                                       ; $7a4a: $02
	ld [bc], a                                       ; $7a4b: $02
	ld [hl+], a                                      ; $7a4c: $22
	ldh [rP1], a                                     ; $7a4d: $e0 $00
	jr jr_080_7a36                                   ; $7a4f: $18 $e5

	ld h, $10                                        ; $7a51: $26 $10
	ld d, a                                          ; $7a53: $57
	ld [bc], a                                       ; $7a54: $02

jr_080_7a55:
	or b                                             ; $7a55: $b0
	ld h, a                                          ; $7a56: $67
	ld c, $c0                                        ; $7a57: $0e $c0
	and a                                            ; $7a59: $a7
	ret c                                            ; $7a5a: $d8

	db $d3                                           ; $7a5b: $d3
	jp nc, $acc0                                     ; $7a5c: $d2 $c0 $ac

	ldh [rP1], a                                     ; $7a5f: $e0 $00
	ld b, $e5                                        ; $7a61: $06 $e5
	ld h, $11                                        ; $7a63: $26 $11
	ret nc                                           ; $7a65: $d0

jr_080_7a66:
	jp nz, $6115                                     ; $7a66: $c2 $15 $61

	ld hl, sp-$40                                    ; $7a69: $f8 $c0
	add e                                            ; $7a6b: $83
	sub $e0                                          ; $7a6c: $d6 $e0
	ld e, $3d                                        ; $7a6e: $1e $3d
	ret nz                                           ; $7a70: $c0

	and l                                            ; $7a71: $a5
	ret nz                                           ; $7a72: $c0

	inc c                                            ; $7a73: $0c
	ldh [$50], a                                     ; $7a74: $e0 $50
	pop hl                                           ; $7a76: $e1
	ld [bc], a                                       ; $7a77: $02
	inc bc                                           ; $7a78: $03
	rra                                              ; $7a79: $1f
	ret nz                                           ; $7a7a: $c0

	ld bc, $09a0                                     ; $7a7b: $01 $a0 $09
	nop                                              ; $7a7e: $00
	ld bc, $5bc1                                     ; $7a7f: $01 $c1 $5b
	ret nz                                           ; $7a82: $c0

	ld bc, $01a0                                     ; $7a83: $01 $a0 $01
	nop                                              ; $7a86: $00
	ld [bc], a                                       ; $7a87: $02
	ret nz                                           ; $7a88: $c0

	ld bc, $01a0                                     ; $7a89: $01 $a0 $01
	nop                                              ; $7a8c: $00
	inc c                                            ; $7a8d: $0c
	ret nz                                           ; $7a8e: $c0

	ld bc, $01a0                                     ; $7a8f: $01 $a0 $01
	nop                                              ; $7a92: $00
	jr jr_080_7a55                                   ; $7a93: $18 $c0

	dec h                                            ; $7a95: $25
	pop de                                           ; $7a96: $d1
	ret c                                            ; $7a97: $d8

	ret nz                                           ; $7a98: $c0

	inc h                                            ; $7a99: $24
	pop de                                           ; $7a9a: $d1
	ret c                                            ; $7a9b: $d8

	ret nz                                           ; $7a9c: $c0

	inc hl                                           ; $7a9d: $23
	push de                                          ; $7a9e: $d5
	ret c                                            ; $7a9f: $d8

	pop bc                                           ; $7aa0: $c1
	ld c, h                                          ; $7aa1: $4c
	db $db                                           ; $7aa2: $db
	pop bc                                           ; $7aa3: $c1
	dec sp                                           ; $7aa4: $3b
	ld b, b                                          ; $7aa5: $40
	add b                                            ; $7aa6: $80
	nop                                              ; $7aa7: $00

jr_080_7aa8:
	set 4, l                                         ; $7aa8: $cb $e5
	nop                                              ; $7aaa: $00
	jr nz, @-$26                                     ; $7aab: $20 $d8

	db $fc                                           ; $7aad: $fc

jr_080_7aae:
	ret nz                                           ; $7aae: $c0

	dec de                                           ; $7aaf: $1b
	ret c                                            ; $7ab0: $d8

	push de                                          ; $7ab1: $d5

jr_080_7ab2:
	dec e                                            ; $7ab2: $1d
	ret nz                                           ; $7ab3: $c0

	inc c                                            ; $7ab4: $0c
	ldh [$78], a                                     ; $7ab5: $e0 $78
	pop hl                                           ; $7ab7: $e1
	ld [bc], a                                       ; $7ab8: $02
	rlca                                             ; $7ab9: $07
	cp a                                             ; $7aba: $bf
	ret nz                                           ; $7abb: $c0

	ld bc, $01a0                                     ; $7abc: $01 $a0 $01
	nop                                              ; $7abf: $00
	ld e, $c0                                        ; $7ac0: $1e $c0
	ld bc, $01a0                                     ; $7ac2: $01 $a0 $01
	nop                                              ; $7ac5: $00
	ld h, $c1                                        ; $7ac6: $26 $c1
	ld c, h                                          ; $7ac8: $4c
	db $db                                           ; $7ac9: $db
	pop bc                                           ; $7aca: $c1
	dec sp                                           ; $7acb: $3b
	push hl                                          ; $7acc: $e5
	nop                                              ; $7acd: $00
	jr nz, jr_080_7aa8                               ; $7ace: $20 $d8

	and [hl]                                         ; $7ad0: $a6
	ret nz                                           ; $7ad1: $c0

	ld h, $e0                                        ; $7ad2: $26 $e0
	jr z, jr_080_7aae                                ; $7ad4: $28 $d8

	ld h, c                                          ; $7ad6: $61
	add b                                            ; $7ad7: $80
	nop                                              ; $7ad8: $00
	db $db                                           ; $7ad9: $db
	ld b, e                                          ; $7ada: $43
	ret nz                                           ; $7adb: $c0

	and l                                            ; $7adc: $a5
	ret nz                                           ; $7add: $c0

	ld bc, $01a0                                     ; $7ade: $01 $a0 $01
	nop                                              ; $7ae1: $00
	jr nc, jr_080_7a66                               ; $7ae2: $30 $82

	ret nz                                           ; $7ae4: $c0

	dec de                                           ; $7ae5: $1b
	ret c                                            ; $7ae6: $d8

	ld [bc], a                                       ; $7ae7: $02
	ret nc                                           ; $7ae8: $d0

	pop de                                           ; $7ae9: $d1
	inc c                                            ; $7aea: $0c
	ret nz                                           ; $7aeb: $c0

	ld bc, $09a0                                     ; $7aec: $01 $a0 $09
	nop                                              ; $7aef: $00
	jr c, jr_080_7ab2                                ; $7af0: $38 $c0

	ld bc, $01a0                                     ; $7af2: $01 $a0 $01
	nop                                              ; $7af5: $00
	ld b, b                                          ; $7af6: $40
	ld [bc], a                                       ; $7af7: $02
	jp nc, $0cd3                                     ; $7af8: $d2 $d3 $0c

	ret nz                                           ; $7afb: $c0

	ld bc, $09a0                                     ; $7afc: $01 $a0 $09
	nop                                              ; $7aff: $00
	ld b, [hl]                                       ; $7b00: $46
	ret nz                                           ; $7b01: $c0

	ld bc, $01a0                                     ; $7b02: $01 $a0 $01
	nop                                              ; $7b05: $00
	ld d, h                                          ; $7b06: $54
	ld bc, $0cd4                                     ; $7b07: $01 $d4 $0c
	ret nz                                           ; $7b0a: $c0

	ld bc, $09a0                                     ; $7b0b: $01 $a0 $09
	nop                                              ; $7b0e: $00
	ld e, d                                          ; $7b0f: $5a
	ret nz                                           ; $7b10: $c0

	ld bc, $01a0                                     ; $7b11: $01 $a0 $01
	nop                                              ; $7b14: $00
	ld h, l                                          ; $7b15: $65
	ret nz                                           ; $7b16: $c0

	inc hl                                           ; $7b17: $23
	ret c                                            ; $7b18: $d8

	ret c                                            ; $7b19: $d8

	ld b, b                                          ; $7b1a: $40
	add b                                            ; $7b1b: $80
	nop                                              ; $7b1c: $00
	db $db                                           ; $7b1d: $db
	add b                                            ; $7b1e: $80
	ld [bc], a                                       ; $7b1f: $02
	dec l                                            ; $7b20: $2d
	inc bc                                           ; $7b21: $03
	ldh [rSB], a                                     ; $7b22: $e0 $01
	ld e, d                                          ; $7b24: $5a
	ld c, b                                          ; $7b25: $48
	or b                                             ; $7b26: $b0
	ld h, l                                          ; $7b27: $65
	ld a, [hl-]                                      ; $7b28: $3a
	ret nz                                           ; $7b29: $c0

	and l                                            ; $7b2a: $a5
	ret nz                                           ; $7b2b: $c0

	ld bc, $01a0                                     ; $7b2c: $01 $a0 $01
	nop                                              ; $7b2f: $00
	ld l, a                                          ; $7b30: $6f
	add c                                            ; $7b31: $81
	ret nz                                           ; $7b32: $c0

	dec de                                           ; $7b33: $1b
	ret c                                            ; $7b34: $d8

	ld bc, $0cd4                                     ; $7b35: $01 $d4 $0c
	ret nz                                           ; $7b38: $c0

	ld bc, $09a0                                     ; $7b39: $01 $a0 $09
	nop                                              ; $7b3c: $00
	ld [hl], d                                       ; $7b3d: $72
	ret nz                                           ; $7b3e: $c0

	ld bc, $01a0                                     ; $7b3f: $01 $a0 $01
	nop                                              ; $7b42: $00
	ld a, b                                          ; $7b43: $78
	nop                                              ; $7b44: $00
	dec e                                            ; $7b45: $1d
	ld h, b                                          ; $7b46: $60
	add b                                            ; $7b47: $80
	and b                                            ; $7b48: $a0
	ld bc, $c006                                     ; $7b49: $01 $06 $c0
	ld bc, $09a0                                     ; $7b4c: $01 $a0 $09
	nop                                              ; $7b4f: $00
	ld a, d                                          ; $7b50: $7a
	dec bc                                           ; $7b51: $0b
	pop bc                                           ; $7b52: $c1
	or d                                             ; $7b53: $b2
	db $e3                                           ; $7b54: $e3
	nop                                              ; $7b55: $00
	ld l, e                                          ; $7b56: $6b
	ret nz                                           ; $7b57: $c0

	ld bc, $09a0                                     ; $7b58: $01 $a0 $09
	nop                                              ; $7b5b: $00
	add c                                            ; $7b5c: $81
	ret nz                                           ; $7b5d: $c0

	ld bc, $01a0                                     ; $7b5e: $01 $a0 $01
	nop                                              ; $7b61: $00
	ld a, b                                          ; $7b62: $78
	rst $38                                          ; $7b63: $ff
	add hl, bc                                       ; $7b64: $09
	ret nz                                           ; $7b65: $c0

	ld bc, $01a0                                     ; $7b66: $01 $a0 $01
	nop                                              ; $7b69: $00
	add a                                            ; $7b6a: $87
	ldh [rSB], a                                     ; $7b6b: $e0 $01
	ld de, $30e1                                     ; $7b6d: $11 $e1 $30
	nop                                              ; $7b70: $00
	nop                                              ; $7b71: $00
	pop bc                                           ; $7b72: $c1
	ld c, h                                          ; $7b73: $4c
	ret c                                            ; $7b74: $d8

	ret nz                                           ; $7b75: $c0

	ld c, a                                          ; $7b76: $4f
	ei                                               ; $7b77: $fb
	cp $09                                           ; $7b78: $fe $09
	db $fc                                           ; $7b7a: $fc
	ret nz                                           ; $7b7b: $c0

	ld h, l                                          ; $7b7c: $65
	db $d3                                           ; $7b7d: $d3
	db $fc                                           ; $7b7e: $fc
	ret nz                                           ; $7b7f: $c0

	ld h, [hl]                                       ; $7b80: $66
	ldh [$15], a                                     ; $7b81: $e0 $15
	inc c                                            ; $7b83: $0c
	ret nz                                           ; $7b84: $c0

	ld bc, $09a0                                     ; $7b85: $01 $a0 $09
	nop                                              ; $7b88: $00
	adc a                                            ; $7b89: $8f
	ret nz                                           ; $7b8a: $c0

	ld bc, $01a0                                     ; $7b8b: $01 $a0 $01
	nop                                              ; $7b8e: $00
	sub [hl]                                         ; $7b8f: $96
	ei                                               ; $7b90: $fb
	cp $15                                           ; $7b91: $fe $15
	db $fc                                           ; $7b93: $fc
	ret nz                                           ; $7b94: $c0

	ld h, l                                          ; $7b95: $65
	rst SubAFromHL                                          ; $7b96: $d7
	rst $38                                          ; $7b97: $ff
	rrca                                             ; $7b98: $0f
	db $fc                                           ; $7b99: $fc
	ret nz                                           ; $7b9a: $c0

	ld h, [hl]                                       ; $7b9b: $66
	ldh [rAUD2HIGH], a                               ; $7b9c: $e0 $19
	db $fc                                           ; $7b9e: $fc
	ret nz                                           ; $7b9f: $c0

	ld h, [hl]                                       ; $7ba0: $66
	ldh [rAUD3ENA], a                                ; $7ba1: $e0 $1a
	db $fc                                           ; $7ba3: $fc
	ret nz                                           ; $7ba4: $c0

	ld h, [hl]                                       ; $7ba5: $66
	ldh [rAUD3LEN], a                                ; $7ba6: $e0 $1b
	inc c                                            ; $7ba8: $0c
	ret nz                                           ; $7ba9: $c0

	ld bc, $09a0                                     ; $7baa: $01 $a0 $09
	nop                                              ; $7bad: $00
	and c                                            ; $7bae: $a1
	ret nz                                           ; $7baf: $c0

	ld bc, $01a0                                     ; $7bb0: $01 $a0 $01
	nop                                              ; $7bb3: $00
	and l                                            ; $7bb4: $a5
	ei                                               ; $7bb5: $fb
	cp $09                                           ; $7bb6: $fe $09
	db $fc                                           ; $7bb8: $fc
	ret nz                                           ; $7bb9: $c0

	ld h, l                                          ; $7bba: $65
	reti                                             ; $7bbb: $d9


	db $fc                                           ; $7bbc: $fc
	ret nz                                           ; $7bbd: $c0

	ld h, [hl]                                       ; $7bbe: $66
	ldh [rAUD2ENV], a                                ; $7bbf: $e0 $17
	inc c                                            ; $7bc1: $0c
	ret nz                                           ; $7bc2: $c0

	ld bc, $09a0                                     ; $7bc3: $01 $a0 $09
	nop                                              ; $7bc6: $00
	xor h                                            ; $7bc7: $ac
	ret nz                                           ; $7bc8: $c0

	ld bc, $01a0                                     ; $7bc9: $01 $a0 $01
	nop                                              ; $7bcc: $00
	or e                                             ; $7bcd: $b3
	ei                                               ; $7bce: $fb
	cp $10                                           ; $7bcf: $fe $10
	add b                                            ; $7bd1: $80
	nop                                              ; $7bd2: $00
	sub $fc                                          ; $7bd3: $d6 $fc
	ret nz                                           ; $7bd5: $c0

	ld h, h                                          ; $7bd6: $64
	ldh [$61], a                                     ; $7bd7: $e0 $61
	db $fc                                           ; $7bd9: $fc
	ret nz                                           ; $7bda: $c0

	ld h, l                                          ; $7bdb: $65
	jp c, $c0fc                                      ; $7bdc: $da $fc $c0

	ld h, [hl]                                       ; $7bdf: $66
	push de                                          ; $7be0: $d5
	scf                                              ; $7be1: $37
	add d                                            ; $7be2: $82
	ret nz                                           ; $7be3: $c0

	dec de                                           ; $7be4: $1b
	ret c                                            ; $7be5: $d8

	ld [bc], a                                       ; $7be6: $02
	ret nc                                           ; $7be7: $d0

	pop de                                           ; $7be8: $d1
	inc c                                            ; $7be9: $0c
	ret nz                                           ; $7bea: $c0

	ld bc, $09a0                                     ; $7beb: $01 $a0 $09
	nop                                              ; $7bee: $00
	cp h                                             ; $7bef: $bc
	ret nz                                           ; $7bf0: $c0

	ld bc, $01a0                                     ; $7bf1: $01 $a0 $01
	nop                                              ; $7bf4: $00
	pop bc                                           ; $7bf5: $c1
	ld [bc], a                                       ; $7bf6: $02
	jp nc, $0cd3                                     ; $7bf7: $d2 $d3 $0c

	ret nz                                           ; $7bfa: $c0

	ld bc, $09a0                                     ; $7bfb: $01 $a0 $09
	nop                                              ; $7bfe: $00
	rst JumpTable                                          ; $7bff: $c7
	ret nz                                           ; $7c00: $c0

	ld bc, $01a0                                     ; $7c01: $01 $a0 $01
	nop                                              ; $7c04: $00
	call z, $d401                                    ; $7c05: $cc $01 $d4
	inc c                                            ; $7c08: $0c
	ret nz                                           ; $7c09: $c0

	ld bc, $09a0                                     ; $7c0a: $01 $a0 $09
	nop                                              ; $7c0d: $00
	call nc, $01c0                                   ; $7c0e: $d4 $c0 $01
	and b                                            ; $7c11: $a0
	ld bc, $da00                                     ; $7c12: $01 $00 $da
	ld b, b                                          ; $7c15: $40
	add b                                            ; $7c16: $80
	nop                                              ; $7c17: $00
	sub $fb                                          ; $7c18: $d6 $fb
	cp $10                                           ; $7c1a: $fe $10
	add b                                            ; $7c1c: $80
	nop                                              ; $7c1d: $00
	rst SubAFromHL                                          ; $7c1e: $d7
	db $fc                                           ; $7c1f: $fc
	ret nz                                           ; $7c20: $c0

	ld h, h                                          ; $7c21: $64
	ldh [$62], a                                     ; $7c22: $e0 $62
	db $fc                                           ; $7c24: $fc
	ret nz                                           ; $7c25: $c0

	ld h, l                                          ; $7c26: $65
	jp c, $c0fc                                      ; $7c27: $da $fc $c0

	ld h, [hl]                                       ; $7c2a: $66
	call nc, $8237                                   ; $7c2b: $d4 $37 $82
	ret nz                                           ; $7c2e: $c0

	dec de                                           ; $7c2f: $1b
	ret c                                            ; $7c30: $d8

	ld [bc], a                                       ; $7c31: $02
	ret nc                                           ; $7c32: $d0

	pop de                                           ; $7c33: $d1
	inc c                                            ; $7c34: $0c
	ret nz                                           ; $7c35: $c0

	ld bc, $09a0                                     ; $7c36: $01 $a0 $09
	nop                                              ; $7c39: $00
	db $e3                                           ; $7c3a: $e3
	ret nz                                           ; $7c3b: $c0

	ld bc, $01a0                                     ; $7c3c: $01 $a0 $01
	nop                                              ; $7c3f: $00
	pop bc                                           ; $7c40: $c1
	ld [bc], a                                       ; $7c41: $02
	jp nc, $0cd3                                     ; $7c42: $d2 $d3 $0c

	ret nz                                           ; $7c45: $c0

	ld bc, $09a0                                     ; $7c46: $01 $a0 $09
	nop                                              ; $7c49: $00
	add sp, -$40                                     ; $7c4a: $e8 $c0
	ld bc, $01a0                                     ; $7c4c: $01 $a0 $01
	nop                                              ; $7c4f: $00
	call z, $d401                                    ; $7c50: $cc $01 $d4
	inc c                                            ; $7c53: $0c
	ret nz                                           ; $7c54: $c0

	ld bc, $09a0                                     ; $7c55: $01 $a0 $09
	nop                                              ; $7c58: $00
	xor $c0                                          ; $7c59: $ee $c0
	ld bc, $01a0                                     ; $7c5b: $01 $a0 $01
	nop                                              ; $7c5e: $00
	jp c, $8040                                      ; $7c5f: $da $40 $80

	nop                                              ; $7c62: $00
	rst SubAFromHL                                          ; $7c63: $d7
	ei                                               ; $7c64: $fb
	cp $09                                           ; $7c65: $fe $09
	db $fc                                           ; $7c67: $fc
	ret nz                                           ; $7c68: $c0

	ld h, l                                          ; $7c69: $65
	call c, $c0fc                                    ; $7c6a: $dc $fc $c0
	ld h, [hl]                                       ; $7c6d: $66
	ldh [rAUD2ENV], a                                ; $7c6e: $e0 $17
	inc c                                            ; $7c70: $0c
	ret nz                                           ; $7c71: $c0

	ld bc, $09a0                                     ; $7c72: $01 $a0 $09
	nop                                              ; $7c75: $00
	di                                               ; $7c76: $f3
	ret nz                                           ; $7c77: $c0

	ld bc, $01a0                                     ; $7c78: $01 $a0 $01
	nop                                              ; $7c7b: $00
	ld hl, sp+$5b                                    ; $7c7c: $f8 $5b
	ret nz                                           ; $7c7e: $c0

	inc c                                            ; $7c7f: $0c
	ldh [$78], a                                     ; $7c80: $e0 $78
	pop hl                                           ; $7c82: $e1
	ld [bc], a                                       ; $7c83: $02
	rlca                                             ; $7c84: $07
	cp a                                             ; $7c85: $bf
	ret nz                                           ; $7c86: $c0

	and l                                            ; $7c87: $a5
	add d                                            ; $7c88: $82
	ret nz                                           ; $7c89: $c0

	dec de                                           ; $7c8a: $1b
	ret c                                            ; $7c8b: $d8

	ld [bc], a                                       ; $7c8c: $02
	ret nc                                           ; $7c8d: $d0

	pop de                                           ; $7c8e: $d1
	ld e, $c0                                        ; $7c8f: $1e $c0
	ld bc, $09a0                                     ; $7c91: $01 $a0 $09
	nop                                              ; $7c94: $00
	db $fd                                           ; $7c95: $fd
	ret nz                                           ; $7c96: $c0

	ld bc, $01a0                                     ; $7c97: $01 $a0 $01
	ld bc, $6007                                     ; $7c9a: $01 $07 $60
	add b                                            ; $7c9d: $80
	and b                                            ; $7c9e: $a0
	ld bc, $c006                                     ; $7c9f: $01 $06 $c0
	ld bc, $01a0                                     ; $7ca2: $01 $a0 $01
	ld bc, $060c                                     ; $7ca5: $01 $0c $06
	ret nz                                           ; $7ca8: $c0

	ld bc, $01a0                                     ; $7ca9: $01 $a0 $01
	ld bc, $021d                                     ; $7cac: $01 $1d $02
	jp nc, $18d3                                     ; $7caf: $d2 $d3 $18

	ld h, b                                          ; $7cb2: $60
	add b                                            ; $7cb3: $80
	and b                                            ; $7cb4: $a0
	nop                                              ; $7cb5: $00
	ld b, $c0                                        ; $7cb6: $06 $c0
	ld bc, $09a0                                     ; $7cb8: $01 $a0 $09
	ld bc, $062c                                     ; $7cbb: $01 $2c $06
	ret nz                                           ; $7cbe: $c0

	ld bc, $09a0                                     ; $7cbf: $01 $a0 $09
	ld bc, $c036                                     ; $7cc2: $01 $36 $c0
	ld bc, $01a0                                     ; $7cc5: $01 $a0 $01
	ld bc, $0107                                     ; $7cc8: $01 $07 $01
	call nc, $c00c                                   ; $7ccb: $d4 $0c $c0
	ld bc, $09a0                                     ; $7cce: $01 $a0 $09
	ld bc, $c03c                                     ; $7cd1: $01 $3c $c0
	ld bc, $01a0                                     ; $7cd4: $01 $a0 $01
	ld bc, $0a07                                     ; $7cd7: $01 $07 $0a
	ld b, $09                                        ; $7cda: $06 $09
	add hl, bc                                       ; $7cdc: $09
	ret nz                                           ; $7cdd: $c0

	ld bc, $09a0                                     ; $7cde: $01 $a0 $09
	nop                                              ; $7ce1: $00
	ld bc, $00e4                                     ; $7ce2: $01 $e4 $00
	ld [bc], a                                       ; $7ce5: $02
	jr z, jr_080_7cee                                ; $7ce6: $28 $06

	ret nz                                           ; $7ce8: $c0

	ld bc, $01a0                                     ; $7ce9: $01 $a0 $01
	nop                                              ; $7cec: $00
	inc c                                            ; $7ced: $0c

jr_080_7cee:
	ld e, [hl]                                       ; $7cee: $5e
	nop                                              ; $7cef: $00
	ld de, $5009                                     ; $7cf0: $11 $09 $50
	add e                                            ; $7cf3: $83
	ret nz                                           ; $7cf4: $c0

	ld h, l                                          ; $7cf5: $65
	ld bc, $0ed8                                     ; $7cf6: $01 $d8 $0e
	ld h, b                                          ; $7cf9: $60
	ei                                               ; $7cfa: $fb
	ret nz                                           ; $7cfb: $c0

	ld h, [hl]                                       ; $7cfc: $66
	ldh [rAUD1LEN], a                                ; $7cfd: $e0 $11
	inc bc                                           ; $7cff: $03
	ldh [rP1], a                                     ; $7d00: $e0 $00
	ld c, h                                          ; $7d02: $4c
	inc bc                                           ; $7d03: $03
	ldh [rP1], a                                     ; $7d04: $e0 $00
	ld e, l                                          ; $7d06: $5d
	ld bc, $03d9                                     ; $7d07: $01 $d9 $03
	ldh [rP1], a                                     ; $7d0a: $e0 $00
	ld b, d                                          ; $7d0c: $42
	ld bc, $0eda                                     ; $7d0d: $01 $da $0e
	ld h, b                                          ; $7d10: $60
	ld hl, sp-$40                                    ; $7d11: $f8 $c0
	ld h, [hl]                                       ; $7d13: $66
	ldh [rAUD1LEN], a                                ; $7d14: $e0 $11
	inc bc                                           ; $7d16: $03
	ldh [rP1], a                                     ; $7d17: $e0 $00
	dec [hl]                                         ; $7d19: $35
	inc bc                                           ; $7d1a: $03
	ldh [rP1], a                                     ; $7d1b: $e0 $00
	ld b, [hl]                                       ; $7d1d: $46
	nop                                              ; $7d1e: $00
	jr nz, @+$62                                     ; $7d1f: $20 $60

	add b                                            ; $7d21: $80
	ld [bc], a                                       ; $7d22: $02
	ld e, c                                          ; $7d23: $59
	inc bc                                           ; $7d24: $03
	ldh [rP1], a                                     ; $7d25: $e0 $00
	ld [hl], l                                       ; $7d27: $75
	rla                                              ; $7d28: $17
	ld h, b                                          ; $7d29: $60
	cp $0c                                           ; $7d2a: $fe $0c
	ei                                               ; $7d2c: $fb
	ret nz                                           ; $7d2d: $c0

	dec d                                            ; $7d2e: $15
	ret c                                            ; $7d2f: $d8

	ldh [$50], a                                     ; $7d30: $e0 $50
	ei                                               ; $7d32: $fb
	ret nz                                           ; $7d33: $c0

	ld d, $d8                                        ; $7d34: $16 $d8
	ldh [$5a], a                                     ; $7d36: $e0 $5a
	inc bc                                           ; $7d38: $03
	ldh [rP1], a                                     ; $7d39: $e0 $00
	ld l, b                                          ; $7d3b: $68
	inc bc                                           ; $7d3c: $03
	ldh [rP1], a                                     ; $7d3d: $e0 $00
	inc h                                            ; $7d3f: $24
	db $e4                                           ; $7d40: $e4
	nop                                              ; $7d41: $00
	sub e                                            ; $7d42: $93
	nop                                              ; $7d43: $00
	inc de                                           ; $7d44: $13
	add hl, bc                                       ; $7d45: $09
	ld b, $e0                                        ; $7d46: $06 $e0
	nop                                              ; $7d48: $00
	ld h, c                                          ; $7d49: $61
	db $e4                                           ; $7d4a: $e4
	nop                                              ; $7d4b: $00
	adc c                                            ; $7d4c: $89
	inc d                                            ; $7d4d: $14
	ld h, b                                          ; $7d4e: $60
	add b                                            ; $7d4f: $80
	ld [bc], a                                       ; $7d50: $02
	ld e, c                                          ; $7d51: $59
	dec bc                                           ; $7d52: $0b
	or b                                             ; $7d53: $b0
	ld a, a                                          ; $7d54: $7f
	inc bc                                           ; $7d55: $03
	ldh [rP1], a                                     ; $7d56: $e0 $00
	dec h                                            ; $7d58: $25
	rst $38                                          ; $7d59: $ff
	inc bc                                           ; $7d5a: $03
	ldh [rP1], a                                     ; $7d5b: $e0 $00
	ccf                                              ; $7d5d: $3f
	inc bc                                           ; $7d5e: $03
	ldh [rP1], a                                     ; $7d5f: $e0 $00
	inc e                                            ; $7d61: $1c
	add hl, de                                       ; $7d62: $19
	or c                                             ; $7d63: $b1
	ld d, h                                          ; $7d64: $54
	ld b, $c0                                        ; $7d65: $06 $c0
	ld bc, $01a0                                     ; $7d67: $01 $a0 $01
	nop                                              ; $7d6a: $00
	dec d                                            ; $7d6b: $15
	xor d                                            ; $7d6c: $aa
	ld b, $c0                                        ; $7d6d: $06 $c0
	ld bc, $01a0                                     ; $7d6f: $01 $a0 $01
	nop                                              ; $7d72: $00
	inc h                                            ; $7d73: $24
	rst $38                                          ; $7d74: $ff
	ld b, $c0                                        ; $7d75: $06 $c0
	ld bc, $01a0                                     ; $7d77: $01 $a0 $01
	nop                                              ; $7d7a: $00
	ld [hl-], a                                      ; $7d7b: $32
	ld e, $82                                        ; $7d7c: $1e $82
	ret nz                                           ; $7d7e: $c0

	add b                                            ; $7d7f: $80
	ld bc, $06d3                                     ; $7d80: $01 $d3 $06
	ret nz                                           ; $7d83: $c0

	ld bc, $01a0                                     ; $7d84: $01 $a0 $01
	nop                                              ; $7d87: $00
	ccf                                              ; $7d88: $3f
	ld bc, $06d2                                     ; $7d89: $01 $d2 $06
	ret nz                                           ; $7d8c: $c0

	ld bc, $01a0                                     ; $7d8d: $01 $a0 $01
	nop                                              ; $7d90: $00
	ld c, h                                          ; $7d91: $4c
	ld bc, $06d1                                     ; $7d92: $01 $d1 $06
	ret nz                                           ; $7d95: $c0

	ld bc, $01a0                                     ; $7d96: $01 $a0 $01
	nop                                              ; $7d99: $00
	ld e, l                                          ; $7d9a: $5d
	ld b, $c0                                        ; $7d9b: $06 $c0
	ld bc, $01a0                                     ; $7d9d: $01 $a0 $01
	nop                                              ; $7da0: $00
	ld l, h                                          ; $7da1: $6c
	ld b, $c0                                        ; $7da2: $06 $c0
	ld bc, $01a0                                     ; $7da4: $01 $a0 $01
	nop                                              ; $7da7: $00
	add c                                            ; $7da8: $81
	ld a, [hl+]                                      ; $7da9: $2a
	rst $38                                          ; $7daa: $ff
	jr z, jr_080_7ddf                                ; $7dab: $28 $32

	ld b, $c0                                        ; $7dad: $06 $c0
	ld bc, $01a0                                     ; $7daf: $01 $a0 $01
	nop                                              ; $7db2: $00
	sub [hl]                                         ; $7db3: $96
	ld h, l                                          ; $7db4: $65
	ld b, $c0                                        ; $7db5: $06 $c0
	ld bc, $01a0                                     ; $7db7: $01 $a0 $01
	nop                                              ; $7dba: $00
	sbc e                                            ; $7dbb: $9b
	sbc c                                            ; $7dbc: $99
	ld b, $c0                                        ; $7dbd: $06 $c0
	ld bc, $01a0                                     ; $7dbf: $01 $a0 $01
	nop                                              ; $7dc2: $00
	and d                                            ; $7dc3: $a2
	call z, $c006                                    ; $7dc4: $cc $06 $c0
	ld bc, $01a0                                     ; $7dc7: $01 $a0 $01
	nop                                              ; $7dca: $00
	xor d                                            ; $7dcb: $aa
	rst $38                                          ; $7dcc: $ff
	ld b, $c0                                        ; $7dcd: $06 $c0
	ld bc, $01a0                                     ; $7dcf: $01 $a0 $01
	nop                                              ; $7dd2: $00
	or e                                             ; $7dd3: $b3
	add hl, bc                                       ; $7dd4: $09
	ld c, $d0                                        ; $7dd5: $0e $d0
	add d                                            ; $7dd7: $82
	ld bc, $d3d5                                     ; $7dd8: $01 $d5 $d3
	ret nz                                           ; $7ddb: $c0

	ld d, [hl]                                       ; $7ddc: $56
	ret c                                            ; $7ddd: $d8

	ret nc                                           ; $7dde: $d0

jr_080_7ddf:
	ret nc                                           ; $7ddf: $d0

	push hl                                          ; $7de0: $e5
	daa                                              ; $7de1: $27
	nop                                              ; $7de2: $00
	nop                                              ; $7de3: $00
	add hl, bc                                       ; $7de4: $09
	ld e, b                                          ; $7de5: $58
	add c                                            ; $7de6: $81
	ret nz                                           ; $7de7: $c0

	ld h, l                                          ; $7de8: $65
	ld [bc], a                                       ; $7de9: $02
	db $d3                                           ; $7dea: $d3
	call nc, $c01a                                   ; $7deb: $d4 $1a $c0
	ld bc, $09a0                                     ; $7dee: $01 $a0 $09
	nop                                              ; $7df1: $00
	cp e                                             ; $7df2: $bb
	ret nz                                           ; $7df3: $c0

	ld bc, $01a0                                     ; $7df4: $01 $a0 $01
	nop                                              ; $7df7: $00
	ret z                                            ; $7df8: $c8

	ret nz                                           ; $7df9: $c0

	ld bc, $09a0                                     ; $7dfa: $01 $a0 $09
	nop                                              ; $7dfd: $00
	jp z, $83d0                                      ; $7dfe: $ca $d0 $83

	ld bc, $d1de                                     ; $7e01: $01 $de $d1
	db $e4                                           ; $7e04: $e4
	nop                                              ; $7e05: $00
	pop de                                           ; $7e06: $d1
	nop                                              ; $7e07: $00
	dec [hl]                                         ; $7e08: $35
	ret nc                                           ; $7e09: $d0

	add e                                            ; $7e0a: $83
	ld bc, $d0de                                     ; $7e0b: $01 $de $d0
	ret nz                                           ; $7e0e: $c0

	ld bc, $09a0                                     ; $7e0f: $01 $a0 $09
	nop                                              ; $7e12: $00
	adc $a0                                          ; $7e13: $ce $a0
	add b                                            ; $7e15: $80
	and b                                            ; $7e16: $a0
	nop                                              ; $7e17: $00
	nop                                              ; $7e18: $00
	rrca                                             ; $7e19: $0f
	ret nz                                           ; $7e1a: $c0

	ld bc, $01a0                                     ; $7e1b: $01 $a0 $01
	nop                                              ; $7e1e: $00
	reti                                             ; $7e1f: $d9


	ret nz                                           ; $7e20: $c0

	ld bc, $09a0                                     ; $7e21: $01 $a0 $09
	nop                                              ; $7e24: $00
	sbc $e4                                          ; $7e25: $de $e4
	nop                                              ; $7e27: $00
	rla                                              ; $7e28: $17
	rst $38                                          ; $7e29: $ff
	inc de                                           ; $7e2a: $13
	ret nz                                           ; $7e2b: $c0

	ld bc, $01a0                                     ; $7e2c: $01 $a0 $01
	nop                                              ; $7e2f: $00
	pop hl                                           ; $7e30: $e1
	ret nz                                           ; $7e31: $c0

	ld bc, $09a0                                     ; $7e32: $01 $a0 $09
	nop                                              ; $7e35: $00
	sbc $40                                          ; $7e36: $de $40
	add b                                            ; $7e38: $80
	and b                                            ; $7e39: $a0
	nop                                              ; $7e3a: $00
	db $e4                                           ; $7e3b: $e4
	nop                                              ; $7e3c: $00
	ld c, [hl]                                       ; $7e3d: $4e
	jr z, jr_080_7e4a                                ; $7e3e: $28 $0a

	pop hl                                           ; $7e40: $e1
	ld [bc], a                                       ; $7e41: $02
	dec b                                            ; $7e42: $05
	dec b                                            ; $7e43: $05
	ret nz                                           ; $7e44: $c0

	ld bc, $09a0                                     ; $7e45: $01 $a0 $09
	nop                                              ; $7e48: $00
	push hl                                          ; $7e49: $e5

jr_080_7e4a:
	ccf                                              ; $7e4a: $3f
	nop                                              ; $7e4b: $00
	db $ec                                           ; $7e4c: $ec
	add hl, bc                                       ; $7e4d: $09
	ld de, $02e1                                     ; $7e4e: $11 $e1 $02
	inc bc                                           ; $7e51: $03
	inc de                                           ; $7e52: $13
	ret nz                                           ; $7e53: $c0

	ld bc, $09a0                                     ; $7e54: $01 $a0 $09
	nop                                              ; $7e57: $00
	xor $e1                                          ; $7e58: $ee $e1
	ld [bc], a                                       ; $7e5a: $02
	inc b                                            ; $7e5b: $04
	rla                                              ; $7e5c: $17
	db $e4                                           ; $7e5d: $e4
	nop                                              ; $7e5e: $00
	push bc                                          ; $7e5f: $c5
	nop                                              ; $7e60: $00
	or $09                                           ; $7e61: $f6 $09
	ld de, $02e1                                     ; $7e63: $11 $e1 $02
	inc bc                                           ; $7e66: $03
	dec de                                           ; $7e67: $1b
	ret nz                                           ; $7e68: $c0

	ld bc, $09a0                                     ; $7e69: $01 $a0 $09

jr_080_7e6c:
	nop                                              ; $7e6c: $00
	ld hl, sp-$1f                                    ; $7e6d: $f8 $e1
	ld [bc], a                                       ; $7e6f: $02
	inc b                                            ; $7e70: $04
	add hl, hl                                       ; $7e71: $29
	db $e4                                           ; $7e72: $e4
	nop                                              ; $7e73: $00
	or b                                             ; $7e74: $b0
	nop                                              ; $7e75: $00
	db $fc                                           ; $7e76: $fc
	add hl, bc                                       ; $7e77: $09
	ld de, $02e1                                     ; $7e78: $11 $e1 $02
	inc bc                                           ; $7e7b: $03
	rla                                              ; $7e7c: $17
	ret nz                                           ; $7e7d: $c0

	ld bc, $09a0                                     ; $7e7e: $01 $a0 $09
	nop                                              ; $7e81: $00
	cp $e1                                           ; $7e82: $fe $e1
	ld [bc], a                                       ; $7e84: $02
	inc b                                            ; $7e85: $04
	jr nz, jr_080_7e6c                               ; $7e86: $20 $e4

	nop                                              ; $7e88: $00
	sbc e                                            ; $7e89: $9b
	jr z, @+$0c                                      ; $7e8a: $28 $0a

	pop hl                                           ; $7e8c: $e1
	ld [bc], a                                       ; $7e8d: $02
	dec b                                            ; $7e8e: $05
	rla                                              ; $7e8f: $17
	ret nz                                           ; $7e90: $c0

	ld bc, $09a0                                     ; $7e91: $01 $a0 $09
	ld bc, $3f03                                     ; $7e94: $01 $03 $3f
	ld bc, $090d                                     ; $7e97: $01 $0d $09
	ld de, $02e1                                     ; $7e9a: $11 $e1 $02
	inc bc                                           ; $7e9d: $03
	inc de                                           ; $7e9e: $13
	ret nz                                           ; $7e9f: $c0

	ld bc, $09a0                                     ; $7ea0: $01 $a0 $09
	ld bc, $e10f                                     ; $7ea3: $01 $0f $e1
	ld [bc], a                                       ; $7ea6: $02
	inc b                                            ; $7ea7: $04
	rla                                              ; $7ea8: $17
	db $e4                                           ; $7ea9: $e4
	nop                                              ; $7eaa: $00
	ld a, c                                          ; $7eab: $79
	ld bc, $0915                                     ; $7eac: $01 $15 $09
	ld de, $02e1                                     ; $7eaf: $11 $e1 $02
	inc bc                                           ; $7eb2: $03
	dec de                                           ; $7eb3: $1b
	ret nz                                           ; $7eb4: $c0

	ld bc, $09a0                                     ; $7eb5: $01 $a0 $09

jr_080_7eb8:
	ld bc, $e117                                     ; $7eb8: $01 $17 $e1
	ld [bc], a                                       ; $7ebb: $02
	inc b                                            ; $7ebc: $04
	add hl, hl                                       ; $7ebd: $29
	db $e4                                           ; $7ebe: $e4
	nop                                              ; $7ebf: $00
	ld h, h                                          ; $7ec0: $64
	ld bc, $091d                                     ; $7ec1: $01 $1d $09
	ld de, $02e1                                     ; $7ec4: $11 $e1 $02
	inc bc                                           ; $7ec7: $03
	rla                                              ; $7ec8: $17
	ret nz                                           ; $7ec9: $c0

	ld bc, $09a0                                     ; $7eca: $01 $a0 $09
	ld bc, $e11f                                     ; $7ecd: $01 $1f $e1
	ld [bc], a                                       ; $7ed0: $02
	inc b                                            ; $7ed1: $04
	jr nz, jr_080_7eb8                               ; $7ed2: $20 $e4

	nop                                              ; $7ed4: $00
	ld c, a                                          ; $7ed5: $4f
	jr z, @+$0d                                      ; $7ed6: $28 $0b

	pop bc                                           ; $7ed8: $c1
	ld e, c                                          ; $7ed9: $59
	db $e3                                           ; $7eda: $e3
	nop                                              ; $7edb: $00
	add h                                            ; $7edc: $84
	ret nz                                           ; $7edd: $c0

	ld bc, $09a0                                     ; $7ede: $01 $a0 $09
	ld bc, $3f23                                     ; $7ee1: $01 $23 $3f
	ld bc, $0926                                     ; $7ee4: $01 $26 $09
	ld de, $02e1                                     ; $7ee7: $11 $e1 $02
	inc bc                                           ; $7eea: $03
	inc de                                           ; $7eeb: $13
	ret nz                                           ; $7eec: $c0

	ld bc, $09a0                                     ; $7eed: $01 $a0 $09
	ld bc, $e129                                     ; $7ef0: $01 $29 $e1
	ld [bc], a                                       ; $7ef3: $02
	inc b                                            ; $7ef4: $04
	rla                                              ; $7ef5: $17
	db $e4                                           ; $7ef6: $e4
	nop                                              ; $7ef7: $00
	inc l                                            ; $7ef8: $2c
	ld bc, $092f                                     ; $7ef9: $01 $2f $09
	ld de, $02e1                                     ; $7efc: $11 $e1 $02
	inc bc                                           ; $7eff: $03
	dec de                                           ; $7f00: $1b
	ret nz                                           ; $7f01: $c0

	ld bc, $09a0                                     ; $7f02: $01 $a0 $09

jr_080_7f05:
	ld bc, $e135                                     ; $7f05: $01 $35 $e1
	ld [bc], a                                       ; $7f08: $02
	inc b                                            ; $7f09: $04
	add hl, hl                                       ; $7f0a: $29
	db $e4                                           ; $7f0b: $e4
	nop                                              ; $7f0c: $00
	rla                                              ; $7f0d: $17
	ld bc, $093b                                     ; $7f0e: $01 $3b $09
	ld de, $02e1                                     ; $7f11: $11 $e1 $02
	inc bc                                           ; $7f14: $03
	rla                                              ; $7f15: $17
	ret nz                                           ; $7f16: $c0

	ld bc, $09a0                                     ; $7f17: $01 $a0 $09
	ld bc, $e142                                     ; $7f1a: $01 $42 $e1
	ld [bc], a                                       ; $7f1d: $02
	inc b                                            ; $7f1e: $04
	jr nz, jr_080_7f05                               ; $7f1f: $20 $e4

	nop                                              ; $7f21: $00
	ld [bc], a                                       ; $7f22: $02
	add hl, bc                                       ; $7f23: $09
	dec de                                           ; $7f24: $1b
	pop hl                                           ; $7f25: $e1
	ld [bc], a                                       ; $7f26: $02
	dec b                                            ; $7f27: $05
	add hl, hl                                       ; $7f28: $29
	add c                                            ; $7f29: $81
	ret nz                                           ; $7f2a: $c0

	ld h, l                                          ; $7f2b: $65
	ld [bc], a                                       ; $7f2c: $02
	db $d3                                           ; $7f2d: $d3
	call nc, $c005                                   ; $7f2e: $d4 $05 $c0
	ld d, [hl]                                       ; $7f31: $56
	ret c                                            ; $7f32: $d8

	pop de                                           ; $7f33: $d1
	pop de                                           ; $7f34: $d1
	nop                                              ; $7f35: $00
	dec b                                            ; $7f36: $05
	ret nz                                           ; $7f37: $c0

	ld d, [hl]                                       ; $7f38: $56
	ret c                                            ; $7f39: $d8

	pop de                                           ; $7f3a: $d1
	ret nc                                           ; $7f3b: $d0

	push hl                                          ; $7f3c: $e5
	daa                                              ; $7f3d: $27
	nop                                              ; $7f3e: $00
	nop                                              ; $7f3f: $00
	jr z, @+$08                                      ; $7f40: $28 $06

	ret nz                                           ; $7f42: $c0

	ld bc, $09a0                                     ; $7f43: $01 $a0 $09
	ld bc, $5648                                     ; $7f46: $01 $48 $56
	ld bc, $094f                                     ; $7f49: $01 $4f $09
	inc d                                            ; $7f4c: $14
	ret nz                                           ; $7f4d: $c0

	ld bc, $09a0                                     ; $7f4e: $01 $a0 $09
	ld bc, $d051                                     ; $7f51: $01 $51 $d0
	adc e                                            ; $7f54: $8b
	and b                                            ; $7f55: $a0
	ld bc, $82b0                                     ; $7f56: $01 $b0 $82
	ret nc                                           ; $7f59: $d0

	add e                                            ; $7f5a: $83
	ld bc, $d0de                                     ; $7f5b: $01 $de $d0
	db $e4                                           ; $7f5e: $e4
	nop                                              ; $7f5f: $00
	ld b, b                                          ; $7f60: $40
	ld bc, $0957                                     ; $7f61: $01 $57 $09
	inc d                                            ; $7f64: $14
	ret nz                                           ; $7f65: $c0

	ld bc, $09a0                                     ; $7f66: $01 $a0 $09
	ld bc, $d051                                     ; $7f69: $01 $51 $d0
	adc e                                            ; $7f6c: $8b
	and b                                            ; $7f6d: $a0
	ld bc, $83b0                                     ; $7f6e: $01 $b0 $83
	ret nc                                           ; $7f71: $d0

	add e                                            ; $7f72: $83
	ld bc, $d1de                                     ; $7f73: $01 $de $d1
	db $e4                                           ; $7f76: $e4
	nop                                              ; $7f77: $00
	sub $01                                          ; $7f78: $d6 $01
	ld e, c                                          ; $7f7a: $59
	add hl, bc                                       ; $7f7b: $09
	ld [hl+], a                                      ; $7f7c: $22
	pop hl                                           ; $7f7d: $e1
	ld [bc], a                                       ; $7f7e: $02
	inc bc                                           ; $7f7f: $03
	rra                                              ; $7f80: $1f
	ret nz                                           ; $7f81: $c0

	ld bc, $09a0                                     ; $7f82: $01 $a0 $09
	ld bc, $c05b                                     ; $7f85: $01 $5b $c0
	ld bc, $01a0                                     ; $7f88: $01 $a0 $01
	ld bc, $d064                                     ; $7f8b: $01 $64 $d0
	adc e                                            ; $7f8e: $8b
	and b                                            ; $7f8f: $a0
	ld bc, $84b0                                     ; $7f90: $01 $b0 $84
	pop hl                                           ; $7f93: $e1
	ld [bc], a                                       ; $7f94: $02
	inc b                                            ; $7f95: $04
	ld [hl-], a                                      ; $7f96: $32
	ret nc                                           ; $7f97: $d0

	add e                                            ; $7f98: $83
	ld bc, $d2de                                     ; $7f99: $01 $de $d2
	db $e4                                           ; $7f9c: $e4
	ld bc, $096d                                     ; $7f9d: $01 $6d $09
	inc e                                            ; $7fa0: $1c
	pop bc                                           ; $7fa1: $c1
	ld e, c                                          ; $7fa2: $59
	db $e3                                           ; $7fa3: $e3
	nop                                              ; $7fa4: $00
	and b                                            ; $7fa5: $a0
	ret nz                                           ; $7fa6: $c0

	add hl, bc                                       ; $7fa7: $09
	db $e3                                           ; $7fa8: $e3
	nop                                              ; $7fa9: $00
	inc e                                            ; $7faa: $1c
	and b                                            ; $7fab: $a0
	add b                                            ; $7fac: $80
	and b                                            ; $7fad: $a0
	dec c                                            ; $7fae: $0d
	nop                                              ; $7faf: $00
	inc bc                                           ; $7fb0: $03
	db $e4                                           ; $7fb1: $e4
	nop                                              ; $7fb2: $00
	dec bc                                           ; $7fb3: $0b
	rst $38                                          ; $7fb4: $ff
	rlca                                             ; $7fb5: $07
	ld b, b                                          ; $7fb6: $40
	add b                                            ; $7fb7: $80
	and b                                            ; $7fb8: $a0
	dec c                                            ; $7fb9: $0d
	db $e4                                           ; $7fba: $e4
	nop                                              ; $7fbb: $00
	ld c, d                                          ; $7fbc: $4a
	jr z, @+$08                                      ; $7fbd: $28 $06

	ret nz                                           ; $7fbf: $c0

	ld bc, $09a0                                     ; $7fc0: $01 $a0 $09
	ld bc, $3f6c                                     ; $7fc3: $01 $6c $3f
	ld bc, $0972                                     ; $7fc6: $01 $72 $09
	ld de, $02e1                                     ; $7fc9: $11 $e1 $02
	inc bc                                           ; $7fcc: $03
	rrca                                             ; $7fcd: $0f
	ret nz                                           ; $7fce: $c0

	ld bc, $09a0                                     ; $7fcf: $01 $a0 $09
	ld bc, $e179                                     ; $7fd2: $01 $79 $e1
	ld [bc], a                                       ; $7fd5: $02
	inc b                                            ; $7fd6: $04
	ld c, $e4                                        ; $7fd7: $0e $e4
	ld bc, $0122                                     ; $7fd9: $01 $22 $01
	add d                                            ; $7fdc: $82
	add hl, bc                                       ; $7fdd: $09
	ld de, $02e1                                     ; $7fde: $11 $e1 $02
	inc bc                                           ; $7fe1: $03
	rra                                              ; $7fe2: $1f
	ret nz                                           ; $7fe3: $c0

	ld bc, $09a0                                     ; $7fe4: $01 $a0 $09
	ld bc, $e184                                     ; $7fe7: $01 $84 $e1
	ld [bc], a                                       ; $7fea: $02
	inc b                                            ; $7feb: $04
	ld [hl-], a                                      ; $7fec: $32
	db $e4                                           ; $7fed: $e4
	ld bc, $010d                                     ; $7fee: $01 $0d $01
	adc h                                            ; $7ff1: $8c
	add hl, bc                                       ; $7ff2: $09
	ld de, $02e1                                     ; $7ff3: $11 $e1 $02
	inc bc                                           ; $7ff6: $03
	rla                                              ; $7ff7: $17
	ret nz                                           ; $7ff8: $c0

	ld bc, $09a0                                     ; $7ff9: $01 $a0 $09
	ld bc, $e192                                     ; $7ffc: $01 $92 $e1
	ld [bc], a                                       ; $7fff: $02
