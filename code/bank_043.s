; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $043", ROMX[$4000], BANK[$43]

	ld b, a                                          ; $4000: $47
	ld a, a                                          ; $4001: $7f
	ld e, a                                          ; $4002: $5f
	ld d, e                                          ; $4003: $53
	ld b, e                                          ; $4004: $43
	ld [bc], a                                       ; $4005: $02
	ld b, d                                          ; $4006: $42

Jump_043_4007:
	ld hl, sp-$48                                    ; $4007: $f8 $b8
	ei                                               ; $4009: $fb
	add b                                            ; $400a: $80
	jp hl                                            ; $400b: $e9


	add a                                            ; $400c: $87
	jr @+$12                                         ; $400d: $18 $10

	ld bc, $1479                                     ; $400f: $01 $79 $14
	add b                                            ; $4012: $80
	ld d, $70                                        ; $4013: $16 $70
	add c                                            ; $4015: $81
	nop                                              ; $4016: $00
	sub b                                            ; $4017: $90
	add b                                            ; $4018: $80
	ld [$ba00], sp                                   ; $4019: $08 $00 $ba
	cp c                                             ; $401c: $b9
	or b                                             ; $401d: $b0
	add sp, $4b                                      ; $401e: $e8 $4b
	ld h, a                                          ; $4020: $67
	ld h, c                                          ; $4021: $61
	add c                                            ; $4022: $81
	ld b, l                                          ; $4023: $45
	ld b, [hl]                                       ; $4024: $46
	ld c, b                                          ; $4025: $48
	db $10                                           ; $4026: $10
	or b                                             ; $4027: $b0
	sbc b                                            ; $4028: $98
	db $10                                           ; $4029: $10
	add l                                            ; $402a: $85
	ld h, b                                          ; $402b: $60
	ld b, b                                          ; $402c: $40
	ret z                                            ; $402d: $c8

	and h                                            ; $402e: $a4
	sub d                                            ; $402f: $92
	ld l, d                                          ; $4030: $6a
	jp c, $2c8a                                      ; $4031: $da $8a $2c

	ccf                                              ; $4034: $3f
	rlca                                             ; $4035: $07
	inc bc                                           ; $4036: $03
	ld bc, $0191                                     ; $4037: $01 $91 $01
	ld bc, $4003                                     ; $403a: $01 $03 $40
	ld b, b                                          ; $403d: $40
	nop                                              ; $403e: $00
	ld c, b                                          ; $403f: $48
	sub h                                            ; $4040: $94
	rlca                                             ; $4041: $07
	ld a, a                                          ; $4042: $7f
	db $fd                                           ; $4043: $fd
	cp a                                             ; $4044: $bf
	sbc $ff                                          ; $4045: $de $ff
	adc e                                            ; $4047: $8b
	ld a, a                                          ; $4048: $7f
	ld hl, sp-$79                                    ; $4049: $f8 $87
	ld a, e                                          ; $404b: $7b
	rlca                                             ; $404c: $07
	ld d, d                                          ; $404d: $52
	dec hl                                           ; $404e: $2b
	ld d, d                                          ; $404f: $52
	ld c, $fe                                        ; $4050: $0e $fe
	ei                                               ; $4052: $fb
	db $db                                           ; $4053: $db
	cp $ff                                           ; $4054: $fe $ff
	cp $ff                                           ; $4056: $fe $ff
	di                                               ; $4058: $f3
	rrca                                             ; $4059: $0f
	or $36                                           ; $405a: $f6 $36
	ld a, d                                          ; $405c: $7a
	daa                                              ; $405d: $27
	sbc [hl]                                         ; $405e: $9e
	rla                                              ; $405f: $17
	ld a, c                                          ; $4060: $79
	inc sp                                           ; $4061: $33
	ld a, c                                          ; $4062: $79
	ret z                                            ; $4063: $c8

	sbc l                                            ; $4064: $9d
	nop                                              ; $4065: $00
	add sp, $75                                      ; $4066: $e8 $75
	adc h                                            ; $4068: $8c
	halt                                             ; $4069: $76
	rla                                              ; $406a: $17
	sbc e                                            ; $406b: $9b
	and b                                            ; $406c: $a0
	add hl, bc                                       ; $406d: $09
	rst $38                                          ; $406e: $ff
	ld h, e                                          ; $406f: $63
	db $fd                                           ; $4070: $fd
	ld a, a                                          ; $4071: $7f
	push bc                                          ; $4072: $c5
	ld a, e                                          ; $4073: $7b
	ldh a, [$7c]                                     ; $4074: $f0 $7c
	ld b, [hl]                                       ; $4076: $46
	sbc c                                            ; $4077: $99
	rst $38                                          ; $4078: $ff
	ccf                                              ; $4079: $3f
	adc a                                            ; $407a: $8f
	rst $38                                          ; $407b: $ff
	jr jr_043_407e                                   ; $407c: $18 $00

jr_043_407e:
	ld l, b                                          ; $407e: $68
	ld l, e                                          ; $407f: $6b
	ld a, [hl]                                       ; $4080: $7e
	ld a, h                                          ; $4081: $7c
	sbc [hl]                                         ; $4082: $9e

Call_043_4083:
	ld l, a                                          ; $4083: $6f
	db $dd                                           ; $4084: $dd
	rst $38                                          ; $4085: $ff
	ld a, h                                          ; $4086: $7c
	sub b                                            ; $4087: $90
	sbc [hl]                                         ; $4088: $9e
	add sp, $73                                      ; $4089: $e8 $73
	ldh a, [$9e]                                     ; $408b: $f0 $9e
	and $75                                          ; $408d: $e6 $75
	ld [$3d7d], sp                                   ; $408f: $08 $7d $3d
	sbc l                                            ; $4092: $9d
	rst $38                                          ; $4093: $ff
	ld h, $fe                                        ; $4094: $26 $fe
	sbc h                                            ; $4096: $9c
	ld bc, $1020                                     ; $4097: $01 $20 $10
	ld a, e                                          ; $409a: $7b
	ldh [$7f], a                                     ; $409b: $e0 $7f

Call_043_409d:
	rst AddAOntoHL                                          ; $409d: $ef
	ld a, c                                          ; $409e: $79
	db $e4                                           ; $409f: $e4
	sbc l                                            ; $40a0: $9d
	rst $38                                          ; $40a1: $ff
	db $dd                                           ; $40a2: $dd
	ei                                               ; $40a3: $fb
	sbc l                                            ; $40a4: $9d
	rst $38                                          ; $40a5: $ff
	inc sp                                           ; $40a6: $33
	ld a, e                                          ; $40a7: $7b
	db $fc                                           ; $40a8: $fc
	ld a, b                                          ; $40a9: $78
	or c                                             ; $40aa: $b1
	sbc l                                            ; $40ab: $9d
	rst $38                                          ; $40ac: $ff
	ld de, $dffe                                     ; $40ad: $11 $fe $df
	ccf                                              ; $40b0: $3f
	ld a, b                                          ; $40b1: $78
	or d                                             ; $40b2: $b2
	add b                                            ; $40b3: $80
	ld [$f101], sp                                   ; $40b4: $08 $01 $f1
	inc bc                                           ; $40b7: $03
	inc bc                                           ; $40b8: $03
	and a                                            ; $40b9: $a7
	add $48                                          ; $40ba: $c6 $48
	nop                                              ; $40bc: $00
	nop                                              ; $40bd: $00
	inc bc                                           ; $40be: $03
	di                                               ; $40bf: $f3
	rst SubAFromBC                                          ; $40c0: $e7
	ld h, l                                          ; $40c1: $65
	ret                                              ; $40c2: $c9


	adc a                                            ; $40c3: $8f
	nop                                              ; $40c4: $00
	ret nz                                           ; $40c5: $c0

	add c                                            ; $40c6: $81
	sbc b                                            ; $40c7: $98
	rst $38                                          ; $40c8: $ff
	ret nz                                           ; $40c9: $c0

	ccf                                              ; $40ca: $3f
	ldh a, [rP1]                                     ; $40cb: $f0 $00
	ret nz                                           ; $40cd: $c0

	cp $e0                                           ; $40ce: $fe $e0
	rst $38                                          ; $40d0: $ff
	rst $38                                          ; $40d1: $ff
	ret nz                                           ; $40d2: $c0

	ld [hl], a                                       ; $40d3: $77
	call z, $fe73                                    ; $40d4: $cc $73 $fe
	ld l, e                                          ; $40d7: $6b
	sub d                                            ; $40d8: $92
	daa                                              ; $40d9: $27
	ldh a, [$9e]                                     ; $40da: $f0 $9e
	cpl                                              ; $40dc: $2f
	ld e, a                                          ; $40dd: $5f
	ldh a, [hDisp1_SCX]                                     ; $40de: $f0 $91
	and $37                                          ; $40e0: $e6 $37
	di                                               ; $40e2: $f3
	ld h, e                                          ; $40e3: $63
	db $e3                                           ; $40e4: $e3
	sub e                                            ; $40e5: $93
	nop                                              ; $40e6: $00
	nop                                              ; $40e7: $00
	ld [bc], a                                       ; $40e8: $02
	inc bc                                           ; $40e9: $03
	db $e3                                           ; $40ea: $e3
	di                                               ; $40eb: $f3
	inc sp                                           ; $40ec: $33
	ld de, $917b                                     ; $40ed: $11 $7b $91
	sbc d                                            ; $40f0: $9a
	ld l, a                                          ; $40f1: $6f
	cp a                                             ; $40f2: $bf
	ldh a, [$7f]                                     ; $40f3: $f0 $7f
	sbc b                                            ; $40f5: $98
	ld a, e                                          ; $40f6: $7b
	sub c                                            ; $40f7: $91
	sbc [hl]                                         ; $40f8: $9e
	db $10                                           ; $40f9: $10
	ld [hl], h                                       ; $40fa: $74
	jp c, Jump_043_6b7d                              ; $40fb: $da $7d $6b

	sbc c                                            ; $40fe: $99
	di                                               ; $40ff: $f3
	add c                                            ; $4100: $81
	rst $38                                          ; $4101: $ff
	ld bc, $8cff                                     ; $4102: $01 $ff $8c
	ld a, c                                          ; $4105: $79
	ld h, d                                          ; $4106: $62
	ld l, a                                          ; $4107: $6f
	adc $de                                          ; $4108: $ce $de
	ld a, a                                          ; $410a: $7f
	ld a, l                                          ; $410b: $7d
	ret nc                                           ; $410c: $d0

	sbc [hl]                                         ; $410d: $9e
	rst $38                                          ; $410e: $ff
	ld a, d                                          ; $410f: $7a
	ld [hl], e                                       ; $4110: $73
	ld a, [hl]                                       ; $4111: $7e
	and h                                            ; $4112: $a4
	ld [hl], e                                       ; $4113: $73
	ldh a, [$df]                                     ; $4114: $f0 $df
	rst $38                                          ; $4116: $ff
	sbc d                                            ; $4117: $9a
	db $fc                                           ; $4118: $fc
	rst JumpTable                                          ; $4119: $c7
	rst $38                                          ; $411a: $ff
	rst $38                                          ; $411b: $ff

jr_043_411c:
	jr c, jr_043_411c                                ; $411c: $38 $fe

	ld a, [hl]                                       ; $411e: $7e
	inc hl                                           ; $411f: $23
	ld a, a                                          ; $4120: $7f
	di                                               ; $4121: $f3
	sbc [hl]                                         ; $4122: $9e
	rst SubAFromDE                                          ; $4123: $df
	ld a, e                                          ; $4124: $7b
	ldh a, [$9a]                                     ; $4125: $f0 $9a
	cp b                                             ; $4127: $b8
	rst $38                                          ; $4128: $ff
	db $ed                                           ; $4129: $ed
	rst $38                                          ; $412a: $ff
	adc e                                            ; $412b: $8b
	cp $9c                                           ; $412c: $fe $9c
	rst JumpTable                                          ; $412e: $c7
	nop                                              ; $412f: $00
	ld [de], a                                       ; $4130: $12
	ld [hl], a                                       ; $4131: $77
	ldh [$9b], a                                     ; $4132: $e0 $9b
	db $fc                                           ; $4134: $fc
	dec e                                            ; $4135: $1d
	rst $38                                          ; $4136: $ff
	ld b, b                                          ; $4137: $40
	ld a, c                                          ; $4138: $79
	xor [hl]                                         ; $4139: $ae
	ld a, a                                          ; $413a: $7f
	pop hl                                           ; $413b: $e1
	sbc l                                            ; $413c: $9d
	ldh [c], a                                       ; $413d: $e2
	nop                                              ; $413e: $00
	ld a, d                                          ; $413f: $7a
	cp e                                             ; $4140: $bb
	ld a, l                                          ; $4141: $7d
	sbc h                                            ; $4142: $9c
	ld a, a                                          ; $4143: $7f
	rst AddAOntoHL                                          ; $4144: $ef
	ld a, a                                          ; $4145: $7f
	db $fd                                           ; $4146: $fd
	sbc c                                            ; $4147: $99
	rst $38                                          ; $4148: $ff
	or $00                                           ; $4149: $f6 $00
	nop                                              ; $414b: $00
	jr jr_043_414e                                   ; $414c: $18 $00

jr_043_414e:
	ld a, e                                          ; $414e: $7b
	ldh [$9a], a                                     ; $414f: $e0 $9a
	ld c, a                                          ; $4151: $4f
	ld b, h                                          ; $4152: $44
	ld a, [hl]                                       ; $4153: $7e
	ld [hl], a                                       ; $4154: $77
	ld a, [hl]                                       ; $4155: $7e
	db $dd                                           ; $4156: $dd
	ld a, a                                          ; $4157: $7f
	reti                                             ; $4158: $d9


	call nz, $2597                                   ; $4159: $c4 $97 $25
	db $fd                                           ; $415c: $fd
	cp l                                             ; $415d: $bd
	db $fd                                           ; $415e: $fd
	cp l                                             ; $415f: $bd
	cp a                                             ; $4160: $bf
	cp l                                             ; $4161: $bd
	cp a                                             ; $4162: $bf
	call c, $9863                                    ; $4163: $dc $63 $98
	ld h, c                                          ; $4166: $61
	ld h, e                                          ; $4167: $63
	ld h, c                                          ; $4168: $61
	ld [$ef6a], sp                                   ; $4169: $08 $6a $ef
	ld a, e                                          ; $416c: $7b
	db $dd                                           ; $416d: $dd
	rst $38                                          ; $416e: $ff
	rst SubAFromDE                                          ; $416f: $df
	add hl, de                                       ; $4170: $19
	sbc [hl]                                         ; $4171: $9e
	jr @-$22                                         ; $4172: $18 $dc

	ld [$fcd9], sp                                   ; $4174: $08 $d9 $fc
	reti                                             ; $4177: $d9


	add [hl]                                         ; $4178: $86
	ld a, a                                          ; $4179: $7f
	ld [hl], e                                       ; $417a: $73
	sub b                                            ; $417b: $90
	cp e                                             ; $417c: $bb
	xor d                                            ; $417d: $aa
	cp d                                             ; $417e: $ba
	and d                                            ; $417f: $a2
	ldh [c], a                                       ; $4180: $e2
	and d                                            ; $4181: $a2
	ld [hl+], a                                      ; $4182: $22
	daa                                              ; $4183: $27
	ld h, a                                          ; $4184: $67
	ld [hl], a                                       ; $4185: $77
	ld h, a                                          ; $4186: $67
	ld a, a                                          ; $4187: $7f

Call_043_4188:
	ccf                                              ; $4188: $3f
	ld a, a                                          ; $4189: $7f
	ld [hl+], a                                      ; $418a: $22
	ld a, e                                          ; $418b: $7b
	scf                                              ; $418c: $37
	add b                                            ; $418d: $80
	add d                                            ; $418e: $82
	adc $ce                                          ; $418f: $ce $ce
	add d                                            ; $4191: $82
	ld de, rIE                                     ; $4192: $11 $ff $ff
	db $fd                                           ; $4195: $fd
	ld a, l                                          ; $4196: $7d
	ld sp, $7d31                                     ; $4197: $31 $31 $7d
	db $dd                                           ; $419a: $dd
	ld d, c                                          ; $419b: $51
	ld d, e                                          ; $419c: $53
	inc de                                           ; $419d: $13
	sub a                                            ; $419e: $97
	sub [hl]                                         ; $419f: $96
	ld e, $dc                                        ; $41a0: $1e $dc
	inc sp                                           ; $41a2: $33
	cp a                                             ; $41a3: $bf
	cp a                                             ; $41a4: $bf
	rst $38                                          ; $41a5: $ff
	ld a, [hl]                                       ; $41a6: $7e
	ld a, [hl]                                       ; $41a7: $7e
	db $fc                                           ; $41a8: $fc
	inc a                                            ; $41a9: $3c
	sub a                                            ; $41aa: $97
	adc [hl]                                         ; $41ab: $8e
	sbc b                                            ; $41ac: $98
	adc [hl]                                         ; $41ad: $8e
	add hl, bc                                       ; $41ae: $09
	cpl                                              ; $41af: $2f
	inc e                                            ; $41b0: $1c
	ld [hl], b                                       ; $41b1: $70
	and a                                            ; $41b2: $a7
	adc a                                            ; $41b3: $8f
	sub a                                            ; $41b4: $97
	rla                                              ; $41b5: $17
	ld [hl], $3f                                     ; $41b6: $36 $3f
	ld l, a                                          ; $41b8: $6f
	ld c, a                                          ; $41b9: $4f
	ld e, b                                          ; $41ba: $58
	rst $38                                          ; $41bb: $ff
	nop                                              ; $41bc: $00
	rra                                              ; $41bd: $1f
	ldh [$7b], a                                     ; $41be: $e0 $7b
	ld e, e                                          ; $41c0: $5b
	sbc l                                            ; $41c1: $9d
	add b                                            ; $41c2: $80
	rst $38                                          ; $41c3: $ff
	ld a, c                                          ; $41c4: $79
	ret nc                                           ; $41c5: $d0

	ld [hl], d                                       ; $41c6: $72
	add d                                            ; $41c7: $82
	ld h, a                                          ; $41c8: $67
	cp $77                                           ; $41c9: $fe $77
	db $f4                                           ; $41cb: $f4
	ld e, a                                          ; $41cc: $5f
	ldh a, [$9e]                                     ; $41cd: $f0 $9e
	inc bc                                           ; $41cf: $03
	ld e, e                                          ; $41d0: $5b
	ldh a, [$7d]                                     ; $41d1: $f0 $7d
	ld b, [hl]                                       ; $41d3: $46
	ld a, a                                          ; $41d4: $7f
	db $fc                                           ; $41d5: $fc
	ld a, d                                          ; $41d6: $7a
	halt                                             ; $41d7: $76
	ld l, a                                          ; $41d8: $6f
	ldh a, [$80]                                     ; $41d9: $f0 $80
	di                                               ; $41db: $f3
	dec de                                           ; $41dc: $1b
	db $eb                                           ; $41dd: $eb
	ld b, e                                          ; $41de: $43
	ldh a, [$71]                                     ; $41df: $f0 $71
	pop af                                           ; $41e1: $f1
	sub c                                            ; $41e2: $91
	pop af                                           ; $41e3: $f1
	pop af                                           ; $41e4: $f1
	ld de, $f909                                     ; $41e5: $11 $09 $f9
	ld hl, sp+$08                                    ; $41e8: $f8 $08
	ld [$95c2], sp                                   ; $41ea: $08 $c2 $95
	ld d, $93                                        ; $41ed: $16 $93
	or l                                             ; $41ef: $b5
	jp nc, wTaskParam0_word0+1                                     ; $41f0: $d2 $b1 $d0

	cp h                                             ; $41f3: $bc
	ld a, d                                          ; $41f4: $7a
	ld sp, hl                                        ; $41f5: $f9
	db $fc                                           ; $41f6: $fc
	jp c, $debd                                      ; $41f7: $da $bd $de

	sub [hl]                                         ; $41fa: $96
	cp a                                             ; $41fb: $bf
	add h                                            ; $41fc: $84
	db $f4                                           ; $41fd: $f4
	sub h                                            ; $41fe: $94
	call nz, $b7e7                                   ; $41ff: $c4 $e7 $b7
	sub a                                            ; $4202: $97

jr_043_4203:
	adc a                                            ; $4203: $8f
	db $dd                                           ; $4204: $dd
	adc b                                            ; $4205: $88
	adc [hl]                                         ; $4206: $8e

jr_043_4207:
	ret z                                            ; $4207: $c8

	add sp, -$08                                     ; $4208: $e8 $f8
	ld hl, sp+$24                                    ; $420a: $f8 $24
	halt                                             ; $420c: $76
	or $f6                                           ; $420d: $f6 $f6
	db $fc                                           ; $420f: $fc
	cp h                                             ; $4210: $bc
	db $fc                                           ; $4211: $fc
	cp h                                             ; $4212: $bc
	jr nz, @+$22                                     ; $4213: $20 $20

	inc h                                            ; $4215: $24
	jr nz, jr_043_4238                               ; $4216: $20 $20

	sbc $60                                          ; $4218: $de $60
	sbc d                                            ; $421a: $9a
	ld d, e                                          ; $421b: $53
	ld d, [hl]                                       ; $421c: $56
	sub $56                                          ; $421d: $d6 $56
	rst SubAFromHL                                          ; $421f: $d7
	sbc $d4                                          ; $4220: $de $d4
	sbc [hl]                                         ; $4222: $9e
	jr jr_043_4203                                   ; $4223: $18 $de

	add hl, de                                       ; $4225: $19
	sbc [hl]                                         ; $4226: $9e
	jr jr_043_4207                                   ; $4227: $18 $de

	dec de                                           ; $4229: $1b
	sbc d                                            ; $422a: $9a
	adc e                                            ; $422b: $8b
	rst AddAOntoHL                                          ; $422c: $ef
	rst $38                                          ; $422d: $ff
	rst AddAOntoHL                                          ; $422e: $ef
	rst AddAOntoHL                                          ; $422f: $ef
	sbc $af                                          ; $4230: $de $af
	sbc [hl]                                         ; $4232: $9e
	add e                                            ; $4233: $83
	jp c, $9e81                                      ; $4234: $da $81 $9e

	ld b, l                                          ; $4237: $45

jr_043_4238:
	sbc $fd                                          ; $4238: $de $fd
	rst SubAFromDE                                          ; $423a: $df
	rst AddAOntoHL                                          ; $423b: $ef
	sbc l                                            ; $423c: $9d
	db $ed                                           ; $423d: $ed
	db $dd                                           ; $423e: $dd
	reti                                             ; $423f: $d9


	inc b                                            ; $4240: $04
	sbc l                                            ; $4241: $9d
	rst FarCall                                          ; $4242: $f7
	rst $38                                          ; $4243: $ff
	db $dd                                           ; $4244: $dd
	or h                                             ; $4245: $b4
	rst SubAFromDE                                          ; $4246: $df
	db $f4                                           ; $4247: $f4
	reti                                             ; $4248: $d9


	ld b, [hl]                                       ; $4249: $46
	sub l                                            ; $424a: $95
	ld [hl], a                                       ; $424b: $77
	ld d, l                                          ; $424c: $55
	ld l, [hl]                                       ; $424d: $6e
	ld h, [hl]                                       ; $424e: $66
	rst $38                                          ; $424f: $ff
	cp $00                                           ; $4250: $fe $00
	rst $38                                          ; $4252: $ff
	call nz, Call_043_73ee                           ; $4253: $c4 $ee $73
	ld l, a                                          ; $4256: $6f
	sub l                                            ; $4257: $95
	rst $38                                          ; $4258: $ff
	cp a                                             ; $4259: $bf
	ld hl, $3373                                     ; $425a: $21 $73 $33
	rst $38                                          ; $425d: $ff
	dec e                                            ; $425e: $1d
	nop                                              ; $425f: $00
	rst $38                                          ; $4260: $ff
	ld h, c                                          ; $4261: $61
	ld [hl], a                                       ; $4262: $77
	ld h, e                                          ; $4263: $63
	ld a, l                                          ; $4264: $7d
	ld e, l                                          ; $4265: $5d
	rst SubAFromDE                                          ; $4266: $df
	rst $38                                          ; $4267: $ff
	sbc e                                            ; $4268: $9b
	ld c, e                                          ; $4269: $4b
	cp c                                             ; $426a: $b9
	rlca                                             ; $426b: $07
	rst GetHLinHL                                          ; $426c: $cf
	ld a, e                                          ; $426d: $7b
	ld c, a                                          ; $426e: $4f
	sbc l                                            ; $426f: $9d
	ld [$76bc], sp                                   ; $4270: $08 $bc $76
	inc de                                           ; $4273: $13
	ld a, d                                          ; $4274: $7a
	ld d, e                                          ; $4275: $53
	ld a, [hl]                                       ; $4276: $7e
	add $9e                                          ; $4277: $c6 $9e
	jr c, jr_043_42f1                                ; $4279: $38 $76

	ld l, d                                          ; $427b: $6a
	rst SubAFromDE                                          ; $427c: $df
	add [hl]                                         ; $427d: $86
	ld a, a                                          ; $427e: $7f
	bit 6, a                                         ; $427f: $cb $77
	ldh a, [hDisp1_SCX]                                     ; $4281: $f0 $91
	db $eb                                           ; $4283: $eb
	ld a, [hl+]                                      ; $4284: $2a
	and $62                                          ; $4285: $e6 $62
	or a                                             ; $4287: $b7
	ret nc                                           ; $4288: $d0

	nop                                              ; $4289: $00
	rst $38                                          ; $428a: $ff
	ccf                                              ; $428b: $3f
	ld a, a                                          ; $428c: $7f
	ld a, a                                          ; $428d: $7f
	ccf                                              ; $428e: $3f
	ld c, b                                          ; $428f: $48
	cpl                                              ; $4290: $2f
	ld a, e                                          ; $4291: $7b
	and $9a                                          ; $4292: $e6 $9a
	add b                                            ; $4294: $80
	add hl, de                                       ; $4295: $19

Call_043_4296:
	nop                                              ; $4296: $00
	ld h, $bd                                        ; $4297: $26 $bd
	ld [hl], l                                       ; $4299: $75
	inc de                                           ; $429a: $13
	ld a, e                                          ; $429b: $7b
	db $f4                                           ; $429c: $f4
	sbc [hl]                                         ; $429d: $9e
	ld a, [hl]                                       ; $429e: $7e
	ld a, d                                          ; $429f: $7a
	ld b, d                                          ; $42a0: $42
	add h                                            ; $42a1: $84
	reti                                             ; $42a2: $d9


	add hl, sp                                       ; $42a3: $39
	ld de, $6311                                     ; $42a4: $11 $11 $63
	and l                                            ; $42a7: $a5
	push bc                                          ; $42a8: $c5
	jr jr_043_42e3                                   ; $42a9: $18 $38

	pop af                                           ; $42ab: $f1
	pop af                                           ; $42ac: $f1
	inc sp                                           ; $42ad: $33
	ldh [c], a                                       ; $42ae: $e2
	ld b, d                                          ; $42af: $42
	add a                                            ; $42b0: $87
	ccf                                              ; $42b1: $3f
	ldh a, [$c1]                                     ; $42b2: $f0 $c1
	sbc [hl]                                         ; $42b4: $9e
	rst $38                                          ; $42b5: $ff
	ret nz                                           ; $42b6: $c0

	rra                                              ; $42b7: $1f
	jr nc, @+$01                                     ; $42b8: $30 $ff

	cp a                                             ; $42ba: $bf
	ld a, $60                                        ; $42bb: $3e $60
	ld a, d                                          ; $42bd: $7a
	call z, $de7d                                    ; $42be: $cc $7d $de
	ld l, $d0                                        ; $42c1: $2e $d0
	rlca                                             ; $42c3: $07
	ldh a, [$62]                                     ; $42c4: $f0 $62
	or b                                             ; $42c6: $b0
	add b                                            ; $42c7: $80
	ld sp, hl                                        ; $42c8: $f9
	inc a                                            ; $42c9: $3c
	db $fc                                           ; $42ca: $fc
	call z, $0cfc                                    ; $42cb: $cc $fc $0c
	db $fc                                           ; $42ce: $fc
	add $f8                                          ; $42cf: $c6 $f8
	ld hl, sp+$18                                    ; $42d1: $f8 $18
	nop                                              ; $42d3: $00
	ld hl, sp-$08                                    ; $42d4: $f8 $f8
	nop                                              ; $42d6: $00
	nop                                              ; $42d7: $00
	or b                                             ; $42d8: $b0
	db $fd                                           ; $42d9: $fd
	rst $38                                          ; $42da: $ff
	cp $fd                                           ; $42db: $fe $fd
	rst AddAOntoHL                                          ; $42dd: $ef
	rst SubAFromDE                                          ; $42de: $df
	ret nz                                           ; $42df: $c0

	rst SubAFromDE                                          ; $42e0: $df
	cp a                                             ; $42e1: $bf
	rst $38                                          ; $42e2: $ff

jr_043_42e3:
	rst SubAFromDE                                          ; $42e3: $df
	ld e, d                                          ; $42e4: $5a
	ld e, [hl]                                       ; $42e5: $5e
	ld h, b                                          ; $42e6: $60
	adc h                                            ; $42e7: $8c
	ld a, a                                          ; $42e8: $7f
	ld [hl], a                                       ; $42e9: $77
	cp e                                             ; $42ea: $bb
	db $fd                                           ; $42eb: $fd
	ld a, $fe                                        ; $42ec: $3e $fe
	cp a                                             ; $42ee: $bf
	rst $38                                          ; $42ef: $ff
	rlca                                             ; $42f0: $07

jr_043_42f1:
	adc h                                            ; $42f1: $8c
	adc $ff                                          ; $42f2: $ce $ff
	pop bc                                           ; $42f4: $c1
	ld bc, $017f                                     ; $42f5: $01 $7f $01
	rst $38                                          ; $42f8: $ff
	db $fc                                           ; $42f9: $fc
	cp a                                             ; $42fa: $bf
	ld a, c                                          ; $42fb: $79
	ld a, l                                          ; $42fc: $7d
	sub d                                            ; $42fd: $92
	ld l, b                                          ; $42fe: $68
	ret nz                                           ; $42ff: $c0

	di                                               ; $4300: $f3
	ld h, b                                          ; $4301: $60
	ld [hl], b                                       ; $4302: $70
	db $fc                                           ; $4303: $fc
	nop                                              ; $4304: $00
	add b                                            ; $4305: $80
	ret nc                                           ; $4306: $d0

	nop                                              ; $4307: $00
	ldh a, [rAUD1LEN]                                ; $4308: $f0 $11
	db $10                                           ; $430a: $10
	ld a, e                                          ; $430b: $7b
	cp e                                             ; $430c: $bb
	ld a, a                                          ; $430d: $7f
	rst SubAFromBC                                          ; $430e: $e7
	ld a, h                                          ; $430f: $7c
	sbc a                                            ; $4310: $9f
	sbc l                                            ; $4311: $9d
	jr @+$41                                         ; $4312: $18 $3f

	cp $98                                           ; $4314: $fe $98
	ld a, a                                          ; $4316: $7f
	nop                                              ; $4317: $00
	rst AddAOntoHL                                          ; $4318: $ef
	rst AddAOntoHL                                          ; $4319: $ef
	rst $38                                          ; $431a: $ff
	nop                                              ; $431b: $00
	dec e                                            ; $431c: $1d
	ld a, b                                          ; $431d: $78
	or $df                                           ; $431e: $f6 $df
	add c                                            ; $4320: $81
	ld a, a                                          ; $4321: $7f
	ld hl, sp-$72                                    ; $4322: $f8 $8e
	ld [bc], a                                       ; $4324: $02
	rra                                              ; $4325: $1f
	rst $38                                          ; $4326: $ff
	nop                                              ; $4327: $00
	push de                                          ; $4328: $d5
	add $ff                                          ; $4329: $c6 $ff
	pop bc                                           ; $432b: $c1
	pop af                                           ; $432c: $f1
	ld h, e                                          ; $432d: $63
	ld [hl], c                                       ; $432e: $71
	rst $38                                          ; $432f: $ff
	ld c, h                                          ; $4330: $4c
	ld e, l                                          ; $4331: $5d
	rst $38                                          ; $4332: $ff
	nop                                              ; $4333: $00
	ld l, $7a                                        ; $4334: $2e $7a
	db $fc                                           ; $4336: $fc
	ld a, l                                          ; $4337: $7d
	db $db                                           ; $4338: $db
	sub e                                            ; $4339: $93
	rst $38                                          ; $433a: $ff
	ret nc                                           ; $433b: $d0

	rst $38                                          ; $433c: $ff
	add b                                            ; $433d: $80
	ld l, a                                          ; $433e: $6f
	rst $38                                          ; $433f: $ff
	adc $de                                          ; $4340: $ce $de
	rst $38                                          ; $4342: $ff
	nop                                              ; $4343: $00
	jr c, jr_043_43c5                                ; $4344: $38 $7f

	ld l, h                                          ; $4346: $6c
	add sp, -$01                                     ; $4347: $e8 $ff
	sbc l                                            ; $4349: $9d
	ld h, c                                          ; $434a: $61
	ld a, a                                          ; $434b: $7f
	ld l, h                                          ; $434c: $6c
	rst SubAFromDE                                          ; $434d: $df
	ei                                               ; $434e: $fb
	sbc h                                            ; $434f: $9c
	inc bc                                           ; $4350: $03
	dec bc                                           ; $4351: $0b
	ldh [$79], a                                     ; $4352: $e0 $79

jr_043_4354:
	jr nz, jr_043_4354                               ; $4354: $20 $fe

	sbc h                                            ; $4356: $9c
	db $f4                                           ; $4357: $f4
	nop                                              ; $4358: $00
	rra                                              ; $4359: $1f
	db $fd                                           ; $435a: $fd
	sbc e                                            ; $435b: $9b
	ret nz                                           ; $435c: $c0

	add d                                            ; $435d: $82
	rla                                              ; $435e: $17
	ld a, $fc                                        ; $435f: $3e $fc
	sbc l                                            ; $4361: $9d
	ld bc, $6f0f                                     ; $4362: $01 $0f $6f
	sbc $9d                                          ; $4365: $de $9d
	ldh [$80], a                                     ; $4367: $e0 $80
	ld l, a                                          ; $4369: $6f
	ret nc                                           ; $436a: $d0

	sbc [hl]                                         ; $436b: $9e
	sbc a                                            ; $436c: $9f
	ld l, h                                          ; $436d: $6c
	cp [hl]                                          ; $436e: $be
	ld a, e                                          ; $436f: $7b
	jp c, $e86b                                      ; $4370: $da $6b $e8

	ld l, e                                          ; $4373: $6b
	ldh a, [$64]                                     ; $4374: $f0 $64
	adc a                                            ; $4376: $8f
	ld a, e                                          ; $4377: $7b
	ld e, $92                                        ; $4378: $1e $92
	ld d, l                                          ; $437a: $55

jr_043_437b:
	ld d, a                                          ; $437b: $57
	ld d, h                                          ; $437c: $54
	ld e, e                                          ; $437d: $5b
	jr z, @+$01                                      ; $437e: $28 $ff

	nop                                              ; $4380: $00
	db $e3                                           ; $4381: $e3
	rrca                                             ; $4382: $0f
	dec bc                                           ; $4383: $0b
	rrca                                             ; $4384: $0f
	inc e                                            ; $4385: $1c
	jr nc, jr_043_43fe                               ; $4386: $30 $76

	ld e, a                                          ; $4388: $5f
	ld l, [hl]                                       ; $4389: $6e
	rst $38                                          ; $438a: $ff
	ld a, e                                          ; $438b: $7b
	add $6e                                          ; $438c: $c6 $6e
	ld [hl], b                                       ; $438e: $70
	ld l, e                                          ; $438f: $6b
	ldh a, [$9e]                                     ; $4390: $f0 $9e
	pop bc                                           ; $4392: $c1
	ld c, e                                          ; $4393: $4b
	ldh a, [rPCM12]                                  ; $4394: $f0 $76
	ld b, [hl]                                       ; $4396: $46
	ld d, a                                          ; $4397: $57
	ldh a, [$7e]                                     ; $4398: $f0 $7e
	add hl, bc                                       ; $439a: $09
	ld c, a                                          ; $439b: $4f
	ldh a, [$9e]                                     ; $439c: $f0 $9e
	ld hl, sp+$5f                                    ; $439e: $f8 $5f
	ldh a, [$7e]                                     ; $43a0: $f0 $7e
	or l                                             ; $43a2: $b5
	ld a, [hl]                                       ; $43a3: $7e
	ld [$f77f], a                                    ; $43a4: $ea $7f $f7
	sbc $fe                                          ; $43a7: $de $fe
	sbc l                                            ; $43a9: $9d
	ld [bc], a                                       ; $43aa: $02
	ld bc, $f073                                     ; $43ab: $01 $73 $f0
	sbc c                                            ; $43ae: $99
	cp $fa                                           ; $43af: $fe $fa
	and b                                            ; $43b1: $a0
	cp $00                                           ; $43b2: $fe $00
	ldh a, [$de]                                     ; $43b4: $f0 $de
	ld a, a                                          ; $43b6: $7f
	sbc l                                            ; $43b7: $9d
	ld a, h                                          ; $43b8: $7c
	ret nz                                           ; $43b9: $c0

	ld a, e                                          ; $43ba: $7b

jr_043_43bb:
	ldh a, [hDisp1_WY]                                     ; $43bb: $f0 $95
	db $fd                                           ; $43bd: $fd
	add sp, -$19                                     ; $43be: $e8 $e7
	nop                                              ; $43c0: $00
	ld bc, $70b0                                     ; $43c1: $01 $b0 $70
	ld [hl-], a                                      ; $43c4: $32

jr_043_43c5:
	cp $f0                                           ; $43c5: $fe $f0
	cp $9a                                           ; $43c7: $fe $9a
	jr nz, jr_043_43bb                               ; $43c9: $20 $f0

	rst $38                                          ; $43cb: $ff
	nop                                              ; $43cc: $00
	ld hl, $c87b                                     ; $43cd: $21 $7b $c8
	sbc h                                            ; $43d0: $9c

jr_043_43d1:
	jr nz, jr_043_43ea                               ; $43d1: $20 $17

	add hl, bc                                       ; $43d3: $09
	ld l, a                                          ; $43d4: $6f
	ld c, b                                          ; $43d5: $48
	sbc e                                            ; $43d6: $9b
	jr jr_043_43d1                                   ; $43d7: $18 $f8

	nop                                              ; $43d9: $00
	ld h, b                                          ; $43da: $60
	ld a, b                                          ; $43db: $78
	jr c, jr_043_437b                                ; $43dc: $38 $9d

	inc b                                            ; $43de: $04
	rst $38                                          ; $43df: $ff
	ld [hl], h                                       ; $43e0: $74
	inc sp                                           ; $43e1: $33
	ld l, a                                          ; $43e2: $6f
	nop                                              ; $43e3: $00
	sbc [hl]                                         ; $43e4: $9e
	ld e, e                                          ; $43e5: $5b
	cp $9c                                           ; $43e6: $fe $9c
	ld a, c                                          ; $43e8: $79
	rst $38                                          ; $43e9: $ff

jr_043_43ea:
	ld [$f063], sp                                   ; $43ea: $08 $63 $f0
	sbc l                                            ; $43ed: $9d
	rst $38                                          ; $43ee: $ff
	ld [bc], a                                       ; $43ef: $02
	ld a, e                                          ; $43f0: $7b
	jr z, @-$60                                      ; $43f1: $28 $9e

	db $fc                                           ; $43f3: $fc
	halt                                             ; $43f4: $76
	and e                                            ; $43f5: $a3
	ld [hl], e                                       ; $43f6: $73
	ldh a, [$99]                                     ; $43f7: $f0 $99
	dec bc                                           ; $43f9: $0b
	rst $38                                          ; $43fa: $ff
	ld b, c                                          ; $43fb: $41
	nop                                              ; $43fc: $00
	nop                                              ; $43fd: $00

jr_043_43fe:
	ccf                                              ; $43fe: $3f
	ld l, d                                          ; $43ff: $6a
	ld hl, sp+$7b                                    ; $4400: $f8 $7b
	ld a, [$517e]                                    ; $4402: $fa $7e $51
	sbc c                                            ; $4405: $99
	ld a, b                                          ; $4406: $78
	nop                                              ; $4407: $00
	rrca                                             ; $4408: $0f
	cp $0f                                           ; $4409: $fe $0f
	rst AddAOntoHL                                          ; $440b: $ef
	ld a, e                                          ; $440c: $7b
	jp c, $009d                                      ; $440d: $da $9d $00

	db $fc                                           ; $4410: $fc
	sbc $0c                                          ; $4411: $de $0c
	add b                                            ; $4413: $80
	ld b, b                                          ; $4414: $40
	ret nz                                           ; $4415: $c0

	ld c, a                                          ; $4416: $4f
	rrca                                             ; $4417: $0f
	ldh a, [$f3]                                     ; $4418: $f0 $f3
	db $e4                                           ; $441a: $e4
	ret nz                                           ; $441b: $c0

	and b                                            ; $441c: $a0

jr_043_441d:
	jr nz, jr_043_442e                               ; $441d: $20 $0f

	ld [$0010], sp                                   ; $441f: $08 $10 $00
	db $10                                           ; $4422: $10
	jr nc, jr_043_4456                               ; $4423: $30 $31

	ld [hl+], a                                      ; $4425: $22
	inc b                                            ; $4426: $04
	ret c                                            ; $4427: $d8

	jr nc, jr_043_441d                               ; $4428: $30 $f3

	rra                                              ; $442a: $1f
	ld a, [hl]                                       ; $442b: $7e
	ld a, $3f                                        ; $442c: $3e $3f

jr_043_442e:
	rst $38                                          ; $442e: $ff
	ccf                                              ; $442f: $3f
	ccf                                              ; $4430: $3f
	rrca                                             ; $4431: $0f
	rrca                                             ; $4432: $0f
	add b                                            ; $4433: $80
	db $fc                                           ; $4434: $fc

jr_043_4435:
	add b                                            ; $4435: $80
	inc e                                            ; $4436: $1c
	jp $f39e                                         ; $4437: $c3 $9e $f3


	pop bc                                           ; $443a: $c1
	ld b, [hl]                                       ; $443b: $46
	cp h                                             ; $443c: $bc
	ld a, a                                          ; $443d: $7f
	ldh [rTAC], a                                    ; $443e: $e0 $07
	inc e                                            ; $4440: $1c
	db $fc                                           ; $4441: $fc
	rst $38                                          ; $4442: $ff
	cp a                                             ; $4443: $bf

Call_043_4444:
	ld a, b                                          ; $4444: $78
	nop                                              ; $4445: $00
	nop                                              ; $4446: $00
	ld c, [hl]                                       ; $4447: $4e
	ld e, l                                          ; $4448: $5d
	ld [hl], l                                       ; $4449: $75
	rst JumpTable                                          ; $444a: $c7
	rra                                              ; $444b: $1f
	ld a, h                                          ; $444c: $7c
	rst $38                                          ; $444d: $ff
	nop                                              ; $444e: $00
	cp a                                             ; $444f: $bf
	jr c, jr_043_4435                                ; $4450: $38 $e3

	adc a                                            ; $4452: $8f
	sub b                                            ; $4453: $90
	ld a, $f8                                        ; $4454: $3e $f8

jr_043_4456:
	ld a, a                                          ; $4456: $7f
	nop                                              ; $4457: $00
	ld a, h                                          ; $4458: $7c
	ei                                               ; $4459: $fb
	db $e3                                           ; $445a: $e3
	ld e, $34                                        ; $445b: $1e $34
	ld a, l                                          ; $445d: $7d
	add b                                            ; $445e: $80
	nop                                              ; $445f: $00
	rst $38                                          ; $4460: $ff
	pop af                                           ; $4461: $f1
	rst JumpTable                                          ; $4462: $c7
	ld a, e                                          ; $4463: $7b
	ldh a, [$7f]                                     ; $4464: $f0 $7f
	add sp, -$6a                                     ; $4466: $e8 $96
	ei                                               ; $4468: $fb
	and $dd                                          ; $4469: $e6 $dd
	inc de                                           ; $446b: $13
	ld h, [hl]                                       ; $446c: $66
	db $fc                                           ; $446d: $fc
	nop                                              ; $446e: $00
	nop                                              ; $446f: $00
	rst FarCall                                          ; $4470: $f7
	ld a, e                                          ; $4471: $7b
	pop af                                           ; $4472: $f1
	sub l                                            ; $4473: $95
	ld a, h                                          ; $4474: $7c
	ld sp, hl                                        ; $4475: $f9
	rst $38                                          ; $4476: $ff
	nop                                              ; $4477: $00
	rst SubAFromBC                                          ; $4478: $e7
	sbc h                                            ; $4479: $9c
	add hl, sp                                       ; $447a: $39
	ld [hl], c                                       ; $447b: $71
	jp Jump_043_7bc4                                 ; $447c: $c3 $c4 $7b


	add e                                            ; $447f: $83
	sub d                                            ; $4480: $92
	rst GetHLinHL                                          ; $4481: $cf
	sbc a                                            ; $4482: $9f
	ccf                                              ; $4483: $3f
	ld a, [hl]                                       ; $4484: $7e
	cp $ff                                           ; $4485: $fe $ff
	nop                                              ; $4487: $00
	rst AddAOntoHL                                          ; $4488: $ef
	sbc c                                            ; $4489: $99
	sbc c                                            ; $448a: $99
	sub c                                            ; $448b: $91
	ld h, e                                          ; $448c: $63
	and $6f                                          ; $448d: $e6 $6f
	ldh a, [$9d]                                     ; $448f: $f0 $9d
	ld a, $7e                                        ; $4491: $3e $7e
	ld a, e                                          ; $4493: $7b
	cp b                                             ; $4494: $b8
	sub e                                            ; $4495: $93
	sbc h                                            ; $4496: $9c
	sub [hl]                                         ; $4497: $96
	ld h, [hl]                                       ; $4498: $66
	inc h                                            ; $4499: $24
	ld c, h                                          ; $449a: $4c
	nop                                              ; $449b: $00
	nop                                              ; $449c: $00
	sbc $9e                                          ; $449d: $de $9e
	inc a                                            ; $449f: $3c
	inc a                                            ; $44a0: $3c
	ld a, h                                          ; $44a1: $7c
	ld a, e                                          ; $44a2: $7b
	xor b                                            ; $44a3: $a8
	sub a                                            ; $44a4: $97
	rst $38                                          ; $44a5: $ff
	db $e4                                           ; $44a6: $e4
	call nz, Call_043_4444                           ; $44a7: $c4 $44 $44
	db $f4                                           ; $44aa: $f4
	nop                                              ; $44ab: $00
	nop                                              ; $44ac: $00
	sbc $7e                                          ; $44ad: $de $7e
	sbc $fe                                          ; $44af: $de $fe
	ld a, c                                          ; $44b1: $79
	cp $97                                           ; $44b2: $fe $97
	jp nc, $cdcb                                     ; $44b4: $d2 $cb $cd

	call z, $00f9                                    ; $44b7: $cc $f9 $00
	nop                                              ; $44ba: $00
	ei                                               ; $44bb: $fb
	db $dd                                           ; $44bc: $dd
	ld a, c                                          ; $44bd: $79
	ld a, e                                          ; $44be: $7b
	ldh [$9a], a                                     ; $44bf: $e0 $9a
	rst AddAOntoHL                                          ; $44c1: $ef
	ld h, l                                          ; $44c2: $65
	ld l, h                                          ; $44c3: $6c
	or d                                             ; $44c4: $b2
	and [hl]                                         ; $44c5: $a6
	ld a, e                                          ; $44c6: $7b
	ldh a, [$80]                                     ; $44c7: $f0 $80
	rst SubAFromDE                                          ; $44c9: $df
	rst GetHLinHL                                          ; $44ca: $cf
	rst SubAFromBC                                          ; $44cb: $e7
	rst SubAFromBC                                          ; $44cc: $e7
	di                                               ; $44cd: $f3
	di                                               ; $44ce: $f3
	ld hl, sp+$00                                    ; $44cf: $f8 $00
	cp b                                             ; $44d1: $b8
	sbc b                                            ; $44d2: $98
	adc $4f                                          ; $44d3: $ce $4f
	ld b, a                                          ; $44d5: $47
	daa                                              ; $44d6: $27
	rlca                                             ; $44d7: $07
	inc bc                                           ; $44d8: $03
	ld [hl], c                                       ; $44d9: $71
	inc a                                            ; $44da: $3c
	sbc h                                            ; $44db: $9c
	adc $e7                                          ; $44dc: $ce $e7
	di                                               ; $44de: $f3
	ldh a, [c]                                       ; $44df: $f2
	rst $38                                          ; $44e0: $ff
	ld a, $77                                        ; $44e1: $3e $77
	ld [hl], c                                       ; $44e3: $71
	db $10                                           ; $44e4: $10
	sub c                                            ; $44e5: $91
	call $8010                                       ; $44e6: $cd $10 $80
	ld [hl], b                                       ; $44e9: $70
	rst $38                                          ; $44ea: $ff
	ld hl, sp+$38                                    ; $44eb: $f8 $38
	jr c, jr_043_4507                                ; $44ed: $38 $18

	add b                                            ; $44ef: $80
	inc b                                            ; $44f0: $04
	or e                                             ; $44f1: $b3
	ld a, h                                          ; $44f2: $7c
	db $f4                                           ; $44f3: $f4
	call nz, Call_043_4cde                           ; $44f4: $c4 $de $4c
	ld c, a                                          ; $44f7: $4f
	dec bc                                           ; $44f8: $0b
	ld c, b                                          ; $44f9: $48
	ld hl, sp+$08                                    ; $44fa: $f8 $08
	inc de                                           ; $44fc: $13
	ld d, c                                          ; $44fd: $51
	inc de                                           ; $44fe: $13
	db $10                                           ; $44ff: $10
	ld [$07b7], sp                                   ; $4500: $08 $b7 $07
	nop                                              ; $4503: $00
	ldh [$6e], a                                     ; $4504: $e0 $6e
	pop hl                                           ; $4506: $e1

jr_043_4507:
	pop hl                                           ; $4507: $e1
	sbc l                                            ; $4508: $9d
	rst FarCall                                          ; $4509: $f7
	ld c, b                                          ; $450a: $48
	ld a, c                                          ; $450b: $79
	add d                                            ; $450c: $82
	sbc d                                            ; $450d: $9a
	pop af                                           ; $450e: $f1
	ld h, b                                          ; $450f: $60
	ld h, b                                          ; $4510: $60
	jr nc, jr_043_4522                               ; $4511: $30 $0f

	ld a, c                                          ; $4513: $79
	ret nz                                           ; $4514: $c0

	sbc d                                            ; $4515: $9a
	rlca                                             ; $4516: $07
	add a                                            ; $4517: $87
	add e                                            ; $4518: $83
	rst GetHLinHL                                          ; $4519: $cf
	ret nz                                           ; $451a: $c0

	ld a, d                                          ; $451b: $7a
	db $e4                                           ; $451c: $e4
	adc a                                            ; $451d: $8f
	ld sp, hl                                        ; $451e: $f9
	ld a, c                                          ; $451f: $79
	ld a, l                                          ; $4520: $7d
	nop                                              ; $4521: $00

jr_043_4522:
	ret                                              ; $4522: $c9


	jr nz, jr_043_4525                               ; $4523: $20 $00

jr_043_4525:
	add a                                            ; $4525: $87
	rst $38                                          ; $4526: $ff
	rst JumpTable                                          ; $4527: $c7
	rst SubAFromHL                                          ; $4528: $d7
	rst $38                                          ; $4529: $ff
	ld [hl], $00                                     ; $452a: $36 $00
	nop                                              ; $452c: $00
	ld hl, sp-$22                                    ; $452d: $f8 $de
	add b                                            ; $452f: $80
	add d                                            ; $4530: $82
	nop                                              ; $4531: $00
	db $eb                                           ; $4532: $eb
	nop                                              ; $4533: $00
	nop                                              ; $4534: $00
	inc e                                            ; $4535: $1c
	ccf                                              ; $4536: $3f
	cp [hl]                                          ; $4537: $be
	ld e, $ff                                        ; $4538: $1e $ff
	inc d                                            ; $453a: $14
	nop                                              ; $453b: $00
	nop                                              ; $453c: $00
	rst AddAOntoHL                                          ; $453d: $ef
	call z, $ec4c                                    ; $453e: $cc $4c $ec
	db $eb                                           ; $4541: $eb
	rst AddAOntoHL                                          ; $4542: $ef
	ld l, d                                          ; $4543: $6a
	db $eb                                           ; $4544: $eb
	jp hl                                            ; $4545: $e9


	ld l, [hl]                                       ; $4546: $6e
	ld l, c                                          ; $4547: $69
	ld l, [hl]                                       ; $4548: $6e
	inc c                                            ; $4549: $0c
	inc c                                            ; $454a: $0c
	dec c                                            ; $454b: $0d
	dec c                                            ; $454c: $0d
	rrca                                             ; $454d: $0f
	ld a, e                                          ; $454e: $7b

jr_043_454f:
	cp $7a                                           ; $454f: $fe $7a
	and d                                            ; $4551: $a2
	sbc e                                            ; $4552: $9b
	cp a                                             ; $4553: $bf
	nop                                              ; $4554: $00
	nop                                              ; $4555: $00
	add b                                            ; $4556: $80
	ld a, d                                          ; $4557: $7a
	ld l, a                                          ; $4558: $6f
	db $db                                           ; $4559: $db
	rst $38                                          ; $455a: $ff
	ld a, h                                          ; $455b: $7c
	ld [hl], d                                       ; $455c: $72
	ld a, d                                          ; $455d: $7a
	ld [hl+], a                                      ; $455e: $22

Call_043_455f:
	ld a, e                                          ; $455f: $7b
	inc hl                                           ; $4560: $23
	sbc [hl]                                         ; $4561: $9e
	ldh [$71], a                                     ; $4562: $e0 $71
	db $ed                                           ; $4564: $ed
	rst SubAFromDE                                          ; $4565: $df
	rst $38                                          ; $4566: $ff
	sbc e                                            ; $4567: $9b
	adc d                                            ; $4568: $8a
	nop                                              ; $4569: $00
	rst GetHLinHL                                          ; $456a: $cf
	add sp, $77                                      ; $456b: $e8 $77
	ldh a, [$9c]                                     ; $456d: $f0 $9c
	ld [hl], c                                       ; $456f: $71
	nop                                              ; $4570: $00
	jr nc, jr_043_454f                               ; $4571: $30 $dc

	rst $38                                          ; $4573: $ff
	sbc h                                            ; $4574: $9c
	ld c, $00                                        ; $4575: $0e $00
	ld a, l                                          ; $4577: $7d
	ld a, c                                          ; $4578: $79
	ld l, b                                          ; $4579: $68
	sbc d                                            ; $457a: $9a
	nop                                              ; $457b: $00
	pop af                                           ; $457c: $f1
	pop af                                           ; $457d: $f1
	nop                                              ; $457e: $00
	add d                                            ; $457f: $82
	ld a, d                                          ; $4580: $7a
	dec b                                            ; $4581: $05
	rst SubAFromDE                                          ; $4582: $df
	rst $38                                          ; $4583: $ff
	sbc l                                            ; $4584: $9d
	adc e                                            ; $4585: $8b
	nop                                              ; $4586: $00
	ld a, c                                          ; $4587: $79
	pop af                                           ; $4588: $f1
	ld a, h                                          ; $4589: $7c
	pop de                                           ; $458a: $d1
	ld a, a                                          ; $458b: $7f
	rst AddAOntoHL                                          ; $458c: $ef
	rst $38                                          ; $458d: $ff
	ld a, l                                          ; $458e: $7d
	ld a, [$d979]                                    ; $458f: $fa $79 $d9
	ld a, a                                          ; $4592: $7f
	ret nz                                           ; $4593: $c0

	sbc l                                            ; $4594: $9d
	rst $38                                          ; $4595: $ff
	ldh a, [$75]                                     ; $4596: $f0 $75
	call nc, $f39c                                   ; $4598: $d4 $9c $f3
	nop                                              ; $459b: $00
	nop                                              ; $459c: $00
	ld a, e                                          ; $459d: $7b
	ld h, [hl]                                       ; $459e: $66
	ld [hl], h                                       ; $459f: $74
	adc l                                            ; $45a0: $8d
	ld [hl], h                                       ; $45a1: $74
	ld [hl], h                                       ; $45a2: $74
	ld a, a                                          ; $45a3: $7f
	push hl                                          ; $45a4: $e5
	ld a, d                                          ; $45a5: $7a
	xor a                                            ; $45a6: $af
	ld [hl], h                                       ; $45a7: $74
	rst JumpTable                                          ; $45a8: $c7
	ld a, h                                          ; $45a9: $7c
	or b                                             ; $45aa: $b0
	ld a, d                                          ; $45ab: $7a
	ret z                                            ; $45ac: $c8

	sbc [hl]                                         ; $45ad: $9e
	ldh [$79], a                                     ; $45ae: $e0 $79
	db $e4                                           ; $45b0: $e4
	ld a, e                                          ; $45b1: $7b
	db $d3                                           ; $45b2: $d3
	sbc c                                            ; $45b3: $99
	rst $38                                          ; $45b4: $ff
	rra                                              ; $45b5: $1f
	rrca                                             ; $45b6: $0f
	rst $38                                          ; $45b7: $ff
	rst $38                                          ; $45b8: $ff
	ld a, c                                          ; $45b9: $79
	ld [hl], b                                       ; $45ba: $70
	ld l, d                                          ; $45bb: $6a
	ld a, [hl]                                       ; $45bc: $7e
	ld e, $77                                        ; $45bd: $1e $77
	ldh [$dd], a                                     ; $45bf: $e0 $dd
	rst $38                                          ; $45c1: $ff
	ld a, e                                          ; $45c2: $7b
	ldh [$7b], a                                     ; $45c3: $e0 $7b
	push af                                          ; $45c5: $f5
	ld a, a                                          ; $45c6: $7f
	ldh a, [rPCM34]                                  ; $45c7: $f0 $77
	ldh [$dd], a                                     ; $45c9: $e0 $dd
	rst $38                                          ; $45cb: $ff
	ld a, [hl]                                       ; $45cc: $7e
	ld h, b                                          ; $45cd: $60
	sbc l                                            ; $45ce: $9d
	rst $38                                          ; $45cf: $ff
	ld h, b                                          ; $45d0: $60
	ld [hl], l                                       ; $45d1: $75
	ld d, $67                                        ; $45d2: $16 $67
	ldh [$9c], a                                     ; $45d4: $e0 $9c
	db $fd                                           ; $45d6: $fd
	nop                                              ; $45d7: $00
	rst $38                                          ; $45d8: $ff
	ld [hl], c                                       ; $45d9: $71
	db $e4                                           ; $45da: $e4
	sbc [hl]                                         ; $45db: $9e
	ei                                               ; $45dc: $fb
	ld e, a                                          ; $45dd: $5f
	ldh a, [$71]                                     ; $45de: $f0 $71
	db $e4                                           ; $45e0: $e4
	ld a, e                                          ; $45e1: $7b
	sub b                                            ; $45e2: $90
	call c, $96ff                                    ; $45e3: $dc $ff $96
	call nz, $ff02                                   ; $45e6: $c4 $02 $ff
	rst FarCall                                          ; $45e9: $f7
	rlca                                             ; $45ea: $07
	rlca                                             ; $45eb: $07
	inc bc                                           ; $45ec: $03
	ld e, e                                          ; $45ed: $5b
	ldh [$79], a                                     ; $45ee: $e0 $79
	pop hl                                           ; $45f0: $e1
	db $dd                                           ; $45f1: $dd
	db $fc                                           ; $45f2: $fc
	sbc d                                            ; $45f3: $9a
	ld c, [hl]                                       ; $45f4: $4e
	db $10                                           ; $45f5: $10
	ld d, b                                          ; $45f6: $50
	add b                                            ; $45f7: $80
	ld c, l                                          ; $45f8: $4d
	ld a, c                                          ; $45f9: $79
	add d                                            ; $45fa: $82
	sbc [hl]                                         ; $45fb: $9e
	ld de, $1fde                                     ; $45fc: $11 $de $1f
	sub a                                            ; $45ff: $97
	sub d                                            ; $4600: $92
	sub $df                                          ; $4601: $d6 $df
	rst SubAFromDE                                          ; $4603: $df
	push af                                          ; $4604: $f5
	ld [hl], l                                       ; $4605: $75
	ld [hl], h                                       ; $4606: $74
	ld [hl], b                                       ; $4607: $70
	ld a, e                                          ; $4608: $7b
	cp $9c                                           ; $4609: $fe $9c
	ld a, b                                          ; $460b: $78
	ld h, b                                          ; $460c: $60
	ldh [$db], a                                     ; $460d: $e0 $db
	pop hl                                           ; $460f: $e1
	sbc h                                            ; $4610: $9c
	add e                                            ; $4611: $83
	ld bc, $de03                                     ; $4612: $01 $03 $de
	ld bc, $fc7f                                     ; $4615: $01 $7f $fc
	sbc h                                            ; $4618: $9c
	ld a, l                                          ; $4619: $7d
	rst $38                                          ; $461a: $ff
	db $fd                                           ; $461b: $fd
	ld [hl], a                                       ; $461c: $77
	or d                                             ; $461d: $b2
	sub c                                            ; $461e: $91
	rst $38                                          ; $461f: $ff
	db $d3                                           ; $4620: $d3
	jp nc, $d6d0                                     ; $4621: $d2 $d0 $d6

	jp nz, $c0d0                                     ; $4624: $c2 $d0 $c0

	ret nz                                           ; $4627: $c0

	add h                                            ; $4628: $84
	add l                                            ; $4629: $85
	add a                                            ; $462a: $87
	add c                                            ; $462b: $81
	add l                                            ; $462c: $85
	sbc $87                                          ; $462d: $de $87
	sbc [hl]                                         ; $462f: $9e
	ld a, $de                                        ; $4630: $3e $de
	ld e, $dd                                        ; $4632: $1e $dd
	ld c, $9e                                        ; $4634: $0e $9e
	call z, $ecde                                    ; $4636: $cc $de $ec
	db $dd                                           ; $4639: $dd
	db $fc                                           ; $463a: $fc
	ld c, h                                          ; $463b: $4c
	nop                                              ; $463c: $00
	sbc [hl]                                         ; $463d: $9e
	ld b, h                                          ; $463e: $44
	ret c                                            ; $463f: $d8

	inc sp                                           ; $4640: $33
	sbc l                                            ; $4641: $9d
	ld b, h                                          ; $4642: $44
	ld b, e                                          ; $4643: $43
	jp c, $9b33                                      ; $4644: $da $33 $9b

	inc [hl]                                         ; $4647: $34
	ld b, h                                          ; $4648: $44
	ld b, e                                          ; $4649: $43
	inc [hl]                                         ; $464a: $34
	call c, $9d44                                    ; $464b: $dc $44 $9d
	ld b, e                                          ; $464e: $43
	ld [hl], $7b                                     ; $464f: $36 $7b
	di                                               ; $4651: $f3
	sub [hl]                                         ; $4652: $96
	ld b, a                                          ; $4653: $47
	ld [hl], h                                       ; $4654: $74
	ld b, a                                          ; $4655: $47
	ld [hl], h                                       ; $4656: $74
	ld b, h                                          ; $4657: $44
	ld d, e                                          ; $4658: $53
	ld h, [hl]                                       ; $4659: $66
	inc sp                                           ; $465a: $33
	ld [hl], a                                       ; $465b: $77
	ld a, e                                          ; $465c: $7b
	ld hl, sp+$7b                                    ; $465d: $f8 $7b
	cp $9a                                           ; $465f: $fe $9a
	ld [hl], a                                       ; $4661: $77
	ld h, [hl]                                       ; $4662: $66
	ld d, l                                          ; $4663: $55
	ld d, l                                          ; $4664: $55
	ld d, h                                          ; $4665: $54
	ld a, e                                          ; $4666: $7b
	sub $9e                                          ; $4667: $d6 $9e
	dec [hl]                                         ; $4669: $35
	ld a, e                                          ; $466a: $7b
	ld sp, hl                                        ; $466b: $f9
	ld l, a                                          ; $466c: $6f
	or $7f                                           ; $466d: $f6 $7f
	rst JumpTable                                          ; $466f: $c7
	sbc l                                            ; $4670: $9d
	ld d, h                                          ; $4671: $54
	ld b, h                                          ; $4672: $44
	ld l, e                                          ; $4673: $6b
	or $7b                                           ; $4674: $f6 $7b
	ret                                              ; $4676: $c9


	sbc $66                                          ; $4677: $de $66
	sbc $55                                          ; $4679: $de $55
	sbc [hl]                                         ; $467b: $9e
	ld d, [hl]                                       ; $467c: $56
	sbc $66                                          ; $467d: $de $66
	ld l, e                                          ; $467f: $6b
	and [hl]                                         ; $4680: $a6
	ld [hl], a                                       ; $4681: $77
	cp b                                             ; $4682: $b8
	ld h, a                                          ; $4683: $67
	xor b                                            ; $4684: $a8
	sbc [hl]                                         ; $4685: $9e
	ld b, h                                          ; $4686: $44
	sbc c                                            ; $4687: $99
	adc e                                            ; $4688: $8b
	reti                                             ; $4689: $d9


	rst $38                                          ; $468a: $ff
	ld sp, hl                                        ; $468b: $f9
	cpl                                              ; $468c: $2f
	ldh a, [$9d]                                     ; $468d: $f0 $9d
	cp $fa                                           ; $468f: $fe $fa
	ei                                               ; $4691: $fb
	sub b                                            ; $4692: $90
	ld bc, $ff07                                     ; $4693: $01 $07 $ff
	rst $38                                          ; $4696: $ff
	db $fd                                           ; $4697: $fd
	or $f0                                           ; $4698: $f6 $f0
	ld h, b                                          ; $469a: $60
	add b                                            ; $469b: $80
	ld bc, $0000                                     ; $469c: $01 $00 $00
	inc bc                                           ; $469f: $03
	rrca                                             ; $46a0: $0f
	rra                                              ; $46a1: $1f
	ld a, e                                          ; $46a2: $7b
	rst SubAFromBC                                          ; $46a3: $e7
	sub a                                            ; $46a4: $97
	jr nz, jr_043_46a7                               ; $46a5: $20 $00

jr_043_46a7:
	nop                                              ; $46a7: $00
	ld [bc], a                                       ; $46a8: $02
	nop                                              ; $46a9: $00
	ld [bc], a                                       ; $46aa: $02
	db $10                                           ; $46ab: $10
	ld b, a                                          ; $46ac: $47
	ld a, e                                          ; $46ad: $7b
	db $f4                                           ; $46ae: $f4
	adc [hl]                                         ; $46af: $8e
	db $fd                                           ; $46b0: $fd
	ld a, [$eafd]                                    ; $46b1: $fa $fd $ea
	stop                                             ; $46b4: $10 $00
	db $10                                           ; $46b6: $10
	add d                                            ; $46b7: $82
	ld d, l                                          ; $46b8: $55
	xor d                                            ; $46b9: $aa
	ld d, l                                          ; $46ba: $55
	xor a                                            ; $46bb: $af
	jp $e7fe                                         ; $46bc: $c3 $fe $e7


	ld a, h                                          ; $46bf: $7c
	add b                                            ; $46c0: $80
	cp $94                                           ; $46c1: $fe $94
	inc a                                            ; $46c3: $3c
	ldh a, [rAUD3LOW]                                ; $46c4: $f0 $1d
	xor d                                            ; $46c6: $aa
	ld d, l                                          ; $46c7: $55
	xor e                                            ; $46c8: $ab
	ld b, e                                          ; $46c9: $43
	ld a, [$0f54]                                    ; $46ca: $fa $54 $0f
	ldh [rPCM34], a                                  ; $46cd: $e0 $77
	ldh a, [c]                                       ; $46cf: $f2
	rst $38                                          ; $46d0: $ff
	sub a                                            ; $46d1: $97
	xor a                                            ; $46d2: $af
	ld d, l                                          ; $46d3: $55
	xor d                                            ; $46d4: $aa
	ld e, [hl]                                       ; $46d5: $5e
	ld b, $d7                                        ; $46d6: $06 $d7
	xor d                                            ; $46d8: $aa
	dec d                                            ; $46d9: $15
	ld [hl], a                                       ; $46da: $77
	or e                                             ; $46db: $b3
	sbc [hl]                                         ; $46dc: $9e
	ld hl, sp+$77                                    ; $46dd: $f8 $77
	and b                                            ; $46df: $a0
	sbc b                                            ; $46e0: $98
	call nc, $37f0                                   ; $46e1: $d4 $f0 $37
	xor a                                            ; $46e4: $af
	ld a, [hl]                                       ; $46e5: $7e
	cp a                                             ; $46e6: $bf
	ldh [$7b], a                                     ; $46e7: $e0 $7b
	or c                                             ; $46e9: $b1
	sbc [hl]                                         ; $46ea: $9e
	ret nz                                           ; $46eb: $c0

	db $fd                                           ; $46ec: $fd
	sbc l                                            ; $46ed: $9d
	ld hl, sp+$03                                    ; $46ee: $f8 $03
	ld a, e                                          ; $46f0: $7b
	or a                                             ; $46f1: $b7
	sbc d                                            ; $46f2: $9a
	rst $38                                          ; $46f3: $ff
	jp nz, $07cf                                     ; $46f4: $c2 $cf $07

	db $fc                                           ; $46f7: $fc
	ld [hl], e                                       ; $46f8: $73
	sub b                                            ; $46f9: $90
	rst SubAFromDE                                          ; $46fa: $df
	ccf                                              ; $46fb: $3f
	ld a, e                                          ; $46fc: $7b
	sbc h                                            ; $46fd: $9c
	sbc e                                            ; $46fe: $9b
	rra                                              ; $46ff: $1f
	db $e3                                           ; $4700: $e3
	ld a, a                                          ; $4701: $7f
	pop bc                                           ; $4702: $c1
	ld a, e                                          ; $4703: $7b
	db $e3                                           ; $4704: $e3
	sbc l                                            ; $4705: $9d
	ld bc, $7be0                                     ; $4706: $01 $e0 $7b
	sbc e                                            ; $4709: $9b
	rst SubAFromDE                                          ; $470a: $df
	rst $38                                          ; $470b: $ff
	add a                                            ; $470c: $87
	pop af                                           ; $470d: $f1
	ld hl, sp+$3f                                    ; $470e: $f8 $3f
	rst AddAOntoHL                                          ; $4710: $ef
	pop bc                                           ; $4711: $c1
	adc a                                            ; $4712: $8f
	nop                                              ; $4713: $00
	nop                                              ; $4714: $00
	ld c, $07                                        ; $4715: $0e $07
	rst $38                                          ; $4717: $ff
	pop af                                           ; $4718: $f1
	ld bc, $f801                                     ; $4719: $01 $01 $f8
	add h                                            ; $471c: $84
	rlca                                             ; $471d: $07
	db $fc                                           ; $471e: $fc
	ldh [$f7], a                                     ; $471f: $e0 $f7
	ret nz                                           ; $4721: $c0

	nop                                              ; $4722: $00
	rlca                                             ; $4723: $07
	ld a, e                                          ; $4724: $7b
	db $db                                           ; $4725: $db
	rst $38                                          ; $4726: $ff
	sub d                                            ; $4727: $92
	ld h, c                                          ; $4728: $61
	ld a, a                                          ; $4729: $7f
	di                                               ; $472a: $f3
	ld [hl], b                                       ; $472b: $70
	pop hl                                           ; $472c: $e1
	add b                                            ; $472d: $80
	nop                                              ; $472e: $00
	rlca                                             ; $472f: $07
	sbc a                                            ; $4730: $9f
	rst $38                                          ; $4731: $ff
	db $fc                                           ; $4732: $fc
	ldh [$e0], a                                     ; $4733: $e0 $e0
	ld [hl], a                                       ; $4735: $77
	ld b, [hl]                                       ; $4736: $46
	sbc h                                            ; $4737: $9c
	ld a, l                                          ; $4738: $7d
	rst $38                                          ; $4739: $ff
	ld h, b                                          ; $473a: $60
	ld a, e                                          ; $473b: $7b
	ldh [c], a                                       ; $473c: $e2
	sbc $ff                                          ; $473d: $de $ff
	sbc $7f                                          ; $473f: $de $7f
	rst SubAFromDE                                          ; $4741: $df
	rst $38                                          ; $4742: $ff
	sbc l                                            ; $4743: $9d
	ldh [$ab], a                                     ; $4744: $e0 $ab
	ld [hl], a                                       ; $4746: $77
	ld l, c                                          ; $4747: $69
	ld [hl], e                                       ; $4748: $73
	cp b                                             ; $4749: $b8
	db $dd                                           ; $474a: $dd
	rst $38                                          ; $474b: $ff
	ld a, a                                          ; $474c: $7f
	and $73                                          ; $474d: $e6 $73
	ld e, e                                          ; $474f: $5b
	sbc h                                            ; $4750: $9c
	add b                                            ; $4751: $80
	ldh a, [$dd]                                     ; $4752: $f0 $dd
	db $db                                           ; $4754: $db
	rst $38                                          ; $4755: $ff
	sbc l                                            ; $4756: $9d
	rrca                                             ; $4757: $0f
	ld [hl+], a                                      ; $4758: $22
	ld a, e                                          ; $4759: $7b
	sbc c                                            ; $475a: $99
	sbc [hl]                                         ; $475b: $9e
	ld a, b                                          ; $475c: $78
	ld a, e                                          ; $475d: $7b
	inc h                                            ; $475e: $24
	sbc [hl]                                         ; $475f: $9e
	add c                                            ; $4760: $81
	db $db                                           ; $4761: $db
	rst $38                                          ; $4762: $ff
	sub l                                            ; $4763: $95
	db $fc                                           ; $4764: $fc
	ld a, a                                          ; $4765: $7f
	nop                                              ; $4766: $00
	inc bc                                           ; $4767: $03
	ldh a, [rP1]                                     ; $4768: $f0 $00
	nop                                              ; $476a: $00
	rrca                                             ; $476b: $0f
	jp $dcfc                                         ; $476c: $c3 $fc $dc


	rst $38                                          ; $476f: $ff
	sbc e                                            ; $4770: $9b
	ldh a, [$3f]                                     ; $4771: $f0 $3f
	rst $38                                          ; $4773: $ff
	rrca                                             ; $4774: $0f
	ld a, e                                          ; $4775: $7b
	pop af                                           ; $4776: $f1
	sbc h                                            ; $4777: $9c
	rlca                                             ; $4778: $07
	rst JumpTable                                          ; $4779: $c7
	rst $38                                          ; $477a: $ff
	ld [hl], d                                       ; $477b: $72
	add sp, $7f                                      ; $477c: $e8 $7f
	ld [hl], a                                       ; $477e: $77
	db $dd                                           ; $477f: $dd
	rst $38                                          ; $4780: $ff
	sbc c                                            ; $4781: $99
	ld a, a                                          ; $4782: $7f
	xor a                                            ; $4783: $af
	ld d, l                                          ; $4784: $55
	adc c                                            ; $4785: $89
	ld d, [hl]                                       ; $4786: $56
	cp b                                             ; $4787: $b8
	db $fc                                           ; $4788: $fc
	ld a, a                                          ; $4789: $7f
	inc a                                            ; $478a: $3c
	ld a, e                                          ; $478b: $7b
	sbc l                                            ; $478c: $9d
	sbc h                                            ; $478d: $9c
	db $eb                                           ; $478e: $eb
	inc c                                            ; $478f: $0c
	ld h, b                                          ; $4790: $60
	halt                                             ; $4791: $76
	db $ec                                           ; $4792: $ec
	ld a, a                                          ; $4793: $7f
	jp c, $9a77                                      ; $4794: $da $77 $9a

	sbc h                                            ; $4797: $9c
	db $fd                                           ; $4798: $fd
	ldh a, [hLCDCIntHandlerIdx]                                     ; $4799: $f0 $81
	ld a, e                                          ; $479b: $7b
	or c                                             ; $479c: $b1
	sbc h                                            ; $479d: $9c
	ld a, [bc]                                       ; $479e: $0a
	dec d                                            ; $479f: $15
	xor b                                            ; $47a0: $a8
	ld [hl], e                                       ; $47a1: $73
	push de                                          ; $47a2: $d5
	add e                                            ; $47a3: $83
	push af                                          ; $47a4: $f5
	ld [$0a57], a                                    ; $47a5: $ea $57 $0a
	ldh [rAUD1HIGH], a                               ; $47a8: $e0 $14
	dec h                                            ; $47aa: $25
	xor d                                            ; $47ab: $aa
	push de                                          ; $47ac: $d5
	ccf                                              ; $47ad: $3f
	or c                                             ; $47ae: $b1
	ldh a, [rIE]                                     ; $47af: $f0 $ff
	ld [$00d0], a                                    ; $47b1: $ea $d0 $00
	nop                                              ; $47b4: $00
	add b                                            ; $47b5: $80
	ld b, b                                          ; $47b6: $40
	add c                                            ; $47b7: $81
	ldh a, [$aa]                                     ; $47b8: $f0 $aa
	ld d, b                                          ; $47ba: $50
	inc bc                                           ; $47bb: $03
	ld hl, sp+$0e                                    ; $47bc: $f8 $0e
	sbc a                                            ; $47be: $9f
	ld a, $6e                                        ; $47bf: $3e $6e
	and b                                            ; $47c1: $a0
	sbc [hl]                                         ; $47c2: $9e
	ld a, a                                          ; $47c3: $7f
	ld a, d                                          ; $47c4: $7a
	reti                                             ; $47c5: $d9


	sbc d                                            ; $47c6: $9a
	rra                                              ; $47c7: $1f
	ret nz                                           ; $47c8: $c0

	cpl                                              ; $47c9: $2f
	push af                                          ; $47ca: $f5
	add c                                            ; $47cb: $81
	db $fc                                           ; $47cc: $fc
	sub [hl]                                         ; $47cd: $96
	rra                                              ; $47ce: $1f
	ei                                               ; $47cf: $fb
	jp $0700                                         ; $47d0: $c3 $00 $07


	ldh a, [$0e]                                     ; $47d3: $f0 $0e
	rst $38                                          ; $47d5: $ff
	ret nz                                           ; $47d6: $c0

	ld [hl], a                                       ; $47d7: $77
	ld e, d                                          ; $47d8: $5a
	ld a, d                                          ; $47d9: $7a
	di                                               ; $47da: $f3
	sbc $ff                                          ; $47db: $de $ff
	sbc d                                            ; $47dd: $9a
	ld a, [hl]                                       ; $47de: $7e
	add c                                            ; $47df: $81
	scf                                              ; $47e0: $37
	rst FarCall                                          ; $47e1: $f7
	jp $9273                                         ; $47e2: $c3 $73 $92


	sbc h                                            ; $47e5: $9c
	rrca                                             ; $47e6: $0f
	ei                                               ; $47e7: $fb
	inc bc                                           ; $47e8: $03
	ld a, e                                          ; $47e9: $7b
	add hl, hl                                       ; $47ea: $29
	sbc e                                            ; $47eb: $9b
	add hl, de                                       ; $47ec: $19
	ccf                                              ; $47ed: $3f
	pop bc                                           ; $47ee: $c1
	sbc b                                            ; $47ef: $98
	ld a, e                                          ; $47f0: $7b
	rst SubAFromHL                                          ; $47f1: $d7
	sbc [hl]                                         ; $47f2: $9e
	jr nc, jr_043_486c                               ; $47f3: $30 $77

	ld e, $7b                                        ; $47f5: $1e $7b
	ld [de], a                                       ; $47f7: $12
	sub h                                            ; $47f8: $94
	ret nz                                           ; $47f9: $c0

	db $fd                                           ; $47fa: $fd
	pop bc                                           ; $47fb: $c1
	adc l                                            ; $47fc: $8d
	inc a                                            ; $47fd: $3c
	inc bc                                           ; $47fe: $03
	db $fc                                           ; $47ff: $fc
	add b                                            ; $4800: $80
	nop                                              ; $4801: $00
	di                                               ; $4802: $f3
	inc bc                                           ; $4803: $03
	ld a, d                                          ; $4804: $7a
	or a                                             ; $4805: $b7
	ld a, e                                          ; $4806: $7b
	ld d, h                                          ; $4807: $54
	ld a, d                                          ; $4808: $7a
	sbc h                                            ; $4809: $9c
	sbc d                                            ; $480a: $9a
	rra                                              ; $480b: $1f
	ret nc                                           ; $480c: $d0

	rlca                                             ; $480d: $07
	ret nz                                           ; $480e: $c0

	inc c                                            ; $480f: $0c
	db $dd                                           ; $4810: $dd
	rst $38                                          ; $4811: $ff

jr_043_4812:
	ld a, e                                          ; $4812: $7b
	and h                                            ; $4813: $a4
	sub e                                            ; $4814: $93
	inc bc                                           ; $4815: $03
	ld b, b                                          ; $4816: $40
	inc c                                            ; $4817: $0c
	ld a, a                                          ; $4818: $7f
	ld [hl], e                                       ; $4819: $73
	rra                                              ; $481a: $1f
	nop                                              ; $481b: $00
	ld sp, $bf7e                                     ; $481c: $31 $7e $bf
	di                                               ; $481f: $f3
	cp $7b                                           ; $4820: $fe $7b
	xor e                                            ; $4822: $ab
	sbc l                                            ; $4823: $9d
	rrca                                             ; $4824: $0f
	rst $38                                          ; $4825: $ff
	ld a, e                                          ; $4826: $7b
	jp c, $ff99                                      ; $4827: $da $99 $ff

	pop hl                                           ; $482a: $e1
	ld [hl], a                                       ; $482b: $77
	rst $38                                          ; $482c: $ff
	xor e                                            ; $482d: $ab
	rst $38                                          ; $482e: $ff
	halt                                             ; $482f: $76
	ld [hl], e                                       ; $4830: $73
	ld a, a                                          ; $4831: $7f
	pop af                                           ; $4832: $f1
	call c, $9eff                                    ; $4833: $dc $ff $9e
	rst SubAFromBC                                          ; $4836: $e7
	ld a, e                                          ; $4837: $7b
	ld [de], a                                       ; $4838: $12
	halt                                             ; $4839: $76
	ld d, c                                          ; $483a: $51
	ld l, d                                          ; $483b: $6a
	reti                                             ; $483c: $d9


	sbc l                                            ; $483d: $9d
	rst GetHLinHL                                          ; $483e: $cf
	db $fc                                           ; $483f: $fc
	ld a, e                                          ; $4840: $7b
	ld a, [hl+]                                      ; $4841: $2a
	cp $73                                           ; $4842: $fe $73
	dec a                                            ; $4844: $3d
	ld a, a                                          ; $4845: $7f
	sbc l                                            ; $4846: $9d
	ld a, a                                          ; $4847: $7f
	ld sp, hl                                        ; $4848: $f9
	ld a, a                                          ; $4849: $7f
	pop af                                           ; $484a: $f1
	sbc e                                            ; $484b: $9b
	cp $e0                                           ; $484c: $fe $e0
	nop                                              ; $484e: $00
	ld bc, $ffdb                                     ; $484f: $01 $db $ff
	sbc h                                            ; $4852: $9c
	ldh a, [$7d]                                     ; $4853: $f0 $7d
	ld sp, hl                                        ; $4855: $f9
	ld a, e                                          ; $4856: $7b
	add sp, $63                                      ; $4857: $e8 $63
	push bc                                          ; $4859: $c5
	ld a, e                                          ; $485a: $7b
	ld h, b                                          ; $485b: $60
	ld [hl], a                                       ; $485c: $77
	db $eb                                           ; $485d: $eb
	ld e, l                                          ; $485e: $5d
	cp b                                             ; $485f: $b8
	ld [hl], a                                       ; $4860: $77
	and b                                            ; $4861: $a0
	ld a, e                                          ; $4862: $7b
	pop af                                           ; $4863: $f1
	ld h, [hl]                                       ; $4864: $66
	adc [hl]                                         ; $4865: $8e
	halt                                             ; $4866: $76
	ld l, l                                          ; $4867: $6d
	ld a, e                                          ; $4868: $7b
	and l                                            ; $4869: $a5
	sbc l                                            ; $486a: $9d
	ccf                                              ; $486b: $3f

jr_043_486c:
	rst GetHLinHL                                          ; $486c: $cf
	ld l, d                                          ; $486d: $6a
	add b                                            ; $486e: $80
	sbc l                                            ; $486f: $9d
	ccf                                              ; $4870: $3f
	ld b, b                                          ; $4871: $40
	ld a, e                                          ; $4872: $7b
	jr z, jr_043_4812                                ; $4873: $28 $9d

	db $10                                           ; $4875: $10
	rra                                              ; $4876: $1f
	ld [hl], d                                       ; $4877: $72
	ld h, $7f                                        ; $4878: $26 $7f
	xor e                                            ; $487a: $ab
	ld a, a                                          ; $487b: $7f
	ld a, [$8977]                                    ; $487c: $fa $77 $89
	sbc e                                            ; $487f: $9b
	adc c                                            ; $4880: $89
	cp $8c                                           ; $4881: $fe $8c
	nop                                              ; $4883: $00
	ld a, e                                          ; $4884: $7b
	ret c                                            ; $4885: $d8

	adc l                                            ; $4886: $8d
	ldh a, [rTAC]                                    ; $4887: $f0 $07
	db $fc                                           ; $4889: $fc
	db $fc                                           ; $488a: $fc
	rst $38                                          ; $488b: $ff
	ccf                                              ; $488c: $3f
	dec b                                            ; $488d: $05
	ld [bc], a                                       ; $488e: $02
	rst GetHLinHL                                          ; $488f: $cf
	ld hl, sp+$30                                    ; $4890: $f8 $30
	ld b, b                                          ; $4892: $40
	nop                                              ; $4893: $00
	ld bc, $05fa                                     ; $4894: $01 $fa $05
	ccf                                              ; $4897: $3f
	rst $38                                          ; $4898: $ff
	ld a, c                                          ; $4899: $79
	di                                               ; $489a: $f3
	sbc d                                            ; $489b: $9a
	cp $13                                           ; $489c: $fe $13
	ld a, [hl]                                       ; $489e: $7e
	ld bc, $7b10                                     ; $489f: $01 $10 $7b
	or c                                             ; $48a2: $b1
	sbc d                                            ; $48a3: $9a
	ld hl, sp+$0f                                    ; $48a4: $f8 $0f
	ld hl, sp-$20                                    ; $48a6: $f8 $e0
	rst AddAOntoHL                                          ; $48a8: $ef
	ld [hl], a                                       ; $48a9: $77
	or l                                             ; $48aa: $b5
	sbc [hl]                                         ; $48ab: $9e
	ldh [$7a], a                                     ; $48ac: $e0 $7a
	db $e4                                           ; $48ae: $e4
	sbc e                                            ; $48af: $9b
	inc bc                                           ; $48b0: $03
	ld a, [$63c1]                                    ; $48b1: $fa $c1 $63
	ld [hl], d                                       ; $48b4: $72
	ld d, d                                          ; $48b5: $52
	sub c                                            ; $48b6: $91
	inc b                                            ; $48b7: $04
	ld b, $1f                                        ; $48b8: $06 $1f
	ld [$0303], sp                                   ; $48ba: $08 $03 $03
	ld a, $e0                                        ; $48bd: $3e $e0
	nop                                              ; $48bf: $00
	adc a                                            ; $48c0: $8f
	rst $38                                          ; $48c1: $ff
	rst JumpTable                                          ; $48c2: $c7
	db $fc                                           ; $48c3: $fc
	db $fc                                           ; $48c4: $fc
	ld a, c                                          ; $48c5: $79
	call $567f                                       ; $48c6: $cd $7f $56
	sub l                                            ; $48c9: $95
	nop                                              ; $48ca: $00
	add e                                            ; $48cb: $83
	ld h, b                                          ; $48cc: $60
	nop                                              ; $48cd: $00
	ld [bc], a                                       ; $48ce: $02
	ccf                                              ; $48cf: $3f
	ret nz                                           ; $48d0: $c0

	rst $38                                          ; $48d1: $ff
	rst $38                                          ; $48d2: $ff
	ld a, h                                          ; $48d3: $7c
	ld a, e                                          ; $48d4: $7b
	sub a                                            ; $48d5: $97
	sbc $ff                                          ; $48d6: $de $ff
	sub a                                            ; $48d8: $97
	inc c                                            ; $48d9: $0c
	nop                                              ; $48da: $00
	nop                                              ; $48db: $00
	inc c                                            ; $48dc: $0c
	ld a, a                                          ; $48dd: $7f
	ld bc, $f70b                                     ; $48de: $01 $0b $f7
	ld a, e                                          ; $48e1: $7b
	ld l, h                                          ; $48e2: $6c
	ld [hl], a                                       ; $48e3: $77
	ld h, l                                          ; $48e4: $65
	sbc d                                            ; $48e5: $9a
	ei                                               ; $48e6: $fb
	nop                                              ; $48e7: $00
	nop                                              ; $48e8: $00
	ld h, a                                          ; $48e9: $67
	ld hl, sp-$22                                    ; $48ea: $f8 $de
	ret nz                                           ; $48ec: $c0

	sbc [hl]                                         ; $48ed: $9e
	cp a                                             ; $48ee: $bf
	ld h, a                                          ; $48ef: $67
	ld e, l                                          ; $48f0: $5d
	sub a                                            ; $48f1: $97
	nop                                              ; $48f2: $00
	rst SubAFromDE                                          ; $48f3: $df
	pop hl                                           ; $48f4: $e1
	inc bc                                           ; $48f5: $03
	ld b, $04                                        ; $48f6: $06 $04
	inc b                                            ; $48f8: $04
	ld hl, sp+$77                                    ; $48f9: $f8 $77
	ld [de], a                                       ; $48fb: $12
	sbc $fe                                          ; $48fc: $de $fe
	adc h                                            ; $48fe: $8c
	db $fd                                           ; $48ff: $fd
	cp a                                             ; $4900: $bf
	ld [hl], b                                       ; $4901: $70
	cp b                                             ; $4902: $b8
	add sp, -$14                                     ; $4903: $e8 $ec
	ld c, h                                          ; $4905: $4c
	ldh a, [c]                                       ; $4906: $f2
	db $ed                                           ; $4907: $ed
	ld a, a                                          ; $4908: $7f
	cp a                                             ; $4909: $bf
	ld e, a                                          ; $490a: $5f
	rrca                                             ; $490b: $0f
	rrca                                             ; $490c: $0f
	rlca                                             ; $490d: $07
	rlca                                             ; $490e: $07
	inc de                                           ; $490f: $13
	sub l                                            ; $4910: $95
	ld a, [bc]                                       ; $4911: $0a
	ld d, b                                          ; $4912: $50
	reti                                             ; $4913: $d9


	sbc b                                            ; $4914: $98
	rst $38                                          ; $4915: $ff
	ld d, l                                          ; $4916: $55
	xor d                                            ; $4917: $aa
	dec d                                            ; $4918: $15
	ld a, [bc]                                       ; $4919: $0a
	dec b                                            ; $491a: $05
	ld [bc], a                                       ; $491b: $02
	ld [hl], a                                       ; $491c: $77
	or l                                             ; $491d: $b5
	db $db                                           ; $491e: $db
	rst $38                                          ; $491f: $ff
	adc a                                            ; $4920: $8f
	ld a, a                                          ; $4921: $7f
	call nc, $d768                                   ; $4922: $d4 $68 $d7
	ld h, a                                          ; $4925: $67
	rst JumpTable                                          ; $4926: $c7
	rst SubAFromBC                                          ; $4927: $e7
	rst JumpTable                                          ; $4928: $c7
	rst $38                                          ; $4929: $ff
	db $eb                                           ; $492a: $eb
	rst SubAFromHL                                          ; $492b: $d7
	add sp, -$28                                     ; $492c: $e8 $d8
	ld sp, hl                                        ; $492e: $f9
	reti                                             ; $492f: $d9


	ld sp, hl                                        ; $4930: $f9
	ld a, c                                          ; $4931: $79
	daa                                              ; $4932: $27
	ld a, a                                          ; $4933: $7f
	add e                                            ; $4934: $83
	sbc l                                            ; $4935: $9d
	cp $bf                                           ; $4936: $fe $bf
	ld [hl], a                                       ; $4938: $77
	ld h, d                                          ; $4939: $62
	ld [hl], e                                       ; $493a: $73
	adc a                                            ; $493b: $8f
	ld a, e                                          ; $493c: $7b
	push bc                                          ; $493d: $c5
	sbc d                                            ; $493e: $9a
	rlca                                             ; $493f: $07
	rst SubAFromBC                                          ; $4940: $e7
	daa                                              ; $4941: $27
	rst FarCall                                          ; $4942: $f7
	rst FarCall                                          ; $4943: $f7
	ld a, e                                          ; $4944: $7b
	or $9e                                           ; $4945: $f6 $9e
	rrca                                             ; $4947: $0f
	db $dd                                           ; $4948: $dd
	rst AddAOntoHL                                          ; $4949: $ef
	ld a, a                                          ; $494a: $7f
	ld e, l                                          ; $494b: $5d
	sbc h                                            ; $494c: $9c
	adc a                                            ; $494d: $8f
	ldh a, [$0d]                                     ; $494e: $f0 $0d
	db $dd                                           ; $4950: $dd
	rst $38                                          ; $4951: $ff
	sbc [hl]                                         ; $4952: $9e
	add b                                            ; $4953: $80
	ld a, d                                          ; $4954: $7a
	sbc e                                            ; $4955: $9b
	sbc $ff                                          ; $4956: $de $ff
	ld a, [hl]                                       ; $4958: $7e
	push af                                          ; $4959: $f5
	sub a                                            ; $495a: $97
	rst AddAOntoHL                                          ; $495b: $ef
	ld l, b                                          ; $495c: $68
	add sp, -$18                                     ; $495d: $e8 $e8
	rst AddAOntoHL                                          ; $495f: $ef
	add sp, -$20                                     ; $4960: $e8 $e0
	rra                                              ; $4962: $1f
	db $db                                           ; $4963: $db
	rst SubAFromDE                                          ; $4964: $df
	sbc b                                            ; $4965: $98
	ldh [rIF], a                                     ; $4966: $e0 $0f
	rst $38                                          ; $4968: $ff
	ld e, a                                          ; $4969: $5f
	db $fd                                           ; $496a: $fd
	rst $38                                          ; $496b: $ff
	rst JumpTable                                          ; $496c: $c7
	ld l, e                                          ; $496d: $6b
	ld h, d                                          ; $496e: $62
	sub h                                            ; $496f: $94
	ld hl, sp-$01                                    ; $4970: $f8 $ff
	ld e, [hl]                                       ; $4972: $5e
	ret nc                                           ; $4973: $d0

	ld d, b                                          ; $4974: $50
	ld d, b                                          ; $4975: $50
	ld d, e                                          ; $4976: $53
	ret nc                                           ; $4977: $d0

	rst SubAFromDE                                          ; $4978: $df

jr_043_4979:
	ld d, b                                          ; $4979: $50
	or c                                             ; $497a: $b1
	sbc $bf                                          ; $497b: $de $bf
	add e                                            ; $497d: $83
	cp h                                             ; $497e: $bc
	cp a                                             ; $497f: $bf
	ccf                                              ; $4980: $3f
	cp a                                             ; $4981: $bf
	ldh a, [$e0]                                     ; $4982: $f0 $e0
	add b                                            ; $4984: $80
	ld b, b                                          ; $4985: $40
	ret c                                            ; $4986: $d8

	sub b                                            ; $4987: $90
	sub l                                            ; $4988: $95
	and l                                            ; $4989: $a5
	ld b, $0e                                        ; $498a: $06 $0e
	rra                                              ; $498c: $1f
	dec sp                                           ; $498d: $3b
	daa                                              ; $498e: $27
	ld l, c                                          ; $498f: $69
	ld l, d                                          ; $4990: $6a
	ld e, d                                          ; $4991: $5a
	ldh [$c0], a                                     ; $4992: $e0 $c0
	jr nz, jr_043_4979                               ; $4994: $20 $e3

	db $fc                                           ; $4996: $fc
	and b                                            ; $4997: $a0
	add b                                            ; $4998: $80
	adc b                                            ; $4999: $88
	ld a, d                                          ; $499a: $7a
	call nc, $3fdf                                   ; $499b: $d4 $df $3f
	sub h                                            ; $499e: $94
	rra                                              ; $499f: $1f
	ld [hl], a                                       ; $49a0: $77
	ld [hl], a                                       ; $49a1: $77
	rst $38                                          ; $49a2: $ff
	db $fc                                           ; $49a3: $fc
	ccf                                              ; $49a4: $3f
	add $86                                          ; $49a5: $c6 $86
	add [hl]                                         ; $49a7: $86
	add a                                            ; $49a8: $87
	add [hl]                                         ; $49a9: $86
	ld [hl], e                                       ; $49aa: $73
	add e                                            ; $49ab: $83
	ld [hl], c                                       ; $49ac: $71
	ld l, $7b                                        ; $49ad: $2e $7b
	ld b, $9c                                        ; $49af: $06 $9c
	nop                                              ; $49b1: $00
	db $fd                                           ; $49b2: $fd
	ld bc, $4e67                                     ; $49b3: $01 $67 $4e
	adc a                                            ; $49b6: $8f
	db $fc                                           ; $49b7: $fc
	sub c                                            ; $49b8: $91
	inc l                                            ; $49b9: $2c
	ld c, a                                          ; $49ba: $4f
	sub d                                            ; $49bb: $92
	ld a, a                                          ; $49bc: $7f
	and a                                            ; $49bd: $a7
	ei                                               ; $49be: $fb
	rst $38                                          ; $49bf: $ff
	xor $df                                          ; $49c0: $ee $df
	or [hl]                                          ; $49c2: $b6
	ld a, a                                          ; $49c3: $7f
	sbc d                                            ; $49c4: $9a
	rst SubAFromDE                                          ; $49c5: $df
	inc b                                            ; $49c6: $04
	ld [hl], l                                       ; $49c7: $75
	ld l, h                                          ; $49c8: $6c
	ld a, a                                          ; $49c9: $7f
	cp $7f                                           ; $49ca: $fe $7f
	ld [hl], d                                       ; $49cc: $72
	ld a, e                                          ; $49cd: $7b
	ld [hl], $9d                                     ; $49ce: $36 $9d
	cp a                                             ; $49d0: $bf
	ld a, a                                          ; $49d1: $7f
	ld a, e                                          ; $49d2: $7b
	ld c, c                                          ; $49d3: $49
	ld [hl], c                                       ; $49d4: $71
	add a                                            ; $49d5: $87
	sbc h                                            ; $49d6: $9c
	inc bc                                           ; $49d7: $03
	rst FarCall                                          ; $49d8: $f7
	ld a, [bc]                                       ; $49d9: $0a
	ld l, [hl]                                       ; $49da: $6e
	inc b                                            ; $49db: $04
	add l                                            ; $49dc: $85
	db $fd                                           ; $49dd: $fd
	db $fc                                           ; $49de: $fc
	ld e, a                                          ; $49df: $5f
	and l                                            ; $49e0: $a5
	ld l, e                                          ; $49e1: $6b
	sub d                                            ; $49e2: $92
	inc [hl]                                         ; $49e3: $34
	db $ed                                           ; $49e4: $ed
	sub d                                            ; $49e5: $92
	add a                                            ; $49e6: $87
	di                                               ; $49e7: $f3
	rst $38                                          ; $49e8: $ff
	rst $38                                          ; $49e9: $ff
	rst AddAOntoHL                                          ; $49ea: $ef
	rst GetHLinHL                                          ; $49eb: $cf
	ccf                                              ; $49ec: $3f
	ld a, a                                          ; $49ed: $7f
	reti                                             ; $49ee: $d9


	cp b                                             ; $49ef: $b8
	cp b                                             ; $49f0: $b8
	ld hl, sp-$08                                    ; $49f1: $f8 $f8
	cp b                                             ; $49f3: $b8
	ld hl, sp-$48                                    ; $49f4: $f8 $b8
	cp b                                             ; $49f6: $b8
	reti                                             ; $49f7: $d9


	rst $38                                          ; $49f8: $ff
	add a                                            ; $49f9: $87
	cp e                                             ; $49fa: $bb
	ld [hl], d                                       ; $49fb: $72
	and c                                            ; $49fc: $a1
	ld h, h                                          ; $49fd: $64
	or b                                             ; $49fe: $b0
	ld d, c                                          ; $49ff: $51
	and b                                            ; $4a00: $a0
	ld [hl], b                                       ; $4a01: $70
	ld sp, hl                                        ; $4a02: $f9
	ld sp, hl                                        ; $4a03: $f9
	di                                               ; $4a04: $f3
	di                                               ; $4a05: $f3
	ldh a, [$f8]                                     ; $4a06: $f0 $f8
	pop af                                           ; $4a08: $f1
	pop hl                                           ; $4a09: $e1
	ld d, b                                          ; $4a0a: $50
	ld h, $10                                        ; $4a0b: $26 $10
	sub e                                            ; $4a0d: $93
	add d                                            ; $4a0e: $82
	ld c, d                                          ; $4a0f: $4a
	ld d, l                                          ; $4a10: $55
	db $dd                                           ; $4a11: $dd
	ld a, e                                          ; $4a12: $7b
	or l                                             ; $4a13: $b5
	rst SubAFromDE                                          ; $4a14: $df
	ld a, a                                          ; $4a15: $7f
	sbc e                                            ; $4a16: $9b
	push af                                          ; $4a17: $f5
	ld a, [hl+]                                      ; $4a18: $2a
	nop                                              ; $4a19: $00

jr_043_4a1a:
	adc h                                            ; $4a1a: $8c
	db $db                                           ; $4a1b: $db
	ld b, b                                          ; $4a1c: $40
	sbc [hl]                                         ; $4a1d: $9e
	ld c, b                                          ; $4a1e: $48
	jp c, $9dff                                      ; $4a1f: $da $ff $9d

	rst FarCall                                          ; $4a22: $f7
	ccf                                              ; $4a23: $3f
	ld a, [$ffd9]                                    ; $4a24: $fa $d9 $ff
	sub [hl]                                         ; $4a27: $96
	rst SubAFromBC                                          ; $4a28: $e7
	ld b, e                                          ; $4a29: $43
	ld h, a                                          ; $4a2a: $67
	ld b, e                                          ; $4a2b: $43
	ld h, e                                          ; $4a2c: $63
	ld b, d                                          ; $4a2d: $42
	ld h, a                                          ; $4a2e: $67
	ld b, e                                          ; $4a2f: $43
	reti                                             ; $4a30: $d9


	ld a, d                                          ; $4a31: $7a
	call nz, $fe77                                   ; $4a32: $c4 $77 $fe
	ld a, h                                          ; $4a35: $7c
	adc a                                            ; $4a36: $8f
	ld l, c                                          ; $4a37: $69
	cp e                                             ; $4a38: $bb
	ld [hl], e                                       ; $4a39: $73
	ld d, e                                          ; $4a3a: $53
	rst SubAFromDE                                          ; $4a3b: $df
	rst $38                                          ; $4a3c: $ff
	sub a                                            ; $4a3d: $97
	db $f4                                           ; $4a3e: $f4
	rst FarCall                                          ; $4a3f: $f7
	db $f4                                           ; $4a40: $f4
	rst FarCall                                          ; $4a41: $f7
	rst FarCall                                          ; $4a42: $f7
	or $f4                                           ; $4a43: $f6 $f4
	and $dc                                          ; $4a45: $e6 $dc
	rst AddAOntoHL                                          ; $4a47: $ef
	sbc c                                            ; $4a48: $99
	dec c                                            ; $4a49: $0d
	rst AddAOntoHL                                          ; $4a4a: $ef
	db $ed                                           ; $4a4b: $ed
	nop                                              ; $4a4c: $00
	ld a, [hl]                                       ; $4a4d: $7e
	nop                                              ; $4a4e: $00
	ld [hl], l                                       ; $4a4f: $75
	res 3, [hl]                                      ; $4a50: $cb $9e
	dec b                                            ; $4a52: $05
	jp c, $9eff                                      ; $4a53: $da $ff $9e

	ld a, [$68de]                                    ; $4a56: $fa $de $68
	ld a, [hl]                                       ; $4a59: $7e
	cp a                                             ; $4a5a: $bf
	sbc h                                            ; $4a5b: $9c
	ld l, [hl]                                       ; $4a5c: $6e
	ld l, l                                          ; $4a5d: $6d
	db $ec                                           ; $4a5e: $ec
	call c, $9cdf                                    ; $4a5f: $dc $df $9c
	reti                                             ; $4a62: $d9


	rst SubAFromDE                                          ; $4a63: $df
	ld e, a                                          ; $4a64: $5f
	ld a, d                                          ; $4a65: $7a
	jr z, jr_043_4add                                ; $4a66: $28 $75

	xor h                                            ; $4a68: $ac
	ld h, l                                          ; $4a69: $65
	ld h, c                                          ; $4a6a: $61
	sbc [hl]                                         ; $4a6b: $9e
	ldh a, [$dd]                                     ; $4a6c: $f0 $dd
	ld d, b                                          ; $4a6e: $50
	sbc e                                            ; $4a6f: $9b
	ld e, a                                          ; $4a70: $5f
	ld d, b                                          ; $4a71: $50
	ld d, b                                          ; $4a72: $50
	ret c                                            ; $4a73: $d8

	jp c, $93bf                                      ; $4a74: $da $bf $93

	scf                                              ; $4a77: $37
	jr z, jr_043_4a1a                                ; $4a78: $28 $a0

	ld bc, $92b8                                     ; $4a7a: $01 $b8 $92
	ld b, b                                          ; $4a7d: $40
	nop                                              ; $4a7e: $00
	adc a                                            ; $4a7f: $8f
	ld d, a                                          ; $4a80: $57
	rrca                                             ; $4a81: $0f
	ld e, h                                          ; $4a82: $5c
	ld a, e                                          ; $4a83: $7b
	inc b                                            ; $4a84: $04
	ld a, a                                          ; $4a85: $7f
	db $d3                                           ; $4a86: $d3
	ld a, l                                          ; $4a87: $7d
	and e                                            ; $4a88: $a3
	sub c                                            ; $4a89: $91
	ld [hl], b                                       ; $4a8a: $70
	ld a, [$2215]                                    ; $4a8b: $fa $15 $22
	dec b                                            ; $4a8e: $05
	jp nz, $c7e7                                     ; $4a8f: $c2 $e7 $c7

	rlca                                             ; $4a92: $07
	dec b                                            ; $4a93: $05
	ld [bc], a                                       ; $4a94: $02
	dec b                                            ; $4a95: $05
	ld [bc], a                                       ; $4a96: $02
	push bc                                          ; $4a97: $c5
	sbc $86                                          ; $4a98: $de $86
	sbc [hl]                                         ; $4a9a: $9e
	add h                                            ; $4a9b: $84
	ld a, e                                          ; $4a9c: $7b
	cp $9e                                           ; $4a9d: $fe $9e
	add l                                            ; $4a9f: $85
	call c, $dfff                                    ; $4aa0: $dc $ff $df
	cp a                                             ; $4aa3: $bf
	sub [hl]                                         ; $4aa4: $96
	sbc [hl]                                         ; $4aa5: $9e
	ld bc, $0301                                     ; $4aa6: $01 $01 $03
	ld [bc], a                                       ; $4aa9: $02
	ld [bc], a                                       ; $4aaa: $02
	inc bc                                           ; $4aab: $03
	nop                                              ; $4aac: $00
	ld b, b                                          ; $4aad: $40
	ld l, [hl]                                       ; $4aae: $6e
	ldh a, [$7f]                                     ; $4aaf: $f0 $7f
	xor $92                                          ; $4ab1: $ee $92
	ld c, [hl]                                       ; $4ab3: $4e
	ld [hl], $7c                                     ; $4ab4: $36 $7c
	ld c, h                                          ; $4ab6: $4c
	jp $f35f                                         ; $4ab7: $c3 $5f $f3


	rlca                                             ; $4aba: $07
	or c                                             ; $4abb: $b1
	add c                                            ; $4abc: $81
	adc l                                            ; $4abd: $8d
	add c                                            ; $4abe: $81
	ld bc, $0479                                     ; $4abf: $01 $79 $04
	sub a                                            ; $4ac2: $97
	add b                                            ; $4ac3: $80
	cp a                                             ; $4ac4: $bf
	xor c                                            ; $4ac5: $a9
	cp [hl]                                          ; $4ac6: $be
	add d                                            ; $4ac7: $82
	pop bc                                           ; $4ac8: $c1
	ei                                               ; $4ac9: $fb
	ldh a, [$7b]                                     ; $4aca: $f0 $7b
	dec h                                            ; $4acc: $25
	sub b                                            ; $4acd: $90
	pop bc                                           ; $4ace: $c1
	db $fd                                           ; $4acf: $fd
	cp $fc                                           ; $4ad0: $fe $fc
	rst $38                                          ; $4ad2: $ff
	inc c                                            ; $4ad3: $0c
	add sp, -$08                                     ; $4ad4: $e8 $f8
	cp $3f                                           ; $4ad6: $fe $3f
	rst AddAOntoHL                                          ; $4ad8: $ef
	ld a, $7c                                        ; $4ad9: $3e $7c
	ld hl, sp-$08                                    ; $4adb: $f8 $f8

jr_043_4add:
	ld a, c                                          ; $4add: $79
	ld [hl-], a                                      ; $4ade: $32
	ld a, [hl]                                       ; $4adf: $7e
	dec sp                                           ; $4ae0: $3b
	add [hl]                                         ; $4ae1: $86
	cp $82                                           ; $4ae2: $fe $82
	ld h, l                                          ; $4ae4: $65
	dec de                                           ; $4ae5: $1b
	dec h                                            ; $4ae6: $25
	inc bc                                           ; $4ae7: $03
	jp $feeb                                         ; $4ae8: $c3 $eb $fe


	ld e, l                                          ; $4aeb: $5d
	ld a, [bc]                                       ; $4aec: $0a
	inc b                                            ; $4aed: $04
	ld bc, $e56d                                     ; $4aee: $01 $6d $e5
	pop af                                           ; $4af1: $f1
	rst $38                                          ; $4af2: $ff
	ret c                                            ; $4af3: $d8

	ret z                                            ; $4af4: $c8

	ret z                                            ; $4af5: $c8

	ld e, b                                          ; $4af6: $58
	ld d, c                                          ; $4af7: $51
	db $10                                           ; $4af8: $10
	jr nc, jr_043_4b2b                               ; $4af9: $30 $30

	ld l, a                                          ; $4afb: $6f
	or c                                             ; $4afc: $b1
	rst SubAFromDE                                          ; $4afd: $df
	rst $38                                          ; $4afe: $ff

Call_043_4aff:
	add b                                            ; $4aff: $80
	ld h, $37                                        ; $4b00: $26 $37
	inc de                                           ; $4b02: $13
	and h                                            ; $4b03: $a4
	ld d, a                                          ; $4b04: $57
	and d                                            ; $4b05: $a2
	ld d, l                                          ; $4b06: $55
	and d                                            ; $4b07: $a2
	pop af                                           ; $4b08: $f1
	ld hl, sp-$08                                    ; $4b09: $f8 $f8
	ld d, c                                          ; $4b0b: $51
	and a                                            ; $4b0c: $a7
	ld d, l                                          ; $4b0d: $55
	and d                                            ; $4b0e: $a2
	ld d, l                                          ; $4b0f: $55
	dec de                                           ; $4b10: $1b
	nop                                              ; $4b11: $00
	ld b, a                                          ; $4b12: $47
	ld l, e                                          ; $4b13: $6b
	adc $ba                                          ; $4b14: $ce $ba
	ld d, l                                          ; $4b16: $55
	xor d                                            ; $4b17: $aa
	ld c, b                                          ; $4b18: $48
	ld bc, $8783                                     ; $4b19: $01 $83 $87
	rst $38                                          ; $4b1c: $ff
	ld a, l                                          ; $4b1d: $7d
	xor d                                            ; $4b1e: $aa
	adc e                                            ; $4b1f: $8b
	ld d, l                                          ; $4b20: $55
	ld b, h                                          ; $4b21: $44
	add d                                            ; $4b22: $82
	dec b                                            ; $4b23: $05
	adc d                                            ; $4b24: $8a
	ld d, h                                          ; $4b25: $54
	and b                                            ; $4b26: $a0
	ld d, b                                          ; $4b27: $50
	add b                                            ; $4b28: $80
	ei                                               ; $4b29: $fb
	db $fd                                           ; $4b2a: $fd

jr_043_4b2b:
	ld a, [$ab75]                                    ; $4b2b: $fa $75 $ab
	ld e, a                                          ; $4b2e: $5f
	xor a                                            ; $4b2f: $af
	ld a, a                                          ; $4b30: $7f
	nop                                              ; $4b31: $00
	nop                                              ; $4b32: $00
	ld [bc], a                                       ; $4b33: $02
	halt                                             ; $4b34: $76
	ld e, [hl]                                       ; $4b35: $5e
	ld h, d                                          ; $4b36: $62
	ret nz                                           ; $4b37: $c0

	sub a                                            ; $4b38: $97
	ld h, e                                          ; $4b39: $63
	ld b, e                                          ; $4b3a: $43
	db $e3                                           ; $4b3b: $e3
	ld b, e                                          ; $4b3c: $43
	ld h, e                                          ; $4b3d: $63
	jp $d363                                         ; $4b3e: $c3 $63 $d3


	ld l, d                                          ; $4b41: $6a
	ret nz                                           ; $4b42: $c0

	sbc l                                            ; $4b43: $9d
	jp hl                                            ; $4b44: $e9


	cp [hl]                                          ; $4b45: $be
	sbc $ff                                          ; $4b46: $de $ff
	sbc l                                            ; $4b48: $9d
	rrca                                             ; $4b49: $0f
	nop                                              ; $4b4a: $00
	ld [hl], h                                       ; $4b4b: $74
	or b                                             ; $4b4c: $b0
	ld a, e                                          ; $4b4d: $7b

jr_043_4b4e:
	inc bc                                           ; $4b4e: $03
	sbc $ff                                          ; $4b4f: $de $ff
	sub a                                            ; $4b51: $97
	rlca                                             ; $4b52: $07
	db $e4                                           ; $4b53: $e4
	db $f4                                           ; $4b54: $f4
	di                                               ; $4b55: $f3
	rst FarCall                                          ; $4b56: $f7
	rla                                              ; $4b57: $17
	rla                                              ; $4b58: $17
	rlca                                             ; $4b59: $07
	db $dd                                           ; $4b5a: $dd
	rst AddAOntoHL                                          ; $4b5b: $ef
	ld [hl], l                                       ; $4b5c: $75
	ld a, a                                          ; $4b5d: $7f
	ld a, l                                          ; $4b5e: $7d
	add hl, hl                                       ; $4b5f: $29
	sbc d                                            ; $4b60: $9a
	rst SubAFromDE                                          ; $4b61: $df
	cp [hl]                                          ; $4b62: $be
	rst AddAOntoHL                                          ; $4b63: $ef
	rst GetHLinHL                                          ; $4b64: $cf
	rst SubAFromBC                                          ; $4b65: $e7
	ld [hl], e                                       ; $4b66: $73
	ldh [$9a], a                                     ; $4b67: $e0 $9a
	cp $e7                                           ; $4b69: $fe $e7
	jp $e881                                         ; $4b6b: $c3 $81 $e8


	ld a, c                                          ; $4b6e: $79
	ld a, l                                          ; $4b6f: $7d
	sub [hl]                                         ; $4b70: $96
	ld a, a                                          ; $4b71: $7f
	rrca                                             ; $4b72: $0f
	rst $38                                          ; $4b73: $ff

jr_043_4b74:
	ld a, a                                          ; $4b74: $7f
	rst SubAFromDE                                          ; $4b75: $df
	ld hl, sp-$02                                    ; $4b76: $f8 $fe
	ei                                               ; $4b78: $fb
	adc c                                            ; $4b79: $89
	ld a, c                                          ; $4b7a: $79
	ld e, d                                          ; $4b7b: $5a
	sub [hl]                                         ; $4b7c: $96
	jr jr_043_4b74                                   ; $4b7d: $18 $f5

	nop                                              ; $4b7f: $00
	add b                                            ; $4b80: $80
	nop                                              ; $4b81: $00
	rst $38                                          ; $4b82: $ff
	ld a, b                                          ; $4b83: $78
	add b                                            ; $4b84: $80
	rst SubAFromBC                                          ; $4b85: $e7
	ld a, d                                          ; $4b86: $7a
	ld b, b                                          ; $4b87: $40
	rst SubAFromDE                                          ; $4b88: $df
	rst $38                                          ; $4b89: $ff
	ld a, a                                          ; $4b8a: $7f
	ld a, l                                          ; $4b8b: $7d
	ld a, a                                          ; $4b8c: $7f
	pop de                                           ; $4b8d: $d1
	sbc $50                                          ; $4b8e: $de $50
	ld a, [hl]                                       ; $4b90: $7e
	xor c                                            ; $4b91: $a9
	sbc l                                            ; $4b92: $9d
	ld d, b                                          ; $4b93: $50
	or b                                             ; $4b94: $b0
	call c, Call_043_7fbf                            ; $4b95: $dc $bf $7f
	ld a, [$d883]                                    ; $4b98: $fa $83 $d8
	or c                                             ; $4b9b: $b1
	ccf                                              ; $4b9c: $3f
	ld b, a                                          ; $4b9d: $47
	db $fd                                           ; $4b9e: $fd
	ld a, e                                          ; $4b9f: $7b
	jr jr_043_4b4e                                   ; $4ba0: $18 $ac

	ccf                                              ; $4ba2: $3f
	ld a, a                                          ; $4ba3: $7f
	rrca                                             ; $4ba4: $0f
	add d                                            ; $4ba5: $82
	and $fc                                          ; $4ba6: $e6 $fc
	rst $38                                          ; $4ba8: $ff
	ld e, a                                          ; $4ba9: $5f
	ldh a, [c]                                       ; $4baa: $f2
	dec bc                                           ; $4bab: $0b
	and $9b                                          ; $4bac: $e6 $9b
	rst GetHLinHL                                          ; $4bae: $cf
	adc a                                            ; $4baf: $8f
	ld a, e                                          ; $4bb0: $7b
	scf                                              ; $4bb1: $37
	ld hl, sp-$04                                    ; $4bb2: $f8 $fc
	rst $38                                          ; $4bb4: $ff
	ld a, a                                          ; $4bb5: $7f
	ld a, b                                          ; $4bb6: $78
	cp l                                             ; $4bb7: $bd
	sub c                                            ; $4bb8: $91
	ld sp, hl                                        ; $4bb9: $f9
	add h                                            ; $4bba: $84
	add a                                            ; $4bbb: $87
	add h                                            ; $4bbc: $84
	ld b, l                                          ; $4bbd: $45
	push hl                                          ; $4bbe: $e5
	push bc                                          ; $4bbf: $c5
	rst SubAFromBC                                          ; $4bc0: $e7
	db $e4                                           ; $4bc1: $e4
	sbc a                                            ; $4bc2: $9f
	adc [hl]                                         ; $4bc3: $8e
	rrca                                             ; $4bc4: $0f
	add [hl]                                         ; $4bc5: $86
	add $de                                          ; $4bc6: $c6 $de
	and $7f                                          ; $4bc8: $e6 $7f
	ld b, l                                          ; $4bca: $45
	sub c                                            ; $4bcb: $91
	xor b                                            ; $4bcc: $a8
	ld d, l                                          ; $4bcd: $55
	xor d                                            ; $4bce: $aa
	push de                                          ; $4bcf: $d5
	ld [$5ff5], a                                    ; $4bd0: $ea $f5 $5f
	xor a                                            ; $4bd3: $af
	ld d, a                                          ; $4bd4: $57
	xor d                                            ; $4bd5: $aa
	ld d, l                                          ; $4bd6: $55
	ld a, [hl+]                                      ; $4bd7: $2a
	dec d                                            ; $4bd8: $15
	ld a, [bc]                                       ; $4bd9: $0a
	db $dd                                           ; $4bda: $dd
	rlca                                             ; $4bdb: $07
	sbc e                                            ; $4bdc: $9b
	add a                                            ; $4bdd: $87
	ld d, a                                          ; $4bde: $57
	xor e                                            ; $4bdf: $ab
	ld b, h                                          ; $4be0: $44
	ld [hl], b                                       ; $4be1: $70
	call nz, $ec7f                                   ; $4be2: $c4 $7f $ec
	sbc l                                            ; $4be5: $9d
	cp [hl]                                          ; $4be6: $be
	or $62                                           ; $4be7: $f6 $62
	ld d, $dc                                        ; $4be9: $16 $dc
	rst $38                                          ; $4beb: $ff
	add d                                            ; $4bec: $82
	ld a, $fc                                        ; $4bed: $3e $fc
	cp $fc                                           ; $4bef: $fe $fc
	ldh a, [$c8]                                     ; $4bf1: $f0 $c8
	ret nc                                           ; $4bf3: $d0

	sub c                                            ; $4bf4: $91
	ld hl, $fcfe                                     ; $4bf5: $21 $fe $fc
	db $fc                                           ; $4bf8: $fc
	db $ed                                           ; $4bf9: $ed
	pop bc                                           ; $4bfa: $c1
	add c                                            ; $4bfb: $81
	ld bc, $c803                                     ; $4bfc: $01 $03 $c8
	sub l                                            ; $4bff: $95
	ld [$2ad5], a                                    ; $4c00: $ea $d5 $2a
	ld d, l                                          ; $4c03: $55
	ld a, [hl+]                                      ; $4c04: $2a
	ld d, a                                          ; $4c05: $57
	rst FarCall                                          ; $4c06: $f7
	ld [$aad5], a                                    ; $4c07: $ea $d5 $aa
	ld a, e                                          ; $4c0a: $7b
	cp $99                                           ; $4c0b: $fe $99
	xor b                                            ; $4c0d: $a8
	dec [hl]                                         ; $4c0e: $35
	ld a, d                                          ; $4c0f: $7a
	or l                                             ; $4c10: $b5
	ld a, e                                          ; $4c11: $7b
	or a                                             ; $4c12: $b7
	ld a, e                                          ; $4c13: $7b
	ld h, [hl]                                       ; $4c14: $66
	sub h                                            ; $4c15: $94
	ld a, [$7ab5]                                    ; $4c16: $fa $b5 $7a
	or h                                             ; $4c19: $b4
	ld a, b                                          ; $4c1a: $78
	or b                                             ; $4c1b: $b0
	jr nc, jr_043_4c4e                               ; $4c1c: $30 $30

	ld d, l                                          ; $4c1e: $55
	or [hl]                                          ; $4c1f: $b6
	ld [hl], a                                       ; $4c20: $77
	call c, $9cf7                                    ; $4c21: $dc $f7 $9c
	and d                                            ; $4c24: $a2
	ld b, c                                          ; $4c25: $41
	add b                                            ; $4c26: $80
	db $fc                                           ; $4c27: $fc
	ld [hl], e                                       ; $4c28: $73
	sub e                                            ; $4c29: $93
	sbc h                                            ; $4c2a: $9c
	ld a, [$fafd]                                    ; $4c2b: $fa $fd $fa
	ld [hl], e                                       ; $4c2e: $73
	sub e                                            ; $4c2f: $93
	ld a, d                                          ; $4c30: $7a
	ld l, $71                                        ; $4c31: $2e $71
	ld hl, $e57f                                     ; $4c33: $21 $7f $e5
	ld a, l                                          ; $4c36: $7d
	jr nz, @+$77                                     ; $4c37: $20 $75

	ld hl, $c87f                                     ; $4c39: $21 $7f $c8
	sbc l                                            ; $4c3c: $9d
	ld a, a                                          ; $4c3d: $7f
	ld bc, $bf7a                                     ; $4c3e: $01 $7a $bf
	halt                                             ; $4c41: $76
	rla                                              ; $4c42: $17
	ld h, d                                          ; $4c43: $62
	ret nz                                           ; $4c44: $c0

	sbc [hl]                                         ; $4c45: $9e
	db $d3                                           ; $4c46: $d3
	ld [hl], a                                       ; $4c47: $77
	cp $9b                                           ; $4c48: $fe $9b
	ld l, e                                          ; $4c4a: $6b
	db $d3                                           ; $4c4b: $d3
	reti                                             ; $4c4c: $d9


	jp hl                                            ; $4c4d: $e9


jr_043_4c4e:
	ld [hl], a                                       ; $4c4e: $77
	cp $9d                                           ; $4c4f: $fe $9d
	pop de                                           ; $4c51: $d1
	jp hl                                            ; $4c52: $e9


	ld a, d                                          ; $4c53: $7a
	pop af                                           ; $4c54: $f1
	sbc [hl]                                         ; $4c55: $9e
	rlca                                             ; $4c56: $07
	cp $7b                                           ; $4c57: $fe $7b
	ld [hl], b                                       ; $4c59: $70
	ld [hl], d                                       ; $4c5a: $72
	db $dd                                           ; $4c5b: $dd
	sub [hl]                                         ; $4c5c: $96
	rst $38                                          ; $4c5d: $ff
	jp $e5c7                                         ; $4c5e: $c3 $c7 $e5


	db $e4                                           ; $4c61: $e4
	inc b                                            ; $4c62: $04
	rla                                              ; $4c63: $17
	dec d                                            ; $4c64: $15
	inc d                                            ; $4c65: $14
	ld l, [hl]                                       ; $4c66: $6e
	jp nz, $efdf                                     ; $4c67: $c2 $df $ef

	add b                                            ; $4c6a: $80
	sub $d2                                          ; $4c6b: $d6 $d2
	or c                                             ; $4c6d: $b1
	ret nc                                           ; $4c6e: $d0

	jp z, $f1e4                                      ; $4c6f: $ca $e4 $f1

	rst $38                                          ; $4c72: $ff
	and c                                            ; $4c73: $a1
	and c                                            ; $4c74: $a1
	add b                                            ; $4c75: $80
	add b                                            ; $4c76: $80
	call nz, $e0c0                                   ; $4c77: $c4 $c0 $e0
	db $f4                                           ; $4c7a: $f4
	rst $38                                          ; $4c7b: $ff
	sbc a                                            ; $4c7c: $9f
	scf                                              ; $4c7d: $37
	scf                                              ; $4c7e: $37

Call_043_4c7f:
	ccf                                              ; $4c7f: $3f
	ld e, a                                          ; $4c80: $5f
	sbc a                                            ; $4c81: $9f
	dec sp                                           ; $4c82: $3b
	ccf                                              ; $4c83: $3f
	scf                                              ; $4c84: $37
	inc de                                           ; $4c85: $13
	rla                                              ; $4c86: $17
	rra                                              ; $4c87: $1f
	ccf                                              ; $4c88: $3f
	ld a, e                                          ; $4c89: $7b
	sub l                                            ; $4c8a: $95
	ret c                                            ; $4c8b: $d8

	and b                                            ; $4c8c: $a0
	add b                                            ; $4c8d: $80
	rst $38                                          ; $4c8e: $ff
	db $fc                                           ; $4c8f: $fc
	ret nz                                           ; $4c90: $c0

	ret nc                                           ; $4c91: $d0

	ret nz                                           ; $4c92: $c0

	rst $38                                          ; $4c93: $ff
	rst SubAFromDE                                          ; $4c94: $df
	ld a, e                                          ; $4c95: $7b
	push bc                                          ; $4c96: $c5
	ld a, h                                          ; $4c97: $7c
	adc $df                                          ; $4c98: $ce $df
	rst $38                                          ; $4c9a: $ff
	ld a, d                                          ; $4c9b: $7a
	jp Jump_043_5c9d                                 ; $4c9c: $c3 $9d $5c


	ld d, e                                          ; $4c9f: $53
	ld a, c                                          ; $4ca0: $79
	ld a, l                                          ; $4ca1: $7d
	sbc $bf                                          ; $4ca2: $de $bf
	sbc l                                            ; $4ca4: $9d
	or e                                             ; $4ca5: $b3
	cp h                                             ; $4ca6: $bc
	sbc $bf                                          ; $4ca7: $de $bf
	add b                                            ; $4ca9: $80
	ld [hl], d                                       ; $4caa: $72
	db $db                                           ; $4cab: $db
	ld a, [$b6d7]                                    ; $4cac: $fa $d7 $b6
	cpl                                              ; $4caf: $2f
	rra                                              ; $4cb0: $1f
	ld a, [hl]                                       ; $4cb1: $7e
	rst SubAFromDE                                          ; $4cb2: $df
	and a                                            ; $4cb3: $a7
	daa                                              ; $4cb4: $27
	ld l, [hl]                                       ; $4cb5: $6e
	adc $dc                                          ; $4cb6: $ce $dc
	db $fc                                           ; $4cb8: $fc
	db $fd                                           ; $4cb9: $fd
	ld sp, hl                                        ; $4cba: $f9
	db $e3                                           ; $4cbb: $e3
	ld b, a                                          ; $4cbc: $47
	adc c                                            ; $4cbd: $89
	ld bc, $a111                                     ; $4cbe: $01 $11 $a1
	pop bc                                           ; $4cc1: $c1
	jp $0383                                         ; $4cc2: $c3 $83 $03


	dec b                                            ; $4cc5: $05
	dec bc                                           ; $4cc6: $0b
	dec c                                            ; $4cc7: $0d
	dec de                                           ; $4cc8: $1b
	sub d                                            ; $4cc9: $92
	dec l                                            ; $4cca: $2d
	call $8fcc                                       ; $4ccb: $cd $cc $8f
	inc c                                            ; $4cce: $0c
	rrca                                             ; $4ccf: $0f
	inc c                                            ; $4cd0: $0c
	dec c                                            ; $4cd1: $0d
	ld c, $e6                                        ; $4cd2: $0e $e6
	add $c6                                          ; $4cd4: $c6 $c6
	add [hl]                                         ; $4cd6: $86
	db $dd                                           ; $4cd7: $dd
	ld b, $97                                        ; $4cd8: $06 $97
	ld l, d                                          ; $4cda: $6a
	or l                                             ; $4cdb: $b5
	ld e, d                                          ; $4cdc: $5a
	xor h                                            ; $4cdd: $ac

Call_043_4cde:
	ld e, b                                          ; $4cde: $58
	and e                                            ; $4cdf: $a3
	ld c, a                                          ; $4ce0: $4f
	cp a                                             ; $4ce1: $bf
	ld a, e                                          ; $4ce2: $7b
	inc sp                                           ; $4ce3: $33
	add d                                            ; $4ce4: $82
	inc bc                                           ; $4ce5: $03
	rrca                                             ; $4ce6: $0f
	inc e                                            ; $4ce7: $1c
	jr nc, jr_043_4d4a                               ; $4ce8: $30 $60

	sbc h                                            ; $4cea: $9c
	ld [hl], c                                       ; $4ceb: $71
	ld a, [hl]                                       ; $4cec: $7e
	db $e3                                           ; $4ced: $e3
	db $fc                                           ; $4cee: $fc
	rst AddAOntoHL                                          ; $4cef: $ef
	rst SubAFromDE                                          ; $4cf0: $df
	sbc a                                            ; $4cf1: $9f
	ld a, b                                          ; $4cf2: $78
	cp [hl]                                          ; $4cf3: $be
	pop hl                                           ; $4cf4: $e1
	call c, $1003                                    ; $4cf5: $dc $03 $10

Call_043_4cf8:
	jr nz, @+$62                                     ; $4cf8: $20 $60

	jr jr_043_4cfc                                   ; $4cfa: $18 $00

jr_043_4cfc:
	ret nz                                           ; $4cfc: $c0

	ld hl, sp+$6e                                    ; $4cfd: $f8 $6e
	sbc a                                            ; $4cff: $9f
	rst SubAFromBC                                          ; $4d00: $e7
	ld hl, sp+$7a                                    ; $4d01: $f8 $7a
	dec c                                            ; $4d03: $0d
	sub h                                            ; $4d04: $94
	jr nc, @-$62                                     ; $4d05: $30 $9c

	ld a, a                                          ; $4d07: $7f
	rra                                              ; $4d08: $1f
	rlca                                             ; $4d09: $07
	ld [bc], a                                       ; $4d0a: $02
	dec b                                            ; $4d0b: $05
	rlca                                             ; $4d0c: $07
	rst SubAFromDE                                          ; $4d0d: $df
	rst AddAOntoHL                                          ; $4d0e: $ef
	sbc a                                            ; $4d0f: $9f
	ld a, d                                          ; $4d10: $7a
	ld [$068f], sp                                   ; $4d11: $08 $8f $06
	inc c                                            ; $4d14: $0c
	inc c                                            ; $4d15: $0c
	jr nc, jr_043_4d38                               ; $4d16: $30 $20

	ldh [$f0], a                                     ; $4d18: $e0 $f0
	cp [hl]                                          ; $4d1a: $be
	db $fd                                           ; $4d1b: $fd
	cp $f5                                           ; $4d1c: $fe $f5
	jp c, $aaf5                                      ; $4d1e: $da $f5 $aa

	ld d, l                                          ; $4d21: $55
	ld b, b                                          ; $4d22: $40
	ld a, [$bb9c]                                    ; $4d23: $fa $9c $bb
	ld [hl], l                                       ; $4d26: $75
	cp d                                             ; $4d27: $ba
	ld a, e                                          ; $4d28: $7b
	cp $9e                                           ; $4d29: $fe $9e
	cp b                                             ; $4d2b: $b8
	ret c                                            ; $4d2c: $d8

	jr nc, @-$60                                     ; $4d2d: $30 $9e

	rst FarCall                                          ; $4d2f: $f7
	ld a, c                                          ; $4d30: $79
	adc h                                            ; $4d31: $8c
	ld a, e                                          ; $4d32: $7b
	cp $9e                                           ; $4d33: $fe $9e
	dec d                                            ; $4d35: $15
	ld sp, hl                                        ; $4d36: $f9
	sbc d                                            ; $4d37: $9a

jr_043_4d38:
	db $fd                                           ; $4d38: $fd
	ld a, [hl]                                       ; $4d39: $7e
	cp l                                             ; $4d3a: $bd
	ld e, [hl]                                       ; $4d3b: $5e
	cp a                                             ; $4d3c: $bf
	ld a, d                                          ; $4d3d: $7a
	ld d, e                                          ; $4d3e: $53
	sbc h                                            ; $4d3f: $9c
	ld [bc], a                                       ; $4d40: $02
	ld bc, $7a02                                     ; $4d41: $01 $02 $7a
	push de                                          ; $4d44: $d5
	rst $38                                          ; $4d45: $ff
	sbc d                                            ; $4d46: $9a
	ld b, b                                          ; $4d47: $40
	and b                                            ; $4d48: $a0
	ld d, b                                          ; $4d49: $50

jr_043_4d4a:
	and b                                            ; $4d4a: $a0
	ld d, h                                          ; $4d4b: $54
	ld a, d                                          ; $4d4c: $7a
	xor [hl]                                         ; $4d4d: $ae
	ld a, e                                          ; $4d4e: $7b
	db $ec                                           ; $4d4f: $ec
	sbc l                                            ; $4d50: $9d
	ld e, a                                          ; $4d51: $5f
	xor e                                            ; $4d52: $ab
	ld a, e                                          ; $4d53: $7b
	ld a, e                                          ; $4d54: $7b
	ld a, a                                          ; $4d55: $7f
	jp hl                                            ; $4d56: $e9


	ld a, d                                          ; $4d57: $7a
	jp nz, $809d                                     ; $4d58: $c2 $9d $80

	inc b                                            ; $4d5b: $04
	ld l, l                                          ; $4d5c: $6d
	add b                                            ; $4d5d: $80
	ld a, d                                          ; $4d5e: $7a
	ld a, b                                          ; $4d5f: $78
	ld a, [hl]                                       ; $4d60: $7e
	add $77                                          ; $4d61: $c6 $77
	cp $9c                                           ; $4d63: $fe $9c
	ld l, d                                          ; $4d65: $6a
	db $d3                                           ; $4d66: $d3
	pop de                                           ; $4d67: $d1
	ld a, d                                          ; $4d68: $7a
	call nz, $fe7f                                   ; $4d69: $c4 $7f $fe
	sbc [hl]                                         ; $4d6c: $9e
	ret nc                                           ; $4d6d: $d0

	ld a, d                                          ; $4d6e: $7a
	ret nz                                           ; $4d6f: $c0

	ld [hl], h                                       ; $4d70: $74
	inc hl                                           ; $4d71: $23
	sbc h                                            ; $4d72: $9c
	nop                                              ; $4d73: $00
	ld [$73ff], sp                                   ; $4d74: $08 $ff $73
	sbc $80                                          ; $4d77: $de $80
	rra                                              ; $4d79: $1f
	ldh a, [$f4]                                     ; $4d7a: $f0 $f4
	rst FarCall                                          ; $4d7c: $f7
	cp $f3                                           ; $4d7d: $fe $f3
	push af                                          ; $4d7f: $f5
	db $fc                                           ; $4d80: $fc
	ld hl, sp-$08                                    ; $4d81: $f8 $f8
	rst AddAOntoHL                                          ; $4d83: $ef
	rrca                                             ; $4d84: $0f
	xor $ee                                          ; $4d85: $ee $ee
	db $ec                                           ; $4d87: $ec
	db $ec                                           ; $4d88: $ec
	add sp, $08                                      ; $4d89: $e8 $08
	db $e4                                           ; $4d8b: $e4
	ld b, b                                          ; $4d8c: $40
	jr nz, jr_043_4da2                               ; $4d8d: $20 $13

	ld c, $0c                                        ; $4d8f: $0e $0c
	jr jr_043_4dc4                                   ; $4d91: $18 $31

	rst FarCall                                          ; $4d93: $f7
	ldh a, [c]                                       ; $4d94: $f2
	ld [hl], e                                       ; $4d95: $73
	jr z, jr_043_4d98                                ; $4d96: $28 $00

jr_043_4d98:
	rst SubAFromDE                                          ; $4d98: $df
	ld b, b                                          ; $4d99: $40
	sub e                                            ; $4d9a: $93
	add b                                            ; $4d9b: $80
	ld a, $78                                        ; $4d9c: $3e $78
	call nc, $2010                                   ; $4d9e: $d4 $10 $20
	ld b, b                                          ; $4da1: $40

jr_043_4da2:
	add b                                            ; $4da2: $80
	ld bc, $9c38                                     ; $4da3: $01 $38 $9c
	jr @-$02                                         ; $4da6: $18 $fc

	sub d                                            ; $4da8: $92
	ld h, b                                          ; $4da9: $60
	jr nc, jr_043_4de4                               ; $4daa: $30 $38

	inc c                                            ; $4dac: $0c
	adc [hl]                                         ; $4dad: $8e
	adc e                                            ; $4dae: $8b
	sub e                                            ; $4daf: $93
	sub e                                            ; $4db0: $93
	ld a, a                                          ; $4db1: $7f
	rra                                              ; $4db2: $1f
	rrca                                             ; $4db3: $0f
	rlca                                             ; $4db4: $07
	inc bc                                           ; $4db5: $03
	ld a, e                                          ; $4db6: $7b
	ld a, [hl]                                       ; $4db7: $7e
	adc e                                            ; $4db8: $8b
	pop de                                           ; $4db9: $d1
	push de                                          ; $4dba: $d5
	jp c, $9fdd                                      ; $4dbb: $da $dd $9f

	sub h                                            ; $4dbe: $94
	ld e, $9f                                        ; $4dbf: $1e $9f
	ccf                                              ; $4dc1: $3f
	ld a, [hl-]                                      ; $4dc2: $3a
	dec [hl]                                         ; $4dc3: $35

jr_043_4dc4:
	ld [hl-], a                                      ; $4dc4: $32
	jr nc, jr_043_4e06                               ; $4dc5: $30 $3f

	or c                                             ; $4dc7: $b1
	or b                                             ; $4dc8: $b0
	db $fc                                           ; $4dc9: $fc
	db $fc                                           ; $4dca: $fc
	ld hl, sp-$0a                                    ; $4dcb: $f8 $f6
	ld [hl], h                                       ; $4dcd: $74
	ret z                                            ; $4dce: $c8

	sbc $ff                                          ; $4dcf: $de $ff
	sbc l                                            ; $4dd1: $9d
	ld sp, hl                                        ; $4dd2: $f9
	pop bc                                           ; $4dd3: $c1
	cp $7d                                           ; $4dd4: $fe $7d
	call c, Call_043_4188                            ; $4dd6: $dc $88 $41
	ld bc, $d1b1                                     ; $4dd9: $01 $b1 $d1
	ret                                              ; $4ddc: $c9


	push hl                                          ; $4ddd: $e5
	xor e                                            ; $4dde: $ab
	ld c, l                                          ; $4ddf: $4d
	set 5, l                                         ; $4de0: $cb $ed
	ld a, e                                          ; $4de2: $7b
	dec a                                            ; $4de3: $3d

jr_043_4de4:
	dec sp                                           ; $4de4: $3b
	dec e                                            ; $4de5: $1d
	rrca                                             ; $4de6: $0f
	adc h                                            ; $4de7: $8c
	dec c                                            ; $4de8: $0d
	adc a                                            ; $4de9: $8f
	dec e                                            ; $4dea: $1d
	xor l                                            ; $4deb: $ad
	ld e, a                                          ; $4dec: $5f
	xor l                                            ; $4ded: $ad
	ld b, $da                                        ; $4dee: $06 $da
	rlca                                             ; $4df0: $07
	adc l                                            ; $4df1: $8d
	ld a, a                                          ; $4df2: $7f
	cp [hl]                                          ; $4df3: $be
	db $fd                                           ; $4df4: $fd
	ld a, e                                          ; $4df5: $7b
	ld a, d                                          ; $4df6: $7a
	ld [hl], a                                       ; $4df7: $77
	ld h, l                                          ; $4df8: $65
	push hl                                          ; $4df9: $e5
	ret nz                                           ; $4dfa: $c0

	pop bc                                           ; $4dfb: $c1
	add e                                            ; $4dfc: $83
	add a                                            ; $4dfd: $87
	add a                                            ; $4dfe: $87
	adc [hl]                                         ; $4dff: $8e
	sbc [hl]                                         ; $4e00: $9e
	ld e, $3f                                        ; $4e01: $1e $3f
	ld a, a                                          ; $4e03: $7f
	ld a, e                                          ; $4e04: $7b
	ld c, e                                          ; $4e05: $4b

jr_043_4e06:
	sbc $ff                                          ; $4e06: $de $ff
	sbc l                                            ; $4e08: $9d
	ret nz                                           ; $4e09: $c0

	add b                                            ; $4e0a: $80
	ld l, l                                          ; $4e0b: $6d
	ret nc                                           ; $4e0c: $d0

	ld [hl], e                                       ; $4e0d: $73
	or a                                             ; $4e0e: $b7
	sbc h                                            ; $4e0f: $9c
	push af                                          ; $4e10: $f5
	cp a                                             ; $4e11: $bf
	rst GetHLinHL                                          ; $4e12: $cf
	db $fd                                           ; $4e13: $fd
	sub c                                            ; $4e14: $91
	ld b, $0e                                        ; $4e15: $06 $0e
	ld c, h                                          ; $4e17: $4c
	ld a, h                                          ; $4e18: $7c
	cp a                                             ; $4e19: $bf
	rst SubAFromDE                                          ; $4e1a: $df
	rst FarCall                                          ; $4e1b: $f7
	db $e3                                           ; $4e1c: $e3
	rst GetHLinHL                                          ; $4e1d: $cf
	rst SubAFromDE                                          ; $4e1e: $df
	ld a, a                                          ; $4e1f: $7f
	rst $38                                          ; $4e20: $ff
	ld a, h                                          ; $4e21: $7c
	ld a, $76                                        ; $4e22: $3e $76
	sub d                                            ; $4e24: $92
	ld a, a                                          ; $4e25: $7f
	jp c, $aa8f                                      ; $4e26: $da $8f $aa

	ld d, h                                          ; $4e29: $54
	and b                                            ; $4e2a: $a0
	ldh a, [$b0]                                     ; $4e2b: $f0 $b0
	ret nc                                           ; $4e2d: $d0

	ret nc                                           ; $4e2e: $d0

	stop                                             ; $4e2f: $10 $00
	nop                                              ; $4e31: $00
	add b                                            ; $4e32: $80
	ldh [rSVBK], a                                   ; $4e33: $e0 $70
	jr nc, jr_043_4e67                               ; $4e35: $30 $30

	ldh a, [$d1]                                     ; $4e37: $f0 $d1
	jr nc, @+$70                                     ; $4e39: $30 $6e

	jp c, $7ef7                                      ; $4e3b: $da $f7 $7e

	add $9b                                          ; $4e3e: $c6 $9b
	xor e                                            ; $4e40: $ab
	ld d, l                                          ; $4e41: $55
	ld a, [hl+]                                      ; $4e42: $2a
	dec b                                            ; $4e43: $05
	ld e, a                                          ; $4e44: $5f
	ld [$817a], a                                    ; $4e45: $ea $7a $81
	ld a, l                                          ; $4e48: $7d
	ld [hl], d                                       ; $4e49: $72
	sbc d                                            ; $4e4a: $9a
	ld a, [hl]                                       ; $4e4b: $7e
	cp a                                             ; $4e4c: $bf
	ld e, [hl]                                       ; $4e4d: $5e
	ld [bc], a                                       ; $4e4e: $02
	ld bc, $7279                                     ; $4e4f: $01 $79 $72
	ld a, a                                          ; $4e52: $7f
	ld [$0196], a                                    ; $4e53: $ea $96 $01
	ld b, h                                          ; $4e56: $44
	add d                                            ; $4e57: $82
	ld b, b                                          ; $4e58: $40
	add d                                            ; $4e59: $82
	ld b, b                                          ; $4e5a: $40
	xor h                                            ; $4e5b: $ac
	ld b, b                                          ; $4e5c: $40
	and b                                            ; $4e5d: $a0
	ld [hl], l                                       ; $4e5e: $75
	ld [hl], d                                       ; $4e5f: $72
	sbc c                                            ; $4e60: $99
	cp a                                             ; $4e61: $bf
	ld d, a                                          ; $4e62: $57
	cp a                                             ; $4e63: $bf
	ld e, a                                          ; $4e64: $5f
	ld l, e                                          ; $4e65: $6b
	ld d, e                                          ; $4e66: $53

jr_043_4e67:
	ld a, e                                          ; $4e67: $7b
	cp $9c                                           ; $4e68: $fe $9c
	db $d3                                           ; $4e6a: $d3
	db $eb                                           ; $4e6b: $eb
	ld d, d                                          ; $4e6c: $52
	ld l, [hl]                                       ; $4e6d: $6e
	ret nz                                           ; $4e6e: $c0

Call_043_4e6f:
	ld a, a                                          ; $4e6f: $7f
	cp $7f                                           ; $4e70: $fe $7f
	sbc $87                                          ; $4e72: $de $87
	ld b, $1d                                        ; $4e74: $06 $1d
	ld a, [hl+]                                      ; $4e76: $2a
	ld d, l                                          ; $4e77: $55

jr_043_4e78:
	xor e                                            ; $4e78: $ab

Call_043_4e79:
	ld b, $ff                                        ; $4e79: $06 $ff
	cp $e5                                           ; $4e7b: $fe $e5
	xor $d5                                          ; $4e7d: $ee $d5
	xor d                                            ; $4e7f: $aa
	ld d, h                                          ; $4e80: $54
	ld sp, hl                                        ; $4e81: $f9
	db $10                                           ; $4e82: $10
	ld de, $1c10                                     ; $4e83: $11 $10 $1c
	ld h, $22                                        ; $4e86: $26 $22
	daa                                              ; $4e88: $27
	ld [$f0f0], sp                                   ; $4e89: $08 $f0 $f0
	sbc $f1                                          ; $4e8c: $de $f1
	sub h                                            ; $4e8e: $94
	pop hl                                           ; $4e8f: $e1
	ldh [$e0], a                                     ; $4e90: $e0 $e0
	ld h, e                                          ; $4e92: $63
	ld b, [hl]                                       ; $4e93: $46
	inc c                                            ; $4e94: $0c
	jr c, jr_043_4e78                                ; $4e95: $38 $e1

	adc b                                            ; $4e97: $88
	inc e                                            ; $4e98: $1c
	cp a                                             ; $4e99: $bf
	ld l, a                                          ; $4e9a: $6f
	ld b, c                                          ; $4e9b: $41
	rst SubAFromDE                                          ; $4e9c: $df
	add b                                            ; $4e9d: $80
	rst SubAFromDE                                          ; $4e9e: $df
	inc bc                                           ; $4e9f: $03
	rst SubAFromDE                                          ; $4ea0: $df
	rlca                                             ; $4ea1: $07
	sbc e                                            ; $4ea2: $9b
	inc bc                                           ; $4ea3: $03
	rst JumpTable                                          ; $4ea4: $c7
	ccf                                              ; $4ea5: $3f
	rra                                              ; $4ea6: $1f
	ld a, [$0197]                                    ; $4ea7: $fa $97 $01
	or e                                             ; $4eaa: $b3
	ld h, c                                          ; $4eab: $61
	ld b, c                                          ; $4eac: $41
	pop bc                                           ; $4ead: $c1
	db $fd                                           ; $4eae: $fd
	pop af                                           ; $4eaf: $f1
	ldh [$79], a                                     ; $4eb0: $e0 $79
	ldh a, [rPCM12]                                  ; $4eb2: $f0 $76
	ld b, e                                          ; $4eb4: $43
	rst SubAFromDE                                          ; $4eb5: $df
	add b                                            ; $4eb6: $80
	sbc d                                            ; $4eb7: $9a
	rst SubAFromDE                                          ; $4eb8: $df
	sub c                                            ; $4eb9: $91
	ld a, a                                          ; $4eba: $7f
	ld d, e                                          ; $4ebb: $53
	ld d, b                                          ; $4ebc: $50
	sbc $5f                                          ; $4ebd: $de $5f
	sbc e                                            ; $4ebf: $9b
	or b                                             ; $4ec0: $b0
	ldh a, [$7c]                                     ; $4ec1: $f0 $7c
	ld a, a                                          ; $4ec3: $7f
	db $dd                                           ; $4ec4: $dd
	ld [hl], b                                       ; $4ec5: $70
	jp c, $9eff                                      ; $4ec6: $da $ff $9e

	rst SubAFromDE                                          ; $4ec9: $df
	ld a, [$2096]                                    ; $4eca: $fa $96 $20
	add e                                            ; $4ecd: $83
	db $e3                                           ; $4ece: $e3
	pop af                                           ; $4ecf: $f1
	pop bc                                           ; $4ed0: $c1
	jp $b7de                                         ; $4ed1: $c3 $de $b7


	pop af                                           ; $4ed4: $f1
	ld a, d                                          ; $4ed5: $7a
	sub b                                            ; $4ed6: $90
	add l                                            ; $4ed7: $85
	ld a, $3c                                        ; $4ed8: $3e $3c
	ld hl, $1f4f                                     ; $4eda: $21 $4f $1f
	and l                                            ; $4edd: $a5
	ld d, a                                          ; $4ede: $57
	dec h                                            ; $4edf: $25
	db $db                                           ; $4ee0: $db
	rst SubAFromDE                                          ; $4ee1: $df
	ld a, a                                          ; $4ee2: $7f
	or $af                                           ; $4ee3: $f6 $af
	ld e, a                                          ; $4ee5: $5f
	xor a                                            ; $4ee6: $af
	rst SubAFromDE                                          ; $4ee7: $df

jr_043_4ee8:
	xor l                                            ; $4ee8: $ad
	ld [hl], c                                       ; $4ee9: $71
	pop hl                                           ; $4eea: $e1
	ld sp, hl                                        ; $4eeb: $f9
	db $fc                                           ; $4eec: $fc
	call $cbcb                                       ; $4eed: $cd $cb $cb
	ld c, c                                          ; $4ef0: $49
	sub c                                            ; $4ef1: $91
	sbc $90                                          ; $4ef2: $de $90
	ld a, a                                          ; $4ef4: $7f

jr_043_4ef5:
	db $e3                                           ; $4ef5: $e3
	sbc l                                            ; $4ef6: $9d
	inc a                                            ; $4ef7: $3c
	cp [hl]                                          ; $4ef8: $be
	ld l, [hl]                                       ; $4ef9: $6e
	adc b                                            ; $4efa: $88
	sbc c                                            ; $4efb: $99
	db $fd                                           ; $4efc: $fd
	rst $38                                          ; $4efd: $ff
	ld sp, hl                                        ; $4efe: $f9
	db $fc                                           ; $4eff: $fc
	cp $7f                                           ; $4f00: $fe $7f
	ld a, b                                          ; $4f02: $78
	cp c                                             ; $4f03: $b9
	ld a, a                                          ; $4f04: $7f
	add [hl]                                         ; $4f05: $86
	rst SubAFromDE                                          ; $4f06: $df
	inc bc                                           ; $4f07: $03
	sub b                                            ; $4f08: $90
	add e                                            ; $4f09: $83
	xor e                                            ; $4f0a: $ab
	cp a                                             ; $4f0b: $bf
	sbc c                                            ; $4f0c: $99
	sbc b                                            ; $4f0d: $98
	ld c, c                                          ; $4f0e: $49
	jp z, $2c4e                                      ; $4f0f: $ca $4e $2c

	ld a, l                                          ; $4f12: $7d
	ld a, b                                          ; $4f13: $78
	ld a, [hl]                                       ; $4f14: $7e
	ld a, a                                          ; $4f15: $7f
	cp a                                             ; $4f16: $bf
	cp a                                             ; $4f17: $bf
	ld a, e                                          ; $4f18: $7b
	and a                                            ; $4f19: $a7
	adc b                                            ; $4f1a: $88
	sbc l                                            ; $4f1b: $9d
	jr c, @-$43                                      ; $4f1c: $38 $bb

	ld a, e                                          ; $4f1e: $7b
	ld a, l                                          ; $4f1f: $7d
	db $fc                                           ; $4f20: $fc
	db $fd                                           ; $4f21: $fd
	jr nz, jr_043_4f86                               ; $4f22: $20 $62

	rst JumpTable                                          ; $4f24: $c7
	rst JumpTable                                          ; $4f25: $c7
	add a                                            ; $4f26: $87
	add e                                            ; $4f27: $83
	inc bc                                           ; $4f28: $03
	inc bc                                           ; $4f29: $03
	ld d, b                                          ; $4f2a: $50
	ccf                                              ; $4f2b: $3f
	jr nz, jr_043_4f4e                               ; $4f2c: $20 $20

	jr nc, jr_043_4ee8                               ; $4f2e: $30 $b8

	ld a, [$77d4]                                    ; $4f30: $fa $d4 $77
	ret z                                            ; $4f33: $c8

	sbc [hl]                                         ; $4f34: $9e
	db $e3                                           ; $4f35: $e3
	sbc $e0                                          ; $4f36: $de $e0
	add b                                            ; $4f38: $80
	ld a, $f5                                        ; $4f39: $3e $f5
	ld [hl], $10                                     ; $4f3b: $36 $10
	inc l                                            ; $4f3d: $2c
	ld b, $00                                        ; $4f3e: $06 $00
	ldh [$f9], a                                     ; $4f40: $e0 $f9
	rst $38                                          ; $4f42: $ff
	nop                                              ; $4f43: $00
	ld b, $c0                                        ; $4f44: $06 $c0
	ld hl, sp+$1f                                    ; $4f46: $f8 $1f
	inc bc                                           ; $4f48: $03
	db $fd                                           ; $4f49: $fd
	sub a                                            ; $4f4a: $97
	ret                                              ; $4f4b: $c9


	ld d, $d4                                        ; $4f4c: $16 $d4

jr_043_4f4e:
	sub c                                            ; $4f4e: $91
	ld a, a                                          ; $4f4f: $7f
	ld b, $46                                        ; $4f50: $06 $46
	ld c, b                                          ; $4f52: $48
	nop                                              ; $4f53: $00
	ret z                                            ; $4f54: $c8

	jr nz, jr_043_4f5b                               ; $4f55: $20 $04

	add b                                            ; $4f57: $80
	sub h                                            ; $4f58: $94
	ld hl, sp-$74                                    ; $4f59: $f8 $8c

jr_043_4f5b:
	ld [hl], e                                       ; $4f5b: $73
	rst SubAFromDE                                          ; $4f5c: $df
	ld l, h                                          ; $4f5d: $6c
	ld e, h                                          ; $4f5e: $5c
	ld a, [de]                                       ; $4f5f: $1a
	db $e3                                           ; $4f60: $e3
	ld a, $71                                        ; $4f61: $3e $71
	ld de, $4578                                     ; $4f63: $11 $78 $45
	ld a, a                                          ; $4f66: $7f
	inc e                                            ; $4f67: $1c
	adc [hl]                                         ; $4f68: $8e
	ld b, b                                          ; $4f69: $40
	ld a, l                                          ; $4f6a: $7d
	cp d                                             ; $4f6b: $ba
	db $fd                                           ; $4f6c: $fd
	ld b, d                                          ; $4f6d: $42
	add c                                            ; $4f6e: $81
	ld c, h                                          ; $4f6f: $4c
	jr nz, jr_043_4ef5                               ; $4f70: $20 $83

	add d                                            ; $4f72: $82
	push bc                                          ; $4f73: $c5
	ld a, [hl]                                       ; $4f74: $7e
	rlca                                             ; $4f75: $07
	ld c, a                                          ; $4f76: $4f
	jr nc, @+$04                                     ; $4f77: $30 $02

	ld [$3278], sp                                   ; $4f79: $08 $78 $32
	sbc d                                            ; $4f7c: $9a
	and b                                            ; $4f7d: $a0
	cp $23                                           ; $4f7e: $fe $23
	ld d, a                                          ; $4f80: $57
	ld a, [hl-]                                      ; $4f81: $3a
	ld a, d                                          ; $4f82: $7a
	jp nz, Jump_043_5f86                             ; $4f83: $c2 $86 $5f

jr_043_4f86:
	rst $38                                          ; $4f86: $ff
	rra                                              ; $4f87: $1f
	nop                                              ; $4f88: $00
	sub h                                            ; $4f89: $94
	ld l, b                                          ; $4f8a: $68
	ld d, l                                          ; $4f8b: $55
	ld l, e                                          ; $4f8c: $6b
	ld d, l                                          ; $4f8d: $55
	ld l, e                                          ; $4f8e: $6b
	ld d, a                                          ; $4f8f: $57
	db $eb                                           ; $4f90: $eb
	ld [hl], a                                       ; $4f91: $77
	ret nc                                           ; $4f92: $d0

	xor $d7                                          ; $4f93: $ee $d7
	ld [$e8d4], a                                    ; $4f95: $ea $d4 $e8
	call nc, $c1f8                                   ; $4f98: $d4 $f8 $c1
	add [hl]                                         ; $4f9b: $86
	db $ec                                           ; $4f9c: $ec
	rst $38                                          ; $4f9d: $ff
	ld [hl], a                                       ; $4f9e: $77
	ld e, b                                          ; $4f9f: $58
	sbc e                                            ; $4fa0: $9b
	ld a, $01                                        ; $4fa1: $3e $01
	ldh a, [rIF]                                     ; $4fa3: $f0 $0f
	halt                                             ; $4fa5: $76
	ld a, e                                          ; $4fa6: $7b
	sub e                                            ; $4fa7: $93
	ld b, a                                          ; $4fa8: $47
	ld c, a                                          ; $4fa9: $4f
	ld c, c                                          ; $4faa: $49
	ld l, d                                          ; $4fab: $6a
	db $d3                                           ; $4fac: $d3
	inc sp                                           ; $4fad: $33
	dec sp                                           ; $4fae: $3b
	cpl                                              ; $4faf: $2f
	ret nz                                           ; $4fb0: $c0

	ldh [rLCDC], a                                   ; $4fb1: $e0 $40
	pop bc                                           ; $4fb3: $c1
	sbc $e3                                          ; $4fb4: $de $e3
	sbc [hl]                                         ; $4fb6: $9e
	di                                               ; $4fb7: $f3
	sbc $ff                                          ; $4fb8: $de $ff
	sbc l                                            ; $4fba: $9d
	ccf                                              ; $4fbb: $3f
	add l                                            ; $4fbc: $85
	db $dd                                           ; $4fbd: $dd
	rst $38                                          ; $4fbe: $ff
	rst SubAFromDE                                          ; $4fbf: $df
	add b                                            ; $4fc0: $80
	call c, $7fff                                    ; $4fc1: $dc $ff $7f
	ld c, l                                          ; $4fc4: $4d
	ld a, [hl]                                       ; $4fc5: $7e
	add hl, de                                       ; $4fc6: $19
	adc e                                            ; $4fc7: $8b
	ldh [$c8], a                                     ; $4fc8: $e0 $c8
	sbc h                                            ; $4fca: $9c
	cp $1b                                           ; $4fcb: $fe $1b
	rst FarCall                                          ; $4fcd: $f7
	db $fc                                           ; $4fce: $fc
	db $fc                                           ; $4fcf: $fc
	db $e4                                           ; $4fd0: $e4
	add h                                            ; $4fd1: $84
	add b                                            ; $4fd2: $80
	add h                                            ; $4fd3: $84
	ld hl, sp+$0e                                    ; $4fd4: $f8 $0e
	ld bc, $0f03                                     ; $4fd6: $01 $03 $0f
	ccf                                              ; $4fd9: $3f
	rst $38                                          ; $4fda: $ff
	ld l, a                                          ; $4fdb: $6f
	ld l, l                                          ; $4fdc: $6d
	ldh [c], a                                       ; $4fdd: $e2
	ld a, [hl]                                       ; $4fde: $7e
	or b                                             ; $4fdf: $b0
	db $dd                                           ; $4fe0: $dd
	ret nc                                           ; $4fe1: $d0

	sbc $90                                          ; $4fe2: $de $90
	sbc [hl]                                         ; $4fe4: $9e
	db $10                                           ; $4fe5: $10
	db $dd                                           ; $4fe6: $dd
	ld a, a                                          ; $4fe7: $7f
	db $dd                                           ; $4fe8: $dd
	rst $38                                          ; $4fe9: $ff
	add b                                            ; $4fea: $80
	rst GetHLinHL                                          ; $4feb: $cf
	ldh [c], a                                       ; $4fec: $e2
	ldh [$d7], a                                     ; $4fed: $e0 $d7
	db $e4                                           ; $4fef: $e4
	db $f4                                           ; $4ff0: $f4
	add sp, -$0c                                     ; $4ff1: $e8 $f4
	jr nc, @+$1f                                     ; $4ff3: $30 $1d

	rra                                              ; $4ff5: $1f
	jr z, jr_043_5013                                ; $4ff6: $28 $1b

	dec bc                                           ; $4ff8: $0b
	rla                                              ; $4ff9: $17
	dec bc                                           ; $4ffa: $0b
	db $eb                                           ; $4ffb: $eb
	ld hl, sp-$61                                    ; $4ffc: $f8 $9f
	call $b0e0                                       ; $4ffe: $cd $e0 $b0
	rst FarCall                                          ; $5001: $f7
	rst SubAFromDE                                          ; $5002: $df
	scf                                              ; $5003: $37
	daa                                              ; $5004: $27
	ld h, b                                          ; $5005: $60
	ld [hl], d                                       ; $5006: $72
	ld a, a                                          ; $5007: $7f
	ld a, a                                          ; $5008: $7f
	ccf                                              ; $5009: $3f
	sub d                                            ; $500a: $92
	ccf                                              ; $500b: $3f
	rr l                                             ; $500c: $cb $1d
	db $fd                                           ; $500e: $fd
	ld h, e                                          ; $500f: $63
	ld c, a                                          ; $5010: $4f
	ld c, $3f                                        ; $5011: $0e $3f

jr_043_5013:
	rst $38                                          ; $5013: $ff
	rst FarCall                                          ; $5014: $f7
	db $e3                                           ; $5015: $e3
	inc bc                                           ; $5016: $03
	sbc a                                            ; $5017: $9f
	ld a, d                                          ; $5018: $7a
	pop af                                           ; $5019: $f1
	sbc l                                            ; $501a: $9d
	cp $00                                           ; $501b: $fe $00
	ld a, c                                          ; $501d: $79
	sub a                                            ; $501e: $97
	ld a, a                                          ; $501f: $7f
	ld c, l                                          ; $5020: $4d

jr_043_5021:
	sbc e                                            ; $5021: $9b
	ret nz                                           ; $5022: $c0

	ld b, c                                          ; $5023: $41
	rst $38                                          ; $5024: $ff
	cp a                                             ; $5025: $bf
	call c, $957f                                    ; $5026: $dc $7f $95
	ld a, [hl]                                       ; $5029: $7e
	dec e                                            ; $502a: $1d
	rrca                                             ; $502b: $0f
	rrca                                             ; $502c: $0f
	ld e, $1e                                        ; $502d: $1e $1e
	ld [hl], $38                                     ; $502f: $36 $38
	cp b                                             ; $5031: $b8
	db $e3                                           ; $5032: $e3
	ld a, d                                          ; $5033: $7a
	ld [hl-], a                                      ; $5034: $32
	sbc c                                            ; $5035: $99
	pop hl                                           ; $5036: $e1
	ret                                              ; $5037: $c9


	rst JumpTable                                          ; $5038: $c7
	ld b, a                                          ; $5039: $47
	ld a, c                                          ; $503a: $79
	ld sp, hl                                        ; $503b: $f9
	sbc $fb                                          ; $503c: $de $fb
	sbc d                                            ; $503e: $9a
	ld a, e                                          ; $503f: $7b
	cp e                                             ; $5040: $bb
	dec sp                                           ; $5041: $3b
	cp $fe                                           ; $5042: $fe $fe
	db $db                                           ; $5044: $db
	db $fc                                           ; $5045: $fc
	rst SubAFromDE                                          ; $5046: $df
	cp $dd                                           ; $5047: $fe $dd
	rst $38                                          ; $5049: $ff
	rst SubAFromDE                                          ; $504a: $df
	cp $df                                           ; $504b: $fe $df
	ld bc, $8173                                     ; $504d: $01 $73 $81
	add b                                            ; $5050: $80
	ld bc, $71cc                                     ; $5051: $01 $cc $71
	ld h, e                                          ; $5054: $63
	ld b, h                                          ; $5055: $44
	ld l, b                                          ; $5056: $68
	ld [hl], b                                       ; $5057: $70
	ld d, c                                          ; $5058: $51
	db $e4                                           ; $5059: $e4
	ldh [$e8], a                                     ; $505a: $e0 $e8
	ldh a, [$e3]                                     ; $505c: $f0 $e3
	call nz, $e0c8                                   ; $505e: $c4 $c8 $e0
	jp $c8e0                                         ; $5061: $c3 $e0 $c8


	adc h                                            ; $5064: $8c

jr_043_5065:
	ld e, b                                          ; $5065: $58
	ld h, b                                          ; $5066: $60
	ld sp, $2e67                                     ; $5067: $31 $67 $2e
	nop                                              ; $506a: $00
	nop                                              ; $506b: $00
	inc bc                                           ; $506c: $03
	rlca                                             ; $506d: $07
	ld e, $c1                                        ; $506e: $1e $c1
	add b                                            ; $5070: $80
	add [hl]                                         ; $5071: $86
	call z, Call_043_5b00                            ; $5072: $cc $00 $5b
	ccf                                              ; $5075: $3f
	ld a, c                                          ; $5076: $79
	db $fd                                           ; $5077: $fd
	db $f4                                           ; $5078: $f4
	sub a                                            ; $5079: $97
	dec a                                            ; $507a: $3d
	rst $38                                          ; $507b: $ff
	jr c, jr_043_5065                                ; $507c: $38 $e7

	ld b, c                                          ; $507e: $41
	add d                                            ; $507f: $82
	inc bc                                           ; $5080: $03
	ld [$e300], sp                                   ; $5081: $08 $00 $e3
	inc e                                            ; $5084: $1c
	inc hl                                           ; $5085: $23
	call nz, Call_043_4e79                           ; $5086: $c4 $79 $4e
	db $db                                           ; $5089: $db
	halt                                             ; $508a: $76
	inc b                                            ; $508b: $04
	ldh [rAUD3LEVEL], a                              ; $508c: $e0 $1c
	jp $8778                                         ; $508e: $c3 $78 $87


	adc [hl]                                         ; $5091: $8e
	inc hl                                           ; $5092: $23
	adc h                                            ; $5093: $8c
	call Call_043_67e2                               ; $5094: $cd $e2 $67
	ld hl, sp+$3f                                    ; $5097: $f8 $3f
	jr c, jr_043_5021                                ; $5099: $38 $86

	ld [hl], c                                       ; $509b: $71
	sub d                                            ; $509c: $92
	stop                                             ; $509d: $10 $00
	ccf                                              ; $509f: $3f
	rst $38                                          ; $50a0: $ff
	nop                                              ; $50a1: $00
	add b                                            ; $50a2: $80
	ld [hl], b                                       ; $50a3: $70
	ld a, [hl-]                                      ; $50a4: $3a
	ret z                                            ; $50a5: $c8

	ret nz                                           ; $50a6: $c0

	rra                                              ; $50a7: $1f
	ret nz                                           ; $50a8: $c0

	ld a, c                                          ; $50a9: $79
	rst JumpTable                                          ; $50aa: $c7
	sbc [hl]                                         ; $50ab: $9e
	ld de, $f17b                                     ; $50ac: $11 $7b $f1
	ld [hl], h                                       ; $50af: $74
	ld d, l                                          ; $50b0: $55
	sbc d                                            ; $50b1: $9a
	rra                                              ; $50b2: $1f
	inc b                                            ; $50b3: $04
	inc d                                            ; $50b4: $14
	ld a, h                                          ; $50b5: $7c
	ld a, h                                          ; $50b6: $7c
	cp $9b                                           ; $50b7: $fe $9b
	sbc [hl]                                         ; $50b9: $9e
	ld a, a                                          ; $50ba: $7f
	cp $fe                                           ; $50bb: $fe $fe
	ld [hl], a                                       ; $50bd: $77
	inc c                                            ; $50be: $0c
	ld a, h                                          ; $50bf: $7c
	inc l                                            ; $50c0: $2c
	sbc [hl]                                         ; $50c1: $9e
	rrca                                             ; $50c2: $0f
	ei                                               ; $50c3: $fb
	ld a, a                                          ; $50c4: $7f
	push de                                          ; $50c5: $d5
	ld [hl], e                                       ; $50c6: $73
	rst FarCall                                          ; $50c7: $f7
	ld a, [hl]                                       ; $50c8: $7e
	adc $7e                                          ; $50c9: $ce $7e
	call $0b96                                       ; $50cb: $cd $96 $0b
	rrca                                             ; $50ce: $0f
	inc bc                                           ; $50cf: $03
	inc bc                                           ; $50d0: $03
	db $10                                           ; $50d1: $10
	ld [$0c08], sp                                   ; $50d2: $08 $08 $0c
	db $fc                                           ; $50d5: $fc
	cp $d9                                           ; $50d6: $fe $d9
	ld hl, $ffd9                                     ; $50d8: $21 $d9 $ff
	add d                                            ; $50db: $82
	xor $be                                          ; $50dc: $ee $be
	cp $be                                           ; $50de: $fe $be
	cp h                                             ; $50e0: $bc
	cp d                                             ; $50e1: $ba
	sbc c                                            ; $50e2: $99
	add b                                            ; $50e3: $80
	sbc h                                            ; $50e4: $9c
	db $fc                                           ; $50e5: $fc
	ret nc                                           ; $50e6: $d0

	ret z                                            ; $50e7: $c8

	call z, $efce                                    ; $50e8: $cc $ce $ef
	rst $38                                          ; $50eb: $ff
	ld [bc], a                                       ; $50ec: $02
	rlca                                             ; $50ed: $07
	dec bc                                           ; $50ee: $0b
	ld [de], a                                       ; $50ef: $12
	ld h, $65                                        ; $50f0: $26 $65
	and a                                            ; $50f2: $a7
	scf                                              ; $50f3: $37
	inc bc                                           ; $50f4: $03

jr_043_50f5:
	ld b, $0f                                        ; $50f5: $06 $0f
	rra                                              ; $50f7: $1f
	ccf                                              ; $50f8: $3f
	ld a, d                                          ; $50f9: $7a
	adc $9a                                          ; $50fa: $ce $9a
	rst SubAFromDE                                          ; $50fc: $df
	db $e3                                           ; $50fd: $e3
	rst AddAOntoHL                                          ; $50fe: $ef
	sbc [hl]                                         ; $50ff: $9e
	ld sp, hl                                        ; $5100: $f9
	sbc $ff                                          ; $5101: $de $ff
	sbc d                                            ; $5103: $9a
	jr nc, jr_043_5106                               ; $5104: $30 $00

jr_043_5106:
	ldh a, [$7f]                                     ; $5106: $f0 $7f
	rlca                                             ; $5108: $07
	cp $8a                                           ; $5109: $fe $8a
	ld hl, sp-$10                                    ; $510b: $f8 $f0
	ld hl, sp-$0c                                    ; $510d: $f8 $f4
	ld a, [$fcf4]                                    ; $510f: $fa $f4 $fc
	ei                                               ; $5112: $fb
	rlca                                             ; $5113: $07
	rrca                                             ; $5114: $0f
	rlca                                             ; $5115: $07
	dec bc                                           ; $5116: $0b
	dec b                                            ; $5117: $05
	dec bc                                           ; $5118: $0b
	inc bc                                           ; $5119: $03
	dec b                                            ; $511a: $05
	rrca                                             ; $511b: $0f
	rlca                                             ; $511c: $07
	dec b                                            ; $511d: $05
	ld [$6c38], sp                                   ; $511e: $08 $38 $6c
	ld l, l                                          ; $5121: $6d
	rst SubAFromDE                                          ; $5122: $df
	ld hl, sp-$69                                    ; $5123: $f8 $97
	rst $38                                          ; $5125: $ff
	ldh a, [$9f]                                     ; $5126: $f0 $9f
	db $fd                                           ; $5128: $fd
	ld a, [$1af5]                                    ; $5129: $fa $f5 $1a
	rra                                              ; $512c: $1f
	halt                                             ; $512d: $76
	cp $7c                                           ; $512e: $fe $7c
	ret                                              ; $5130: $c9


	sub d                                            ; $5131: $92
	dec d                                            ; $5132: $15
	ld a, $f3                                        ; $5133: $3e $f3
	rst SubAFromBC                                          ; $5135: $e7
	adc h                                            ; $5136: $8c
	or b                                             ; $5137: $b0
	ld a, h                                          ; $5138: $7c
	cp $61                                           ; $5139: $fe $61
	rst $38                                          ; $513b: $ff
	ld l, a                                          ; $513c: $6f
	ei                                               ; $513d: $fb
	sbc $7a                                          ; $513e: $de $7a
	and l                                            ; $5140: $a5
	ld a, a                                          ; $5141: $7f
	add hl, sp                                       ; $5142: $39
	add d                                            ; $5143: $82
	ld a, $a7                                        ; $5144: $3e $a7
	pop hl                                           ; $5146: $e1
	db $dd                                           ; $5147: $dd
	ld a, a                                          ; $5148: $7f
	ld a, [hl]                                       ; $5149: $7e
	rst SubAFromDE                                          ; $514a: $df
	rra                                              ; $514b: $1f
	cp $fe                                           ; $514c: $fe $fe
	rra                                              ; $514e: $1f
	inc hl                                           ; $514f: $23
	add c                                            ; $5150: $81
	add c                                            ; $5151: $81
	ldh [$e0], a                                     ; $5152: $e0 $e0
	ld bc, $e081                                     ; $5154: $01 $81 $e0
	add hl, sp                                       ; $5157: $39
	sbc h                                            ; $5158: $9c
	ld hl, sp+$78                                    ; $5159: $f8 $78
	jr c, jr_043_50f5                                ; $515b: $38 $98

	ld a, [$fe7a]                                    ; $515d: $fa $7a $fe
	ei                                               ; $5160: $fb
	ld [hl], c                                       ; $5161: $71
	ld h, h                                          ; $5162: $64
	ld a, h                                          ; $5163: $7c
	sub c                                            ; $5164: $91
	ld a, [hl]                                       ; $5165: $7e
	cp b                                             ; $5166: $b8
	add b                                            ; $5167: $80
	ld a, c                                          ; $5168: $79
	ld a, [hl]                                       ; $5169: $7e
	ld a, $3c                                        ; $516a: $3e $3c
	ld sp, hl                                        ; $516c: $f9
	ld bc, $0301                                     ; $516d: $01 $01 $03
	add [hl]                                         ; $5170: $86
	add c                                            ; $5171: $81
	pop bc                                           ; $5172: $c1
	jp Jump_043_4007                                 ; $5173: $c3 $07 $40


	ld l, h                                          ; $5176: $6c
	ld d, c                                          ; $5177: $51
	ld h, a                                          ; $5178: $67
	ld a, [hl]                                       ; $5179: $7e
	ld hl, sp-$10                                    ; $517a: $f8 $f0
	pop hl                                           ; $517c: $e1

jr_043_517d:
	rst SubAFromBC                                          ; $517d: $e7
	ret nz                                           ; $517e: $c0

	pop hl                                           ; $517f: $e1
	jp $fbef                                         ; $5180: $c3 $ef $fb


	db $fd                                           ; $5183: $fd
	rst $38                                          ; $5184: $ff
	dec d                                            ; $5185: $15
	ld a, e                                          ; $5186: $7b
	add [hl]                                         ; $5187: $86
	cp a                                             ; $5188: $bf
	call $1c73                                       ; $5189: $cd $73 $1c
	res 5, h                                         ; $518c: $cb $ac
	db $10                                           ; $518e: $10
	ld h, b                                          ; $518f: $60
	add b                                            ; $5190: $80
	ret nz                                           ; $5191: $c0

	ldh a, [$fc]                                     ; $5192: $f0 $fc
	rst SubAFromDE                                          ; $5194: $df
	rst AddAOntoHL                                          ; $5195: $ef
	adc h                                            ; $5196: $8c
	dec d                                            ; $5197: $15

Call_043_5198:
	jr c, jr_043_517d                                ; $5198: $38 $e3

	rst SubAFromHL                                          ; $519a: $d7
	ccf                                              ; $519b: $3f
	rst GetHLinHL                                          ; $519c: $cf
	inc sp                                           ; $519d: $33
	jp $0008                                        ; $519e: $c3 $08 $00


	ld a, d                                          ; $51a1: $7a
	adc [hl]                                         ; $51a2: $8e
	ld a, a                                          ; $51a3: $7f
	db $ed                                           ; $51a4: $ed
	sub e                                            ; $51a5: $93
	jp c, $b7f5                                      ; $51a6: $da $f5 $b7

	rst GetHLinHL                                          ; $51a9: $cf
	cp h                                             ; $51aa: $bc
	add hl, sp                                       ; $51ab: $39
	ld h, d                                          ; $51ac: $62
	reti                                             ; $51ad: $d9


	dec d                                            ; $51ae: $15
	ld a, [bc]                                       ; $51af: $0a
	ld b, b                                          ; $51b0: $40
	inc b                                            ; $51b1: $04
	ld [hl], a                                       ; $51b2: $77
	db $ed                                           ; $51b3: $ed
	add a                                            ; $51b4: $87
	inc c                                            ; $51b5: $0c
	ld b, a                                          ; $51b6: $47
	and b                                            ; $51b7: $a0
	or h                                             ; $51b8: $b4
	sbc $7d                                          ; $51b9: $de $7d
	and l                                            ; $51bb: $a5
	ld c, [hl]                                       ; $51bc: $4e
	call z, Call_043_5eb3                            ; $51bd: $cc $b3 $5e
	ld a, [bc]                                       ; $51c0: $0a
	ld hl, $0282                                     ; $51c1: $21 $82 $02
	nop                                              ; $51c4: $00
	add b                                            ; $51c5: $80
	ret nz                                           ; $51c6: $c0

	ld hl, sp-$31                                    ; $51c7: $f8 $cf
	ld l, a                                          ; $51c9: $6f
	pop af                                           ; $51ca: $f1
	xor $dc                                          ; $51cb: $ee $dc
	ld a, d                                          ; $51cd: $7a
	ldh [$9a], a                                     ; $51ce: $e0 $9a
	ld l, [hl]                                       ; $51d0: $6e
	add c                                            ; $51d1: $81
	ld c, $10                                        ; $51d2: $0e $10
	ld h, b                                          ; $51d4: $60
	db $fd                                           ; $51d5: $fd
	sbc e                                            ; $51d6: $9b
	ldh [$dc], a                                     ; $51d7: $e0 $dc
	rst SubAFromBC                                          ; $51d9: $e7
	add c                                            ; $51da: $81
	db $fd                                           ; $51db: $fd
	sbc e                                            ; $51dc: $9b
	ret nz                                           ; $51dd: $c0

	jr c, jr_043_525e                                ; $51de: $38 $7e

	rst SubAFromBC                                          ; $51e0: $e7
	ld l, d                                          ; $51e1: $6a
	jp $f09e                                         ; $51e2: $c3 $9e $f0


	ld a, [$c09e]                                    ; $51e5: $fa $9e $c0
	sbc $03                                          ; $51e8: $de $03
	ld [hl], d                                       ; $51ea: $72
	ld [hl], $78                                     ; $51eb: $36 $78
	ret nc                                           ; $51ed: $d0

	ld [hl], e                                       ; $51ee: $73
	ld hl, sp-$22                                    ; $51ef: $f8 $de
	ld hl, $fd9d                                     ; $51f1: $21 $9d $fd
	ld a, a                                          ; $51f4: $7f
	ld a, b                                          ; $51f5: $78
	jp nz, $ffdc                                     ; $51f6: $c2 $dc $ff

	cp $94                                           ; $51f9: $fe $94
	and b                                            ; $51fb: $a0
	add [hl]                                         ; $51fc: $86
	add b                                            ; $51fd: $80
	add b                                            ; $51fe: $80
	add e                                            ; $51ff: $83
	rst $38                                          ; $5200: $ff
	inc bc                                           ; $5201: $03
	nop                                              ; $5202: $00
	rst SubAFromDE                                          ; $5203: $df
	pop bc                                           ; $5204: $c1
	ret nz                                           ; $5205: $c0

	ld a, d                                          ; $5206: $7a
	ld l, c                                          ; $5207: $69
	rst $38                                          ; $5208: $ff
	sbc b                                            ; $5209: $98
	scf                                              ; $520a: $37
	rla                                              ; $520b: $17
	halt                                             ; $520c: $76
	inc b                                            ; $520d: $04
	nop                                              ; $520e: $00
	ldh a, [$fe]                                     ; $520f: $f0 $fe
	ld a, e                                          ; $5211: $7b
	ldh [$7c], a                                     ; $5212: $e0 $7c
	db $e4                                           ; $5214: $e4
	db $fd                                           ; $5215: $fd
	ld [hl], l                                       ; $5216: $75
	adc c                                            ; $5217: $89
	halt                                             ; $5218: $76
	ld [hl], a                                       ; $5219: $77
	db $dd                                           ; $521a: $dd
	add b                                            ; $521b: $80
	sbc [hl]                                         ; $521c: $9e
	jr nc, jr_043_529a                               ; $521d: $30 $7b

	cp [hl]                                          ; $521f: $be
	ld c, a                                          ; $5220: $4f
	nop                                              ; $5221: $00
	rst SubAFromDE                                          ; $5222: $df
	ld d, l                                          ; $5223: $55
	sbc $66                                          ; $5224: $de $66
	call c, $9d33                                    ; $5226: $dc $33 $9d
	ld d, l                                          ; $5229: $55
	ld d, [hl]                                       ; $522a: $56
	ld l, e                                          ; $522b: $6b
	rst FarCall                                          ; $522c: $f7
	ld a, a                                          ; $522d: $7f
	or $6b                                           ; $522e: $f6 $6b
	ld hl, sp-$21                                    ; $5230: $f8 $df
	inc sp                                           ; $5232: $33
	sbc c                                            ; $5233: $99
	ld b, [hl]                                       ; $5234: $46
	inc sp                                           ; $5235: $33
	inc sp                                           ; $5236: $33
	ld [hl], $36                                     ; $5237: $36 $36
	ld h, e                                          ; $5239: $63
	ld l, a                                          ; $523a: $6f
	or $9c                                           ; $523b: $f6 $9c
	halt                                             ; $523d: $76
	ld h, [hl]                                       ; $523e: $66
	inc sp                                           ; $523f: $33
	ld a, e                                          ; $5240: $7b
	or $77                                           ; $5241: $f6 $77
	jp nc, $ee6f                                     ; $5243: $d2 $6f $ee

	ld h, e                                          ; $5246: $63
	or $9b                                           ; $5247: $f6 $9b
	dec [hl]                                         ; $5249: $35
	ld d, l                                          ; $524a: $55
	ld d, [hl]                                       ; $524b: $56
	ld [hl], a                                       ; $524c: $77
	ld l, a                                          ; $524d: $6f
	jp c, Jump_043_659e                              ; $524e: $da $9e $65

	ld a, e                                          ; $5251: $7b
	or $7f                                           ; $5252: $f6 $7f
	reti                                             ; $5254: $d9


	adc b                                            ; $5255: $88
	ld h, l                                          ; $5256: $65
	ld h, [hl]                                       ; $5257: $66
	ld h, e                                          ; $5258: $63
	inc sp                                           ; $5259: $33
	ld h, l                                          ; $525a: $65
	halt                                             ; $525b: $76
	ld d, l                                          ; $525c: $55
	halt                                             ; $525d: $76

jr_043_525e:
	ld h, [hl]                                       ; $525e: $66
	ld h, [hl]                                       ; $525f: $66
	ld h, l                                          ; $5260: $65
	ld d, h                                          ; $5261: $54
	ld b, [hl]                                       ; $5262: $46
	ld h, [hl]                                       ; $5263: $66
	ld h, [hl]                                       ; $5264: $66
	ld h, a                                          ; $5265: $67
	halt                                             ; $5266: $76
	ld [hl], l                                       ; $5267: $75
	ld d, [hl]                                       ; $5268: $56
	ld h, [hl]                                       ; $5269: $66
	ld h, l                                          ; $526a: $65
	ld [hl], a                                       ; $526b: $77
	ld [hl], h                                       ; $526c: $74
	db $dd                                           ; $526d: $dd
	ld h, [hl]                                       ; $526e: $66
	ld a, d                                          ; $526f: $7a
	add hl, bc                                       ; $5270: $09
	sbc l                                            ; $5271: $9d
	nop                                              ; $5272: $00
	rst $38                                          ; $5273: $ff
	rra                                              ; $5274: $1f
	cp $9b                                           ; $5275: $fe $9b
	ld [$01f7], sp                                   ; $5277: $08 $f7 $01
	cp $5f                                           ; $527a: $fe $5f
	ldh a, [c]                                       ; $527c: $f2
	sbc c                                            ; $527d: $99
	ld d, l                                          ; $527e: $55
	xor d                                            ; $527f: $aa
	adc d                                            ; $5280: $8a
	ld [hl], l                                       ; $5281: $75
	ld d, l                                          ; $5282: $55
	xor d                                            ; $5283: $aa
	ld d, a                                          ; $5284: $57
	ldh [$9d], a                                     ; $5285: $e0 $9d
	add b                                            ; $5287: $80
	ld a, a                                          ; $5288: $7f
	rla                                              ; $5289: $17
	jp nz, $fe6b                                     ; $528a: $c2 $6b $fe

	sbc [hl]                                         ; $528d: $9e
	db $fc                                           ; $528e: $fc
	ld c, a                                          ; $528f: $4f
	cp $94                                           ; $5290: $fe $94
	dec d                                            ; $5292: $15
	dec hl                                           ; $5293: $2b
	ld a, [hl-]                                      ; $5294: $3a
	dec d                                            ; $5295: $15
	dec b                                            ; $5296: $05
	dec sp                                           ; $5297: $3b

Call_043_5298:
	ld a, [hl-]                                      ; $5298: $3a
	rla                                              ; $5299: $17

jr_043_529a:
	dec d                                            ; $529a: $15
	cpl                                              ; $529b: $2f
	ld a, [hl+]                                      ; $529c: $2a
	ld [hl], e                                       ; $529d: $73
	db $fc                                           ; $529e: $fc
	add b                                            ; $529f: $80
	ld d, l                                          ; $52a0: $55
	rst $38                                          ; $52a1: $ff
	xor d                                            ; $52a2: $aa
	rst $38                                          ; $52a3: $ff
	ld d, l                                          ; $52a4: $55
	rst $38                                          ; $52a5: $ff
	adc d                                            ; $52a6: $8a
	rst $38                                          ; $52a7: $ff
	ld d, l                                          ; $52a8: $55
	rst AddAOntoHL                                          ; $52a9: $ef
	xor d                                            ; $52aa: $aa
	rst SubAFromHL                                          ; $52ab: $d7
	ld d, c                                          ; $52ac: $51
	xor d                                            ; $52ad: $aa
	and b                                            ; $52ae: $a0
	ld d, l                                          ; $52af: $55
	ld d, [hl]                                       ; $52b0: $56
	db $eb                                           ; $52b1: $eb
	xor e                                            ; $52b2: $ab
	push de                                          ; $52b3: $d5
	ld d, l                                          ; $52b4: $55
	xor d                                            ; $52b5: $aa
	xor d                                            ; $52b6: $aa
	ld d, l                                          ; $52b7: $55
	ld d, c                                          ; $52b8: $51
	xor d                                            ; $52b9: $aa
	and d                                            ; $52ba: $a2
	ld d, l                                          ; $52bb: $55
	ld b, c                                          ; $52bc: $41
	xor d                                            ; $52bd: $aa
	and d                                            ; $52be: $a2
	add b                                            ; $52bf: $80
	ld d, h                                          ; $52c0: $54
	or d                                             ; $52c1: $b2
	rst AddAOntoHL                                          ; $52c2: $ef
	ld l, l                                          ; $52c3: $6d
	rst SubAFromHL                                          ; $52c4: $d7
	jp nc, $a8af                                     ; $52c5: $d2 $af $a8

	ld b, a                                          ; $52c8: $47
	ld d, l                                          ; $52c9: $55
	adc d                                            ; $52ca: $8a
	xor d                                            ; $52cb: $aa
	ld b, l                                          ; $52cc: $45
	ld d, l                                          ; $52cd: $55
	add d                                            ; $52ce: $82
	ld [bc], a                                       ; $52cf: $02
	ld b, b                                          ; $52d0: $40
	db $db                                           ; $52d1: $db
	xor a                                            ; $52d2: $af
	dec l                                            ; $52d3: $2d
	rst SubAFromHL                                          ; $52d4: $d7
	ld d, [hl]                                       ; $52d5: $56
	adc e                                            ; $52d6: $8b
	xor e                                            ; $52d7: $ab
	ld b, l                                          ; $52d8: $45
	ld d, h                                          ; $52d9: $54
	add e                                            ; $52da: $83
	xor d                                            ; $52db: $aa
	dec b                                            ; $52dc: $05
	ld d, l                                          ; $52dd: $55
	ld [bc], a                                       ; $52de: $02
	sbc c                                            ; $52df: $99
	add b                                            ; $52e0: $80
	dec b                                            ; $52e1: $05
	inc bc                                           ; $52e2: $03
	add e                                            ; $52e3: $83
	add d                                            ; $52e4: $82
	inc bc                                           ; $52e5: $03
	ld d, a                                          ; $52e6: $57
	db $fc                                           ; $52e7: $fc
	inc bc                                           ; $52e8: $03
	ld [hl], b                                       ; $52e9: $70
	ld c, e                                          ; $52ea: $4b
	cp $9e                                           ; $52eb: $fe $9e
	ret nz                                           ; $52ed: $c0

	ld c, e                                          ; $52ee: $4b
	cp $5f                                           ; $52ef: $fe $5f
	and $97                                          ; $52f1: $e6 $97
	inc b                                            ; $52f3: $04
	ei                                               ; $52f4: $fb
	nop                                              ; $52f5: $00
	rst $38                                          ; $52f6: $ff
	inc d                                            ; $52f7: $14
	db $eb                                           ; $52f8: $eb
	ld c, $ff                                        ; $52f9: $0e $ff
	ld c, a                                          ; $52fb: $4f
	cp $9a                                           ; $52fc: $fe $9a
	ld bc, $2a2e                                     ; $52fe: $01 $2e $2a
	dec d                                            ; $5301: $15
	ld de, $fc6b                                     ; $5302: $11 $6b $fc
	sbc e                                            ; $5305: $9b
	dec d                                            ; $5306: $15
	ld a, [hl+]                                      ; $5307: $2a
	ld a, [hl+]                                      ; $5308: $2a
	dec d                                            ; $5309: $15
	ld e, a                                          ; $530a: $5f
	ret nc                                           ; $530b: $d0

	sub h                                            ; $530c: $94
	dec b                                            ; $530d: $05
	ld a, [$d52a]                                    ; $530e: $fa $2a $d5
	dec d                                            ; $5311: $15
	ld [$5da2], a                                    ; $5312: $ea $a2 $5d
	ld d, l                                          ; $5315: $55
	xor d                                            ; $5316: $aa
	ld a, [hl+]                                      ; $5317: $2a
	ld [hl], e                                       ; $5318: $73
	ld a, $73                                        ; $5319: $3e $73
	ld a, [hl-]                                      ; $531b: $3a
	sbc [hl]                                         ; $531c: $9e
	xor [hl]                                         ; $531d: $ae
	ld l, a                                          ; $531e: $6f
	ld hl, sp+$77                                    ; $531f: $f8 $77
	db $fc                                           ; $5321: $fc
	sbc l                                            ; $5322: $9d
	ld e, a                                          ; $5323: $5f
	and b                                            ; $5324: $a0
	ld [hl], a                                       ; $5325: $77
	reti                                             ; $5326: $d9


	ld e, a                                          ; $5327: $5f
	ldh a, [hDisp0_WX]                                     ; $5328: $f0 $89
	push de                                          ; $532a: $d5
	ld a, [hl+]                                      ; $532b: $2a
	ld [$d515], a                                    ; $532c: $ea $15 $d5
	ld a, [hl+]                                      ; $532f: $2a
	nop                                              ; $5330: $00
	rst $38                                          ; $5331: $ff
	ld b, b                                          ; $5332: $40
	cp a                                             ; $5333: $bf
	and b                                            ; $5334: $a0
	ld e, a                                          ; $5335: $5f
	ld bc, $20fe                                     ; $5336: $01 $fe $20
	rst SubAFromDE                                          ; $5339: $df
	ld b, h                                          ; $533a: $44
	cp e                                             ; $533b: $bb
	ld a, [bc]                                       ; $533c: $0a
	push af                                          ; $533d: $f5
	ld d, c                                          ; $533e: $51
	xor [hl]                                         ; $533f: $ae
	ld e, [hl]                                       ; $5340: $5e
	and h                                            ; $5341: $a4
	ld [hl], a                                       ; $5342: $77
	add sp, -$63                                     ; $5343: $e8 $9d
	ld d, h                                          ; $5345: $54
	xor e                                            ; $5346: $ab
	ld l, [hl]                                       ; $5347: $6e
	jp z, $1095                                      ; $5348: $ca $95 $10

	db $ec                                           ; $534b: $ec
	db $10                                           ; $534c: $10
	db $ec                                           ; $534d: $ec
	inc d                                            ; $534e: $14
	add sp, $30                                      ; $534f: $e8 $30
	call z, $8c70                                    ; $5351: $cc $70 $8c
	ld [hl], a                                       ; $5354: $77
	adc h                                            ; $5355: $8c
	ld a, a                                          ; $5356: $7f
	db $fc                                           ; $5357: $fc
	rst SubAFromDE                                          ; $5358: $df
	ccf                                              ; $5359: $3f
	ld sp, hl                                        ; $535a: $f9
	sbc [hl]                                         ; $535b: $9e

jr_043_535c:
	ld b, b                                          ; $535c: $40
	ld [hl], e                                       ; $535d: $73
	or d                                             ; $535e: $b2
	sbc l                                            ; $535f: $9d
	cp $ff                                           ; $5360: $fe $ff
	ld hl, sp-$62                                    ; $5362: $f8 $9e
	jr z, @+$75                                      ; $5364: $28 $73

	and d                                            ; $5366: $a2
	sbc [hl]                                         ; $5367: $9e
	db $fd                                           ; $5368: $fd
	rst FarCall                                          ; $5369: $f7
	ld l, a                                          ; $536a: $6f
	sub d                                            ; $536b: $92
	daa                                              ; $536c: $27
	ldh a, [$6e]                                     ; $536d: $f0 $6e
	ret z                                            ; $536f: $c8

	sbc [hl]                                         ; $5370: $9e
	ld [bc], a                                       ; $5371: $02
	sbc $03                                          ; $5372: $de $03
	ld l, a                                          ; $5374: $6f
	db $fc                                           ; $5375: $fc
	ld e, a                                          ; $5376: $5f
	add b                                            ; $5377: $80
	ld l, a                                          ; $5378: $6f
	cp $02                                           ; $5379: $fe $02
	ret nz                                           ; $537b: $c0

	ld c, e                                          ; $537c: $4b
	cp $7d                                           ; $537d: $fe $7d
	call z, $cc7e                                    ; $537f: $cc $7e $cc
	sbc c                                            ; $5382: $99
	jr z, jr_043_535c                                ; $5383: $28 $d7

	inc d                                            ; $5385: $14
	db $eb                                           ; $5386: $eb
	ld a, [hl+]                                      ; $5387: $2a
	push de                                          ; $5388: $d5
	ld [hl], a                                       ; $5389: $77
	db $fc                                           ; $538a: $fc
	ld a, a                                          ; $538b: $7f
	sub [hl]                                         ; $538c: $96
	sub e                                            ; $538d: $93
	ld l, $df                                        ; $538e: $2e $df
	ld c, [hl]                                       ; $5390: $4e
	cp a                                             ; $5391: $bf
	ld l, $df                                        ; $5392: $2e $df
	ld e, $ef                                        ; $5394: $1e $ef
	ld l, $df                                        ; $5396: $2e $df
	ld e, [hl]                                       ; $5398: $5e
	xor a                                            ; $5399: $af
	ld [hl], a                                       ; $539a: $77
	db $fc                                           ; $539b: $fc
	ld l, a                                          ; $539c: $6f
	ld b, b                                          ; $539d: $40
	ld e, a                                          ; $539e: $5f
	db $fc                                           ; $539f: $fc
	ld a, a                                          ; $53a0: $7f
	call nc, $109b                                   ; $53a1: $d4 $9b $10
	rst AddAOntoHL                                          ; $53a4: $ef
	ld [bc], a                                       ; $53a5: $02
	db $fd                                           ; $53a6: $fd
	ld a, e                                          ; $53a7: $7b
	ld b, c                                          ; $53a8: $41
	ld a, e                                          ; $53a9: $7b
	or h                                             ; $53aa: $b4
	adc a                                            ; $53ab: $8f
	pop de                                           ; $53ac: $d1
	cpl                                              ; $53ad: $2f
	ccf                                              ; $53ae: $3f
	rst $38                                          ; $53af: $ff
	dec h                                            ; $53b0: $25
	jp c, $ec13                                      ; $53b1: $da $13 $ec

	xor a                                            ; $53b4: $af
	ld d, b                                          ; $53b5: $50
	rst $38                                          ; $53b6: $ff
	nop                                              ; $53b7: $00
	rlca                                             ; $53b8: $07
	ld hl, sp-$22                                    ; $53b9: $f8 $de
	cpl                                              ; $53bb: $2f
	call c, Call_043_5bff                            ; $53bc: $dc $ff $5b
	sub e                                            ; $53bf: $93
	ld a, a                                          ; $53c0: $7f
	ld [hl], c                                       ; $53c1: $71
	ld a, a                                          ; $53c2: $7f
	ld l, c                                          ; $53c3: $69
	halt                                             ; $53c4: $76
	ret z                                            ; $53c5: $c8

	ld a, a                                          ; $53c6: $7f
	db $fc                                           ; $53c7: $fc
	sbc l                                            ; $53c8: $9d
	rst SubAFromHL                                          ; $53c9: $d7
	jr z, jr_043_5433                                ; $53ca: $28 $67

	db $ec                                           ; $53cc: $ec
	ld [hl], a                                       ; $53cd: $77
	ld [hl-], a                                      ; $53ce: $32
	adc e                                            ; $53cf: $8b
	cp [hl]                                          ; $53d0: $be
	ld b, c                                          ; $53d1: $41
	db $fd                                           ; $53d2: $fd
	ld [bc], a                                       ; $53d3: $02
	ld a, [$fc05]                                    ; $53d4: $fa $05 $fc
	inc bc                                           ; $53d7: $03
	cp $01                                           ; $53d8: $fe $01
	db $fd                                           ; $53da: $fd
	ld [bc], a                                       ; $53db: $02
	xor b                                            ; $53dc: $a8
	ld d, a                                          ; $53dd: $57
	ld d, b                                          ; $53de: $50
	xor a                                            ; $53df: $af
	and b                                            ; $53e0: $a0
	ld e, a                                          ; $53e1: $5f
	ld b, b                                          ; $53e2: $40
	cp a                                             ; $53e3: $bf
	halt                                             ; $53e4: $76
	ret nz                                           ; $53e5: $c0

	adc a                                            ; $53e6: $8f
	inc h                                            ; $53e7: $24
	db $db                                           ; $53e8: $db
	db $10                                           ; $53e9: $10
	rst AddAOntoHL                                          ; $53ea: $ef
	adc b                                            ; $53eb: $88
	ld a, a                                          ; $53ec: $7f
	cp a                                             ; $53ed: $bf
	ld a, a                                          ; $53ee: $7f
	ld a, a                                          ; $53ef: $7f
	cp a                                             ; $53f0: $bf
	scf                                              ; $53f1: $37
	rst GetHLinHL                                          ; $53f2: $cf
	inc c                                            ; $53f3: $0c
	di                                               ; $53f4: $f3
	inc bc                                           ; $53f5: $03
	db $fc                                           ; $53f6: $fc
	ld l, a                                          ; $53f7: $6f
	call $ffdb                                       ; $53f8: $cd $db $ff
	ld a, e                                          ; $53fb: $7b
	ld hl, sp-$80                                    ; $53fc: $f8 $80
	nop                                              ; $53fe: $00
	ld [bc], a                                       ; $53ff: $02
	db $fd                                           ; $5400: $fd
	dec h                                            ; $5401: $25
	jp c, $ff00                                      ; $5402: $da $00 $ff

	db $fc                                           ; $5405: $fc
	rst $38                                          ; $5406: $ff
	db $fd                                           ; $5407: $fd
	rst $38                                          ; $5408: $ff
	rst SubAFromBC                                          ; $5409: $e7
	cp $05                                           ; $540a: $fe $05
	ldh a, [c]                                       ; $540c: $f2
	rst FarCall                                          ; $540d: $f7
	ld [$4cb3], sp                                   ; $540e: $08 $b3 $4c
	ld de, $55ee                                     ; $5411: $11 $ee $55
	nop                                              ; $5414: $00
	cp h                                             ; $5415: $bc
	rst SubAFromDE                                          ; $5416: $df
	rst SubAFromDE                                          ; $5417: $df
	rst $38                                          ; $5418: $ff
	rst SubAFromDE                                          ; $5419: $df
	cp a                                             ; $541a: $bf
	sbc h                                            ; $541b: $9c
	inc bc                                           ; $541c: $03
	adc c                                            ; $541d: $89
	or $01                                           ; $541e: $f6 $01
	ld hl, sp+$07                                    ; $5420: $f8 $07
	pop bc                                           ; $5422: $c1
	rrca                                             ; $5423: $0f
	ld d, l                                          ; $5424: $55
	nop                                              ; $5425: $00
	cp d                                             ; $5426: $ba
	rst FarCall                                          ; $5427: $f7
	cp $d7                                           ; $5428: $fe $d7
	db $fd                                           ; $542a: $fd
	add $8c                                          ; $542b: $c6 $8c
	nop                                              ; $542d: $00
	db $db                                           ; $542e: $db
	add b                                            ; $542f: $80
	rst SubAFromBC                                          ; $5430: $e7
	add b                                            ; $5431: $80
	rra                                              ; $5432: $1f

jr_043_5433:
	add b                                            ; $5433: $80
	ld [hl], a                                       ; $5434: $77
	ret nz                                           ; $5435: $c0

	sbc [hl]                                         ; $5436: $9e
	ld a, a                                          ; $5437: $7f
	ld a, e                                          ; $5438: $7b
	jr jr_043_54b2                                   ; $5439: $18 $77

	adc b                                            ; $543b: $88
	halt                                             ; $543c: $76
	inc d                                            ; $543d: $14
	sbc [hl]                                         ; $543e: $9e
	inc bc                                           ; $543f: $03
	ld l, e                                          ; $5440: $6b
	or d                                             ; $5441: $b2
	ld a, a                                          ; $5442: $7f
	ldh a, [$9b]                                     ; $5443: $f0 $9b
	ld b, l                                          ; $5445: $45
	cp d                                             ; $5446: $ba
	adc b                                            ; $5447: $88
	ld [hl], a                                       ; $5448: $77
	ld a, e                                          ; $5449: $7b
	adc b                                            ; $544a: $88
	ld [hl], d                                       ; $544b: $72
	ld a, [$887f]                                    ; $544c: $fa $7f $88
	ld [hl], a                                       ; $544f: $77
	ld a, h                                          ; $5450: $7c
	ld bc, $3a82                                     ; $5451: $01 $82 $3a
	ret nz                                           ; $5454: $c0

	add e                                            ; $5455: $83
	ld l, $d1                                        ; $5456: $2e $d1
	ld e, l                                          ; $5458: $5d
	and d                                            ; $5459: $a2
	ld l, $d1                                        ; $545a: $2e $d1
	ld e, a                                          ; $545c: $5f
	and b                                            ; $545d: $a0
	cpl                                              ; $545e: $2f
	ret nc                                           ; $545f: $d0

	ld e, a                                          ; $5460: $5f
	and b                                            ; $5461: $a0
	xor a                                            ; $5462: $af
	ld d, b                                          ; $5463: $50
	ld e, a                                          ; $5464: $5f
	and b                                            ; $5465: $a0
	xor [hl]                                         ; $5466: $ae
	ld e, a                                          ; $5467: $5f
	ld a, [hl]                                       ; $5468: $7e
	adc a                                            ; $5469: $8f
	cp [hl]                                          ; $546a: $be
	ld c, a                                          ; $546b: $4f
	ld a, [hl]                                       ; $546c: $7e
	adc a                                            ; $546d: $8f
	rst $38                                          ; $546e: $ff
	ld c, $fe                                        ; $546f: $0e $fe
	rrca                                             ; $5471: $0f
	ld [hl], a                                       ; $5472: $77
	cp $76                                           ; $5473: $fe $76
	call z, Call_043_559a                            ; $5475: $cc $9a $55
	ld a, [hl+]                                      ; $5478: $2a
	ld a, [hl+]                                      ; $5479: $2a
	ld d, c                                          ; $547a: $51
	ld d, c                                          ; $547b: $51
	ld a, e                                          ; $547c: $7b
	db $fc                                           ; $547d: $fc
	sbc [hl]                                         ; $547e: $9e
	ld de, $fc7b                                     ; $547f: $11 $7b $fc
	ld a, a                                          ; $5482: $7f
	ld b, h                                          ; $5483: $44
	sub [hl]                                         ; $5484: $96
	add sp, -$01                                     ; $5485: $e8 $ff
	ld d, b                                          ; $5487: $50
	rst $38                                          ; $5488: $ff
	xor b                                            ; $5489: $a8
	rst $38                                          ; $548a: $ff
	ld b, b                                          ; $548b: $40
	rst $38                                          ; $548c: $ff
	and b                                            ; $548d: $a0
	ld a, e                                          ; $548e: $7b
	db $fc                                           ; $548f: $fc
	add b                                            ; $5490: $80
	add l                                            ; $5491: $85
	ld a, [$ff06]                                    ; $5492: $fa $06 $ff
	dec b                                            ; $5495: $05
	rst $38                                          ; $5496: $ff
	ld c, $f7                                        ; $5497: $0e $f7

Call_043_5499:
	dec d                                            ; $5499: $15
	rst AddAOntoHL                                          ; $549a: $ef
	ld c, $f7                                        ; $549b: $0e $f7
	dec e                                            ; $549d: $1d
	rst SubAFromBC                                          ; $549e: $e7
	xor [hl]                                         ; $549f: $ae
	ld d, a                                          ; $54a0: $57
	ld e, l                                          ; $54a1: $5d

Call_043_54a2:
	and a                                            ; $54a2: $a7
	cp a                                             ; $54a3: $bf
	ret nz                                           ; $54a4: $c0

	ld a, a                                          ; $54a5: $7f
	ret nz                                           ; $54a6: $c0

	cp a                                             ; $54a7: $bf
	ldh [$5f], a                                     ; $54a8: $e0 $5f

Call_043_54aa:
	ldh a, [$af]                                     ; $54aa: $f0 $af
	ld hl, sp+$53                                    ; $54ac: $f8 $53
	db $fc                                           ; $54ae: $fc
	xor e                                            ; $54af: $ab
	sbc l                                            ; $54b0: $9d
	db $fc                                           ; $54b1: $fc

jr_043_54b2:
	ld d, l                                          ; $54b2: $55
	ld a, c                                          ; $54b3: $79
	rst SubAFromHL                                          ; $54b4: $d7
	ld c, a                                          ; $54b5: $4f
	cp $7e                                           ; $54b6: $fe $7e
	call z, $fa77                                    ; $54b8: $cc $77 $fa
	adc l                                            ; $54bb: $8d
	ei                                               ; $54bc: $fb
	inc b                                            ; $54bd: $04
	ld [$5515], a                                    ; $54be: $ea $15 $55
	xor d                                            ; $54c1: $aa
	xor b                                            ; $54c2: $a8
	ld d, a                                          ; $54c3: $57
	rst $38                                          ; $54c4: $ff
	nop                                              ; $54c5: $00
	and [hl]                                         ; $54c6: $a6
	ld e, c                                          ; $54c7: $59
	ld b, l                                          ; $54c8: $45
	cp d                                             ; $54c9: $ba
	xor d                                            ; $54ca: $aa
	ld d, l                                          ; $54cb: $55
	ld d, h                                          ; $54cc: $54
	xor e                                            ; $54cd: $ab
	ld [hl], a                                       ; $54ce: $77
	db $fc                                           ; $54cf: $fc
	ld a, a                                          ; $54d0: $7f
	inc a                                            ; $54d1: $3c
	add b                                            ; $54d2: $80
	ld c, c                                          ; $54d3: $49
	or [hl]                                          ; $54d4: $b6
	add b                                            ; $54d5: $80
	ld a, a                                          ; $54d6: $7f
	ld d, b                                          ; $54d7: $50
	xor a                                            ; $54d8: $af
	xor b                                            ; $54d9: $a8
	ld d, a                                          ; $54da: $57
	ldh a, [rIF]                                     ; $54db: $f0 $0f
	ret z                                            ; $54dd: $c8

	scf                                              ; $54de: $37
	ld d, c                                          ; $54df: $51
	xor [hl]                                         ; $54e0: $ae
	ld h, l                                          ; $54e1: $65

jr_043_54e2:
	sbc d                                            ; $54e2: $9a
	ld a, d                                          ; $54e3: $7a
	add l                                            ; $54e4: $85
	ld c, d                                          ; $54e5: $4a
	or l                                             ; $54e6: $b5
	sub l                                            ; $54e7: $95
	ld l, d                                          ; $54e8: $6a
	xor a                                            ; $54e9: $af
	ld e, a                                          ; $54ea: $5f
	ld sp, $6adf                                     ; $54eb: $31 $df $6a
	sub l                                            ; $54ee: $95
	sbc h                                            ; $54ef: $9c
	ld h, e                                          ; $54f0: $63
	ld [hl], e                                       ; $54f1: $73
	add b                                            ; $54f2: $80
	adc a                                            ; $54f3: $8f
	xor $1f                                          ; $54f4: $ee $1f
	cp d                                             ; $54f6: $ba
	ld b, l                                          ; $54f7: $45
	db $fd                                           ; $54f8: $fd
	ld [bc], a                                       ; $54f9: $02
	jr jr_043_54e2                                   ; $54fa: $18 $e6

	ld [$f8f4], a                                    ; $54fc: $ea $f4 $f8
	ld hl, sp+$79                                    ; $54ff: $f8 $79
	ld hl, sp-$09                                    ; $5501: $f8 $f7
	ld hl, sp+$10                                    ; $5503: $f8 $10
	rst $38                                          ; $5505: $ff
	add c                                            ; $5506: $81
	add hl, de                                       ; $5507: $19
	db $10                                           ; $5508: $10
	add hl, sp                                       ; $5509: $39
	db $db                                           ; $550a: $db
	ld a, l                                          ; $550b: $7d
	jr nc, @+$01                                     ; $550c: $30 $ff

	ld bc, $4170                                     ; $550e: $01 $70 $41
	ld hl, sp-$75                                    ; $5511: $f8 $8b
	rst SubAFromDE                                          ; $5513: $df
	ldh [rP1], a                                     ; $5514: $e0 $00
	add b                                            ; $5516: $80
	add [hl]                                         ; $5517: $86
	sbc c                                            ; $5518: $99
	jp $e2ec                                         ; $5519: $c3 $ec $e2


	db $fd                                           ; $551c: $fd
	di                                               ; $551d: $f3
	db $fc                                           ; $551e: $fc
	ldh [$f3], a                                     ; $551f: $e0 $f3
	ldh [$f1], a                                     ; $5521: $e0 $f1
	ld b, c                                          ; $5523: $41
	rst $38                                          ; $5524: $ff
	nop                                              ; $5525: $00
	jr nc, @+$78                                     ; $5526: $30 $76

	ret z                                            ; $5528: $c8

	sub c                                            ; $5529: $91
	ei                                               ; $552a: $fb
	rra                                              ; $552b: $1f
	ccf                                              ; $552c: $3f
	rst $38                                          ; $552d: $ff
	ld hl, sp-$01                                    ; $552e: $f8 $ff
	db $eb                                           ; $5530: $eb
	db $fc                                           ; $5531: $fc
	sbc h                                            ; $5532: $9c
	rst $38                                          ; $5533: $ff
	jr c, @-$37                                      ; $5534: $38 $c7

	and b                                            ; $5536: $a0
	ld e, a                                          ; $5537: $5f
	ld [hl], a                                       ; $5538: $77
	ld a, c                                          ; $5539: $79
	ld h, h                                          ; $553a: $64
	db $ec                                           ; $553b: $ec
	ld l, l                                          ; $553c: $6d
	ld hl, sp+$77                                    ; $553d: $f8 $77
	cp $64                                           ; $553f: $fe $64
	call c, Call_043_705d                            ; $5541: $dc $5d $70
	ld l, a                                          ; $5544: $6f
	call c, Call_043_455f                            ; $5545: $dc $5f $45
	ld l, a                                          ; $5548: $6f
	ldh a, [$7e]                                     ; $5549: $f0 $7e
	adc $9d                                          ; $554b: $ce $9d
	pop bc                                           ; $554d: $c1
	cp $77                                           ; $554e: $fe $77
	db $fc                                           ; $5550: $fc
	sub a                                            ; $5551: $97
	jp z, $d5f5                                      ; $5552: $ca $f5 $d5

	ld [$d5ea], a                                    ; $5555: $ea $ea $d5
	push de                                          ; $5558: $d5
	ld [$cc76], a                                    ; $5559: $ea $76 $cc
	ld h, a                                          ; $555c: $67
	db $fc                                           ; $555d: $fc
	sbc d                                            ; $555e: $9a
	cp a                                             ; $555f: $bf
	ld b, b                                          ; $5560: $40
	rst $38                                          ; $5561: $ff
	nop                                              ; $5562: $00
	rst FarCall                                          ; $5563: $f7
	ld a, b                                          ; $5564: $78
	ld c, e                                          ; $5565: $4b
	ld h, a                                          ; $5566: $67
	db $fc                                           ; $5567: $fc
	sbc [hl]                                         ; $5568: $9e
	rst SubAFromHL                                          ; $5569: $d7
	ld a, e                                          ; $556a: $7b
	db $fc                                           ; $556b: $fc
	ld a, [hl]                                       ; $556c: $7e
	ret z                                            ; $556d: $c8

	add b                                            ; $556e: $80
	ld [hl+], a                                      ; $556f: $22
	ld d, c                                          ; $5570: $51
	ld de, $2222                                     ; $5571: $11 $22 $22
	ld de, $2251                                     ; $5574: $11 $51 $22
	ld [hl+], a                                      ; $5577: $22
	ld d, c                                          ; $5578: $51
	ld d, c                                          ; $5579: $51
	ld [hl+], a                                      ; $557a: $22
	ld a, [hl+]                                      ; $557b: $2a
	ld d, c                                          ; $557c: $51
	ld a, [bc]                                       ; $557d: $0a
	push af                                          ; $557e: $f5
	sub l                                            ; $557f: $95
	ld [$f40b], a                                    ; $5580: $ea $0b $f4
	sub a                                            ; $5583: $97
	add sp, $2b                                      ; $5584: $e8 $2b
	call nc, $a05f                                   ; $5586: $d4 $5f $a0
	cp e                                             ; $5589: $bb
	ld b, a                                          ; $558a: $47
	ld e, a                                          ; $558b: $5f
	cp a                                             ; $558c: $bf
	or [hl]                                          ; $558d: $b6
	adc e                                            ; $558e: $8b
	ld b, a                                          ; $558f: $47
	db $ed                                           ; $5590: $ed
	rlca                                             ; $5591: $07
	sub $07                                          ; $5592: $d6 $07
	xor a                                            ; $5594: $af
	rlca                                             ; $5595: $07
	ld e, [hl]                                       ; $5596: $5e
	ccf                                              ; $5597: $3f
	ld [hl], l                                       ; $5598: $75
	rst $38                                          ; $5599: $ff

Call_043_559a:
	ld [$51ff], a                                    ; $559a: $ea $ff $51
	cp $aa                                           ; $559d: $fe $aa
	rst $38                                          ; $559f: $ff
	ld d, l                                          ; $55a0: $55
	rst $38                                          ; $55a1: $ff
	xor d                                            ; $55a2: $aa
	sbc $ff                                          ; $55a3: $de $ff
	ld a, h                                          ; $55a5: $7c
	xor [hl]                                         ; $55a6: $ae
	sbc e                                            ; $55a7: $9b
	dec b                                            ; $55a8: $05
	ld a, [$54ab]                                    ; $55a9: $fa $ab $54
	ld [hl], h                                       ; $55ac: $74
	inc a                                            ; $55ad: $3c
	ld [hl], l                                       ; $55ae: $75
	ld a, d                                          ; $55af: $7a
	ld a, a                                          ; $55b0: $7f
	adc [hl]                                         ; $55b1: $8e
	sbc b                                            ; $55b2: $98
	ld [$5400], a                                    ; $55b3: $ea $00 $54
	add b                                            ; $55b6: $80
	rst $38                                          ; $55b7: $ff
	nop                                              ; $55b8: $00
	call nc, Call_043_736b                           ; $55b9: $d4 $6b $73
	ld a, e                                          ; $55bc: $7b
	ld d, b                                          ; $55bd: $50
	sbc e                                            ; $55be: $9b
	nop                                              ; $55bf: $00
	dec d                                            ; $55c0: $15
	nop                                              ; $55c1: $00
	ld [hl], e                                       ; $55c2: $73
	cp $67                                           ; $55c3: $fe $67
	ldh a, [$98]                                     ; $55c5: $f0 $98
	sbc $00                                          ; $55c7: $de $00
	xor a                                            ; $55c9: $af
	nop                                              ; $55ca: $00
	ld a, [hl]                                       ; $55cb: $7e
	nop                                              ; $55cc: $00
	sub l                                            ; $55cd: $95
	ld e, e                                          ; $55ce: $5b
	ldh [$7d], a                                     ; $55cf: $e0 $7d
	or [hl]                                          ; $55d1: $b6
	ld [hl], a                                       ; $55d2: $77
	db $fc                                           ; $55d3: $fc
	sbc l                                            ; $55d4: $9d
	rst AddAOntoHL                                          ; $55d5: $ef
	db $10                                           ; $55d6: $10
	ld c, a                                          ; $55d7: $4f
	ldh a, [hDisp1_SCY]                                     ; $55d8: $f0 $90
	ld b, b                                          ; $55da: $40
	add b                                            ; $55db: $80
	ld c, a                                          ; $55dc: $4f
	add b                                            ; $55dd: $80

Call_043_55de:
	inc c                                            ; $55de: $0c
	ret nz                                           ; $55df: $c0

	ccf                                              ; $55e0: $3f
	rst $38                                          ; $55e1: $ff
	ei                                               ; $55e2: $fb
	inc b                                            ; $55e3: $04
	ld sp, hl                                        ; $55e4: $f9
	nop                                              ; $55e5: $00
	ld sp, hl                                        ; $55e6: $f9
	ld bc, $fef8                                     ; $55e7: $01 $f8 $fe
	ld a, [hl]                                       ; $55ea: $7e
	res 3, c                                         ; $55eb: $cb $99
	nop                                              ; $55ed: $00
	ld bc, $fbf9                                     ; $55ee: $01 $f9 $fb
	ld h, [hl]                                       ; $55f1: $66
	ld sp, hl                                        ; $55f2: $f9
	db $dd                                           ; $55f3: $dd
	rst $38                                          ; $55f4: $ff
	adc c                                            ; $55f5: $89
	ei                                               ; $55f6: $fb
	rst $38                                          ; $55f7: $ff

Jump_043_55f8:
	jr nz, jr_043_565a                               ; $55f8: $20 $60

	nop                                              ; $55fa: $00
	ret nz                                           ; $55fb: $c0

	nop                                              ; $55fc: $00
	add b                                            ; $55fd: $80
	rst $38                                          ; $55fe: $ff
	rst $38                                          ; $55ff: $ff
	rst SubAFromDE                                          ; $5600: $df
	db $e3                                           ; $5601: $e3
	push hl                                          ; $5602: $e5
	di                                               ; $5603: $f3
	push hl                                          ; $5604: $e5
	di                                               ; $5605: $f3
	pop hl                                           ; $5606: $e1
	db $e3                                           ; $5607: $e3
	ccf                                              ; $5608: $3f
	ld b, b                                          ; $5609: $40
	ccf                                              ; $560a: $3f
	ld b, b                                          ; $560b: $40
	ld a, e                                          ; $560c: $7b
	jr z, jr_043_5689                                ; $560d: $28 $7a

	ld [de], a                                       ; $560f: $12
	sbc d                                            ; $5610: $9a
	ld d, h                                          ; $5611: $54
	rst $38                                          ; $5612: $ff
	xor c                                            ; $5613: $a9
	cp $52                                           ; $5614: $fe $52
	ld a, b                                          ; $5616: $78
	add $6d                                          ; $5617: $c6 $6d
	dec hl                                           ; $5619: $2b
	sbc l                                            ; $561a: $9d
	dec d                                            ; $561b: $15
	ld [$be66], a                                    ; $561c: $ea $66 $be
	ld l, a                                          ; $561f: $6f
	ldh a, [$7e]                                     ; $5620: $f0 $7e
	ld c, d                                          ; $5622: $4a
	ld c, a                                          ; $5623: $4f
	ldh a, [$9b]                                     ; $5624: $f0 $9b
	ld a, [bc]                                       ; $5626: $0a
	rst $38                                          ; $5627: $ff
	xor b                                            ; $5628: $a8
	ld d, a                                          ; $5629: $57
	ld d, a                                          ; $562a: $57
	ldh a, [rPCM34]                                  ; $562b: $f0 $77
	jr z, jr_043_56a5                                ; $562d: $28 $76

	sbc d                                            ; $562f: $9a
	ld l, l                                          ; $5630: $6d
	adc c                                            ; $5631: $89
	ld a, [hl]                                       ; $5632: $7e
	ld d, [hl]                                       ; $5633: $56
	sbc d                                            ; $5634: $9a
	xor a                                            ; $5635: $af
	ldh a, [$57]                                     ; $5636: $f0 $57
	db $fc                                           ; $5638: $fc
	ld [bc], a                                       ; $5639: $02
	ld a, e                                          ; $563a: $7b
	ldh a, [$9a]                                     ; $563b: $f0 $9a
	rst SubAFromDE                                          ; $563d: $df
	nop                                              ; $563e: $00
	xor $00                                          ; $563f: $ee $00
	rst FarCall                                          ; $5641: $f7
	ld [hl], e                                       ; $5642: $73
	call c, $b894                                    ; $5643: $dc $94 $b8
	nop                                              ; $5646: $00
	rst JumpTable                                          ; $5647: $c7
	add b                                            ; $5648: $80
	ld d, c                                          ; $5649: $51
	ldh [$d7], a                                     ; $564a: $e0 $d7
	ld c, $bf                                        ; $564c: $0e $bf
	ld c, $57                                        ; $564e: $0e $57
	ld a, e                                          ; $5650: $7b
	db $fc                                           ; $5651: $fc
	ld [hl], a                                       ; $5652: $77
	ld hl, sp-$62                                    ; $5653: $f8 $9e
	ld e, a                                          ; $5655: $5f
	ld l, d                                          ; $5656: $6a
	ret nz                                           ; $5657: $c0

	ld a, [hl]                                       ; $5658: $7e
	ret z                                            ; $5659: $c8

jr_043_565a:
	sbc [hl]                                         ; $565a: $9e
	jr nz, @+$74                                     ; $565b: $20 $72

	call nz, Call_043_5198                           ; $565d: $c4 $98 $51
	jr z, jr_043_568a                                ; $5660: $28 $28

	ld d, c                                          ; $5662: $51
	ld a, [$d57f]                                    ; $5663: $fa $7f $d5
	ld a, c                                          ; $5666: $79
	add d                                            ; $5667: $82
	sbc c                                            ; $5668: $99
	ld b, l                                          ; $5669: $45
	ld a, [$f40b]                                    ; $566a: $fa $0b $f4
	dec d                                            ; $566d: $15
	ld [$7a77], a                                    ; $566e: $ea $77 $7a
	sbc d                                            ; $5671: $9a
	add d                                            ; $5672: $82
	db $fd                                           ; $5673: $fd
	dec d                                            ; $5674: $15
	ld [$7a2a], a                                    ; $5675: $ea $2a $7a
	or h                                             ; $5678: $b4
	ld a, a                                          ; $5679: $7f
	ret nz                                           ; $567a: $c0

	ld a, a                                          ; $567b: $7f
	inc h                                            ; $567c: $24
	ld [hl], h                                       ; $567d: $74
	add sp, -$6a                                     ; $567e: $e8 $96
	cp d                                             ; $5680: $ba
	ld b, b                                          ; $5681: $40
	ld d, l                                          ; $5682: $55
	nop                                              ; $5683: $00
	xor b                                            ; $5684: $a8
	nop                                              ; $5685: $00
	ld b, b                                          ; $5686: $40
	nop                                              ; $5687: $00
	and b                                            ; $5688: $a0

jr_043_5689:
	ld a, e                                          ; $5689: $7b

jr_043_568a:
	db $fc                                           ; $568a: $fc
	rst SubAFromDE                                          ; $568b: $df
	rst $38                                          ; $568c: $ff
	ld a, h                                          ; $568d: $7c
	ld a, h                                          ; $568e: $7c
	ld [hl], a                                       ; $568f: $77
	db $f4                                           ; $5690: $f4
	ei                                               ; $5691: $fb
	sbc c                                            ; $5692: $99
	rlca                                             ; $5693: $07
	inc c                                            ; $5694: $0c
	cp e                                             ; $5695: $bb
	inc e                                            ; $5696: $1c
	or b                                             ; $5697: $b0
	ld [hl], b                                       ; $5698: $70
	rst FarCall                                          ; $5699: $f7
	sbc b                                            ; $569a: $98
	rst SubAFromBC                                          ; $569b: $e7
	inc a                                            ; $569c: $3c
	ld d, l                                          ; $569d: $55
	rst $38                                          ; $569e: $ff
	xor e                                            ; $569f: $ab
	ld e, a                                          ; $56a0: $5f
	ld a, [bc]                                       ; $56a1: $0a
	cp $80                                           ; $56a2: $fe $80
	dec b                                            ; $56a4: $05

jr_043_56a5:
	ld [bc], a                                       ; $56a5: $02
	ld [$0004], sp                                   ; $56a6: $08 $04 $00
	db $10                                           ; $56a9: $10
	db $dd                                           ; $56aa: $dd
	inc hl                                           ; $56ab: $23
	ld a, d                                          ; $56ac: $7a
	db $ed                                           ; $56ad: $ed
	ccf                                              ; $56ae: $3f
	ret nz                                           ; $56af: $c0

	xor d                                            ; $56b0: $aa
	nop                                              ; $56b1: $00
	ld d, a                                          ; $56b2: $57
	adc b                                            ; $56b3: $88
	jr nz, jr_043_56c8                               ; $56b4: $20 $12

	inc bc                                           ; $56b6: $03
	ld b, h                                          ; $56b7: $44
	inc b                                            ; $56b8: $04
	add hl, bc                                       ; $56b9: $09
	db $fd                                           ; $56ba: $fd
	ld e, $6b                                        ; $56bb: $1e $6b
	rst $38                                          ; $56bd: $ff
	rla                                              ; $56be: $17
	ei                                               ; $56bf: $fb
	xor e                                            ; $56c0: $ab
	nop                                              ; $56c1: $00
	push de                                          ; $56c2: $d5
	sub a                                            ; $56c3: $97
	nop                                              ; $56c4: $00
	ld l, e                                          ; $56c5: $6b
	add b                                            ; $56c6: $80
	ld [hl], a                                       ; $56c7: $77

jr_043_56c8:
	add b                                            ; $56c8: $80
	xor e                                            ; $56c9: $ab
	nop                                              ; $56ca: $00
	ld d, a                                          ; $56cb: $57
	ld a, d                                          ; $56cc: $7a
	ld [$767e], a                                    ; $56cd: $ea $7e $76
	ld a, [hl]                                       ; $56d0: $7e
	adc $7f                                          ; $56d1: $ce $7f
	cp $9b                                           ; $56d3: $fe $9b
	ei                                               ; $56d5: $fb
	nop                                              ; $56d6: $00
	ld hl, sp+$07                                    ; $56d7: $f8 $07
	ld l, b                                          ; $56d9: $68
	dec h                                            ; $56da: $25
	sbc l                                            ; $56db: $9d
	nop                                              ; $56dc: $00
	ld h, b                                          ; $56dd: $60
	ld [hl], d                                       ; $56de: $72
	ld a, h                                          ; $56df: $7c
	ld [hl], e                                       ; $56e0: $73
	add l                                            ; $56e1: $85
	ld [hl], e                                       ; $56e2: $73
	ldh a, [$98]                                     ; $56e3: $f0 $98
	ld bc, $0103                                     ; $56e5: $01 $03 $01
	inc bc                                           ; $56e8: $03
	db $fd                                           ; $56e9: $fd
	inc bc                                           ; $56ea: $03
	inc b                                            ; $56eb: $04
	ld h, e                                          ; $56ec: $63
	ldh a, [hDisp1_WX]                                     ; $56ed: $f0 $96
	and l                                            ; $56ef: $a5
	ld a, [$f54a]                                    ; $56f0: $fa $4a $f5
	ld d, a                                          ; $56f3: $57
	xor b                                            ; $56f4: $a8
	cpl                                              ; $56f5: $2f
	ret nc                                           ; $56f6: $d0

jr_043_56f7:
	ret nz                                           ; $56f7: $c0

	ld a, d                                          ; $56f8: $7a

jr_043_56f9:
	sbc b                                            ; $56f9: $98
	ld [hl], a                                       ; $56fa: $77
	ldh a, [$7e]                                     ; $56fb: $f0 $7e
	db $ec                                           ; $56fd: $ec
	sub [hl]                                         ; $56fe: $96
	ld a, [$fd05]                                    ; $56ff: $fa $05 $fd
	ld [bc], a                                       ; $5702: $02
	cp $01                                           ; $5703: $fe $01
	rrca                                             ; $5705: $0f
	nop                                              ; $5706: $00
	ccf                                              ; $5707: $3f
	ld [hl], e                                       ; $5708: $73
	ldh a, [$9b]                                     ; $5709: $f0 $9b
	ld e, l                                          ; $570b: $5d
	and b                                            ; $570c: $a0
	or d                                             ; $570d: $b2
	ld b, b                                          ; $570e: $40
	ld [hl], a                                       ; $570f: $77
	xor h                                            ; $5710: $ac
	ld a, e                                          ; $5711: $7b
	ldh [c], a                                       ; $5712: $e2
	ld a, e                                          ; $5713: $7b
	ldh a, [$9c]                                     ; $5714: $f0 $9c
	rst FarCall                                          ; $5716: $f7
	ld [$7a57], sp                                   ; $5717: $08 $57 $7a
	ld e, d                                          ; $571a: $5a
	sbc [hl]                                         ; $571b: $9e
	ld bc, $77fc                                     ; $571c: $01 $fc $77
	ldh a, [$9b]                                     ; $571f: $f0 $9b
	rst SubAFromHL                                          ; $5721: $d7
	jr z, jr_043_56f9                                ; $5722: $28 $d5

	ld a, [hl+]                                      ; $5724: $2a
	halt                                             ; $5725: $76
	ld c, d                                          ; $5726: $4a
	ld h, a                                          ; $5727: $67
	ldh a, [rPCM34]                                  ; $5728: $f0 $77
	ret nz                                           ; $572a: $c0

	sbc e                                            ; $572b: $9b
	cp d                                             ; $572c: $ba
	dec b                                            ; $572d: $05
	ld d, l                                          ; $572e: $55
	nop                                              ; $572f: $00
	ld [hl], a                                       ; $5730: $77
	ld c, d                                          ; $5731: $4a
	ld a, b                                          ; $5732: $78
	or [hl]                                          ; $5733: $b6
	sub d                                            ; $5734: $92
	rst $38                                          ; $5735: $ff
	cp l                                             ; $5736: $bd
	ld b, d                                          ; $5737: $42
	ld e, h                                          ; $5738: $5c
	cp b                                             ; $5739: $b8
	xor d                                            ; $573a: $aa
	ld d, a                                          ; $573b: $57
	ld d, [hl]                                       ; $573c: $56
	xor c                                            ; $573d: $a9
	xor a                                            ; $573e: $af
	db $10                                           ; $573f: $10
	ld d, $09                                        ; $5740: $16 $09
	ld [hl], a                                       ; $5742: $77
	ldh [$7d], a                                     ; $5743: $e0 $7d
	call nc, $c47e                                   ; $5745: $d4 $7e $c4
	adc a                                            ; $5748: $8f
	sbc a                                            ; $5749: $9f
	ld c, $3d                                        ; $574a: $0e $3d
	adc $9f                                          ; $574c: $ce $9f
	ld a, [hl]                                       ; $574e: $7e
	adc $03                                          ; $574f: $ce $03
	ld d, a                                          ; $5751: $57
	cp $ff                                           ; $5752: $fe $ff
	rst $38                                          ; $5754: $ff
	xor l                                            ; $5755: $ad
	ld d, e                                          ; $5756: $53
	ld d, c                                          ; $5757: $51
	jr nz, jr_043_57d4                               ; $5758: $20 $7a

	call nz, $a0df                                   ; $575a: $c4 $df $a0
	sub [hl]                                         ; $575d: $96
	ld d, c                                          ; $575e: $51
	ld [hl], e                                       ; $575f: $73
	add b                                            ; $5760: $80
	add d                                            ; $5761: $82
	ld [hl], c                                       ; $5762: $71
	pop de                                           ; $5763: $d1
	jr nz, jr_043_56f7                               ; $5764: $20 $91

	ld h, b                                          ; $5766: $60
	ld [hl], a                                       ; $5767: $77
	cp c                                             ; $5768: $b9
	sbc l                                            ; $5769: $9d
	pop af                                           ; $576a: $f1
	ld c, $77                                        ; $576b: $0e $77
	ld c, [hl]                                       ; $576d: $4e
	ld a, a                                          ; $576e: $7f
	ret nz                                           ; $576f: $c0

	ld a, a                                          ; $5770: $7f
	ld a, [hl-]                                      ; $5771: $3a
	sbc h                                            ; $5772: $9c
	ldh [$1f], a                                     ; $5773: $e0 $1f
	xor d                                            ; $5775: $aa
	ld a, d                                          ; $5776: $7a
	ret                                              ; $5777: $c9


	add b                                            ; $5778: $80
	ld de, $f1ee                                     ; $5779: $11 $ee $f1
	ld c, $0f                                        ; $577c: $0e $0f
	ldh a, [$08]                                     ; $577e: $f0 $08
	rst FarCall                                          ; $5780: $f7
	ld bc, $0dfe                                     ; $5781: $01 $fe $0d
	di                                               ; $5784: $f3
	ld sp, hl                                        ; $5785: $f9
	nop                                              ; $5786: $00
	rst SubAFromBC                                          ; $5787: $e7
	inc bc                                           ; $5788: $03
	ret nz                                           ; $5789: $c0

	nop                                              ; $578a: $00
	ret z                                            ; $578b: $c8

	rra                                              ; $578c: $1f
	add hl, bc                                       ; $578d: $09
	ld [bc], a                                       ; $578e: $02
	nop                                              ; $578f: $00
	jr nc, jr_043_57d4                               ; $5790: $30 $42

	db $fc                                           ; $5792: $fc
	adc $ff                                          ; $5793: $ce $ff
	ldh [$e0], a                                     ; $5795: $e0 $e0
	rrca                                             ; $5797: $0f
	ld a, a                                          ; $5798: $7f
	pop af                                           ; $5799: $f1

Call_043_579a:
	sub h                                            ; $579a: $94
	nop                                              ; $579b: $00
	ld b, d                                          ; $579c: $42
	add l                                            ; $579d: $85
	dec e                                            ; $579e: $1d
	add d                                            ; $579f: $82
	jr z, jr_043_57b6                                ; $57a0: $28 $14

	inc d                                            ; $57a2: $14
	ld [$1e21], sp                                   ; $57a3: $08 $21 $1e
	ld [hl], a                                       ; $57a6: $77
	ld a, b                                          ; $57a7: $78
	ld a, [hl]                                       ; $57a8: $7e
	db $d3                                           ; $57a9: $d3
	halt                                             ; $57aa: $76
	inc d                                            ; $57ab: $14
	sbc b                                            ; $57ac: $98
	sub b                                            ; $57ad: $90
	ld bc, $0003                                     ; $57ae: $01 $03 $00
	ld [$3f63], sp                                   ; $57b1: $08 $63 $3f
	ld a, b                                          ; $57b4: $78
	inc [hl]                                         ; $57b5: $34

jr_043_57b6:
	add b                                            ; $57b6: $80
	jp $2000                                         ; $57b7: $c3 $00 $20


	rst SubAFromDE                                          ; $57ba: $df
	ld d, b                                          ; $57bb: $50
	xor a                                            ; $57bc: $af
	add b                                            ; $57bd: $80
	ld a, a                                          ; $57be: $7f
	ld e, d                                          ; $57bf: $5a
	add c                                            ; $57c0: $81
	inc h                                            ; $57c1: $24
	db $db                                           ; $57c2: $db
	ld [de], a                                       ; $57c3: $12
	inc bc                                           ; $57c4: $03
	add l                                            ; $57c5: $85
	rlca                                             ; $57c6: $07
	dec de                                           ; $57c7: $1b
	rrca                                             ; $57c8: $0f
	dec d                                            ; $57c9: $15
	rra                                              ; $57ca: $1f
	ld c, e                                          ; $57cb: $4b
	rra                                              ; $57cc: $1f
	dec d                                            ; $57cd: $15
	rra                                              ; $57ce: $1f
	ld e, e                                          ; $57cf: $5b
	rra                                              ; $57d0: $1f
	dec b                                            ; $57d1: $05
	rra                                              ; $57d2: $1f
	sub l                                            ; $57d3: $95

jr_043_57d4:
	rst $38                                          ; $57d4: $ff
	ld a, [hl+]                                      ; $57d5: $2a

jr_043_57d6:
	sbc e                                            ; $57d6: $9b
	rst $38                                          ; $57d7: $ff
	ccf                                              ; $57d8: $3f
	rst $38                                          ; $57d9: $ff
	ld a, $7b                                        ; $57da: $3e $7b
	db $fc                                           ; $57dc: $fc
	sbc h                                            ; $57dd: $9c
	ld a, [hl]                                       ; $57de: $7e
	rst $38                                          ; $57df: $ff
	or l                                             ; $57e0: $b5
	ld a, e                                          ; $57e1: $7b
	db $f4                                           ; $57e2: $f4
	ld [hl], l                                       ; $57e3: $75
	ld [hl+], a                                      ; $57e4: $22
	ld e, a                                          ; $57e5: $5f
	db $fc                                           ; $57e6: $fc
	sbc [hl]                                         ; $57e7: $9e
	xor e                                            ; $57e8: $ab
	ld d, e                                          ; $57e9: $53
	ldh a, [$9b]                                     ; $57ea: $f0 $9b
	ld e, l                                          ; $57ec: $5d
	cp $ff                                           ; $57ed: $fe $ff
	ei                                               ; $57ef: $fb
	ld c, a                                          ; $57f0: $4f
	ldh [$9d], a                                     ; $57f1: $e0 $9d
	ld [$5fbf], a                                    ; $57f3: $ea $bf $5f
	db $f4                                           ; $57f6: $f4
	sbc h                                            ; $57f7: $9c
	xor a                                            ; $57f8: $af
	rst $38                                          ; $57f9: $ff
	ld a, a                                          ; $57fa: $7f
	sub $ff                                          ; $57fb: $d6 $ff
	ld a, l                                          ; $57fd: $7d
	ld d, c                                          ; $57fe: $51
	sbc c                                            ; $57ff: $99
	cp $e9                                           ; $5800: $fe $e9
	db $f4                                           ; $5802: $f4
	db $db                                           ; $5803: $db
	call z, $d7f3                                    ; $5804: $cc $f3 $d7
	rst $38                                          ; $5807: $ff
	sbc d                                            ; $5808: $9a
	or $ed                                           ; $5809: $f6 $ed
	or d                                             ; $580b: $b2
	call Call_043_7590                               ; $580c: $cd $90 $75
	sbc h                                            ; $580f: $9c
	ld a, a                                          ; $5810: $7f
	cp b                                             ; $5811: $b8
	ld a, e                                          ; $5812: $7b
	db $fc                                           ; $5813: $fc
	ld a, l                                          ; $5814: $7d
	jp c, $fa98                                      ; $5815: $da $98 $fa

	rst $38                                          ; $5818: $ff
	ld a, a                                          ; $5819: $7f
	ld a, a                                          ; $581a: $7f
	ld c, c                                          ; $581b: $49
	ld bc, $7900                                     ; $581c: $01 $00 $79
	jp nc, $c477                                     ; $581f: $d2 $77 $c4

	sbc h                                            ; $5822: $9c
	ld e, a                                          ; $5823: $5f
	rst $38                                          ; $5824: $ff
	cp a                                             ; $5825: $bf
	call c, Call_043_7eff                            ; $5826: $dc $ff $7e
	dec sp                                           ; $5829: $3b
	sbc e                                            ; $582a: $9b
	push hl                                          ; $582b: $e5
	ld a, [$fdfa]                                    ; $582c: $fa $fa $fd
	ld a, d                                          ; $582f: $7a
	push hl                                          ; $5830: $e5
	jp c, Jump_043_74ff                              ; $5831: $da $ff $74

	jr z, jr_043_58b4                                ; $5834: $28 $7e

	ld l, [hl]                                       ; $5836: $6e
	sub [hl]                                         ; $5837: $96
	inc d                                            ; $5838: $14
	rst $38                                          ; $5839: $ff
	ret z                                            ; $583a: $c8

	cp a                                             ; $583b: $bf
	ldh a, [c]                                       ; $583c: $f2
	rst AddAOntoHL                                          ; $583d: $ef
	db $fc                                           ; $583e: $fc
	ei                                               ; $583f: $fb
	db $fd                                           ; $5840: $fd
	ld a, d                                          ; $5841: $7a
	xor e                                            ; $5842: $ab
	add h                                            ; $5843: $84
	ld b, c                                          ; $5844: $41
	cp a                                             ; $5845: $bf
	xor c                                            ; $5846: $a9
	ld d, a                                          ; $5847: $57
	ld a, l                                          ; $5848: $7d
	add e                                            ; $5849: $83
	ld a, [hl]                                       ; $584a: $7e
	rst $38                                          ; $584b: $ff
	inc c                                            ; $584c: $0c
	rst $38                                          ; $584d: $ff
	jr nz, @+$01                                     ; $584e: $20 $ff

	inc e                                            ; $5850: $1c
	rst $38                                          ; $5851: $ff
	db $eb                                           ; $5852: $eb
	jr nc, jr_043_57d6                               ; $5853: $30 $81

	ld a, d                                          ; $5855: $7a
	ld a, b                                          ; $5856: $78
	and b                                            ; $5857: $a0
	ld d, [hl]                                       ; $5858: $56
	rst $38                                          ; $5859: $ff
	xor l                                            ; $585a: $ad
	rst $38                                          ; $585b: $ff
	ld [hl], d                                       ; $585c: $72
	adc l                                            ; $585d: $8d
	jp c, $ee7b                                      ; $585e: $da $7b $ee

	ld a, a                                          ; $5861: $7f
	ld a, [de]                                       ; $5862: $1a
	ld a, [hl]                                       ; $5863: $7e
	jp c, $c48d                                      ; $5864: $da $8d $c4

	dec sp                                           ; $5867: $3b
	add hl, de                                       ; $5868: $19
	and $32                                          ; $5869: $e6 $32
	call $7b87                                       ; $586b: $cd $87 $7b
	rla                                              ; $586e: $17
	rst AddAOntoHL                                          ; $586f: $ef
	rrca                                             ; $5870: $0f
	rst $38                                          ; $5871: $ff
	rrca                                             ; $5872: $0f
	rst FarCall                                          ; $5873: $f7
	rra                                              ; $5874: $1f
	rst AddAOntoHL                                          ; $5875: $ef
	ld e, a                                          ; $5876: $5f
	cp a                                             ; $5877: $bf
	ld e, a                                          ; $5878: $5f
	ld h, l                                          ; $5879: $65
	ld a, l                                          ; $587a: $7d
	ld h, $71                                        ; $587b: $26 $71
	rra                                              ; $587d: $1f
	ld a, e                                          ; $587e: $7b
	cp $9e                                           ; $587f: $fe $9e
	rst GetHLinHL                                          ; $5881: $cf
	ld [hl], e                                       ; $5882: $73
	db $f4                                           ; $5883: $f4
	add b                                            ; $5884: $80
	inc d                                            ; $5885: $14
	adc b                                            ; $5886: $88
	ld [bc], a                                       ; $5887: $02
	add c                                            ; $5888: $81
	add hl, bc                                       ; $5889: $09
	ld d, $12                                        ; $588a: $16 $12
	dec l                                            ; $588c: $2d
	ld hl, $401e                                     ; $588d: $21 $1e $40
	cp a                                             ; $5890: $bf
	sub l                                            ; $5891: $95
	ld a, [bc]                                       ; $5892: $0a
	ld b, b                                          ; $5893: $40
	add a                                            ; $5894: $87
	inc l                                            ; $5895: $2c
	db $d3                                           ; $5896: $d3
	ld bc, $4082                                     ; $5897: $01 $82 $40
	add c                                            ; $589a: $81
	adc [hl]                                         ; $589b: $8e
	ld b, c                                          ; $589c: $41
	ld d, d                                          ; $589d: $52
	and c                                            ; $589e: $a1
	ld [$44f7], sp                                   ; $589f: $08 $f7 $44
	adc d                                            ; $58a2: $8a
	adc b                                            ; $58a3: $88
	add b                                            ; $58a4: $80
	dec b                                            ; $58a5: $05
	or e                                             ; $58a6: $b3
	ld c, h                                          ; $58a7: $4c
	ld a, [hl+]                                      ; $58a8: $2a
	sub l                                            ; $58a9: $95
	ld b, h                                          ; $58aa: $44
	jr nz, @-$76                                     ; $58ab: $20 $88

	ld d, $51                                        ; $58ad: $16 $51
	and b                                            ; $58af: $a0
	nop                                              ; $58b0: $00
	ei                                               ; $58b1: $fb
	ld d, l                                          ; $58b2: $55
	ld a, [hl+]                                      ; $58b3: $2a

jr_043_58b4:
	add b                                            ; $58b4: $80
	ld a, a                                          ; $58b5: $7f
	db $db                                           ; $58b6: $db
	rra                                              ; $58b7: $1f
	ld d, a                                          ; $58b8: $57
	rra                                              ; $58b9: $1f
	db $db                                           ; $58ba: $db
	rra                                              ; $58bb: $1f
	ld d, l                                          ; $58bc: $55
	rra                                              ; $58bd: $1f
	ld d, e                                          ; $58be: $53
	rra                                              ; $58bf: $1f
	add l                                            ; $58c0: $85
	rra                                              ; $58c1: $1f
	db $eb                                           ; $58c2: $eb
	rra                                              ; $58c3: $1f
	sbc b                                            ; $58c4: $98
	push de                                          ; $58c5: $d5
	rra                                              ; $58c6: $1f
	dec d                                            ; $58c7: $15
	rst $38                                          ; $58c8: $ff
	cpl                                              ; $58c9: $2f
	rst $38                                          ; $58ca: $ff
	rra                                              ; $58cb: $1f
	ld a, e                                          ; $58cc: $7b
	ld b, b                                          ; $58cd: $40
	sub a                                            ; $58ce: $97
	sbc a                                            ; $58cf: $9f
	cp $3e                                           ; $58d0: $fe $3e
	db $fc                                           ; $58d2: $fc
	sbc [hl]                                         ; $58d3: $9e
	db $fc                                           ; $58d4: $fc
	ld a, h                                          ; $58d5: $7c
	cp h                                             ; $58d6: $bc
	ld l, e                                          ; $58d7: $6b
	sbc d                                            ; $58d8: $9a
	sub e                                            ; $58d9: $93
	rst $38                                          ; $58da: $ff
	dec h                                            ; $58db: $25
	rst SubAFromDE                                          ; $58dc: $df
	ld d, e                                          ; $58dd: $53
	adc a                                            ; $58de: $8f
	dec h                                            ; $58df: $25
	rst SubAFromDE                                          ; $58e0: $df
	adc e                                            ; $58e1: $8b
	ccf                                              ; $58e2: $3f
	ei                                               ; $58e3: $fb
	rst $38                                          ; $58e4: $ff
	rst FarCall                                          ; $58e5: $f7
	ld [hl], e                                       ; $58e6: $73
	cp $7f                                           ; $58e7: $fe $7f
	halt                                             ; $58e9: $76
	sub [hl]                                         ; $58ea: $96
	ld d, a                                          ; $58eb: $57
	and b                                            ; $58ec: $a0
	xor a                                            ; $58ed: $af
	ret nz                                           ; $58ee: $c0

	call nz, $bf83                                   ; $58ef: $c4 $83 $bf
	rst $38                                          ; $58f2: $ff

jr_043_58f3:
	sbc a                                            ; $58f3: $9f
	ld a, e                                          ; $58f4: $7b
	ldh [c], a                                       ; $58f5: $e2
	add b                                            ; $58f6: $80
	db $db                                           ; $58f7: $db
	rst $38                                          ; $58f8: $ff
	adc a                                            ; $58f9: $8f
	di                                               ; $58fa: $f3
	cp e                                             ; $58fb: $bb
	ld h, l                                          ; $58fc: $65
	ld d, h                                          ; $58fd: $54
	ei                                               ; $58fe: $fb
	xor d                                            ; $58ff: $aa
	ld sp, hl                                        ; $5900: $f9
	ld a, [$effd]                                    ; $5901: $fa $fd $ef
	ei                                               ; $5904: $fb
	rst $38                                          ; $5905: $ff
	rst SubAFromBC                                          ; $5906: $e7
	jp hl                                            ; $5907: $e9


	rst $38                                          ; $5908: $ff
	xor $ff                                          ; $5909: $ee $ff
	rst $38                                          ; $590b: $ff
	rst SubAFromBC                                          ; $590c: $e7
	rst $38                                          ; $590d: $ff
	rst $38                                          ; $590e: $ff
	cp $ff                                           ; $590f: $fe $ff
	db $d3                                           ; $5911: $d3
	cp a                                             ; $5912: $bf
	inc h                                            ; $5913: $24
	rst SubAFromDE                                          ; $5914: $df
	ldh [$9e], a                                     ; $5915: $e0 $9e
	rra                                              ; $5917: $1f
	ld a, e                                          ; $5918: $7b
	ld a, [bc]                                       ; $5919: $0a
	add b                                            ; $591a: $80
	ld a, [$ff2e]                                    ; $591b: $fa $2e $ff
	dec d                                            ; $591e: $15
	rst $38                                          ; $591f: $ff
	ret z                                            ; $5920: $c8

	rst $38                                          ; $5921: $ff
	ld c, c                                          ; $5922: $49
	rst $38                                          ; $5923: $ff
	inc bc                                           ; $5924: $03
	rst $38                                          ; $5925: $ff
	ld a, [hl-]                                      ; $5926: $3a
	call $cf30                                       ; $5927: $cd $30 $cf
	jr c, jr_043_58f3                                ; $592a: $38 $c7

	cp e                                             ; $592c: $bb
	rst $38                                          ; $592d: $ff
	db $f4                                           ; $592e: $f4
	rst $38                                          ; $592f: $ff
	add hl, hl                                       ; $5930: $29
	rst $38                                          ; $5931: $ff
	ld h, b                                          ; $5932: $60
	sbc a                                            ; $5933: $9f
	pop bc                                           ; $5934: $c1
	ccf                                              ; $5935: $3f
	add l                                            ; $5936: $85
	rst $38                                          ; $5937: $ff
	ld a, [hl+]                                      ; $5938: $2a
	db $dd                                           ; $5939: $dd
	sbc d                                            ; $593a: $9a
	rla                                              ; $593b: $17
	rst $38                                          ; $593c: $ff
	db $eb                                           ; $593d: $eb
	rst $38                                          ; $593e: $ff
	ld a, l                                          ; $593f: $7d
	ld l, a                                          ; $5940: $6f
	sub h                                            ; $5941: $94
	sbc h                                            ; $5942: $9c
	cp a                                             ; $5943: $bf
	rst SubAFromDE                                          ; $5944: $df
	cp a                                             ; $5945: $bf
	ld d, [hl]                                       ; $5946: $56
	add [hl]                                         ; $5947: $86

jr_043_5948:
	db $d3                                           ; $5948: $d3
	rst $38                                          ; $5949: $ff
	ld e, [hl]                                       ; $594a: $5e
	or [hl]                                          ; $594b: $b6
	db $db                                           ; $594c: $db
	rst $38                                          ; $594d: $ff
	sbc b                                            ; $594e: $98
	ld b, [hl]                                       ; $594f: $46
	cp a                                             ; $5950: $bf
	ret nz                                           ; $5951: $c0

	rst $38                                          ; $5952: $ff
	ldh a, [rIE]                                     ; $5953: $f0 $ff
	db $fc                                           ; $5955: $fc
	ret c                                            ; $5956: $d8

	rst $38                                          ; $5957: $ff
	sbc h                                            ; $5958: $9c
	add hl, de                                       ; $5959: $19
	rst $38                                          ; $595a: $ff
	halt                                             ; $595b: $76
	ld a, d                                          ; $595c: $7a
	jp z, $8a75                                      ; $595d: $ca $75 $8a

	sbc c                                            ; $5960: $99
	ldh [$df], a                                     ; $5961: $e0 $df
	ld hl, sp-$09                                    ; $5963: $f8 $f7
	cp $fd                                           ; $5965: $fe $fd
	ld d, [hl]                                       ; $5967: $56
	call nc, $ffcf                                   ; $5968: $d4 $cf $ff
	ld a, [hl]                                       ; $596b: $7e
	ld c, h                                          ; $596c: $4c
	ld e, [hl]                                       ; $596d: $5e
	call nz, $c680                                   ; $596e: $c4 $80 $c6
	rst $38                                          ; $5971: $ff
	push bc                                          ; $5972: $c5
	ld a, [$ffc0]                                    ; $5973: $fa $c0 $ff
	jr z, jr_043_5948                                ; $5976: $28 $d0

	db $10                                           ; $5978: $10
	ret z                                            ; $5979: $c8

	ld c, b                                          ; $597a: $48
	and h                                            ; $597b: $a4
	add h                                            ; $597c: $84
	rst $38                                          ; $597d: $ff
	cp e                                             ; $597e: $bb
	ld b, b                                          ; $597f: $40
	ld b, c                                          ; $5980: $41
	sub b                                            ; $5981: $90
	dec d                                            ; $5982: $15
	jr z, jr_043_59ae                                ; $5983: $28 $29

	call nc, $2152                                   ; $5985: $d4 $52 $21
	xor e                                            ; $5988: $ab
	ld d, h                                          ; $5989: $54
	ld d, h                                          ; $598a: $54
	dec hl                                           ; $598b: $2b
	ccf                                              ; $598c: $3f
	rst $38                                          ; $598d: $ff
	dec b                                            ; $598e: $05
	ld a, h                                          ; $598f: $7c
	db $fd                                           ; $5990: $fd
	sbc h                                            ; $5991: $9c
	ld bc, $a854                                     ; $5992: $01 $54 $a8
	ld [hl], l                                       ; $5995: $75
	ld b, d                                          ; $5996: $42
	ld [hl], a                                       ; $5997: $77
	cp $7f                                           ; $5998: $fe $7f
	ld a, d                                          ; $599a: $7a
	ld a, l                                          ; $599b: $7d
	add b                                            ; $599c: $80
	add b                                            ; $599d: $80
	adc d                                            ; $599e: $8a
	ld [hl], l                                       ; $599f: $75
	add l                                            ; $59a0: $85
	ld [bc], a                                       ; $59a1: $02
	and b                                            ; $59a2: $a0
	ld e, a                                          ; $59a3: $5f
	ld c, e                                          ; $59a4: $4b
	rra                                              ; $59a5: $1f
	dec e                                            ; $59a6: $1d
	rra                                              ; $59a7: $1f
	ld a, [bc]                                       ; $59a8: $0a
	rra                                              ; $59a9: $1f
	dec [hl]                                         ; $59aa: $35
	ld a, a                                          ; $59ab: $7f
	ld l, e                                          ; $59ac: $6b
	rra                                              ; $59ad: $1f

jr_043_59ae:
	ld [de], a                                       ; $59ae: $12
	rra                                              ; $59af: $1f
	add [hl]                                         ; $59b0: $86
	rra                                              ; $59b1: $1f
	call c, $bc1e                                    ; $59b2: $dc $1e $bc
	rst $38                                          ; $59b5: $ff
	db $fd                                           ; $59b6: $fd
	ld a, [$fef8]                                    ; $59b7: $fa $f8 $fe
	db $f4                                           ; $59ba: $f4
	ld a, [$9bf2]                                    ; $59bb: $fa $f2 $9b
	db $fd                                           ; $59be: $fd
	ld hl, sp-$01                                    ; $59bf: $f8 $ff
	ld hl, sp-$22                                    ; $59c1: $f8 $de
	rst $38                                          ; $59c3: $ff
	sbc b                                            ; $59c4: $98
	halt                                             ; $59c5: $76
	rra                                              ; $59c6: $1f
	ld b, c                                          ; $59c7: $41
	ld e, $aa                                        ; $59c8: $1e $aa
	nop                                              ; $59ca: $00
	dec b                                            ; $59cb: $05
	ld a, c                                          ; $59cc: $79
	ld a, $7f                                        ; $59cd: $3e $7f
	ld a, c                                          ; $59cf: $79
	ld a, a                                          ; $59d0: $7f
	cp $7d                                           ; $59d1: $fe $7d
	jp c, $c498                                      ; $59d3: $da $98 $c4

	inc bc                                           ; $59d6: $03
	ld e, h                                          ; $59d7: $5c
	inc bc                                           ; $59d8: $03
	sub c                                            ; $59d9: $91
	ld l, a                                          ; $59da: $6f
	jr nz, jr_043_5a57                               ; $59db: $20 $7a

	xor $78                                          ; $59dd: $ee $78
	jp nz, $d679                                     ; $59df: $c2 $79 $d6

	sub h                                            ; $59e2: $94
	ld e, l                                          ; $59e3: $5d
	ld hl, sp-$46                                    ; $59e4: $f8 $ba
	db $fc                                           ; $59e6: $fc
	ld [hl], l                                       ; $59e7: $75
	ld a, [$d024]                                    ; $59e8: $fa $24 $d0
	ld d, d                                          ; $59eb: $52
	xor l                                            ; $59ec: $ad
	ld hl, sp+$7b                                    ; $59ed: $f8 $7b
	ld [hl], d                                       ; $59ef: $72
	ld a, a                                          ; $59f0: $7f
	ldh a, [$80]                                     ; $59f1: $f0 $80
	call c, Call_043_7bff                            ; $59f3: $dc $ff $7b
	rst $38                                          ; $59f6: $ff
	ld e, b                                          ; $59f7: $58
	ld a, a                                          ; $59f8: $7f
	jp hl                                            ; $59f9: $e9


	ld a, [hl]                                       ; $59fa: $7e
	ld de, $b376                                     ; $59fb: $11 $76 $b3
	ld h, h                                          ; $59fe: $64
	sub b                                            ; $59ff: $90
	ld l, a                                          ; $5a00: $6f
	add b                                            ; $5a01: $80
	ld a, a                                          ; $5a02: $7f
	ld [$b9a0], sp                                   ; $5a03: $08 $a0 $b9
	rlc b                                            ; $5a06: $cb $00
	ld de, $0601                                     ; $5a08: $11 $01 $06
	ld a, c                                          ; $5a0b: $79
	nop                                              ; $5a0c: $00
	ld h, [hl]                                       ; $5a0d: $66
	ld [$fa00], sp                                   ; $5a0e: $08 $00 $fa
	nop                                              ; $5a11: $00
	add b                                            ; $5a12: $80
	rst $38                                          ; $5a13: $ff
	reti                                             ; $5a14: $d9


	ld bc, $f351                                     ; $5a15: $01 $51 $f3
	ld a, [hl+]                                      ; $5a18: $2a
	cp [hl]                                          ; $5a19: $be
	nop                                              ; $5a1a: $00
	ld c, c                                          ; $5a1b: $49
	ret nz                                           ; $5a1c: $c0

	nop                                              ; $5a1d: $00
	add d                                            ; $5a1e: $82
	jr z, jr_043_5a21                                ; $5a1f: $28 $00

jr_043_5a21:
	rlca                                             ; $5a21: $07
	nop                                              ; $5a22: $00
	rst $38                                          ; $5a23: $ff
	ld bc, $0283                                     ; $5a24: $01 $83 $02
	rst GetHLinHL                                          ; $5a27: $cf
	nop                                              ; $5a28: $00
	inc bc                                           ; $5a29: $03
	ld [hl], c                                       ; $5a2a: $71
	adc c                                            ; $5a2b: $89
	nop                                              ; $5a2c: $00
	ld b, h                                          ; $5a2d: $44
	inc b                                            ; $5a2e: $04
	ld h, d                                          ; $5a2f: $62
	inc b                                            ; $5a30: $04
	ld a, e                                          ; $5a31: $7b
	ld a, d                                          ; $5a32: $7a
	sbc b                                            ; $5a33: $98
	ld a, c                                          ; $5a34: $79
	ld [hl], h                                       ; $5a35: $74
	ld a, l                                          ; $5a36: $7d
	xor h                                            ; $5a37: $ac
	sub [hl]                                         ; $5a38: $96
	ld b, b                                          ; $5a39: $40
	rst $38                                          ; $5a3a: $ff
	and c                                            ; $5a3b: $a1
	rst $38                                          ; $5a3c: $ff
	ld b, d                                          ; $5a3d: $42
	ld a, a                                          ; $5a3e: $7f
	ld hl, $027f                                     ; $5a3f: $21 $7f $02
	ld a, e                                          ; $5a42: $7b
	sbc h                                            ; $5a43: $9c
	ld [hl], l                                       ; $5a44: $75
	ld [hl], h                                       ; $5a45: $74
	ld a, a                                          ; $5a46: $7f
	db $fc                                           ; $5a47: $fc
	sbc [hl]                                         ; $5a48: $9e
	ld d, a                                          ; $5a49: $57
	ld l, e                                          ; $5a4a: $6b
	ld hl, sp-$3f                                    ; $5a4b: $f8 $c1
	rst $38                                          ; $5a4d: $ff
	sbc [hl]                                         ; $5a4e: $9e
	db $fc                                           ; $5a4f: $fc
	ld b, [hl]                                       ; $5a50: $46
	sbc a                                            ; $5a51: $9f
	jp nc, $9eff                                     ; $5a52: $d2 $ff $9e

	push af                                          ; $5a55: $f5
	ld a, e                                          ; $5a56: $7b

jr_043_5a57:
	ld e, d                                          ; $5a57: $5a
	ld a, [hl]                                       ; $5a58: $7e
	ld c, b                                          ; $5a59: $48
	sbc h                                            ; $5a5a: $9c
	add sp, -$01                                     ; $5a5b: $e8 $ff
	ret nc                                           ; $5a5d: $d0

	ld l, b                                          ; $5a5e: $68
	ret c                                            ; $5a5f: $d8

	adc [hl]                                         ; $5a60: $8e
	ld h, b                                          ; $5a61: $60
	ret nz                                           ; $5a62: $c0

	and b                                            ; $5a63: $a0
	ret nz                                           ; $5a64: $c0

	ld l, d                                          ; $5a65: $6a
	rst GetHLinHL                                          ; $5a66: $cf
	ccf                                              ; $5a67: $3f
	rst SubAFromDE                                          ; $5a68: $df
	ld a, [bc]                                       ; $5a69: $0a
	rst SubAFromDE                                          ; $5a6a: $df
	dec d                                            ; $5a6b: $15
	rst SubAFromDE                                          ; $5a6c: $df
	ld c, d                                          ; $5a6d: $4a
	rst GetHLinHL                                          ; $5a6e: $cf
	add l                                            ; $5a6f: $85
	rst GetHLinHL                                          ; $5a70: $cf
	dec de                                           ; $5a71: $1b
	ld a, e                                          ; $5a72: $7b
	ld l, e                                          ; $5a73: $6b
	rst $38                                          ; $5a74: $ff
	ld a, a                                          ; $5a75: $7f
	jr jr_043_5aef                                   ; $5a76: $18 $77

	ldh [c], a                                       ; $5a78: $e2
	ld a, h                                          ; $5a79: $7c
	or $7b                                           ; $5a7a: $f6 $7b
	ld a, [de]                                       ; $5a7c: $1a
	ld a, d                                          ; $5a7d: $7a
	pop de                                           ; $5a7e: $d1
	sbc h                                            ; $5a7f: $9c
	rrca                                             ; $5a80: $0f
	nop                                              ; $5a81: $00
	db $eb                                           ; $5a82: $eb
	ld a, b                                          ; $5a83: $78
	ld hl, sp-$63                                    ; $5a84: $f8 $9d
	nop                                              ; $5a86: $00
	rst FarCall                                          ; $5a87: $f7
	ld a, e                                          ; $5a88: $7b
	cp $9c                                           ; $5a89: $fe $9c
	db $f4                                           ; $5a8b: $f4
	ret nz                                           ; $5a8c: $c0

	nop                                              ; $5a8d: $00
	ld a, b                                          ; $5a8e: $78
	ld hl, $e97b                                     ; $5a8f: $21 $7b $e9
	ld a, h                                          ; $5a92: $7c
	ld h, [hl]                                       ; $5a93: $66
	ld a, l                                          ; $5a94: $7d
	ldh a, [c]                                       ; $5a95: $f2
	adc e                                            ; $5a96: $8b
	ld a, [bc]                                       ; $5a97: $0a
	ccf                                              ; $5a98: $3f
	ld bc, $0c0f                                     ; $5a99: $01 $0f $0c
	dec e                                            ; $5a9c: $1d
	ld e, b                                          ; $5a9d: $58
	add hl, de                                       ; $5a9e: $19
	inc d                                            ; $5a9f: $14
	add hl, de                                       ; $5aa0: $19
	jp hl                                            ; $5aa1: $e9


	ldh a, [hLCDCIntHandlerIdx]                                     ; $5aa2: $f0 $81
	jp nc, $f450                                     ; $5aa4: $d2 $50 $f4

	and d                                            ; $5aa7: $a2
	db $fd                                           ; $5aa8: $fd
	ld d, b                                          ; $5aa9: $50
	rst SubAFromDE                                          ; $5aaa: $df
	ld a, e                                          ; $5aab: $7b
	add sp, -$65                                     ; $5aac: $e8 $9b
	ld a, a                                          ; $5aae: $7f
	jr z, jr_043_5af0                                ; $5aaf: $28 $3f

	inc d                                            ; $5ab1: $14
	ld [hl], a                                       ; $5ab2: $77
	db $fc                                           ; $5ab3: $fc
	adc b                                            ; $5ab4: $88
	ccf                                              ; $5ab5: $3f
	ld c, b                                          ; $5ab6: $48
	cp a                                             ; $5ab7: $bf
	ret nz                                           ; $5ab8: $c0

	ccf                                              ; $5ab9: $3f
	and b                                            ; $5aba: $a0
	rst $38                                          ; $5abb: $ff
	dec b                                            ; $5abc: $05
	ld a, [$f50a]                                    ; $5abd: $fa $0a $f5
	dec d                                            ; $5ac0: $15
	ld [$d42b], a                                    ; $5ac1: $ea $2b $d4
	rla                                              ; $5ac4: $17
	add sp, $2b                                      ; $5ac5: $e8 $2b
	call nc, $aa55                                   ; $5ac7: $d4 $55 $aa
	xor d                                            ; $5aca: $aa
	ld d, l                                          ; $5acb: $55
	ld [hl], a                                       ; $5acc: $77
	db $fc                                           ; $5acd: $fc
	sbc [hl]                                         ; $5ace: $9e
	ld a, a                                          ; $5acf: $7f
	ld a, e                                          ; $5ad0: $7b
	or c                                             ; $5ad1: $b1
	ld [hl], a                                       ; $5ad2: $77
	cp $7f                                           ; $5ad3: $fe $7f
	ld hl, sp-$6d                                    ; $5ad5: $f8 $93
	dec bc                                           ; $5ad7: $0b
	call nc, $ae51                                   ; $5ad8: $d4 $51 $ae
	xor b                                            ; $5adb: $a8
	ld d, a                                          ; $5adc: $57
	ld d, l                                          ; $5add: $55
	xor d                                            ; $5ade: $aa
	ld [$fd15], a                                    ; $5adf: $ea $15 $fd
	ld [bc], a                                       ; $5ae2: $02
	ld [hl], a                                       ; $5ae3: $77
	xor $7b                                          ; $5ae4: $ee $7b
	db $ed                                           ; $5ae6: $ed
	sbc [hl]                                         ; $5ae7: $9e
	ld a, a                                          ; $5ae8: $7f
	ld [hl], a                                       ; $5ae9: $77
	ldh a, [$7f]                                     ; $5aea: $f0 $7f
	call c, Call_043_5f95                            ; $5aec: $dc $95 $5f

jr_043_5aef:
	and b                                            ; $5aef: $a0

jr_043_5af0:
	rst $38                                          ; $5af0: $ff
	nop                                              ; $5af1: $00
	rst SubAFromDE                                          ; $5af2: $df
	jr nz, jr_043_5af7                               ; $5af3: $20 $02

	db $fd                                           ; $5af5: $fd
	dec d                                            ; $5af6: $15

jr_043_5af7:
	ld [$cc77], a                                    ; $5af7: $ea $77 $cc
	sbc l                                            ; $5afa: $9d
	xor a                                            ; $5afb: $af
	ld d, b                                          ; $5afc: $50
	ld l, a                                          ; $5afd: $6f
	adc $7f                                          ; $5afe: $ce $7f

Call_043_5b00:
	ldh [c], a                                       ; $5b00: $e2
	ld a, h                                          ; $5b01: $7c
	add sp, $7e                                      ; $5b02: $e8 $7e
	ld c, d                                          ; $5b04: $4a
	ld a, [hl]                                       ; $5b05: $7e
	ld b, d                                          ; $5b06: $42
	ld a, a                                          ; $5b07: $7f
	call c, $d099                                    ; $5b08: $dc $99 $d0
	cpl                                              ; $5b0b: $2f
	ld [$f515], a                                    ; $5b0c: $ea $15 $f5
	ld a, [bc]                                       ; $5b0f: $0a
	ld l, [hl]                                       ; $5b10: $6e
	jr nc, jr_043_5b72                               ; $5b11: $30 $5f

	cp $7e                                           ; $5b13: $fe $7e
	call nz, Call_043_4296                           ; $5b15: $c4 $96 $42
	rst $38                                          ; $5b18: $ff
	sub l                                            ; $5b19: $95
	rst $38                                          ; $5b1a: $ff
	ld c, d                                          ; $5b1b: $4a
	rst $38                                          ; $5b1c: $ff
	dec b                                            ; $5b1d: $05
	rst $38                                          ; $5b1e: $ff
	ld a, [bc]                                       ; $5b1f: $0a
	ld a, e                                          ; $5b20: $7b
	db $f4                                           ; $5b21: $f4
	ld a, a                                          ; $5b22: $7f
	ldh a, [$74]                                     ; $5b23: $f0 $74
	jr c, jr_043_5ba5                                ; $5b25: $38 $7e

	cp h                                             ; $5b27: $bc
	ld a, a                                          ; $5b28: $7f
	db $fc                                           ; $5b29: $fc
	ld [hl], a                                       ; $5b2a: $77
	ld hl, sp+$64                                    ; $5b2b: $f8 $64
	inc l                                            ; $5b2d: $2c
	inc bc                                           ; $5b2e: $03
	rst $38                                          ; $5b2f: $ff
	ld a, [bc]                                       ; $5b30: $0a
	ret nz                                           ; $5b31: $c0

	sbc h                                            ; $5b32: $9c
	db $fd                                           ; $5b33: $fd
	rst $38                                          ; $5b34: $ff
	ld [$fc7b], a                                    ; $5b35: $ea $7b $fc
	ld l, [hl]                                       ; $5b38: $6e
	sub a                                            ; $5b39: $97
	ld a, [hl]                                       ; $5b3a: $7e
	call z, $c07e                                    ; $5b3b: $cc $7e $c0
	ld a, [hl]                                       ; $5b3e: $7e
	cp h                                             ; $5b3f: $bc
	sbc d                                            ; $5b40: $9a
	ldh a, [$c1]                                     ; $5b41: $f0 $c1
	or b                                             ; $5b43: $b0
	jp Jump_043_79c8                                 ; $5b44: $c3 $c8 $79


	ld a, b                                          ; $5b47: $78
	ld a, a                                          ; $5b48: $7f
	ld c, l                                          ; $5b49: $4d
	ld l, e                                          ; $5b4a: $6b
	daa                                              ; $5b4b: $27
	ld a, e                                          ; $5b4c: $7b
	cp $7f                                           ; $5b4d: $fe $7f
	ld sp, $459e                                     ; $5b4f: $31 $9e $45
	ld a, d                                          ; $5b52: $7a
	cp d                                             ; $5b53: $ba
	ld a, a                                          ; $5b54: $7f
	ld hl, sp-$65                                    ; $5b55: $f8 $9b
	rlca                                             ; $5b57: $07
	ld hl, sp+$07                                    ; $5b58: $f8 $07
	ld hl, sp+$77                                    ; $5b5a: $f8 $77
	ldh a, [$7f]                                     ; $5b5c: $f0 $7f
	db $f4                                           ; $5b5e: $f4
	sbc [hl]                                         ; $5b5f: $9e
	ld d, h                                          ; $5b60: $54
	halt                                             ; $5b61: $76
	xor [hl]                                         ; $5b62: $ae
	sub [hl]                                         ; $5b63: $96
	rra                                              ; $5b64: $1f
	ld b, b                                          ; $5b65: $40
	nop                                              ; $5b66: $00
	ld b, b                                          ; $5b67: $40
	nop                                              ; $5b68: $00
	nop                                              ; $5b69: $00
	ldh [rP1], a                                     ; $5b6a: $e0 $00
	ld hl, sp+$7b                                    ; $5b6c: $f8 $7b
	sub $88                                          ; $5b6e: $d6 $88
	cp $00                                           ; $5b70: $fe $00

jr_043_5b72:
	rst $38                                          ; $5b72: $ff
	and h                                            ; $5b73: $a4
	ei                                               ; $5b74: $fb
	add hl, bc                                       ; $5b75: $09
	ld d, $11                                        ; $5b76: $16 $11
	ld e, $c0                                        ; $5b78: $1e $c0
	rra                                              ; $5b7a: $1f
	ldh [rIF], a                                     ; $5b7b: $e0 $0f
	ld [$001f], sp                                   ; $5b7d: $08 $1f $00
	rrca                                             ; $5b80: $0f
	ld h, b                                          ; $5b81: $60
	rrca                                             ; $5b82: $0f
	ret nz                                           ; $5b83: $c0

	ccf                                              ; $5b84: $3f
	nop                                              ; $5b85: $00
	ld a, a                                          ; $5b86: $7f
	ld a, e                                          ; $5b87: $7b
	cp $63                                           ; $5b88: $fe $63
	cp d                                             ; $5b8a: $ba
	sbc c                                            ; $5b8b: $99
	ld c, d                                          ; $5b8c: $4a
	or l                                             ; $5b8d: $b5
	dec b                                            ; $5b8e: $05
	ld a, [$fd02]                                    ; $5b8f: $fa $02 $fd
	ld e, a                                          ; $5b92: $5f
	ldh a, [hDisp1_OBP0]                                     ; $5b93: $f0 $93
	cp a                                             ; $5b95: $bf
	ld b, b                                          ; $5b96: $40
	ld e, a                                          ; $5b97: $5f
	and b                                            ; $5b98: $a0
	ld a, [hl+]                                      ; $5b99: $2a
	push de                                          ; $5b9a: $d5
	sub l                                            ; $5b9b: $95
	ld l, d                                          ; $5b9c: $6a
	ld a, [bc]                                       ; $5b9d: $0a
	push af                                          ; $5b9e: $f5
	inc b                                            ; $5b9f: $04
	ei                                               ; $5ba0: $fb
	ld [hl], a                                       ; $5ba1: $77
	ldh a, [$7e]                                     ; $5ba2: $f0 $7e
	db $fc                                           ; $5ba4: $fc

jr_043_5ba5:
	sbc l                                            ; $5ba5: $9d
	push de                                          ; $5ba6: $d5
	ld a, [hl+]                                      ; $5ba7: $2a
	halt                                             ; $5ba8: $76
	ldh [$7e], a                                     ; $5ba9: $e0 $7e
	ldh a, [$6f]                                     ; $5bab: $f0 $6f
	ldh [$7e], a                                     ; $5bad: $e0 $7e
	ret c                                            ; $5baf: $d8

	ld a, a                                          ; $5bb0: $7f
	db $f4                                           ; $5bb1: $f4
	ld a, l                                          ; $5bb2: $7d
	ld h, $9d                                        ; $5bb3: $26 $9d
	add hl, bc                                       ; $5bb5: $09
	or $67                                           ; $5bb6: $f6 $67
	ret nc                                           ; $5bb8: $d0

	halt                                             ; $5bb9: $76
	sbc h                                            ; $5bba: $9c
	ld [hl], a                                       ; $5bbb: $77
	call z, $2f97                                    ; $5bbc: $cc $97 $2f
	ret nc                                           ; $5bbf: $d0

	dec d                                            ; $5bc0: $15
	ld [$f50a], a                                    ; $5bc1: $ea $0a $f5
	ld bc, $76fe                                     ; $5bc4: $01 $fe $76
	call z, $cc6f                                    ; $5bc7: $cc $6f $cc
	sbc c                                            ; $5bca: $99
	ld d, h                                          ; $5bcb: $54
	xor e                                            ; $5bcc: $ab
	xor b                                            ; $5bcd: $a8
	ld d, a                                          ; $5bce: $57
	ld d, b                                          ; $5bcf: $50
	xor a                                            ; $5bd0: $af
	ld c, [hl]                                       ; $5bd1: $4e
	call nz, Call_043_4c7f                           ; $5bd2: $c4 $7f $4c
	ld l, a                                          ; $5bd5: $6f
	db $fc                                           ; $5bd6: $fc
	ld a, a                                          ; $5bd7: $7f
	db $f4                                           ; $5bd8: $f4
	ld a, [hl]                                       ; $5bd9: $7e
	ld [hl+], a                                      ; $5bda: $22
	ld a, [hl]                                       ; $5bdb: $7e
	ld [hl], $7d                                     ; $5bdc: $36 $7d
	cp $9e                                           ; $5bde: $fe $9e
	xor e                                            ; $5be0: $ab
	ld h, d                                          ; $5be1: $62
	ret z                                            ; $5be2: $c8

	halt                                             ; $5be3: $76
	cp h                                             ; $5be4: $bc
	jr jr_043_5c5e                                   ; $5be5: $18 $77

	ret z                                            ; $5be7: $c8

	rst $38                                          ; $5be8: $ff
	inc [hl]                                         ; $5be9: $34
	nop                                              ; $5bea: $00
	ret c                                            ; $5beb: $d8

	ld d, l                                          ; $5bec: $55
	sbc [hl]                                         ; $5bed: $9e
	ld d, e                                          ; $5bee: $53
	ld c, a                                          ; $5bef: $4f
	or $9d                                           ; $5bf0: $f6 $9d
	ld d, e                                          ; $5bf2: $53
	dec [hl]                                         ; $5bf3: $35
	ld [hl], a                                       ; $5bf4: $77
	ei                                               ; $5bf5: $fb
	sbc [hl]                                         ; $5bf6: $9e
	inc sp                                           ; $5bf7: $33
	ld [hl], a                                       ; $5bf8: $77
	ld a, [$55dd]                                    ; $5bf9: $fa $dd $55
	call c, $9d33                                    ; $5bfc: $dc $33 $9d

Call_043_5bff:
	ld [hl], a                                       ; $5bff: $77
	ld [hl], e                                       ; $5c00: $73
	reti                                             ; $5c01: $d9


	inc sp                                           ; $5c02: $33
	ld l, e                                          ; $5c03: $6b
	or $df                                           ; $5c04: $f6 $df
	ld h, [hl]                                       ; $5c06: $66
	sbc $44                                          ; $5c07: $de $44
	sbc l                                            ; $5c09: $9d
	inc sp                                           ; $5c0a: $33
	ld b, h                                          ; $5c0b: $44
	ld l, a                                          ; $5c0c: $6f
	or $9c                                           ; $5c0d: $f6 $9c
	ld h, [hl]                                       ; $5c0f: $66
	ld h, e                                          ; $5c10: $63
	inc sp                                           ; $5c11: $33
	ld a, e                                          ; $5c12: $7b
	push af                                          ; $5c13: $f5
	ld a, a                                          ; $5c14: $7f
	ld sp, hl                                        ; $5c15: $f9
	sbc e                                            ; $5c16: $9b
	ld h, [hl]                                       ; $5c17: $66
	ld b, [hl]                                       ; $5c18: $46
	ld h, [hl]                                       ; $5c19: $66
	ld h, h                                          ; $5c1a: $64
	ret                                              ; $5c1b: $c9


	ld b, h                                          ; $5c1c: $44
	inc bc                                           ; $5c1d: $03
	add hl, bc                                       ; $5c1e: $09
	sbc l                                            ; $5c1f: $9d
	nop                                              ; $5c20: $00
	rst $38                                          ; $5c21: $ff
	inc bc                                           ; $5c22: $03
	cp $03                                           ; $5c23: $fe $03
	cp $03                                           ; $5c25: $fe $03
	cp $03                                           ; $5c27: $fe $03
	cp $03                                           ; $5c29: $fe $03
	cp $03                                           ; $5c2b: $fe $03
	cp $03                                           ; $5c2d: $fe $03
	cp $9c                                           ; $5c2f: $fe $9c
	rst $38                                          ; $5c31: $ff
	ld bc, $7bfe                                     ; $5c32: $01 $fe $7b
	cp $7b                                           ; $5c35: $fe $7b
	ld hl, sp-$72                                    ; $5c37: $f8 $8e
	rlca                                             ; $5c39: $07
	ld hl, sp+$1c                                    ; $5c3a: $f8 $1c
	ldh [$f4], a                                     ; $5c3c: $e0 $f4
	ld [bc], a                                       ; $5c3e: $02
	ld a, b                                          ; $5c3f: $78
	ld b, $31                                        ; $5c40: $06 $31
	ld b, b                                          ; $5c42: $40
	rra                                              ; $5c43: $1f
	nop                                              ; $5c44: $00
	ldh a, [rP1]                                     ; $5c45: $f0 $00
	nop                                              ; $5c47: $00
	rst $38                                          ; $5c48: $ff
	add b                                            ; $5c49: $80
	db $fc                                           ; $5c4a: $fc
	sub a                                            ; $5c4b: $97
	inc bc                                           ; $5c4c: $03
	ld bc, $f0fc                                     ; $5c4d: $01 $fc $f0
	ld bc, $3e00                                     ; $5c50: $01 $00 $3e
	ld a, $7b                                        ; $5c53: $3e $7b
	or $92                                           ; $5c55: $f6 $92
	nop                                              ; $5c57: $00
	rrca                                             ; $5c58: $0f
	nop                                              ; $5c59: $00
	ld a, a                                          ; $5c5a: $7f
	rrca                                             ; $5c5b: $0f
	ldh a, [$f0]                                     ; $5c5c: $f0 $f0

jr_043_5c5e:
	ld c, $04                                        ; $5c5e: $0e $04
	cp $f6                                           ; $5c60: $fe $f6
	ld a, $06                                        ; $5c62: $3e $06
	ld [hl], a                                       ; $5c64: $77
	add $df                                          ; $5c65: $c6 $df
	rst $38                                          ; $5c67: $ff
	or $9b                                           ; $5c68: $f6 $9b
	rst $38                                          ; $5c6a: $ff
	ld a, a                                          ; $5c6b: $7f
	rst $38                                          ; $5c6c: $ff
	add b                                            ; $5c6d: $80
	ld l, a                                          ; $5c6e: $6f
	call $f06b                                       ; $5c6f: $cd $6b $f0
	inc bc                                           ; $5c72: $03
	cp $17                                           ; $5c73: $fe $17
	cp $9e                                           ; $5c75: $fe $9e
	db $fc                                           ; $5c77: $fc
	ld d, e                                          ; $5c78: $53
	ldh a, [c]                                       ; $5c79: $f2
	sbc [hl]                                         ; $5c7a: $9e
	ldh [$67], a                                     ; $5c7b: $e0 $67
	or b                                             ; $5c7d: $b0
	ld a, e                                          ; $5c7e: $7b
	ld e, b                                          ; $5c7f: $58
	sbc [hl]                                         ; $5c80: $9e
	cp $77                                           ; $5c81: $fe $77
	ldh a, [c]                                       ; $5c83: $f2
	sbc [hl]                                         ; $5c84: $9e
	rlca                                             ; $5c85: $07
	ld [hl], e                                       ; $5c86: $73
	ldh a, [hDisp0_SCY]                                     ; $5c87: $f0 $83
	rrca                                             ; $5c89: $0f
	rst $38                                          ; $5c8a: $ff
	pop hl                                           ; $5c8b: $e1
	ldh [rP1], a                                     ; $5c8c: $e0 $00
	ld bc, $0300                                     ; $5c8e: $01 $00 $03
	rra                                              ; $5c91: $1f
	rrca                                             ; $5c92: $0f
	rst $38                                          ; $5c93: $ff
	ld a, a                                          ; $5c94: $7f
	nop                                              ; $5c95: $00
	rst $38                                          ; $5c96: $ff
	rra                                              ; $5c97: $1f
	rst $38                                          ; $5c98: $ff
	ldh a, [rP1]                                     ; $5c99: $f0 $00
	pop bc                                           ; $5c9b: $c1
	nop                                              ; $5c9c: $00

Jump_043_5c9d:
	inc hl                                           ; $5c9d: $23
	ret nz                                           ; $5c9e: $c0

	ld h, a                                          ; $5c9f: $67
	add b                                            ; $5ca0: $80
	rst $38                                          ; $5ca1: $ff
	nop                                              ; $5ca2: $00
	sbc a                                            ; $5ca3: $9f
	add b                                            ; $5ca4: $80
	ld a, e                                          ; $5ca5: $7b
	ld b, b                                          ; $5ca6: $40
	ld a, a                                          ; $5ca7: $7f
	jp nc, $e47f                                     ; $5ca8: $d2 $7f $e4

	ld [hl], e                                       ; $5cab: $73
	cp b                                             ; $5cac: $b8
	ld a, e                                          ; $5cad: $7b
	ld e, b                                          ; $5cae: $58
	ld [hl], e                                       ; $5caf: $73
	cp $9e                                           ; $5cb0: $fe $9e
	ret nz                                           ; $5cb2: $c0

	ld l, e                                          ; $5cb3: $6b
	xor $9e                                          ; $5cb4: $ee $9e
	ldh [$7b], a                                     ; $5cb6: $e0 $7b
	call nc, $ee6f                                   ; $5cb8: $d4 $6f $ee
	ld a, a                                          ; $5cbb: $7f
	or $df                                           ; $5cbc: $f6 $df
	rlca                                             ; $5cbe: $07
	ld a, e                                          ; $5cbf: $7b
	inc de                                           ; $5cc0: $13
	ld h, e                                          ; $5cc1: $63
	sbc $77                                          ; $5cc2: $de $77
	xor $df                                          ; $5cc4: $ee $df
	inc bc                                           ; $5cc6: $03
	ld a, a                                          ; $5cc7: $7f
	call c, $f89e                                    ; $5cc8: $dc $9e $f8
	ld e, e                                          ; $5ccb: $5b
	add d                                            ; $5ccc: $82
	ld a, e                                          ; $5ccd: $7b
	db $f4                                           ; $5cce: $f4
	ld c, e                                          ; $5ccf: $4b
	ld [hl-], a                                      ; $5cd0: $32
	sbc [hl]                                         ; $5cd1: $9e
	cp $7b                                           ; $5cd2: $fe $7b
	xor $72                                          ; $5cd4: $ee $72
	jp z, $fe73                                      ; $5cd6: $ca $73 $fe

	ld a, e                                          ; $5cd9: $7b
	ld l, [hl]                                       ; $5cda: $6e
	sbc h                                            ; $5cdb: $9c
	cp $7e                                           ; $5cdc: $fe $7e
	ld a, [hl]                                       ; $5cde: $7e
	sbc $0f                                          ; $5cdf: $de $0f
	adc e                                            ; $5ce1: $8b
	db $10                                           ; $5ce2: $10
	jr jr_043_5cf5                                   ; $5ce3: $18 $10

	dec de                                           ; $5ce5: $1b
	db $10                                           ; $5ce6: $10
	rra                                              ; $5ce7: $1f
	db $10                                           ; $5ce8: $10
	rra                                              ; $5ce9: $1f
	rra                                              ; $5cea: $1f
	inc e                                            ; $5ceb: $1c
	rra                                              ; $5cec: $1f
	nop                                              ; $5ced: $00
	nop                                              ; $5cee: $00
	push de                                          ; $5cef: $d5
	ret nz                                           ; $5cf0: $c0

	xor e                                            ; $5cf1: $ab
	nop                                              ; $5cf2: $00
	rst SubAFromDE                                          ; $5cf3: $df
	nop                                              ; $5cf4: $00

jr_043_5cf5:
	db $fd                                           ; $5cf5: $fd
	ld a, e                                          ; $5cf6: $7b
	ld e, e                                          ; $5cf7: $5b
	sbc l                                            ; $5cf8: $9d
	cp a                                             ; $5cf9: $bf
	ret nz                                           ; $5cfa: $c0

	db $fd                                           ; $5cfb: $fd
	sub [hl]                                         ; $5cfc: $96
	cp $04                                           ; $5cfd: $fe $04
	sub $04                                          ; $5cff: $d6 $04
	xor [hl]                                         ; $5d01: $ae
	inc b                                            ; $5d02: $04
	ld [hl], h                                       ; $5d03: $74
	inc c                                            ; $5d04: $0c
	add sp, $7a                                      ; $5d05: $e8 $7a
	and l                                            ; $5d07: $a5
	rst FarCall                                          ; $5d08: $f7
	ld a, a                                          ; $5d09: $7f
	sub l                                            ; $5d0a: $95
	sub a                                            ; $5d0b: $97
	ld c, $00                                        ; $5d0c: $0e $00
	inc e                                            ; $5d0e: $1c

jr_043_5d0f:
	ld [$1038], sp                                   ; $5d0f: $08 $38 $10
	ld [hl], b                                       ; $5d12: $70
	ld h, b                                          ; $5d13: $60
	push af                                          ; $5d14: $f5
	ld a, a                                          ; $5d15: $7f
	ld l, l                                          ; $5d16: $6d
	sbc l                                            ; $5d17: $9d
	ccf                                              ; $5d18: $3f
	inc c                                            ; $5d19: $0c
	ld c, a                                          ; $5d1a: $4f
	adc [hl]                                         ; $5d1b: $8e
	ld l, a                                          ; $5d1c: $6f
	ld h, b                                          ; $5d1d: $60
	ld a, e                                          ; $5d1e: $7b
	sub h                                            ; $5d1f: $94
	sbc l                                            ; $5d20: $9d
	ld hl, sp+$07                                    ; $5d21: $f8 $07
	ld a, e                                          ; $5d23: $7b
	ld d, d                                          ; $5d24: $52
	sub [hl]                                         ; $5d25: $96
	ld bc, $f0f0                                     ; $5d26: $01 $f0 $f0
	ldh a, [c]                                       ; $5d29: $f2
	nop                                              ; $5d2a: $00
	rst $38                                          ; $5d2b: $ff
	ccf                                              ; $5d2c: $3f
	ret nz                                           ; $5d2d: $c0

	ret nz                                           ; $5d2e: $c0

	ld a, e                                          ; $5d2f: $7b
	sub $98                                          ; $5d30: $d6 $98
	add b                                            ; $5d32: $80
	ld a, [hl]                                       ; $5d33: $7e
	ld hl, $bcc0                                     ; $5d34: $21 $c0 $bc
	nop                                              ; $5d37: $00
	ld sp, $4e76                                     ; $5d38: $31 $76 $4e
	sbc e                                            ; $5d3b: $9b
	nop                                              ; $5d3c: $00
	rra                                              ; $5d3d: $1f
	nop                                              ; $5d3e: $00
	jr nz, jr_043_5dbc                               ; $5d3f: $20 $7b

	sub h                                            ; $5d41: $94
	ld a, a                                          ; $5d42: $7f
	or $96                                           ; $5d43: $f6 $96
	ldh a, [$80]                                     ; $5d45: $f0 $80
	ldh a, [hDisp1_SCY]                                     ; $5d47: $f0 $90
	rlca                                             ; $5d49: $07
	nop                                              ; $5d4a: $00
	ld h, a                                          ; $5d4b: $67
	jr jr_043_5d0f                                   ; $5d4c: $18 $c1

	cp $7a                                           ; $5d4e: $fe $7a
	pop hl                                           ; $5d50: $e1
	ld a, e                                          ; $5d51: $7b
	jp c, $e67f                                      ; $5d52: $da $7f $e6

	adc h                                            ; $5d55: $8c
	ld c, $01                                        ; $5d56: $0e $01
	ld de, $330f                                     ; $5d58: $11 $0f $33
	rra                                              ; $5d5b: $1f
	di                                               ; $5d5c: $f3
	ld a, a                                          ; $5d5d: $7f
	ld [hl], e                                       ; $5d5e: $73
	rst $38                                          ; $5d5f: $ff
	ld a, e                                          ; $5d60: $7b
	rst $38                                          ; $5d61: $ff
	ld [hl], c                                       ; $5d62: $71
	rst $38                                          ; $5d63: $ff
	inc sp                                           ; $5d64: $33
	rst $38                                          ; $5d65: $ff
	rrca                                             ; $5d66: $0f
	di                                               ; $5d67: $f3
	ld a, a                                          ; $5d68: $7f
	ld a, d                                          ; $5d69: $7a
	ld c, [hl]                                       ; $5d6a: $4e
	ld e, a                                          ; $5d6b: $5f
	cp $9c                                           ; $5d6c: $fe $9c
	add [hl]                                         ; $5d6e: $86
	rlca                                             ; $5d6f: $07
	add h                                            ; $5d70: $84
	ld [hl], a                                       ; $5d71: $77
	cp $9e                                           ; $5d72: $fe $9e
	add a                                            ; $5d74: $87
	ld [hl], e                                       ; $5d75: $73
	cp $7b                                           ; $5d76: $fe $7b
	or $9c                                           ; $5d78: $f6 $9c
	ld b, b                                          ; $5d7a: $40
	rst $38                                          ; $5d7b: $ff
	ld b, b                                          ; $5d7c: $40
	ld a, e                                          ; $5d7d: $7b
	ld [$fa77], a                                    ; $5d7e: $ea $77 $fa
	sbc [hl]                                         ; $5d81: $9e
	ccf                                              ; $5d82: $3f
	ld [hl], e                                       ; $5d83: $73
	add b                                            ; $5d84: $80
	halt                                             ; $5d85: $76
	adc $7e                                          ; $5d86: $ce $7e
	or $9e                                           ; $5d88: $f6 $9e
	rlca                                             ; $5d8a: $07
	ld h, e                                          ; $5d8b: $63
	ld a, [$ffdf]                                    ; $5d8c: $fa $df $ff
	ld [hl], l                                       ; $5d8f: $75
	call z, Call_043_686f                            ; $5d90: $cc $6f $68
	ld [hl], a                                       ; $5d93: $77
	ld a, [$ffdf]                                    ; $5d94: $fa $df $ff
	sbc b                                            ; $5d97: $98
	rst JumpTable                                          ; $5d98: $c7
	rst $38                                          ; $5d99: $ff
	ld c, h                                          ; $5d9a: $4c
	rst $38                                          ; $5d9b: $ff
	call z, Call_043_4cf8                            ; $5d9c: $cc $f8 $4c
	ld a, e                                          ; $5d9f: $7b
	cp $97                                           ; $5da0: $fe $97
	ret z                                            ; $5da2: $c8

	ld hl, sp+$08                                    ; $5da3: $f8 $08
	ld hl, sp-$01                                    ; $5da5: $f8 $ff
	rra                                              ; $5da7: $1f
	rra                                              ; $5da8: $1f
	ldh [$7b], a                                     ; $5da9: $e0 $7b
	db $e4                                           ; $5dab: $e4
	ld l, e                                          ; $5dac: $6b
	ld a, [de]                                       ; $5dad: $1a
	ld a, a                                          ; $5dae: $7f
	ld a, [hl]                                       ; $5daf: $7e
	ld [hl], a                                       ; $5db0: $77
	cp l                                             ; $5db1: $bd
	ld a, a                                          ; $5db2: $7f
	xor $93                                          ; $5db3: $ee $93
	ld h, b                                          ; $5db5: $60
	rra                                              ; $5db6: $1f
	inc bc                                           ; $5db7: $03
	nop                                              ; $5db8: $00
	ei                                               ; $5db9: $fb
	inc b                                            ; $5dba: $04
	rst AddAOntoHL                                          ; $5dbb: $ef

jr_043_5dbc:
	db $10                                           ; $5dbc: $10
	ccf                                              ; $5dbd: $3f
	nop                                              ; $5dbe: $00
	add b                                            ; $5dbf: $80
	add b                                            ; $5dc0: $80

jr_043_5dc1:
	sbc $fe                                          ; $5dc1: $de $fe
	sbc b                                            ; $5dc3: $98
	ld a, [hl]                                       ; $5dc4: $7e
	ld [bc], a                                       ; $5dc5: $02
	cp $e4                                           ; $5dc6: $fe $e4
	ld e, $f8                                        ; $5dc8: $1e $f8
	ld b, $77                                        ; $5dca: $06 $77
	cp $e0                                           ; $5dcc: $fe $e0
	rst SubAFromDE                                          ; $5dce: $df
	ld a, a                                          ; $5dcf: $7f
	ld [hl], $7f                                     ; $5dd0: $36 $7f
	cp d                                             ; $5dd2: $ba
	ld a, l                                          ; $5dd3: $7d
	ld a, [hl]                                       ; $5dd4: $7e
	sbc d                                            ; $5dd5: $9a
	ld e, $00                                        ; $5dd6: $1e $00
	inc a                                            ; $5dd8: $3c

jr_043_5dd9:
	nop                                              ; $5dd9: $00
	ld a, b                                          ; $5dda: $78
	ld [hl], a                                       ; $5ddb: $77
	inc e                                            ; $5ddc: $1c
	sbc e                                            ; $5ddd: $9b
	jr nc, jr_043_5dc1                               ; $5dde: $30 $e1

	nop                                              ; $5de0: $00
	add e                                            ; $5de1: $83
	ld a, e                                          ; $5de2: $7b
	ldh a, [$7f]                                     ; $5de3: $f0 $7f
	ld h, $7f                                        ; $5de5: $26 $7f
	or h                                             ; $5de7: $b4
	ld a, a                                          ; $5de8: $7f
	cp $7e                                           ; $5de9: $fe $7e
	ld bc, $4f9b                                     ; $5deb: $01 $9b $4f
	inc a                                            ; $5dee: $3c
	cp h                                             ; $5def: $bc
	ld a, a                                          ; $5df0: $7f
	ld d, a                                          ; $5df1: $57
	jr nc, jr_043_5e73                               ; $5df2: $30 $7f

	add l                                            ; $5df4: $85
	ld a, l                                          ; $5df5: $7d
	ld d, l                                          ; $5df6: $55
	sbc c                                            ; $5df7: $99
	rst AddAOntoHL                                          ; $5df8: $ef
	rst $38                                          ; $5df9: $ff
	rla                                              ; $5dfa: $17
	ld hl, sp+$18                                    ; $5dfb: $f8 $18
	ldh a, [$6f]                                     ; $5dfd: $f0 $6f
	cp $96                                           ; $5dff: $fe $96
	jp $c230                                         ; $5e01: $c3 $30 $c2


	jr nc, jr_043_5dd9                               ; $5e04: $30 $d3

	ldh [$d0], a                                     ; $5e06: $e0 $d0
	jr nz, @+$12                                     ; $5e08: $20 $10

	ld l, e                                          ; $5e0a: $6b
	cp $9e                                           ; $5e0b: $fe $9e
	inc hl                                           ; $5e0d: $23
	ld a, e                                          ; $5e0e: $7b
	call z, $e37f                                    ; $5e0f: $cc $7f $e3
	ld l, a                                          ; $5e12: $6f
	ld h, d                                          ; $5e13: $62
	ld a, a                                          ; $5e14: $7f
	add e                                            ; $5e15: $83
	ld a, [hl]                                       ; $5e16: $7e
	sub c                                            ; $5e17: $91
	sbc l                                            ; $5e18: $9d
	ldh a, [rAUD1SWEEP]                              ; $5e19: $f0 $10
	ld a, d                                          ; $5e1b: $7a
	or c                                             ; $5e1c: $b1
	ld l, e                                          ; $5e1d: $6b
	sbc h                                            ; $5e1e: $9c
	ld [hl], a                                       ; $5e1f: $77
	xor [hl]                                         ; $5e20: $ae
	sub l                                            ; $5e21: $95
	jr nz, jr_043_5e43                               ; $5e22: $20 $1f

	ccf                                              ; $5e24: $3f
	ld a, a                                          ; $5e25: $7f
	ld h, b                                          ; $5e26: $60
	rst $38                                          ; $5e27: $ff
	ld [hl], b                                       ; $5e28: $70
	rst $38                                          ; $5e29: $ff
	cp a                                             ; $5e2a: $bf
	ld a, a                                          ; $5e2b: $7f
	ld l, a                                          ; $5e2c: $6f

jr_043_5e2d:
	cp $9e                                           ; $5e2d: $fe $9e
	ld hl, $087b                                     ; $5e2f: $21 $7b $08
	sub a                                            ; $5e32: $97
	inc c                                            ; $5e33: $0c
	rst $38                                          ; $5e34: $ff
	rlca                                             ; $5e35: $07
	cp $3f                                           ; $5e36: $fe $3f
	ret nz                                           ; $5e38: $c0

	ld a, a                                          ; $5e39: $7f
	add b                                            ; $5e3a: $80
	ld [hl], a                                       ; $5e3b: $77
	cp $7e                                           ; $5e3c: $fe $7e
	add sp, -$6f                                     ; $5e3e: $e8 $91
	ld c, a                                          ; $5e40: $4f
	ldh [rLCDC], a                                   ; $5e41: $e0 $40

jr_043_5e43:
	ldh [$5d], a                                     ; $5e43: $e0 $5d
	ret nz                                           ; $5e45: $c0

	ld c, [hl]                                       ; $5e46: $4e
	ldh [rVBK], a                                    ; $5e47: $e0 $4f
	and $54                                          ; $5e49: $e6 $54
	ldh a, [c]                                       ; $5e4b: $f2
	halt                                             ; $5e4c: $76
	ldh a, [c]                                       ; $5e4d: $f2
	halt                                             ; $5e4e: $76
	call nz, $c493                                   ; $5e4f: $c4 $93 $c4
	ld b, a                                          ; $5e52: $47
	call nz, $c6c7                                   ; $5e53: $c4 $c7 $c6
	ld b, a                                          ; $5e56: $47
	rst $38                                          ; $5e57: $ff
	ld a, l                                          ; $5e58: $7d
	rst $38                                          ; $5e59: $ff
	ld h, c                                          ; $5e5a: $61
	ld h, a                                          ; $5e5b: $67
	dec h                                            ; $5e5c: $25
	ld [hl], a                                       ; $5e5d: $77
	ld a, h                                          ; $5e5e: $7c
	ld a, a                                          ; $5e5f: $7f
	jp nz, Jump_043_6f9d                             ; $5e60: $c2 $9d $6f

	ldh a, [rPCM34]                                  ; $5e63: $f0 $77
	cp $93                                           ; $5e65: $fe $93
	ld l, [hl]                                       ; $5e67: $6e
	pop af                                           ; $5e68: $f1
	ld l, h                                          ; $5e69: $6c
	di                                               ; $5e6a: $f3
	nop                                              ; $5e6b: $00
	rst $38                                          ; $5e6c: $ff
	ld sp, hl                                        ; $5e6d: $f9
	rst $38                                          ; $5e6e: $ff
	add hl, sp                                       ; $5e6f: $39
	rst $38                                          ; $5e70: $ff
	reti                                             ; $5e71: $d9


	cpl                                              ; $5e72: $2f

jr_043_5e73:
	ld [hl], a                                       ; $5e73: $77
	cp $9b                                           ; $5e74: $fe $9b
	add hl, de                                       ; $5e76: $19
	rst AddAOntoHL                                          ; $5e77: $ef
	ld e, c                                          ; $5e78: $59
	xor a                                            ; $5e79: $af
	ld l, [hl]                                       ; $5e7a: $6e
	call z, $8399                                    ; $5e7b: $cc $99 $83
	rst $38                                          ; $5e7e: $ff
	ld l, c                                          ; $5e7f: $69
	sub [hl]                                         ; $5e80: $96
	ld h, l                                          ; $5e81: $65
	sbc d                                            ; $5e82: $9a
	ld [hl], a                                       ; $5e83: $77
	db $fc                                           ; $5e84: $fc
	sbc d                                            ; $5e85: $9a
	inc c                                            ; $5e86: $0c
	ld hl, sp-$74                                    ; $5e87: $f8 $8c
	ld hl, sp-$34                                    ; $5e89: $f8 $cc
	ld a, e                                          ; $5e8b: $7b
	cp $9d                                           ; $5e8c: $fe $9d
	ret z                                            ; $5e8e: $c8

	db $fc                                           ; $5e8f: $fc
	ld l, a                                          ; $5e90: $6f
	cp $7f                                           ; $5e91: $fe $7f
	jr jr_043_5e2d                                   ; $5e93: $18 $98

	jr c, jr_043_5e97                                ; $5e95: $38 $00

jr_043_5e97:
	ld [hl], e                                       ; $5e97: $73
	nop                                              ; $5e98: $00
	rst GetHLinHL                                          ; $5e99: $cf
	nop                                              ; $5e9a: $00
	sbc a                                            ; $5e9b: $9f
	ld [hl], e                                       ; $5e9c: $73
	ld [hl+], a                                      ; $5e9d: $22
	ld [hl], a                                       ; $5e9e: $77
	cp $74                                           ; $5e9f: $fe $74
	ld e, l                                          ; $5ea1: $5d
	add l                                            ; $5ea2: $85
	ldh [$1f], a                                     ; $5ea3: $e0 $1f
	sub b                                            ; $5ea5: $90
	ld a, a                                          ; $5ea6: $7f
	cp l                                             ; $5ea7: $bd
	ld a, a                                          ; $5ea8: $7f
	cp c                                             ; $5ea9: $b9
	ld a, a                                          ; $5eaa: $7f
	inc sp                                           ; $5eab: $33
	rst $38                                          ; $5eac: $ff
	ld hl, sp+$06                                    ; $5ead: $f8 $06
	ld a, [$fa04]                                    ; $5eaf: $fa $04 $fa
	db $e4                                           ; $5eb2: $e4

Call_043_5eb3:
	sbc d                                            ; $5eb3: $9a
	db $f4                                           ; $5eb4: $f4
	ld e, d                                          ; $5eb5: $5a
	db $f4                                           ; $5eb6: $f4
	adc d                                            ; $5eb7: $8a
	db $f4                                           ; $5eb8: $f4
	cp d                                             ; $5eb9: $ba
	db $f4                                           ; $5eba: $f4
	ld a, [hl-]                                      ; $5ebb: $3a
	db $f4                                           ; $5ebc: $f4
	ld a, $d2                                        ; $5ebd: $3e $d2
	halt                                             ; $5ebf: $76
	adc d                                            ; $5ec0: $8a
	halt                                             ; $5ec1: $76
	ldh [$7c], a                                     ; $5ec2: $e0 $7c
	ld b, l                                          ; $5ec4: $45
	sbc [hl]                                         ; $5ec5: $9e
	ld a, h                                          ; $5ec6: $7c
	ld a, e                                          ; $5ec7: $7b
	cp $7e                                           ; $5ec8: $fe $7e
	ld [hl], e                                       ; $5eca: $73
	ld a, l                                          ; $5ecb: $7d
	ldh a, [c]                                       ; $5ecc: $f2
	ld a, [hl]                                       ; $5ecd: $7e
	ret nc                                           ; $5ece: $d0

	ld l, a                                          ; $5ecf: $6f
	xor $77                                          ; $5ed0: $ee $77
	xor [hl]                                         ; $5ed2: $ae
	ld h, a                                          ; $5ed3: $67

jr_043_5ed4:
	ldh [c], a                                       ; $5ed4: $e2
	ld [hl], a                                       ; $5ed5: $77
	db $f4                                           ; $5ed6: $f4
	halt                                             ; $5ed7: $76
	dec sp                                           ; $5ed8: $3b
	ld a, a                                          ; $5ed9: $7f
	inc d                                            ; $5eda: $14
	ld e, a                                          ; $5edb: $5f
	cp $8b                                           ; $5edc: $fe $8b
	ld h, e                                          ; $5ede: $63
	cp $67                                           ; $5edf: $fe $67
	db $fc                                           ; $5ee1: $fc
	jr jr_043_5ed4                                   ; $5ee2: $18 $f0

	sbc b                                            ; $5ee4: $98
	ldh a, [$99]                                     ; $5ee5: $f0 $99
	ldh a, [$98]                                     ; $5ee7: $f0 $98
	pop af                                           ; $5ee9: $f1
	sbc d                                            ; $5eea: $9a
	pop af                                           ; $5eeb: $f1
	sbc c                                            ; $5eec: $99
	di                                               ; $5eed: $f3
	sbc c                                            ; $5eee: $99
	rst FarCall                                          ; $5eef: $f7
	adc a                                            ; $5ef0: $8f
	rst $38                                          ; $5ef1: $ff
	halt                                             ; $5ef2: $76
	call z, $5098                                    ; $5ef3: $cc $98 $50
	ld h, b                                          ; $5ef6: $60
	ret nc                                           ; $5ef7: $d0

	ldh [$d0], a                                     ; $5ef8: $e0 $d0
	ldh [$d1], a                                     ; $5efa: $e0 $d1
	ld a, e                                          ; $5efc: $7b
	cp $9a                                           ; $5efd: $fe $9a
	inc de                                           ; $5eff: $13
	ldh [rAUD2LOW], a                                ; $5f00: $e0 $18
	nop                                              ; $5f02: $00
	ld [hl], c                                       ; $5f03: $71
	ld a, e                                          ; $5f04: $7b
	ld h, b                                          ; $5f05: $60
	sbc h                                            ; $5f06: $9c
	rst SubAFromBC                                          ; $5f07: $e7
	nop                                              ; $5f08: $00
	rst AddAOntoHL                                          ; $5f09: $ef
	ld a, e                                          ; $5f0a: $7b
	cp $77                                           ; $5f0b: $fe $77
	ret nz                                           ; $5f0d: $c0

	rst $38                                          ; $5f0e: $ff
	ld a, [hl]                                       ; $5f0f: $7e
	cp d                                             ; $5f10: $ba
	ld a, l                                          ; $5f11: $7d
	inc [hl]                                         ; $5f12: $34
	halt                                             ; $5f13: $76
	ld h, d                                          ; $5f14: $62
	sbc c                                            ; $5f15: $99
	ld a, [hl]                                       ; $5f16: $7e
	nop                                              ; $5f17: $00
	call nz, $9938                                   ; $5f18: $c4 $38 $99
	ld h, [hl]                                       ; $5f1b: $66
	ld l, [hl]                                       ; $5f1c: $6e
	jp z, $bd9a                                      ; $5f1d: $ca $9a $bd

	ld a, [hl]                                       ; $5f20: $7e
	cp h                                             ; $5f21: $bc
	ld a, a                                          ; $5f22: $7f
	cp h                                             ; $5f23: $bc
	ld [hl], e                                       ; $5f24: $73
	ld hl, sp-$64                                    ; $5f25: $f8 $9c
	ld a, b                                          ; $5f27: $78
	add a                                            ; $5f28: $87
	rra                                              ; $5f29: $1f
	ld a, b                                          ; $5f2a: $78

Call_043_5f2b:
	add b                                            ; $5f2b: $80
	adc d                                            ; $5f2c: $8a
	xor $11                                          ; $5f2d: $ee $11
	or $19                                           ; $5f2f: $f6 $19
	sub $39                                          ; $5f31: $d6 $39
	ld a, [$eafd]                                    ; $5f33: $fa $fd $ea
	dec e                                            ; $5f36: $1d
	halt                                             ; $5f37: $76
	ld sp, hl                                        ; $5f38: $f9
	ld a, a                                          ; $5f39: $7f

jr_043_5f3a:
	ld sp, hl                                        ; $5f3a: $f9
	ld a, e                                          ; $5f3b: $7b
	db $fc                                           ; $5f3c: $fc
	ld [hl], a                                       ; $5f3d: $77
	db $fc                                           ; $5f3e: $fc
	ld [hl], l                                       ; $5f3f: $75
	cp $73                                           ; $5f40: $fe $73
	ld a, c                                          ; $5f42: $79
	ld [hl], b                                       ; $5f43: $70
	sub d                                            ; $5f44: $92
	ld sp, $77ff                                     ; $5f45: $31 $ff $77
	dec d                                            ; $5f48: $15
	inc [hl]                                         ; $5f49: $34
	rlca                                             ; $5f4a: $07
	or h                                             ; $5f4b: $b4
	rlca                                             ; $5f4c: $07
	sub h                                            ; $5f4d: $94
	rla                                              ; $5f4e: $17
	call nz, $c487                                   ; $5f4f: $c4 $87 $c4
	ld [hl], c                                       ; $5f52: $71
	add b                                            ; $5f53: $80
	ld a, [hl]                                       ; $5f54: $7e
	adc $77                                          ; $5f55: $ce $77
	cp $91                                           ; $5f57: $fe $91
	ld l, c                                          ; $5f59: $69
	or $62                                           ; $5f5a: $f6 $62
	db $fd                                           ; $5f5c: $fd
	ld h, l                                          ; $5f5d: $65
	ld a, [$f56a]                                    ; $5f5e: $fa $6a $f5
	ld h, l                                          ; $5f61: $65
	ld a, [$af59]                                    ; $5f62: $fa $59 $af
	sbc c                                            ; $5f65: $99
	ld l, a                                          ; $5f66: $6f
	halt                                             ; $5f67: $76
	ret z                                            ; $5f68: $c8

	ld a, a                                          ; $5f69: $7f
	ld a, [$fc6f]                                    ; $5f6a: $fa $6f $fc
	add b                                            ; $5f6d: $80
	ld h, c                                          ; $5f6e: $61
	sbc [hl]                                         ; $5f6f: $9e
	ld c, c                                          ; $5f70: $49
	or [hl]                                          ; $5f71: $b6
	ld bc, $05fe                                     ; $5f72: $01 $fe $05
	ld a, [$f609]                                    ; $5f75: $fa $09 $f6
	dec d                                            ; $5f78: $15
	ld [$d629], a                                    ; $5f79: $ea $29 $d6
	dec d                                            ; $5f7c: $15
	ld [$fcc8], a                                    ; $5f7d: $ea $c8 $fc
	reti                                             ; $5f80: $d9


	db $ec                                           ; $5f81: $ec
	reti                                             ; $5f82: $d9


	db $ec                                           ; $5f83: $ec
	rst SubAFromDE                                          ; $5f84: $df
	rst SubAFromBC                                          ; $5f85: $e7

Jump_043_5f86:
	reti                                             ; $5f86: $d9


	rst SubAFromBC                                          ; $5f87: $e7
	rst SubAFromDE                                          ; $5f88: $df
	rst AddAOntoHL                                          ; $5f89: $ef
	rst $38                                          ; $5f8a: $ff
	rst $38                                          ; $5f8b: $ff
	rst SubAFromDE                                          ; $5f8c: $df
	sub [hl]                                         ; $5f8d: $96
	ldh [$fc], a                                     ; $5f8e: $e0 $fc
	inc bc                                           ; $5f90: $03
	db $fc                                           ; $5f91: $fc
	inc bc                                           ; $5f92: $03
	ld hl, sp+$07                                    ; $5f93: $f8 $07

Call_043_5f95:
	ld a, c                                          ; $5f95: $79
	add a                                            ; $5f96: $87
	halt                                             ; $5f97: $76
	sbc d                                            ; $5f98: $9a
	sbc d                                            ; $5f99: $9a
	rst $38                                          ; $5f9a: $ff
	ldh a, [$e0]                                     ; $5f9b: $f0 $e0
	rra                                              ; $5f9d: $1f
	nop                                              ; $5f9e: $00
	ld a, e                                          ; $5f9f: $7b
	jr z, jr_043_5f3a                                ; $5fa0: $28 $98

	push bc                                          ; $5fa2: $c5
	rst $38                                          ; $5fa3: $ff
	rst SubAFromDE                                          ; $5fa4: $df
	rst $38                                          ; $5fa5: $ff
	rrca                                             ; $5fa6: $0f
	rst $38                                          ; $5fa7: $ff
	ldh a, [$7a]                                     ; $5fa8: $f0 $7a
	add l                                            ; $5faa: $85
	ld a, a                                          ; $5fab: $7f
	ldh a, [c]                                       ; $5fac: $f2
	sbc l                                            ; $5fad: $9d
	ld a, [de]                                       ; $5fae: $1a
	db $f4                                           ; $5faf: $f4
	halt                                             ; $5fb0: $76
	call nz, $da95                                   ; $5fb1: $c4 $95 $da
	db $f4                                           ; $5fb4: $f4
	jp c, $02e4                                      ; $5fb5: $da $e4 $02

	db $fc                                           ; $5fb8: $fc
	cp $38                                           ; $5fb9: $fe $38
	ld [bc], a                                       ; $5fbb: $02
	db $fc                                           ; $5fbc: $fc
	halt                                             ; $5fbd: $76
	adc $6e                                          ; $5fbe: $ce $6e
	call z, $e876                                    ; $5fc0: $cc $76 $e8
	ld a, a                                          ; $5fc3: $7f
	cp $84                                           ; $5fc4: $fe $84
	ld hl, sp+$00                                    ; $5fc6: $f8 $00
	ld sp, hl                                        ; $5fc8: $f9
	nop                                              ; $5fc9: $00
	pop af                                           ; $5fca: $f1
	nop                                              ; $5fcb: $00
	db $e3                                           ; $5fcc: $e3
	nop                                              ; $5fcd: $00
	jp $c700                                         ; $5fce: $c3 $00 $c7


	nop                                              ; $5fd1: $00
	add a                                            ; $5fd2: $87
	nop                                              ; $5fd3: $00
	adc a                                            ; $5fd4: $8f
	nop                                              ; $5fd5: $00
	inc c                                            ; $5fd6: $0c
	inc bc                                           ; $5fd7: $03
	rlca                                             ; $5fd8: $07
	rrca                                             ; $5fd9: $0f
	add hl, de                                       ; $5fda: $19
	ld c, $1b                                        ; $5fdb: $0e $1b
	inc c                                            ; $5fdd: $0c
	daa                                              ; $5fde: $27
	rra                                              ; $5fdf: $1f
	cp a                                             ; $5fe0: $bf
	ld a, c                                          ; $5fe1: $79
	sbc b                                            ; $5fe2: $98
	ld a, [hl]                                       ; $5fe3: $7e
	ld h, $7d                                        ; $5fe4: $26 $7d
	inc [hl]                                         ; $5fe6: $34
	sbc b                                            ; $5fe7: $98
	rst $38                                          ; $5fe8: $ff
	cp $ff                                           ; $5fe9: $fe $ff
	rlca                                             ; $5feb: $07
	sbc l                                            ; $5fec: $9d
	ld [hl], e                                       ; $5fed: $73
	ld a, b                                          ; $5fee: $78
	call c, $7fff                                    ; $5fef: $dc $ff $7f
	or b                                             ; $5ff2: $b0
	sub [hl]                                         ; $5ff3: $96
	ld h, [hl]                                       ; $5ff4: $66
	ld sp, hl                                        ; $5ff5: $f9
	ld h, h                                          ; $5ff6: $64
	ei                                               ; $5ff7: $fb
	ld l, b                                          ; $5ff8: $68
	rst $38                                          ; $5ff9: $ff
	rst AddAOntoHL                                          ; $5ffa: $ef
	rst $38                                          ; $5ffb: $ff
	cp a                                             ; $5ffc: $bf
	sbc $ff                                          ; $5ffd: $de $ff
	ld a, l                                          ; $5fff: $7d
	sub $7f                                          ; $6000: $d6 $7f
	ldh a, [$9e]                                     ; $6002: $f0 $9e
	add b                                            ; $6004: $80
	sbc $ff                                          ; $6005: $de $ff
	ld a, a                                          ; $6007: $7f
	db $fc                                           ; $6008: $fc
	ld l, a                                          ; $6009: $6f
	cp $7f                                           ; $600a: $fe $7f
	ld [$fe7f], sp                                   ; $600c: $08 $7f $fe
	ld a, l                                          ; $600f: $7d
	add h                                            ; $6010: $84
	ld a, a                                          ; $6011: $7f
	cp $9e                                           ; $6012: $fe $9e
	rst SubAFromHL                                          ; $6014: $d7
	ld a, e                                          ; $6015: $7b
	cp $7f                                           ; $6016: $fe $7f
	ld h, [hl]                                       ; $6018: $66
	ld a, a                                          ; $6019: $7f
	cp $86                                           ; $601a: $fe $86
	sbc $e1                                          ; $601c: $de $e1
	db $dd                                           ; $601e: $dd
	db $e3                                           ; $601f: $e3
	add hl, de                                       ; $6020: $19
	nop                                              ; $6021: $00
	cp a                                             ; $6022: $bf
	nop                                              ; $6023: $00
	and b                                            ; $6024: $a0
	rra                                              ; $6025: $1f
	cp a                                             ; $6026: $bf
	ccf                                              ; $6027: $3f
	ld a, a                                          ; $6028: $7f
	ccf                                              ; $6029: $3f
	ld h, b                                          ; $602a: $60
	ccf                                              ; $602b: $3f
	ld b, c                                          ; $602c: $41
	rst $38                                          ; $602d: $ff
	adc a                                            ; $602e: $8f
	rst $38                                          ; $602f: $ff
	rst SubAFromBC                                          ; $6030: $e7
	ld b, e                                          ; $6031: $43
	or [hl]                                          ; $6032: $b6
	ld h, c                                          ; $6033: $61
	ld de, $b46b                                     ; $6034: $11 $6b $b4
	ld a, a                                          ; $6037: $7f
	and a                                            ; $6038: $a7
	sbc c                                            ; $6039: $99
	inc d                                            ; $603a: $14
	rst $38                                          ; $603b: $ff
	ei                                               ; $603c: $fb
	db $fc                                           ; $603d: $fc
	ei                                               ; $603e: $fb
	db $fc                                           ; $603f: $fc
	ld a, e                                          ; $6040: $7b
	rst FarCall                                          ; $6041: $f7
	sbc e                                            ; $6042: $9b
	rst $38                                          ; $6043: $ff
	inc bc                                           ; $6044: $03
	rst $38                                          ; $6045: $ff
	ld b, $7b                                        ; $6046: $06 $7b
	db $fc                                           ; $6048: $fc
	ld a, a                                          ; $6049: $7f
	db $ec                                           ; $604a: $ec
	sub [hl]                                         ; $604b: $96
	xor $1d                                          ; $604c: $ee $1d
	db $ec                                           ; $604e: $ec
	rra                                              ; $604f: $1f
	sbc $3f                                          ; $6050: $de $3f
	rst SubAFromDE                                          ; $6052: $df
	ccf                                              ; $6053: $3f
	ldh [$7b], a                                     ; $6054: $e0 $7b
	db $f4                                           ; $6056: $f4
	ld a, a                                          ; $6057: $7f
	ld a, $7e                                        ; $6058: $3e $7e
	or h                                             ; $605a: $b4
	sbc [hl]                                         ; $605b: $9e
	inc hl                                           ; $605c: $23
	ld a, e                                          ; $605d: $7b
	ld [$667c], a                                    ; $605e: $ea $7c $66
	sbc [hl]                                         ; $6061: $9e
	db $e3                                           ; $6062: $e3
	ld a, e                                          ; $6063: $7b
	jr nc, jr_043_60e5                               ; $6064: $30 $7f

	db $f4                                           ; $6066: $f4
	ld a, a                                          ; $6067: $7f
	ld hl, sp-$21                                    ; $6068: $f8 $df
	rst $38                                          ; $606a: $ff
	ld [hl], b                                       ; $606b: $70
	ld b, d                                          ; $606c: $42
	ld e, e                                          ; $606d: $5b
	cp $76                                           ; $606e: $fe $76
	call z, $fc77                                    ; $6070: $cc $77 $fc
	ld a, [hl]                                       ; $6073: $7e
	ret nz                                           ; $6074: $c0

	sbc l                                            ; $6075: $9d
	ld h, c                                          ; $6076: $61
	cp $77                                           ; $6077: $fe $77
	db $fc                                           ; $6079: $fc
	halt                                             ; $607a: $76
	jp nz, $867d                                     ; $607b: $c2 $7d $86

	ld e, [hl]                                       ; $607e: $5e
	ret nz                                           ; $607f: $c0

	halt                                             ; $6080: $76
	call z, $fc77                                    ; $6081: $cc $77 $fc
	sub a                                            ; $6084: $97
	ld hl, $09da                                     ; $6085: $21 $da $09
	ldh a, [c]                                       ; $6088: $f2
	ld hl, $11d2                                     ; $6089: $21 $d2 $11
	ldh [c], a                                       ; $608c: $e2
	ld [hl], a                                       ; $608d: $77
	ld l, b                                          ; $608e: $68
	ld d, a                                          ; $608f: $57
	cp $70                                           ; $6090: $fe $70
	daa                                              ; $6092: $27
	ld e, e                                          ; $6093: $5b
	cp $86                                           ; $6094: $fe $86
	push de                                          ; $6096: $d5
	ld a, [hl+]                                      ; $6097: $2a
	ld a, [$fd05]                                    ; $6098: $fa $05 $fd
	ld [bc], a                                       ; $609b: $02
	cp $01                                           ; $609c: $fe $01
	db $fd                                           ; $609e: $fd
	ld [bc], a                                       ; $609f: $02
	ld [$d515], a                                    ; $60a0: $ea $15 $d5
	ld a, [hl+]                                      ; $60a3: $2a
	xor d                                            ; $60a4: $aa
	ld d, l                                          ; $60a5: $55
	ld d, d                                          ; $60a6: $52
	xor h                                            ; $60a7: $ac
	and d                                            ; $60a8: $a2
	ld e, h                                          ; $60a9: $5c
	ld d, d                                          ; $60aa: $52
	xor h                                            ; $60ab: $ac
	xor [hl]                                         ; $60ac: $ae
	ld d, h                                          ; $60ad: $54
	ld d, [hl]                                       ; $60ae: $56
	ld l, a                                          ; $60af: $6f
	db $fc                                           ; $60b0: $fc
	adc l                                            ; $60b1: $8d
	ld e, h                                          ; $60b2: $5c
	rra                                              ; $60b3: $1f
	nop                                              ; $60b4: $00
	rra                                              ; $60b5: $1f
	inc bc                                           ; $60b6: $03
	ccf                                              ; $60b7: $3f
	rlca                                             ; $60b8: $07
	ccf                                              ; $60b9: $3f
	rlca                                             ; $60ba: $07
	ld a, l                                          ; $60bb: $7d
	rrca                                             ; $60bc: $0f
	ld a, c                                          ; $60bd: $79
	rra                                              ; $60be: $1f
	ld [hl], a                                       ; $60bf: $77
	rra                                              ; $60c0: $1f
	db $d3                                           ; $60c1: $d3
	inc a                                            ; $60c2: $3c
	adc a                                            ; $60c3: $8f
	ld a, c                                          ; $60c4: $79
	ld b, [hl]                                       ; $60c5: $46
	sbc d                                            ; $60c6: $9a
	ld e, $81                                        ; $60c7: $1e $81
	cp b                                             ; $60c9: $b8
	rlca                                             ; $60ca: $07
	and c                                            ; $60cb: $a1
	ld a, d                                          ; $60cc: $7a
	add [hl]                                         ; $60cd: $86
	sbc d                                            ; $60ce: $9a
	sub l                                            ; $60cf: $95
	db $e3                                           ; $60d0: $e3
	rlca                                             ; $60d1: $07
	rrca                                             ; $60d2: $0f
	ld bc, $567b                                     ; $60d3: $01 $7b $56
	rst SubAFromDE                                          ; $60d6: $df
	rst $38                                          ; $60d7: $ff
	ld a, a                                          ; $60d8: $7f
	cpl                                              ; $60d9: $2f
	ld a, a                                          ; $60da: $7f
	ld b, h                                          ; $60db: $44
	ld a, l                                          ; $60dc: $7d
	inc c                                            ; $60dd: $0c
	ld [hl], a                                       ; $60de: $77
	or $9e                                           ; $60df: $f6 $9e
	rst SubAFromBC                                          ; $60e1: $e7
	sbc $ff                                          ; $60e2: $de $ff
	sbc [hl]                                         ; $60e4: $9e

jr_043_60e5:
	rst JumpTable                                          ; $60e5: $c7
	ld a, e                                          ; $60e6: $7b
	or $7e                                           ; $60e7: $f6 $7e
	ret nz                                           ; $60e9: $c0

	ld a, [hl]                                       ; $60ea: $7e
	db $e4                                           ; $60eb: $e4
	halt                                             ; $60ec: $76
	ld e, h                                          ; $60ed: $5c
	sbc e                                            ; $60ee: $9b
	di                                               ; $60ef: $f3
	rst $38                                          ; $60f0: $ff
	db $fc                                           ; $60f1: $fc
	rst $38                                          ; $60f2: $ff
	ld e, a                                          ; $60f3: $5f
	adc e                                            ; $60f4: $8b
	rst SubAFromDE                                          ; $60f5: $df
	rst $38                                          ; $60f6: $ff
	halt                                             ; $60f7: $76
	call z, $fe77                                    ; $60f8: $cc $77 $fe
	db $dd                                           ; $60fb: $dd
	rst $38                                          ; $60fc: $ff
	ld [hl], a                                       ; $60fd: $77
	ld hl, sp-$62                                    ; $60fe: $f8 $9e
	ld h, e                                          ; $6100: $63
	ld a, e                                          ; $6101: $7b
	cp $9b                                           ; $6102: $fe $9b
	daa                                              ; $6104: $27
	rst $38                                          ; $6105: $ff
	cpl                                              ; $6106: $2f
	ldh a, [$dd]                                     ; $6107: $f0 $dd
	ret nz                                           ; $6109: $c0

	sbc [hl]                                         ; $610a: $9e
	ld b, b                                          ; $610b: $40
	sbc $c0                                          ; $610c: $de $c0
	jp c, $9dff                                      ; $610e: $da $ff $9d

	ld h, b                                          ; $6111: $60
	cp $79                                           ; $6112: $fe $79
	ld h, $fd                                        ; $6114: $26 $fd
	ld [hl], d                                       ; $6116: $72
	add hl, de                                       ; $6117: $19
	ld a, a                                          ; $6118: $7f
	cp [hl]                                          ; $6119: $be
	ld hl, sp-$23                                    ; $611a: $f8 $dd
	rst $38                                          ; $611c: $ff
	ld a, l                                          ; $611d: $7d
	ldh [$7e], a                                     ; $611e: $e0 $7e
	ld l, $57                                        ; $6120: $2e $57
	ldh a, [$6d]                                     ; $6122: $f0 $6d
	ld e, b                                          ; $6124: $58
	ld e, a                                          ; $6125: $5f
	ldh a, [$7f]                                     ; $6126: $f0 $7f
	or e                                             ; $6128: $b3
	sbc h                                            ; $6129: $9c
	ldh a, [$30]                                     ; $612a: $f0 $30
	ldh a, [$fa]                                     ; $612c: $f0 $fa
	sbc l                                            ; $612e: $9d
	inc b                                            ; $612f: $04
	add a                                            ; $6130: $87
	ld a, d                                          ; $6131: $7a
	sub h                                            ; $6132: $94
	sub h                                            ; $6133: $94
	inc e                                            ; $6134: $1c
	rrca                                             ; $6135: $0f
	db $10                                           ; $6136: $10
	rrca                                             ; $6137: $0f
	db $10                                           ; $6138: $10
	ld c, $11                                        ; $6139: $0e $11
	ld c, $11                                        ; $613b: $0e $11
	rrca                                             ; $613d: $0f
	db $10                                           ; $613e: $10
	ld e, h                                          ; $613f: $5c
	ldh a, [c]                                       ; $6140: $f2
	ld a, [hl]                                       ; $6141: $7e
	jr z, jr_043_61c2                                ; $6142: $28 $7e

	ret nz                                           ; $6144: $c0

	ld a, a                                          ; $6145: $7f
	db $fc                                           ; $6146: $fc
	halt                                             ; $6147: $76
	call z, $be7e                                    ; $6148: $cc $7e $be
	ld e, a                                          ; $614b: $5f
	cp $8c                                           ; $614c: $fe $8c
	ld hl, $05c2                                     ; $614e: $21 $c2 $05
	jp nz, $8641                                     ; $6151: $c2 $41 $86

	add hl, bc                                       ; $6154: $09
	add [hl]                                         ; $6155: $86
	ld bc, $118e                                     ; $6156: $01 $8e $11
	adc [hl]                                         ; $6159: $8e
	ld bc, $219e                                     ; $615a: $01 $9e $21
	sbc [hl]                                         ; $615d: $9e
	rst SubAFromDE                                          ; $615e: $df
	ldh [$ea], a                                     ; $615f: $e0 $ea
	jp c, $7fff                                      ; $6161: $da $ff $7f

	ld h, l                                          ; $6164: $65
	ld l, [hl]                                       ; $6165: $6e
	ret nz                                           ; $6166: $c0

	sbc [hl]                                         ; $6167: $9e
	or b                                             ; $6168: $b0
	jp c, Jump_043_7bff                              ; $6169: $da $ff $7b

	sub l                                            ; $616c: $95
	ld a, e                                          ; $616d: $7b
	adc b                                            ; $616e: $88
	sbc l                                            ; $616f: $9d
	ld d, l                                          ; $6170: $55
	xor d                                            ; $6171: $aa
	ld l, a                                          ; $6172: $6f
	ld a, l                                          ; $6173: $7d
	ld l, a                                          ; $6174: $6f
	ldh a, [$98]                                     ; $6175: $f0 $98
	adc a                                            ; $6177: $8f
	ld [hl], b                                       ; $6178: $70
	ld e, [hl]                                       ; $6179: $5e
	xor l                                            ; $617a: $ad
	rrca                                             ; $617b: $0f
	db $fc                                           ; $617c: $fc
	db $fc                                           ; $617d: $fc
	call c, $9ef8                                    ; $617e: $dc $f8 $9e
	jr @+$79                                         ; $6181: $18 $77

	db $fd                                           ; $6183: $fd
	sub [hl]                                         ; $6184: $96
	jr jr_043_61b7                                   ; $6185: $18 $30

	ld hl, sp-$26                                    ; $6187: $f8 $da
	ld hl, $0305                                     ; $6189: $21 $05 $03
	ld bc, $fb06                                     ; $618c: $01 $06 $fb
	ld a, h                                          ; $618f: $7c
	ld l, h                                          ; $6190: $6c
	rst SubAFromDE                                          ; $6191: $df
	ccf                                              ; $6192: $3f
	ld a, a                                          ; $6193: $7f
	cp h                                             ; $6194: $bc
	sbc h                                            ; $6195: $9c
	ld a, b                                          ; $6196: $78
	add b                                            ; $6197: $80
	ret nz                                           ; $6198: $c0

	ld h, a                                          ; $6199: $67
	ld d, d                                          ; $619a: $52
	sbc l                                            ; $619b: $9d
	nop                                              ; $619c: $00
	db $fc                                           ; $619d: $fc
	ld e, a                                          ; $619e: $5f
	ld b, l                                          ; $619f: $45
	ld [hl], e                                       ; $61a0: $73
	ldh a, [$9e]                                     ; $61a1: $f0 $9e
	rrca                                             ; $61a3: $0f
	ld h, a                                          ; $61a4: $67
	ld b, a                                          ; $61a5: $47
	ld l, e                                          ; $61a6: $6b
	ldh a, [rHDMA3]                                  ; $61a7: $f0 $53
	pop hl                                           ; $61a9: $e1

jr_043_61aa:
	ld a, a                                          ; $61aa: $7f
	jp nc, $039e                                     ; $61ab: $d2 $9e $03

	ld h, [hl]                                       ; $61ae: $66
	ret nz                                           ; $61af: $c0

	ld a, a                                          ; $61b0: $7f
	cp $9e                                           ; $61b1: $fe $9e
	pop bc                                           ; $61b3: $c1
	ld [hl], e                                       ; $61b4: $73
	cp $9c                                           ; $61b5: $fe $9c

jr_043_61b7:
	rst GetHLinHL                                          ; $61b7: $cf
	ret nz                                           ; $61b8: $c0

	ret z                                            ; $61b9: $c8

	sbc $cf                                          ; $61ba: $de $cf
	sbc l                                            ; $61bc: $9d
	pop bc                                           ; $61bd: $c1
	adc $dd                                          ; $61be: $ce $dd
	ret nz                                           ; $61c0: $c0

	sbc l                                            ; $61c1: $9d

jr_043_61c2:
	ldh a, [$cf]                                     ; $61c2: $f0 $cf
	ld a, b                                          ; $61c4: $78
	rst FarCall                                          ; $61c5: $f7
	ld a, l                                          ; $61c6: $7d
	jr jr_043_623f                                   ; $61c7: $18 $76

	adc d                                            ; $61c9: $8a
	sbc [hl]                                         ; $61ca: $9e
	inc c                                            ; $61cb: $0c
	ld h, d                                          ; $61cc: $62
	di                                               ; $61cd: $f3
	ld a, e                                          ; $61ce: $7b
	ei                                               ; $61cf: $fb
	sbc [hl]                                         ; $61d0: $9e
	db $fd                                           ; $61d1: $fd
	ld [hl], h                                       ; $61d2: $74
	and $5b                                          ; $61d3: $e6 $5b
	ldh a, [$79]                                     ; $61d5: $f0 $79
	inc a                                            ; $61d7: $3c
	ld d, e                                          ; $61d8: $53
	ldh a, [rPCM34]                                  ; $61d9: $f0 $77
	db $fd                                           ; $61db: $fd
	ld l, a                                          ; $61dc: $6f
	ldh a, [$7f]                                     ; $61dd: $f0 $7f
	cp a                                             ; $61df: $bf
	sbc l                                            ; $61e0: $9d
	jr c, jr_043_61aa                                ; $61e1: $38 $c7

	halt                                             ; $61e3: $76
	and b                                            ; $61e4: $a0
	ld e, a                                          ; $61e5: $5f
	ldh [$7e], a                                     ; $61e6: $e0 $7e
	call z, $f77e                                    ; $61e8: $cc $7e $f7
	sbc e                                            ; $61eb: $9b
	ld e, $21                                        ; $61ec: $1e $21
	rra                                              ; $61ee: $1f
	jr nz, jr_043_6268                               ; $61ef: $20 $77

	cp $7f                                           ; $61f1: $fe $7f
	add sp, -$63                                     ; $61f3: $e8 $9d
	ld a, $ff                                        ; $61f5: $3e $ff
	ld a, d                                          ; $61f7: $7a
	call z, $bb92                                    ; $61f8: $cc $92 $bb
	ld l, b                                          ; $61fb: $68
	rst FarCall                                          ; $61fc: $f7
	ld h, b                                          ; $61fd: $60
	rst $38                                          ; $61fe: $ff
	ld l, b                                          ; $61ff: $68
	or a                                             ; $6200: $b7
	ld l, h                                          ; $6201: $6c
	or e                                             ; $6202: $b3
	ld l, [hl]                                       ; $6203: $6e
	ldh a, [$ec]                                     ; $6204: $f0 $ec
	or b                                             ; $6206: $b0
	ld h, h                                          ; $6207: $64
	ld b, h                                          ; $6208: $44
	sbc l                                            ; $6209: $9d
	ld e, c                                          ; $620a: $59
	cpl                                              ; $620b: $2f
	ld l, a                                          ; $620c: $6f
	cp $7c                                           ; $620d: $fe $7c
	ld b, b                                          ; $620f: $40
	sub [hl]                                         ; $6210: $96
	ld h, l                                          ; $6211: $65
	sbc d                                            ; $6212: $9a
	ld l, c                                          ; $6213: $69
	sub d                                            ; $6214: $92
	ld [hl], c                                       ; $6215: $71
	add d                                            ; $6216: $82
	ld h, c                                          ; $6217: $61
	add d                                            ; $6218: $82
	ld b, c                                          ; $6219: $41
	ld [hl], e                                       ; $621a: $73
	cp $3d                                           ; $621b: $fe $3d
	add b                                            ; $621d: $80
	ld a, [hl]                                       ; $621e: $7e
	ld b, e                                          ; $621f: $43
	adc [hl]                                         ; $6220: $8e
	ei                                               ; $6221: $fb
	inc b                                            ; $6222: $04
	push af                                          ; $6223: $f5
	dec bc                                           ; $6224: $0b
	db $eb                                           ; $6225: $eb
	rla                                              ; $6226: $17
	rst SubAFromHL                                          ; $6227: $d7
	cpl                                              ; $6228: $2f
	cp a                                             ; $6229: $bf
	ld c, a                                          ; $622a: $4f
	xor a                                            ; $622b: $af
	ld e, a                                          ; $622c: $5f
	add e                                            ; $622d: $83
	ld a, h                                          ; $622e: $7c

jr_043_622f:
	cp $01                                           ; $622f: $fe $01
	ld a, [hl]                                       ; $6231: $7e
	sub $ff                                          ; $6232: $d6 $ff
	ld a, [hl]                                       ; $6234: $7e
	adc $9d                                          ; $6235: $ce $9d
	ld a, b                                          ; $6237: $78
	sbc b                                            ; $6238: $98
	ld a, d                                          ; $6239: $7a
	ret z                                            ; $623a: $c8

	ld a, a                                          ; $623b: $7f
	db $fc                                           ; $623c: $fc
	sbc h                                            ; $623d: $9c
	ret c                                            ; $623e: $d8

jr_043_623f:
	rst SubAFromDE                                          ; $623f: $df
	ld hl, sp-$24                                    ; $6240: $f8 $dc
	rst $38                                          ; $6242: $ff
	sbc h                                            ; $6243: $9c
	ld a, a                                          ; $6244: $7f
	db $fd                                           ; $6245: $fd
	ld a, a                                          ; $6246: $7f
	ld h, d                                          ; $6247: $62
	db $f4                                           ; $6248: $f4
	call c, Call_043_7dff                            ; $6249: $dc $ff $7d
	ldh a, [c]                                       ; $624c: $f2
	ld c, a                                          ; $624d: $4f
	ldh a, [$66]                                     ; $624e: $f0 $66
	db $dd                                           ; $6250: $dd
	inc bc                                           ; $6251: $03
	ldh a, [$73]                                     ; $6252: $f0 $73
	ldh a, [$7e]                                     ; $6254: $f0 $7e
	adc $9e                                          ; $6256: $ce $9e
	jp $fe77                                         ; $6258: $c3 $77 $fe


	sbc l                                            ; $625b: $9d
	cp $c7                                           ; $625c: $fe $c7
	ld a, e                                          ; $625e: $7b
	cp $91                                           ; $625f: $fe $91
	rst GetHLinHL                                          ; $6261: $cf
	cp $cf                                           ; $6262: $fe $cf
	rst $38                                          ; $6264: $ff
	rlca                                             ; $6265: $07
	rst $38                                          ; $6266: $ff
	ld b, b                                          ; $6267: $40

jr_043_6268:
	and b                                            ; $6268: $a0
	pop bc                                           ; $6269: $c1
	jr nz, jr_043_622f                               ; $626a: $20 $c3

	ld h, b                                          ; $626c: $60
	ld c, a                                          ; $626d: $4f
	ldh [rPCM12], a                                  ; $626e: $e0 $76
	xor h                                            ; $6270: $ac
	adc d                                            ; $6271: $8a
	sbc a                                            ; $6272: $9f
	ld [bc], a                                       ; $6273: $02
	rra                                              ; $6274: $1f
	rst $38                                          ; $6275: $ff
	inc bc                                           ; $6276: $03
	add a                                            ; $6277: $87
	dec bc                                           ; $6278: $0b
	add a                                            ; $6279: $87
	dec de                                           ; $627a: $1b
	add a                                            ; $627b: $87
	ld a, e                                          ; $627c: $7b
	add a                                            ; $627d: $87
	add a                                            ; $627e: $87
	rst $38                                          ; $627f: $ff
	dec c                                            ; $6280: $0d
	rst $38                                          ; $6281: $ff
	rst $38                                          ; $6282: $ff
	and b                                            ; $6283: $a0
	db $e4                                           ; $6284: $e4
	rst $38                                          ; $6285: $ff
	rst $38                                          ; $6286: $ff
	call c, $9de0                                    ; $6287: $dc $e0 $9d
	rst AddAOntoHL                                          ; $628a: $ef
	ldh a, [$6f]                                     ; $628b: $f0 $6f
	or e                                             ; $628d: $b3
	sbc d                                            ; $628e: $9a
	dec bc                                           ; $628f: $0b
	rst $38                                          ; $6290: $ff
	ei                                               ; $6291: $fb
	rlca                                             ; $6292: $07
	rlca                                             ; $6293: $07
	sbc $03                                          ; $6294: $de $03
	sbc [hl]                                         ; $6296: $9e
	add e                                            ; $6297: $83
	ld a, d                                          ; $6298: $7a
	sbc c                                            ; $6299: $99
	sbc [hl]                                         ; $629a: $9e
	ld a, a                                          ; $629b: $7f
	ld a, e                                          ; $629c: $7b
	ldh a, [$7f]                                     ; $629d: $f0 $7f
	jp hl                                            ; $629f: $e9


	ret c                                            ; $62a0: $d8

	ldh a, [$de]                                     ; $62a1: $f0 $de
	rst $38                                          ; $62a3: $ff
	sbc c                                            ; $62a4: $99
	add b                                            ; $62a5: $80
	ld a, a                                          ; $62a6: $7f
	ld bc, $20ff                                     ; $62a7: $01 $ff $20
	nop                                              ; $62aa: $00
	ld l, e                                          ; $62ab: $6b
	cp $73                                           ; $62ac: $fe $73
	add h                                            ; $62ae: $84
	sbc b                                            ; $62af: $98
	ld a, [$33ff]                                    ; $62b0: $fa $ff $33
	ei                                               ; $62b3: $fb
	inc sp                                           ; $62b4: $33
	ei                                               ; $62b5: $fb
	dec sp                                           ; $62b6: $3b
	ld [hl], e                                       ; $62b7: $73
	ld a, [$fb9e]                                    ; $62b8: $fa $9e $fb
	ld a, b                                          ; $62bb: $78
	add sp, $7e                                      ; $62bc: $e8 $7e
	adc $9e                                          ; $62be: $ce $9e
	add sp, $73                                      ; $62c0: $e8 $73
	cp $9a                                           ; $62c2: $fe $9a
	rst AddAOntoHL                                          ; $62c4: $ef
	or b                                             ; $62c5: $b0
	ldh a, [$bf]                                     ; $62c6: $f0 $bf
	rst $38                                          ; $62c8: $ff
	ld a, e                                          ; $62c9: $7b
	cp $66                                           ; $62ca: $fe $66
	ret z                                            ; $62cc: $c8

	ld a, h                                          ; $62cd: $7c
	inc a                                            ; $62ce: $3c
	sbc h                                            ; $62cf: $9c
	add hl, sp                                       ; $62d0: $39
	rst $38                                          ; $62d1: $ff
	ld sp, hl                                        ; $62d2: $f9
	ld a, e                                          ; $62d3: $7b
	cp $6e                                           ; $62d4: $fe $6e
	jp z, $fe7f                                      ; $62d6: $ca $7f $fe

	sbc h                                            ; $62d9: $9c
	ld a, l                                          ; $62da: $7d
	add e                                            ; $62db: $83
	add e                                            ; $62dc: $83
	call c, Call_043_4aff                            ; $62dd: $dc $ff $4a
	ret nz                                           ; $62e0: $c0

	sbc [hl]                                         ; $62e1: $9e
	ldh [c], a                                       ; $62e2: $e2
	db $dd                                           ; $62e3: $dd
	rra                                              ; $62e4: $1f
	sub h                                            ; $62e5: $94
	dec a                                            ; $62e6: $3d
	ccf                                              ; $62e7: $3f
	ld a, d                                          ; $62e8: $7a
	ccf                                              ; $62e9: $3f
	ld [hl], l                                       ; $62ea: $75
	ccf                                              ; $62eb: $3f
	ld a, [$f47f]                                    ; $62ec: $fa $7f $f4
	ld a, a                                          ; $62ef: $7f
	ld [$7d7b], a                                    ; $62f0: $ea $7b $7d
	rst SubAFromDE                                          ; $62f3: $df
	rst $38                                          ; $62f4: $ff
	adc [hl]                                         ; $62f5: $8e
	ld b, l                                          ; $62f6: $45
	rst $38                                          ; $62f7: $ff
	xor d                                            ; $62f8: $aa
	rst JumpTable                                          ; $62f9: $c7
	ld b, c                                          ; $62fa: $41
	add a                                            ; $62fb: $87
	ret z                                            ; $62fc: $c8

	inc sp                                           ; $62fd: $33
	dec b                                            ; $62fe: $05
	ld a, e                                          ; $62ff: $7b
	xor h                                            ; $6300: $ac
	ld b, e                                          ; $6301: $43
	ldh a, [rIE]                                     ; $6302: $f0 $ff
	db $fc                                           ; $6304: $fc
	ldh a, [c]                                       ; $6305: $f2
	db $f4                                           ; $6306: $f4
	ld a, e                                          ; $6307: $7b
	cp $8a                                           ; $6308: $fe $8a
	ld [hl], l                                       ; $630a: $75
	ldh a, [c]                                       ; $630b: $f2
	db $fc                                           ; $630c: $fc
	ldh a, [c]                                       ; $630d: $f2
	ld [hl], d                                       ; $630e: $72
	rst $38                                          ; $630f: $ff
	or a                                             ; $6310: $b7
	di                                               ; $6311: $f3
	nop                                              ; $6312: $00
	rst $38                                          ; $6313: $ff
	inc l                                            ; $6314: $2c
	ld [bc], a                                       ; $6315: $02
	ld e, h                                          ; $6316: $5c
	ld [bc], a                                       ; $6317: $02
	cp h                                             ; $6318: $bc
	ld [bc], a                                       ; $6319: $02
	ld a, h                                          ; $631a: $7c
	ld [bc], a                                       ; $631b: $02
	db $fd                                           ; $631c: $fd
	ld [bc], a                                       ; $631d: $02
	ld [bc], a                                       ; $631e: $02
	ld [hl], h                                       ; $631f: $74
	call nz, $ff93                                   ; $6320: $c4 $93 $ff
	dec d                                            ; $6323: $15
	inc bc                                           ; $6324: $03
	dec l                                            ; $6325: $2d
	inc bc                                           ; $6326: $03
	ld e, l                                          ; $6327: $5d
	inc bc                                           ; $6328: $03
	cp l                                             ; $6329: $bd
	inc bc                                           ; $632a: $03
	ld a, c                                          ; $632b: $79
	inc bc                                           ; $632c: $03
	inc bc                                           ; $632d: $03
	ld [hl], b                                       ; $632e: $70
	ld b, [hl]                                       ; $632f: $46
	sbc l                                            ; $6330: $9d
	db $fd                                           ; $6331: $fd
	cp $67                                           ; $6332: $fe $67
	cp $7f                                           ; $6334: $fe $7f
	db $f4                                           ; $6336: $f4
	ld e, c                                          ; $6337: $59
	db $f4                                           ; $6338: $f4
	halt                                             ; $6339: $76
	ret                                              ; $633a: $c9


	dec sp                                           ; $633b: $3b
	ldh a, [hDisp0_WY]                                     ; $633c: $f0 $88
	ccf                                              ; $633e: $3f
	ret nz                                           ; $633f: $c0

	inc hl                                           ; $6340: $23
	ret nz                                           ; $6341: $c0

	ccf                                              ; $6342: $3f
	ret nz                                           ; $6343: $c0

	nop                                              ; $6344: $00
	cp $be                                           ; $6345: $fe $be
	ld a, a                                          ; $6347: $7f
	rst $38                                          ; $6348: $ff
	ccf                                              ; $6349: $3f
	ld e, a                                          ; $634a: $5f

jr_043_634b:
	cp a                                             ; $634b: $bf
	xor e                                            ; $634c: $ab
	ld d, a                                          ; $634d: $57
	add hl, sp                                       ; $634e: $39
	ld bc, $40e3                                     ; $634f: $01 $e3 $40
	rst SubAFromBC                                          ; $6352: $e7
	and c                                            ; $6353: $a1
	ld e, $68                                        ; $6354: $1e $68
	ld [hl], a                                       ; $6356: $77
	ld a, d                                          ; $6357: $7a
	ld h, d                                          ; $6358: $62
	sbc d                                            ; $6359: $9a
	ld d, b                                          ; $635a: $50
	ldh a, [$a0]                                     ; $635b: $f0 $a0
	jp Jump_043_7900                                 ; $635d: $c3 $00 $79


	ld de, $ffdd                                     ; $6360: $11 $dd $ff
	sub d                                            ; $6363: $92
	db $fc                                           ; $6364: $fc
	ld a, [$c0fd]                                    ; $6365: $fa $fd $c0
	ccf                                              ; $6368: $3f
	rst SubAFromDE                                          ; $6369: $df
	jr nz, jr_043_634b                               ; $636a: $20 $df

	ccf                                              ; $636c: $3f
	rst SubAFromHL                                          ; $636d: $d7
	ld sp, $f117                                     ; $636e: $31 $17 $f1
	ld [hl], a                                       ; $6371: $77
	or [hl]                                          ; $6372: $b6
	sub e                                            ; $6373: $93
	xor d                                            ; $6374: $aa
	ld d, l                                          ; $6375: $55
	ld [bc], a                                       ; $6376: $02
	db $fc                                           ; $6377: $fc
	ldh a, [c]                                       ; $6378: $f2
	inc c                                            ; $6379: $0c
	ld a, [$aafc]                                    ; $637a: $fa $fc $aa
	inc c                                            ; $637d: $0c
	xor e                                            ; $637e: $ab
	inc c                                            ; $637f: $0c
	ld [hl], a                                       ; $6380: $77
	ldh a, [hDisp1_OBP0]                                     ; $6381: $f0 $93
	and b                                            ; $6383: $a0
	ld e, a                                          ; $6384: $5f
	ld a, [bc]                                       ; $6385: $0a
	nop                                              ; $6386: $00
	dec [hl]                                         ; $6387: $35
	nop                                              ; $6388: $00
	xor [hl]                                         ; $6389: $ae
	ld d, b                                          ; $638a: $50
	ld e, b                                          ; $638b: $58
	and b                                            ; $638c: $a0
	ld l, b                                          ; $638d: $68
	add b                                            ; $638e: $80
	ld a, c                                          ; $638f: $79
	ld b, $de                                        ; $6390: $06 $de
	rst $38                                          ; $6392: $ff
	sub l                                            ; $6393: $95
	and b                                            ; $6394: $a0
	nop                                              ; $6395: $00
	ld a, [bc]                                       ; $6396: $0a
	nop                                              ; $6397: $00
	dec d                                            ; $6398: $15
	nop                                              ; $6399: $00
	ld [hl], b                                       ; $639a: $70
	rrca                                             ; $639b: $0f
	ld h, b                                          ; $639c: $60
	rra                                              ; $639d: $1f
	ld a, b                                          ; $639e: $78
	rst FarCall                                          ; $639f: $f7
	sbc $ff                                          ; $63a0: $de $ff
	sub d                                            ; $63a2: $92
	inc hl                                           ; $63a3: $23
	rra                                              ; $63a4: $1f
	or b                                             ; $63a5: $b0
	rra                                              ; $63a6: $1f
	jr c, @+$21                                      ; $63a7: $38 $1f

	cp h                                             ; $63a9: $bc
	rra                                              ; $63aa: $1f
	inc a                                            ; $63ab: $3c
	rra                                              ; $63ac: $1f
	cp [hl]                                          ; $63ad: $be
	rra                                              ; $63ae: $1f
	ld b, $dd                                        ; $63af: $06 $dd
	rst $38                                          ; $63b1: $ff
	ld [hl], d                                       ; $63b2: $72
	jp z, $fe7f                                      ; $63b3: $ca $7f $fe

	ld a, a                                          ; $63b6: $7f
	db $fd                                           ; $63b7: $fd
	ld a, b                                          ; $63b8: $78
	ld a, b                                          ; $63b9: $78
	sbc l                                            ; $63ba: $9d
	jr c, jr_043_63bd                                ; $63bb: $38 $00

jr_043_63bd:
	ld [hl], d                                       ; $63bd: $72
	call z, $fe77                                    ; $63be: $cc $77 $fe
	sbc h                                            ; $63c1: $9c
	ei                                               ; $63c2: $fb
	db $fd                                           ; $63c3: $fd
	inc bc                                           ; $63c4: $03
	ld [hl], h                                       ; $63c5: $74
	or l                                             ; $63c6: $b5
	sub $ff                                          ; $63c7: $d6 $ff
	sbc [hl]                                         ; $63c9: $9e
	ld [hl], b                                       ; $63ca: $70
	ld [hl], a                                       ; $63cb: $77
	ld b, [hl]                                       ; $63cc: $46
	ld a, [hl]                                       ; $63cd: $7e
	ret nz                                           ; $63ce: $c0

	sub a                                            ; $63cf: $97
	ldh [c], a                                       ; $63d0: $e2
	db $db                                           ; $63d1: $db
	and $db                                          ; $63d2: $e6 $db
	and $c7                                          ; $63d4: $e6 $c7
	cp $df                                           ; $63d6: $fe $df
	ld a, e                                          ; $63d8: $7b
	cp $9e                                           ; $63d9: $fe $9e
	rra                                              ; $63db: $1f
	ld a, e                                          ; $63dc: $7b
	rra                                              ; $63dd: $1f
	halt                                             ; $63de: $76
	call z, $fc67                                    ; $63df: $cc $67 $fc
	adc h                                            ; $63e2: $8c
	push af                                          ; $63e3: $f5
	ld a, a                                          ; $63e4: $7f
	ld a, [$9dff]                                    ; $63e5: $fa $ff $9d
	ld h, e                                          ; $63e8: $63
	add b                                            ; $63e9: $80
	ld a, a                                          ; $63ea: $7f
	xor l                                            ; $63eb: $ad
	ld b, e                                          ; $63ec: $43
	inc d                                            ; $63ed: $14
	ld l, e                                          ; $63ee: $6b
	ret                                              ; $63ef: $c9


	inc sp                                           ; $63f0: $33
	ld [bc], a                                       ; $63f1: $02
	add a                                            ; $63f2: $87
	add hl, hl                                       ; $63f3: $29
	rst JumpTable                                          ; $63f4: $c7
	add d                                            ; $63f5: $82
	ld a, d                                          ; $63f6: $7a
	inc l                                            ; $63f7: $2c
	sbc c                                            ; $63f8: $99
	sbc d                                            ; $63f9: $9a
	push bc                                          ; $63fa: $c5
	dec d                                            ; $63fb: $15
	jp z, $d48a                                      ; $63fc: $ca $8a $d4

	ld [hl], a                                       ; $63ff: $77
	db $fc                                           ; $6400: $fc
	sbc e                                            ; $6401: $9b
	ld a, [de]                                       ; $6402: $1a
	ret nz                                           ; $6403: $c0

	add b                                            ; $6404: $80
	ret nz                                           ; $6405: $c0

	halt                                             ; $6406: $76
	cp $7d                                           ; $6407: $fe $7d
	ld a, a                                          ; $6409: $7f
	sub l                                            ; $640a: $95
	adc [hl]                                         ; $640b: $8e
	jr nc, jr_043_641b                               ; $640c: $30 $0d

	ld [hl], b                                       ; $640e: $70
	ei                                               ; $640f: $fb
	nop                                              ; $6410: $00
	or $01                                           ; $6411: $f6 $01
	ld a, [bc]                                       ; $6413: $0a
	ld bc, $f077                                     ; $6414: $01 $77 $f0
	sub l                                            ; $6417: $95
	pop hl                                           ; $6418: $e1
	nop                                              ; $6419: $00
	rst AddAOntoHL                                          ; $641a: $ef

jr_043_641b:
	db $10                                           ; $641b: $10
	ld b, c                                          ; $641c: $41
	ld a, $87                                        ; $641d: $3e $87
	ld a, b                                          ; $641f: $78
	inc bc                                           ; $6420: $03
	db $fc                                           ; $6421: $fc
	ld a, e                                          ; $6422: $7b
	adc h                                            ; $6423: $8c
	ld a, e                                          ; $6424: $7b
	ldh a, [hDisp1_SCY]                                     ; $6425: $f0 $90
	push af                                          ; $6427: $f5
	nop                                              ; $6428: $00
	add e                                            ; $6429: $83
	nop                                              ; $642a: $00
	ret nz                                           ; $642b: $c0

	ld bc, $0181                                     ; $642c: $01 $81 $01
	sbc l                                            ; $642f: $9d
	ld bc, $01f5                                     ; $6430: $01 $f5 $01
	nop                                              ; $6433: $00
	rst $38                                          ; $6434: $ff

jr_043_6435:
	rra                                              ; $6435: $1f
	ld l, [hl]                                       ; $6436: $6e
	call z, $ff98                                    ; $6437: $cc $98 $ff
	ld h, l                                          ; $643a: $65
	cp $71                                           ; $643b: $fe $71
	db $ec                                           ; $643d: $ec
	and h                                            ; $643e: $a4
	and [hl]                                         ; $643f: $a6
	ld h, d                                          ; $6440: $62
	cp h                                             ; $6441: $bc
	sub c                                            ; $6442: $91
	rst $38                                          ; $6443: $ff
	inc [hl]                                         ; $6444: $34
	rst $38                                          ; $6445: $ff
	ldh [$73], a                                     ; $6446: $e0 $73
	jr c, jr_043_6435                                ; $6448: $38 $eb

	ld d, b                                          ; $644a: $50
	xor a                                            ; $644b: $af
	xor d                                            ; $644c: $aa
	rst $38                                          ; $644d: $ff
	ld d, l                                          ; $644e: $55
	rst $38                                          ; $644f: $ff
	xor b                                            ; $6450: $a8

jr_043_6451:
	ld h, d                                          ; $6451: $62
	xor b                                            ; $6452: $a8
	sub l                                            ; $6453: $95
	dec d                                            ; $6454: $15
	ld [$ff80], a                                    ; $6455: $ea $80 $ff
	ld b, b                                          ; $6458: $40
	rst $38                                          ; $6459: $ff
	ld a, [bc]                                       ; $645a: $0a
	push af                                          ; $645b: $f5
	dec d                                            ; $645c: $15
	ld [$5965], a                                    ; $645d: $ea $65 $59
	sbc d                                            ; $6460: $9a
	inc d                                            ; $6461: $14
	rst $38                                          ; $6462: $ff
	xor d                                            ; $6463: $aa
	rst $38                                          ; $6464: $ff
	dec d                                            ; $6465: $15
	ld a, e                                          ; $6466: $7b
	ldh [$9c], a                                     ; $6467: $e0 $9c
	ld hl, sp+$07                                    ; $6469: $f8 $07
	rrca                                             ; $646b: $0f
	cp $7f                                           ; $646c: $fe $7f
	ret nc                                           ; $646e: $d0

	ld a, a                                          ; $646f: $7f
	or $7e                                           ; $6470: $f6 $7e
	ld c, b                                          ; $6472: $48
	sbc [hl]                                         ; $6473: $9e
	ld d, b                                          ; $6474: $50
	ld a, e                                          ; $6475: $7b
	ldh a, [$9a]                                     ; $6476: $f0 $9a
	jr z, jr_043_6451                                ; $6478: $28 $d7

	db $fc                                           ; $647a: $fc
	inc bc                                           ; $647b: $03
	ccf                                              ; $647c: $3f
	ld a, e                                          ; $647d: $7b
	ldh [$7f], a                                     ; $647e: $e0 $7f
	jp nz, $e06f                                     ; $6480: $c2 $6f $e0

	ld [hl], a                                       ; $6483: $77
	cp $7f                                           ; $6484: $fe $7f
	xor $7f                                          ; $6486: $ee $7f
	ld h, e                                          ; $6488: $63
	ld a, [hl]                                       ; $6489: $7e
	sbc a                                            ; $648a: $9f
	sbc h                                            ; $648b: $9c
	adc a                                            ; $648c: $8f
	di                                               ; $648d: $f3
	ld d, b                                          ; $648e: $50
	ld [hl], e                                       ; $648f: $73
	xor [hl]                                         ; $6490: $ae
	ld h, c                                          ; $6491: $61
	dec c                                            ; $6492: $0d
	ld l, e                                          ; $6493: $6b
	db $f4                                           ; $6494: $f4
	ld [hl], a                                       ; $6495: $77
	cp $7c                                           ; $6496: $fe $7c
	cp e                                             ; $6498: $bb
	ld a, h                                          ; $6499: $7c
	adc l                                            ; $649a: $8d
	sbc h                                            ; $649b: $9c
	pop hl                                           ; $649c: $e1
	sbc a                                            ; $649d: $9f
	ld a, [bc]                                       ; $649e: $0a
	ld a, e                                          ; $649f: $7b
	jp z, $ec5f                                      ; $64a0: $ca $5f $ec

	ld [hl], a                                       ; $64a3: $77
	cp [hl]                                          ; $64a4: $be
	inc bc                                           ; $64a5: $03
	ldh a, [$9d]                                     ; $64a6: $f0 $9d
	rst $38                                          ; $64a8: $ff
	ld a, [hl+]                                      ; $64a9: $2a
	ld [hl], e                                       ; $64aa: $73
	db $f4                                           ; $64ab: $f4
	sbc [hl]                                         ; $64ac: $9e
	ccf                                              ; $64ad: $3f
	ld a, e                                          ; $64ae: $7b
	jr nc, jr_043_6530                               ; $64af: $30 $7f

	cp $9a                                           ; $64b1: $fe $9a
	xor a                                            ; $64b3: $af
	rst $38                                          ; $64b4: $ff
	ld d, a                                          ; $64b5: $57
	rst $38                                          ; $64b6: $ff
	xor e                                            ; $64b7: $ab
	ld a, e                                          ; $64b8: $7b
	ld h, [hl]                                       ; $64b9: $66
	ld a, e                                          ; $64ba: $7b
	inc d                                            ; $64bb: $14
	ld a, c                                          ; $64bc: $79
	ld l, $9e                                        ; $64bd: $2e $9e
	db $fd                                           ; $64bf: $fd
	ld a, c                                          ; $64c0: $79
	jp z, $9a67                                      ; $64c1: $ca $67 $9a

	ld l, a                                          ; $64c4: $6f
	call nc, $e47f                                   ; $64c5: $d4 $7f $e4
	sbc l                                            ; $64c8: $9d
	ld d, a                                          ; $64c9: $57
	cp $7a                                           ; $64ca: $fe $7a
	add c                                            ; $64cc: $81
	ld a, e                                          ; $64cd: $7b
	cp $95                                           ; $64ce: $fe $95
	ld a, b                                          ; $64d0: $78
	add b                                            ; $64d1: $80
	cp d                                             ; $64d2: $ba
	add a                                            ; $64d3: $87
	call $be03                                       ; $64d4: $cd $03 $be
	ld b, c                                          ; $64d7: $41
	ld d, a                                          ; $64d8: $57
	xor b                                            ; $64d9: $a8
	ld [hl], e                                       ; $64da: $73
	ld [hl], d                                       ; $64db: $72
	sbc l                                            ; $64dc: $9d
	nop                                              ; $64dd: $00
	rlca                                             ; $64de: $07
	ld a, e                                          ; $64df: $7b
	ld c, [hl]                                       ; $64e0: $4e
	sbc e                                            ; $64e1: $9b
	ld d, h                                          ; $64e2: $54
	xor e                                            ; $64e3: $ab
	xor d                                            ; $64e4: $aa
	push de                                          ; $64e5: $d5
	ld a, d                                          ; $64e6: $7a
	cp e                                             ; $64e7: $bb
	ld [hl], e                                       ; $64e8: $73
	ldh a, [$7f]                                     ; $64e9: $f0 $7f
	cp $79                                           ; $64eb: $fe $79
	jp nz, $967c                                     ; $64ed: $c2 $7c $96

	ld a, a                                          ; $64f0: $7f
	xor c                                            ; $64f1: $a9
	sbc [hl]                                         ; $64f2: $9e
	cp $77                                           ; $64f3: $fe $77
	ldh a, [$7f]                                     ; $64f5: $f0 $7f
	ld hl, sp-$66                                    ; $64f7: $f8 $9a
	jp hl                                            ; $64f9: $e9


	ld bc, $01d5                                     ; $64fa: $01 $d5 $01
	ld bc, $b877                                     ; $64fd: $01 $77 $b8
	sbc [hl]                                         ; $6500: $9e
	xor d                                            ; $6501: $aa
	ld [hl], a                                       ; $6502: $77
	ld a, [$7f9a]                                    ; $6503: $fa $9a $7f
	add b                                            ; $6506: $80
	rla                                              ; $6507: $17
	db $e4                                           ; $6508: $e4
	add b                                            ; $6509: $80
	ld a, e                                          ; $650a: $7b
	and d                                            ; $650b: $a2
	ld [hl], a                                       ; $650c: $77
	call z, Call_043_6f7d                            ; $650d: $cc $7d $6f
	halt                                             ; $6510: $76
	sub e                                            ; $6511: $93
	sbc d                                            ; $6512: $9a
	jp hl                                            ; $6513: $e9


	xor e                                            ; $6514: $ab
	dec h                                            ; $6515: $25
	ldh [c], a                                       ; $6516: $e2
	or $7b                                           ; $6517: $f6 $7b
	ld a, d                                          ; $6519: $7a
	ld a, a                                          ; $651a: $7f
	xor $7d                                          ; $651b: $ee $7d
	call nz, $8d77                                   ; $651d: $c4 $77 $8d
	ld c, [hl]                                       ; $6520: $4e
	nop                                              ; $6521: $00
	reti                                             ; $6522: $d9


	ld b, h                                          ; $6523: $44
	sbc l                                            ; $6524: $9d
	ld h, [hl]                                       ; $6525: $66
	ld d, l                                          ; $6526: $55
	jp c, $8c44                                      ; $6527: $da $44 $8c

	ld b, l                                          ; $652a: $45
	ld d, l                                          ; $652b: $55
	ld d, l                                          ; $652c: $55
	ld b, h                                          ; $652d: $44
	ld b, l                                          ; $652e: $45
	ld d, e                                          ; $652f: $53

jr_043_6530:
	dec [hl]                                         ; $6530: $35
	ld h, [hl]                                       ; $6531: $66
	ld h, [hl]                                       ; $6532: $66
	ld [hl], a                                       ; $6533: $77
	ld [hl], l                                       ; $6534: $75
	ld d, l                                          ; $6535: $55
	ld d, e                                          ; $6536: $53
	ld h, a                                          ; $6537: $67
	ld d, l                                          ; $6538: $55
	inc sp                                           ; $6539: $33
	dec [hl]                                         ; $653a: $35
	ld [hl], a                                       ; $653b: $77
	halt                                             ; $653c: $76
	ld a, e                                          ; $653d: $7b
	or $9c                                           ; $653e: $f6 $9c
	inc sp                                           ; $6540: $33
	ld h, a                                          ; $6541: $67
	ld d, e                                          ; $6542: $53
	ld l, a                                          ; $6543: $6f
	or $7f                                           ; $6544: $f6 $7f
	ld sp, hl                                        ; $6546: $f9
	sbc l                                            ; $6547: $9d
	ld h, a                                          ; $6548: $67
	inc sp                                           ; $6549: $33
	ld [hl], a                                       ; $654a: $77
	or $9b                                           ; $654b: $f6 $9b
	ld h, [hl]                                       ; $654d: $66
	ld h, l                                          ; $654e: $65
	ld [hl], e                                       ; $654f: $73
	inc sp                                           ; $6550: $33
	db $dd                                           ; $6551: $dd
	ld h, [hl]                                       ; $6552: $66
	ld a, e                                          ; $6553: $7b
	or $da                                           ; $6554: $f6 $da
	ld h, [hl]                                       ; $6556: $66
	ld a, a                                          ; $6557: $7f
	or $9a                                           ; $6558: $f6 $9a
	ld b, h                                          ; $655a: $44
	ld b, [hl]                                       ; $655b: $46
	ld h, [hl]                                       ; $655c: $66
	ld h, [hl]                                       ; $655d: $66
	ld h, e                                          ; $655e: $63
	sbc $33                                          ; $655f: $de $33
	ld a, a                                          ; $6561: $7f
	or $dc                                           ; $6562: $f6 $dc
	inc sp                                           ; $6564: $33
	sbc l                                            ; $6565: $9d
	scf                                              ; $6566: $37
	ld [hl], e                                       ; $6567: $73
	ld l, a                                          ; $6568: $6f
	or $9e                                           ; $6569: $f6 $9e
	ld [hl], a                                       ; $656b: $77
	rst SubAFromHL                                          ; $656c: $d7
	inc sp                                           ; $656d: $33
	rst SubAFromHL                                          ; $656e: $d7
	adc c                                            ; $656f: $89
	call c, $9c33                                    ; $6570: $dc $33 $9c
	or a                                             ; $6573: $b7
	scf                                              ; $6574: $37
	scf                                              ; $6575: $37
	reti                                             ; $6576: $d9


	rst $38                                          ; $6577: $ff
	jp c, $9efb                                      ; $6578: $da $fb $9e

	ldh a, [$db]                                     ; $657b: $f0 $db
	db $fd                                           ; $657d: $fd
	rst SubAFromDE                                          ; $657e: $df
	db $fc                                           ; $657f: $fc
	sub a                                            ; $6580: $97
	ld d, l                                          ; $6581: $55
	xor d                                            ; $6582: $aa
	ld d, b                                          ; $6583: $50
	and b                                            ; $6584: $a0
	ld e, e                                          ; $6585: $5b
	add b                                            ; $6586: $80
	rst $38                                          ; $6587: $ff
	nop                                              ; $6588: $00
	db $dd                                           ; $6589: $dd
	rst $38                                          ; $658a: $ff
	sub a                                            ; $658b: $97
	db $e4                                           ; $658c: $e4
	rst $38                                          ; $658d: $ff
	nop                                              ; $658e: $00
	nop                                              ; $658f: $00
	ld e, [hl]                                       ; $6590: $5e

jr_043_6591:
	sbc $5e                                          ; $6591: $de $5e
	ld e, [hl]                                       ; $6593: $5e
	sbc $de                                          ; $6594: $de $de
	sbc [hl]                                         ; $6596: $9e
	ld d, $dd                                        ; $6597: $16 $dd
	cp a                                             ; $6599: $bf
	sbc e                                            ; $659a: $9b
	ccf                                              ; $659b: $3f
	cp a                                             ; $659c: $bf
	ccf                                              ; $659d: $3f

Jump_043_659e:
	ccf                                              ; $659e: $3f
	db $db                                           ; $659f: $db
	rst SubAFromBC                                          ; $65a0: $e7
	sbc l                                            ; $65a1: $9d
	push hl                                          ; $65a2: $e5
	ldh [c], a                                       ; $65a3: $e2

jr_043_65a4:
	reti                                             ; $65a4: $d9


	ld a, a                                          ; $65a5: $7f
	db $dd                                           ; $65a6: $dd
	rst $38                                          ; $65a7: $ff
	sbc e                                            ; $65a8: $9b
	push af                                          ; $65a9: $f5
	xor b                                            ; $65aa: $a8
	ld b, b                                          ; $65ab: $40
	and b                                            ; $65ac: $a0
	reti                                             ; $65ad: $d9


	rst $38                                          ; $65ae: $ff
	db $dd                                           ; $65af: $dd
	or e                                             ; $65b0: $b3
	rst SubAFromDE                                          ; $65b1: $df
	inc sp                                           ; $65b2: $33
	rst SubAFromDE                                          ; $65b3: $df
	jr nc, jr_043_6591                               ; $65b4: $30 $db

	db $e4                                           ; $65b6: $e4
	rst SubAFromDE                                          ; $65b7: $df
	rst SubAFromBC                                          ; $65b8: $e7
	sbc $ff                                          ; $65b9: $de $ff
	add b                                            ; $65bb: $80
	db $fd                                           ; $65bc: $fd
	db $ec                                           ; $65bd: $ec
	xor d                                            ; $65be: $aa
	db $f4                                           ; $65bf: $f4
	nop                                              ; $65c0: $00
	sub e                                            ; $65c1: $93
	or e                                             ; $65c2: $b3
	or e                                             ; $65c3: $b3
	sub e                                            ; $65c4: $93
	sbc a                                            ; $65c5: $9f
	push af                                          ; $65c6: $f5
	db $eb                                           ; $65c7: $eb
	rst $38                                          ; $65c8: $ff
	cp $de                                           ; $65c9: $fe $de
	ldh a, [rOBP0]                                   ; $65cb: $f0 $48
	ld b, h                                          ; $65cd: $44
	xor b                                            ; $65ce: $a8
	nop                                              ; $65cf: $00
	nop                                              ; $65d0: $00
	ld [de], a                                       ; $65d1: $12
	inc de                                           ; $65d2: $13
	sbc a                                            ; $65d3: $9f
	db $f4                                           ; $65d4: $f4
	xor e                                            ; $65d5: $ab
	ld d, a                                          ; $65d6: $57
	cp $55                                           ; $65d7: $fe $55
	ret nz                                           ; $65d9: $c0

	rlca                                             ; $65da: $07
	sub [hl]                                         ; $65db: $96
	inc e                                            ; $65dc: $1c
	ldh [rP1], a                                     ; $65dd: $e0 $00
	nop                                              ; $65df: $00
	inc bc                                           ; $65e0: $03
	inc l                                            ; $65e1: $2c
	jr c, jr_043_65a4                                ; $65e2: $38 $c0

	inc bc                                           ; $65e4: $03
	ld a, e                                          ; $65e5: $7b
	rst FarCall                                          ; $65e6: $f7
	sbc h                                            ; $65e7: $9c
	add b                                            ; $65e8: $80
	ld d, e                                          ; $65e9: $53
	ld h, b                                          ; $65ea: $60
	cp $9a                                           ; $65eb: $fe $9a
	ld c, $70                                        ; $65ed: $0e $70
	adc a                                            ; $65ef: $8f
	ld [hl], d                                       ; $65f0: $72
	ld e, $7b                                        ; $65f1: $1e $7b
	ld [$018a], a                                    ; $65f3: $ea $8a $01
	rrca                                             ; $65f6: $0f
	ld a, a                                          ; $65f7: $7f
	rst $38                                          ; $65f8: $ff
	and b                                            ; $65f9: $a0
	ld d, e                                          ; $65fa: $53
	cp b                                             ; $65fb: $b8
	ret nz                                           ; $65fc: $c0

	nop                                              ; $65fd: $00
	nop                                              ; $65fe: $00
	ld [bc], a                                       ; $65ff: $02
	add c                                            ; $6600: $81
	nop                                              ; $6601: $00
	nop                                              ; $6602: $00
	rlca                                             ; $6603: $07
	ccf                                              ; $6604: $3f
	rst $38                                          ; $6605: $ff
	rst $38                                          ; $6606: $ff
	db $fc                                           ; $6607: $fc
	cp $70                                           ; $6608: $fe $70
	db $fd                                           ; $660a: $fd
	sbc e                                            ; $660b: $9b
	add b                                            ; $660c: $80
	ld b, c                                          ; $660d: $41
	add d                                            ; $660e: $82
	rrca                                             ; $660f: $0f
	db $dd                                           ; $6610: $dd
	rst $38                                          ; $6611: $ff
	sbc h                                            ; $6612: $9c
	ld a, a                                          ; $6613: $7f
	ld a, $7d                                        ; $6614: $3e $7d
	ld a, e                                          ; $6616: $7b
	call nz, $9dfe                                   ; $6617: $c4 $fe $9d
	ld b, c                                          ; $661a: $41
	and e                                            ; $661b: $a3
	ld a, e                                          ; $661c: $7b
	db $e4                                           ; $661d: $e4
	sbc $ff                                          ; $661e: $de $ff
	sub d                                            ; $6620: $92
	cp a                                             ; $6621: $bf
	ld e, a                                          ; $6622: $5f
	ld d, h                                          ; $6623: $54
	add sp, $34                                      ; $6624: $e8 $34
	adc b                                            ; $6626: $88
	inc d                                            ; $6627: $14
	jr z, jr_043_6686                                ; $6628: $28 $5c

	ldh [rIE], a                                     ; $662a: $e0 $ff
	rra                                              ; $662c: $1f
	rra                                              ; $662d: $1f
	ld [hl], e                                       ; $662e: $73
	ld h, h                                          ; $662f: $64
	sbc l                                            ; $6630: $9d
	dec hl                                           ; $6631: $2b
	dec [hl]                                         ; $6632: $35
	ld l, a                                          ; $6633: $6f
	cp $d9                                           ; $6634: $fe $d9
	rst $38                                          ; $6636: $ff
	sub a                                            ; $6637: $97
	xor [hl]                                         ; $6638: $ae
	ld d, l                                          ; $6639: $55
	xor [hl]                                         ; $663a: $ae
	ld d, h                                          ; $663b: $54
	xor [hl]                                         ; $663c: $ae
	ld b, h                                          ; $663d: $44
	xor [hl]                                         ; $663e: $ae
	ld b, h                                          ; $663f: $44
	reti                                             ; $6640: $d9


	rst $38                                          ; $6641: $ff
	sbc e                                            ; $6642: $9b
	cp d                                             ; $6643: $ba
	ld de, $1038                                     ; $6644: $11 $38 $10
	ld a, e                                          ; $6647: $7b
	cp $73                                           ; $6648: $fe $73
	db $10                                           ; $664a: $10
	rst SubAFromDE                                          ; $664b: $df
	rst $38                                          ; $664c: $ff
	sub l                                            ; $664d: $95
	ld hl, sp+$07                                    ; $664e: $f8 $07
	xor d                                            ; $6650: $aa
	ld [hl], l                                       ; $6651: $75
	ld a, [hl+]                                      ; $6652: $2a
	ld [hl], c                                       ; $6653: $71
	ld [hl+], a                                      ; $6654: $22
	jr nz, jr_043_6657                               ; $6655: $20 $00

jr_043_6657:
	ld bc, $ffdd                                     ; $6657: $01 $dd $ff
	sub e                                            ; $665a: $93
	cp $e1                                           ; $665b: $fe $e1
	ld e, $e0                                        ; $665d: $1e $e0
	db $eb                                           ; $665f: $eb
	ld d, l                                          ; $6660: $55
	db $eb                                           ; $6661: $eb
	ld b, b                                          ; $6662: $40
	nop                                              ; $6663: $00
	nop                                              ; $6664: $00
	rra                                              ; $6665: $1f
	ldh [$de], a                                     ; $6666: $e0 $de
	rst $38                                          ; $6668: $ff
	sbc l                                            ; $6669: $9d
	ldh [$1f], a                                     ; $666a: $e0 $1f
	ld a, e                                          ; $666c: $7b
	ld l, h                                          ; $666d: $6c
	db $dd                                           ; $666e: $dd
	scf                                              ; $666f: $37
	sbc e                                            ; $6670: $9b
	ccf                                              ; $6671: $3f
	dec a                                            ; $6672: $3d
	ld a, [hl-]                                      ; $6673: $3a
	cp l                                             ; $6674: $bd
	ld h, a                                          ; $6675: $67
	inc bc                                           ; $6676: $03
	sub a                                            ; $6677: $97
	ldh a, [$d3]                                     ; $6678: $f0 $d3
	and e                                            ; $667a: $a3
	ld b, b                                          ; $667b: $40
	and b                                            ; $667c: $a0
	ld b, b                                          ; $667d: $40
	add e                                            ; $667e: $83
	ld [bc], a                                       ; $667f: $02
	jp c, $9cfc                                      ; $6680: $da $fc $9c

	db $fd                                           ; $6683: $fd
	nop                                              ; $6684: $00
	db $fd                                           ; $6685: $fd

jr_043_6686:
	ld a, e                                          ; $6686: $7b
	ld d, c                                          ; $6687: $51
	sbc l                                            ; $6688: $9d
	ld a, e                                          ; $6689: $7b
	rst $38                                          ; $668a: $ff
	ld a, d                                          ; $668b: $7a
	add $fc                                          ; $668c: $c6 $fc
	sub [hl]                                         ; $668e: $96
	rst $38                                          ; $668f: $ff
	ld e, $d6                                        ; $6690: $1e $d6
	ld a, [de]                                       ; $6692: $1a
	ld d, $1a                                        ; $6693: $16 $1a
	call nc, $14db                                   ; $6695: $d4 $db $14
	jp c, Jump_043_7e3f                              ; $6698: $da $3f $7e

	xor h                                            ; $669b: $ac
	sub b                                            ; $669c: $90
	ldh [$fc], a                                     ; $669d: $e0 $fc
	db $fc                                           ; $669f: $fc
	ld a, [$eaf9]                                    ; $66a0: $fa $f9 $ea
	push af                                          ; $66a3: $f5
	ld a, a                                          ; $66a4: $7f
	ld a, a                                          ; $66a5: $7f
	ld h, a                                          ; $66a6: $67
	ld h, a                                          ; $66a7: $67
	ld h, l                                          ; $66a8: $65
	ld h, [hl]                                       ; $66a9: $66
	ld h, l                                          ; $66aa: $65
	ld h, d                                          ; $66ab: $62
	cp $9c                                           ; $66ac: $fe $9c
	ld d, l                                          ; $66ae: $55
	xor e                                            ; $66af: $ab
	ld d, a                                          ; $66b0: $57
	call c, $9dff                                    ; $66b1: $dc $ff $9d
	xor d                                            ; $66b4: $aa

jr_043_66b5:
	ld d, h                                          ; $66b5: $54
	ld a, d                                          ; $66b6: $7a
	add sp, -$21                                     ; $66b7: $e8 $df
	jr nc, @-$1f                                     ; $66b9: $30 $df

	ld [hl], b                                       ; $66bb: $70
	sub a                                            ; $66bc: $97
	scf                                              ; $66bd: $37
	ld [hl], a                                       ; $66be: $77
	ld d, a                                          ; $66bf: $57
	ld d, a                                          ; $66c0: $57
	rst SubAFromBC                                          ; $66c1: $e7
	rst SubAFromBC                                          ; $66c2: $e7
	and a                                            ; $66c3: $a7
	and a                                            ; $66c4: $a7
	ld a, e                                          ; $66c5: $7b
	db $fd                                           ; $66c6: $fd
	sub h                                            ; $66c7: $94
	and a                                            ; $66c8: $a7
	dec b                                            ; $66c9: $05
	ld a, [hl+]                                      ; $66ca: $2a
	nop                                              ; $66cb: $00
	rra                                              ; $66cc: $1f
	rst $38                                          ; $66cd: $ff
	ld a, a                                          ; $66ce: $7f
	db $fd                                           ; $66cf: $fd
	ld a, a                                          ; $66d0: $7f
	ld a, [$73d5]                                    ; $66d1: $fa $d5 $73
	ld l, [hl]                                       ; $66d4: $6e
	sbc h                                            ; $66d5: $9c
	rst $38                                          ; $66d6: $ff
	ld d, l                                          ; $66d7: $55
	and b                                            ; $66d8: $a0
	ld a, e                                          ; $66d9: $7b
	ld b, $7f                                        ; $66da: $06 $7f
	ld sp, hl                                        ; $66dc: $f9
	ld a, a                                          ; $66dd: $7f
	db $d3                                           ; $66de: $d3
	sbc [hl]                                         ; $66df: $9e
	ld e, a                                          ; $66e0: $5f
	db $db                                           ; $66e1: $db
	rst $38                                          ; $66e2: $ff
	sbc c                                            ; $66e3: $99
	ld b, a                                          ; $66e4: $47
	ld a, [hl]                                       ; $66e5: $7e
	push af                                          ; $66e6: $f5
	cp $7f                                           ; $66e7: $fe $7f
	cp a                                             ; $66e9: $bf
	ld a, e                                          ; $66ea: $7b
	ld b, $72                                        ; $66eb: $06 $72
	ldh a, [$df]                                     ; $66ed: $f0 $df
	rst $38                                          ; $66ef: $ff
	sbc c                                            ; $66f0: $99
	db $dd                                           ; $66f1: $dd
	cp d                                             ; $66f2: $ba
	ld a, l                                          ; $66f3: $7d
	xor d                                            ; $66f4: $aa
	push de                                          ; $66f5: $d5
	ld a, [$ffdd]                                    ; $66f6: $fa $dd $ff
	sbc [hl]                                         ; $66f9: $9e
	rst GetHLinHL                                          ; $66fa: $cf
	db $dd                                           ; $66fb: $dd
	rst $38                                          ; $66fc: $ff
	sbc c                                            ; $66fd: $99
	ldh [$50], a                                     ; $66fe: $e0 $50
	xor b                                            ; $6700: $a8
	ld d, l                                          ; $6701: $55
	xor d                                            ; $6702: $aa
	ld c, a                                          ; $6703: $4f
	ld a, e                                          ; $6704: $7b
	ld hl, sp-$24                                    ; $6705: $f8 $dc
	rst $38                                          ; $6707: $ff
	sub h                                            ; $6708: $94
	ldh a, [rP1]                                     ; $6709: $f0 $00
	rra                                              ; $670b: $1f
	ld bc, $4f00                                     ; $670c: $01 $00 $4f
	ld a, [$faf5]                                    ; $670f: $fa $f5 $fa
	nop                                              ; $6712: $00
	nop                                              ; $6713: $00
	ld a, e                                          ; $6714: $7b
	cp l                                             ; $6715: $bd
	sbc h                                            ; $6716: $9c
	push af                                          ; $6717: $f5
	ld a, [bc]                                       ; $6718: $0a
	dec b                                            ; $6719: $05
	ld a, d                                          ; $671a: $7a
	jr jr_043_66b5                                   ; $671b: $18 $98

	db $fd                                           ; $671d: $fd
	xor d                                            ; $671e: $aa
	ld d, l                                          ; $671f: $55
	xor a                                            ; $6720: $af
	db $fd                                           ; $6721: $fd
	ld [bc], a                                       ; $6722: $02
	ld bc, $c073                                     ; $6723: $01 $73 $c0
	sub h                                            ; $6726: $94
	ld a, [$fefd]                                    ; $6727: $fa $fd $fe
	db $fc                                           ; $672a: $fc
	ld d, h                                          ; $672b: $54
	xor h                                            ; $672c: $ac
	ld d, l                                          ; $672d: $55
	db $fd                                           ; $672e: $fd
	ld e, l                                          ; $672f: $5d
	xor h                                            ; $6730: $ac
	ld e, l                                          ; $6731: $5d
	ld [hl], e                                       ; $6732: $73
	sbc e                                            ; $6733: $9b
	sub b                                            ; $6734: $90
	xor a                                            ; $6735: $af
	ld e, [hl]                                       ; $6736: $5e
	xor [hl]                                         ; $6737: $ae
	dec hl                                           ; $6738: $2b
	ccf                                              ; $6739: $3f

jr_043_673a:
	ld [hl], b                                       ; $673a: $70
	rrca                                             ; $673b: $0f
	ld a, a                                          ; $673c: $7f
	ld [hl], b                                       ; $673d: $70
	dec c                                            ; $673e: $0d
	cp [hl]                                          ; $673f: $be
	rst $38                                          ; $6740: $ff
	ldh a, [rIF]                                     ; $6741: $f0 $0f
	ldh a, [$7a]                                     ; $6743: $f0 $7a
	sub h                                            ; $6745: $94
	ld a, a                                          ; $6746: $7f
	sub l                                            ; $6747: $95
	sub [hl]                                         ; $6748: $96
	ret nz                                           ; $6749: $c0

	ccf                                              ; $674a: $3f
	rst $38                                          ; $674b: $ff
	ret nz                                           ; $674c: $c0

	inc bc                                           ; $674d: $03
	db $fc                                           ; $674e: $fc
	nop                                              ; $674f: $00
	ret nz                                           ; $6750: $c0

	ccf                                              ; $6751: $3f
	ld a, e                                          ; $6752: $7b
	jr jr_043_67cf                                   ; $6753: $18 $7a

	ld l, [hl]                                       ; $6755: $6e
	sub [hl]                                         ; $6756: $96
	rlca                                             ; $6757: $07
	rst $38                                          ; $6758: $ff
	db $fc                                           ; $6759: $fc
	inc bc                                           ; $675a: $03
	pop bc                                           ; $675b: $c1
	db $e3                                           ; $675c: $e3
	nop                                              ; $675d: $00
	nop                                              ; $675e: $00
	ld hl, sp-$02                                    ; $675f: $f8 $fe
	sbc [hl]                                         ; $6761: $9e
	ld a, $7a                                        ; $6762: $3e $7a
	ld a, l                                          ; $6764: $7d
	sbc b                                            ; $6765: $98
	cp $e0                                           ; $6766: $fe $e0
	rrca                                             ; $6768: $0f
	pop af                                           ; $6769: $f1
	ret nz                                           ; $676a: $c0

	pop af                                           ; $676b: $f1
	db $fd                                           ; $676c: $fd
	ld l, e                                          ; $676d: $6b
	nop                                              ; $676e: $00
	sbc l                                            ; $676f: $9d
	ldh [c], a                                       ; $6770: $e2
	rst $38                                          ; $6771: $ff
	ld a, e                                          ; $6772: $7b
	ld b, d                                          ; $6773: $42
	adc d                                            ; $6774: $8a
	xor h                                            ; $6775: $ac
	sbc a                                            ; $6776: $9f
	xor a                                            ; $6777: $af
	ld e, a                                          ; $6778: $5f
	ldh [rP1], a                                     ; $6779: $e0 $00
	rra                                              ; $677b: $1f
	ld h, b                                          ; $677c: $60
	ld d, b                                          ; $677d: $50
	jr nz, jr_043_67d0                               ; $677e: $20 $50

	and b                                            ; $6780: $a0
	nop                                              ; $6781: $00
	cp d                                             ; $6782: $ba
	cp b                                             ; $6783: $b8
	cp b                                             ; $6784: $b8
	jr c, jr_043_67b8                                ; $6785: $38 $31

	add hl, sp                                       ; $6787: $39
	jr c, jr_043_673a                                ; $6788: $38 $b0

	ld [hl], a                                       ; $678a: $77

jr_043_678b:
	ld d, d                                          ; $678b: $52
	rst SubAFromDE                                          ; $678c: $df
	ld a, [hl]                                       ; $678d: $7e
	rst SubAFromDE                                          ; $678e: $df
	ld a, a                                          ; $678f: $7f
	sbc l                                            ; $6790: $9d
	ld [bc], a                                       ; $6791: $02
	inc bc                                           ; $6792: $03
	db $dd                                           ; $6793: $dd
	ld [de], a                                       ; $6794: $12
	sbc e                                            ; $6795: $9b
	inc de                                           ; $6796: $13
	ld [hl-], a                                      ; $6797: $32
	db $fd                                           ; $6798: $fd
	db $fd                                           ; $6799: $fd
	call c, $9bed                                    ; $679a: $dc $ed $9b
	call $55aa                                       ; $679d: $cd $aa $55
	xor d                                            ; $67a0: $aa
	halt                                             ; $67a1: $76
	ret                                              ; $67a2: $c9


	ld a, e                                          ; $67a3: $7b

jr_043_67a4:
	add e                                            ; $67a4: $83
	call c, $96ff                                    ; $67a5: $dc $ff $96
	ld bc, $74ba                                     ; $67a8: $01 $ba $74
	cp d                                             ; $67ab: $ba
	inc [hl]                                         ; $67ac: $34
	ld a, [hl-]                                      ; $67ad: $3a
	ld [hl], $f8                                     ; $67ae: $36 $f8
	jr nc, jr_043_678b                               ; $67b0: $30 $d9

	rst SubAFromDE                                          ; $67b2: $df
	sub l                                            ; $67b3: $95
	db $eb                                           ; $67b4: $eb
	rst FarCall                                          ; $67b5: $f7
	db $eb                                           ; $67b6: $eb
	db $e3                                           ; $67b7: $e3

jr_043_67b8:
	db $e3                                           ; $67b8: $e3
	and a                                            ; $67b9: $a7
	and a                                            ; $67ba: $a7
	adc a                                            ; $67bb: $8f
	ld h, h                                          ; $67bc: $64
	ld h, b                                          ; $67bd: $60
	sbc $64                                          ; $67be: $de $64
	sbc $60                                          ; $67c0: $de $60
	cp $9a                                           ; $67c2: $fe $9a
	ld bc, $7f5f                                     ; $67c4: $01 $5f $7f
	rst $38                                          ; $67c7: $ff
	add a                                            ; $67c8: $87
	halt                                             ; $67c9: $76
	db $e3                                           ; $67ca: $e3
	sub a                                            ; $67cb: $97
	and b                                            ; $67cc: $a0
	add b                                            ; $67cd: $80
	nop                                              ; $67ce: $00

jr_043_67cf:
	nop                                              ; $67cf: $00

jr_043_67d0:
	ld d, a                                          ; $67d0: $57
	ld d, a                                          ; $67d1: $57
	sub $d7                                          ; $67d2: $d6 $d7
	ld a, e                                          ; $67d4: $7b
	cp $9c                                           ; $67d5: $fe $9c
	dec d                                            ; $67d7: $15
	and a                                            ; $67d8: $a7
	and a                                            ; $67d9: $a7
	db $db                                           ; $67da: $db
	daa                                              ; $67db: $27
	ret c                                            ; $67dc: $d8

	rst $38                                          ; $67dd: $ff
	sbc b                                            ; $67de: $98
	ld a, a                                          ; $67df: $7f
	rst JumpTable                                          ; $67e0: $c7
	ld a, b                                          ; $67e1: $78

Call_043_67e2:
	rst $38                                          ; $67e2: $ff
	ld a, [hl]                                       ; $67e3: $7e
	cp $3d                                           ; $67e4: $fe $3d
	push de                                          ; $67e6: $d5
	rst $38                                          ; $67e7: $ff
	sbc h                                            ; $67e8: $9c
	ccf                                              ; $67e9: $3f
	rst GetHLinHL                                          ; $67ea: $cf
	di                                               ; $67eb: $f3
	ld [hl], l                                       ; $67ec: $75
	set 2, a                                         ; $67ed: $cb $d7
	rst $38                                          ; $67ef: $ff
	sbc [hl]                                         ; $67f0: $9e
	db $fd                                           ; $67f1: $fd
	ld a, d                                          ; $67f2: $7a
	sbc d                                            ; $67f3: $9a
	sub l                                            ; $67f4: $95
	ld hl, sp-$10                                    ; $67f5: $f8 $f0
	ld hl, sp-$08                                    ; $67f7: $f8 $f8
	ld e, b                                          ; $67f9: $58
	cp b                                             ; $67fa: $b8
	ld e, b                                          ; $67fb: $58
	rst $38                                          ; $67fc: $ff
	rst FarCall                                          ; $67fd: $f7
	ld hl, sp-$24                                    ; $67fe: $f8 $dc
	ldh a, [$9d]                                     ; $6800: $f0 $9d
	db $ed                                           ; $6802: $ed
	ld l, b                                          ; $6803: $68
	db $db                                           ; $6804: $db
	jr nz, jr_043_67a4                               ; $6805: $20 $9d

	ldh a, [$97]                                     ; $6807: $f0 $97
	ei                                               ; $6809: $fb
	add d                                            ; $680a: $82
	or d                                             ; $680b: $b2
	nop                                              ; $680c: $00
	ld [bc], a                                       ; $680d: $02
	ld bc, $080a                                     ; $680e: $01 $0a $08
	dec bc                                           ; $6811: $0b
	ld [$ff0d], sp                                   ; $6812: $08 $0d $ff
	dec c                                            ; $6815: $0d
	ld c, $05                                        ; $6816: $0e $05
	rlca                                             ; $6818: $07
	inc b                                            ; $6819: $04
	inc b                                            ; $681a: $04
	ld b, $0f                                        ; $681b: $06 $0f
	sub l                                            ; $681d: $95
	ld a, [hl+]                                      ; $681e: $2a
	sub a                                            ; $681f: $97
	nop                                              ; $6820: $00
	rst $38                                          ; $6821: $ff
	inc b                                            ; $6822: $04
	ld sp, hl                                        ; $6823: $f9
	ldh a, [rLCDC]                                   ; $6824: $f0 $40
	add b                                            ; $6826: $80
	ld b, b                                          ; $6827: $40
	ld a, e                                          ; $6828: $7b
	ld a, [bc]                                       ; $6829: $0a
	adc a                                            ; $682a: $8f
	xor l                                            ; $682b: $ad
	ld e, l                                          ; $682c: $5d
	xor l                                            ; $682d: $ad
	ld c, h                                          ; $682e: $4c
	xor h                                            ; $682f: $ac
	inc c                                            ; $6830: $0c
	db $ec                                           ; $6831: $ec
	inc c                                            ; $6832: $0c
	ld e, a                                          ; $6833: $5f
	xor a                                            ; $6834: $af
	ld c, a                                          ; $6835: $4f
	xor a                                            ; $6836: $af
	ld c, a                                          ; $6837: $4f
	rst AddAOntoHL                                          ; $6838: $ef
	rrca                                             ; $6839: $0f
	rrca                                             ; $683a: $0f
	ld a, c                                          ; $683b: $79
	call $f76d                                       ; $683c: $cd $6d $f7
	jp c, $9dff                                      ; $683f: $da $ff $9d

	rst GetHLinHL                                          ; $6842: $cf
	nop                                              ; $6843: $00
	db $db                                           ; $6844: $db
	ld bc, $ffd9                                     ; $6845: $01 $d9 $ff
	ld a, [hl]                                       ; $6848: $7e
	or h                                             ; $6849: $b4
	sbc b                                            ; $684a: $98

jr_043_684b:
	rst $38                                          ; $684b: $ff
	jp nz, $d0a1                                     ; $684c: $c2 $a1 $d0

	xor b                                            ; $684f: $a8
	ret nc                                           ; $6850: $d0

	ccf                                              ; $6851: $3f
	ld l, e                                          ; $6852: $6b
	sbc $94                                          ; $6853: $de $94
	nop                                              ; $6855: $00
	cp e                                             ; $6856: $bb
	ldh a, [c]                                       ; $6857: $f2
	or d                                             ; $6858: $b2
	ld d, d                                          ; $6859: $52
	or d                                             ; $685a: $b2
	ld d, [hl]                                       ; $685b: $56
	ld [hl], $ff                                     ; $685c: $36 $ff
	ld a, e                                          ; $685e: $7b
	ei                                               ; $685f: $fb
	call c, $7ffa                                    ; $6860: $dc $fa $7f
	ld c, e                                          ; $6863: $4b
	ld l, a                                          ; $6864: $6f
	rst SubAFromBC                                          ; $6865: $e7
	sbc l                                            ; $6866: $9d
	add a                                            ; $6867: $87
	ld hl, sp+$6e                                    ; $6868: $f8 $6e
	xor l                                            ; $686a: $ad
	sbc h                                            ; $686b: $9c
	cp c                                             ; $686c: $b9
	add hl, sp                                       ; $686d: $39
	inc sp                                           ; $686e: $33

Call_043_686f:
	sbc $3b                                          ; $686f: $de $3b
	sbc e                                            ; $6871: $9b
	add hl, sp                                       ; $6872: $39
	ld sp, $7e7e                                     ; $6873: $31 $7e $7e
	db $dd                                           ; $6876: $dd
	ld a, h                                          ; $6877: $7c
	rst SubAFromDE                                          ; $6878: $df
	ld a, [hl]                                       ; $6879: $7e
	sbc l                                            ; $687a: $9d
	ld [hl], d                                       ; $687b: $72
	ld a, d                                          ; $687c: $7a
	db $dd                                           ; $687d: $dd
	ld a, [$da9b]                                    ; $687e: $fa $9b $da
	sbc $8d                                          ; $6881: $de $8d
	add l                                            ; $6883: $85
	db $dd                                           ; $6884: $dd
	dec b                                            ; $6885: $05
	rst SubAFromDE                                          ; $6886: $df
	dec h                                            ; $6887: $25
	sub h                                            ; $6888: $94
	db $dd                                           ; $6889: $dd
	di                                               ; $688a: $f3
	db $d3                                           ; $688b: $d3
	or e                                             ; $688c: $b3
	rlca                                             ; $688d: $07
	add a                                            ; $688e: $87
	ld c, a                                          ; $688f: $4f
	rst $38                                          ; $6890: $ff
	and e                                            ; $6891: $a3
	ld c, [hl]                                       ; $6892: $4e
	xor a                                            ; $6893: $af
	ld a, d                                          ; $6894: $7a
	add hl, bc                                       ; $6895: $09
	rst SubAFromDE                                          ; $6896: $df
	rst $38                                          ; $6897: $ff
	sub l                                            ; $6898: $95
	jr nc, jr_043_684b                               ; $6899: $30 $b0

	ld [hl-], a                                      ; $689b: $32
	inc [hl]                                         ; $689c: $34
	jr c, jr_043_68d5                                ; $689d: $38 $36

	ld a, [hl-]                                      ; $689f: $3a
	ld [hl], $df                                     ; $68a0: $36 $df
	ld e, a                                          ; $68a2: $5f
	db $db                                           ; $68a3: $db
	rst SubAFromDE                                          ; $68a4: $df
	sub a                                            ; $68a5: $97
	add a                                            ; $68a6: $87
	rst JumpTable                                          ; $68a7: $c7
	rst FarCall                                          ; $68a8: $f7
	call nc, $f4f4                                   ; $68a9: $d4 $f4 $f4
	rst $38                                          ; $68ac: $ff
	rst $38                                          ; $68ad: $ff
	reti                                             ; $68ae: $d9


	ld h, b                                          ; $68af: $60
	sub a                                            ; $68b0: $97
	inc bc                                           ; $68b1: $03
	add e                                            ; $68b2: $83
	nop                                              ; $68b3: $00
	nop                                              ; $68b4: $00
	ld b, b                                          ; $68b5: $40
	ld b, b                                          ; $68b6: $40
	ldh [$e1], a                                     ; $68b7: $e0 $e1
	ld sp, hl                                        ; $68b9: $f9
	sub a                                            ; $68ba: $97
	or $b5                                           ; $68bb: $f6 $b5
	ld [hl], $34                                     ; $68bd: $36 $34
	ld [hl], $14                                     ; $68bf: $36 $14
	ld [de], a                                       ; $68c1: $12
	inc d                                            ; $68c2: $14
	call c, Call_043_7607                            ; $68c3: $dc $07 $76
	ret nz                                           ; $68c6: $c0

	db $db                                           ; $68c7: $db
	ld a, a                                          ; $68c8: $7f
	sub [hl]                                         ; $68c9: $96
	rrca                                             ; $68ca: $0f
	adc l                                            ; $68cb: $8d
	or e                                             ; $68cc: $b3
	add b                                            ; $68cd: $80
	adc b                                            ; $68ce: $88
	add b                                            ; $68cf: $80
	sub b                                            ; $68d0: $90
	add b                                            ; $68d1: $80
	add b                                            ; $68d2: $80
	ld [hl], c                                       ; $68d3: $71
	ld a, e                                          ; $68d4: $7b

jr_043_68d5:
	add e                                            ; $68d5: $83

jr_043_68d6:
	rst $38                                          ; $68d6: $ff
	rst JumpTable                                          ; $68d7: $c7
	db $e3                                           ; $68d8: $e3
	rst $38                                          ; $68d9: $ff
	ld e, a                                          ; $68da: $5f
	db $db                                           ; $68db: $db
	ld a, [hl]                                       ; $68dc: $7e
	ld a, $1b                                        ; $68dd: $3e $1b
	ld bc, $7f02                                     ; $68df: $01 $02 $7f
	sbc a                                            ; $68e2: $9f
	rst AddAOntoHL                                          ; $68e3: $ef
	di                                               ; $68e4: $f3
	ld sp, hl                                        ; $68e5: $f9
	cp h                                             ; $68e6: $bc
	sbc [hl]                                         ; $68e7: $9e
	and $28                                          ; $68e8: $e6 $28
	sub h                                            ; $68ea: $94
	xor b                                            ; $68eb: $a8
	and b                                            ; $68ec: $a0
	and b                                            ; $68ed: $a0
	jr nz, @-$7e                                     ; $68ee: $20 $80

	ldh [$38], a                                     ; $68f0: $e0 $38
	call c, $9d18                                    ; $68f2: $dc $18 $9d
	sbc b                                            ; $68f5: $98
	ld e, b                                          ; $68f6: $58
	db $db                                           ; $68f7: $db

jr_043_68f8:
	ldh a, [$9d]                                     ; $68f8: $f0 $9d
	ld [hl], b                                       ; $68fa: $70
	jr nc, jr_043_68d6                               ; $68fb: $30 $d9

	jr nz, jr_043_68f8                               ; $68fd: $20 $f9

	reti                                             ; $68ff: $d9


	ld [$04d2], sp                                   ; $6900: $08 $d2 $04
	ld sp, hl                                        ; $6903: $f9
	sbc [hl]                                         ; $6904: $9e
	inc b                                            ; $6905: $04
	sbc $0c                                          ; $6906: $de $0c
	db $dd                                           ; $6908: $dd
	ld [$099e], sp                                   ; $6909: $08 $9e $09
	jp c, $9e0f                                      ; $690c: $da $0f $9e

	ld c, $f9                                        ; $690f: $0e $f9
	reti                                             ; $6911: $d9


	rst $38                                          ; $6912: $ff
	db $db                                           ; $6913: $db
	ld bc, $03df                                     ; $6914: $01 $df $03
	jp c, Jump_043_7eff                              ; $6917: $da $ff $7e

	inc c                                            ; $691a: $0c
	sbc b                                            ; $691b: $98
	ret nc                                           ; $691c: $d0

	and c                                            ; $691d: $a1
	ret nz                                           ; $691e: $c0

	and b                                            ; $691f: $a0
	ldh a, [rHDMA4]                                  ; $6920: $f0 $54
	ld [bc], a                                       ; $6922: $02
	db $db                                           ; $6923: $db
	rst $38                                          ; $6924: $ff
	sub l                                            ; $6925: $95
	adc a                                            ; $6926: $8f
	rra                                              ; $6927: $1f
	ld d, a                                          ; $6928: $57
	or a                                             ; $6929: $b7
	ld d, a                                          ; $692a: $57
	cp e                                             ; $692b: $bb
	ld d, c                                          ; $692c: $51
	ccf                                              ; $692d: $3f
	ld d, h                                          ; $692e: $54
	cp h                                             ; $692f: $bc
	sbc $fa                                          ; $6930: $de $fa
	sbc d                                            ; $6932: $9a
	rst $38                                          ; $6933: $ff
	ld sp, hl                                        ; $6934: $f9
	ldh a, [$f8]                                     ; $6935: $f0 $f8
	ld sp, hl                                        ; $6937: $f9
	ld l, h                                          ; $6938: $6c
	ld [$7fdf], a                                    ; $6939: $ea $df $7f
	ld a, d                                          ; $693c: $7a
	adc c                                            ; $693d: $89
	db $dd                                           ; $693e: $dd
	add c                                            ; $693f: $81
	sbc c                                            ; $6940: $99
	add e                                            ; $6941: $83
	jr c, jr_043_6979                                ; $6942: $38 $35

	or l                                             ; $6944: $b5
	cp l                                             ; $6945: $bd
	or l                                             ; $6946: $b5
	sbc $b7                                          ; $6947: $de $b7
	reti                                             ; $6949: $d9


	ld a, a                                          ; $694a: $7f
	rst SubAFromDE                                          ; $694b: $df
	sbc $93                                          ; $694c: $de $93
	sbc [hl]                                         ; $694e: $9e
	adc [hl]                                         ; $694f: $8e
	xor [hl]                                         ; $6950: $ae
	and [hl]                                         ; $6951: $a6
	db $f4                                           ; $6952: $f4
	db $fc                                           ; $6953: $fc
	dec h                                            ; $6954: $25
	dec h                                            ; $6955: $25
	ld h, l                                          ; $6956: $65
	ld [hl], l                                       ; $6957: $75
	ld [hl], l                                       ; $6958: $75
	ld a, l                                          ; $6959: $7d
	ld a, b                                          ; $695a: $78
	dec l                                            ; $695b: $2d
	sbc d                                            ; $695c: $9a
	rst SubAFromDE                                          ; $695d: $df
	sbc a                                            ; $695e: $9f
	rst SubAFromDE                                          ; $695f: $df
	ret z                                            ; $6960: $c8

	and $74                                          ; $6961: $e6 $74
	add $df                                          ; $6963: $c6 $df
	ldh [$9e], a                                     ; $6965: $e0 $9e
	rst FarCall                                          ; $6967: $f7
	sbc $ff                                          ; $6968: $de $ff
	sbc [hl]                                         ; $696a: $9e
	ld a, $dc                                        ; $696b: $3e $dc
	cp [hl]                                          ; $696d: $be
	rst SubAFromDE                                          ; $696e: $df
	ld a, $7e                                        ; $696f: $3e $7e
	ret nz                                           ; $6971: $c0

	db $dd                                           ; $6972: $dd
	ld e, a                                          ; $6973: $5f
	rst SubAFromDE                                          ; $6974: $df
	rst SubAFromDE                                          ; $6975: $df
	ld a, h                                          ; $6976: $7c
	sub a                                            ; $6977: $97
	db $db                                           ; $6978: $db

jr_043_6979:
	cp a                                             ; $6979: $bf
	reti                                             ; $697a: $d9


	ld h, b                                          ; $697b: $60
	rst SubAFromDE                                          ; $697c: $df
	jp hl                                            ; $697d: $e9


	sbc l                                            ; $697e: $9d
	ld sp, hl                                        ; $697f: $f9
	db $fd                                           ; $6980: $fd
	ld [hl], d                                       ; $6981: $72
	ld c, b                                          ; $6982: $48
	ld a, [$90de]                                    ; $6983: $fa $de $90
	sbc d                                            ; $6986: $9a
	sub d                                            ; $6987: $92
	sub e                                            ; $6988: $93
	sub e                                            ; $6989: $93
	sub c                                            ; $698a: $91
	rst SubAFromHL                                          ; $698b: $d7
	sbc $27                                          ; $698c: $de $27
	sbc d                                            ; $698e: $9a
	dec h                                            ; $698f: $25
	inc h                                            ; $6990: $24
	inc h                                            ; $6991: $24
	ld h, $23                                        ; $6992: $26 $23
	call c, $9cff                                    ; $6994: $dc $ff $9c
	rst SubAFromDE                                          ; $6997: $df
	ccf                                              ; $6998: $3f
	cp a                                             ; $6999: $bf
	call c, $9c80                                    ; $699a: $dc $80 $9c
	and b                                            ; $699d: $a0
	ldh [$c0], a                                     ; $699e: $e0 $c0
	sbc $ff                                          ; $69a0: $de $ff
	ld a, c                                          ; $69a2: $79
	adc h                                            ; $69a3: $8c
	sbc l                                            ; $69a4: $9d
	ldh a, [$fe]                                     ; $69a5: $f0 $fe
	ld sp, hl                                        ; $69a7: $f9
	add b                                            ; $69a8: $80
	db $fd                                           ; $69a9: $fd
	di                                               ; $69aa: $f3
	ld [$0a16], a                                    ; $69ab: $ea $16 $0a
	cp $05                                           ; $69ae: $fe $05
	ld [bc], a                                       ; $69b0: $02
	ld h, b                                          ; $69b1: $60
	jr nc, jr_043_69bc                               ; $69b2: $30 $08

	inc b                                            ; $69b4: $04
	ld [bc], a                                       ; $69b5: $02
	ld [bc], a                                       ; $69b6: $02
	ld bc, $3800                                     ; $69b7: $01 $00 $38
	sub b                                            ; $69ba: $90
	ret                                              ; $69bb: $c9


jr_043_69bc:
	and $b0                                          ; $69bc: $e6 $b0
	cp d                                             ; $69be: $ba
	xor a                                            ; $69bf: $af
	and $10                                          ; $69c0: $e6 $10
	jr jr_043_69c4                                   ; $69c2: $18 $00

jr_043_69c4:
	ld bc, $0002                                     ; $69c4: $01 $02 $00
	ld bc, $839e                                     ; $69c7: $01 $9e $83
	call c, $9d20                                    ; $69ca: $dc $20 $9d
	ld h, b                                          ; $69cd: $60
	ldh [$65], a                                     ; $69ce: $e0 $65
	cp c                                             ; $69d0: $b9
	sbc [hl]                                         ; $69d1: $9e
	and b                                            ; $69d2: $a0
	ld b, d                                          ; $69d3: $42
	ret nz                                           ; $69d4: $c0

	sub l                                            ; $69d5: $95
	nop                                              ; $69d6: $00
	ld b, $01                                        ; $69d7: $06 $01
	ld [de], a                                       ; $69d9: $12
	add hl, hl                                       ; $69da: $29
	ld d, d                                          ; $69db: $52
	add hl, hl                                       ; $69dc: $29
	nop                                              ; $69dd: $00
	inc b                                            ; $69de: $04
	nop                                              ; $69df: $00
	call c, Call_043_7e04                            ; $69e0: $dc $04 $7e
	add $96                                          ; $69e3: $c6 $96
	adc b                                            ; $69e5: $88
	add hl, bc                                       ; $69e6: $09
	xor c                                            ; $69e7: $a9
	ld c, c                                          ; $69e8: $49
	xor b                                            ; $69e9: $a8
	ld c, b                                          ; $69ea: $48
	rrca                                             ; $69eb: $0f
	ld c, $0f                                        ; $69ec: $0e $0f
	sbc $0e                                          ; $69ee: $de $0e
	ld h, d                                          ; $69f0: $62
	ret nz                                           ; $69f1: $c0

	sbc [hl]                                         ; $69f2: $9e
	rrca                                             ; $69f3: $0f
	jp c, $7fff                                      ; $69f4: $da $ff $7f

	jp nc, $07dc                                     ; $69f7: $d2 $dc $07

	ld a, a                                          ; $69fa: $7f
	pop af                                           ; $69fb: $f1
	sbc [hl]                                         ; $69fc: $9e
	cp $dd                                           ; $69fd: $fe $dd
	db $fc                                           ; $69ff: $fc
	ld a, [hl]                                       ; $6a00: $7e
	ld [hl], $86                                     ; $6a01: $36 $86
	dec bc                                           ; $6a03: $0b
	ld [hl], h                                       ; $6a04: $74
	jp nz, $32a5                                     ; $6a05: $c2 $a5 $32

	dec h                                            ; $6a08: $25
	add hl, hl                                       ; $6a09: $29
	ld h, b                                          ; $6a0a: $60
	ld b, c                                          ; $6a0b: $41
	rrca                                             ; $6a0c: $0f
	ccf                                              ; $6a0d: $3f
	ld l, a                                          ; $6a0e: $6f
	rst AddAOntoHL                                          ; $6a0f: $ef
	rst $38                                          ; $6a10: $ff
	add $c3                                          ; $6a11: $c6 $c3
	reti                                             ; $6a13: $d9


	ld e, d                                          ; $6a14: $5a
	or d                                             ; $6a15: $b2
	ld h, d                                          ; $6a16: $62
	or a                                             ; $6a17: $b7
	ld [hl], d                                       ; $6a18: $72
	or l                                             ; $6a19: $b5
	ldh a, [c]                                       ; $6a1a: $f2
	ld h, h                                          ; $6a1b: $64
	sbc $f8                                          ; $6a1c: $de $f8
	sbc [hl]                                         ; $6a1e: $9e
	db $ec                                           ; $6a1f: $ec
	sbc $ef                                          ; $6a20: $de $ef
	ld a, a                                          ; $6a22: $7f
	db $10                                           ; $6a23: $10
	add b                                            ; $6a24: $80
	ld a, a                                          ; $6a25: $7f
	ld e, a                                          ; $6a26: $5f
	sbc a                                            ; $6a27: $9f
	sub a                                            ; $6a28: $97
	scf                                              ; $6a29: $37
	scf                                              ; $6a2a: $37
	ld h, a                                          ; $6a2b: $67
	ld h, c                                          ; $6a2c: $61
	db $d3                                           ; $6a2d: $d3
	db $ed                                           ; $6a2e: $ed
	db $eb                                           ; $6a2f: $eb
	db $ed                                           ; $6a30: $ed
	rst AddAOntoHL                                          ; $6a31: $ef
	db $ed                                           ; $6a32: $ed
	rst $38                                          ; $6a33: $ff
	cp a                                             ; $6a34: $bf
	inc bc                                           ; $6a35: $03
	ld d, c                                          ; $6a36: $51
	inc h                                            ; $6a37: $24
	ld a, [bc]                                       ; $6a38: $0a
	ld d, h                                          ; $6a39: $54
	rra                                              ; $6a3a: $1f
	di                                               ; $6a3b: $f3
	ld a, a                                          ; $6a3c: $7f
	rst $38                                          ; $6a3d: $ff
	xor a                                            ; $6a3e: $af
	db $db                                           ; $6a3f: $db
	dec d                                            ; $6a40: $15
	xor e                                            ; $6a41: $ab
	rst $38                                          ; $6a42: $ff
	add sp, -$69                                     ; $6a43: $e8 $97
	rst $38                                          ; $6a45: $ff
	rst SubAFromBC                                          ; $6a46: $e7
	rst GetHLinHL                                          ; $6a47: $cf
	adc a                                            ; $6a48: $8f
	rrca                                             ; $6a49: $0f
	ld c, $fc                                        ; $6a4a: $0e $fc
	ld e, $76                                        ; $6a4c: $1e $76
	ld [hl], h                                       ; $6a4e: $74
	ld a, e                                          ; $6a4f: $7b
	xor a                                            ; $6a50: $af
	adc [hl]                                         ; $6a51: $8e
	ld bc, $f4e0                                     ; $6a52: $01 $e0 $f4
	sub d                                            ; $6a55: $92
	inc d                                            ; $6a56: $14
	add sp, -$30                                     ; $6a57: $e8 $d0
	ld e, a                                          ; $6a59: $5f
	inc h                                            ; $6a5a: $24
	rst $38                                          ; $6a5b: $ff
	db $eb                                           ; $6a5c: $eb
	db $fd                                           ; $6a5d: $fd
	dec de                                           ; $6a5e: $1b
	rla                                              ; $6a5f: $17
	rra                                              ; $6a60: $1f
	rra                                              ; $6a61: $1f
	sbc b                                            ; $6a62: $98

jr_043_6a63:
	call c, $9cbe                                    ; $6a63: $dc $be $9c
	cp $82                                           ; $6a66: $fe $82
	ld sp, $5fdc                                     ; $6a68: $31 $dc $5f
	add [hl]                                         ; $6a6b: $86
	rst $38                                          ; $6a6c: $ff
	add c                                            ; $6a6d: $81
	ld [bc], a                                       ; $6a6e: $02
	cp a                                             ; $6a6f: $bf
	cp a                                             ; $6a70: $bf
	cp e                                             ; $6a71: $bb
	cp c                                             ; $6a72: $b9
	cp b                                             ; $6a73: $b8
	cp b                                             ; $6a74: $b8
	db $fc                                           ; $6a75: $fc
	inc bc                                           ; $6a76: $03
	ld h, b                                          ; $6a77: $60
	ld h, b                                          ; $6a78: $60
	ld h, h                                          ; $6a79: $64
	ld h, [hl]                                       ; $6a7a: $66
	ld h, a                                          ; $6a7b: $67
	ld h, a                                          ; $6a7c: $67
	rst $38                                          ; $6a7d: $ff
	xor e                                            ; $6a7e: $ab
	add d                                            ; $6a7f: $82
	ldh [c], a                                       ; $6a80: $e2
	cp $16                                           ; $6a81: $fe $16
	inc bc                                           ; $6a83: $03
	ld bc, $9efc                                     ; $6a84: $01 $fc $9e
	add sp, $7b                                      ; $6a87: $e8 $7b
	ld [hl], b                                       ; $6a89: $70
	add b                                            ; $6a8a: $80
	rst $38                                          ; $6a8b: $ff
	sub $d0                                          ; $6a8c: $d6 $d0
	call nc, $d5d5                                   ; $6a8e: $d4 $d5 $d5
	db $d3                                           ; $6a91: $d3
	ld d, [hl]                                       ; $6a92: $56
	rla                                              ; $6a93: $17
	ld hl, $2327                                     ; $6a94: $21 $27 $23
	ld [hl+], a                                      ; $6a97: $22
	ld [hl+], a                                      ; $6a98: $22
	ld h, $a1                                        ; $6a99: $26 $a1
	ldh [$df], a                                     ; $6a9b: $e0 $df
	cp a                                             ; $6a9d: $bf
	ld a, a                                          ; $6a9e: $7f
	sbc a                                            ; $6a9f: $9f
	add $bf                                          ; $6aa0: $c6 $bf
	ccf                                              ; $6aa2: $3f
	ld e, b                                          ; $6aa3: $58
	and b                                            ; $6aa4: $a0
	ldh [$f0], a                                     ; $6aa5: $e0 $f0
	ldh [$f8], a                                     ; $6aa7: $e0 $f8
	ld a, b                                          ; $6aa9: $78
	sbc e                                            ; $6aaa: $9b
	ret nc                                           ; $6aab: $d0

	and b                                            ; $6aac: $a0
	rst $38                                          ; $6aad: $ff
	nop                                              ; $6aae: $00
	ld a, b                                          ; $6aaf: $78
	rst FarCall                                          ; $6ab0: $f7
	sbc [hl]                                         ; $6ab1: $9e
	ldh a, [$62]                                     ; $6ab2: $f0 $62
	sub c                                            ; $6ab4: $91
	sbc l                                            ; $6ab5: $9d
	nop                                              ; $6ab6: $00
	ld sp, hl                                        ; $6ab7: $f9
	ld a, c                                          ; $6ab8: $79
	push hl                                          ; $6ab9: $e5
	ld [hl], e                                       ; $6aba: $73
	db $fd                                           ; $6abb: $fd
	ld a, [$6b87]                                    ; $6abc: $fa $87 $6b
	cp a                                             ; $6abf: $bf
	ld a, d                                          ; $6ac0: $7a
	reti                                             ; $6ac1: $d9


	dec hl                                           ; $6ac2: $2b
	dec hl                                           ; $6ac3: $2b
	sbc a                                            ; $6ac4: $9f
	ld de, $2141                                     ; $6ac5: $11 $41 $21
	ld hl, $0913                                     ; $6ac8: $21 $13 $09
	dec bc                                           ; $6acb: $0b
	rrca                                             ; $6acc: $0f
	ld bc, $6020                                     ; $6acd: $01 $20 $60
	ret nc                                           ; $6ad0: $d0

	jr nz, jr_043_6a63                               ; $6ad1: $20 $90

	cp a                                             ; $6ad3: $bf
	rst $38                                          ; $6ad4: $ff
	rst $38                                          ; $6ad5: $ff
	halt                                             ; $6ad6: $76
	add h                                            ; $6ad7: $84
	sbc e                                            ; $6ad8: $9b
	rst AddAOntoHL                                          ; $6ad9: $ef
	ret nz                                           ; $6ada: $c0

	add b                                            ; $6adb: $80
	cp $dd                                           ; $6adc: $fe $dd
	ld [$689c], sp                                   ; $6ade: $08 $9c $68
	ld hl, sp-$08                                    ; $6ae1: $f8 $f8
	halt                                             ; $6ae3: $76
	db $d3                                           ; $6ae4: $d3
	sub d                                            ; $6ae5: $92
	rlca                                             ; $6ae6: $07
	sub a                                            ; $6ae7: $97
	rlca                                             ; $6ae8: $07
	rlca                                             ; $6ae9: $07
	rst $38                                          ; $6aea: $ff
	ld d, d                                          ; $6aeb: $52
	xor c                                            ; $6aec: $a9
	ld d, d                                          ; $6aed: $52
	ld bc, $552a                                     ; $6aee: $01 $2a $55
	ld a, [hl+]                                      ; $6af1: $2a
	dec b                                            ; $6af2: $05
	sbc $04                                          ; $6af3: $de $04
	sub a                                            ; $6af5: $97
	cp $d5                                           ; $6af6: $fe $d5
	xor d                                            ; $6af8: $aa
	push de                                          ; $6af9: $d5
	ld a, [$4989]                                    ; $6afa: $fa $89 $49
	xor c                                            ; $6afd: $a9
	ld [hl], e                                       ; $6afe: $73
	cp $de                                           ; $6aff: $fe $de
	ld c, $9d                                        ; $6b01: $0e $9d
	xor [hl]                                         ; $6b03: $ae
	ld c, [hl]                                       ; $6b04: $4e
	ld a, e                                          ; $6b05: $7b
	cp $ff                                           ; $6b06: $fe $ff
	ld a, [hl]                                       ; $6b08: $7e
	ld d, c                                          ; $6b09: $51
	sbc e                                            ; $6b0a: $9b
	ld c, b                                          ; $6b0b: $48
	ld l, d                                          ; $6b0c: $6a
	ld e, l                                          ; $6b0d: $5d
	ld l, d                                          ; $6b0e: $6a
	ld h, l                                          ; $6b0f: $65
	ld a, [hl]                                       ; $6b10: $7e
	ld a, [hl]                                       ; $6b11: $7e
	ld l, c                                          ; $6b12: $69
	sub h                                            ; $6b13: $94
	inc de                                           ; $6b14: $13
	ld hl, sp-$71                                    ; $6b15: $f8 $8f
	xor h                                            ; $6b17: $ac
	call c, $03ac                                    ; $6b18: $dc $ac $03
	inc de                                           ; $6b1b: $13
	ei                                               ; $6b1c: $fb
	rst $38                                          ; $6b1d: $ff
	db $fc                                           ; $6b1e: $fc
	sbc $f8                                          ; $6b1f: $de $f8
	sub d                                            ; $6b21: $92
	ld c, b                                          ; $6b22: $48
	sbc b                                            ; $6b23: $98
	ld a, e                                          ; $6b24: $7b
	ei                                               ; $6b25: $fb
	ld [hl], c                                       ; $6b26: $71
	add hl, sp                                       ; $6b27: $39
	dec [hl]                                         ; $6b28: $35
	dec sp                                           ; $6b29: $3b
	reti                                             ; $6b2a: $d9


	adc l                                            ; $6b2b: $8d
	rrca                                             ; $6b2c: $0f
	rra                                              ; $6b2d: $1f
	rst $38                                          ; $6b2e: $ff
	sbc $1f                                          ; $6b2f: $de $1f
	sub [hl]                                         ; $6b31: $96
	cp a                                             ; $6b32: $bf
	nop                                              ; $6b33: $00
	nop                                              ; $6b34: $00
	ldh a, [$7f]                                     ; $6b35: $f0 $7f
	ld [$aa5d], sp                                   ; $6b37: $08 $5d $aa
	ld b, b                                          ; $6b3a: $40
	ld [hl], b                                       ; $6b3b: $70
	push de                                          ; $6b3c: $d5
	sbc $ff                                          ; $6b3d: $de $ff
	sub l                                            ; $6b3f: $95
	rlca                                             ; $6b40: $07
	nop                                              ; $6b41: $00
	ld a, a                                          ; $6b42: $7f
	rst $38                                          ; $6b43: $ff
	ld hl, $ab71                                     ; $6b44: $21 $71 $ab
	rlca                                             ; $6b47: $07
	nop                                              ; $6b48: $00
	nop                                              ; $6b49: $00
	ld [hl], e                                       ; $6b4a: $73
	rst AddAOntoHL                                          ; $6b4b: $ef
	add [hl]                                         ; $6b4c: $86
	ld bc, $2810                                     ; $6b4d: $01 $10 $28
	ld [hl-], a                                      ; $6b50: $32
	ld b, [hl]                                       ; $6b51: $46
	db $ec                                           ; $6b52: $ec
	ld hl, sp-$02                                    ; $6b53: $f8 $fe
	sbc $ae                                          ; $6b55: $de $ae
	ld d, [hl]                                       ; $6b57: $56
	xor $fe                                          ; $6b58: $ee $fe
	ld a, [$f9f9]                                    ; $6b5a: $fa $f9 $f9
	ret nz                                           ; $6b5d: $c0

	pop bc                                           ; $6b5e: $c1
	rlca                                             ; $6b5f: $07
	jr nz, jr_043_6b92                               ; $6b60: $20 $30

	ld d, b                                          ; $6b62: $50
	db $d3                                           ; $6b63: $d3
	rst $38                                          ; $6b64: $ff
	add b                                            ; $6b65: $80
	db $fd                                           ; $6b66: $fd
	ld [hl], h                                       ; $6b67: $74
	reti                                             ; $6b68: $d9


	rst SubAFromDE                                          ; $6b69: $df
	ld b, b                                          ; $6b6a: $40
	sub a                                            ; $6b6b: $97
	jr c, jr_043_6b9e                                ; $6b6c: $38 $30

	jr nc, @-$4e                                     ; $6b6e: $30 $b0

	ret nz                                           ; $6b70: $c0

	ldh [rLCDC], a                                   ; $6b71: $e0 $40
	ld b, b                                          ; $6b73: $40
	db $fc                                           ; $6b74: $fc
	add b                                            ; $6b75: $80
	inc de                                           ; $6b76: $13
	inc sp                                           ; $6b77: $33
	ld e, $39                                        ; $6b78: $1e $39
	inc sp                                           ; $6b7a: $33
	sbc $fe                                          ; $6b7b: $de $fe

Jump_043_6b7d:
	ld e, $22                                        ; $6b7d: $1e $22
	ld [bc], a                                       ; $6b7f: $02
	add hl, bc                                       ; $6b80: $09
	ld de, $0712                                     ; $6b81: $11 $12 $07
	inc bc                                           ; $6b84: $03
	inc bc                                           ; $6b85: $03
	dec b                                            ; $6b86: $05
	ld b, d                                          ; $6b87: $42
	ld sp, $4408                                     ; $6b88: $31 $08 $44
	and [hl]                                         ; $6b8b: $a6
	ld c, $3f                                        ; $6b8c: $0e $3f
	ld d, b                                          ; $6b8e: $50
	xor h                                            ; $6b8f: $ac
	cp $fe                                           ; $6b90: $fe $fe

jr_043_6b92:
	cp a                                             ; $6b92: $bf
	ld e, a                                          ; $6b93: $5f
	rst $38                                          ; $6b94: $ff
	add h                                            ; $6b95: $84
	rst $38                                          ; $6b96: $ff
	ld b, l                                          ; $6b97: $45
	and [hl]                                         ; $6b98: $a6
	ld d, [hl]                                       ; $6b99: $56
	xor [hl]                                         ; $6b9a: $ae
	ld e, [hl]                                       ; $6b9b: $5e
	and [hl]                                         ; $6b9c: $a6
	ld c, [hl]                                       ; $6b9d: $4e

jr_043_6b9e:
	ld [hl-], a                                      ; $6b9e: $32
	ld a, [$3b7b]                                    ; $6b9f: $fa $7b $3b
	dec de                                           ; $6ba2: $1b
	dec bc                                           ; $6ba3: $0b
	dec bc                                           ; $6ba4: $0b
	add a                                            ; $6ba5: $87
	rst GetHLinHL                                          ; $6ba6: $cf
	push de                                          ; $6ba7: $d5
	ldh a, [c]                                       ; $6ba8: $f2
	or $77                                           ; $6ba9: $f6 $77
	ld [hl], h                                       ; $6bab: $74
	ld [hl], a                                       ; $6bac: $77
	ld [hl], $37                                     ; $6bad: $36 $37
	ld h, $e4                                        ; $6baf: $26 $e4
	sbc $e0                                          ; $6bb1: $de $e0
	sbc $e7                                          ; $6bb3: $de $e7
	sub d                                            ; $6bb5: $92
	ldh a, [rIF]                                     ; $6bb6: $f0 $0f
	rst GetHLinHL                                          ; $6bb8: $cf
	inc [hl]                                         ; $6bb9: $34
	ld l, b                                          ; $6bba: $68
	call nc, $00a8                                   ; $6bbb: $d4 $a8 $00
	add b                                            ; $6bbe: $80
	sub b                                            ; $6bbf: $90
	rra                                              ; $6bc0: $1f
	rra                                              ; $6bc1: $1f
	ccf                                              ; $6bc2: $3f
	ld [hl], l                                       ; $6bc3: $75
	rst $38                                          ; $6bc4: $ff
	sbc l                                            ; $6bc5: $9d
	rst $38                                          ; $6bc6: $ff
	ld hl, sp+$7b                                    ; $6bc7: $f8 $7b
	ld [de], a                                       ; $6bc9: $12
	sbc l                                            ; $6bca: $9d
	ld [bc], a                                       ; $6bcb: $02
	dec b                                            ; $6bcc: $05
	ld a, e                                          ; $6bcd: $7b
	jr nc, jr_043_6c4b                               ; $6bce: $30 $7b

	ld [de], a                                       ; $6bd0: $12
	sbc l                                            ; $6bd1: $9d
	db $fd                                           ; $6bd2: $fd
	ld a, [$c57a]                                    ; $6bd3: $fa $7a $c5
	sbc e                                            ; $6bd6: $9b
	ld d, h                                          ; $6bd7: $54
	nop                                              ; $6bd8: $00
	inc b                                            ; $6bd9: $04
	adc d                                            ; $6bda: $8a
	ld [hl], a                                       ; $6bdb: $77
	ldh a, [$7e]                                     ; $6bdc: $f0 $7e
	ld [hl-], a                                      ; $6bde: $32
	add b                                            ; $6bdf: $80
	ei                                               ; $6be0: $fb
	ld [hl], l                                       ; $6be1: $75
	ld a, [$ff10]                                    ; $6be2: $fa $10 $ff
	ld [bc], a                                       ; $6be5: $02
	dec d                                            ; $6be6: $15
	ld [bc], a                                       ; $6be7: $02
	ld de, $1122                                     ; $6be8: $11 $22 $11
	ld bc, $ff01                                     ; $6beb: $01 $01 $ff
	db $eb                                           ; $6bee: $eb
	rst $38                                          ; $6bef: $ff
	rst AddAOntoHL                                          ; $6bf0: $ef
	rst SubAFromDE                                          ; $6bf1: $df
	rst AddAOntoHL                                          ; $6bf2: $ef
	and b                                            ; $6bf3: $a0
	ld d, a                                          ; $6bf4: $57
	and a                                            ; $6bf5: $a7
	ld e, a                                          ; $6bf6: $5f
	xor a                                            ; $6bf7: $af
	rra                                              ; $6bf8: $1f
	adc a                                            ; $6bf9: $8f
	rra                                              ; $6bfa: $1f
	rst $38                                          ; $6bfb: $ff
	ld hl, sp-$08                                    ; $6bfc: $f8 $f8
	ldh a, [$7e]                                     ; $6bfe: $f0 $7e
	ld a, [hl]                                       ; $6c00: $7e
	ld a, a                                          ; $6c01: $7f
	cp $77                                           ; $6c02: $fe $77
	ld a, [hl-]                                      ; $6c04: $3a
	sbc c                                            ; $6c05: $99
	rst FarCall                                          ; $6c06: $f7
	cp $ff                                           ; $6c07: $fe $ff
	cp $00                                           ; $6c09: $fe $00
	ld a, a                                          ; $6c0b: $7f
	ld sp, hl                                        ; $6c0c: $f9
	ld [hl], l                                       ; $6c0d: $75

jr_043_6c0e:
	dec l                                            ; $6c0e: $2d
	sbc d                                            ; $6c0f: $9a
	ld a, a                                          ; $6c10: $7f
	cp a                                             ; $6c11: $bf
	nop                                              ; $6c12: $00
	ret nz                                           ; $6c13: $c0

	ccf                                              ; $6c14: $3f
	db $fc                                           ; $6c15: $fc
	rst SubAFromDE                                          ; $6c16: $df
	dec bc                                           ; $6c17: $0b
	sbc [hl]                                         ; $6c18: $9e
	ld bc, $aa7b                                     ; $6c19: $01 $7b $aa
	sbc e                                            ; $6c1c: $9b
	push af                                          ; $6c1d: $f5
	ld a, [$0c0c]                                    ; $6c1e: $fa $0c $0c
	ld a, c                                          ; $6c21: $79
	dec hl                                           ; $6c22: $2b
	sbc e                                            ; $6c23: $9b
	dec b                                            ; $6c24: $05
	ld a, [bc]                                       ; $6c25: $0a
	dec b                                            ; $6c26: $05
	ld e, l                                          ; $6c27: $5d
	ld a, d                                          ; $6c28: $7a
	call nz, $fe77                                   ; $6c29: $c4 $77 $fe
	reti                                             ; $6c2c: $d9


	rst $38                                          ; $6c2d: $ff
	sub [hl]                                         ; $6c2e: $96
	rst SubAFromDE                                          ; $6c2f: $df
	xor a                                            ; $6c30: $af
	rst SubAFromHL                                          ; $6c31: $d7
	xor a                                            ; $6c32: $af
	push de                                          ; $6c33: $d5
	xor l                                            ; $6c34: $ad
	call c, $f8a8                                    ; $6c35: $dc $a8 $f8
	ld [hl], l                                       ; $6c38: $75
	add d                                            ; $6c39: $82
	sbc $f9                                          ; $6c3a: $de $f9
	sub h                                            ; $6c3c: $94
	dec [hl]                                         ; $6c3d: $35
	ccf                                              ; $6c3e: $3f
	or l                                             ; $6c3f: $b5
	cp e                                             ; $6c40: $bb
	push af                                          ; $6c41: $f5
	cp e                                             ; $6c42: $bb
	dec [hl]                                         ; $6c43: $35
	dec sp                                           ; $6c44: $3b
	rra                                              ; $6c45: $1f
	dec de                                           ; $6c46: $1b
	rra                                              ; $6c47: $1f
	ld [hl], d                                       ; $6c48: $72
	ret nz                                           ; $6c49: $c0

	ld a, a                                          ; $6c4a: $7f

jr_043_6c4b:
	adc h                                            ; $6c4b: $8c
	ld l, a                                          ; $6c4c: $6f
	cp $9d                                           ; $6c4d: $fe $9d
	ld e, l                                          ; $6c4f: $5d
	cp d                                             ; $6c50: $ba
	ld l, a                                          ; $6c51: $6f
	cp $9c                                           ; $6c52: $fe $9c
	db $fd                                           ; $6c54: $fd
	cp e                                             ; $6c55: $bb
	db $fd                                           ; $6c56: $fd
	ld a, e                                          ; $6c57: $7b
	ldh [$7d], a                                     ; $6c58: $e0 $7d
	adc c                                            ; $6c5a: $89
	adc [hl]                                         ; $6c5b: $8e
	ld [hl], a                                       ; $6c5c: $77
	rst AddAOntoHL                                          ; $6c5d: $ef
	ld [hl], a                                       ; $6c5e: $77
	rst AddAOntoHL                                          ; $6c5f: $ef
	ld a, a                                          ; $6c60: $7f
	rst AddAOntoHL                                          ; $6c61: $ef
	ld [hl], l                                       ; $6c62: $75
	db $eb                                           ; $6c63: $eb
	jr nc, jr_043_6c0e                               ; $6c64: $30 $a8

	sub a                                            ; $6c66: $97
	ccf                                              ; $6c67: $3f
	ld c, d                                          ; $6c68: $4a
	ld d, l                                          ; $6c69: $55
	ld b, b                                          ; $6c6a: $40
	ld b, b                                          ; $6c6b: $40
	rst GetHLinHL                                          ; $6c6c: $cf
	ld a, d                                          ; $6c6d: $7a
	or b                                             ; $6c6e: $b0
	db $dd                                           ; $6c6f: $dd
	add b                                            ; $6c70: $80
	sbc [hl]                                         ; $6c71: $9e
	ld a, a                                          ; $6c72: $7f
	ld a, e                                          ; $6c73: $7b
	ld [hl], b                                       ; $6c74: $70
	sbc d                                            ; $6c75: $9a
	xor d                                            ; $6c76: $aa
	ld d, l                                          ; $6c77: $55
	nop                                              ; $6c78: $00
	rlca                                             ; $6c79: $07
	add b                                            ; $6c7a: $80
	ld l, e                                          ; $6c7b: $6b
	ld [hl], b                                       ; $6c7c: $70
	sub h                                            ; $6c7d: $94
	jp $fb00                                         ; $6c7e: $c3 $00 $fb


	db $fd                                           ; $6c81: $fd
	xor d                                            ; $6c82: $aa
	ld d, h                                          ; $6c83: $54
	nop                                              ; $6c84: $00
	db $fc                                           ; $6c85: $fc
	nop                                              ; $6c86: $00
	rst $38                                          ; $6c87: $ff
	inc b                                            ; $6c88: $04
	ld a, b                                          ; $6c89: $78
	or d                                             ; $6c8a: $b2
	sbc c                                            ; $6c8b: $99
	nop                                              ; $6c8c: $00
	inc bc                                           ; $6c8d: $03
	call c, $0cf1                                    ; $6c8e: $dc $f1 $0c
	and d                                            ; $6c91: $a2
	ld a, c                                          ; $6c92: $79
	ldh [c], a                                       ; $6c93: $e2
	ld a, h                                          ; $6c94: $7c
	or h                                             ; $6c95: $b4
	sbc h                                            ; $6c96: $9c
	ld c, $f0                                        ; $6c97: $0e $f0
	ld e, h                                          ; $6c99: $5c
	ld a, e                                          ; $6c9a: $7b
	inc d                                            ; $6c9b: $14
	ld a, a                                          ; $6c9c: $7f
	call nc, Call_043_579a                           ; $6c9d: $d4 $9a $57
	rst $38                                          ; $6ca0: $ff
	rst $38                                          ; $6ca1: $ff
	ld d, a                                          ; $6ca2: $57
	xor d                                            ; $6ca3: $aa
	ld h, c                                          ; $6ca4: $61
	rst GetHLinHL                                          ; $6ca5: $cf
	ld a, l                                          ; $6ca6: $7d
	ld b, c                                          ; $6ca7: $41
	sbc e                                            ; $6ca8: $9b
	inc e                                            ; $6ca9: $1c
	push hl                                          ; $6caa: $e5
	ld hl, sp-$01                                    ; $6cab: $f8 $ff
	ld a, e                                          ; $6cad: $7b
	ldh a, [$9d]                                     ; $6cae: $f0 $9d
	di                                               ; $6cb0: $f3
	dec de                                           ; $6cb1: $1b
	ld a, d                                          ; $6cb2: $7a
	ld e, [hl]                                       ; $6cb3: $5e
	ld a, e                                          ; $6cb4: $7b
	ldh a, [hDisp1_WX]                                     ; $6cb5: $f0 $96
	db $fd                                           ; $6cb7: $fd
	ld d, a                                          ; $6cb8: $57
	xor a                                            ; $6cb9: $af
	ld e, a                                          ; $6cba: $5f
	rra                                              ; $6cbb: $1f
	rst GetHLinHL                                          ; $6cbc: $cf
	inc bc                                           ; $6cbd: $03
	rst $38                                          ; $6cbe: $ff
	rst FarCall                                          ; $6cbf: $f7
	sbc $ff                                          ; $6cc0: $de $ff
	sbc b                                            ; $6cc2: $98
	ccf                                              ; $6cc3: $3f
	rlca                                             ; $6cc4: $07
	inc bc                                           ; $6cc5: $03
	ld sp, hl                                        ; $6cc6: $f9
	rst $38                                          ; $6cc7: $ff
	ld a, a                                          ; $6cc8: $7f
	rrca                                             ; $6cc9: $0f
	ld [hl], l                                       ; $6cca: $75
	ld h, d                                          ; $6ccb: $62
	sbc l                                            ; $6ccc: $9d
	inc bc                                           ; $6ccd: $03
	ldh [$78], a                                     ; $6cce: $e0 $78
	ld c, d                                          ; $6cd0: $4a
	db $dd                                           ; $6cd1: $dd
	rst $38                                          ; $6cd2: $ff
	sbc [hl]                                         ; $6cd3: $9e
	db $fd                                           ; $6cd4: $fd
	ld a, c                                          ; $6cd5: $79
	ld e, h                                          ; $6cd6: $5c
	sbc e                                            ; $6cd7: $9b
	ld a, a                                          ; $6cd8: $7f
	rra                                              ; $6cd9: $1f
	rlca                                             ; $6cda: $07
	ldh a, [rPCM34]                                  ; $6cdb: $f0 $77
	rlca                                             ; $6cdd: $07
	ld a, e                                          ; $6cde: $7b
	db $ec                                           ; $6cdf: $ec
	sbc e                                            ; $6ce0: $9b
	ldh [rSC], a                                     ; $6ce1: $e0 $02
	dec b                                            ; $6ce3: $05
	ld [bc], a                                       ; $6ce4: $02
	ld [hl], a                                       ; $6ce5: $77
	ret                                              ; $6ce6: $c9


	ld a, h                                          ; $6ce7: $7c
	jr c, jr_043_6d69                                ; $6ce8: $38 $7f

	ld a, [bc]                                       ; $6cea: $0a
	ld [hl], b                                       ; $6ceb: $70
	and b                                            ; $6cec: $a0
	sbc [hl]                                         ; $6ced: $9e
	ld [hl+], a                                      ; $6cee: $22
	ld [hl], a                                       ; $6cef: $77
	sub h                                            ; $6cf0: $94
	ld a, a                                          ; $6cf1: $7f
	ld [$159d], sp                                   ; $6cf2: $08 $9d $15
	rst SubAFromDE                                          ; $6cf5: $df
	ld a, b                                          ; $6cf6: $78
	ldh a, [$7a]                                     ; $6cf7: $f0 $7a
	ld hl, sp-$6f                                    ; $6cf9: $f8 $91
	ld l, d                                          ; $6cfb: $6a
	rrca                                             ; $6cfc: $0f
	ld e, $8d                                        ; $6cfd: $1e $8d
	ld e, [hl]                                       ; $6cff: $5e
	xor l                                            ; $6d00: $ad
	sbc $ff                                          ; $6d01: $de $ff
	rst $38                                          ; $6d03: $ff
	ldh a, [$e0]                                     ; $6d04: $f0 $e0
	ld [hl], b                                       ; $6d06: $70
	and b                                            ; $6d07: $a0
	ld d, b                                          ; $6d08: $50
	ld a, d                                          ; $6d09: $7a
	ld hl, $ed9d                                     ; $6d0a: $21 $9d $ed
	sbc $77                                          ; $6d0d: $de $77
	cp $9d                                           ; $6d0f: $fe $9d
	db $ec                                           ; $6d11: $ec
	jp c, $97f9                                      ; $6d12: $da $f9 $97

	ld e, a                                          ; $6d15: $5f
	cpl                                              ; $6d16: $2f
	ld e, a                                          ; $6d17: $5f
	rrca                                             ; $6d18: $0f
	ld d, a                                          ; $6d19: $57
	dec bc                                           ; $6d1a: $0b
	rla                                              ; $6d1b: $17
	dec bc                                           ; $6d1c: $0b
	ld sp, hl                                        ; $6d1d: $f9
	ld a, h                                          ; $6d1e: $7c
	ld c, l                                          ; $6d1f: $4d
	db $dd                                           ; $6d20: $dd
	rrca                                             ; $6d21: $0f
	ld a, a                                          ; $6d22: $7f
	add a                                            ; $6d23: $87
	ld l, h                                          ; $6d24: $6c
	db $ed                                           ; $6d25: $ed
	rst $38                                          ; $6d26: $ff
	sbc h                                            ; $6d27: $9c
	db $dd                                           ; $6d28: $dd
	ld a, a                                          ; $6d29: $7f
	inc bc                                           ; $6d2a: $03
	ld l, a                                          ; $6d2b: $6f
	ld d, a                                          ; $6d2c: $57
	jp c, $9bff                                      ; $6d2d: $da $ff $9b

	ret c                                            ; $6d30: $d8

	xor h                                            ; $6d31: $ac
	db $fc                                           ; $6d32: $fc
	jr jr_043_6dae                                   ; $6d33: $18 $79

	ld b, e                                          ; $6d35: $43
	ld a, a                                          ; $6d36: $7f
	ld h, a                                          ; $6d37: $67
	rst SubAFromDE                                          ; $6d38: $df
	ld sp, hl                                        ; $6d39: $f9
	rst SubAFromDE                                          ; $6d3a: $df
	db $fd                                           ; $6d3b: $fd
	sbc $ff                                          ; $6d3c: $de $ff
	ld a, [hl]                                       ; $6d3e: $7e
	add $99                                          ; $6d3f: $c6 $99
	dec [hl]                                         ; $6d41: $35
	ld a, [hl+]                                      ; $6d42: $2a
	cp a                                             ; $6d43: $bf
	and a                                            ; $6d44: $a7
	adc b                                            ; $6d45: $88
	db $f4                                           ; $6d46: $f4
	db $dd                                           ; $6d47: $dd
	rra                                              ; $6d48: $1f
	halt                                             ; $6d49: $76
	jr nz, jr_043_6dc2                               ; $6d4a: $20 $76

	call nz, Call_043_7f9b                           ; $6d4c: $c4 $9b $7f
	ei                                               ; $6d4f: $fb
	rra                                              ; $6d50: $1f
	nop                                              ; $6d51: $00
	halt                                             ; $6d52: $76
	call nz, $d59e                                   ; $6d53: $c4 $9e $d5
	ld a, e                                          ; $6d56: $7b
	ld d, h                                          ; $6d57: $54
	ld a, [hl]                                       ; $6d58: $7e
	add $7f                                          ; $6d59: $c6 $7f
	cp $7c                                           ; $6d5b: $fe $7c
	cp h                                             ; $6d5d: $bc
	ld a, a                                          ; $6d5e: $7f
	ld c, l                                          ; $6d5f: $4d
	ld a, [hl]                                       ; $6d60: $7e
	add $77                                          ; $6d61: $c6 $77
	cp $7f                                           ; $6d63: $fe $7f
	adc $90                                          ; $6d65: $ce $90
	rra                                              ; $6d67: $1f
	ld c, h                                          ; $6d68: $4c

jr_043_6d69:
	ld b, b                                          ; $6d69: $40
	nop                                              ; $6d6a: $00
	ld e, $e1                                        ; $6d6b: $1e $e1
	sbc a                                            ; $6d6d: $9f
	ld a, a                                          ; $6d6e: $7f
	rst SubAFromDE                                          ; $6d6f: $df
	ldh a, [$80]                                     ; $6d70: $f0 $80
	nop                                              ; $6d72: $00
	ld bc, $7f1f                                     ; $6d73: $01 $1f $7f
	ld a, e                                          ; $6d76: $7b
	ld c, [hl]                                       ; $6d77: $4e
	halt                                             ; $6d78: $76
	ld [$4677], a                                    ; $6d79: $ea $77 $46
	ld l, e                                          ; $6d7c: $6b
	sbc h                                            ; $6d7d: $9c
	rlca                                             ; $6d7e: $07
	ldh a, [$7e]                                     ; $6d7f: $f0 $7e
	add hl, de                                       ; $6d81: $19
	ld c, a                                          ; $6d82: $4f
	ldh a, [$7b]                                     ; $6d83: $f0 $7b
	ldh a, [c]                                       ; $6d85: $f2
	ld d, a                                          ; $6d86: $57
	ldh a, [$9d]                                     ; $6d87: $f0 $9d
	pop af                                           ; $6d89: $f1
	cp $4f                                           ; $6d8a: $fe $4f
	ldh a, [$9a]                                     ; $6d8c: $f0 $9a
	inc a                                            ; $6d8e: $3c
	nop                                              ; $6d8f: $00
	inc bc                                           ; $6d90: $03
	cp $0f                                           ; $6d91: $fe $0f
	sbc $ff                                          ; $6d93: $de $ff
	sbc [hl]                                         ; $6d95: $9e
	ret nz                                           ; $6d96: $c0

	ld a, d                                          ; $6d97: $7a
	add sp, $73                                      ; $6d98: $e8 $73
	jp hl                                            ; $6d9a: $e9


	sbc h                                            ; $6d9b: $9c
	ld bc, $03f8                                     ; $6d9c: $01 $f8 $03
	ld l, a                                          ; $6d9f: $6f
	pop hl                                           ; $6da0: $e1
	ld a, h                                          ; $6da1: $7c
	add h                                            ; $6da2: $84
	ld [hl], e                                       ; $6da3: $73
	ld hl, sp+$7f                                    ; $6da4: $f8 $7f
	ret nc                                           ; $6da6: $d0

	ld [hl], a                                       ; $6da7: $77
	ld e, d                                          ; $6da8: $5a
	ld [hl], a                                       ; $6da9: $77
	sbc c                                            ; $6daa: $99
	call c, $9aff                                    ; $6dab: $dc $ff $9a

jr_043_6dae:
	ld [de], a                                       ; $6dae: $12
	dec b                                            ; $6daf: $05
	ldh a, [rDIV]                                    ; $6db0: $f0 $04
	ld a, [$9b7a]                                    ; $6db2: $fa $7a $9b
	sbc e                                            ; $6db5: $9b
	dec c                                            ; $6db6: $0d
	ld [bc], a                                       ; $6db7: $02
	ld bc, $79f8                                     ; $6db8: $01 $f8 $79
	sbc $dd                                          ; $6dbb: $de $dd
	rst $38                                          ; $6dbd: $ff
	sbc d                                            ; $6dbe: $9a
	ld a, a                                          ; $6dbf: $7f
	ccf                                              ; $6dc0: $3f
	ld b, a                                          ; $6dc1: $47

jr_043_6dc2:
	sbc c                                            ; $6dc2: $99
	add [hl]                                         ; $6dc3: $86
	cp $96                                           ; $6dc4: $fe $96
	add b                                            ; $6dc6: $80
	ld b, b                                          ; $6dc7: $40
	jr c, jr_043_6df0                                ; $6dc8: $38 $26

	add hl, sp                                       ; $6dca: $39
	db $f4                                           ; $6dcb: $f4
	ld [$eaf5], a                                    ; $6dcc: $ea $f5 $ea
	ld a, b                                          ; $6dcf: $78
	ld e, b                                          ; $6dd0: $58
	sbc [hl]                                         ; $6dd1: $9e
	ld a, [hl+]                                      ; $6dd2: $2a
	ld h, l                                          ; $6dd3: $65
	add e                                            ; $6dd4: $83
	sbc e                                            ; $6dd5: $9b
	ld b, a                                          ; $6dd6: $47
	dec bc                                           ; $6dd7: $0b
	ld b, a                                          ; $6dd8: $47
	rrca                                             ; $6dd9: $0f
	ld a, d                                          ; $6dda: $7a
	cp h                                             ; $6ddb: $bc
	sbc [hl]                                         ; $6ddc: $9e
	cpl                                              ; $6ddd: $2f
	ld sp, hl                                        ; $6dde: $f9
	sbc d                                            ; $6ddf: $9a
	dec b                                            ; $6de0: $05
	inc bc                                           ; $6de1: $03
	ld bc, $0003                                     ; $6de2: $01 $03 $00
	ld h, [hl]                                       ; $6de5: $66
	jp $80fe                                         ; $6de6: $c3 $fe $80


	and b                                            ; $6de9: $a0
	ld b, b                                          ; $6dea: $40
	jr nz, jr_043_6e3d                               ; $6deb: $20 $50

	xor b                                            ; $6ded: $a8
	ld d, h                                          ; $6dee: $54
	xor b                                            ; $6def: $a8

jr_043_6df0:
	ld d, l                                          ; $6df0: $55
	ld e, a                                          ; $6df1: $5f
	cp a                                             ; $6df2: $bf
	ld e, a                                          ; $6df3: $5f
	xor a                                            ; $6df4: $af
	ld d, a                                          ; $6df5: $57
	dec hl                                           ; $6df6: $2b
	rla                                              ; $6df7: $17
	ld a, [hl+]                                      ; $6df8: $2a
	dec hl                                           ; $6df9: $2b
	ld d, l                                          ; $6dfa: $55
	ld a, [hl+]                                      ; $6dfb: $2a
	ld e, l                                          ; $6dfc: $5d
	xor d                                            ; $6dfd: $aa
	ld e, a                                          ; $6dfe: $5f
	xor e                                            ; $6dff: $ab
	ld d, l                                          ; $6e00: $55
	rst SubAFromHL                                          ; $6e01: $d7
	xor d                                            ; $6e02: $aa
	call nc, Call_043_54a2                           ; $6e03: $d4 $a2 $54
	and b                                            ; $6e06: $a0
	ld d, h                                          ; $6e07: $54
	add [hl]                                         ; $6e08: $86
	xor d                                            ; $6e09: $aa
	db $fd                                           ; $6e0a: $fd
	ret nz                                           ; $6e0b: $c0

	ldh [c], a                                       ; $6e0c: $e2
	ld d, l                                          ; $6e0d: $55
	db $eb                                           ; $6e0e: $eb
	ld d, h                                          ; $6e0f: $54
	ld [$ff5c], a                                    ; $6e10: $ea $5c $ff
	ccf                                              ; $6e13: $3f
	dec e                                            ; $6e14: $1d
	ld a, [bc]                                       ; $6e15: $0a
	inc d                                            ; $6e16: $14
	ld a, [bc]                                       ; $6e17: $0a
	inc d                                            ; $6e18: $14
	ld [bc], a                                       ; $6e19: $02
	rst $38                                          ; $6e1a: $ff
	dec hl                                           ; $6e1b: $2b
	sub l                                            ; $6e1c: $95
	ld c, d                                          ; $6e1d: $4a
	and c                                            ; $6e1e: $a1
	call nc, Call_043_75ea                           ; $6e1f: $d4 $ea $75
	ld [hl], l                                       ; $6e22: $75
	inc l                                            ; $6e23: $2c
	sbc e                                            ; $6e24: $9b
	ld e, a                                          ; $6e25: $5f
	dec hl                                           ; $6e26: $2b
	dec d                                            ; $6e27: $15
	ld a, [bc]                                       ; $6e28: $0a
	sbc $ff                                          ; $6e29: $de $ff
	sbc e                                            ; $6e2b: $9b
	cp [hl]                                          ; $6e2c: $be
	ld d, l                                          ; $6e2d: $55
	xor d                                            ; $6e2e: $aa
	ld d, l                                          ; $6e2f: $55
	ld [hl], a                                       ; $6e30: $77
	ld hl, sp+$03                                    ; $6e31: $f8 $03
	rst $38                                          ; $6e33: $ff
	inc bc                                           ; $6e34: $03
	rst $38                                          ; $6e35: $ff
	inc bc                                           ; $6e36: $03
	rst $38                                          ; $6e37: $ff
	inc bc                                           ; $6e38: $03
	rst $38                                          ; $6e39: $ff
	inc bc                                           ; $6e3a: $03
	rst $38                                          ; $6e3b: $ff
	ld a, l                                          ; $6e3c: $7d

jr_043_6e3d:
	adc e                                            ; $6e3d: $8b
	rst SubAFromDE                                          ; $6e3e: $df
	ei                                               ; $6e3f: $fb
	adc [hl]                                         ; $6e40: $8e
	ldh a, [c]                                       ; $6e41: $f2
	or $f4                                           ; $6e42: $f6 $f4
	db $f4                                           ; $6e44: $f4
	rst $38                                          ; $6e45: $ff
	cp $fc                                           ; $6e46: $fe $fc
	db $fc                                           ; $6e48: $fc
	db $fd                                           ; $6e49: $fd
	ld sp, hl                                        ; $6e4a: $f9
	ei                                               ; $6e4b: $fb
	ei                                               ; $6e4c: $fb
	ld bc, $8040                                     ; $6e4d: $01 $40 $80
	dec d                                            ; $6e50: $15
	ld a, [hl+]                                      ; $6e51: $2a
	ld a, e                                          ; $6e52: $7b
	ccf                                              ; $6e53: $3f
	sbc h                                            ; $6e54: $9c
	ld a, $3f                                        ; $6e55: $3e $3f
	ld a, a                                          ; $6e57: $7f
	ld a, d                                          ; $6e58: $7a
	ret z                                            ; $6e59: $c8

	ld a, a                                          ; $6e5a: $7f
	rst FarCall                                          ; $6e5b: $f7
	sbc d                                            ; $6e5c: $9a
	add h                                            ; $6e5d: $84
	ret nz                                           ; $6e5e: $c0

	jr @+$45                                         ; $6e5f: $18 $43

	xor b                                            ; $6e61: $a8
	ld a, e                                          ; $6e62: $7b
	ldh a, [$9a]                                     ; $6e63: $f0 $9a
	ld a, b                                          ; $6e65: $78
	ccf                                              ; $6e66: $3f
	rst SubAFromBC                                          ; $6e67: $e7
	cp h                                             ; $6e68: $bc
	ld d, a                                          ; $6e69: $57
	ld a, e                                          ; $6e6a: $7b
	ldh a, [$7e]                                     ; $6e6b: $f0 $7e
	xor d                                            ; $6e6d: $aa
	sub c                                            ; $6e6e: $91
	db $10                                           ; $6e6f: $10
	ld [bc], a                                       ; $6e70: $02
	ld [hl], b                                       ; $6e71: $70
	inc c                                            ; $6e72: $0c
	add e                                            ; $6e73: $83
	ld b, b                                          ; $6e74: $40
	nop                                              ; $6e75: $00
	nop                                              ; $6e76: $00
	ldh [$fc], a                                     ; $6e77: $e0 $fc
	adc a                                            ; $6e79: $8f
	di                                               ; $6e7a: $f3
	ld a, h                                          ; $6e7b: $7c
	cp a                                             ; $6e7c: $bf
	ld l, d                                          ; $6e7d: $6a
	xor c                                            ; $6e7e: $a9

jr_043_6e7f:
	sbc [hl]                                         ; $6e7f: $9e
	jr c, jr_043_6e7f                                ; $6e80: $38 $fd

	sbc e                                            ; $6e82: $9b
	add b                                            ; $6e83: $80
	ldh a, [$3e]                                     ; $6e84: $f0 $3e
	rst JumpTable                                          ; $6e86: $c7
	ld a, e                                          ; $6e87: $7b
	db $dd                                           ; $6e88: $dd
	ld a, [hl]                                       ; $6e89: $7e
	adc $9a                                          ; $6e8a: $ce $9a
	ld d, h                                          ; $6e8c: $54
	jr z, jr_043_6ea3                                ; $6e8d: $28 $14

	dec d                                            ; $6e8f: $15
	ld a, [bc]                                       ; $6e90: $0a
	ld a, b                                          ; $6e91: $78
	ld sp, $157d                                     ; $6e92: $31 $7d $15
	sbc c                                            ; $6e95: $99
	add b                                            ; $6e96: $80
	xor d                                            ; $6e97: $aa
	ld d, l                                          ; $6e98: $55
	xor b                                            ; $6e99: $a8
	ld d, d                                          ; $6e9a: $52
	ld c, l                                          ; $6e9b: $4d
	ld a, d                                          ; $6e9c: $7a
	add $7b                                          ; $6e9d: $c6 $7b
	jp hl                                            ; $6e9f: $e9


	add b                                            ; $6ea0: $80
	xor b                                            ; $6ea1: $a8
	db $10                                           ; $6ea2: $10

jr_043_6ea3:
	ld [rRAMG], sp                                   ; $6ea3: $08 $00 $00
	cp $7f                                           ; $6ea6: $fe $7f
	or [hl]                                          ; $6ea8: $b6
	ld e, [hl]                                       ; $6ea9: $5e
	ld [hl], $dc                                     ; $6eaa: $36 $dc
	jr c, jr_043_6f06                                ; $6eac: $38 $58

	nop                                              ; $6eae: $00
	add b                                            ; $6eaf: $80
	ld c, b                                          ; $6eb0: $48
	and b                                            ; $6eb1: $a0
	ld c, b                                          ; $6eb2: $48
	jr nz, jr_043_6ef5                               ; $6eb3: $20 $40

	jr nz, jr_043_6f31                               ; $6eb5: $20 $7a

	ld [hl], l                                       ; $6eb7: $75
	dec sp                                           ; $6eb8: $3b
	ld a, [de]                                       ; $6eb9: $1a
	ld hl, $2110                                     ; $6eba: $21 $10 $21
	nop                                              ; $6ebd: $00
	dec b                                            ; $6ebe: $05
	ld a, [bc]                                       ; $6ebf: $0a
	sbc [hl]                                         ; $6ec0: $9e
	inc b                                            ; $6ec1: $04
	db $fc                                           ; $6ec2: $fc
	sbc c                                            ; $6ec3: $99
	and l                                            ; $6ec4: $a5
	ld d, b                                          ; $6ec5: $50
	xor d                                            ; $6ec6: $aa
	push de                                          ; $6ec7: $d5
	ld l, d                                          ; $6ec8: $6a
	or l                                             ; $6ec9: $b5
	ld a, d                                          ; $6eca: $7a
	or h                                             ; $6ecb: $b4
	sbc d                                            ; $6ecc: $9a
	xor a                                            ; $6ecd: $af
	ld d, l                                          ; $6ece: $55
	ld a, [hl+]                                      ; $6ecf: $2a
	dec d                                            ; $6ed0: $15
	ld a, [bc]                                       ; $6ed1: $0a
	ld e, l                                          ; $6ed2: $5d
	jr c, jr_043_6ed8                                ; $6ed3: $38 $03

	rst $38                                          ; $6ed5: $ff
	inc bc                                           ; $6ed6: $03
	rst $38                                          ; $6ed7: $ff

jr_043_6ed8:
	inc bc                                           ; $6ed8: $03
	rst $38                                          ; $6ed9: $ff
	inc bc                                           ; $6eda: $03
	rst $38                                          ; $6edb: $ff
	call $deff                                       ; $6edc: $cd $ff $de
	add sp, -$62                                     ; $6edf: $e8 $9e
	ldh a, [$de]                                     ; $6ee1: $f0 $de
	ret nc                                           ; $6ee3: $d0

	sbc [hl]                                         ; $6ee4: $9e
	and b                                            ; $6ee5: $a0
	sbc $f7                                          ; $6ee6: $de $f7
	db $dd                                           ; $6ee8: $dd
	rst AddAOntoHL                                          ; $6ee9: $ef
	sbc e                                            ; $6eea: $9b
	rst SubAFromDE                                          ; $6eeb: $df
	xor d                                            ; $6eec: $aa
	dec d                                            ; $6eed: $15
	ld [bc], a                                       ; $6eee: $02
	db $fc                                           ; $6eef: $fc
	sbc l                                            ; $6ef0: $9d
	ld d, l                                          ; $6ef1: $55
	ld [$9274], a                                    ; $6ef2: $ea $74 $92

jr_043_6ef5:
	rst SubAFromDE                                          ; $6ef5: $df
	rst $38                                          ; $6ef6: $ff
	sbc h                                            ; $6ef7: $9c
	xor d                                            ; $6ef8: $aa
	ld d, b                                          ; $6ef9: $50
	add b                                            ; $6efa: $80
	ld l, a                                          ; $6efb: $6f
	ldh a, [$9e]                                     ; $6efc: $f0 $9e
	xor a                                            ; $6efe: $af
	ld a, b                                          ; $6eff: $78
	call nz, $ffde                                   ; $6f00: $c4 $de $ff
	sbc [hl]                                         ; $6f03: $9e
	and b                                            ; $6f04: $a0
	ld h, h                                          ; $6f05: $64

jr_043_6f06:
	jr c, @-$24                                      ; $6f06: $38 $da

	rst $38                                          ; $6f08: $ff
	sbc [hl]                                         ; $6f09: $9e
	rlca                                             ; $6f0a: $07
	ld a, [$f89e]                                    ; $6f0b: $fa $9e $f8
	jp c, Jump_043_7eff                              ; $6f0e: $da $ff $7e

	xor c                                            ; $6f11: $a9
	sbc [hl]                                         ; $6f12: $9e
	inc e                                            ; $6f13: $1c
	ld [hl], b                                       ; $6f14: $70
	ccf                                              ; $6f15: $3f
	sbc e                                            ; $6f16: $9b
	ldh a, [rAUD3HIGH]                               ; $6f17: $f0 $1e
	db $e3                                           ; $6f19: $e3
	db $fc                                           ; $6f1a: $fc
	ld l, b                                          ; $6f1b: $68
	jp hl                                            ; $6f1c: $e9


	sbc h                                            ; $6f1d: $9c
	add b                                            ; $6f1e: $80
	ld [hl], b                                       ; $6f1f: $70
	ld c, $75                                        ; $6f20: $0e $75
	ld e, a                                          ; $6f22: $5f
	sbc d                                            ; $6f23: $9a
	ret nz                                           ; $6f24: $c0

	ld a, b                                          ; $6f25: $78
	adc a                                            ; $6f26: $8f
	pop af                                           ; $6f27: $f1
	cp $77                                           ; $6f28: $fe $77
	ldh a, [rPCM34]                                  ; $6f2a: $f0 $77
	db $ed                                           ; $6f2c: $ed
	sbc [hl]                                         ; $6f2d: $9e
	ld h, b                                          ; $6f2e: $60
	db $fc                                           ; $6f2f: $fc
	sbc c                                            ; $6f30: $99

jr_043_6f31:
	ldh [$7c], a                                     ; $6f31: $e0 $7c
	sbc a                                            ; $6f33: $9f
	ld bc, $0102                                     ; $6f34: $01 $02 $01
	ld l, a                                          ; $6f37: $6f
	adc a                                            ; $6f38: $8f
	ld l, e                                          ; $6f39: $6b
	rst SubAFromBC                                          ; $6f3a: $e7
	sub a                                            ; $6f3b: $97
	ld e, [hl]                                       ; $6f3c: $5e
	cp [hl]                                          ; $6f3d: $be
	ld e, [hl]                                       ; $6f3e: $5e
	xor d                                            ; $6f3f: $aa
	ld d, h                                          ; $6f40: $54
	xor d                                            ; $6f41: $aa
	ld d, l                                          ; $6f42: $55
	dec bc                                           ; $6f43: $0b
	ld sp, hl                                        ; $6f44: $f9
	ld e, c                                          ; $6f45: $59
	nop                                              ; $6f46: $00
	sbc $33                                          ; $6f47: $de $33
	sbc d                                            ; $6f49: $9a
	ld b, a                                          ; $6f4a: $47
	ld [hl], a                                       ; $6f4b: $77
	ld [hl], h                                       ; $6f4c: $74
	ld b, h                                          ; $6f4d: $44
	ld b, e                                          ; $6f4e: $43
	sbc $33                                          ; $6f4f: $de $33
	sbc l                                            ; $6f51: $9d
	ld d, e                                          ; $6f52: $53
	inc sp                                           ; $6f53: $33
	sbc $44                                          ; $6f54: $de $44
	sub [hl]                                         ; $6f56: $96
	ld b, l                                          ; $6f57: $45
	ld d, h                                          ; $6f58: $54
	ld b, h                                          ; $6f59: $44
	ld d, l                                          ; $6f5a: $55
	inc sp                                           ; $6f5b: $33
	ld h, e                                          ; $6f5c: $63
	inc [hl]                                         ; $6f5d: $34
	ld b, [hl]                                       ; $6f5e: $46
	ld b, e                                          ; $6f5f: $43
	sbc $55                                          ; $6f60: $de $55
	ld a, a                                          ; $6f62: $7f
	rst AddAOntoHL                                          ; $6f63: $ef
	sbc d                                            ; $6f64: $9a
	inc sp                                           ; $6f65: $33
	ld [hl], e                                       ; $6f66: $73
	inc [hl]                                         ; $6f67: $34
	ld b, h                                          ; $6f68: $44
	ld b, h                                          ; $6f69: $44
	ld [hl], a                                       ; $6f6a: $77
	or $7f                                           ; $6f6b: $f6 $7f
	ldh [$7f], a                                     ; $6f6d: $e0 $7f
	or $9e                                           ; $6f6f: $f6 $9e
	ld b, l                                          ; $6f71: $45
	db $dd                                           ; $6f72: $dd
	ld d, l                                          ; $6f73: $55
	sbc l                                            ; $6f74: $9d
	ld d, h                                          ; $6f75: $54
	ld h, [hl]                                       ; $6f76: $66
	ld a, e                                          ; $6f77: $7b
	call nc, $f677                                   ; $6f78: $d4 $77 $f6
	sbc d                                            ; $6f7b: $9a
	ld d, h                                          ; $6f7c: $54

Call_043_6f7d:
	ld b, e                                          ; $6f7d: $43
	ld b, h                                          ; $6f7e: $44
	ld b, l                                          ; $6f7f: $45
	ld d, l                                          ; $6f80: $55
	call c, Call_043_7b44                            ; $6f81: $dc $44 $7b
	call nz, Call_043_55de                           ; $6f84: $c4 $de $55
	sbc [hl]                                         ; $6f87: $9e
	ld b, e                                          ; $6f88: $43
	ld a, e                                          ; $6f89: $7b
	sub $9d                                          ; $6f8a: $d6 $9d
	ld [hl], h                                       ; $6f8c: $74
	ld b, e                                          ; $6f8d: $43
	ld [hl], a                                       ; $6f8e: $77
	cp l                                             ; $6f8f: $bd
	db $dd                                           ; $6f90: $dd
	ld b, h                                          ; $6f91: $44
	sbc $77                                          ; $6f92: $de $77
	ld l, e                                          ; $6f94: $6b
	db $e4                                           ; $6f95: $e4
	sbc [hl]                                         ; $6f96: $9e
	scf                                              ; $6f97: $37
	ld l, e                                          ; $6f98: $6b
	or $dd                                           ; $6f99: $f6 $dd
	inc sp                                           ; $6f9b: $33
	sbc [hl]                                         ; $6f9c: $9e

Call_043_6f9d:
Jump_043_6f9d:
	ld [hl], a                                       ; $6f9d: $77
	and d                                            ; $6f9e: $a2
	adc c                                            ; $6f9f: $89
	sbc d                                            ; $6fa0: $9a
	cp e                                             ; $6fa1: $bb
	push bc                                          ; $6fa2: $c5
	push af                                          ; $6fa3: $f5
	ld sp, hl                                        ; $6fa4: $f9
	cp $de                                           ; $6fa5: $fe $de
	rst $38                                          ; $6fa7: $ff
	sbc h                                            ; $6fa8: $9c
	rra                                              ; $6fa9: $1f
	rrca                                             ; $6faa: $0f
	inc bc                                           ; $6fab: $03
	db $fc                                           ; $6fac: $fc
	sbc l                                            ; $6fad: $9d

jr_043_6fae:
	rst $38                                          ; $6fae: $ff
	db $fd                                           ; $6faf: $fd
	ld a, e                                          ; $6fb0: $7b
	ldh a, [c]                                       ; $6fb1: $f2
	sbc e                                            ; $6fb2: $9b
	ccf                                              ; $6fb3: $3f
	rst GetHLinHL                                          ; $6fb4: $cf
	di                                               ; $6fb5: $f3
	ei                                               ; $6fb6: $fb
	ld a, e                                          ; $6fb7: $7b
	ld sp, hl                                        ; $6fb8: $f9
	adc c                                            ; $6fb9: $89
	ld a, a                                          ; $6fba: $7f
	rra                                              ; $6fbb: $1f
	rrca                                             ; $6fbc: $0f
	rlca                                             ; $6fbd: $07
	rst SubAFromDE                                          ; $6fbe: $df
	rst AddAOntoHL                                          ; $6fbf: $ef
	ei                                               ; $6fc0: $fb
	ld a, l                                          ; $6fc1: $7d
	cp $ee                                           ; $6fc2: $fe $ee
	rst FarCall                                          ; $6fc4: $f7
	ld sp, hl                                        ; $6fc5: $f9
	cp a                                             ; $6fc6: $bf
	rst SubAFromDE                                          ; $6fc7: $df
	ld h, a                                          ; $6fc8: $67
	cp e                                             ; $6fc9: $bb
	call $fbf7                                       ; $6fca: $cd $f7 $fb
	cp $f5                                           ; $6fcd: $fe $f5
	ld [$fe7b], a                                    ; $6fcf: $ea $7b $fe
	sbc h                                            ; $6fd2: $9c
	cp d                                             ; $6fd3: $ba
	ld e, l                                          ; $6fd4: $5d
	ld [$ffdc], a                                    ; $6fd5: $ea $dc $ff
	sub h                                            ; $6fd8: $94
	ld a, a                                          ; $6fd9: $7f
	cp a                                             ; $6fda: $bf
	rst SubAFromDE                                          ; $6fdb: $df
	ld d, b                                          ; $6fdc: $50
	xor b                                            ; $6fdd: $a8
	ld d, b                                          ; $6fde: $50
	xor b                                            ; $6fdf: $a8
	ld d, h                                          ; $6fe0: $54
	xor d                                            ; $6fe1: $aa
	ld d, l                                          ; $6fe2: $55
	xor d                                            ; $6fe3: $aa
	reti                                             ; $6fe4: $d9


	rst $38                                          ; $6fe5: $ff
	sub h                                            ; $6fe6: $94
	dec b                                            ; $6fe7: $05
	ld [bc], a                                       ; $6fe8: $02
	ld bc, $0102                                     ; $6fe9: $01 $02 $01
	nop                                              ; $6fec: $00
	nop                                              ; $6fed: $00
	add b                                            ; $6fee: $80
	ld a, [$fefd]                                    ; $6fef: $fa $fd $fe
	ld [hl], a                                       ; $6ff2: $77
	or [hl]                                          ; $6ff3: $b6
	sub l                                            ; $6ff4: $95
	rst $38                                          ; $6ff5: $ff
	ld e, a                                          ; $6ff6: $5f
	xor a                                            ; $6ff7: $af
	ld d, a                                          ; $6ff8: $57
	xor a                                            ; $6ff9: $af
	ld d, a                                          ; $6ffa: $57
	xor e                                            ; $6ffb: $ab
	ld d, l                                          ; $6ffc: $55
	xor e                                            ; $6ffd: $ab
	and b                                            ; $6ffe: $a0
	ld l, a                                          ; $6fff: $6f
	rst SubAFromHL                                          ; $7000: $d7
	sub [hl]                                         ; $7001: $96
	ld d, h                                          ; $7002: $54
	and b                                            ; $7003: $a0
	ld d, b                                          ; $7004: $50
	and b                                            ; $7005: $a0
	ret nc                                           ; $7006: $d0

	xor b                                            ; $7007: $a8
	call nc, $f4e8                                   ; $7008: $d4 $e8 $f4

jr_043_700b:
	rst FarCall                                          ; $700b: $f7
	sbc c                                            ; $700c: $99
	rrca                                             ; $700d: $0f
	jr nc, jr_043_702f                               ; $700e: $30 $1f

	ld [hl+], a                                      ; $7010: $22
	ld sp, $7718                                     ; $7011: $31 $18 $77
	rst FarCall                                          ; $7014: $f7
	sub e                                            ; $7015: $93
	ccf                                              ; $7016: $3f
	inc a                                            ; $7017: $3c
	jr jr_043_7020                                   ; $7018: $18 $06

	nop                                              ; $701a: $00
	nop                                              ; $701b: $00
	ldh [$08], a                                     ; $701c: $e0 $08
	jr jr_043_7034                                   ; $701e: $18 $14

jr_043_7020:
	jr z, jr_043_6fae                                ; $7020: $28 $8c

	cp $9a                                           ; $7022: $fe $9a
	ldh a, [$fc]                                     ; $7024: $f0 $fc
	inc c                                            ; $7026: $0c
	inc e                                            ; $7027: $1c
	jr nc, jr_043_700b                               ; $7028: $30 $e1

	sub a                                            ; $702a: $97
	ld a, [bc]                                       ; $702b: $0a
	dec d                                            ; $702c: $15
	dec hl                                           ; $702d: $2b
	dec d                                            ; $702e: $15

jr_043_702f:
	dec hl                                           ; $702f: $2b
	ld d, l                                          ; $7030: $55
	dec hl                                           ; $7031: $2b
	ld d, a                                          ; $7032: $57
	ld sp, hl                                        ; $7033: $f9

jr_043_7034:
	sbc [hl]                                         ; $7034: $9e
	rst $38                                          ; $7035: $ff
	ld a, e                                          ; $7036: $7b
	adc c                                            ; $7037: $89
	sbc d                                            ; $7038: $9a
	db $fd                                           ; $7039: $fd
	ld a, [$fafd]                                    ; $703a: $fa $fd $fa
	nop                                              ; $703d: $00
	ld a, e                                          ; $703e: $7b
	ld a, c                                          ; $703f: $79
	sbc d                                            ; $7040: $9a
	ld [bc], a                                       ; $7041: $02
	dec b                                            ; $7042: $05
	ld [bc], a                                       ; $7043: $02
	dec b                                            ; $7044: $05
	ld d, h                                          ; $7045: $54
	ld a, e                                          ; $7046: $7b
	adc c                                            ; $7047: $89
	ld a, a                                          ; $7048: $7f
	adc l                                            ; $7049: $8d
	sbc h                                            ; $704a: $9c
	ld b, b                                          ; $704b: $40
	and b                                            ; $704c: $a0
	xor e                                            ; $704d: $ab
	ld a, e                                          ; $704e: $7b
	ld a, c                                          ; $704f: $79
	sbc e                                            ; $7050: $9b
	xor a                                            ; $7051: $af
	ld e, a                                          ; $7052: $5f
	cp a                                             ; $7053: $bf
	ld e, a                                          ; $7054: $5f
	ld [hl], e                                       ; $7055: $73
	jp hl                                            ; $7056: $e9


	ld a, a                                          ; $7057: $7f
	res 3, [hl]                                      ; $7058: $cb $9e
	ld a, [bc]                                       ; $705a: $0a
	reti                                             ; $705b: $d9


	rst $38                                          ; $705c: $ff

Call_043_705d:
	ld a, a                                          ; $705d: $7f
	ld b, [hl]                                       ; $705e: $46
	ld l, a                                          ; $705f: $6f
	cp $d9                                           ; $7060: $fe $d9
	rst $38                                          ; $7062: $ff
	ld a, a                                          ; $7063: $7f
	dec l                                            ; $7064: $2d
	sbc c                                            ; $7065: $99
	ld a, a                                          ; $7066: $7f
	cp h                                             ; $7067: $bc
	ld a, c                                          ; $7068: $79
	di                                               ; $7069: $f3
	ld h, [hl]                                       ; $706a: $66
	sbc [hl]                                         ; $706b: $9e
	db $db                                           ; $706c: $db
	rst $38                                          ; $706d: $ff
	add [hl]                                         ; $706e: $86
	db $fd                                           ; $706f: $fd
	ei                                               ; $7070: $fb
	rst SubAFromBC                                          ; $7071: $e7
	sbc [hl]                                         ; $7072: $9e
	add hl, sp                                       ; $7073: $39
	di                                               ; $7074: $f3
	xor a                                            ; $7075: $af
	sbc a                                            ; $7076: $9f
	ld a, a                                          ; $7077: $7f
	ld a, [$fdfe]                                    ; $7078: $fa $fe $fd
	rst FarCall                                          ; $707b: $f7
	rst AddAOntoHL                                          ; $707c: $ef
	rst SubAFromDE                                          ; $707d: $df
	ld a, a                                          ; $707e: $7f
	cp $fc                                           ; $707f: $fe $fc
	ld [hl], a                                       ; $7081: $77
	xor $de                                          ; $7082: $ee $de
	ld sp, hl                                        ; $7084: $f9
	rst SubAFromHL                                          ; $7085: $d7
	rst GetHLinHL                                          ; $7086: $cf
	ccf                                              ; $7087: $3f
	sbc $ff                                          ; $7088: $de $ff
	sbc e                                            ; $708a: $9b
	db $fc                                           ; $708b: $fc
	ldh a, [$e0]                                     ; $708c: $f0 $e0
	add b                                            ; $708e: $80
	ld a, e                                          ; $708f: $7b
	sub b                                            ; $7090: $90
	jp c, $f9ff                                      ; $7091: $da $ff $f9

	sbc [hl]                                         ; $7094: $9e
	ld hl, sp+$77                                    ; $7095: $f8 $77
	dec bc                                           ; $7097: $0b
	sbc $ff                                          ; $7098: $de $ff
	ld a, d                                          ; $709a: $7a
	db $fc                                           ; $709b: $fc
	db $fc                                           ; $709c: $fc
	ld a, a                                          ; $709d: $7f
	pop af                                           ; $709e: $f1
	sbc d                                            ; $709f: $9a
	rra                                              ; $70a0: $1f
	rst SubAFromDE                                          ; $70a1: $df
	db $e3                                           ; $70a2: $e3
	ei                                               ; $70a3: $fb
	db $fc                                           ; $70a4: $fc
	ld a, e                                          ; $70a5: $7b
	and a                                            ; $70a6: $a7
	sbc h                                            ; $70a7: $9c
	ccf                                              ; $70a8: $3f
	rrca                                             ; $70a9: $0f
	rlca                                             ; $70aa: $07
	ld a, e                                          ; $70ab: $7b
	db $eb                                           ; $70ac: $eb
	sbc h                                            ; $70ad: $9c
	push de                                          ; $70ae: $d5
	xor d                                            ; $70af: $aa
	db $dd                                           ; $70b0: $dd
	ld a, d                                          ; $70b1: $7a
	push hl                                          ; $70b2: $e5
	rst SubAFromDE                                          ; $70b3: $df
	ld a, a                                          ; $70b4: $7f
	ld [hl], a                                       ; $70b5: $77
	cp [hl]                                          ; $70b6: $be
	sbc $ff                                          ; $70b7: $de $ff
	sbc [hl]                                         ; $70b9: $9e
	ccf                                              ; $70ba: $3f
	ld b, a                                          ; $70bb: $47
	add b                                            ; $70bc: $80
	ld a, [hl]                                       ; $70bd: $7e
	add $7f                                          ; $70be: $c6 $7f

Call_043_70c0:
	ld d, h                                          ; $70c0: $54
	halt                                             ; $70c1: $76
	rst SubAFromHL                                          ; $70c2: $d7
	ld h, e                                          ; $70c3: $63
	ld h, b                                          ; $70c4: $60
	adc b                                            ; $70c5: $88
	ld a, [hl+]                                      ; $70c6: $2a
	dec d                                            ; $70c7: $15
	ld a, [bc]                                       ; $70c8: $0a
	dec b                                            ; $70c9: $05
	ld a, [bc]                                       ; $70ca: $0a
	dec b                                            ; $70cb: $05
	ld [bc], a                                       ; $70cc: $02
	xor d                                            ; $70cd: $aa
	push de                                          ; $70ce: $d5
	ld [$faf5], a                                    ; $70cf: $ea $f5 $fa
	push af                                          ; $70d2: $f5
	ld a, [$eafd]                                    ; $70d3: $fa $fd $ea
	push af                                          ; $70d6: $f5
	ld a, d                                          ; $70d7: $7a
	cp l                                             ; $70d8: $bd
	ld a, [hl]                                       ; $70d9: $7e
	cp a                                             ; $70da: $bf
	ld e, a                                          ; $70db: $5f
	xor a                                            ; $70dc: $af
	ld a, d                                          ; $70dd: $7a
	sbc l                                            ; $70de: $9d
	sbc [hl]                                         ; $70df: $9e
	ld b, b                                          ; $70e0: $40
	ld [hl], a                                       ; $70e1: $77
	push de                                          ; $70e2: $d5
	ld [hl], a                                       ; $70e3: $77
	db $fc                                           ; $70e4: $fc
	ld [hl], a                                       ; $70e5: $77
	rst GetHLinHL                                          ; $70e6: $cf
	ldh [c], a                                       ; $70e7: $e2
	sbc [hl]                                         ; $70e8: $9e
	ld b, d                                          ; $70e9: $42
	ld a, [$3c9c]                                    ; $70ea: $fa $9c $3c
	nop                                              ; $70ed: $00
	ld bc, $e67a                                     ; $70ee: $01 $7a $e6
	ld a, e                                          ; $70f1: $7b
	xor a                                            ; $70f2: $af
	ld sp, hl                                        ; $70f3: $f9
	ld a, d                                          ; $70f4: $7a
	add sp, $7a                                      ; $70f5: $e8 $7a
	ld [$bf9d], a                                    ; $70f7: $ea $9d $bf
	ld a, [hl]                                       ; $70fa: $7e
	ld a, [$0193]                                    ; $70fb: $fa $93 $01
	push af                                          ; $70fe: $f5
	ld [$ead5], a                                    ; $70ff: $ea $d5 $ea
	call nc, Call_043_54aa                           ; $7102: $d4 $aa $54
	xor b                                            ; $7105: $a8
	ld a, [bc]                                       ; $7106: $0a
	dec d                                            ; $7107: $15
	ld a, [hl+]                                      ; $7108: $2a
	ld a, d                                          ; $7109: $7a
	xor b                                            ; $710a: $a8
	ld a, a                                          ; $710b: $7f
	ldh [c], a                                       ; $710c: $e2
	ld a, a                                          ; $710d: $7f
	sbc e                                            ; $710e: $9b
	ld [hl], e                                       ; $710f: $73
	jp hl                                            ; $7110: $e9


	sbc h                                            ; $7111: $9c
	ld [bc], a                                       ; $7112: $02
	cp a                                             ; $7113: $bf
	ld a, a                                          ; $7114: $7f
	db $db                                           ; $7115: $db
	rst $38                                          ; $7116: $ff
	ld a, a                                          ; $7117: $7f
	jp hl                                            ; $7118: $e9


	ld c, a                                          ; $7119: $4f
	ld d, b                                          ; $711a: $50
	ld a, a                                          ; $711b: $7f
	or $7a                                           ; $711c: $f6 $7a
	ld [bc], a                                       ; $711e: $02
	ld a, e                                          ; $711f: $7b
	cp e                                             ; $7120: $bb
	reti                                             ; $7121: $d9


	rst $38                                          ; $7122: $ff
	adc h                                            ; $7123: $8c
	ld a, l                                          ; $7124: $7d
	db $eb                                           ; $7125: $eb
	rst SubAFromDE                                          ; $7126: $df
	cp l                                             ; $7127: $bd
	ld a, b                                          ; $7128: $78
	db $eb                                           ; $7129: $eb
	rst SubAFromBC                                          ; $712a: $e7
	ld e, a                                          ; $712b: $5f
	rst FarCall                                          ; $712c: $f7
	rst SubAFromDE                                          ; $712d: $df
	ccf                                              ; $712e: $3f
	cp $fc                                           ; $712f: $fe $fc
	ldh a, [$c0]                                     ; $7131: $f0 $c0
	add b                                            ; $7133: $80
	ld l, c                                          ; $7134: $69
	rst SubAFromBC                                          ; $7135: $e7
	ld e, a                                          ; $7136: $5f
	ld [hl], e                                       ; $7137: $73
	dec d                                            ; $7138: $15
	ld a, e                                          ; $7139: $7b
	push af                                          ; $713a: $f5
	ld l, [hl]                                       ; $713b: $6e
	ld h, b                                          ; $713c: $60
	ld c, d                                          ; $713d: $4a
	ret nc                                           ; $713e: $d0

	sub a                                            ; $713f: $97
	rst $38                                          ; $7140: $ff
	sbc a                                            ; $7141: $9f
	di                                               ; $7142: $f3
	ld a, [de]                                       ; $7143: $1a
	xor [hl]                                         ; $7144: $ae
	scf                                              ; $7145: $37
	or a                                             ; $7146: $b7
	scf                                              ; $7147: $37
	cp $9e                                           ; $7148: $fe $9e
	ld a, h                                          ; $714a: $7c
	db $dd                                           ; $714b: $dd
	ld a, a                                          ; $714c: $7f
	ld [hl], d                                       ; $714d: $72
	ld a, l                                          ; $714e: $7d
	sbc h                                            ; $714f: $9c
	rst SubAFromBC                                          ; $7150: $e7
	db $fc                                           ; $7151: $fc
	ld a, $fc                                        ; $7152: $3e $fc
	sbc l                                            ; $7154: $9d
	ret nz                                           ; $7155: $c0

	ld hl, sp-$27                                    ; $7156: $f8 $d9
	rst $38                                          ; $7158: $ff
	sbc [hl]                                         ; $7159: $9e
	sbc a                                            ; $715a: $9f
	ld sp, hl                                        ; $715b: $f9
	sbc h                                            ; $715c: $9c
	sbc a                                            ; $715d: $9f
	rst AddAOntoHL                                          ; $715e: $ef
	pop af                                           ; $715f: $f1
	ld [hl], c                                       ; $7160: $71
	xor b                                            ; $7161: $a8
	ld a, [hl]                                       ; $7162: $7e
	or e                                             ; $7163: $b3
	ld l, l                                          ; $7164: $6d
	ld d, b                                          ; $7165: $50
	ld a, [hl]                                       ; $7166: $7e
	or b                                             ; $7167: $b0
	sub b                                            ; $7168: $90
	sub a                                            ; $7169: $97
	rst JumpTable                                          ; $716a: $c7
	ld [hl-], a                                      ; $716b: $32
	xor l                                            ; $716c: $ad
	adc $f5                                          ; $716d: $ce $f5
	rst $38                                          ; $716f: $ff
	rst $38                                          ; $7170: $ff
	ld hl, sp-$03                                    ; $7171: $f8 $fd
	ld a, a                                          ; $7173: $7f
	rra                                              ; $7174: $1f
	rlca                                             ; $7175: $07
	inc bc                                           ; $7176: $03
	ld d, l                                          ; $7177: $55
	halt                                             ; $7178: $76
	rst SubAFromHL                                          ; $7179: $d7
	sbc h                                            ; $717a: $9c
	ld a, d                                          ; $717b: $7a
	ld sp, hl                                        ; $717c: $f9
	cp h                                             ; $717d: $bc
	halt                                             ; $717e: $76
	adc a                                            ; $717f: $8f
	ld a, [hl]                                       ; $7180: $7e
	jp c, $d79d                                      ; $7181: $da $9d $d7

	db $eb                                           ; $7184: $eb
	ld [hl], l                                       ; $7185: $75
	ld [hl], h                                       ; $7186: $74
	halt                                             ; $7187: $76
	xor [hl]                                         ; $7188: $ae
	ld l, d                                          ; $7189: $6a
	ld l, c                                          ; $718a: $69
	ld [hl], l                                       ; $718b: $75
	ld [hl], b                                       ; $718c: $70
	ld a, a                                          ; $718d: $7f
	add hl, hl                                       ; $718e: $29
	ld a, d                                          ; $718f: $7a
	xor h                                            ; $7190: $ac
	ld a, e                                          ; $7191: $7b
	db $ed                                           ; $7192: $ed
	ld a, a                                          ; $7193: $7f
	add hl, de                                       ; $7194: $19
	ld a, e                                          ; $7195: $7b
	push de                                          ; $7196: $d5
	ld [hl], d                                       ; $7197: $72
	xor b                                            ; $7198: $a8
	sbc h                                            ; $7199: $9c
	db $fd                                           ; $719a: $fd
	ld a, [hl]                                       ; $719b: $7e
	cp a                                             ; $719c: $bf
	ei                                               ; $719d: $fb
	ld a, a                                          ; $719e: $7f
	push de                                          ; $719f: $d5
	ld a, e                                          ; $71a0: $7b
	db $fc                                           ; $71a1: $fc
	sbc d                                            ; $71a2: $9a
	ld d, b                                          ; $71a3: $50
	xor d                                            ; $71a4: $aa
	push bc                                          ; $71a5: $c5
	ld b, h                                          ; $71a6: $44
	add e                                            ; $71a7: $83
	db $fc                                           ; $71a8: $fc
	sub a                                            ; $71a9: $97
	ld a, h                                          ; $71aa: $7c
	cp $44                                           ; $71ab: $fe $44
	ld e, d                                          ; $71ad: $5a
	add c                                            ; $71ae: $81
	ld b, d                                          ; $71af: $42
	ld bc, $7b02                                     ; $71b0: $01 $02 $7b
	rrca                                             ; $71b3: $0f
	sbc h                                            ; $71b4: $9c
	rst SubAFromBC                                          ; $71b5: $e7
	ld b, d                                          ; $71b6: $42
	inc a                                            ; $71b7: $3c
	ld l, c                                          ; $71b8: $69
	sub b                                            ; $71b9: $90
	ld a, [hl]                                       ; $71ba: $7e
	rst $38                                          ; $71bb: $ff
	halt                                             ; $71bc: $76
	call z, Call_043_7ff9                            ; $71bd: $cc $f9 $7f
	push bc                                          ; $71c0: $c5
	ld a, l                                          ; $71c1: $7d
	sub h                                            ; $71c2: $94
	ld a, d                                          ; $71c3: $7a
	call z, $aa9e                                    ; $71c4: $cc $9e $aa
	ld l, l                                          ; $71c7: $6d
	xor c                                            ; $71c8: $a9
	ld a, a                                          ; $71c9: $7f
	db $e4                                           ; $71ca: $e4
	ld [hl], l                                       ; $71cb: $75
	sub h                                            ; $71cc: $94
	halt                                             ; $71cd: $76
	call z, $aa72                                    ; $71ce: $cc $72 $aa
	ld a, e                                          ; $71d1: $7b
	ld [hl-], a                                      ; $71d2: $32
	ld [hl], a                                       ; $71d3: $77
	db $eb                                           ; $71d4: $eb
	ld a, d                                          ; $71d5: $7a

jr_043_71d6:
	or a                                             ; $71d6: $b7
	ld l, d                                          ; $71d7: $6a
	ret nc                                           ; $71d8: $d0

	ld a, l                                          ; $71d9: $7d
	cp d                                             ; $71da: $ba
	ld a, a                                          ; $71db: $7f
	or $99                                           ; $71dc: $f6 $99
	ld [hl], l                                       ; $71de: $75
	jp c, $eab7                                      ; $71df: $da $b7 $ea

	pop de                                           ; $71e2: $d1
	or a                                             ; $71e3: $b7
	sbc $ff                                          ; $71e4: $de $ff
	ld a, l                                          ; $71e6: $7d
	or b                                             ; $71e7: $b0
	sbc b                                            ; $71e8: $98
	inc a                                            ; $71e9: $3c
	ld a, b                                          ; $71ea: $78
	ldh [$5d], a                                     ; $71eb: $e0 $5d
	cp h                                             ; $71ed: $bc
	ld h, e                                          ; $71ee: $63
	adc a                                            ; $71ef: $8f
	ld [hl], a                                       ; $71f0: $77
	ret c                                            ; $71f1: $d8

	sbc e                                            ; $71f2: $9b
	cp $f8                                           ; $71f3: $fe $f8
	ldh a, [$c0]                                     ; $71f5: $f0 $c0
	db $fd                                           ; $71f7: $fd
	ld l, c                                          ; $71f8: $69
	add sp, $5e                                      ; $71f9: $e8 $5e
	ldh [$dc], a                                     ; $71fb: $e0 $dc
	rst $38                                          ; $71fd: $ff
	sbc l                                            ; $71fe: $9d
	db $fc                                           ; $71ff: $fc
	ldh [c], a                                       ; $7200: $e2
	ld h, [hl]                                       ; $7201: $66
	ld h, b                                          ; $7202: $60
	db $dd                                           ; $7203: $dd
	rst $38                                          ; $7204: $ff
	sbc e                                            ; $7205: $9b
	rst SubAFromBC                                          ; $7206: $e7
	sbc c                                            ; $7207: $99
	ld a, [hl]                                       ; $7208: $7e
	db $fd                                           ; $7209: $fd
	ei                                               ; $720a: $fb
	sbc h                                            ; $720b: $9c
	jr c, jr_043_71d6                                ; $720c: $38 $c8

	or a                                             ; $720e: $b7
	ld a, d                                          ; $720f: $7a
	call nz, $b69b                                   ; $7210: $c4 $9b $b6
	dec [hl]                                         ; $7213: $35
	or [hl]                                          ; $7214: $b6
	dec [hl]                                         ; $7215: $35
	reti                                             ; $7216: $d9


	ld l, a                                          ; $7217: $6f
	sub a                                            ; $7218: $97
	rst SubAFromBC                                          ; $7219: $e7
	ld sp, hl                                        ; $721a: $f9
	rst $38                                          ; $721b: $ff
	rst SubAFromDE                                          ; $721c: $df
	or [hl]                                          ; $721d: $b6
	ld c, l                                          ; $721e: $4d
	di                                               ; $721f: $f3
	ld e, e                                          ; $7220: $5b
	jp c, $94ff                                      ; $7221: $da $ff $94

	ldh a, [$e7]                                     ; $7224: $f0 $e7
	ld hl, sp+$1d                                    ; $7226: $f8 $1d
	ld h, a                                          ; $7228: $67
	ld sp, hl                                        ; $7229: $f9
	ld a, [hl]                                       ; $722a: $7e
	rst $38                                          ; $722b: $ff
	ld a, [hl]                                       ; $722c: $7e
	ret nz                                           ; $722d: $c0

	ldh a, [$66]                                     ; $722e: $f0 $66
	cp $99                                           ; $7230: $fe $99
	ld a, a                                          ; $7232: $7f
	sbc a                                            ; $7233: $9f
	rst SubAFromBC                                          ; $7234: $e7
	ld h, a                                          ; $7235: $67
	daa                                              ; $7236: $27
	ld b, a                                          ; $7237: $47
	halt                                             ; $7238: $76
	and d                                            ; $7239: $a2
	db $dd                                           ; $723a: $dd
	ldh a, [$9e]                                     ; $723b: $f0 $9e
	ld sp, hl                                        ; $723d: $f9
	ld l, e                                          ; $723e: $6b
	jp hl                                            ; $723f: $e9


	ld sp, hl                                        ; $7240: $f9
	sbc e                                            ; $7241: $9b
	push de                                          ; $7242: $d5
	ld l, e                                          ; $7243: $6b
	or l                                             ; $7244: $b5
	jp z, $9e76                                      ; $7245: $ca $76 $9e

	sbc l                                            ; $7248: $9d
	ei                                               ; $7249: $fb
	inc a                                            ; $724a: $3c
	ld a, d                                          ; $724b: $7a
	or e                                             ; $724c: $b3
	cp $9c                                           ; $724d: $fe $9c
	ld d, h                                          ; $724f: $54
	jr z, @+$1e                                      ; $7250: $28 $1c

	halt                                             ; $7252: $76
	db $10                                           ; $7253: $10
	sbc [hl]                                         ; $7254: $9e
	dec hl                                           ; $7255: $2b
	db $db                                           ; $7256: $db
	rst $38                                          ; $7257: $ff
	sbc h                                            ; $7258: $9c
	ld a, [hl]                                       ; $7259: $7e
	ld e, $05                                        ; $725a: $1e $05
	ld a, b                                          ; $725c: $78
	ld [hl+], a                                      ; $725d: $22
	sbc [hl]                                         ; $725e: $9e
	ld bc, $ae7a                                     ; $725f: $01 $7a $ae
	ld a, c                                          ; $7262: $79
	dec sp                                           ; $7263: $3b
	ld a, a                                          ; $7264: $7f
	ld c, h                                          ; $7265: $4c
	ld a, e                                          ; $7266: $7b
	or e                                             ; $7267: $b3
	ld a, d                                          ; $7268: $7a
	or b                                             ; $7269: $b0
	ld a, h                                          ; $726a: $7c
	ld [hl+], a                                      ; $726b: $22
	ld a, a                                          ; $726c: $7f
	ldh [$9e], a                                     ; $726d: $e0 $9e
	ld a, [hl+]                                      ; $726f: $2a
	ld [hl], c                                       ; $7270: $71
	ld c, e                                          ; $7271: $4b
	ld a, d                                          ; $7272: $7a
	add e                                            ; $7273: $83
	sbc h                                            ; $7274: $9c
	xor $f5                                          ; $7275: $ee $f5
	ld a, [$3f7a]                                    ; $7277: $fa $7a $3f
	sbc l                                            ; $727a: $9d
	ld d, a                                          ; $727b: $57
	xor d                                            ; $727c: $aa
	ld l, [hl]                                       ; $727d: $6e
	or d                                             ; $727e: $b2
	sbc [hl]                                         ; $727f: $9e
	xor b                                            ; $7280: $a8
	ld a, e                                          ; $7281: $7b
	push hl                                          ; $7282: $e5
	ld a, l                                          ; $7283: $7d
	push hl                                          ; $7284: $e5
	sbc h                                            ; $7285: $9c
	sbc a                                            ; $7286: $9f
	rra                                              ; $7287: $1f
	ld a, l                                          ; $7288: $7d
	ld [hl], e                                       ; $7289: $73
	ldh a, [$9a]                                     ; $728a: $f0 $9a
	ld h, b                                          ; $728c: $60
	add b                                            ; $728d: $80
	add d                                            ; $728e: $82
	ld d, l                                          ; $728f: $55
	cp a                                             ; $7290: $bf
	ld a, b                                          ; $7291: $78
	ld h, d                                          ; $7292: $62
	ld a, [hl]                                       ; $7293: $7e
	jp nc, $e97f                                     ; $7294: $d2 $7f $e9

	ld [hl], l                                       ; $7297: $75
	ld a, d                                          ; $7298: $7a
	ld [hl], l                                       ; $7299: $75
	or l                                             ; $729a: $b5
	ld a, a                                          ; $729b: $7f
	bit 7, b                                         ; $729c: $cb $78
	ld e, [hl]                                       ; $729e: $5e
	ld a, [hl]                                       ; $729f: $7e
	adc $9d                                          ; $72a0: $ce $9d
	add c                                            ; $72a2: $81
	xor e                                            ; $72a3: $ab
	ld [hl], d                                       ; $72a4: $72
	xor d                                            ; $72a5: $aa
	ld a, [hl]                                       ; $72a6: $7e
	or $7f                                           ; $72a7: $f6 $7f
	jp hl                                            ; $72a9: $e9


	sbc [hl]                                         ; $72aa: $9e
	inc bc                                           ; $72ab: $03
	ld a, d                                          ; $72ac: $7a
	call Call_043_6f9d                               ; $72ad: $cd $9d $6f
	call c, $d06a                                    ; $72b0: $dc $6a $d0
	sub h                                            ; $72b3: $94
	jr c, @+$6f                                      ; $72b4: $38 $6d

	sbc a                                            ; $72b6: $9f
	ld d, $69                                        ; $72b7: $16 $69
	and a                                            ; $72b9: $a7
	sbc a                                            ; $72ba: $9f
	ld a, a                                          ; $72bb: $7f
	rst $38                                          ; $72bc: $ff
	di                                               ; $72bd: $f3
	xor $79                                          ; $72be: $ee $79
	or d                                             ; $72c0: $b2
	cp $9e                                           ; $72c1: $fe $9e
	ld c, a                                          ; $72c3: $4f
	ld l, d                                          ; $72c4: $6a
	rst SubAFromDE                                          ; $72c5: $df
	ld l, l                                          ; $72c6: $6d
	or d                                             ; $72c7: $b2
	ld l, [hl]                                       ; $72c8: $6e
	ldh [$9b], a                                     ; $72c9: $e0 $9b
	ld hl, sp-$0f                                    ; $72cb: $f8 $f1
	ldh a, [c]                                       ; $72cd: $f2
	di                                               ; $72ce: $f3
	db $fc                                           ; $72cf: $fc
	sbc $07                                          ; $72d0: $de $07
	ld a, a                                          ; $72d2: $7f
	di                                               ; $72d3: $f3
	sbc c                                            ; $72d4: $99
	rst JumpTable                                          ; $72d5: $c7
	ld l, $f0                                        ; $72d6: $2e $f0
	add l                                            ; $72d8: $85
	ccf                                              ; $72d9: $3f
	ld a, a                                          ; $72da: $7f
	ld a, d                                          ; $72db: $7a
	push de                                          ; $72dc: $d5
	sbc [hl]                                         ; $72dd: $9e
	rra                                              ; $72de: $1f
	ld [hl], l                                       ; $72df: $75
	or e                                             ; $72e0: $b3
	sub l                                            ; $72e1: $95
	rra                                              ; $72e2: $1f
	cp a                                             ; $72e3: $bf
	ld a, [$bef7]                                    ; $72e4: $fa $f7 $be
	ld e, a                                          ; $72e7: $5f
	xor a                                            ; $72e8: $af
	ld d, l                                          ; $72e9: $55
	rrca                                             ; $72ea: $0f
	ld [hl], e                                       ; $72eb: $73
	ld [hl], b                                       ; $72ec: $70
	ld c, e                                          ; $72ed: $4b
	sbc l                                            ; $72ee: $9d
	rst $38                                          ; $72ef: $ff
	call c, $ccdb                                    ; $72f0: $dc $db $cc
	sbc l                                            ; $72f3: $9d
	ld c, h                                          ; $72f4: $4c
	add sp, -$26                                     ; $72f5: $e8 $da
	ld hl, sp-$69                                    ; $72f7: $f8 $97
	or $75                                           ; $72f9: $f6 $75
	halt                                             ; $72fb: $76
	db $fd                                           ; $72fc: $fd
	ld e, h                                          ; $72fd: $5c
	ld e, c                                          ; $72fe: $59
	ret c                                            ; $72ff: $d8

	ld a, d                                          ; $7300: $7a
	sbc $2f                                          ; $7301: $de $2f
	db $dd                                           ; $7303: $dd
	daa                                              ; $7304: $27
	sub l                                            ; $7305: $95
	dec b                                            ; $7306: $05
	xor b                                            ; $7307: $a8
	ld e, b                                          ; $7308: $58
	xor a                                            ; $7309: $af
	ld d, l                                          ; $730a: $55
	dec hl                                           ; $730b: $2b
	inc b                                            ; $730c: $04
	ld [bc], a                                       ; $730d: $02
	add b                                            ; $730e: $80
	ldh a, [$6c]                                     ; $730f: $f0 $6c
	scf                                              ; $7311: $37
	sub [hl]                                         ; $7312: $96
	ld a, a                                          ; $7313: $7f
	dec a                                            ; $7314: $3d
	rrca                                             ; $7315: $0f
	ld b, $f7                                        ; $7316: $06 $f7
	ld a, [hl]                                       ; $7318: $7e
	sub l                                            ; $7319: $95
	adc d                                            ; $731a: $8a
	ret nc                                           ; $731b: $d0

	ld a, d                                          ; $731c: $7a
	ldh a, [c]                                       ; $731d: $f2
	sbc [hl]                                         ; $731e: $9e
	jp $ac75                                         ; $731f: $c3 $75 $ac


	sbc $e7                                          ; $7322: $de $e7
	sbc d                                            ; $7324: $9a
	ldh [c], a                                       ; $7325: $e2
	push hl                                          ; $7326: $e5
	ldh [c], a                                       ; $7327: $e2
	and h                                            ; $7328: $a4
	ld h, b                                          ; $7329: $60
	reti                                             ; $732a: $d9


	ldh a, [$de]                                     ; $732b: $f0 $de
	rst $38                                          ; $732d: $ff
	ld a, e                                          ; $732e: $7b
	ld [de], a                                       ; $732f: $12
	sbc l                                            ; $7330: $9d
	ld d, l                                          ; $7331: $55
	ld [bc], a                                       ; $7332: $02
	ld e, [hl]                                       ; $7333: $5e
	ld d, b                                          ; $7334: $50
	sbc c                                            ; $7335: $99
	db $fc                                           ; $7336: $fc

jr_043_7337:
	rst $38                                          ; $7337: $ff
	db $fd                                           ; $7338: $fd
	db $fd                                           ; $7339: $fd
	ld e, l                                          ; $733a: $5d
	xor l                                            ; $733b: $ad
	db $fd                                           ; $733c: $fd
	db $dd                                           ; $733d: $dd
	inc bc                                           ; $733e: $03
	sub [hl]                                         ; $733f: $96
	call nz, $f9f7                                   ; $7340: $c4 $f7 $f9
	ld e, $a7                                        ; $7343: $1e $a7
	di                                               ; $7345: $f3
	ld sp, hl                                        ; $7346: $f9
	ld sp, hl                                        ; $7347: $f9
	rrca                                             ; $7348: $0f
	ld a, d                                          ; $7349: $7a
	or e                                             ; $734a: $b3
	ld a, l                                          ; $734b: $7d
	ld sp, $f8df                                     ; $734c: $31 $df $f8
	sub d                                            ; $734f: $92
	ldh [rSVBK], a                                   ; $7350: $e0 $70
	call c, $3dea                                    ; $7352: $dc $ea $3d
	ld d, $05                                        ; $7355: $16 $05
	ld bc, $8f1f                                     ; $7357: $01 $1f $8f
	rst SubAFromBC                                          ; $735a: $e7
	ld a, a                                          ; $735b: $7f
	rra                                              ; $735c: $1f
	ld a, e                                          ; $735d: $7b
	db $eb                                           ; $735e: $eb
	ld a, l                                          ; $735f: $7d

jr_043_7360:
	halt                                             ; $7360: $76
	ld [hl], l                                       ; $7361: $75
	ld e, [hl]                                       ; $7362: $5e
	sbc e                                            ; $7363: $9b
	ldh [$30], a                                     ; $7364: $e0 $30
	ld [$77f5], a                                    ; $7366: $ea $f5 $77
	sub b                                            ; $7369: $90
	sbc e                                            ; $736a: $9b

Call_043_736b:
	rra                                              ; $736b: $1f
	rst GetHLinHL                                          ; $736c: $cf
	ld d, l                                          ; $736d: $55
	and d                                            ; $736e: $a2
	ld a, d                                          ; $736f: $7a
	db $eb                                           ; $7370: $eb
	ld a, b                                          ; $7371: $78
	ld h, c                                          ; $7372: $61
	sbc l                                            ; $7373: $9d
	xor d                                            ; $7374: $aa
	ld d, c                                          ; $7375: $51
	ld a, d                                          ; $7376: $7a
	db $db                                           ; $7377: $db
	ld a, [hl]                                       ; $7378: $7e
	or h                                             ; $7379: $b4
	sbc [hl]                                         ; $737a: $9e
	ld sp, hl                                        ; $737b: $f9
	halt                                             ; $737c: $76
	and h                                            ; $737d: $a4
	ld a, a                                          ; $737e: $7f
	db $fc                                           ; $737f: $fc
	sbc l                                            ; $7380: $9d
	ld d, b                                          ; $7381: $50
	nop                                              ; $7382: $00
	ld a, e                                          ; $7383: $7b
	ldh a, [c]                                       ; $7384: $f2
	sbc [hl]                                         ; $7385: $9e

jr_043_7386:
	dec d                                            ; $7386: $15
	halt                                             ; $7387: $76
	or h                                             ; $7388: $b4
	sbc [hl]                                         ; $7389: $9e
	ld d, l                                          ; $738a: $55
	ld a, d                                          ; $738b: $7a
	jp nc, $247b                                     ; $738c: $d2 $7b $24

	sbc l                                            ; $738f: $9d
	ld b, $aa                                        ; $7390: $06 $aa
	ld a, d                                          ; $7392: $7a
	jp nc, $e07a                                     ; $7393: $d2 $7a $e0

	add l                                            ; $7396: $85
	ld sp, hl                                        ; $7397: $f9
	inc bc                                           ; $7398: $03
	ld b, $1c                                        ; $7399: $06 $1c
	add hl, de                                       ; $739b: $19
	jr c, jr_043_7386                                ; $739c: $38 $e8

	jr nz, jr_043_7360                               ; $739e: $20 $c0

	cp $f9                                           ; $73a0: $fe $f9
	ei                                               ; $73a2: $fb
	and $fc                                          ; $73a3: $e6 $fc
	ld [hl], b                                       ; $73a5: $70
	call nz, $ab00                                   ; $73a6: $c4 $00 $ab
	ld h, a                                          ; $73a9: $67
	ld e, a                                          ; $73aa: $5f
	ccf                                              ; $73ab: $3f
	rst SubAFromDE                                          ; $73ac: $df
	ld a, e                                          ; $73ad: $7b
	rst SubAFromBC                                          ; $73ae: $e7
	rst SubAFromDE                                          ; $73af: $df
	ld [hl], b                                       ; $73b0: $70
	ld a, b                                          ; $73b1: $78
	sub b                                            ; $73b2: $90
	sbc e                                            ; $73b3: $9b
	jr nz, jr_043_7337                               ; $73b4: $20 $81

	rrca                                             ; $73b6: $0f
	rrca                                             ; $73b7: $0f
	db $dd                                           ; $73b8: $dd
	rst $38                                          ; $73b9: $ff
	sbc e                                            ; $73ba: $9b
	ccf                                              ; $73bb: $3f
	sbc l                                            ; $73bc: $9d
	sbc d                                            ; $73bd: $9a
	sub l                                            ; $73be: $95
	ld l, h                                          ; $73bf: $6c
	or b                                             ; $73c0: $b0
	rst SubAFromDE                                          ; $73c1: $df
	ret nz                                           ; $73c2: $c0

	ld a, a                                          ; $73c3: $7f
	ld h, e                                          ; $73c4: $63
	ld a, c                                          ; $73c5: $79
	ld d, e                                          ; $73c6: $53
	ld [hl], a                                       ; $73c7: $77
	xor a                                            ; $73c8: $af
	ld a, [$f397]                                    ; $73c9: $fa $97 $f3
	ld [hl], e                                       ; $73cc: $73
	or e                                             ; $73cd: $b3
	ld d, e                                          ; $73ce: $53
	and e                                            ; $73cf: $a3
	ld d, e                                          ; $73d0: $53
	inc hl                                           ; $73d1: $23
	inc de                                           ; $73d2: $13
	reti                                             ; $73d3: $d9


	rlca                                             ; $73d4: $07
	sub a                                            ; $73d5: $97
	ld a, [$ef75]                                    ; $73d6: $fa $75 $ef
	ld a, h                                          ; $73d9: $7c
	and b                                            ; $73da: $a0
	ld l, a                                          ; $73db: $6f
	cp [hl]                                          ; $73dc: $be
	ld d, h                                          ; $73dd: $54
	halt                                             ; $73de: $76
	xor c                                            ; $73df: $a9
	adc [hl]                                         ; $73e0: $8e
	ldh [$e3], a                                     ; $73e1: $e0 $e3
	rst $38                                          ; $73e3: $ff
	rst $38                                          ; $73e4: $ff
	xor d                                            ; $73e5: $aa
	ld [hl], l                                       ; $73e6: $75
	cp d                                             ; $73e7: $ba
	dec d                                            ; $73e8: $15
	dec sp                                           ; $73e9: $3b
	push af                                          ; $73ea: $f5
	xor d                                            ; $73eb: $aa
	ld d, c                                          ; $73ec: $51
	rst $38                                          ; $73ed: $ff

Call_043_73ee:
	rst $38                                          ; $73ee: $ff
	rst SubAFromDE                                          ; $73ef: $df
	rra                                              ; $73f0: $1f
	rra                                              ; $73f1: $1f
	sbc $ff                                          ; $73f2: $de $ff
	sbc [hl]                                         ; $73f4: $9e
	call z, $ecdb                                    ; $73f5: $cc $db $ec
	sbc l                                            ; $73f8: $9d
	ld l, h                                          ; $73f9: $6c
	ld hl, sp-$26                                    ; $73fa: $f8 $da
	ret c                                            ; $73fc: $d8

	db $dd                                           ; $73fd: $dd
	ld d, b                                          ; $73fe: $50
	sbc e                                            ; $73ff: $9b
	ld e, b                                          ; $7400: $58
	ld d, [hl]                                       ; $7401: $56
	ld e, h                                          ; $7402: $5c
	ld c, [hl]                                       ; $7403: $4e
	db $dd                                           ; $7404: $dd
	cpl                                              ; $7405: $2f
	adc c                                            ; $7406: $89
	daa                                              ; $7407: $27
	add hl, hl                                       ; $7408: $29
	inc hl                                           ; $7409: $23
	ld hl, $a860                                     ; $740a: $21 $60 $a8
	ld d, h                                          ; $740d: $54
	xor [hl]                                         ; $740e: $ae
	ld [hl], l                                       ; $740f: $75
	xor [hl]                                         ; $7410: $ae
	ld [hl], l                                       ; $7411: $75
	cp $9f                                           ; $7412: $fe $9f
	ld d, a                                          ; $7414: $57
	xor e                                            ; $7415: $ab
	ld d, c                                          ; $7416: $51
	adc d                                            ; $7417: $8a
	ld d, c                                          ; $7418: $51
	adc d                                            ; $7419: $8a
	ld bc, $1289                                     ; $741a: $01 $89 $12
	ld a, d                                          ; $741d: $7a
	add hl, de                                       ; $741e: $19
	sbc d                                            ; $741f: $9a
	db $eb                                           ; $7420: $eb
	ld e, l                                          ; $7421: $5d
	ei                                               ; $7422: $fb
	cp $ed                                           ; $7423: $fe $ed
	ld a, d                                          ; $7425: $7a
	add hl, bc                                       ; $7426: $09
	sbc d                                            ; $7427: $9a
	inc d                                            ; $7428: $14
	and d                                            ; $7429: $a2
	inc b                                            ; $742a: $04
	and b                                            ; $742b: $a0
	ld h, b                                          ; $742c: $60
	ld a, e                                          ; $742d: $7b
	cp $9c                                           ; $742e: $fe $9c
	ld [hl], b                                       ; $7430: $70
	jr nz, jr_043_74a3                               ; $7431: $20 $70

	call c, $9cf0                                    ; $7433: $dc $f0 $9c
	ldh [$f0], a                                     ; $7436: $e0 $f0
	ldh [$f1], a                                     ; $7438: $e0 $f1
	sub a                                            ; $743a: $97
	ld d, l                                          ; $743b: $55
	dec l                                            ; $743c: $2d
	dec d                                            ; $743d: $15
	dec c                                            ; $743e: $0d
	dec b                                            ; $743f: $05
	dec c                                            ; $7440: $0d
	dec b                                            ; $7441: $05
	inc b                                            ; $7442: $04
	reti                                             ; $7443: $d9


	inc bc                                           ; $7444: $03
	sbc l                                            ; $7445: $9d
	ld hl, sp-$07                                    ; $7446: $f8 $f9
	ld [hl], e                                       ; $7448: $73
	cp $9b                                           ; $7449: $fe $9b
	ld a, c                                          ; $744b: $79
	ld hl, sp-$08                                    ; $744c: $f8 $f8
	sbc b                                            ; $744e: $98
	call c, $9af8                                    ; $744f: $dc $f8 $9a
	xor [hl]                                         ; $7452: $ae
	cp e                                             ; $7453: $bb
	cp a                                             ; $7454: $bf
	cp e                                             ; $7455: $bb
	and e                                            ; $7456: $a3
	sbc $bb                                          ; $7457: $de $bb
	sbc l                                            ; $7459: $9d
	ld h, b                                          ; $745a: $60
	ld a, b                                          ; $745b: $78

jr_043_745c:
	sbc $7c                                          ; $745c: $de $7c

jr_043_745e:
	sub b                                            ; $745e: $90
	ld l, h                                          ; $745f: $6c
	ld a, h                                          ; $7460: $7c
	ld a, h                                          ; $7461: $7c
	ret nz                                           ; $7462: $c0

	ld l, b                                          ; $7463: $68
	jr nc, jr_043_746b                               ; $7464: $30 $05

	rst GetHLinHL                                          ; $7466: $cf
	call $c18a                                       ; $7467: $cd $8a $c1
	ld a, a                                          ; $746a: $7f

jr_043_746b:
	ccf                                              ; $746b: $3f
	rrca                                             ; $746c: $0f
	rst GetHLinHL                                          ; $746d: $cf
	db $dd                                           ; $746e: $dd
	ldh [rPCM34], a                                  ; $746f: $e0 $77
	cp l                                             ; $7471: $bd
	ld a, [hl]                                       ; $7472: $7e
	db $db                                           ; $7473: $db
	sbc l                                            ; $7474: $9d
	adc a                                            ; $7475: $8f
	ld [hl], l                                       ; $7476: $75
	ld l, l                                          ; $7477: $6d
	inc l                                            ; $7478: $2c
	sbc l                                            ; $7479: $9d
	ccf                                              ; $747a: $3f
	ld [hl+], a                                      ; $747b: $22
	ld l, a                                          ; $747c: $6f
	ldh a, [$9d]                                     ; $747d: $f0 $9d
	ldh a, [c]                                       ; $747f: $f2
	xor b                                            ; $7480: $a8
	ld l, a                                          ; $7481: $6f
	ldh a, [hDisp1_SCX]                                     ; $7482: $f0 $91
	db $fc                                           ; $7484: $fc
	ld b, h                                          ; $7485: $44
	ld bc, $1806                                     ; $7486: $01 $06 $18
	ld b, c                                          ; $7489: $41
	and $66                                          ; $748a: $e6 $66
	and [hl]                                         ; $748c: $a6
	ld b, $fe                                        ; $748d: $06 $fe
	ld hl, sp-$20                                    ; $748f: $f8 $e0
	ldh [c], a                                       ; $7491: $e2
	db $dd                                           ; $7492: $dd
	rlca                                             ; $7493: $07
	rst SubAFromDE                                          ; $7494: $df
	rst SubAFromBC                                          ; $7495: $e7
	db $db                                           ; $7496: $db
	rst SubAFromDE                                          ; $7497: $df
	sub a                                            ; $7498: $97
	db $10                                           ; $7499: $10
	ld c, $1e                                        ; $749a: $0e $1e
	ld e, $16                                        ; $749c: $1e $16
	ld d, $1e                                        ; $749e: $16 $1e
	ld e, $de                                        ; $74a0: $1e $de
	rst GetHLinHL                                          ; $74a2: $cf

jr_043_74a3:
	sub [hl]                                         ; $74a3: $96
	res 1, a                                         ; $74a4: $cb $8f
	ld c, e                                          ; $74a6: $4b
	adc b                                            ; $74a7: $88
	ld [$1f1f], sp                                   ; $74a8: $08 $1f $1f
	add hl, de                                       ; $74ab: $19
	add hl, de                                       ; $74ac: $19
	db $dd                                           ; $74ad: $dd
	rra                                              ; $74ae: $1f
	sbc c                                            ; $74af: $99
	adc d                                            ; $74b0: $8a
	sub l                                            ; $74b1: $95
	adc d                                            ; $74b2: $8a
	sub h                                            ; $74b3: $94
	adc b                                            ; $74b4: $88
	db $10                                           ; $74b5: $10
	ld [hl], d                                       ; $74b6: $72
	push bc                                          ; $74b7: $c5
	call c, Call_043_70c0                            ; $74b8: $dc $c0 $70
	inc hl                                           ; $74bb: $23
	or $9b                                           ; $74bc: $f6 $9b
	ld b, $07                                        ; $74be: $06 $07
	ld b, $06                                        ; $74c0: $06 $06
	db $dd                                           ; $74c2: $dd
	rlca                                             ; $74c3: $07
	db $dd                                           ; $74c4: $dd
	inc bc                                           ; $74c5: $03
	db $dd                                           ; $74c6: $dd
	ld [bc], a                                       ; $74c7: $02

jr_043_74c8:
	adc h                                            ; $74c8: $8c
	xor e                                            ; $74c9: $ab
	rla                                              ; $74ca: $17
	jr nz, jr_043_745e                               ; $74cb: $20 $91

	adc d                                            ; $74cd: $8a
	push de                                          ; $74ce: $d5

jr_043_74cf:
	xor e                                            ; $74cf: $ab
	rst SubAFromHL                                          ; $74d0: $d7
	db $fc                                           ; $74d1: $fc
	db $fc                                           ; $74d2: $fc
	rst $38                                          ; $74d3: $ff
	ld a, [hl]                                       ; $74d4: $7e
	ld [hl], l                                       ; $74d5: $75
	ld a, [hl+]                                      ; $74d6: $2a
	ld d, h                                          ; $74d7: $54
	jr z, jr_043_745c                                ; $74d8: $28 $82

	ld bc, $7aa2                                     ; $74da: $01 $a2 $7a
	ld [hl], $9d                                     ; $74dd: $36 $9d
	cp [hl]                                          ; $74df: $be
	db $fd                                           ; $74e0: $fd
	ld a, d                                          ; $74e1: $7a
	ret nz                                           ; $74e2: $c0

	sub d                                            ; $74e3: $92
	xor [hl]                                         ; $74e4: $ae
	ld d, l                                          ; $74e5: $55
	xor d                                            ; $74e6: $aa
	ld b, c                                          ; $74e7: $41
	ld [bc], a                                       ; $74e8: $02
	db $ec                                           ; $74e9: $ec
	ld l, h                                          ; $74ea: $6c
	ld h, h                                          ; $74eb: $64
	inc [hl]                                         ; $74ec: $34
	inc [hl]                                         ; $74ed: $34
	ld [hl], h                                       ; $74ee: $74
	sub h                                            ; $74ef: $94
	call nc, $d8de                                   ; $74f0: $d4 $de $d8
	rst SubAFromDE                                          ; $74f3: $df
	ret z                                            ; $74f4: $c8

	sub e                                            ; $74f5: $93
	adc b                                            ; $74f6: $88
	ld c, b                                          ; $74f7: $48
	ld [$4e4d], sp                                   ; $74f8: $08 $4d $4e
	ld c, l                                          ; $74fb: $4d
	ld b, b                                          ; $74fc: $40
	ld c, l                                          ; $74fd: $4d
	ld c, b                                          ; $74fe: $48

Jump_043_74ff:
	ld c, c                                          ; $74ff: $49
	ld b, l                                          ; $7500: $45
	ld [hl+], a                                      ; $7501: $22
	sbc $20                                          ; $7502: $de $20
	sub c                                            ; $7504: $91
	ld [hl+], a                                      ; $7505: $22
	daa                                              ; $7506: $27
	jr nz, @+$2a                                     ; $7507: $20 $28

	push de                                          ; $7509: $d5
	xor d                                            ; $750a: $aa
	ld d, [hl]                                       ; $750b: $56
	nop                                              ; $750c: $00
	ld a, [hl+]                                      ; $750d: $2a
	ld d, l                                          ; $750e: $55
	push de                                          ; $750f: $d5
	ld [$052a], sp                                   ; $7510: $08 $2a $05
	db $fd                                           ; $7513: $fd
	sub e                                            ; $7514: $93
	ld a, [hl+]                                      ; $7515: $2a
	rst FarCall                                          ; $7516: $f7
	ld d, l                                          ; $7517: $55
	cp e                                             ; $7518: $bb
	xor [hl]                                         ; $7519: $ae
	ld bc, $55aa                                     ; $751a: $01 $aa $55
	ld d, l                                          ; $751d: $55
	xor d                                            ; $751e: $aa
	xor d                                            ; $751f: $aa
	ld b, h                                          ; $7520: $44
	db $fd                                           ; $7521: $fd
	ld a, a                                          ; $7522: $7f
	or $95                                           ; $7523: $f6 $95
	or b                                             ; $7525: $b0

jr_043_7526:
	jr nz, jr_043_74c8                               ; $7526: $20 $a0

	ld b, b                                          ; $7528: $40
	nop                                              ; $7529: $00
	jr nz, jr_043_758c                               ; $752a: $20 $60

	ldh a, [$60]                                     ; $752c: $f0 $60
	ld h, b                                          ; $752e: $60
	db $dd                                           ; $752f: $dd
	jr nz, jr_043_74cf                               ; $7530: $20 $9d

	and b                                            ; $7532: $a0
	jr nz, jr_043_7526                               ; $7533: $20 $f1

	rst SubAFromDE                                          ; $7535: $df
	ld b, $de                                        ; $7536: $06 $de
	inc b                                            ; $7538: $04
	ld a, e                                          ; $7539: $7b
	ld l, l                                          ; $753a: $6d
	ld [hl], a                                       ; $753b: $77
	ld [hl], c                                       ; $753c: $71
	db $dd                                           ; $753d: $dd
	inc bc                                           ; $753e: $03
	sub d                                            ; $753f: $92
	db $fd                                           ; $7540: $fd
	rra                                              ; $7541: $1f
	dec c                                            ; $7542: $0d
	rrca                                             ; $7543: $0f
	dec c                                            ; $7544: $0d
	rra                                              ; $7545: $1f
	db $fd                                           ; $7546: $fd
	dec a                                            ; $7547: $3d
	ld hl, sp-$48                                    ; $7548: $f8 $b8
	sub b                                            ; $754a: $90
	sub b                                            ; $754b: $90
	ret c                                            ; $754c: $d8

	sbc $f8                                          ; $754d: $de $f8
	sbc $bf                                          ; $754f: $de $bf
	call c, $9cbb                                    ; $7551: $dc $bb $9c
	ld a, h                                          ; $7554: $7c
	ld e, h                                          ; $7555: $5c
	ld l, h                                          ; $7556: $6c
	ld a, e                                          ; $7557: $7b
	cp $df                                           ; $7558: $fe $df
	ld a, h                                          ; $755a: $7c
	adc h                                            ; $755b: $8c
	ld [$aa75], a                                    ; $755c: $ea $75 $aa
	push de                                          ; $755f: $d5
	rst GetHLinHL                                          ; $7560: $cf
	rst SubAFromHL                                          ; $7561: $d7
	jp $f095                                         ; $7562: $c3 $95 $f0


	jr nz, jr_043_7597                               ; $7565: $20 $30

	ldh [rIE], a                                     ; $7567: $e0 $ff
	push hl                                          ; $7569: $e5
	ldh a, [c]                                       ; $756a: $f2
	pop hl                                           ; $756b: $e1
	db $ec                                           ; $756c: $ec
	ld h, b                                          ; $756d: $60
	or b                                             ; $756e: $b0
	ld a, e                                          ; $756f: $7b
	sub d                                            ; $7570: $92
	sub d                                            ; $7571: $92
	ld d, l                                          ; $7572: $55
	add b                                            ; $7573: $80
	jr nc, jr_043_75a6                               ; $7574: $30 $30

	ccf                                              ; $7576: $3f
	nop                                              ; $7577: $00
	rst $38                                          ; $7578: $ff
	ld d, l                                          ; $7579: $55
	ld a, [hl+]                                      ; $757a: $2a
	ld a, a                                          ; $757b: $7f
	inc h                                            ; $757c: $24
	dec b                                            ; $757d: $05
	ld l, $74                                        ; $757e: $2e $74
	ld e, h                                          ; $7580: $5c
	sbc e                                            ; $7581: $9b
	ld [bc], a                                       ; $7582: $02
	inc e                                            ; $7583: $1c
	inc c                                            ; $7584: $0c
	db $fc                                           ; $7585: $fc
	ld a, e                                          ; $7586: $7b
	ldh a, [hDisp0_WX]                                     ; $7587: $f0 $89
	xor b                                            ; $7589: $a8
	db $fd                                           ; $758a: $fd
	cp c                                             ; $758b: $b9

jr_043_758c:
	ld c, e                                          ; $758c: $4b
	cp e                                             ; $758d: $bb
	ld c, e                                          ; $758e: $4b
	ei                                               ; $758f: $fb

Call_043_7590:
	res 1, e                                         ; $7590: $cb $8b
	add hl, de                                       ; $7592: $19
	rlca                                             ; $7593: $07
	ld de, $1705                                     ; $7594: $11 $05 $17

jr_043_7597:
	rst SubAFromBC                                          ; $7597: $e7
	ld d, a                                          ; $7598: $57
	rlca                                             ; $7599: $07
	rlca                                             ; $759a: $07
	db $dd                                           ; $759b: $dd
	db $dd                                           ; $759c: $dd
	reti                                             ; $759d: $d9


	db $dd                                           ; $759e: $dd
	db $dd                                           ; $759f: $dd
	rst SubAFromDE                                          ; $75a0: $df
	sbc h                                            ; $75a1: $9c
	ld e, $1a                                        ; $75a2: $1e $1a
	ld d, $7b                                        ; $75a4: $16 $7b

jr_043_75a6:
	cp $df                                           ; $75a6: $fe $df
	ld e, $8f                                        ; $75a8: $1e $8f
	call c, $c8d8                                    ; $75aa: $dc $d8 $c8
	ret nc                                           ; $75ad: $d0

	ret nc                                           ; $75ae: $d0

	ret z                                            ; $75af: $c8

	ret c                                            ; $75b0: $d8

	ret c                                            ; $75b1: $d8

	rra                                              ; $75b2: $1f
	rra                                              ; $75b3: $1f
	ld a, [de]                                       ; $75b4: $1a
	inc c                                            ; $75b5: $0c
	add hl, bc                                       ; $75b6: $09
	add hl, de                                       ; $75b7: $19
	dec e                                            ; $75b8: $1d
	rra                                              ; $75b9: $1f
	pop de                                           ; $75ba: $d1
	ret nz                                           ; $75bb: $c0

	pop af                                           ; $75bc: $f1

jr_043_75bd:
	sbc $07                                          ; $75bd: $de $07
	sbc $06                                          ; $75bf: $de $06
	ld l, [hl]                                       ; $75c1: $6e
	call nz, $02df                                   ; $75c2: $c4 $df $02
	rst SubAFromDE                                          ; $75c5: $df
	ld b, $df                                        ; $75c6: $06 $df
	cp $9a                                           ; $75c8: $fe $9a
	ld l, l                                          ; $75ca: $6d
	jr nz, jr_043_75d5                               ; $75cb: $20 $08

	ld d, l                                          ; $75cd: $55
	ld l, $7a                                        ; $75ce: $2e $7a
	ld d, h                                          ; $75d0: $54
	ld h, h                                          ; $75d1: $64
	or b                                             ; $75d2: $b0
	sbc d                                            ; $75d3: $9a
	ld a, d                                          ; $75d4: $7a

jr_043_75d5:
	and l                                            ; $75d5: $a5
	ld a, [bc]                                       ; $75d6: $0a

jr_043_75d7:
	ld d, h                                          ; $75d7: $54
	cp a                                             ; $75d8: $bf
	ld a, b                                          ; $75d9: $78
	jr nc, jr_043_75d7                               ; $75da: $30 $fb

	rst SubAFromDE                                          ; $75dc: $df
	call nc, Call_043_5499                           ; $75dd: $d4 $99 $54
	inc [hl]                                         ; $75e0: $34
	inc d                                            ; $75e1: $14
	call nc, $1494                                   ; $75e2: $d4 $94 $14
	reti                                             ; $75e5: $d9


	ld [$4f8b], sp                                   ; $75e6: $08 $8b $4f
	ld c, l                                          ; $75e9: $4d

Call_043_75ea:
	ld c, d                                          ; $75ea: $4a
	ld b, l                                          ; $75eb: $45
	ld c, d                                          ; $75ec: $4a
	ld b, h                                          ; $75ed: $44
	ld e, b                                          ; $75ee: $58
	ld d, d                                          ; $75ef: $52
	jr nz, jr_043_7614                               ; $75f0: $20 $22

	dec h                                            ; $75f2: $25
	ld a, [hl+]                                      ; $75f3: $2a
	dec h                                            ; $75f4: $25
	dec hl                                           ; $75f5: $2b
	daa                                              ; $75f6: $27
	cpl                                              ; $75f7: $2f
	cp a                                             ; $75f8: $bf
	ld d, a                                          ; $75f9: $57
	xor e                                            ; $75fa: $ab
	ld d, l                                          ; $75fb: $55
	halt                                             ; $75fc: $76
	call nz, Call_043_4083                           ; $75fd: $c4 $83 $40
	xor b                                            ; $7600: $a8
	ld d, h                                          ; $7601: $54
	xor d                                            ; $7602: $aa
	push de                                          ; $7603: $d5
	ld a, [rIE]                                    ; $7604: $fa $ff $ff

Call_043_7607:
	cp [hl]                                          ; $7607: $be
	ld e, l                                          ; $7608: $5d
	cp d                                             ; $7609: $ba
	ld d, l                                          ; $760a: $55
	xor d                                            ; $760b: $aa
	ld d, h                                          ; $760c: $54
	jr nz, jr_043_7611                               ; $760d: $20 $02

	ld b, b                                          ; $760f: $40
	and d                                            ; $7610: $a2

jr_043_7611:
	ld b, l                                          ; $7611: $45
	xor d                                            ; $7612: $aa
	ld d, l                                          ; $7613: $55

jr_043_7614:
	xor e                                            ; $7614: $ab
	rst SubAFromDE                                          ; $7615: $df
	rst $38                                          ; $7616: $ff
	ldh a, [$b0]                                     ; $7617: $f0 $b0
	ld h, b                                          ; $7619: $60
	jr nc, jr_043_768e                               ; $761a: $30 $72

	push bc                                          ; $761c: $c5
	ld a, a                                          ; $761d: $7f
	jr jr_043_75bd                                   ; $761e: $18 $9d

	ldh [$b0], a                                     ; $7620: $e0 $b0
	sbc $f0                                          ; $7622: $de $f0
	dec sp                                           ; $7624: $3b
	ld [hl], b                                       ; $7625: $70
	call c, $da07                                    ; $7626: $dc $07 $da
	inc bc                                           ; $7629: $03
	sbc [hl]                                         ; $762a: $9e
	ld [bc], a                                       ; $762b: $02
	db $dd                                           ; $762c: $dd
	ld hl, sp+$7c                                    ; $762d: $f8 $7c
	and l                                            ; $762f: $a5
	sbc l                                            ; $7630: $9d
	db $ec                                           ; $7631: $ec
	or b                                             ; $7632: $b0
	ld [hl], e                                       ; $7633: $73
	ld hl, sp-$68                                    ; $7634: $f8 $98
	rst FarCall                                          ; $7636: $f7
	rst SubAFromDE                                          ; $7637: $df
	ld a, a                                          ; $7638: $7f
	cp e                                             ; $7639: $bb
	cp h                                             ; $763a: $bc
	or b                                             ; $763b: $b0
	ldh [$75], a                                     ; $763c: $e0 $75
	cp $9b                                           ; $763e: $fe $9b
	ld a, h                                          ; $7640: $7c
	ld [hl], a                                       ; $7641: $77
	ld c, a                                          ; $7642: $4f
	ld a, a                                          ; $7643: $7f
	db $dd                                           ; $7644: $dd
	rst $38                                          ; $7645: $ff
	sub d                                            ; $7646: $92
	sub l                                            ; $7647: $95
	ld a, [hl+]                                      ; $7648: $2a
	dec d                                            ; $7649: $15
	ld [bc], a                                       ; $764a: $02
	dec b                                            ; $764b: $05
	ld [bc], a                                       ; $764c: $02
	nop                                              ; $764d: $00
	nop                                              ; $764e: $00
	ld [$ead5], a                                    ; $764f: $ea $d5 $ea
	db $fd                                           ; $7652: $fd
	ld a, [$1a7a]                                    ; $7653: $fa $7a $1a
	ld a, d                                          ; $7656: $7a
	call nz, $917f                                   ; $7657: $c4 $7f $91
	ld a, e                                          ; $765a: $7b
	rst SubAFromDE                                          ; $765b: $df
	ld a, e                                          ; $765c: $7b
	ld sp, hl                                        ; $765d: $f9
	ld a, a                                          ; $765e: $7f
	sub c                                            ; $765f: $91
	ld a, e                                          ; $7660: $7b
	sbc $77                                          ; $7661: $de $77
	ldh a, [rPCM12]                                  ; $7663: $f0 $76
	dec [hl]                                         ; $7665: $35
	ld [hl], a                                       ; $7666: $77
	ldh a, [$7b]                                     ; $7667: $f0 $7b
	ld [hl], c                                       ; $7669: $71
	sbc l                                            ; $766a: $9d
	rst $38                                          ; $766b: $ff
	ld b, c                                          ; $766c: $41
	ld a, b                                          ; $766d: $78
	ld b, b                                          ; $766e: $40
	ld a, a                                          ; $766f: $7f
	push af                                          ; $7670: $f5
	rst $38                                          ; $7671: $ff
	sbc [hl]                                         ; $7672: $9e
	cp [hl]                                          ; $7673: $be
	ld a, b                                          ; $7674: $78
	ld b, b                                          ; $7675: $40
	ld a, a                                          ; $7676: $7f
	xor $79                                          ; $7677: $ee $79
	ld [$dd89], a                                    ; $7679: $ea $89 $dd
	ld e, l                                          ; $767c: $5d
	dec e                                            ; $767d: $1d
	ld e, l                                          ; $767e: $5d
	add l                                            ; $767f: $85
	nop                                              ; $7680: $00
	ld bc, $1e1e                                     ; $7681: $01 $1e $1e
	sbc [hl]                                         ; $7684: $9e
	cp $a6                                           ; $7685: $fe $a6
	ld a, d                                          ; $7687: $7a
	rst $38                                          ; $7688: $ff
	rst $38                                          ; $7689: $ff
	jr jr_043_76a5                                   ; $768a: $18 $19

	add hl, de                                       ; $768c: $19
	dec de                                           ; $768d: $1b

jr_043_768e:
	rra                                              ; $768e: $1f
	rra                                              ; $768f: $1f
	ld e, a                                          ; $7690: $5f
	jp c, $9d1f                                      ; $7691: $da $1f $9d

	sbc a                                            ; $7694: $9f
	rst SubAFromBC                                          ; $7695: $e7
	reti                                             ; $7696: $d9


	add b                                            ; $7697: $80
	ld h, $c0                                        ; $7698: $26 $c0
	halt                                             ; $769a: $76
	add hl, de                                       ; $769b: $19
	ld l, [hl]                                       ; $769c: $6e
	add $7e                                          ; $769d: $c6 $7e
	cp b                                             ; $769f: $b8
	db $dd                                           ; $76a0: $dd
	rlca                                             ; $76a1: $07
	ld a, d                                          ; $76a2: $7a
	ld e, h                                          ; $76a3: $5c
	add [hl]                                         ; $76a4: $86

jr_043_76a5:
	ld de, $1180                                     ; $76a5: $11 $80 $11
	add d                                            ; $76a8: $82
	pop bc                                           ; $76a9: $c1
	nop                                              ; $76aa: $00
	xor d                                            ; $76ab: $aa
	ld d, a                                          ; $76ac: $57
	xor $7f                                          ; $76ad: $ee $7f
	rst AddAOntoHL                                          ; $76af: $ef
	rst $38                                          ; $76b0: $ff
	rst $38                                          ; $76b1: $ff
	db $eb                                           ; $76b2: $eb
	ld d, l                                          ; $76b3: $55
	and b                                            ; $76b4: $a0
	ld bc, $0400                                     ; $76b5: $01 $00 $04
	adc d                                            ; $76b8: $8a
	dec d                                            ; $76b9: $15
	inc d                                            ; $76ba: $14
	xor d                                            ; $76bb: $aa
	ld e, a                                          ; $76bc: $5f
	cp $dd                                           ; $76bd: $fe $dd
	rst $38                                          ; $76bf: $ff
	sub e                                            ; $76c0: $93
	ld [hl], h                                       ; $76c1: $74
	db $f4                                           ; $76c2: $f4
	cp h                                             ; $76c3: $bc
	ld l, h                                          ; $76c4: $6c
	inc l                                            ; $76c5: $2c
	inc a                                            ; $76c6: $3c
	cp h                                             ; $76c7: $bc
	inc a                                            ; $76c8: $3c
	ld [$4008], sp                                   ; $76c9: $08 $08 $40
	sub b                                            ; $76cc: $90
	db $dd                                           ; $76cd: $dd
	ret nc                                           ; $76ce: $d0

	sub a                                            ; $76cf: $97
	ld d, l                                          ; $76d0: $55
	ld e, [hl]                                       ; $76d1: $5e
	ld d, a                                          ; $76d2: $57
	ld e, [hl]                                       ; $76d3: $5e
	ld h, a                                          ; $76d4: $67
	xor $67                                          ; $76d5: $ee $67
	ld l, a                                          ; $76d7: $6f
	db $dd                                           ; $76d8: $dd
	cpl                                              ; $76d9: $2f
	db $dd                                           ; $76da: $dd
	ccf                                              ; $76db: $3f
	ld a, a                                          ; $76dc: $7f
	push de                                          ; $76dd: $d5
	sbc [hl]                                         ; $76de: $9e
	ld b, h                                          ; $76df: $44
	ld a, e                                          ; $76e0: $7b
	ld d, l                                          ; $76e1: $55
	sbc l                                            ; $76e2: $9d
	ld e, l                                          ; $76e3: $5d
	xor d                                            ; $76e4: $aa
	reti                                             ; $76e5: $d9


	rst $38                                          ; $76e6: $ff
	sbc b                                            ; $76e7: $98
	ld b, l                                          ; $76e8: $45
	ld a, [hl+]                                      ; $76e9: $2a
	ld d, a                                          ; $76ea: $57
	xor e                                            ; $76eb: $ab
	ld [hl], a                                       ; $76ec: $77
	xor e                                            ; $76ed: $ab
	ld [hl], a                                       ; $76ee: $77
	ld a, e                                          ; $76ef: $7b
	or [hl]                                          ; $76f0: $b6
	db $db                                           ; $76f1: $db
	rst $38                                          ; $76f2: $ff
	ld [hl], h                                       ; $76f3: $74
	ld b, c                                          ; $76f4: $41
	ld a, e                                          ; $76f5: $7b
	cp $7c                                           ; $76f6: $fe $7c
	ld b, [hl]                                       ; $76f8: $46
	jp c, $fdf0                                      ; $76f9: $da $f0 $fd

	sbc e                                            ; $76fc: $9b
	ld bc, $1004                                     ; $76fd: $01 $04 $10
	ld b, b                                          ; $7700: $40
	ld l, a                                          ; $7701: $6f
	ld [hl], e                                       ; $7702: $73
	sbc e                                            ; $7703: $9b
	rrca                                             ; $7704: $0f
	ccf                                              ; $7705: $3f
	rlca                                             ; $7706: $07
	ld bc, $f47b                                     ; $7707: $01 $7b $f4
	sbc [hl]                                         ; $770a: $9e
	inc b                                            ; $770b: $04
	ld a, d                                          ; $770c: $7a
	db $eb                                           ; $770d: $eb
	sbc h                                            ; $770e: $9c
	rlca                                             ; $770f: $07
	rrca                                             ; $7710: $0f
	ccf                                              ; $7711: $3f
	ld [hl], b                                       ; $7712: $70
	adc h                                            ; $7713: $8c
	ld a, d                                          ; $7714: $7a
	db $f4                                           ; $7715: $f4
	ld a, e                                          ; $7716: $7b
	db $fd                                           ; $7717: $fd
	sbc [hl]                                         ; $7718: $9e
	ld bc, $ffda                                     ; $7719: $01 $da $ff
	sbc [hl]                                         ; $771c: $9e
	cp $fe                                           ; $771d: $fe $fe
	sbc e                                            ; $771f: $9b
	dec b                                            ; $7720: $05
	ld a, [bc]                                       ; $7721: $0a
	dec b                                            ; $7722: $05
	add d                                            ; $7723: $82
	ld a, e                                          ; $7724: $7b
	ld b, $97                                        ; $7725: $06 $97
	rst $38                                          ; $7727: $ff
	ld a, [$faf5]                                    ; $7728: $fa $f5 $fa
	ld a, l                                          ; $772b: $7d
	xor d                                            ; $772c: $aa
	adc b                                            ; $772d: $88
	dec d                                            ; $772e: $15
	halt                                             ; $772f: $76
	and $7f                                          ; $7730: $e6 $7f
	cp $9d                                           ; $7732: $fe $9d
	ld [hl], a                                       ; $7734: $77
	ld [$f973], a                                    ; $7735: $ea $73 $f9
	sbc l                                            ; $7738: $9d
	xor d                                            ; $7739: $aa
	ld a, [hl+]                                      ; $773a: $2a
	ld l, a                                          ; $773b: $6f
	ld sp, hl                                        ; $773c: $f9
	ld a, h                                          ; $773d: $7c
	cp $6f                                           ; $773e: $fe $6f
	ld sp, hl                                        ; $7740: $f9
	ld a, [hl]                                       ; $7741: $7e
	sub $9c                                          ; $7742: $d6 $9c
	ld b, b                                          ; $7744: $40
	and b                                            ; $7745: $a0
	dec b                                            ; $7746: $05
	ld [hl], a                                       ; $7747: $77
	rst FarCall                                          ; $7748: $f7
	sbc e                                            ; $7749: $9b
	rst $38                                          ; $774a: $ff
	cp a                                             ; $774b: $bf
	ld e, a                                          ; $774c: $5f
	ld a, [$f073]                                    ; $774d: $fa $73 $f0
	sbc h                                            ; $7750: $9c
	nop                                              ; $7751: $00
	and b                                            ; $7752: $a0
	ld d, b                                          ; $7753: $50
	ld [hl], e                                       ; $7754: $73
	ldh a, [$9c]                                     ; $7755: $f0 $9c
	rst $38                                          ; $7757: $ff
	ld e, a                                          ; $7758: $5f
	xor a                                            ; $7759: $af
	ld l, a                                          ; $775a: $6f
	ldh a, [$fd]                                     ; $775b: $f0 $fd
	sbc l                                            ; $775d: $9d
	add b                                            ; $775e: $80
	ld d, b                                          ; $775f: $50
	db $db                                           ; $7760: $db
	rst $38                                          ; $7761: $ff
	sub h                                            ; $7762: $94
	ld a, a                                          ; $7763: $7f
	xor a                                            ; $7764: $af
	add a                                            ; $7765: $87
	ld [hl], c                                       ; $7766: $71
	inc l                                            ; $7767: $2c
	ld d, $03                                        ; $7768: $16 $03
	dec b                                            ; $776a: $05
	ld [bc], a                                       ; $776b: $02
	dec b                                            ; $776c: $05
	ld sp, hl                                        ; $776d: $f9
	ld [hl], e                                       ; $776e: $73
	ld [de], a                                       ; $776f: $12
	rst SubAFromDE                                          ; $7770: $df
	rst $38                                          ; $7771: $ff
	rst SubAFromDE                                          ; $7772: $df
	add b                                            ; $7773: $80
	ld a, e                                          ; $7774: $7b
	ldh [c], a                                       ; $7775: $e2
	sbc h                                            ; $7776: $9c
	ld [hl], b                                       ; $7777: $70
	cp h                                             ; $7778: $bc
	ld e, [hl]                                       ; $7779: $5e
	sbc $c0                                          ; $777a: $de $c0
	sbc l                                            ; $777c: $9d
	ldh a, [$fc]                                     ; $777d: $f0 $fc
	ld [hl], a                                       ; $777f: $77
	ld [hl], b                                       ; $7780: $70
	db $f4                                           ; $7781: $f4
	sbc l                                            ; $7782: $9d
	add b                                            ; $7783: $80
	ldh [$7a], a                                     ; $7784: $e0 $7a
	jp nz, $fe73                                     ; $7786: $c2 $73 $fe

	reti                                             ; $7789: $d9


	rlca                                             ; $778a: $07
	sbc h                                            ; $778b: $9c
	and e                                            ; $778c: $a3
	push bc                                          ; $778d: $c5
	xor e                                            ; $778e: $ab
	ld a, b                                          ; $778f: $78
	ld b, d                                          ; $7790: $42
	sbc l                                            ; $7791: $9d
	db $eb                                           ; $7792: $eb
	rst SubAFromHL                                          ; $7793: $d7

jr_043_7794:
	reti                                             ; $7794: $d9


	rst $38                                          ; $7795: $ff
	sbc d                                            ; $7796: $9a
	adc d                                            ; $7797: $8a
	rla                                              ; $7798: $17
	xor d                                            ; $7799: $aa
	ld e, a                                          ; $779a: $5f
	xor [hl]                                         ; $779b: $ae
	ld a, e                                          ; $779c: $7b
	cp $d9                                           ; $779d: $fe $d9
	rst $38                                          ; $779f: $ff
	rst SubAFromDE                                          ; $77a0: $df
	xor h                                            ; $77a1: $ac
	db $db                                           ; $77a2: $db
	cp h                                             ; $77a3: $bc
	reti                                             ; $77a4: $d9


	ret nc                                           ; $77a5: $d0

	sub a                                            ; $77a6: $97
	rst AddAOntoHL                                          ; $77a7: $ef
	ld l, a                                          ; $77a8: $6f
	ld l, a                                          ; $77a9: $6f
	rst AddAOntoHL                                          ; $77aa: $ef
	ld a, a                                          ; $77ab: $7f
	rst $38                                          ; $77ac: $ff
	ld a, a                                          ; $77ad: $7f
	rst $38                                          ; $77ae: $ff
	db $dd                                           ; $77af: $dd
	ccf                                              ; $77b0: $3f
	db $dd                                           ; $77b1: $dd
	cpl                                              ; $77b2: $2f
	sbc e                                            ; $77b3: $9b
	ld a, l                                          ; $77b4: $7d
	cp e                                             ; $77b5: $bb
	rst $38                                          ; $77b6: $ff
	ei                                               ; $77b7: $fb
	ld [hl], a                                       ; $77b8: $77
	jr jr_043_7794                                   ; $77b9: $18 $d9

	rst $38                                          ; $77bb: $ff
	sbc [hl]                                         ; $77bc: $9e
	ld [hl], a                                       ; $77bd: $77
	call c, $9dff                                    ; $77be: $dc $ff $9d
	cp h                                             ; $77c1: $bc
	ldh a, [$dd]                                     ; $77c2: $f0 $dd
	rst $38                                          ; $77c4: $ff
	sub c                                            ; $77c5: $91
	db $fc                                           ; $77c6: $fc
	di                                               ; $77c7: $f3
	rst GetHLinHL                                          ; $77c8: $cf
	ccf                                              ; $77c9: $3f
	pop hl                                           ; $77ca: $e1
	db $e4                                           ; $77cb: $e4
	jp nz, $ca35                                     ; $77cc: $c2 $35 $ca

	ld d, a                                          ; $77cf: $57
	xor h                                            ; $77d0: $ac
	ld d, e                                          ; $77d1: $53
	ldh a, [$f3]                                     ; $77d2: $f0 $f3
	db $db                                           ; $77d4: $db
	rst $38                                          ; $77d5: $ff
	sbc [hl]                                         ; $77d6: $9e
	jr nz, jr_043_7854                               ; $77d7: $20 $7b

	dec sp                                           ; $77d9: $3b
	sbc h                                            ; $77da: $9c
	xor [hl]                                         ; $77db: $ae
	ld d, a                                          ; $77dc: $57
	xor [hl]                                         ; $77dd: $ae
	ld [hl], c                                       ; $77de: $71
	or h                                             ; $77df: $b4
	db $dd                                           ; $77e0: $dd
	rst $38                                          ; $77e1: $ff
	sbc d                                            ; $77e2: $9a
	ld a, [hl-]                                      ; $77e3: $3a
	call c, $5028                                    ; $77e4: $dc $28 $50
	xor b                                            ; $77e7: $a8
	ld a, e                                          ; $77e8: $7b
	cp $d9                                           ; $77e9: $fe $d9
	rst $38                                          ; $77eb: $ff
	rst $38                                          ; $77ec: $ff
	sbc h                                            ; $77ed: $9c
	ld [bc], a                                       ; $77ee: $02
	ld bc, $7228                                     ; $77ef: $01 $28 $72
	ret nz                                           ; $77f2: $c0

	sbc l                                            ; $77f3: $9d

jr_043_77f4:
	db $fd                                           ; $77f4: $fd
	cp $7b                                           ; $77f5: $fe $7b
	ld l, e                                          ; $77f7: $6b
	sbc [hl]                                         ; $77f8: $9e
	cp $6e                                           ; $77f9: $fe $6e
	jp hl                                            ; $77fb: $e9


	sbc [hl]                                         ; $77fc: $9e
	ld a, [bc]                                       ; $77fd: $0a
	ld [hl], h                                       ; $77fe: $74
	ld e, h                                          ; $77ff: $5c
	ld a, e                                          ; $7800: $7b
	cp $9d                                           ; $7801: $fe $9d
	push af                                          ; $7803: $f5
	xor d                                            ; $7804: $aa
	ld l, d                                          ; $7805: $6a
	reti                                             ; $7806: $d9


	ld l, e                                          ; $7807: $6b
	ldh a, [$7f]                                     ; $7808: $f0 $7f
	cp $03                                           ; $780a: $fe $03
	ldh a, [rWX]                                     ; $780c: $f0 $4b
	ldh a, [$7f]                                     ; $780e: $f0 $7f
	sub [hl]                                         ; $7810: $96
	ld a, l                                          ; $7811: $7d
	ld d, c                                          ; $7812: $51
	ld a, a                                          ; $7813: $7f
	ld sp, hl                                        ; $7814: $f9
	sbc c                                            ; $7815: $99
	and d                                            ; $7816: $a2
	ld d, c                                          ; $7817: $51
	ld d, a                                          ; $7818: $57
	xor a                                            ; $7819: $af
	ld d, l                                          ; $781a: $55
	xor e                                            ; $781b: $ab
	ld a, d                                          ; $781c: $7a
	ld [$ae9e], sp                                   ; $781d: $08 $9e $ae
	ld a, c                                          ; $7820: $79
	dec [hl]                                         ; $7821: $35
	sbc l                                            ; $7822: $9d
	nop                                              ; $7823: $00
	jr nc, jr_043_78a0                               ; $7824: $30 $7a

	ld c, [hl]                                       ; $7826: $4e
	db $dd                                           ; $7827: $dd
	rst $38                                          ; $7828: $ff
	sbc [hl]                                         ; $7829: $9e
	rst GetHLinHL                                          ; $782a: $cf
	ld a, e                                          ; $782b: $7b
	jr z, jr_043_78ad                                ; $782c: $28 $7f

	jp hl                                            ; $782e: $e9


	ld a, [hl]                                       ; $782f: $7e
	inc [hl]                                         ; $7830: $34
	ld a, a                                          ; $7831: $7f
	cp $7e                                           ; $7832: $fe $7e
	ld c, [hl]                                       ; $7834: $4e
	reti                                             ; $7835: $d9


	rst $38                                          ; $7836: $ff
	ld a, l                                          ; $7837: $7d
	ld [hl], a                                       ; $7838: $77
	sbc b                                            ; $7839: $98
	ldh a, [$5e]                                     ; $783a: $f0 $5e
	xor a                                            ; $783c: $af
	ld d, [hl]                                       ; $783d: $56
	cp b                                             ; $783e: $b8
	ld d, l                                          ; $783f: $55
	ld hl, sp+$76                                    ; $7840: $f8 $76
	or e                                             ; $7842: $b3
	sbc $ff                                          ; $7843: $de $ff
	halt                                             ; $7845: $76
	call nz, $c797                                   ; $7846: $c4 $97 $c7
	pop af                                           ; $7849: $f1
	db $fc                                           ; $784a: $fc
	ld a, a                                          ; $784b: $7f
	rlca                                             ; $784c: $07
	rlca                                             ; $784d: $07
	add a                                            ; $784e: $87
	rst SubAFromBC                                          ; $784f: $e7
	db $dd                                           ; $7850: $dd
	rst $38                                          ; $7851: $ff
	sbc e                                            ; $7852: $9b
	rst AddAOntoHL                                          ; $7853: $ef

jr_043_7854:
	rst SubAFromHL                                          ; $7854: $d7
	rst AddAOntoHL                                          ; $7855: $ef
	rst SubAFromDE                                          ; $7856: $df
	ld a, c                                          ; $7857: $79
	db $d3                                           ; $7858: $d3
	ld l, e                                          ; $7859: $6b
	jr nc, jr_043_77f4                               ; $785a: $30 $98

	ld a, a                                          ; $785c: $7f
	sbc a                                            ; $785d: $9f
	cp [hl]                                          ; $785e: $be
	rst SubAFromDE                                          ; $785f: $df
	cp a                                             ; $7860: $bf
	rst SubAFromDE                                          ; $7861: $df
	cp a                                             ; $7862: $bf
	sub $ff                                          ; $7863: $d6 $ff
	call c, $9cbc                                    ; $7865: $dc $bc $9c
	cp [hl]                                          ; $7868: $be
	cp h                                             ; $7869: $bc
	cp [hl]                                          ; $786a: $be
	reti                                             ; $786b: $d9


	ret nc                                           ; $786c: $d0

	ld a, d                                          ; $786d: $7a
	call nz, $de9a                                   ; $786e: $c4 $9a $de
	ld d, a                                          ; $7871: $57
	rst $38                                          ; $7872: $ff
	ld e, h                                          ; $7873: $5c
	ret c                                            ; $7874: $d8

	db $dd                                           ; $7875: $dd
	cpl                                              ; $7876: $2f
	sbc h                                            ; $7877: $9c
	inc l                                            ; $7878: $2c
	inc hl                                           ; $7879: $23
	scf                                              ; $787a: $37
	ld a, c                                          ; $787b: $79
	call z, $fd9d                                    ; $787c: $cc $9d $fd
	ldh a, [$75]                                     ; $787f: $f0 $75
	or e                                             ; $7881: $b3
	halt                                             ; $7882: $76
	call nc, $ffdd                                   ; $7883: $d4 $dd $ff
	sub a                                            ; $7886: $97
	ld a, [$aadd]                                    ; $7887: $fa $dd $aa
	ld d, a                                          ; $788a: $57
	xor l                                            ; $788b: $ad
	db $db                                           ; $788c: $db
	db $ed                                           ; $788d: $ed
	or $d9                                           ; $788e: $f6 $d9
	rst $38                                          ; $7890: $ff
	ld [hl], e                                       ; $7891: $73
	ld c, e                                          ; $7892: $4b
	sbc h                                            ; $7893: $9c
	push de                                          ; $7894: $d5
	ld l, d                                          ; $7895: $6a
	push de                                          ; $7896: $d5
	reti                                             ; $7897: $d9


	rst $38                                          ; $7898: $ff
	sbc h                                            ; $7899: $9c
	xor [hl]                                         ; $789a: $ae
	db $fd                                           ; $789b: $fd
	cp [hl]                                          ; $789c: $be
	ld a, b                                          ; $789d: $78
	adc a                                            ; $789e: $8f
	ld [hl], l                                       ; $789f: $75

jr_043_78a0:
	ldh a, [$db]                                     ; $78a0: $f0 $db
	rst $38                                          ; $78a2: $ff
	ld a, b                                          ; $78a3: $78
	and e                                            ; $78a4: $a3
	sbc [hl]                                         ; $78a5: $9e
	inc d                                            ; $78a6: $14
	cp $9e                                           ; $78a7: $fe $9e
	ld d, h                                          ; $78a9: $54
	reti                                             ; $78aa: $d9


	rst $38                                          ; $78ab: $ff
	sbc [hl]                                         ; $78ac: $9e

jr_043_78ad:
	inc b                                            ; $78ad: $04
	cp $7f                                           ; $78ae: $fe $7f
	ld e, [hl]                                       ; $78b0: $5e
	sbc l                                            ; $78b1: $9d
	ld bc, $7648                                     ; $78b2: $01 $48 $76
	ld l, e                                          ; $78b5: $6b
	ld a, [hl]                                       ; $78b6: $7e
	cp [hl]                                          ; $78b7: $be
	ld [hl], a                                       ; $78b8: $77
	ret nz                                           ; $78b9: $c0

	sbc c                                            ; $78ba: $99
	ld a, [hl+]                                      ; $78bb: $2a
	ld d, h                                          ; $78bc: $54
	and d                                            ; $78bd: $a2
	ld d, l                                          ; $78be: $55
	ld [hl+], a                                      ; $78bf: $22
	ld bc, $bb7b                                     ; $78c0: $01 $7b $bb
	sbc e                                            ; $78c3: $9b
	xor e                                            ; $78c4: $ab
	ld e, l                                          ; $78c5: $5d
	xor d                                            ; $78c6: $aa
	db $dd                                           ; $78c7: $dd
	ld l, [hl]                                       ; $78c8: $6e
	or b                                             ; $78c9: $b0
	ld a, a                                          ; $78ca: $7f
	ret nz                                           ; $78cb: $c0

	sbc [hl]                                         ; $78cc: $9e
	dec d                                            ; $78cd: $15
	ld [hl], d                                       ; $78ce: $72
	ldh a, [c]                                       ; $78cf: $f2
	ld a, [hl]                                       ; $78d0: $7e
	cp $9e                                           ; $78d1: $fe $9e
	ld [$c002], a                                    ; $78d3: $ea $02 $c0
	ld [hl], e                                       ; $78d6: $73
	ret nc                                           ; $78d7: $d0

	sbc l                                            ; $78d8: $9d
	and b                                            ; $78d9: $a0
	ld b, b                                          ; $78da: $40
	ld l, a                                          ; $78db: $6f
	ret nc                                           ; $78dc: $d0

	sbc h                                            ; $78dd: $9c
	ld e, a                                          ; $78de: $5f
	cp a                                             ; $78df: $bf
	xor b                                            ; $78e0: $a8
	ld [hl], e                                       ; $78e1: $73
	add d                                            ; $78e2: $82
	sbc h                                            ; $78e3: $9c
	ld a, [hl+]                                      ; $78e4: $2a
	ld de, $7757                                     ; $78e5: $11 $57 $77
	jp nz, $ac7f                                     ; $78e8: $c2 $7f $ac

	sbc h                                            ; $78eb: $9c
	xor $a0                                          ; $78ec: $ee $a0
	ld b, b                                          ; $78ee: $40
	ld a, d                                          ; $78ef: $7a

jr_043_78f0:
	ld b, b                                          ; $78f0: $40
	sub e                                            ; $78f1: $93
	ld d, h                                          ; $78f2: $54
	adc d                                            ; $78f3: $8a
	dec d                                            ; $78f4: $15
	ld e, a                                          ; $78f5: $5f
	cp a                                             ; $78f6: $bf
	rst SubAFromHL                                          ; $78f7: $d7
	xor a                                            ; $78f8: $af
	ld d, a                                          ; $78f9: $57
	xor e                                            ; $78fa: $ab
	ld [hl], l                                       ; $78fb: $75
	ld [$7902], a                                    ; $78fc: $ea $02 $79
	ld [hl], h                                       ; $78ff: $74

Jump_043_7900:
	ld a, [hl]                                       ; $7900: $7e
	jp nz, $0a9d                                     ; $7901: $c2 $9d $0a

	dec d                                            ; $7904: $15
	reti                                             ; $7905: $d9


	rst $38                                          ; $7906: $ff
	sbc b                                            ; $7907: $98
	cp d                                             ; $7908: $ba
	ld e, l                                          ; $7909: $5d
	xor d                                            ; $790a: $aa
	ld d, l                                          ; $790b: $55
	cp d                                             ; $790c: $ba
	ld [hl], l                                       ; $790d: $75
	ld [$5063], a                                    ; $790e: $ea $63 $50
	ld a, e                                          ; $7911: $7b
	db $db                                           ; $7912: $db
	ld [hl], e                                       ; $7913: $73
	or l                                             ; $7914: $b5
	reti                                             ; $7915: $d9


	rst $38                                          ; $7916: $ff
	ld a, l                                          ; $7917: $7d
	ld a, [hl+]                                      ; $7918: $2a
	ld a, h                                          ; $7919: $7c
	ld [$9f9a], a                                    ; $791a: $ea $9a $9f
	db $fd                                           ; $791d: $fd
	cp a                                             ; $791e: $bf
	ld b, a                                          ; $791f: $47
	rst SubAFromBC                                          ; $7920: $e7
	ld h, l                                          ; $7921: $65
	ccf                                              ; $7922: $3f
	ld a, d                                          ; $7923: $7a
	cp e                                             ; $7924: $bb
	ld a, e                                          ; $7925: $7b
	db $ec                                           ; $7926: $ec
	ld a, e                                          ; $7927: $7b
	di                                               ; $7928: $f3
	ld a, [hl]                                       ; $7929: $7e
	or h                                             ; $792a: $b4
	ld a, a                                          ; $792b: $7f
	db $ec                                           ; $792c: $ec
	rst SubAFromDE                                          ; $792d: $df
	rst $38                                          ; $792e: $ff
	sub a                                            ; $792f: $97
	sbc l                                            ; $7930: $9d
	sbc [hl]                                         ; $7931: $9e
	sbc l                                            ; $7932: $9d
	cp $fd                                           ; $7933: $fe $fd
	cp $dd                                           ; $7935: $fe $dd
	ld a, [hl]                                       ; $7937: $7e
	sbc $f0                                          ; $7938: $de $f0
	rst SubAFromDE                                          ; $793a: $df
	sub b                                            ; $793b: $90
	sbc h                                            ; $793c: $9c
	ret nc                                           ; $793d: $d0

	jr nc, jr_043_78f0                               ; $793e: $30 $b0

	ld d, a                                          ; $7940: $57
	nop                                              ; $7941: $00
	sbc [hl]                                         ; $7942: $9e
	ld d, l                                          ; $7943: $55
	sbc $77                                          ; $7944: $de $77
	sbc [hl]                                         ; $7946: $9e
	inc sp                                           ; $7947: $33
	db $dd                                           ; $7948: $dd
	ld [hl], a                                       ; $7949: $77
	sbc h                                            ; $794a: $9c
	ld [hl], l                                       ; $794b: $75
	ld d, l                                          ; $794c: $55
	ld d, a                                          ; $794d: $57
	db $db                                           ; $794e: $db
	ld [hl], a                                       ; $794f: $77
	ld a, a                                          ; $7950: $7f
	rst FarCall                                          ; $7951: $f7
	rst SubAFromDE                                          ; $7952: $df
	ld d, l                                          ; $7953: $55
	ld a, a                                          ; $7954: $7f
	push af                                          ; $7955: $f5
	sbc [hl]                                         ; $7956: $9e
	ld [hl], l                                       ; $7957: $75
	ld a, e                                          ; $7958: $7b
	ldh a, [c]                                       ; $7959: $f2
	rst SubAFromDE                                          ; $795a: $df
	ld d, l                                          ; $795b: $55
	sbc l                                            ; $795c: $9d
	inc sp                                           ; $795d: $33
	dec [hl]                                         ; $795e: $35
	ld [hl], a                                       ; $795f: $77
	ldh [rPCM34], a                                  ; $7960: $e0 $77
	rst FarCall                                          ; $7962: $f7
	ld a, e                                          ; $7963: $7b
	or $7b                                           ; $7964: $f6 $7b
	xor $7f                                          ; $7966: $ee $7f
	db $e4                                           ; $7968: $e4
	sbc [hl]                                         ; $7969: $9e
	ld d, e                                          ; $796a: $53
	ld [hl], a                                       ; $796b: $77
	or $7b                                           ; $796c: $f6 $7b
	db $eb                                           ; $796e: $eb
	ld [hl], a                                       ; $796f: $77
	db $ed                                           ; $7970: $ed
	sbc $33                                          ; $7971: $de $33
	sbc e                                            ; $7973: $9b
	ld b, l                                          ; $7974: $45
	ld [hl], l                                       ; $7975: $75
	ld d, a                                          ; $7976: $57
	ld d, h                                          ; $7977: $54
	ld [hl], a                                       ; $7978: $77
	db $ec                                           ; $7979: $ec
	rst SubAFromDE                                          ; $797a: $df
	inc sp                                           ; $797b: $33
	sbc e                                            ; $797c: $9b
	ld d, l                                          ; $797d: $55
	ld h, [hl]                                       ; $797e: $66
	ld h, [hl]                                       ; $797f: $66
	ld d, l                                          ; $7980: $55
	ld [hl], e                                       ; $7981: $73
	or $7b                                           ; $7982: $f6 $7b
	rst FarCall                                          ; $7984: $f7
	sbc l                                            ; $7985: $9d
	ld h, [hl]                                       ; $7986: $66
	ld h, l                                          ; $7987: $65
	ld l, a                                          ; $7988: $6f
	ret c                                            ; $7989: $d8

	db $dd                                           ; $798a: $dd
	ld h, [hl]                                       ; $798b: $66
	sbc [hl]                                         ; $798c: $9e
	ld h, l                                          ; $798d: $65
	ld a, e                                          ; $798e: $7b
	or $df                                           ; $798f: $f6 $df
	ld d, l                                          ; $7991: $55
	ld [hl], e                                       ; $7992: $73
	or $9d                                           ; $7993: $f6 $9d
	ld d, l                                          ; $7995: $55
	ld [hl], e                                       ; $7996: $73
	cp c                                             ; $7997: $b9
	add hl, bc                                       ; $7998: $09
	sbc l                                            ; $7999: $9d
	nop                                              ; $799a: $00
	rst $38                                          ; $799b: $ff
	inc bc                                           ; $799c: $03
	cp $03                                           ; $799d: $fe $03
	cp $03                                           ; $799f: $fe $03
	cp $03                                           ; $79a1: $fe $03
	cp $6f                                           ; $79a3: $fe $6f
	cp $9b                                           ; $79a5: $fe $9b
	ld [bc], a                                       ; $79a7: $02
	db $fd                                           ; $79a8: $fd
	ld d, l                                          ; $79a9: $55
	xor d                                            ; $79aa: $aa
	ld e, a                                          ; $79ab: $5f
	ldh a, [c]                                       ; $79ac: $f2
	sbc e                                            ; $79ad: $9b
	dec d                                            ; $79ae: $15
	ld [$55aa], a                                    ; $79af: $ea $aa $55
	ld d, a                                          ; $79b2: $57
	ldh a, [$7f]                                     ; $79b3: $f0 $7f
	db $f4                                           ; $79b5: $f4
	ld d, a                                          ; $79b6: $57
	ldh a, [$9d]                                     ; $79b7: $f0 $9d
	ld a, [hl+]                                      ; $79b9: $2a
	push de                                          ; $79ba: $d5
	ld c, a                                          ; $79bb: $4f
	ldh a, [$9d]                                     ; $79bc: $f0 $9d
	xor b                                            ; $79be: $a8
	ld d, a                                          ; $79bf: $57
	ld c, a                                          ; $79c0: $4f
	ldh a, [rPCM34]                                  ; $79c1: $f0 $77
	db $f4                                           ; $79c3: $f4
	ld e, a                                          ; $79c4: $5f
	ldh a, [$6f]                                     ; $79c5: $f0 $6f
	db $f4                                           ; $79c7: $f4

Jump_043_79c8:
	rra                                              ; $79c8: $1f
	ldh a, [$9d]                                     ; $79c9: $f0 $9d
	ld b, c                                          ; $79cb: $41
	cp [hl]                                          ; $79cc: $be
	rla                                              ; $79cd: $17
	ldh [$9d], a                                     ; $79ce: $e0 $9d
	ld a, [bc]                                       ; $79d0: $0a
	push af                                          ; $79d1: $f5
	ld c, a                                          ; $79d2: $4f
	ldh a, [rOCPD]                                   ; $79d3: $f0 $6b
	db $f4                                           ; $79d5: $f4
	sbc [hl]                                         ; $79d6: $9e
	xor e                                            ; $79d7: $ab
	ld [hl], a                                       ; $79d8: $77
	db $fc                                           ; $79d9: $fc
	ld d, a                                          ; $79da: $57
	sub h                                            ; $79db: $94
	ld a, a                                          ; $79dc: $7f
	db $fc                                           ; $79dd: $fc
	sbc d                                            ; $79de: $9a
	ld d, a                                          ; $79df: $57
	xor b                                            ; $79e0: $a8
	nop                                              ; $79e1: $00
	rst $38                                          ; $79e2: $ff
	ld d, h                                          ; $79e3: $54
	ld [hl], a                                       ; $79e4: $77
	add sp, $37                                      ; $79e5: $e8 $37
	ret nc                                           ; $79e7: $d0

	ld l, e                                          ; $79e8: $6b
	ldh a, [$5f]                                     ; $79e9: $f0 $5f
	db $f4                                           ; $79eb: $f4
	ccf                                              ; $79ec: $3f
	ldh a, [$9d]                                     ; $79ed: $f0 $9d
	ld e, l                                          ; $79ef: $5d
	and d                                            ; $79f0: $a2
	ld c, a                                          ; $79f1: $4f
	ldh a, [$9d]                                     ; $79f2: $f0 $9d
	ld [hl], l                                       ; $79f4: $75
	adc d                                            ; $79f5: $8a
	ld c, a                                          ; $79f6: $4f
	ldh a, [$7f]                                     ; $79f7: $f0 $7f
	or e                                             ; $79f9: $b3
	ld d, a                                          ; $79fa: $57
	call nz, $f27f                                   ; $79fb: $c4 $7f $f2
	sbc l                                            ; $79fe: $9d
	ret nz                                           ; $79ff: $c0

	inc b                                            ; $7a00: $04
	ld e, a                                          ; $7a01: $5f
	ldh a, [$9a]                                     ; $7a02: $f0 $9a
	ld e, a                                          ; $7a04: $5f
	and b                                            ; $7a05: $a0
	rst $38                                          ; $7a06: $ff
	nop                                              ; $7a07: $00
	ccf                                              ; $7a08: $3f
	ld h, e                                          ; $7a09: $63
	ldh [$6e], a                                     ; $7a0a: $e0 $6e
	ld sp, hl                                        ; $7a0c: $f9
	sbc [hl]                                         ; $7a0d: $9e
	ret nz                                           ; $7a0e: $c0

	ld l, e                                          ; $7a0f: $6b
	ldh a, [rPCM34]                                  ; $7a10: $f0 $77
	db $e4                                           ; $7a12: $e4
	ld a, a                                          ; $7a13: $7f
	cp $9e                                           ; $7a14: $fe $9e
	ldh a, [$fe]                                     ; $7a16: $f0 $fe
	ld [hl], a                                       ; $7a18: $77
	ldh a, [$9d]                                     ; $7a19: $f0 $9d
	xor e                                            ; $7a1b: $ab
	ld d, h                                          ; $7a1c: $54
	ld [hl], a                                       ; $7a1d: $77
	ldh a, [c]                                       ; $7a1e: $f2
	sbc [hl]                                         ; $7a1f: $9e
	ld hl, sp-$04                                    ; $7a20: $f8 $fc
	ld h, a                                          ; $7a22: $67
	call nc, $fa9e                                   ; $7a23: $d4 $9e $fa
	db $fc                                           ; $7a26: $fc
	sbc l                                            ; $7a27: $9d
	ld bc, $6f00                                     ; $7a28: $01 $00 $6f
	db $e4                                           ; $7a2b: $e4
	sbc h                                            ; $7a2c: $9c
	ld d, l                                          ; $7a2d: $55
	add b                                            ; $7a2e: $80
	xor d                                            ; $7a2f: $aa
	cp $9c                                           ; $7a30: $fe $9c
	ld a, [bc]                                       ; $7a32: $0a
	nop                                              ; $7a33: $00
	ld d, l                                          ; $7a34: $55
	ld [hl], e                                       ; $7a35: $73
	ret c                                            ; $7a36: $d8

	add b                                            ; $7a37: $80
	and b                                            ; $7a38: $a0
	inc bc                                           ; $7a39: $03
	ld b, h                                          ; $7a3a: $44
	inc bc                                           ; $7a3b: $03
	add d                                            ; $7a3c: $82
	dec b                                            ; $7a3d: $05
	inc d                                            ; $7a3e: $14
	nop                                              ; $7a3f: $00
	xor d                                            ; $7a40: $aa
	nop                                              ; $7a41: $00
	ld d, l                                          ; $7a42: $55
	ld a, [bc]                                       ; $7a43: $0a
	dec bc                                           ; $7a44: $0b
	jr nc, jr_043_7a9c                               ; $7a45: $30 $55

	nop                                              ; $7a47: $00
	xor e                                            ; $7a48: $ab
	inc d                                            ; $7a49: $14
	ld d, l                                          ; $7a4a: $55
	add b                                            ; $7a4b: $80
	ld a, [hl+]                                      ; $7a4c: $2a
	add b                                            ; $7a4d: $80
	ld d, l                                          ; $7a4e: $55
	ld [bc], a                                       ; $7a4f: $02
	xor c                                            ; $7a50: $a9
	ld d, a                                          ; $7a51: $57
	inc de                                           ; $7a52: $13
	db $fc                                           ; $7a53: $fc
	ld a, [$5501]                                    ; $7a54: $fa $01 $55
	sub d                                            ; $7a57: $92
	inc bc                                           ; $7a58: $03
	and d                                            ; $7a59: $a2
	ld e, a                                          ; $7a5a: $5f
	ld d, a                                          ; $7a5b: $57
	ld c, $a7                                        ; $7a5c: $0e $a7
	ld e, [hl]                                       ; $7a5e: $5e
	cpl                                              ; $7a5f: $2f
	cp $73                                           ; $7a60: $fe $73
	adc [hl]                                         ; $7a62: $8e
	cp c                                             ; $7a63: $b9
	ld a, [hl]                                       ; $7a64: $7e
	ld h, [hl]                                       ; $7a65: $66
	ld l, b                                          ; $7a66: $68
	ld h, [hl]                                       ; $7a67: $66
	ld c, c                                          ; $7a68: $49
	ld h, a                                          ; $7a69: $67
	ld c, b                                          ; $7a6a: $48
	ld h, a                                          ; $7a6b: $67
	cp $8f                                           ; $7a6c: $fe $8f
	xor e                                            ; $7a6e: $ab
	ld d, l                                          ; $7a6f: $55
	ld d, h                                          ; $7a70: $54
	xor e                                            ; $7a71: $ab
	ld sp, hl                                        ; $7a72: $f9
	rlca                                             ; $7a73: $07
	rst FarCall                                          ; $7a74: $f7
	ld a, [bc]                                       ; $7a75: $0a
	rst AddAOntoHL                                          ; $7a76: $ef
	db $10                                           ; $7a77: $10
	call nc, $aa3f                                   ; $7a78: $d4 $3f $aa
	ld e, a                                          ; $7a7b: $5f
	call nc, Call_043_5f2b                           ; $7a7c: $d4 $2b $5f
	and $99                                          ; $7a7f: $e6 $99
	db $fc                                           ; $7a81: $fc
	ld a, a                                          ; $7a82: $7f
	add e                                            ; $7a83: $83
	rst $38                                          ; $7a84: $ff
	ld [$7bff], sp                                   ; $7a85: $08 $ff $7b
	or $8e                                           ; $7a88: $f6 $8e
	ld b, b                                          ; $7a8a: $40
	cp a                                             ; $7a8b: $bf
	ldh a, [$5f]                                     ; $7a8c: $f0 $5f
	ld hl, sp-$51                                    ; $7a8e: $f8 $af
	ld a, h                                          ; $7a90: $7c
	rst JumpTable                                          ; $7a91: $c7
	ld a, $cb                                        ; $7a92: $3e $cb
	cp [hl]                                          ; $7a94: $be
	sub a                                            ; $7a95: $97
	cp $aa                                           ; $7a96: $fe $aa
	ld d, l                                          ; $7a98: $55
	push de                                          ; $7a99: $d5
	ld a, [hl+]                                      ; $7a9a: $2a
	ld e, a                                          ; $7a9b: $5f

jr_043_7a9c:
	call c, $fe9b                                    ; $7a9c: $dc $9b $fe
	ld bc, $54ab                                     ; $7a9f: $01 $ab $54
	ld l, a                                          ; $7aa2: $6f
	inc [hl]                                         ; $7aa3: $34
	ld l, a                                          ; $7aa4: $6f
	cp $7f                                           ; $7aa5: $fe $7f
	db $fd                                           ; $7aa7: $fd
	ld a, a                                          ; $7aa8: $7f
	cp b                                             ; $7aa9: $b8
	ld c, l                                          ; $7aaa: $4d
	cp e                                             ; $7aab: $bb
	sub e                                            ; $7aac: $93
	cp c                                             ; $7aad: $b9
	ld b, b                                          ; $7aae: $40
	ld hl, sp+$00                                    ; $7aaf: $f8 $00
	cp $04                                           ; $7ab1: $fe $04
	rst $38                                          ; $7ab3: $ff
	ld b, $ff                                        ; $7ab4: $06 $ff
	inc bc                                           ; $7ab6: $03
	rst $38                                          ; $7ab7: $ff
	ld bc, $fe7b                                     ; $7ab8: $01 $7b $fe
	ld a, a                                          ; $7abb: $7f
	xor d                                            ; $7abc: $aa
	ld a, [$a099]                                    ; $7abd: $fa $99 $a0
	ld d, h                                          ; $7ac0: $54
	ret nz                                           ; $7ac1: $c0

	rst $38                                          ; $7ac2: $ff
	ld a, a                                          ; $7ac3: $7f
	add b                                            ; $7ac4: $80
	ld a, e                                          ; $7ac5: $7b
	and c                                            ; $7ac6: $a1
	sbc h                                            ; $7ac7: $9c
	inc c                                            ; $7ac8: $0c
	nop                                              ; $7ac9: $00
	ld d, $fa                                        ; $7aca: $16 $fa
	sbc h                                            ; $7acc: $9c
	rst $38                                          ; $7acd: $ff
	dec hl                                           ; $7ace: $2b
	call nc, $f07b                                   ; $7acf: $d4 $7b $f0
	ld a, [$0299]                                    ; $7ad2: $fa $99 $02
	dec d                                            ; $7ad5: $15
	nop                                              ; $7ad6: $00
	rst $38                                          ; $7ad7: $ff
	cp $01                                           ; $7ad8: $fe $01
	ld e, a                                          ; $7ada: $5f
	ldh a, [$99]                                     ; $7adb: $f0 $99
	and b                                            ; $7add: $a0
	ld e, a                                          ; $7ade: $5f
	ld b, a                                          ; $7adf: $47
	ld hl, sp-$51                                    ; $7ae0: $f8 $af
	ld e, a                                          ; $7ae2: $5f
	ld [hl], a                                       ; $7ae3: $77
	ldh a, [$7e]                                     ; $7ae4: $f0 $7e
	db $ec                                           ; $7ae6: $ec
	rst $38                                          ; $7ae7: $ff
	sbc c                                            ; $7ae8: $99
	dec d                                            ; $7ae9: $15
	xor d                                            ; $7aea: $aa
	inc b                                            ; $7aeb: $04
	rst $38                                          ; $7aec: $ff
	jp z, $dd35                                      ; $7aed: $ca $35 $dd

	rst $38                                          ; $7af0: $ff
	halt                                             ; $7af1: $76
	db $ec                                           ; $7af2: $ec
	sbc b                                            ; $7af3: $98
	xor d                                            ; $7af4: $aa
	ld bc, $ff00                                     ; $7af5: $01 $00 $ff
	ccf                                              ; $7af8: $3f
	ret nz                                           ; $7af9: $c0

	ld a, a                                          ; $7afa: $7f
	call c, Call_043_7aff                            ; $7afb: $dc $ff $7a
	db $ec                                           ; $7afe: $ec

Call_043_7aff:
	ld a, e                                          ; $7aff: $7b
	call nc, $879b                                   ; $7b00: $d4 $9b $87
	ld hl, sp-$31                                    ; $7b03: $f8 $cf
	ccf                                              ; $7b05: $3f
	db $dd                                           ; $7b06: $dd
	rst $38                                          ; $7b07: $ff
	sub l                                            ; $7b08: $95
	ld a, [$aaff]                                    ; $7b09: $fa $ff $aa
	ld bc, $af50                                     ; $7b0c: $01 $50 $af
	inc hl                                           ; $7b0f: $23
	db $fc                                           ; $7b10: $fc
	rst FarCall                                          ; $7b11: $f7
	rrca                                             ; $7b12: $0f
	db $db                                           ; $7b13: $db
	rst $38                                          ; $7b14: $ff
	sbc c                                            ; $7b15: $99
	and l                                            ; $7b16: $a5
	rst $38                                          ; $7b17: $ff
	or c                                             ; $7b18: $b1
	ld c, a                                          ; $7b19: $4f
	ld b, a                                          ; $7b1a: $47
	ld hl, sp+$77                                    ; $7b1b: $f8 $77
	ldh a, [c]                                       ; $7b1d: $f2
	sbc [hl]                                         ; $7b1e: $9e
	db $fd                                           ; $7b1f: $fd
	sbc $ff                                          ; $7b20: $de $ff
	ld a, a                                          ; $7b22: $7f
	db $fc                                           ; $7b23: $fc
	sbc d                                            ; $7b24: $9a
	ld e, e                                          ; $7b25: $5b
	rst FarCall                                          ; $7b26: $f7
	dec sp                                           ; $7b27: $3b
	rst JumpTable                                          ; $7b28: $c7
	cp a                                             ; $7b29: $bf
	ld a, e                                          ; $7b2a: $7b
	rst JumpTable                                          ; $7b2b: $c7
	sbc l                                            ; $7b2c: $9d
	push af                                          ; $7b2d: $f5
	rst $38                                          ; $7b2e: $ff
	ld a, e                                          ; $7b2f: $7b
	and l                                            ; $7b30: $a5
	call c, $94ff                                    ; $7b31: $dc $ff $94
	ld sp, hl                                        ; $7b34: $f9
	cp $df                                           ; $7b35: $fe $df
	cp $6f                                           ; $7b37: $fe $6f
	cp $f6                                           ; $7b39: $fe $f6
	rst $38                                          ; $7b3b: $ff
	cp $ff                                           ; $7b3c: $fe $ff
	or $de                                           ; $7b3e: $f6 $de
	rst $38                                          ; $7b40: $ff
	sbc [hl]                                         ; $7b41: $9e
	rst FarCall                                          ; $7b42: $f7
	ld [hl], a                                       ; $7b43: $77

Call_043_7b44:
	nop                                              ; $7b44: $00
	ld a, e                                          ; $7b45: $7b
	cp $9e                                           ; $7b46: $fe $9e
	push de                                          ; $7b48: $d5
	halt                                             ; $7b49: $76
	sub h                                            ; $7b4a: $94
	ld [hl], e                                       ; $7b4b: $73

jr_043_7b4c:
	db $fc                                           ; $7b4c: $fc
	ld [hl], a                                       ; $7b4d: $77
	ldh a, [c]                                       ; $7b4e: $f2
	sbc l                                            ; $7b4f: $9d
	ld [$7701], a                                    ; $7b50: $ea $01 $77
	adc h                                            ; $7b53: $8c
	sbc [hl]                                         ; $7b54: $9e
	ld d, h                                          ; $7b55: $54
	ld a, e                                          ; $7b56: $7b
	db $fc                                           ; $7b57: $fc
	ld a, a                                          ; $7b58: $7f
	ld hl, sp-$75                                    ; $7b59: $f8 $8b
	ld a, [hl+]                                      ; $7b5b: $2a
	dec b                                            ; $7b5c: $05
	push de                                          ; $7b5d: $d5
	dec bc                                           ; $7b5e: $0b
	xor d                                            ; $7b5f: $aa
	sub a                                            ; $7b60: $97
	dec b                                            ; $7b61: $05
	ei                                               ; $7b62: $fb
	xor d                                            ; $7b63: $aa
	rst $38                                          ; $7b64: $ff
	ld [hl], l                                       ; $7b65: $75
	sbc [hl]                                         ; $7b66: $9e
	dec hl                                           ; $7b67: $2b
	ld e, h                                          ; $7b68: $5c
	dec e                                            ; $7b69: $1d
	add e                                            ; $7b6a: $83
	jr nc, jr_043_7b4c                               ; $7b6b: $30 $df

	sbc a                                            ; $7b6d: $9f
	ld h, e                                          ; $7b6e: $63
	ld l, a                                          ; $7b6f: $6f
	call z, $df80                                    ; $7b70: $cc $80 $df
	ccf                                              ; $7b73: $3f
	and h                                            ; $7b74: $a4
	ld c, a                                          ; $7b75: $4f
	rst $38                                          ; $7b76: $ff
	ret nz                                           ; $7b77: $c0

	ld h, d                                          ; $7b78: $62
	db $db                                           ; $7b79: $db
	ld sp, $d8ef                                     ; $7b7a: $31 $ef $d8
	rst FarCall                                          ; $7b7d: $f7
	xor $3f                                          ; $7b7e: $ee $3f
	pop af                                           ; $7b80: $f1
	dec de                                           ; $7b81: $1b
	pop de                                           ; $7b82: $d1
	or $6a                                           ; $7b83: $f6 $6a
	db $fd                                           ; $7b85: $fd
	call nc, $fe3b                                   ; $7b86: $d4 $3b $fe
	rlca                                             ; $7b89: $07
	pop af                                           ; $7b8a: $f1
	rrca                                             ; $7b8b: $0f
	jp z, $173f                                      ; $7b8c: $ca $3f $17

	rst $38                                          ; $7b8f: $ff
	ld h, [hl]                                       ; $7b90: $66
	add b                                            ; $7b91: $80
	rst $38                                          ; $7b92: $ff
	sbc l                                            ; $7b93: $9d
	rst $38                                          ; $7b94: $ff
	ld a, [hl-]                                      ; $7b95: $3a
	rst $38                                          ; $7b96: $ff
	ld [hl], l                                       ; $7b97: $75
	rst $38                                          ; $7b98: $ff
	sbc h                                            ; $7b99: $9c
	rst $38                                          ; $7b9a: $ff
	ld d, l                                          ; $7b9b: $55
	ld [$f5aa], a                                    ; $7b9c: $ea $aa $f5
	push af                                          ; $7b9f: $f5
	ld a, [$e49b]                                    ; $7ba0: $fa $9b $e4
	ld l, b                                          ; $7ba3: $68
	rst SubAFromDE                                          ; $7ba4: $df
	ld d, l                                          ; $7ba5: $55
	cp d                                             ; $7ba6: $ba
	ld l, b                                          ; $7ba7: $68
	ldh a, [$7f]                                     ; $7ba8: $f0 $7f
	add b                                            ; $7baa: $80
	ld a, a                                          ; $7bab: $7f
	add b                                            ; $7bac: $80
	cp a                                             ; $7bad: $bf
	ld b, b                                          ; $7bae: $40
	rra                                              ; $7baf: $1f
	ldh [$99], a                                     ; $7bb0: $e0 $99
	xor a                                            ; $7bb2: $af
	ld d, b                                          ; $7bb3: $50
	rrca                                             ; $7bb4: $0f
	ldh a, [rBGP]                                    ; $7bb5: $f0 $47
	cp b                                             ; $7bb7: $b8
	ld e, d                                          ; $7bb8: $5a
	sub [hl]                                         ; $7bb9: $96
	sbc l                                            ; $7bba: $9d
	nop                                              ; $7bbb: $00
	push af                                          ; $7bbc: $f5
	ld [hl], e                                       ; $7bbd: $73
	add b                                            ; $7bbe: $80
	ld a, a                                          ; $7bbf: $7f
	ld d, d                                          ; $7bc0: $52
	ld a, a                                          ; $7bc1: $7f
	xor b                                            ; $7bc2: $a8
	sub a                                            ; $7bc3: $97

Jump_043_7bc4:
	rst AddAOntoHL                                          ; $7bc4: $ef
	rra                                              ; $7bc5: $1f
	rst AddAOntoHL                                          ; $7bc6: $ef
	rra                                              ; $7bc7: $1f
	xor c                                            ; $7bc8: $a9
	rlca                                             ; $7bc9: $07
	ld d, h                                          ; $7bca: $54
	ld bc, $7073                                     ; $7bcb: $01 $73 $70
	ld a, [hl]                                       ; $7bce: $7e
	cp d                                             ; $7bcf: $ba
	sbc e                                            ; $7bd0: $9b
	rst $38                                          ; $7bd1: $ff
	cp l                                             ; $7bd2: $bd
	cp $de                                           ; $7bd3: $fe $de
	ld a, e                                          ; $7bd5: $7b
	ld d, [hl]                                       ; $7bd6: $56
	ld a, a                                          ; $7bd7: $7f
	ld [hl-], a                                      ; $7bd8: $32
	ld a, a                                          ; $7bd9: $7f
	db $e4                                           ; $7bda: $e4
	sbc l                                            ; $7bdb: $9d
	ld c, a                                          ; $7bdc: $4f
	rra                                              ; $7bdd: $1f
	db $dd                                           ; $7bde: $dd
	rst $38                                          ; $7bdf: $ff
	ld a, [hl]                                       ; $7be0: $7e
	and [hl]                                         ; $7be1: $a6
	sub [hl]                                         ; $7be2: $96
	xor a                                            ; $7be3: $af
	ld d, c                                          ; $7be4: $51
	rst SubAFromDE                                          ; $7be5: $df
	rst AddAOntoHL                                          ; $7be6: $ef
	rst GetHLinHL                                          ; $7be7: $cf
	rst $38                                          ; $7be8: $ff
	rst SubAFromBC                                          ; $7be9: $e7
	rst $38                                          ; $7bea: $ff
	di                                               ; $7beb: $f3
	sbc $ff                                          ; $7bec: $de $ff
	sbc [hl]                                         ; $7bee: $9e
	xor e                                            ; $7bef: $ab
	sbc $ff                                          ; $7bf0: $de $ff
	ld a, [hl]                                       ; $7bf2: $7e
	sub a                                            ; $7bf3: $97
	ld a, a                                          ; $7bf4: $7f
	ld h, b                                          ; $7bf5: $60
	db $db                                           ; $7bf6: $db
	rst $38                                          ; $7bf7: $ff
	sbc [hl]                                         ; $7bf8: $9e
	ld [$ffd8], a                                    ; $7bf9: $ea $d8 $ff
	ld a, l                                          ; $7bfc: $7d
	ei                                               ; $7bfd: $fb
	ld a, a                                          ; $7bfe: $7f

Call_043_7bff:
Jump_043_7bff:
	db $ec                                           ; $7bff: $ec
	sbc [hl]                                         ; $7c00: $9e
	ld d, c                                          ; $7c01: $51
	ld h, e                                          ; $7c02: $63
	add sp, -$69                                     ; $7c03: $e8 $97
	xor [hl]                                         ; $7c05: $ae
	rst $38                                          ; $7c06: $ff
	rst SubAFromHL                                          ; $7c07: $d7
	rst $38                                          ; $7c08: $ff
	or [hl]                                          ; $7c09: $b6
	rst AddAOntoHL                                          ; $7c0a: $ef
	ld h, h                                          ; $7c0b: $64
	sbc e                                            ; $7c0c: $9b
	ld h, a                                          ; $7c0d: $67
	db $e4                                           ; $7c0e: $e4
	ld a, a                                          ; $7c0f: $7f
	jp z, $399b                                      ; $7c10: $ca $9b $39

	rst $38                                          ; $7c13: $ff
	sbc l                                            ; $7c14: $9d
	di                                               ; $7c15: $f3
	ld a, d                                          ; $7c16: $7a
	ld a, a                                          ; $7c17: $7f
	ld a, d                                          ; $7c18: $7a
	ld a, e                                          ; $7c19: $7b
	ld a, a                                          ; $7c1a: $7f
	ldh a, [c]                                       ; $7c1b: $f2
	db $db                                           ; $7c1c: $db
	rst $38                                          ; $7c1d: $ff
	sub h                                            ; $7c1e: $94
	add a                                            ; $7c1f: $87
	rst $38                                          ; $7c20: $ff
	add b                                            ; $7c21: $80
	nop                                              ; $7c22: $00
	cp a                                             ; $7c23: $bf
	rst GetHLinHL                                          ; $7c24: $cf
	rst GetHLinHL                                          ; $7c25: $cf
	ccf                                              ; $7c26: $3f
	rst GetHLinHL                                          ; $7c27: $cf
	rst $38                                          ; $7c28: $ff

jr_043_7c29:
	rst AddAOntoHL                                          ; $7c29: $ef
	ld a, e                                          ; $7c2a: $7b
	sub b                                            ; $7c2b: $90
	sbc c                                            ; $7c2c: $99
	rst FarCall                                          ; $7c2d: $f7
	cp $f7                                           ; $7c2e: $fe $f7
	cp $7f                                           ; $7c30: $fe $7f
	ld a, $d9                                        ; $7c32: $3e $d9
	rst $38                                          ; $7c34: $ff
	sbc l                                            ; $7c35: $9d
	ldh [c], a                                       ; $7c36: $e2
	db $fc                                           ; $7c37: $fc
	ld l, [hl]                                       ; $7c38: $6e
	call c, $ffdb                                    ; $7c39: $dc $db $ff
	sbc h                                            ; $7c3c: $9c
	pop hl                                           ; $7c3d: $e1
	db $fc                                           ; $7c3e: $fc
	ld [$d06e], a                                    ; $7c3f: $ea $6e $d0
	sbc e                                            ; $7c42: $9b
	xor d                                            ; $7c43: $aa
	ld a, [hl+]                                      ; $7c44: $2a
	add b                                            ; $7c45: $80
	push de                                          ; $7c46: $d5
	ld [hl], l                                       ; $7c47: $75
	ld h, h                                          ; $7c48: $64
	ld [hl], e                                       ; $7c49: $73
	db $e4                                           ; $7c4a: $e4
	ld a, a                                          ; $7c4b: $7f
	dec h                                            ; $7c4c: $25
	ld a, a                                          ; $7c4d: $7f
	ldh a, [$9e]                                     ; $7c4e: $f0 $9e
	xor [hl]                                         ; $7c50: $ae
	ld l, d                                          ; $7c51: $6a
	cp b                                             ; $7c52: $b8
	ld a, [hl]                                       ; $7c53: $7e
	call nz, Call_043_409d                           ; $7c54: $c4 $9d $40
	ccf                                              ; $7c57: $3f
	ld [hl], l                                       ; $7c58: $75
	ld h, h                                          ; $7c59: $64
	sbc b                                            ; $7c5a: $98
	cp l                                             ; $7c5b: $bd
	ld a, [hl]                                       ; $7c5c: $7e
	dec a                                            ; $7c5d: $3d
	ld l, [hl]                                       ; $7c5e: $6e
	xor h                                            ; $7c5f: $ac
	ld b, b                                          ; $7c60: $40
	scf                                              ; $7c61: $37
	ld a, d                                          ; $7c62: $7a
	ld [bc], a                                       ; $7c63: $02
	ld a, l                                          ; $7c64: $7d
	sbc c                                            ; $7c65: $99
	add b                                            ; $7c66: $80
	xor b                                            ; $7c67: $a8
	ld d, a                                          ; $7c68: $57
	ld d, l                                          ; $7c69: $55
	xor d                                            ; $7c6a: $aa
	ldh a, [c]                                       ; $7c6b: $f2
	db $ed                                           ; $7c6c: $ed
	rst JumpTable                                          ; $7c6d: $c7
	ld hl, sp-$15                                    ; $7c6e: $f8 $eb
	ldh a, [$f5]                                     ; $7c70: $f0 $f5
	ld [hl+], a                                      ; $7c72: $22
	inc b                                            ; $7c73: $04
	inc bc                                           ; $7c74: $03
	dec b                                            ; $7c75: $05
	inc bc                                           ; $7c76: $03
	ld e, a                                          ; $7c77: $5f
	ccf                                              ; $7c78: $3f
	and $77                                          ; $7c79: $e6 $77
	ld [hl], b                                       ; $7c7b: $70
	adc a                                            ; $7c7c: $8f
	scf                                              ; $7c7d: $37
	call z, $2fd6                                    ; $7c7e: $cc $d6 $2f
	ld a, a                                          ; $7c81: $7f
	add e                                            ; $7c82: $83
	xor a                                            ; $7c83: $af
	ld d, c                                          ; $7c84: $51
	ld c, a                                          ; $7c85: $4f
	adc l                                            ; $7c86: $8d
	or c                                             ; $7c87: $b1
	ld a, [hl+]                                      ; $7c88: $2a
	sub l                                            ; $7c89: $95
	add [hl]                                         ; $7c8a: $86
	ld e, c                                          ; $7c8b: $59
	cp e                                             ; $7c8c: $bb
	rst $38                                          ; $7c8d: $ff
	ld [hl], a                                       ; $7c8e: $77
	rst FarCall                                          ; $7c8f: $f7
	and a                                            ; $7c90: $a7
	xor $ec                                          ; $7c91: $ee $ec
	rst $38                                          ; $7c93: $ff
	cp e                                             ; $7c94: $bb
	db $fd                                           ; $7c95: $fd
	ldh a, [rIE]                                     ; $7c96: $f0 $ff
	ld l, a                                          ; $7c98: $6f
	ld a, b                                          ; $7c99: $78
	cp a                                             ; $7c9a: $bf
	adc l                                            ; $7c9b: $8d
	jp nz, Jump_043_55f8                             ; $7c9c: $c2 $f8 $55

	add b                                            ; $7c9f: $80
	ld [hl+], a                                      ; $7ca0: $22
	adc b                                            ; $7ca1: $88
	ld h, c                                          ; $7ca2: $61
	cp $82                                           ; $7ca3: $fe $82
	db $fc                                           ; $7ca5: $fc
	jr z, jr_043_7c29                                ; $7ca6: $28 $81

	ld d, e                                          ; $7ca8: $53
	ld bc, $03ab                                     ; $7ca9: $01 $ab $03
	xor b                                            ; $7cac: $a8
	rla                                              ; $7cad: $17
	ld [hl], a                                       ; $7cae: $77
	and b                                            ; $7caf: $a0
	sbc h                                            ; $7cb0: $9c
	ld e, b                                          ; $7cb1: $58
	inc b                                            ; $7cb2: $04
	and b                                            ; $7cb3: $a0
	cp $9b                                           ; $7cb4: $fe $9b
	ld b, b                                          ; $7cb6: $40
	add b                                            ; $7cb7: $80
	xor d                                            ; $7cb8: $aa
	ret nz                                           ; $7cb9: $c0

	ld l, [hl]                                       ; $7cba: $6e
	ld c, b                                          ; $7cbb: $48
	ei                                               ; $7cbc: $fb
	sbc [hl]                                         ; $7cbd: $9e
	dec b                                            ; $7cbe: $05
	ld a, e                                          ; $7cbf: $7b
	or $5f                                           ; $7cc0: $f6 $5f
	ldh a, [$71]                                     ; $7cc2: $f0 $71
	add $7d                                          ; $7cc4: $c6 $7d
	nop                                              ; $7cc6: $00
	sbc [hl]                                         ; $7cc7: $9e
	rlca                                             ; $7cc8: $07
	ld l, a                                          ; $7cc9: $6f
	ldh a, [$7d]                                     ; $7cca: $f0 $7d
	sub c                                            ; $7ccc: $91
	ld [hl], d                                       ; $7ccd: $72
	and d                                            ; $7cce: $a2
	sub e                                            ; $7ccf: $93
	nop                                              ; $7cd0: $00
	ei                                               ; $7cd1: $fb
	rst $38                                          ; $7cd2: $ff
	ld e, a                                          ; $7cd3: $5f
	rra                                              ; $7cd4: $1f
	sbc a                                            ; $7cd5: $9f
	ccf                                              ; $7cd6: $3f
	nop                                              ; $7cd7: $00
	ccf                                              ; $7cd8: $3f
	ld d, l                                          ; $7cd9: $55
	nop                                              ; $7cda: $00
	xor a                                            ; $7cdb: $af
	ld a, d                                          ; $7cdc: $7a
	adc d                                            ; $7cdd: $8a
	sub h                                            ; $7cde: $94
	push af                                          ; $7cdf: $f5
	ld a, [bc]                                       ; $7ce0: $0a
	adc a                                            ; $7ce1: $8f
	ldh a, [$c0]                                     ; $7ce2: $f0 $c0
	nop                                              ; $7ce4: $00
	db $e3                                           ; $7ce5: $e3
	rra                                              ; $7ce6: $1f
	rst $38                                          ; $7ce7: $ff
	nop                                              ; $7ce8: $00
	ld e, a                                          ; $7ce9: $5f
	ld [hl], d                                       ; $7cea: $72
	ld a, d                                          ; $7ceb: $7a
	sbc d                                            ; $7cec: $9a
	ld c, d                                          ; $7ced: $4a
	or l                                             ; $7cee: $b5
	nop                                              ; $7cef: $00
	rst $38                                          ; $7cf0: $ff
	call z, $ffdd                                    ; $7cf1: $cc $dd $ff
	ld l, l                                          ; $7cf4: $6d
	ld hl, sp+$7d                                    ; $7cf5: $f8 $7d
	ld a, c                                          ; $7cf7: $79
	sbc l                                            ; $7cf8: $9d
	ld d, l                                          ; $7cf9: $55
	ld bc, $c67a                                     ; $7cfa: $01 $7a $c6
	ld e, h                                          ; $7cfd: $5c
	xor b                                            ; $7cfe: $a8
	sbc [hl]                                         ; $7cff: $9e
	push de                                          ; $7d00: $d5
	ld a, c                                          ; $7d01: $79
	or h                                             ; $7d02: $b4
	ld a, d                                          ; $7d03: $7a
	db $fd                                           ; $7d04: $fd
	ld a, l                                          ; $7d05: $7d
	ret nc                                           ; $7d06: $d0

	sbc l                                            ; $7d07: $9d
	ld a, [hl+]                                      ; $7d08: $2a
	xor d                                            ; $7d09: $aa
	ld a, b                                          ; $7d0a: $78
	xor b                                            ; $7d0b: $a8
	ld a, b                                          ; $7d0c: $78
	and h                                            ; $7d0d: $a4
	ld a, e                                          ; $7d0e: $7b
	ldh a, [c]                                       ; $7d0f: $f2
	ld [hl], h                                       ; $7d10: $74
	add h                                            ; $7d11: $84
	ld [hl], a                                       ; $7d12: $77
	db $e4                                           ; $7d13: $e4
	ld a, e                                          ; $7d14: $7b
	sbc $7b                                          ; $7d15: $de $7b
	ldh a, [c]                                       ; $7d17: $f2
	sbc c                                            ; $7d18: $99
	ld [bc], a                                       ; $7d19: $02
	db $fd                                           ; $7d1a: $fd
	ld d, l                                          ; $7d1b: $55
	xor d                                            ; $7d1c: $aa
	ld [$5f15], a                                    ; $7d1d: $ea $15 $5f
	ldh a, [$74]                                     ; $7d20: $f0 $74
	ld [hl], h                                       ; $7d22: $74
	ld l, a                                          ; $7d23: $6f
	call nz, $b59a                                   ; $7d24: $c4 $9a $b5
	ld e, a                                          ; $7d27: $5f
	ld b, b                                          ; $7d28: $40
	rst $38                                          ; $7d29: $ff
	rra                                              ; $7d2a: $1f
	ld a, e                                          ; $7d2b: $7b
	ldh a, [rPCM34]                                  ; $7d2c: $f0 $77
	call nz, Call_043_5298                           ; $7d2e: $c4 $98 $52
	xor l                                            ; $7d31: $ad
	xor l                                            ; $7d32: $ad
	ld d, a                                          ; $7d33: $57
	ld d, b                                          ; $7d34: $50
	rst $38                                          ; $7d35: $ff
	rlca                                             ; $7d36: $07
	ld [hl], l                                       ; $7d37: $75
	jr nc, jr_043_7dad                               ; $7d38: $30 $73

	db $e4                                           ; $7d3a: $e4
	ld l, a                                          ; $7d3b: $6f
	call nc, $ffdf                                   ; $7d3c: $d4 $df $ff
	sbc [hl]                                         ; $7d3f: $9e
	ld hl, sp+$6b                                    ; $7d40: $f8 $6b
	ldh a, [$7f]                                     ; $7d42: $f0 $7f
	sbc b                                            ; $7d44: $98
	ld [hl], a                                       ; $7d45: $77
	ldh a, [c]                                       ; $7d46: $f2
	sbc h                                            ; $7d47: $9c
	pop af                                           ; $7d48: $f1
	rst $38                                          ; $7d49: $ff
	ld a, b                                          ; $7d4a: $78
	ld a, d                                          ; $7d4b: $7a
	ld d, l                                          ; $7d4c: $55
	ld a, a                                          ; $7d4d: $7f
	ld l, h                                          ; $7d4e: $6c
	ld [hl], a                                       ; $7d4f: $77
	add $71                                          ; $7d50: $c6 $71
	ld de, $dc7b                                     ; $7d52: $11 $7b $dc
	sub b                                            ; $7d55: $90
	ld [hl], l                                       ; $7d56: $75
	add [hl]                                         ; $7d57: $86
	db $fc                                           ; $7d58: $fc
	ld b, $6f                                        ; $7d59: $06 $6f
	adc [hl]                                         ; $7d5b: $8e
	jp hl                                            ; $7d5c: $e9


	ld [bc], a                                       ; $7d5d: $02
	ld d, c                                          ; $7d5e: $51
	and b                                            ; $7d5f: $a0
	ld [hl], e                                       ; $7d60: $73
	add b                                            ; $7d61: $80
	and e                                            ; $7d62: $a3
	ld b, b                                          ; $7d63: $40
	push hl                                          ; $7d64: $e5
	cp $91                                           ; $7d65: $fe $91
	adc d                                            ; $7d67: $8a
	ld h, b                                          ; $7d68: $60
	jp z, $e535                                      ; $7d69: $ca $35 $e5

	ccf                                              ; $7d6c: $3f
	ld hl, sp+$1f                                    ; $7d6d: $f8 $1f
	ld a, a                                          ; $7d6f: $7f
	add a                                            ; $7d70: $87
	ld a, e                                          ; $7d71: $7b
	add a                                            ; $7d72: $87
	rra                                              ; $7d73: $1f
	and $77                                          ; $7d74: $e6 $77
	ld [de], a                                       ; $7d76: $12
	ld h, a                                          ; $7d77: $67
	or d                                             ; $7d78: $b2
	ld a, [hl]                                       ; $7d79: $7e
	ld b, e                                          ; $7d7a: $43
	sbc [hl]                                         ; $7d7b: $9e
	rrca                                             ; $7d7c: $0f
	ld a, e                                          ; $7d7d: $7b
	jr @-$60                                         ; $7d7e: $18 $9e

	xor e                                            ; $7d80: $ab
	ld h, e                                          ; $7d81: $63
	ldh a, [$df]                                     ; $7d82: $f0 $df
	rst $38                                          ; $7d84: $ff
	ld a, a                                          ; $7d85: $7f
	cp d                                             ; $7d86: $ba
	ld a, a                                          ; $7d87: $7f
	ldh a, [$9d]                                     ; $7d88: $f0 $9d
	ld a, [$6705]                                    ; $7d8a: $fa $05 $67
	add h                                            ; $7d8d: $84
	ld [hl], l                                       ; $7d8e: $75
	and h                                            ; $7d8f: $a4
	ld a, e                                          ; $7d90: $7b
	ret nc                                           ; $7d91: $d0

	ld h, e                                          ; $7d92: $63
	ldh [c], a                                       ; $7d93: $e2
	rst SubAFromDE                                          ; $7d94: $df
	rst $38                                          ; $7d95: $ff
	sbc l                                            ; $7d96: $9d
	ld l, a                                          ; $7d97: $6f
	sbc a                                            ; $7d98: $9f
	ld c, a                                          ; $7d99: $4f
	ldh a, [$79]                                     ; $7d9a: $f0 $79
	or b                                             ; $7d9c: $b0
	sbc [hl]                                         ; $7d9d: $9e
	dec d                                            ; $7d9e: $15
	ld h, a                                          ; $7d9f: $67
	add d                                            ; $7da0: $82
	sbc d                                            ; $7da1: $9a
	pop hl                                           ; $7da2: $e1
	rst $38                                          ; $7da3: $ff
	ei                                               ; $7da4: $fb
	db $fc                                           ; $7da5: $fc
	cp $77                                           ; $7da6: $fe $77
	ld h, b                                          ; $7da8: $60
	ld l, e                                          ; $7da9: $6b
	ldh [c], a                                       ; $7daa: $e2
	ld a, a                                          ; $7dab: $7f
	db $f4                                           ; $7dac: $f4

jr_043_7dad:
	sbc e                                            ; $7dad: $9b
	dec de                                           ; $7dae: $1b
	db $ec                                           ; $7daf: $ec
	ret                                              ; $7db0: $c9


	ccf                                              ; $7db1: $3f
	ld l, a                                          ; $7db2: $6f
	ld a, [hl+]                                      ; $7db3: $2a
	ld l, a                                          ; $7db4: $6f
	or h                                             ; $7db5: $b4
	ld a, a                                          ; $7db6: $7f
	ld b, d                                          ; $7db7: $42
	sbc l                                            ; $7db8: $9d
	rst SubAFromBC                                          ; $7db9: $e7
	ld sp, hl                                        ; $7dba: $f9
	ld d, a                                          ; $7dbb: $57
	call nz, Call_043_4e6f                           ; $7dbc: $c4 $6f $4e
	db $d3                                           ; $7dbf: $d3
	rst $38                                          ; $7dc0: $ff
	ld a, c                                          ; $7dc1: $79
	adc [hl]                                         ; $7dc2: $8e
	jp nc, $9eff                                     ; $7dc3: $d2 $ff $9e

	db $fc                                           ; $7dc6: $fc
	ld a, e                                          ; $7dc7: $7b
	or [hl]                                          ; $7dc8: $b6
	sbc h                                            ; $7dc9: $9c
	db $e3                                           ; $7dca: $e3
	rst $38                                          ; $7dcb: $ff
	ld sp, hl                                        ; $7dcc: $f9
	ld [hl], e                                       ; $7dcd: $73
	ld hl, sp-$25                                    ; $7dce: $f8 $db
	rst $38                                          ; $7dd0: $ff
	ld a, a                                          ; $7dd1: $7f
	or [hl]                                          ; $7dd2: $b6
	sbc h                                            ; $7dd3: $9c
	ld [de], a                                       ; $7dd4: $12
	pop hl                                           ; $7dd5: $e1
	di                                               ; $7dd6: $f3
	ld a, c                                          ; $7dd7: $79
	ld a, [hl]                                       ; $7dd8: $7e
	sbc h                                            ; $7dd9: $9c
	ld [hl], a                                       ; $7dda: $77
	rst $38                                          ; $7ddb: $ff
	ld [hl], $de                                     ; $7ddc: $36 $de
	rst $38                                          ; $7dde: $ff
	sub d                                            ; $7ddf: $92
	rst SubAFromDE                                          ; $7de0: $df
	cp a                                             ; $7de1: $bf
	cp a                                             ; $7de2: $bf
	ld a, a                                          ; $7de3: $7f
	ld a, c                                          ; $7de4: $79
	rst FarCall                                          ; $7de5: $f7
	rst FarCall                                          ; $7de6: $f7
	rst AddAOntoHL                                          ; $7de7: $ef
	rst AddAOntoHL                                          ; $7de8: $ef
	rst SubAFromDE                                          ; $7de9: $df
	rst SubAFromDE                                          ; $7dea: $df
	cp a                                             ; $7deb: $bf
	dec [hl]                                         ; $7dec: $35
	call nc, $7fff                                   ; $7ded: $d4 $ff $7f
	ret nc                                           ; $7df0: $d0

	ld h, l                                          ; $7df1: $65
	ld b, [hl]                                       ; $7df2: $46
	db $db                                           ; $7df3: $db
	rst $38                                          ; $7df4: $ff
	ld a, [hl]                                       ; $7df5: $7e
	ld [hl], a                                       ; $7df6: $77
	ld a, a                                          ; $7df7: $7f
	ldh a, [$9b]                                     ; $7df8: $f0 $9b
	inc a                                            ; $7dfa: $3c
	rst $38                                          ; $7dfb: $ff
	sbc [hl]                                         ; $7dfc: $9e
	rst $38                                          ; $7dfd: $ff
	ld [hl], h                                       ; $7dfe: $74

Call_043_7dff:
	and $7d                                          ; $7dff: $e6 $7d
	jp nz, $b07f                                     ; $7e01: $c2 $7f $b0

Call_043_7e04:
	sbc b                                            ; $7e04: $98
	xor a                                            ; $7e05: $af
	rst $38                                          ; $7e06: $ff
	ld d, a                                          ; $7e07: $57
	rst $38                                          ; $7e08: $ff
	ld b, h                                          ; $7e09: $44
	add e                                            ; $7e0a: $83
	ld bc, $3275                                     ; $7e0b: $01 $75 $32
	sbc c                                            ; $7e0e: $99
	rst AddAOntoHL                                          ; $7e0f: $ef
	db $e3                                           ; $7e10: $e3

jr_043_7e11:
	db $fc                                           ; $7e11: $fc
	inc [hl]                                         ; $7e12: $34
	db $eb                                           ; $7e13: $eb
	rst SubAFromBC                                          ; $7e14: $e7
	ld a, e                                          ; $7e15: $7b
	ld hl, sp+$7c                                    ; $7e16: $f8 $7c
	sbc b                                            ; $7e18: $98
	add b                                            ; $7e19: $80
	ld e, a                                          ; $7e1a: $5f
	and b                                            ; $7e1b: $a0
	xor a                                            ; $7e1c: $af
	ld d, b                                          ; $7e1d: $50
	rla                                              ; $7e1e: $17
	add sp, $2b                                      ; $7e1f: $e8 $2b
	call nc, $ea15                                   ; $7e21: $d4 $15 $ea
	ld c, e                                          ; $7e24: $4b
	or h                                             ; $7e25: $b4
	push af                                          ; $7e26: $f5
	ld a, [$0ee7]                                    ; $7e27: $fa $e7 $0e
	inc d                                            ; $7e2a: $14
	ld c, $1e                                        ; $7e2b: $0e $1e
	inc c                                            ; $7e2d: $0c
	add sp, $1c                                      ; $7e2e: $e8 $1c
	ei                                               ; $7e30: $fb
	inc e                                            ; $7e31: $1c
	rst $38                                          ; $7e32: $ff
	jr @-$07                                         ; $7e33: $18 $f7

	jr jr_043_7e11                                   ; $7e35: $18 $da

	dec [hl]                                         ; $7e37: $35
	dec bc                                           ; $7e38: $0b
	add l                                            ; $7e39: $85
	rlca                                             ; $7e3a: $07
	ld [bc], a                                       ; $7e3b: $02
	ld bc, $0000                                     ; $7e3c: $01 $00 $00

Jump_043_7e3f:
	rra                                              ; $7e3f: $1f
	nop                                              ; $7e40: $00
	ld [hl], l                                       ; $7e41: $75
	ld a, [bc]                                       ; $7e42: $0a
	db $eb                                           ; $7e43: $eb
	inc d                                            ; $7e44: $14
	and l                                            ; $7e45: $a5
	ld a, d                                          ; $7e46: $7a
	sub d                                            ; $7e47: $92
	ld a, l                                          ; $7e48: $7d
	rst GetHLinHL                                          ; $7e49: $cf
	rst $38                                          ; $7e4a: $ff
	ld [hl], e                                       ; $7e4b: $73
	rst $38                                          ; $7e4c: $ff
	ld e, h                                          ; $7e4d: $5c
	ccf                                              ; $7e4e: $3f
	rst FarCall                                          ; $7e4f: $f7
	rrca                                             ; $7e50: $0f
	ld a, [hl]                                       ; $7e51: $7e
	add c                                            ; $7e52: $81
	ld hl, sp+$71                                    ; $7e53: $f8 $71
	db $ec                                           ; $7e55: $ec
	sbc h                                            ; $7e56: $9c
	ld a, e                                          ; $7e57: $7b
	add [hl]                                         ; $7e58: $86
	rst SubAFromBC                                          ; $7e59: $e7
	ld a, e                                          ; $7e5a: $7b
	ld d, d                                          ; $7e5b: $52
	adc [hl]                                         ; $7e5c: $8e
	inc sp                                           ; $7e5d: $33
	rst $38                                          ; $7e5e: $ff
	ret                                              ; $7e5f: $c9


	rst $38                                          ; $7e60: $ff
	cp c                                             ; $7e61: $b9
	ld a, a                                          ; $7e62: $7f
	add h                                            ; $7e63: $84
	ld a, a                                          ; $7e64: $7f
	sbc $3f                                          ; $7e65: $de $3f
	or a                                             ; $7e67: $b7
	ld a, [hl]                                       ; $7e68: $7e
	adc $fd                                          ; $7e69: $ce $fd
	cp l                                             ; $7e6b: $bd
	ei                                               ; $7e6c: $fb
	db $e3                                           ; $7e6d: $e3
	ld l, e                                          ; $7e6e: $6b
	ld b, h                                          ; $7e6f: $44
	sbc [hl]                                         ; $7e70: $9e
	ld a, [hl]                                       ; $7e71: $7e
	ld a, e                                          ; $7e72: $7b
	ld b, h                                          ; $7e73: $44
	ld h, h                                          ; $7e74: $64
	add h                                            ; $7e75: $84
	db $dd                                           ; $7e76: $dd
	rst $38                                          ; $7e77: $ff
	sbc l                                            ; $7e78: $9d
	ld a, [bc]                                       ; $7e79: $0a
	push af                                          ; $7e7a: $f5
	ld e, h                                          ; $7e7b: $5c
	ld [hl], h                                       ; $7e7c: $74
	ld [hl], e                                       ; $7e7d: $73
	ld e, [hl]                                       ; $7e7e: $5e
	sbc l                                            ; $7e7f: $9d
	ld d, l                                          ; $7e80: $55
	rst AddAOntoHL                                          ; $7e81: $ef
	sbc $ff                                          ; $7e82: $de $ff
	ld a, a                                          ; $7e84: $7f
	db $fc                                           ; $7e85: $fc
	sbc h                                            ; $7e86: $9c
	ld h, a                                          ; $7e87: $67
	rst $38                                          ; $7e88: $ff
	or a                                             ; $7e89: $b7
	call c, Call_043_7eff                            ; $7e8a: $dc $ff $7e
	add $99                                          ; $7e8d: $c6 $99
	rst SubAFromDE                                          ; $7e8f: $df
	rst SubAFromBC                                          ; $7e90: $e7
	xor l                                            ; $7e91: $ad
	rst SubAFromDE                                          ; $7e92: $df
	ld e, d                                          ; $7e93: $5a
	cp a                                             ; $7e94: $bf
	db $dd                                           ; $7e95: $dd
	rst $38                                          ; $7e96: $ff
	ld a, [hl]                                       ; $7e97: $7e
	jp nz, $6a9c                                     ; $7e98: $c2 $9c $6a

	add b                                            ; $7e9b: $80
	push af                                          ; $7e9c: $f5
	ld a, d                                          ; $7e9d: $7a
	pop de                                           ; $7e9e: $d1
	ld h, a                                          ; $7e9f: $67
	call nc, $079d                                   ; $7ea0: $d4 $9d $07
	ld hl, sp+$71                                    ; $7ea3: $f8 $71
	inc [hl]                                         ; $7ea5: $34
	ld a, e                                          ; $7ea6: $7b
	ldh a, [rPCM34]                                  ; $7ea7: $f0 $77
	pop hl                                           ; $7ea9: $e1
	ld a, a                                          ; $7eaa: $7f
	and b                                            ; $7eab: $a0
	sbc [hl]                                         ; $7eac: $9e
	db $fd                                           ; $7ead: $fd
	ld l, l                                          ; $7eae: $6d
	inc h                                            ; $7eaf: $24
	ld l, e                                          ; $7eb0: $6b
	inc c                                            ; $7eb1: $0c
	sbc l                                            ; $7eb2: $9d
	ld bc, $6cfe                                     ; $7eb3: $01 $fe $6c
	sbc b                                            ; $7eb6: $98
	ld a, h                                          ; $7eb7: $7c
	jr c, jr_043_7f24                                ; $7eb8: $38 $6a

	db $fc                                           ; $7eba: $fc
	ld l, b                                          ; $7ebb: $68
	adc b                                            ; $7ebc: $88
	ld a, [hl]                                       ; $7ebd: $7e
	ret z                                            ; $7ebe: $c8

	ld a, a                                          ; $7ebf: $7f
	cp $7d                                           ; $7ec0: $fe $7d
	inc e                                            ; $7ec2: $1c
	ld [hl], a                                       ; $7ec3: $77
	and l                                            ; $7ec4: $a5
	sbc h                                            ; $7ec5: $9c
	ld a, a                                          ; $7ec6: $7f
	rra                                              ; $7ec7: $1f
	cp a                                             ; $7ec8: $bf
	ld a, e                                          ; $7ec9: $7b
	db $fc                                           ; $7eca: $fc
	sbc [hl]                                         ; $7ecb: $9e
	ld [$ffdc], a                                    ; $7ecc: $ea $dc $ff
	ld a, [hl]                                       ; $7ecf: $7e
	ldh a, [c]                                       ; $7ed0: $f2
	ld [hl], h                                       ; $7ed1: $74
	ld b, d                                          ; $7ed2: $42
	ld [hl], a                                       ; $7ed3: $77
	db $fc                                           ; $7ed4: $fc
	ld l, a                                          ; $7ed5: $6f
	and h                                            ; $7ed6: $a4
	sbc l                                            ; $7ed7: $9d
	ld a, $c0                                        ; $7ed8: $3e $c0
	ld l, b                                          ; $7eda: $68
	ld e, d                                          ; $7edb: $5a
	ld a, h                                          ; $7edc: $7c
	ld a, [$a473]                                    ; $7edd: $fa $73 $a4
	ld l, a                                          ; $7ee0: $6f
	db $f4                                           ; $7ee1: $f4
	ld a, b                                          ; $7ee2: $78
	ld a, $72                                        ; $7ee3: $3e $72
	ld d, c                                          ; $7ee5: $51
	ld l, e                                          ; $7ee6: $6b
	add [hl]                                         ; $7ee7: $86
	ld a, e                                          ; $7ee8: $7b
	db $fc                                           ; $7ee9: $fc
	rst $38                                          ; $7eea: $ff
	ld a, a                                          ; $7eeb: $7f
	ld [de], a                                       ; $7eec: $12
	ld a, e                                          ; $7eed: $7b
	ld a, [hl+]                                      ; $7eee: $2a
	sbc c                                            ; $7eef: $99
	db $fc                                           ; $7ef0: $fc
	ld a, b                                          ; $7ef1: $78
	ld a, h                                          ; $7ef2: $7c
	halt                                             ; $7ef3: $76
	ld a, h                                          ; $7ef4: $7c
	ld a, [$fc7b]                                    ; $7ef5: $fa $7b $fc
	add b                                            ; $7ef8: $80
	ei                                               ; $7ef9: $fb
	ld a, h                                          ; $7efa: $7c
	xor d                                            ; $7efb: $aa
	ld [hl], l                                       ; $7efc: $75
	ld d, l                                          ; $7efd: $55
	xor d                                            ; $7efe: $aa

Call_043_7eff:
Jump_043_7eff:
	and d                                            ; $7eff: $a2
	ld e, l                                          ; $7f00: $5d
	ld b, l                                          ; $7f01: $45
	cp d                                             ; $7f02: $ba
	add d                                            ; $7f03: $82
	ld a, l                                          ; $7f04: $7d
	ld b, h                                          ; $7f05: $44
	ei                                               ; $7f06: $fb
	or d                                             ; $7f07: $b2
	db $fd                                           ; $7f08: $fd
	ld b, b                                          ; $7f09: $40
	rst $38                                          ; $7f0a: $ff
	sub l                                            ; $7f0b: $95
	ld a, d                                          ; $7f0c: $7a
	ld a, d                                          ; $7f0d: $7a
	or l                                             ; $7f0e: $b5
	and c                                            ; $7f0f: $a1
	ld a, [hl]                                       ; $7f10: $7e
	inc [hl]                                         ; $7f11: $34
	rst AddAOntoHL                                          ; $7f12: $ef
	ld h, d                                          ; $7f13: $62
	rst $38                                          ; $7f14: $ff
	ld [hl], h                                       ; $7f15: $74
	rst AddAOntoHL                                          ; $7f16: $ef
	ld l, d                                          ; $7f17: $6a
	add h                                            ; $7f18: $84
	push af                                          ; $7f19: $f5
	ld d, l                                          ; $7f1a: $55
	ld [$bf68], a                                    ; $7f1b: $ea $68 $bf

jr_043_7f1e:
	sub l                                            ; $7f1e: $95
	ld a, a                                          ; $7f1f: $7f
	ld b, d                                          ; $7f20: $42
	db $fd                                           ; $7f21: $fd
	and c                                            ; $7f22: $a1
	ld a, a                                          ; $7f23: $7f

jr_043_7f24:
	xor b                                            ; $7f24: $a8
	ld d, a                                          ; $7f25: $57
	push de                                          ; $7f26: $d5
	ld a, [hl+]                                      ; $7f27: $2a
	rst $38                                          ; $7f28: $ff
	nop                                              ; $7f29: $00
	ld a, a                                          ; $7f2a: $7f
	add b                                            ; $7f2b: $80
	ld a, a                                          ; $7f2c: $7f
	add b                                            ; $7f2d: $80
	ccf                                              ; $7f2e: $3f
	ret nz                                           ; $7f2f: $c0

	sbc a                                            ; $7f30: $9f
	ldh [$af], a                                     ; $7f31: $e0 $af
	ld d, b                                          ; $7f33: $50
	ld [hl], l                                       ; $7f34: $75
	ld a, [bc]                                       ; $7f35: $0a
	sub l                                            ; $7f36: $95
	sub c                                            ; $7f37: $91
	ld a, [hl]                                       ; $7f38: $7e
	ld h, d                                          ; $7f39: $62
	cp l                                             ; $7f3a: $bd
	ld [hl], l                                       ; $7f3b: $75
	ld a, [bc]                                       ; $7f3c: $0a
	ld a, [$f505]                                    ; $7f3d: $fa $05 $f5
	ld a, [bc]                                       ; $7f40: $0a
	ld l, h                                          ; $7f41: $6c
	sbc $77                                          ; $7f42: $de $77
	db $fc                                           ; $7f44: $fc
	ld a, l                                          ; $7f45: $7d
	ld e, $9c                                        ; $7f46: $1e $9c
	ld a, d                                          ; $7f48: $7a
	rst $38                                          ; $7f49: $ff
	ld a, l                                          ; $7f4a: $7d
	ld h, a                                          ; $7f4b: $67
	db $fc                                           ; $7f4c: $fc
	adc h                                            ; $7f4d: $8c
	rst AddAOntoHL                                          ; $7f4e: $ef
	ld a, d                                          ; $7f4f: $7a
	rst SubAFromDE                                          ; $7f50: $df
	ld d, l                                          ; $7f51: $55
	xor d                                            ; $7f52: $aa
	cpl                                              ; $7f53: $2f
	ret nc                                           ; $7f54: $d0

	rla                                              ; $7f55: $17
	add sp, $5e                                      ; $7f56: $e8 $5e
	and c                                            ; $7f58: $a1
	and l                                            ; $7f59: $a5
	ld e, d                                          ; $7f5a: $5a
	ld [hl], b                                       ; $7f5b: $70
	adc a                                            ; $7f5c: $8f
	ld a, [$b405]                                    ; $7f5d: $fa $05 $b4
	bit 6, [hl]                                      ; $7f60: $cb $76
	ld d, d                                          ; $7f62: $52
	add b                                            ; $7f63: $80
	rra                                              ; $7f64: $1f
	ldh [hDisp0_OBP0], a                                     ; $7f65: $e0 $86
	ld a, c                                          ; $7f67: $79
	ld b, c                                          ; $7f68: $41
	cp [hl]                                          ; $7f69: $be
	and b                                            ; $7f6a: $a0
	ld e, a                                          ; $7f6b: $5f
	ld [hl], l                                       ; $7f6c: $75
	adc d                                            ; $7f6d: $8a
	sbc $a1                                          ; $7f6e: $de $a1
	ld e, a                                          ; $7f70: $5f
	cp [hl]                                          ; $7f71: $be
	cp a                                             ; $7f72: $bf
	ld e, l                                          ; $7f73: $5d
	ld e, a                                          ; $7f74: $5f
	cp d                                             ; $7f75: $ba
	cp a                                             ; $7f76: $bf
	ld d, l                                          ; $7f77: $55
	ld e, a                                          ; $7f78: $5f
	cp b                                             ; $7f79: $b8
	cp a                                             ; $7f7a: $bf
	ld d, b                                          ; $7f7b: $50
	rst SubAFromDE                                          ; $7f7c: $df
	jr c, jr_043_7f1e                                ; $7f7d: $38 $9f

	ld [hl], b                                       ; $7f7f: $70
	ld a, [$fd00]                                    ; $7f80: $fa $00 $fd
	sub d                                            ; $7f83: $92
	nop                                              ; $7f84: $00
	ld a, $c0                                        ; $7f85: $3e $c0
	ld [$a2f7], sp                                   ; $7f87: $08 $f7 $a2
	rst $38                                          ; $7f8a: $ff
	ld d, c                                          ; $7f8b: $51
	rst $38                                          ; $7f8c: $ff
	ld [bc], a                                       ; $7f8d: $02
	rst $38                                          ; $7f8e: $ff
	pop bc                                           ; $7f8f: $c1
	ccf                                              ; $7f90: $3f
	cp $98                                           ; $7f91: $fe $98
	ld a, b                                          ; $7f93: $78
	ld [de], a                                       ; $7f94: $12
	db $fc                                           ; $7f95: $fc
	add hl, hl                                       ; $7f96: $29
	cp $02                                           ; $7f97: $fe $02
	db $fd                                           ; $7f99: $fd
	halt                                             ; $7f9a: $76

Call_043_7f9b:
	ld d, c                                          ; $7f9b: $51
	ld a, [hl]                                       ; $7f9c: $7e
	inc b                                            ; $7f9d: $04
	ei                                               ; $7f9e: $fb
	sub e                                            ; $7f9f: $93
	ld b, b                                          ; $7fa0: $40
	nop                                              ; $7fa1: $00
	jr nz, jr_043_7f24                               ; $7fa2: $20 $80

	ld b, b                                          ; $7fa4: $40
	sub b                                            ; $7fa5: $90
	add b                                            ; $7fa6: $80
	ld hl, sp+$0c                                    ; $7fa7: $f8 $0c
	ldh a, [$2a]                                     ; $7fa9: $f0 $2a
	nop                                              ; $7fab: $00
	ld a, d                                          ; $7fac: $7a
	ld hl, $77f6                                     ; $7fad: $21 $f6 $77
	ld a, [de]                                       ; $7fb0: $1a
	sbc h                                            ; $7fb1: $9c
	ld a, [bc]                                       ; $7fb2: $0a
	nop                                              ; $7fb3: $00
	dec b                                            ; $7fb4: $05
	ld hl, sp-$70                                    ; $7fb5: $f8 $90
	cp l                                             ; $7fb7: $bd
	rra                                              ; $7fb8: $1f
	ld a, e                                          ; $7fb9: $7b
	rra                                              ; $7fba: $1f
	cp l                                             ; $7fbb: $bd
	rra                                              ; $7fbc: $1f
	ld a, c                                          ; $7fbd: $79
	rra                                              ; $7fbe: $1f

Call_043_7fbf:
	dec [hl]                                         ; $7fbf: $35
	rra                                              ; $7fc0: $1f
	inc sp                                           ; $7fc1: $33
	rra                                              ; $7fc2: $1f
	cp e                                             ; $7fc3: $bb
	rlca                                             ; $7fc4: $07
	rra                                              ; $7fc5: $1f
	ld l, d                                          ; $7fc6: $6a
	ret z                                            ; $7fc7: $c8

	sbc [hl]                                         ; $7fc8: $9e
	and b                                            ; $7fc9: $a0
	ld a, d                                          ; $7fca: $7a
	and $6f                                          ; $7fcb: $e6 $6f
	cp $9e                                           ; $7fcd: $fe $9e
	ld d, h                                          ; $7fcf: $54
	ld a, e                                          ; $7fd0: $7b
	db $f4                                           ; $7fd1: $f4
	add b                                            ; $7fd2: $80
	nop                                              ; $7fd3: $00
	inc bc                                           ; $7fd4: $03
	nop                                              ; $7fd5: $00
	rlca                                             ; $7fd6: $07
	nop                                              ; $7fd7: $00
	rlca                                             ; $7fd8: $07
	ld [$1207], sp                                   ; $7fd9: $08 $07 $12
	rrca                                             ; $7fdc: $0f
	dec d                                            ; $7fdd: $15
	rrca                                             ; $7fde: $0f
	dec d                                            ; $7fdf: $15
	nop                                              ; $7fe0: $00
	ld a, [hl+]                                      ; $7fe1: $2a
	ld d, l                                          ; $7fe2: $55
	dec d                                            ; $7fe3: $15
	ld [$f50a], a                                    ; $7fe4: $ea $0a $f5
	and l                                            ; $7fe7: $a5
	ld e, d                                          ; $7fe8: $5a
	ld b, b                                          ; $7fe9: $40
	cp a                                             ; $7fea: $bf
	nop                                              ; $7feb: $00
	rst $38                                          ; $7fec: $ff
	db $10                                           ; $7fed: $10
	rst AddAOntoHL                                          ; $7fee: $ef
	dec b                                            ; $7fef: $05
	nop                                              ; $7ff0: $00
	jp z, $0591                                      ; $7ff1: $ca $91 $05

	ld [hl], l                                       ; $7ff4: $75
	adc d                                            ; $7ff5: $8a
	sub d                                            ; $7ff6: $92
	ld l, l                                          ; $7ff7: $6d
	dec h                                            ; $7ff8: $25

Call_043_7ff9:
	jp c, $ad52                                      ; $7ff9: $da $52 $ad

	dec h                                            ; $7ffc: $25
	jp c, $ff00                                      ; $7ffd: $da $00 $ff
